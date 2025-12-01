<?php

$getType = intval($_GET['type']);
$pageName = $db->getOne("SELECT name FROM objects_types WHERE id = ?i", $getType);
$objects_types = $db->getAll("SELECT * FROM objects_types ORDER BY ordering");



if (isset($_POST['search']) && strlen($_POST['search']) > 0) {

    $objects = $db->getAll("SELECT * FROM objects WHERE (name LIKE ?s OR address_approx LIKE ?s OR description LIKE ?s) AND type = ?i AND is_del = 0", '%'.$_POST['search'].'%', '%'.$_POST['search'].'%', '%'.$_POST['search'].'%', $getType);
} else {
    $objects = $db->getAll("SELECT * FROM objects WHERE type = ?i AND is_del = 0", $getType);
}


$objects_chunks = array_chunk($objects, 2);


//var_dump($objects);

include ('tpl/site/catalog.tpl');