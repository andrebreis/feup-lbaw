<?php
include_once("../database/projects.php");
include_once("../database/users.php");

/*
$_SESSION['token'] = generateRandomToken();

if (!userHasProjectPermission($_SESSION['user_id'], $_SESSION['proj_id'])) {
    header('HTTP/1.0 403 Forbidden');
    header('Location: ../pages/index.php?page=403.html');
    die();	
}*/

$milestoneId = (int)htmlspecialchars($_GET['id']);

$id = getMilestoneProjectId($milestoneId);
$now = time();

include_once("project_sidebar.php");

$milestone = getMilestoneDetails($milestoneId);
$milestoneCompletion = ((($now - strtotime($milestone['begin_date'])) * 100) / (strtotime($milestone['end_date']) - strtotime($milestone['begin_date'])));
$milestoneTasks = getMilestoneTasks($milestoneId);

$smarty->assign('milestone', $milestone);
$smarty->assign('now', $now);
$smarty->assign('milestoneCompletion', $milestoneCompletion);
$smarty->assign('milestoneTasks', $milestoneTasks);

$smarty->display('../templates/common/milestone_details.tpl');