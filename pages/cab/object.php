<?php

$object_types = $db->getAll("SELECT * FROM objects_types ORDER BY ordering");
$object_categories = $db->getAll("SELECT * FROM categories ORDER BY ordering");

//var_dump($_SERVER['REQUEST_METHOD']);
//var_dump($_POST);


if (isset($_POST['name'])) {
    //var_dump($_POST);

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

    if (strlen($_POST['name']) < 3) {
        $msg['type'] = 'danger';
        $msg['text'] = 'Название слишком короткое';
    } else if ($_POST['address'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Точный адрес не указан';
    } else if ($_POST['address_approx'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Приблизительный адрес не указан';
    } else if ($_POST['description'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Описание не указано';
    } else if ($_POST['price'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Цена не указана';
    } else if ($_POST['area_premises'] == '') {
        $msg['type'] = 'danger';
        $msg['text'] = 'Площадь помещения не указана';
    } else {


        if (isset($_POST['new'])) {
            $db->query("INSERT INTO objects SET ?u", $object);
            $object_id = $db->insertId();
        } else {
            $db->query("UPDATE objects SET ?u", $object);
            $object_id = $_GET['id'];
        }


        //var_dump($new_object_id);

        //$core->jsredir('object?id='.$object_id);
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

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['photos'])) {
    $uploadDir = 'img/photo/';
    $maxSize = 3 * 1024 * 1024;

    foreach ($_FILES['photos']['tmp_name'] as $key => $tmpName) {

        //echo '<br>ФАЙЛ<br>';
        //var_dump($_FILES['photos']['error'][$key]);
        if ($_FILES['photos']['error'][$key] === UPLOAD_ERR_OK) {
            $fileName = $_FILES['photos']['name'][$key];
            $fileSize = $_FILES['photos']['size'][$key];
            $fileType = $_FILES['photos']['type'][$key];

            //var_dump($fileSize);

            //echo '<br>1<br>';

            // Проверка размера
            if ($fileSize > $maxSize) {
                echo "Файл $fileName слишком большой<br>";
                continue;
            }

            //echo '<br>размер соответствует<br>';

            // Проверка типа
            $allowed = ['image/jpeg', 'image/jpg', 'image/png'];
            if (!in_array($fileType, $allowed)) {
                echo "Файл $fileName недопустимого формата<br>";
                continue;
            }

            //echo '<br>тип соответствует<br>';

            // Генерируем новое имя и сохраняем
            $ext = pathinfo($fileName, PATHINFO_EXTENSION);
            $newName = uniqid() . '.' . $ext;
            $uploadPath = $uploadDir . $newName;

            if (move_uploaded_file($tmpName, $uploadPath)) {
                //echo "Файл $fileName успешно загружен<br>";
                $db->query("INSERT INTO objects_photo SET object_id = ?i, path = ?s", $_GET['id'], '/'.$uploadPath);
            }


        }
    }
}

    if (isset($_GET['id'])) {

        if ($object = $db->getRow("SELECT * FROM objects WHERE id = ?i", $_GET['id'])) {

            $objects_photo = $db->getAll("SELECT * FROM objects_photo WHERE object_id = ?i AND is_del = 0", $_GET['id']);

            //var_dump($objects_photo);

            $title = 'Редактирование объекта:<br>'.$object['name'];

        } else {
            $msg['type'] = "danger";
            $msg['text'] = "Объект не найден";
        }

    } else {
        $core->jsredir('objects');
    }

//var_dump($_FILES);




//var_dump($object);

include ('tpl/cab/object.tpl');