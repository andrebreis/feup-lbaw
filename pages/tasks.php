<?php
include_once("../database/users.php");
include_once("../database/projects.php");

$id = (int)htmlspecialchars($_GET['id']);

$name = getProjectField($id, 'name');
$description = getProjectField($id, 'description');
$completion = getProjectField($id, 'completion');
$visible = getProjectField($id, 'visible');
$state_name = getProjectState($id);
$num_collaborators = getNumProjectCollaborators($id);

$tasks = getProjectTasks($id);

$smarty->assign('isCollaborator', $isCollaborator);
$smarty->assign('name', $name);
$smarty->assign('description', $description);
$smarty->assign('completion', $completion);
$smarty->assign('visible', $visible);
$smarty->assign('state_name', $state_name);
$smarty->assign('num_collaborators', $num_collaborators);

$smarty->assign('tasks', $tasks);

// var_dump($tasks);
$smarty->display('../templates/common/tasks.tpl');