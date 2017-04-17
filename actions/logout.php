<?php
  session_start(['cookie_httponly' => true]);

  $_SESSION = array();
  session_regenerate_id(true);
  header('Location: ../index.php');
  die();
