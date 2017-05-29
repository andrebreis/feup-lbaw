<?php
include_once("../database/projects.php");
include_once("../database/users.php");

$id = (int)htmlspecialchars($_GET['id']);

include_once("project_sidebar.php");

$now = time();

$milestones = getProjectMilestones($id);

$smarty->assign('now', $now);

$smarty->assign('milestones', $milestones);

$smarty->display('../templates/common/milestones.tpl');