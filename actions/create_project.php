<?php

include_once('../config/init.php');
include_once('../database/projects.php');

// Check if the user came from the Sign Up page.
// if ($_SESSION['signup-token'] !== $_POST['signup-token']) {
//     header('HTTP/1.0 403 Forbidden');
//     header('Location: ../pages/index.php?page=403.html');
//     die();
// }

$name = htmlspecialchars($_POST['name']);
$description = htmlspecialchars($_POST['description']);
$isVisible = $_POST['is-visible'];

if ($name && $description && $isVisible) {
  createProject($_SESSION['userId'] , $name, $description, $isVisible);
  header('Location: ../pages/profile.php?id=' . $_SESSION['userId']);
  die();
}
?>
