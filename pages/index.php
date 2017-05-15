<?php
include_once('../config/init.php');
if(!isset($_GET['page']))
  $smarty->display('../templates/common/landing.tpl');
else {
  $smarty->display('../templates/common/header.tpl');
  if ($_GET['page'] === 'collaborators.php') $smarty->display('../templates/common/collaborators.tpl');
  else if ($_GET['page'] === 'forum_post.php') $smarty->display('../templates/common/forum_post.tpl');
  else if ($_GET['page'] === 'milestones.php') $smarty->display('../templates/common/milestones.tpl');
  else if ($_GET['page'] === 'milestone_details.php') $smarty->display('../templates/common/milestone_details.tpl');
  else if ($_GET['page'] === 'profile.php') include_once('profile.php');
  else if ($_GET['page'] === 'project_dashboard.php') include_once('project_dashboard.php');
  else if ($_GET['page'] === 'project_forum.php') $smarty->display('../templates/common/project_forum.tpl');
  else if ($_GET['page'] === 'search.php') include_once('search.php');
  else if ($_GET['page'] === 'settings.php') $smarty->display('../templates/common/settings.tpl');
  else if ($_GET['page'] === 'tasks.php') $smarty->display('../templates/common/tasks.tpl');
  else if ($_GET['page'] === 'task_details.php') $smarty->display('../templates/common/task_details.tpl');
  else if ($_GET['page'] === '403.html') $smarty->display('../templates/common/403.tpl');
  else include_once('../templates/common/404.html');
  include_once('../templates/common/footer.html');
}