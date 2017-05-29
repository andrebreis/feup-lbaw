<?php
include_once("../database/projects.php");

$taskId = htmlspecialchars($_GET['id']);
$id = getTaskProjectId($taskId);

include_once('project_sidebar.php');

$task = getTaskDetails($taskId);
$assignees = getTaskAssignees($taskId);

$smarty->assign('task', $task);
$smarty->assign('assignees', $assignees);
// var_dump($task);
$smarty->display('../templates/common/task_details.tpl');