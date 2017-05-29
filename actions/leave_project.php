<?php

include_once('../config/init.php');
include_once('../database/users.php');

// Check if the user came from the Sign Up page.
// if ($_SESSION['signup-token'] !== $_POST['signup-token']) {
//     header('HTTP/1.0 403 Forbidden');
//     header('Location: ../pages/index.php?page=403.html');
//     die();
// }

$projectId = $_POST['projectId'];
$userId = $_SESSION['userId'];

leaveProject($userId, $projectId);
header('Location: ../pages/index.php?page=project_dashboard.php&id=' . $projectId);

