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
$password_repeat = htmlspecialchars($_POST['password-repeat']);
$first_name = htmlspecialchars($_POST['first-name']);
$last_name = htmlspecialchars($_POST['last-name']);
$email = htmlspecialchars($_POST['email']);

$name = $first_name . " " . $last_name;
if (($ret = signupVerify($username, $password, $password_repeat, $email, $name)) === true) {
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    if (createUser($username, $hashed_password, $email, $name)[0] == 0) {
        // $_SESSION['signup-token'] = generateRandomToken();
        login($username, $password);
        echo json_encode(true);
        // header('HTTP/1.0 200 Success');
        // header('Location: ../pages/index.php?page=profile.php');
    }
} else {
// header('HTTP/1.0 403 Forbidden');
      // header('Location: ../pages/index.php?page=403.html');
    echo json_encode($ret);
    }
?>
