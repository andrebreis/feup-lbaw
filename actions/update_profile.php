<?php

include_once('../config/init.php');
include_once('../database/users.php');
include_once('../utils/session_utils.php');

$password = htmlspecialchars($_POST['newPassword']);
$passwordRepeat = htmlspecialchars($_POST['newPasswordRepeat']);
$job = htmlspecialchars($_POST['newJob']);
$firstName = htmlspecialchars($_POST['newFirstName']);
$lastName = htmlspecialchars($_POST['newLastName']);
$picture = null;

$hashedPassword = null;
if($password === $passwordRepeat && strlen($password) >= 4) $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

$name = null;
if(isset($firstName) && isset($lastName)) $name = $firstName . " " . $lastName;

updateUser($_SESSION['userId'], $name, $job, $picture, $hashedPassword);
header('Location: ../pages/index.php?page=profile.php&id=' . $_SESSION['userId']);
die();