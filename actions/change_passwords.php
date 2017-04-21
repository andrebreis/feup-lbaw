<?php

include_once('../config/init.php');
include_once('../database/users.php');
include_once('../utils/session_utils.php');

global $conn;

$password = password_hash("diff_pass", PASSWORD_DEFAULT);
$statement = $conn->prepare('UPDATE authenticated_user SET password = ? WHERE username = \'last_test\'');
$statement->execute([$password]);