<?php

$objects = $db->getAll("SELECT * FROM objects WHERE is_del = 0 ORDER BY id DESC");

include ('tpl/cab/objects.tpl');