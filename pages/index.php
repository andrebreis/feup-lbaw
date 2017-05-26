<?php
include_once('../config/init.php');
if(!isset($_GET['page']))
  $smarty->display('../templates/common/landing.tpl');
else {
  $smarty->display('../templates/common/header.tpl');
  if ($_GET['page'] === 'collaborators.php') include_once ('collaborators.php');
  else if ($_GET['page'] === 'forum_post.php') include_once ('forum_post.php');
  else if ($_GET['page'] === 'milestones.php') include_once('milestones.php');
  else if ($_GET['page'] === 'milestone_details.php') include_once('milestone_details.php');
  else if ($_GET['page'] === 'profile.php') include_once('profile.php');
  else if ($_GET['page'] === 'project_dashboard.php') include_once('project_dashboard.php');
  else if ($_GET['page'] === 'project_forum.php') include_once('project_forum.php');
  else if ($_GET['page'] === 'search.php') include_once('search.php');
  else if ($_GET['page'] === 'settings.php') include_once('settings.php');
  else if ($_GET['page'] === 'tasks.php') include_once('tasks.php');
  else if ($_GET['page'] === 'task_details.php') include_once('task_details.php');
  else if ($_GET['page'] === '403.html') $smarty->display('../templates/common/403.tpl');
  else include_once('../templates/common/404.html');
  include_once('../templates/common/footer.html');
}