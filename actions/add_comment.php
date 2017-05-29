<?php

include_once('../config/init.php');
include_once('../database/projects.php');

// Check if the user came from the Sign Up page.
// if ($_SESSION['signup-token'] !== $_POST['signup-token']) {
//     header('HTTP/1.0 403 Forbidden');
//     header('Location: ../pages/index.php?page=403.html');
//     die();
// }

$text = htmlspecialchars($_POST['text']);
$postId = $_POST['postId'];
$taskId = $_POST['taskId'];
$parentId = $_POST['parentId'];

if (isset($postId) || isset($taskId)) {
    createComment($_SESSION['userId'], $text, $postId, $taskId, $parentId);
    if(isset($postId))
      header('Location: ../pages/forum_post.php?id=' . $postId);
    else 
      header('Location: ../pages/project_task.php?id=' . $taskId);
    die();
}

