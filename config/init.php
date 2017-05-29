<?php
  session_set_cookie_params(3600, '/'); //FIXME
  session_start();

error_reporting(E_ERROR | E_WARNING); // E_NOTICE by default

  $BASE_DIR = '/'; //FIXME
  $BASE_URL = '/~lbaw1626/frmk/'; //FIXME

  $conn = new PDO('pgsql:host=dbm.fe.up.pt;dbname=lbaw1626', 'lbaw1626', 'mi98ol58'); //FIXME
  $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$conn->exec('SET SCHEMA \'public\'');

  include_once('/usr/local/lib/smarty-3.1.30/libs/Smarty.class.php');

  $smarty = new Smarty;
  $smarty->template_dir = '../templates/common/';
  $smarty->compile_dir = '../templates_c/';
  $smarty->assign('BASE_URL', $BASE_URL);

$smarty->assign('ERROR_MESSAGES', $_SESSION['error_messages']);
$smarty->assign('FIELD_ERRORS', $_SESSION['field_errors']);
$smarty->assign('SUCCESS_MESSAGES', $_SESSION['success_messages']);
$smarty->assign('FORM_VALUES', $_SESSION['form_values']);
$smarty->assign('USERNAME', $_SESSION['username']);
$smarty->assign('ID', $_SESSION['userId']);

unset($_SESSION['success_messages']);
unset($_SESSION['error_messages']);
unset($_SESSION['field_errors']);
unset($_SESSION['form_values']);

date_default_timezone_set("Europe/Lisbon");

