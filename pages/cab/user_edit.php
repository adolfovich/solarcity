<?php

$stop = 0;
$msg = [];

if (isset($form['save']) || isset($form['saveclose'])) {
	
	$update = [];
	
	if (strlen($form['userLogin']) >= 5) {
		if (preg_match("#^[aA-zZ0-9\-_]+$#",$form['userLogin'])) {	
			$update_login = 1;
					
		} else {
			$msg[] = ["type"=>"danger", "text"=>"Ошибка! Логин должен содержать только буквы и цифры"];
		}		
	} else {
		$msg[] = ["type"=>"danger", "text"=>"Ошибка! Логин должен быть не короче 5 символов"];
	}
	
	if (($form['userPass'] && $form['userRePass']) || (isset($get['a']) && $get['a'] == 'new')) {
		if (strlen($form['userPass']) >= 5) {
		  if ($form['userPass'] == $form['userRePass']) {
			$update_pass = 1;
		  } else {
			$msg[] = ["type"=>"danger", "text"=>"Ошибка! Введенные пароли не совпадают"];
		  }
		} else {
		  $msg[] = ["type"=>"danger", "text"=>"Ошибка! Пароль должен быть не менее 5 символов"];
		}
	}
	
	if ((isset($get['a']) && $get['a'] == 'new') && (!isset($form['userProfile']) || $form['userProfile'] < 1)) {
		$msg[] = ["type"=>"danger", "text"=>"Не выбран профиль пользователя"];
		$stop = 1;
	}

    if ($update_login) {
        if (isset($get['a']) && $get['a'] == 'new') {
            $db->query("INSERT INTO `users` SET `login` = ?s", $form['userLogin']);
            $newId = $db->insertId();
            $get['id'] = $newId;
        } else {
            $db->query("UPDATE `users` SET `login` = ?s WHERE `id` = ?i", $form['userLogin'], $get['id']);
        }

    }
    if (isset($update_pass)){
        $db->query("UPDATE `users` SET `pass` = ?s WHERE `id` = ?i", $core->as_md5($pass_key, $form['userPass']), $get['id']);
    }

    if (isset($form['userProfile'])) {
        $db->query("UPDATE `users` SET `profile` = ?i WHERE `id` = ?i", $form['userProfile'], $get['id']);
    }

    $update['surname'] = $form['userSurname'];
    $update['name'] = $form['userFirstname'];
    $update['phone'] = $form['userPhone'];

    $db->query("UPDATE `users` SET ?u WHERE `id` = ?i", $update, $get['id']);

    if (isset($newId)) {
        $core->jsredir('user_edit?id='.$newId);
    }
    if (isset($form["saveclose"])) {
        $core->jsredir('users');
    } else if (isset($form["save"])) {
        $msg[] = ["type"=>"success", "text"=>"Данные сохранены"];
    }

}

if (isset($get['id'])) {
  if ($user_data = $db->getRow("SELECT * FROM users WHERE id = ?i", $get['id'])) {
    $user_profile = $db->getRow("SELECT * FROM `profiles` WHERE `id` = ?i", $user_data['profile']);    
  } else {
    $msg[] = ["type"=>"danger", "text"=>"Ошибка! пользователь не найден"];
  }
} else if ($get['a'] == 'new') {
	if (isset($form)) {
		$user_data['surname'] = $form['userSurname'];
		$user_data['name'] = $form['userFirstname'];
		$user_data['login'] = $form['userLogin'];
		$user_profile['name'] = '';
		$user_data['phone'] = $form['userPhone'];
	} else {
		$user_data['surname'] = '';
		$user_data['name'] = '';
		$user_data['login'] = '';
		$user_profile['name'] = '';
		$user_data['phone'] = '';
	}
	
}
$profiles = $db->getAll("SELECT * FROM `profiles`");

include ('tpl/cab/user_edit.tpl');
