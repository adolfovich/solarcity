<?php

$menu = $db->getAll("SELECT * FROM `menu` WHERE `enabled` = 1 ORDER BY `ordering`");

$db_settings = $db->getAll("SELECT * FROM settings");
$settings=[];
foreach ($db_settings as $setting){
	$settings[$setting['name']] = [
		"description" => $setting['description'],
		"data" => $setting['data'],
	];
}

if (isset($url[1])) {
  $page_name = $db->getOne("SELECT name FROM menu WHERE url LIKE '%".$url[1]."%'");
}

if (isset($user_id)) {
  $auth_user = $db->getRow("SELECT * FROM `users` WHERE `id` = ?i", $user_id);
  $user_data = $auth_user;
}

header("Cache-Control: no cache");

if ($url[0] == '' || ($url[0] != 'cab' && $url[0] != 'login')) {
    if ($url[0] != '') {
        if (file_exists('pages/site/'.$url[0].'.php')) {
            include ('pages/site/'.$url[0].'.php');
        } else {
            include ('pages/site/404.php');
        }
    } else {
        include ('pages/site/default.php');
    }
} else if ($url[0] == 'login') {
    include ('pages/cab/login.php');
} else if ($url[0] == 'cab') {
  include ('pages/cab/template.php');
}  else {
  include ('pages/site/default.php');
}
