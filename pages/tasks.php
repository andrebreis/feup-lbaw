<?php

include_once('project_sidebar.php');

$tasks = getProjectTasks($id);

$smarty->assign('tasks', $tasks);

// var_dump($tasks);
$smarty->display('../templates/common/tasks.tpl');