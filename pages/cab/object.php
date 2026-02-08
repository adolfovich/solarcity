<?php

$object_types = $db->getAll("SELECT * FROM objects_types ORDER BY ordering");
$object_categories = $db->getAll("SELECT * FROM categories ORDER BY ordering");

if (isset($_POST['name'])) {

    $object['name'] = $_POST['name'];
    $object['type'] = $_POST['type'];
    $object['category'] = $_POST['category'];
    $object['address'] = $_POST['address'];
    $object['address_approx'] = $_POST['address_approx'];
    $object['description'] = $_POST['description'];
    $object['price'] = $_POST['price'];
    $object['area_premises'] = $_POST['area_premises'];
    $object['area_plot'] = $_POST['area_plot'];
    $object['comment'] = $_POST['comment'];
    if (isset($_POST['publishCian']) && $_POST['publishCian'] == 1) {
        $object['publishCian'] = 1;
    } else {
        $object['publishCian'] = 0;
    }
    if (isset($_POST['publishAvito']) && $_POST['publishAvito'] == 1) {
        $object['publishAvito'] = 1;
    } else {
        $object['publishAvito'] = 0;
    }

    if (strlen($_POST['name']) < 3) {
        $msg['type'] = 'danger';
        $msg['text'] = 'Название слишком короткое';
        $error = true;
    } else if ($_POST['address'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Точный адрес не указан';
        $error = true;
    } else if ($_POST['address_approx'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Приблизительный адрес не указан';
        $error = true;
    } else if ($_POST['description'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Описание не указано';
        $error = true;
    } else if ($_POST['price'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Цена не указана';
        $error = true;
    } else if ($_POST['area_premises'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Площадь помещения не указана';
        $error = true;
    } else {
        $error = false;
        if (isset($_GET['action']) && $_GET['action'] == 'new') {
            $db->query("INSERT INTO objects SET ?u", $object);
            $object_id = $db->insertId();
            $saved = 1;

        } else {
            $db->query("UPDATE objects SET ?u WHERE id = ?i", $object, $_GET['id']);
            $object_id = $_GET['id'];
        }
    }
}

if (isset($_GET['action']) && $_GET['action'] == 'new') {

    $title = 'Добавление объекта';
    if (!isset($object['name'])) {
        $object['id'] = '';
        $object['name'] = '';
        $object['type'] = '';
        $object['category'] = '';
        $object['address'] = '';
        $object['address_approx'] = '';
        $object['description'] = '';
        $object['price'] = '';
        $object['area_premises'] = '';
        $object['area_plot'] = '';
        $object['comment'] = '';
        $object['publishCian'] = 0;
        $object['publishAvito'] = 0;
        $publishCianState = '';
        $publishAvitoState = '';
    }

} else if (isset($_GET['action']) && $_GET['action'] == 'delete') {

    echo 'delete';
    $db->query("UPDATE objects SET is_del = 1 WHERE id = ?i", $_GET['id']);
    $core->jsredir('objects');

} else if (isset($_GET['action']) && $_GET['action'] == 'set_def_photo' && $_GET['photo'] != '') {

    $db->query("UPDATE objects_photo SET is_master = 0 WHERE object_id = ?i", $_GET['id']);
    $db->query("UPDATE objects_photo SET is_master = 1 WHERE id = ?i", $_GET['photo']);

} else if (isset($_GET['action']) && $_GET['action'] == 'del_photo' && $_GET['photo'] != '') {

    $db->query("UPDATE objects_photo SET is_del = 1 WHERE id = ?i", $_GET['photo']);

}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['photos']) && $error == false) {
    $uploadDir = 'img/photo/';
    $maxSize = 7 * 1024 * 1024;

    foreach ($_FILES['photos']['tmp_name'] as $key => $tmpName) {


        if ($_FILES['photos']['error'][$key] === UPLOAD_ERR_OK) {
            $fileName = $_FILES['photos']['name'][$key];
            $fileSize = $_FILES['photos']['size'][$key];
            $fileType = $_FILES['photos']['type'][$key];

            // Проверка размера
            if ($fileSize > $maxSize) {
                echo "Файл $fileName слишком большой<br>";
                continue;
            }

            // Проверка типа
            $allowed = ['image/jpeg', 'image/jpg', 'image/png'];
            if (!in_array($fileType, $allowed)) {
                echo "Файл $fileName недопустимого формата<br>";
                continue;
            }

            // Генерируем новое имя и сохраняем
            $ext = pathinfo($fileName, PATHINFO_EXTENSION);
            $newName = uniqid() . '.' . $ext;
            $uploadPath = $uploadDir . $newName;

            if (move_uploaded_file($tmpName, $uploadPath)) {

                $resize = $core->resizeAndConvertToPNGAdvanced($uploadPath, 1024, true, 6);

                $master_photo = $db->getOne("SELECT is_master FROM objects_photo WHERE object_id = ?i", $object_id);

                if ($master_photo) {
                    $is_master = 0;
                } else {
                    $is_master = 1;
                }

                $db->query("INSERT INTO objects_photo SET object_id = ?i, path = ?s, is_master = ?i", $object_id, '/'.$uploadPath, $is_master);
            }
        }
    }
}

if (isset($_GET['action']) && $_GET['action'] == 'new' && isset($saved)) {

    $core->jsredir('object?id='.$object_id);

}

if (isset($_GET['id'])) {

    if ($object = $db->getRow("SELECT * FROM objects WHERE id = ?i", $_GET['id'])) {

        $objects_photo = $db->getAll("SELECT * FROM objects_photo WHERE object_id = ?i AND is_del = 0", $_GET['id']);

        $title = 'Редактирование объекта:<br>'.$object['name'];

        // Инициализируем поля, если их нет в БД (для совместимости со старыми данными)
        if (!isset($object['publishCian'])) {
            $object['publishCian'] = 0;
        }
        if (!isset($object['publishAvito'])) {
            $object['publishAvito'] = 0;
        }

        if ($object['publishCian'] == 1) {$publishCianState = 'checked';} else {$publishCianState = '';}
        if ($object['publishAvito'] == 1) {$publishAvitoState = 'checked';} else {$publishAvitoState = '';}

    } else {
        $msg['type'] = "danger";
        $msg['text'] = "Объект не найден";
    }

} else {
    //$core->jsredir('objects');
}

include ('tpl/cab/object.tpl');