<?php
include_once('../config/init.php');
if(!isset($_GET['page']))
  $smarty->display('../templates/common/landing.tpl');
else {
  include_once('../templates/common/header.tpl');
  if ($_GET['page'] === 'collaborators.php') $smarty->display('../templates/collaborators.tpl');
  else if ($_GET['page'] === 'create_post.php') $smarty->display('../templates/common/create_post.tpl');
  else if ($_GET['page'] === 'create_task.php') $smarty->display('../templates/common/create_task.tpl');
  else if ($_GET['page'] === 'forum_post.php') $smarty->display('../templates/common/forum_post.tpl');
  else if ($_GET['page'] === 'profile.php') $smarty->display('../templates/common/profile.tpl');
  else if ($_GET['page'] === 'project_dashboard.php') $smarty->display('../templates/common/project_dashboard.tpl');
  else if ($_GET['page'] === 'project_forum.php') $smarty->display('../templates/common/project_forum.tpl');
  else if ($_GET['page'] === 'search.php') $smarty->display('../templates/common/search.tpl');
  else if ($_GET['page'] === 'settings.php') $smarty->display('../templates/common/settings.tpl');
  else if ($_GET['page'] === 'tasks.php') $smarty->display('../templates/common/tasks.tpl');
  else if ($_GET['page'] === '403.html') $smarty->display('../templates/common/403.html');
  else include_once('../templates/common/404.html');
  include_once('../templates/common/footer.html');
}