<?php
include_once "header.html";
?>

<div class="wrapper col-md-8">
    <h1>Tasks</h1>
    <div class="col-md-12">
      <button id="create-task" type="button" class="btn btn-success col-md-offset-10 col-md-2">Create Task</button>
      <input id="search-tasks" class="col-md-6" type="text" name="search" placeholder="Search" title="  is: open
  priority: high
  label: frontend
  milestone: may
  assignee: andre">
    </div>

    <div id="task-list" class="col-md-6">
      <ul class="list-group">
        <li class="list-group-item"><i class="fa fa-check-square-o" aria-hidden="true"></i> Complete Project Description <span class="bg-success">Low</span></li>
        <li class="list-group-item"><i class="fa fa-check-square-o" aria-hidden="true"></i> Complete User Stories <span class="bg-warning">Medium</span></li>
        <li class="list-group-item"><i class="fa fa-square-o" aria-hidden="true"></i> Complete Front End  <span class="bg-danger">HIGH</span></li>
      </ul>
    </div>

</div>

<?php
include_once "footer.html";
?>
