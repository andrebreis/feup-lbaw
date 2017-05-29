<?php

$id = htmlspecialchars($_GET['id']);

include_once('project_sidebar.php');

// $projectId = htmlspecialchars($_GET['id']);

$isCollaborator = isProjectCollaborator($_SESSION['userId'], $id);

// $id = (int)htmlspecialchars($_GET['id']);

// $name = getProjectField($id, 'name');
$description = getProjectField($id, 'description');
$stats = getProjectStatistics($id);
// $completion = getProjectField($id, 'completion');
// $visible = getProjectField($id, 'visible');
// $state_id = getProjectField($id, 'state_id');

$smarty->assign('isCollaborator', $isCollaborator);
// $smarty->assign('name', $name);
$smarty->assign('description', $description);
$smarty->assign('stats', $stats);
// $smarty->assign('completion', $completion);
// $smarty->assign('visible', $visible);
// $smarty->assign('state_id', $state_id);

$smarty->display('../templates/common/project_dashboard.tpl');