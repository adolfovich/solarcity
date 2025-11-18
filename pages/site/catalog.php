<?php

$getType = intval($_GET['type']);

$pageName = $db->getOne("SELECT name FROM objects_types WHERE id = ?i", $getType);

$objects_types = $db->getAll("SELECT * FROM objects_types ORDER BY ordering");

$objects = $db->getAll("SELECT * FROM objects WHERE type = ?i AND is_del = 0", $getType);
$objects_chunks = array_chunk($objects, 2);


//var_dump($objects);

include ('tpl/site/catalog.tpl');