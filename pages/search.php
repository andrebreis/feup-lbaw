<?php 

include_once("../database/users.php");
include_once("../database/projects.php");

$query = htmlspecialchars($_GET["query"]);

$users = searchUsers($query);
$projects = searchProjects($query);

$smarty->assign('users', $users);
$smarty->assign('projects', $projects);

$smarty->display('../templates/common/search.tpl');
