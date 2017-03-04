<?php
include_once "header.html";
?>

<?php
include_once "project_navbar.html";
?>

<div class="wrapper col-md-8">
  <h1>Settings</h1>
  <div id="project-visibility">
    <span>Project Visibility: </span><select>
      <option value="0">Public</option>
      <option value="1">Private</option>
    </select>
  </div>
  <button type="button" class="btn btn-danger">Delete Project</button>
</div>

<?php
include_once "footer.html";
?>
