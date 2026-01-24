<?php
// УБИРАЕМ ВСЕ ВЫВОДЫ ОШИБOK
error_reporting(0);
ini_set('display_errors', 0);

header('Content-Type: application/xml; charset=utf-8');
/*
// Блок безопасности: только XML-запросы, без GET/POST параметров
if (!empty($_GET) || !empty($_POST) || !empty($_COOKIE)) {
    http_response_code(403);
    header('Content-Type: text/plain; charset=utf-8');
    die('Access Denied');
}

// Защита от горячих ссылок (только User-Agent ботов ЦИАН/Google/etc)
$userAgents = [
    'CianBot', 'Googlebot', 'bingbot', 'YandexBot', 'MJ12bot'
];
$ua = $_SERVER['HTTP_USER_AGENT'] ?? '';
if (!in_array(true, array_map(function($agent) use ($ua) { 
    return stripos($ua, $agent) !== false; 
}, $userAgents)) && empty($_SERVER['HTTP_USER_AGENT'])) {
    http_response_code(403);
    die('Access Denied');
}
*/
// Загружаем объекты вместе с кодом категории Циан (учитываем явный выбор и авто-подбор по типу)
$objects = $db->getAll("
    SELECT 
        o.*, 
        COALESCE(cc_explicit.cian_code, cc_auto.cian_code) AS cian_code
    FROM objects o
    LEFT JOIN cian_categories cc_explicit ON cc_explicit.id = o.cian_category
    LEFT JOIN cian_categories cc_auto 
        ON cc_auto.object_type = o.type 
       AND cc_auto.category = o.category
    WHERE o.is_del = 0
      AND o.publishCian = 1
    ORDER BY o.id DESC
");

// Телефон для тега Phones берём напрямую из таблицы settings (поле site_phone -> data)
// Структура: id, description, name, data
$sitePhoneRaw = $db->getOne("SELECT `data` FROM `settings` WHERE `name` = ?s", 'site_phone');
// Если записи нет или значение пустое, $sitePhoneRaw будет NULL или пустой строкой
if (empty($sitePhoneRaw)) {
    $sitePhoneRaw = '';
}

// ✅ ПРОВЕРЯЕМ $objects
if (empty($objects)) {
    echo '<?xml version="1.0" encoding="UTF-8"?><Feed><Feed_Version>2</Feed_Version><Error>Нет объектов</Error></Feed>';
    exit;
}

// Функции
if (!function_exists('mapCategory')) {
    function mapCategory(array $obj): string {
        // Приоритет: явный код из справочника cian_categories
        if (!empty($obj['cian_code'])) {
            return $obj['cian_code'];
        }
        // Простейшее соответствие по общей категории (fallback)
        $category = (int)($obj['category'] ?? 0);
        if ($category === 1) { // продажа
            return 'flat';
        }
        if ($category === 2) { // аренда
            return 'flatRent';
        }
        return 'flatRent';
    }
    function sanitizeDescription($text) {
        return mb_substr(trim(strip_tags($text ?? '')), 0, 3000);
    }
    function addBool(DOMDocument $dom, DOMElement $parent, string $name, bool $value): void {
        $parent->appendChild($dom->createElement($name, $value ? 'true' : 'false'));
    }
    function buildPhotoUrl(string $base, string $path): string {
        // Если уже абсолютный URL — возвращаем как есть
        if (preg_match('~^https?://~i', $path)) {
            return $path;
        }
        // Нормализуем базу и путь
        $base = rtrim($base, '/');
        $path = '/' . ltrim($path, '/');
        return $base . $path;
    }
}

// Подтягиваем фото из таблицы objects_photo
$ids = array_map('intval', array_column($objects, 'id'));
$photosByObject = [];
if (!empty($ids)) {
    // Без плейсхолдеров, чтобы избежать несовместимости с драйвером
    $inList = implode(',', $ids);
    $rows = $db->getAll("
        SELECT object_id, path, is_master
        FROM objects_photo
        WHERE is_del = 0 AND object_id IN ($inList)
        ORDER BY is_master DESC, id ASC
    ");
    foreach ($rows as $row) {
        $photosByObject[$row['object_id']][] = $row;
    }
}

$dom = new DOMDocument('1.0', 'UTF-8');
$dom->formatOutput = true;

$feed = $dom->createElement('Feed');
$dom->appendChild($feed);
$feed->appendChild($dom->createElement('Feed_Version', '2'));

// Подготавливаем телефон для всех объектов: только из БД и по требованиям ЦИАН
// 1) оставляем только цифры
// 2) если номер начинается с 8, заменяем на 7 (российский формат)
// 3) берём последние 10 цифр как локальный номер (без кода страны)
$phoneDigits = preg_replace('/\D+/', '', trim((string)$sitePhoneRaw));
$phoneNumber = '';
if (!empty($phoneDigits)) {
    // Если номер начинается с 8, заменяем первую цифру на 7
    if (substr($phoneDigits, 0, 1) === '8') {
        $phoneDigits = '7' . substr($phoneDigits, 1);
    }
    // Если номер начинается с 7 и имеет 11 цифр, берём последние 10 (убираем код страны)
    if (strlen($phoneDigits) >= 11 && substr($phoneDigits, 0, 1) === '7') {
        $phoneNumber = substr($phoneDigits, 1, 10); // Берём 10 цифр после кода страны
    } elseif (strlen($phoneDigits) >= 10) {
        // Если 10 или больше цифр, берём последние 10
        $phoneNumber = substr($phoneDigits, -10);
    } elseif (strlen($phoneDigits) > 0) {
        // Если меньше 10, используем все (не идеально, но лучше чем ничего)
        $phoneNumber = $phoneDigits;
    }
}

foreach ($objects as $obj) {
    $object = $dom->createElement('Object');
    
    // Обязательные поля по регламенту Циан
    $object->appendChild($dom->createElement('Category', mapCategory($obj)));
    $object->appendChild($dom->createElement('ExternalId', (string)($obj['id'] ?? '')));
    
    // Title (оптимально до 50 символов, не меньше 5)
    $name = trim($obj['name'] ?? '');
    if (mb_strlen($name) >= 5) {
        $object->appendChild($dom->createElement('Title', mb_substr($name, 0, 50)));
    }
    
    // Description (до 3000, не меньше 15)
    $desc = sanitizeDescription($obj['description'] ?? '');
    if (mb_strlen($desc) >= 15) {
        $object->appendChild($dom->createElement('Description', $desc));
    }
    
    // Address
    $address = trim($obj['address'] ?? $obj['address_approx'] ?? 'Не указан');
    $object->appendChild($dom->createElement('Address', htmlspecialchars($address)));
    
    // Площадь
    $area = (float)($obj['area_premises'] ?? 0);
    if ($area > 0) {
        $object->appendChild($dom->createElement('TotalArea', number_format($area, 2, '.', '')));
    }
    
    // Цена
    $price = max(1, (int)($obj['price'] ?? 0));
    $bargain = $dom->createElement('BargainTerms');
    $bargain->appendChild($dom->createElement('Price', $price));
    $bargain->appendChild($dom->createElement('Currency', 'rur'));
    $object->appendChild($bargain);

    // Land — обязательный тег для houseSale с площадью участка
    $categoryCode = mapCategory($obj);
    $areaPlot = (float)($obj['area_plot'] ?? 0);
    if ($categoryCode === 'houseSale' && $areaPlot > 0) {
        $land = $dom->createElement('Land');
        $land->appendChild($dom->createElement('Area', number_format($areaPlot, 2, '.', '')));
        $land->appendChild($dom->createElement('AreaUnitType', 'sotka'));
        $object->appendChild($land);
    }

    // Phones — по регламенту ЦИАН: номер только из БД, строго 10 цифр локального номера
    if (!empty($phoneNumber)) {
        $phonesEl = $dom->createElement('Phones');
        $phoneSchema = $dom->createElement('PhoneSchema');
        $phoneSchema->appendChild($dom->createElement('CountryCode', '7'));
        $phoneSchema->appendChild($dom->createElement('Number', $phoneNumber));
        $phonesEl->appendChild($phoneSchema);
        $object->appendChild($phonesEl);
    }
    
// Фото
    $photos = $dom->createElement('Photos');
    $photoSet = $photosByObject[$obj['id']] ?? [];
    if (empty($photoSet)) {
        // запасной вариант без фото
        $photo = $dom->createElement('PhotoSchema');
    $photo->appendChild($dom->createElement('FullUrl', buildPhotoUrl('http://solarcity23.local', '/imgsample.jpg')));
        $photo->appendChild($dom->createElement('IsDefault', 'true'));
        $photos->appendChild($photo);
    } else {
        foreach ($photoSet as $p) {
            $photo = $dom->createElement('PhotoSchema');
        $photo->appendChild($dom->createElement('FullUrl', buildPhotoUrl('http://solarcity23.local', $p['path'])));
            $photo->appendChild($dom->createElement('IsDefault', $p['is_master'] ? 'true' : 'false'));
            $photos->appendChild($photo);
        }
    }
    $object->appendChild($photos);
    
    /*
    // Стандартные опции (демо)
    addBool($dom, $object, 'HasFurniture', true);
    addBool($dom, $object, 'HasInternet', true);
    $object->appendChild($dom->createElement('RepairType', 'euro'));
    */
    $feed->appendChild($object);
}

echo $dom->saveXML();
?>