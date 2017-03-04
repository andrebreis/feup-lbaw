<?php
include_once "header.html";
?>

<?php
include_once "project_navbar.html";
?>

<div class="wrapper col-md-8">
  <h1>Settings</h1>
  <select>
    <div class="dropdown">
      <button class="btn btn-default dropdown-toggle" type="button" id="project-visibility" data-toggle="dropdown">Project Visibility
      <span class="caret"></span></button>
      <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Public</a></li>
        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Private</a></li>
      </ul>
      </div>  <button type="button" class="btn btn-danger">Delete Project</button>
</div>

<?php
include_once "footer.html";
?>
