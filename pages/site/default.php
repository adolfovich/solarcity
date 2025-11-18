<?php

$objects_types = $db->getAll("SELECT * FROM objects_types ORDER BY ordering");


include ('tpl/site/default.tpl');
