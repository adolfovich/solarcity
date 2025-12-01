<?php

$objects_types = $db->getAll("SELECT * FROM objects_types ORDER BY ordering");

$object_id = intval($_GET['id']);
$object_data = $db->getRow("SELECT o.*, (SELECT is_plot FROM objects_types WHERE id = o.type) as is_plot, (SELECT is_room FROM objects_types WHERE id = o.type) as is_room FROM objects o WHERE o.id = ?i", $object_id);
$pageName = $object_data['name'];

$object_master_photo = $db->getRow("SELECT * FROM objects_photo WHERE `object_id` = ?i AND is_del = 0 AND is_master = 1", $object_id);
$object_photos = $db->getAll("SELECT * FROM objects_photo WHERE `object_id` = ?i AND is_del = 0 AND is_master = 0", $object_id);




include ('tpl/site/object.tpl');
