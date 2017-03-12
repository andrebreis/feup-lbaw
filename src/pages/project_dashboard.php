<?php
include_once "header.html";
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
          <li class="active"><a href="project_dashboard.php"><i class="fa fa-eye" aria-hidden="true"></i><b> Overview</b></a></li>
          <li><a href="tasks.php"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
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
                <li class="active"><a href="project_dashboard.php"><i class="fa fa-eye" aria-hidden="true"></i><b> Overview</b></a></li>
                <li><a href="tasks.php"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
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

          <div class="row">
            <div class="project_maintitle col-md-12">
              <h2><b>ScrumHub</b></h2>
            </div>
          </div>

          <div class="row">
            <div class="project_description col-md-12">
              <p>Maecenas ipsum velit, consectetuer eu, lobortis ut, dictum at, dui. In rutrum. Sed ac dolor sit amet purus malesuada congue. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Suspendisse sagittis ultrices augue. Mauris metus. Nunc dapibus tortor vel mi dapibus sollicitudin. Etiam posuere lacus quis dolor. Praesent id justo in neque elementum ultrices</p>
            </div>
          </div>

          <div class="row">
            <div class="progress">
              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
              aria-valuemin="0" aria-valuemax="100" style="width:40%">
               <span>40% (Under Development)</span>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="stat_title col-md-4 col-md-offset-1">
            <i id="graph_chart" class="fa fa-bar-chart fa-2x" aria-hidden="true"></i>
            <h3>Statistics</h3>
          </div>
        </div>
        <div class="stats_row row">
          <div class="col-md-4">
            <i class="fa fa-check" aria-hidden="true"></i>
            <h4><b>58</b> Tasks Completed</h4>
          </div>
          <div class="col-md-4">
            <i class="fa fa-calculator" aria-hidden="true"></i>
            <h4><b>18</b> Tasks per Week</h4>
          </div>
          <div class="col-md-4">
            <i class="fa fa-briefcase" aria-hidden="true"></i>
            <h4><b>2</b> Coordinators</h4>
          </div>
        </div>
        <div class="stats_row row">
          <div class="col-md-4">
            <i class="fa fa-check-square" aria-hidden="true"></i>
            <h4><b>2</b> Milestones Finished</h4>
          </div>
          <div class="col-md-4">
            <i class="fa fa-commenting" aria-hidden="true"></i>
            <h4><b>41</b> Forum Messages</h4>
          </div>
          <div class="col-md-4">
            <i class="fa fa-calendar" aria-hidden="true"></i>
            <h4> Created on 17/07/15</h4>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<?php
include_once "footer.html";
?>
