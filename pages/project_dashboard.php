<?php
include_once("../database/users.php");
include_once("../database/projects.php");

$projectId = htmlspecialchars($_GET['id']);

$isCollaborator = isProjectCollaborator($_SESSION['userId'], $projectId);

$id = (int)htmlspecialchars($_GET['id']);

$name = getProjectField($id, 'name');
$description = getProjectField($id, 'description');
$completion = getProjectField($id, 'completion');
$visible = getProjectField($id, 'visible');
$state_id = getProjectField($id, 'state_id');

$smarty->assign('isCollaborator', $isCollaborator);
$smarty->assign('name', $name);
$smarty->assign('description', $description);
$smarty->assign('completion', $completion);
$smarty->assign('visible', $visible);
$smarty->assign('state_id', $state_id);

$smarty->display('../templates/common/project_dashboard.tpl');