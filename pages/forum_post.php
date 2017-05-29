<?php
include_once("../database/projects.php");
include_once("../database/users.php");

$postId = (int)htmlspecialchars($_GET['id']);

$id = getPostProjectId($postId);

include_once("project_sidebar.php");

$post = getForumPost($postId);

$smarty->assign('post', $post);

$smarty->display('../templates/common/forum_post.tpl');