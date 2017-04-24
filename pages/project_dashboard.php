<?php
include_once("../database/users.php");
include_once("../database/projects.php");

$projectId = htmlspecialchars($_GET['id']);

$isCollaborator = isProjectCollaborator($_SESSION['userId'], $projectId);

$smarty->assign('isCollaborator', $isCollaborator);

$smarty->display('../templates/common/project_dashboard.tpl');