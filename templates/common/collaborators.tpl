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
          <li><a href="tasks.php"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
          <li><a href="milestones.php"><i class="fa fa-calendar" aria-hidden="true"></i><b> Milestones</b></a></li>
          <li class="active"><a href="collaborators.php"><i class="fa fa-users" aria-hidden="true"></i><b> Collaborators</b></a></li>
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
                <li><a href="tasks.php"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
                <li><a href="milestones.php"><i class="fa fa-calendar" aria-hidden="true"></i><b> Milestones</b></a></li>
                <li class="active"><a href="collaborators.php"><i class="fa fa-users" aria-hidden="true"></i><b> Collaborators</b></a></li>
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
          <div class="collab_title col-md-10 col-md-offset-1">
            <i class="fa fa-users fa-2x" aria-hidden="true"></i>
            <h3>Collaborators</h3>
            <button id="new_collab_btn" type="button" class="btn btn-default pull-right">Add Collaborator</button>
          </div>
        </div>

        <!--list of coordinators-->
        <div class="row">
          <div class="proj_user col-md-5 col-md-offset-1">
            <a href="profile.php" class="pull-left">
              <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
            </a>
            <h4 class="title">
              Harold Johnson
              <span class="coordinator pull-right">Coordinator</span>
            </h4>
            <h5>(HTPharold)</h5>
            <div class="info">
              <div class="location">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <p>Lansing, United States</p>
              </div>
              <div class="email">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <p>haroldme@hotmail.com</p>
              </div>
            </div>
          </div>
          <div class="proj_user col-md-5">
            <a href="profile.php" class="pull-left">
              <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
            </a>
            <h4 class="title">
              Harold Johnson
              <span class="collaborator pull-right">Collaborator</span>
            </h4>
            <h5>(HTPharold)</h5>
            <div class="info">
              <div class="location">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <p>Lansing, United States</p>
              </div>
              <div class="email">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <p>haroldme@hotmail.com</p>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="proj_user col-md-5 col-md-offset-1">
            <a href="profile.php" class="pull-left">
              <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
            </a>
            <h4 class="title">
              Harold Johnson
              <span class="collaborator pull-right">Collaborator</span>
            </h4>
            <h5>(HTPharold)</h5>
            <div class="info">
              <div class="location">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <p>Lansing, United States</p>
              </div>
              <div class="email">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <p>haroldme@hotmail.com</p>
              </div>
            </div>
          </div>
          <div class="proj_user col-md-5">
            <a href="profile.php" class="pull-left">
              <img src="https://pbs.twimg.com/profile_images/457331442503000064/oBHblcgZ.png" class="media-photo">
            </a>
            <h4 class="title">
              Harold Johnson
              <span class="collaborator pull-right">Collaborator</span>
            </h4>
            <h5>(HTPharold)</h5>
            <div class="info">
              <div class="location">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <p>Lansing, United States</p>
              </div>
              <div class="email">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <p>haroldme@hotmail.com</p>
              </div>
            </div>
          </div>
        </div>
        <!--end of list of coordinators-->


      </div>
    </div>
  </div>
</div>
