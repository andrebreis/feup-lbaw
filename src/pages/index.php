<?php
  include_once("header.html");

  if($_GET["page"] == "landing")
    include_once("landing.php");
  else if($_GET["page"] == "profile")
    include_once("profile.php");


  include_once("footer.html");
?>
