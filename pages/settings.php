<?php
include_once("../database/projects.php");
include_once("../database/users.php");

$id = (int)htmlspecialchars($_GET['id']);

include_once("project_sidebar.php");

$smarty->display('../templates/common/settings.tpl');