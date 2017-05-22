<?php
include_once("../database/users.php");
include_once("../database/projects.php");

$id = (int)htmlspecialchars($_GET['id']);

$name = getProjectField($id, 'name');
$completion = getProjectField($id, 'completion');
$visible = getProjectField($id, 'visible');
$state_name = getProjectState($id);
$num_collaborators = getProjectCollaborators($id);

$smarty->assign('name', $name);
$smarty->assign('completion', $completion);
$smarty->assign('visible', $visible);
$smarty->assign('state_name', $state_name);
$smarty->assign('num_collaborators', $num_collaborators);

$smarty->display('../templates/common/project_sidebar.tpl');