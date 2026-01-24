<?php
// УБИРАЕМ ВСЕ ВЫВОДЫ ОШИБОК
error_reporting(0);
ini_set('display_errors', 0);

header('Content-Type: application/xml; charset=utf-8');

// Получаем URL сайта из настроек
$siteUrl = $db->getOne("SELECT `data` FROM `settings` WHERE `name` = ?s", 'site_url');
if (empty($siteUrl)) {
    $siteUrl = 'https://solarcity23.ru';
}
$siteUrl = rtrim($siteUrl, '/');

// Загружаем объекты для продажи домов и участков (category = 1 - Продажа, type = 2 - Частный дом или type = 3 - Участок)
$objects = $db->getAll("
    SELECT 
        o.*,
        ap.rooms,
        ap.property_rights,
        ap.object_type_avito,
        ap.floors,
        ap.walls_type,
        ap.land_status,
        ap.renovation
    FROM objects o
    LEFT JOIN avito_params ap ON ap.object_id = o.id
    WHERE o.is_del = 0 
      AND o.category = 1 
      AND (o.type = 2 OR o.type = 3)
      AND o.publishAvito = 1
    ORDER BY o.id DESC
    LIMIT 50000
");

// Проверяем наличие объектов
if (empty($objects)) {
    echo '<?xml version="1.0" encoding="UTF-8"?><Ads formatVersion="3" target="Avito.ru"></Ads>';
    exit;
}

// Функция для построения полного URL фотографии
function buildPhotoUrl(string $base, string $path): string {
    if (preg_match('~^https?://~i', $path)) {
        return $path;
    }
    $base = rtrim($base, '/');
    $path = '/' . ltrim($path, '/');
    return $base . $path;
}

// Функция для очистки описания
function sanitizeDescription($text) {
    $text = trim(strip_tags($text ?? ''));
    // Удаляем лишние пробелы и переносы строк
    $text = preg_replace('/\s+/', ' ', $text);
    return mb_substr($text, 0, 7500);
}

// Функция для экранирования XML
function escapeXml($text) {
    return htmlspecialchars($text ?? '', ENT_XML1 | ENT_QUOTES, 'UTF-8');
}

// Подтягиваем фото из таблицы objects_photo
$ids = array_map('intval', array_column($objects, 'id'));
$photosByObject = [];
if (!empty($ids)) {
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

// Создаем XML документ
$dom = new DOMDocument('1.0', 'UTF-8');
$dom->formatOutput = true;

$ads = $dom->createElement('Ads');
$ads->setAttribute('formatVersion', '3');
$ads->setAttribute('target', 'Avito.ru');
$dom->appendChild($ads);

foreach ($objects as $obj) {
    // Пропускаем объекты без обязательных полей
    if (empty($obj['address']) || empty($obj['description']) || empty($obj['price'])) {
        continue;
    }
    
    // Пропускаем объекты без площади (для домов нужна площадь дома, для участков - площадь участка)
    $areaPremises = (float)($obj['area_premises'] ?? 0);
    $areaPlot = (float)($obj['area_plot'] ?? 0);
    $objectType = (int)($obj['type'] ?? 0);
    
    // Для домов (type = 2) нужна площадь дома (Square)
    if ($objectType == 2 && $areaPremises < 10) {
        continue;
    }
    
    // Для участков (type = 3) нужна площадь участка (LandArea)
    if ($objectType == 3 && $areaPlot < 1) {
        continue;
    }
    
    $ad = $dom->createElement('Ad');
    
    // Id - обязательный
    $ad->appendChild($dom->createElement('Id', escapeXml((string)$obj['id'])));
    
    // Description - обязательный (до 7500 символов)
    $description = sanitizeDescription($obj['description']);
    if (mb_strlen($description) < 15) {
        continue; // Пропускаем объекты с слишком коротким описанием
    }
    $descElement = $dom->createElement('Description');
    $descElement->appendChild($dom->createCDATASection($description));
    $ad->appendChild($descElement);
    
    // Address - обязательный (до 256 символов)
    $address = mb_substr(trim($obj['address'] ?? ''), 0, 256);
    if (empty($address)) {
        $address = mb_substr(trim($obj['address_approx'] ?? 'Не указан'), 0, 256);
    }
    $ad->appendChild($dom->createElement('Address', escapeXml($address)));
    
    // Category - обязательный
    $ad->appendChild($dom->createElement('Category', 'Дома, дачи, коттеджи'));
    
    // Price - обязательный (целое число)
    $price = max(1, (int)($obj['price'] ?? 0));
    $ad->appendChild($dom->createElement('Price', $price));
    
    // OperationType - обязательный
    $ad->appendChild($dom->createElement('OperationType', 'Продам'));
    
    // Rooms - обязательный
    $rooms = trim($obj['rooms'] ?? '');
    $validRooms = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10 и более', 'Свободная планировка'];
    if (empty($rooms) || !in_array($rooms, $validRooms)) {
        // Для участков используем значение по умолчанию, так как Avito требует это поле
        if ($objectType == 3) {
            $rooms = 'Свободная планировка'; // Для участков используем это значение
        } else {
            $rooms = '3'; // Значение по умолчанию для домов
        }
    }
    $ad->appendChild($dom->createElement('Rooms', escapeXml($rooms)));
    
    // PropertyRights - обязательный
    $propertyRights = trim($obj['property_rights'] ?? '');
    $validPropertyRights = ['Собственник', 'Посредник'];
    if (empty($propertyRights) || !in_array($propertyRights, $validPropertyRights)) {
        $propertyRights = 'Посредник'; // Значение по умолчанию
    }
    $ad->appendChild($dom->createElement('PropertyRights', escapeXml($propertyRights)));
    
    // ObjectType - обязательный
    $objectTypeAvito = trim($obj['object_type_avito'] ?? '');
    $validObjectTypes = ['Дом', 'Дача', 'Коттедж', 'Таунхаус'];
    if (empty($objectTypeAvito) || !in_array($objectTypeAvito, $validObjectTypes)) {
        // Определяем по типу из БД
        if ($objectType == 2) {
            $objectTypeAvito = 'Дом'; // Значение по умолчанию для частных домов
        } else {
            $objectTypeAvito = 'Дом'; // Значение по умолчанию
        }
    }
    $ad->appendChild($dom->createElement('ObjectType', escapeXml($objectTypeAvito)));
    
    // Floors - обязательный (только для домов, не для участков)
    if ($objectType == 2) {
        $floors = trim($obj['floors'] ?? '');
        $validFloors = ['1', '2', '3', '4 и более'];
        if (empty($floors) || !in_array($floors, $validFloors)) {
            $floors = '1'; // Значение по умолчанию
        }
        $ad->appendChild($dom->createElement('Floors', escapeXml($floors)));
    } else {
        // Для участков тоже нужен Floors, ставим минимальное значение
        $ad->appendChild($dom->createElement('Floors', '1'));
    }
    
    // WallsType - обязательный (только для домов)
    if ($objectType == 2) {
        $wallsType = trim($obj['walls_type'] ?? '');
        $validWallsTypes = [
            'Кирпич', 'Брус', 'Бревно', 'Газоблоки', 'Металл', 
            'Пеноблоки', 'Сэндвич-панели', 'Ж/б панели', 'Экспериментальные материалы'
        ];
        if (empty($wallsType) || !in_array($wallsType, $validWallsTypes)) {
            $wallsType = 'Кирпич'; // Значение по умолчанию
        }
        $ad->appendChild($dom->createElement('WallsType', escapeXml($wallsType)));
    } else {
        // Для участков тоже нужен WallsType, ставим значение по умолчанию
        $ad->appendChild($dom->createElement('WallsType', 'Кирпич'));
    }
    
    // Square - обязательный (площадь дома в кв. метрах, от 10 до 5000)
    if ($objectType == 2) {
        // Для домов используем реальную площадь
        $square = max(10, min(5000, $areaPremises));
        $ad->appendChild($dom->createElement('Square', number_format($square, 2, '.', '')));
    } else {
        // Для участков (type = 3) тоже нужен Square, используем минимальное значение
        // или площадь участка, если она указана (но не более 5000)
        if ($areaPremises >= 10 && $areaPremises <= 5000) {
            $square = $areaPremises;
        } else {
            $square = 10.00; // Минимальное значение для участков
        }
        $ad->appendChild($dom->createElement('Square', number_format($square, 2, '.', '')));
    }
    
    // LandArea - обязательный (площадь участка в сотках, от 1 до 1200)
    $landAreaInSotki = $areaPlot;
    // Если значение слишком большое (вероятно в кв. метрах), переводим в сотки
    if ($landAreaInSotki > 1200) {
        $landAreaInSotki = $areaPlot / 100;
    }
    // Если значение меньше 1, используем минимальное
    if ($landAreaInSotki < 1) {
        $landAreaInSotki = 1;
    }
    $landAreaInSotki = max(1, min(1200, $landAreaInSotki));
    $ad->appendChild($dom->createElement('LandArea', number_format($landAreaInSotki, 2, '.', '')));
    
    // LandStatus - обязательный
    $landStatus = trim($obj['land_status'] ?? '');
    $validLandStatuses = [
        'Индивидуальное жилищное строительство (ИЖС)',
        'Садовое некоммерческое товарищество (СНТ)',
        'Дачное некоммерческое партнёрство (ДНП)',
        'Фермерское хозяйство',
        'Личное подсобное хозяйство (ЛПХ)'
    ];
    if (empty($landStatus) || !in_array($landStatus, $validLandStatuses)) {
        $landStatus = 'Индивидуальное жилищное строительство (ИЖС)'; // Значение по умолчанию
    }
    $ad->appendChild($dom->createElement('LandStatus', escapeXml($landStatus)));
    
    // Renovation - обязательный
    $renovation = trim($obj['renovation'] ?? '');
    $validRenovations = ['Требуется', 'Косметический', 'Евро', 'Дизайнерский'];
    if (empty($renovation) || !in_array($renovation, $validRenovations)) {
        $renovation = 'Требуется'; // Значение по умолчанию
    }
    $ad->appendChild($dom->createElement('Renovation', escapeXml($renovation)));
    
    // Images - необязательный, но желательный
    $images = $dom->createElement('Images');
    $photoSet = $photosByObject[$obj['id']] ?? [];
    
    if (!empty($photoSet)) {
        foreach ($photoSet as $photo) {
            $image = $dom->createElement('Image');
            $image->setAttribute('url', buildPhotoUrl($siteUrl, $photo['path']));
            $images->appendChild($image);
        }
    } else {
        // Если нет фото, можно добавить заглушку или пропустить
        // Avito требует хотя бы одно фото, но это необязательное поле в схеме
    }
    
    if ($images->childNodes->length > 0) {
        $ad->appendChild($images);
    }
    
    $ads->appendChild($ad);
}

echo $dom->saveXML();
?>