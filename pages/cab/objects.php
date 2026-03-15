<?php

if (isset($_GET['action']) && $_GET['action'] == 'search') {
    $str = $_GET['searchText'];

    if (substr($str, 0, 2) === '00') {
        $str = '%'.substr($str, 2).'%';
    } elseif (substr($str, 0, 1) === '0') {
        $str = '%'.substr($str, 1).'%';
    } else {
        $str = '%'.$str.'%';
    }

    if ($_GET['isDel'] == 1) {
        $isDel = 'AND is_del IN (0,1)';
    } else {
        $isDel = 'AND is_del = 0';
    }

    $sql = $db->parse("SELECT * FROM objects WHERE (id LIKE ?s OR name LIKE ?s) ".$isDel." ORDER BY id DESC", $str, $str);

    $objects = $db->getAll($sql);
} else {
    $objects = $db->getAll("SELECT * FROM objects WHERE is_del = 0 ORDER BY id DESC");
}



include ('tpl/cab/objects.tpl');