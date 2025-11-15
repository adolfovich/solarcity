<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($_POST)) {
    foreach ($_POST as $name => $value) {
        $db->query("UPDATE settings SET data = ?s WHERE name = ?s", $value, $name);
    }
}



$settings = $db->getAll("SELECT * FROM settings ORDER BY id");

include ('tpl/cab/settings.tpl');