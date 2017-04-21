<?php

include_once('../config/init.php');
include_once('../database/users.php');
include_once('../utils/session_utils.php');

// Check if the user came from the Sign Up page.
// if ($_SESSION['signup-token'] !== $_POST['signup-token']) {
//     header('HTTP/1.0 403 Forbidden');
//     header('Location: ../pages/index.php?page=403.html');
//     die();
// }

$username = htmlspecialchars($_POST['username']);
$password = htmlspecialchars($_POST['password']);

if (login($username, $password)) {
  header('Location: ../pages/index.php?page=profile.php&id=' . $_SESSION['userId']);
  die();
} else{
    // header('Location: ')
    echo 'The username and the password do not match.';
}
?>
