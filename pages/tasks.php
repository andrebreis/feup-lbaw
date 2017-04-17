<?php
include_once "header.php";
?>

<div class="container">
  <div class="row project">
    <div class="col-md-3 hidden-xs hidden-sm">
      <div class="project-sidebar">
        <!-- SIDEBAR PROJECT TITLE -->
        <div class="project-title">
          <div class="project-title-name">
            ScrumHub
          </div>
          <div class="project-title-state">
            Under Development
          </div>
        </div>
        <div class="info">
          <div class="creator">
            <i class="fa fa-address-card" aria-hidden="true"></i>
            <p>creator_username</p>
          </div>
          <div class="percentage">
            <i class="fa fa-hourglass-half" aria-hidden="true"></i>
            <p>40% completed</p>
          </div>
          <div class="sidebar_collaborators">
            <i class="fa fa-users" aria-hidden="true"></i>
            <p>4 Collaborators</p>
          </div>
        </div>
        <!-- END SIDEBAR PROJECT TITLE -->
        <!-- SIDEBAR MENU -->
        <ul class="menu-side nav nav-pills nav-stacked">
          <li><a href="project_dashboard.php"><i class="fa fa-eye" aria-hidden="true"></i><b> Overview</b></a></li>
          <li class="active"><a href="tasks.php"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
          <li><a href="milestones.php"><i class="fa fa-calendar" aria-hidden="true"></i><b> Milestones</b></a></li>
          <li><a href="collaborators.php"><i class="fa fa-users" aria-hidden="true"></i><b> Collaborators</b></a></li>
          <li><a href="project_forum.php"><i class="fa fa-comments" aria-hidden="true"></i><b> Forum</b></a></li>
          <li><a href="settings.php"><i class="fa fa-cog" aria-hidden="true"></i><b> Settings</b></a></li>
        </ul>
        <!-- END MENU -->
      </div>
    </div>

    <!--mobile only-->
    <div class="col-md-3 hidden-md hidden-lg hidden-xl">

      <!-- Single button -->
      <!--this button is currently for mobile tests, it will go into the top navbar-->
      <div class="row menu_mobile_row">
        <ul class="nav nav-pills menu_mobile">
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu
              <i class="fa fa-bars"></i></a>
              <ul class="dropdown-menu">
                <li><a href="project_dashboard.php"><i class="fa fa-eye" aria-hidden="true"></i><b> Overview</b></a></li>
                <li class="active"><a href="tasks.php"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
                <li><a href="milestones.php"><i class="fa fa-calendar" aria-hidden="true"></i><b> Milestones</b></a></li>
                <li><a href="collaborators.php"><i class="fa fa-users" aria-hidden="true"></i><b> Collaborators</b></a></li>
                <li><a href="project_forum.php"><i class="fa fa-comments" aria-hidden="true"></i><b> Forum</b></a></li>
                <li><a href="settings.php"><i class="fa fa-cog" aria-hidden="true"></i><b> Settings</b></a></li>
              </ul>
            </li>
          </ul>
        </div>

        <div class="project-sidebar">
          <!-- SIDEBAR PROJECT TITLE -->
          <div class="project-title">
            <div class="project-title-name">
              ScrumHub
            </div>
            <div class="project-title-state">
              Under Development
            </div>
          </div>
          <div class="info">
            <div class="creator">
              <i class="fa fa-address-card" aria-hidden="true"></i>
              <p>creator_username</p>
            </div>
            <div class="percentage">
              <i class="fa fa-hourglass-half" aria-hidden="true"></i>
              <p>50% completed</p>
            </div>
            <div class="sidebar_collaborators">
              <i class="fa fa-users" aria-hidden="true"></i>
              <p>4 Collaborators</p>
            </div>
          </div>
          <!-- END SIDEBAR PROJECT TITLE -->
        </div>
      </div>


      <!--end of mobile only-->

      <div class="col-md-9">
        <!--overview tab-->
        <div class="project-content">
          <div class="col-md-12">
            <div class="tasks_title col-md-4 col-md-offset-1">
              <i id="graph_chart" class="fa fa-tasks fa-2x" aria-hidden="true"></i>
              <h3>Tasks</h3>
            </div>
            <div class="col-md-12">
              <a href="create_task.php"><button id="create-task" type="button" class="btn btn-default col-md-offset-10 col-md-2">Create Task</button></a>
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

        </div>
      </div>
    </div>
  </div>

  <?php
  include_once "footer.html";
  ?>
