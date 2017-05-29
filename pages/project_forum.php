<?php
include_once("../database/projects.php");
include_once("../database/users.php");

$id = (int)htmlspecialchars($_GET['id']);

include_once("project_sidebar.php");

$posts = getProjectPosts($id);

$smarty->assign('posts', $posts);

$smarty->display('../templates/common/project_forum.tpl');