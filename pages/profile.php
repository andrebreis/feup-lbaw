<?
include_once("../database/users.php");
$id = (int)htmlspecialchars($_GET['id']);
if (!idExists($id)) {
    header('HTTP/1.0 404 Not Found');
    header('Location: index.php?page=404.html');
    die();
}

$username = getUserField($id, 'username');
$email = getUserField($id, 'email');
$name = getUserField($id, 'name');
$job = getUserField($id, 'job');
$profile_picture = getUserField($id, 'picture');
if (!isset($profile_picture))
    $profile_picture = '../images/assets/default.png';
$projects = getUserProjects($_GET['id']);

$smarty->assign('username', $username);
$smarty->assign('email', $email);
$smarty->assign('name', $name);
$smarty->assign('job', $job);
$smarty->assign('profile_picture', $profile_picture);
$smarty->assign('projects', $projects);

$smarty->display('../templates/common/profile.tpl');