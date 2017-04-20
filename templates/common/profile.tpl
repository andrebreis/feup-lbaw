<?php

include_once("../database/users.php");
$id = (int)htmlspecialchars($_GET['id']);
if (!idExists($id)) {
    header('HTTP/1.0 404 Not Found');
    header('Location: 404.html');
    die();
}

$username = getUserField($id, 'username');
$email = getUserField($id, 'email');
$name = getUserField($id, 'name');
$job = getUserField($id, 'job');
$profile_picture = getUserField($id, 'picture');
if ($profile_picture === null)
    $profile_picture = '../images/assets/default.png';

$projects = getUserProjects($_GET['id']);

?>


<script>
function changetextbox(){
    if (document.getElementById("select_State").value == 'Other') {
        document.getElementById("customState").disabled = '';
    } else {
        document.getElementById("customState").disabled = 'true';
    }
};
</script>


<!-- create project modal-->
<div class="modal fade" id="createProjectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="createProjectModalContent">
            <div class="modal-header">
                <h3 class="modal-title" id="createProjectModalTitle">Create Project</h3>
            </div>
            <div class="modal-body">
             <form action="../actions/create_project.php" method="post">
                 <div class="form-group">
                    <label for="projectName">Project Name</label>
                    <input type="name" name="name" class="form-control" id="projectNameInput" placeholder="Choose a name for your Project">
                </div>
                <div class="form-group">
                    <label for="projectDescription">Project Description</label>
                    <input type="description" name="description" class="form-control" id="projectDescriptionInput" placeholder="Write a small description of your Project">
                </div>
                <div class="form-inline">
                    <label for="projectVisibility">Project Visibility</label>
                    <select class="custom-select" name="is-visible" id="projectVisibilitySelect">
                        <option selected>Choose...</option>
                        <option value="true">Public</option>
                        <option value="false">Private</option>
                    </select>
                </div>
                <div class="form-group projectStateGroup">
                    <label for="projectState">Project State</label>
                    <div class="row">
                      <!-- TODO: CHANGE THIS TO PHP -->
                        <div class="col-md-3">
                             <select id="select-state" class="custom-select" id="projectStateSelect" onchange="changetextbox()">
                            <option value="none" selected>Choose...</option>
                            <option value="Waiting for Start">Waiting for Start</option>
                            <option value="Under Development">Under Development</option>
                            <option value="Arrested Development">Arrested Development</option>
                            <option value="Other">Other</option>
                        </select>
                        </div>
                        <div class="col-md-8 col-md-offset-1">
                            <input disabled="disabled" name="new-state" id="customState" type="state" class="form-control-sm" id="projectStateInput" placeholder="Choose a custom State">
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="projectTags">Project Tags</label>
                    <!-- TODO: CHANGE THIS TO PHP -->
                    <input type="text" class="form-control" id="projectTagsInput" placeholder="Enter tags" data-role="tagsinput">
                    <small id="tagsInputHelp" class="form-text text-muted">Add multiple tags by pressing enter after each tag</small>
                </div>
        </div>
          <div class="row">
              <div class="modal-footer col-md-4 col-md-offset-4">
                  <button type="submit" id="new_proj_btn" class="btn btn-primary create_in_modal">Create Project</button>
              </div>
          </div>
        </form>
    </div>
</div>
</div>
<!-- end of create project modal-->


<div class="container">
    <div class="row profile">
        <div class="col-md-3 hidden-xs hidden-sm">
            <div class="profile-sidebar">
                <!-- SIDEBAR USERPIC -->
                <div class="profile-userpic">
                    <img src=<?php echo $profile_picture ?> class="img-responsive" alt="">
                </div>
                <!-- END SIDEBAR USERPIC -->
                <!-- SIDEBAR USER TITLE -->
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                        <?php echo $name ?>
                    </div>
                    <div class="profile-usertitle-username">
                        (<?php echo $username ?>)
                    </div>
                </div>
                <div class="info">
                    <div class="email">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <p><?php echo $email ?></p>
                    </div>
                    <!-- <div class="location">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <p>Lansing, United States</p>
                    </div> -->
                    <?php
                    if(isset($job))
                      echo'<div class="job">
                          <i class="fa fa-briefcase" aria-hidden="true"></i>
                          <p>' . $job . '</p>
                      </div>';
                    ?>
                </div>
                <!-- END SIDEBAR USER TITLE -->
                <!-- SIDEBAR MENU -->
                <ul class="menu-side nav nav-pills nav-stacked">
                    <li class="active"><a data-toggle="tab" href="#overview"><b>Overview</b></a></li>
                    <li><a data-toggle="tab" href="#my_projects"><b>My Projects</b></a></li>
                    <li><a data-toggle="tab" href="#notifications"><b>Notifications</b></a></li>
                    <li><a data-toggle="tab" href="#account_settings"><b>Account Settings</b></a></li>
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
                                <li><a data-toggle="tab" href="#overview"><b>Overview</b></a></li>
                                <li><a data-toggle="tab" href="#my_projects"><b>My Projects</b></a></li>
                                <li><a data-toggle="tab" href="#notifications"><b>Notifications</b></a></li>
                                <li><a data-toggle="tab" href="#account_settings"><b>Account Settings</b></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="profile-sidebar-mobile">
                    <div class="row">
                        <div class="col-xs-3 col-xs-offset-1">
                            <div class="profile-userpic">
                                <img src=<?php echo $profile_picture ?> class="img-responsive" alt="">
                            </div>
                        </div>
                        <div class="col-xs-7">
                            <div class="profile-usertitle">
                                <div class="profile-usertitle-name">
                                    <?php echo $name ?>
                                </div>
                                <div class="profile-usertitle-username">
                                    (<?php echo $username ?>)
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8 col-xs-offset-2">
                            <div class="info">
                                <div class="email">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <p><?php echo $email ?></p>
                                </div>
                                <!-- <div class="location">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <p>Lansing, United States</p>
                                </div> -->
                                <!-- <div class="job">
                                    <i class="fa fa-briefcase" aria-hidden="true"></i>
                                    <p>Web Developer</p>
                                </div> -->
                                <?php
                                if(isset($job))
                                  echo'<div class="job">
                                      <i class="fa fa-briefcase" aria-hidden="true"></i>
                                      <p>' . $job . '</p>
                                  </div>';
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end of mobile only-->


            <div class="col-md-9">
                <div class="tab-content">

                    <!--overview tab-->
                    <div id="overview" class="tab-pane fade in active">
                        <div class="profile-content">
                            <div class="row">
                                <div class="stat_title col-md-4 col-md-offset-1">
                                    <i id="graph_chart" class="fa fa-bar-chart fa-2x" aria-hidden="true"></i>
                                    <h3>Statistics</h3>
                                </div>
                            </div>
                            <div class="stats_row row">
                                <div class="col-md-4">
                                    <i class="fa fa-wrench" aria-hidden="true"></i>
                                    <h4><b>18</b> Project Contributions</h4>
                                </div>
                                <div class="col-md-4">
                                    <i class="fa fa-briefcase" aria-hidden="true"></i>
                                    <h4><b>5</b> Project Coordinations</h4>
                                </div>
                                <div class="col-md-4">
                                    <i class="fa fa-check" aria-hidden="true"></i>
                                    <h4><b>58</b> Tasks Completed</h4>
                                </div>
                            </div>
                            <div class="stats_row row">
                                <div class="col-md-4">
                                    <i class="fa fa-check-square" aria-hidden="true"></i>
                                    <h4><b>10</b> Projects Finished</h4>
                                </div>
                                <div class="col-md-4">
                                    <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                    <h4><b>3</b> Paused Projects</h4>
                                </div>
                                <div class="col-md-4">
                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                    <h4> Signed-up on 17/07/15</h4>
                                </div>
                            </div>

                            <div class="row">
                                <div class="popular_title col-md-4 col-md-offset-1">
                                    <i class="fa fa-star-o fa-2x" aria-hidden="true"></i>
                                    <h3>Popular Projects</h3>
                                </div>
                            </div>
                            <table class="table table-popular">
                                <tbody>
                                  TODO: ADD POPULAR PROJECTS
                                    <!-- <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">ScrumHub</h4>
                                                    <span class="media-meta pull-right">Updated on 20 Mar 2016</span>
                                                    <p class="summary">A project for the LBAW course</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            <p>Under Development</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>4 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">ScrumHub</h4>
                                                    <span class="media-meta pull-right">Updated on 20 Mar 2016</span>
                                                    <p class="summary">A project for the LBAW course</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            <p>Under Development</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>4 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">ScrumHub</h4>
                                                    <span class="media-meta pull-right">Updated on 20 Mar 2016</span>
                                                    <p class="summary">A project for the LBAW course</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            <p>Under Development</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>4 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">ScrumHub</h4>
                                                    <span class="media-meta pull-right">Updated on 20 Mar 2016</span>
                                                    <p class="summary">A project for the LBAW course</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            <p>Under Development</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>4 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">Christmas Party</h4>
                                                    <span class="media-meta pull-right">Updated on 22 Dec 2016</span>
                                                    <p class="summary">preparing decorations, food and drinks for a Christmas party</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square" aria-hidden="true"></i>
                                                            <p>Finished</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>3 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">RaspberryPi Workshop</h4>
                                                    <span class="media-meta pull-right">Updated on 15 Feb 2017</span>
                                                    <p class="summary">RaspberryPi Workshop for IoT Week</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square" aria-hidden="true"></i>
                                                            <p>Finished</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>11 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr> -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--end of overview tab-->

                    <!--my projects tab-->
                    <div id="my_projects" class="tab-pane fade">
                        <div class="profile-content">
                            <div class="row">
                                <div class="myproj_title col-md-11 col-md-offset-1">
                                    <i class="fa fa-folder-open fa-2x" aria-hidden="true"></i>
                                    <h3>My Projects</h3>
                                    <?php
                                      if($_SESSION['userId'] == $id)
                                       echo '<button id="new_proj_btn" type="button" class="btn btn-default pull-right" data-toggle="modal" data-target="#createProjectModal">Create Project</button>';
                                     ?>
                                </div>
                            </div>
                            <table class="table table-myproj">
                                <tbody>
                                  <?php 
                                  foreach ($projects as $project) {
                                    $state_name = $project['state_name'];
                                    if(!isset($state_name))
                                      $state_name = "Undefined";
                                    echo '<tr data-status="project">
                                        <td onclick="window.location=\'project_dashboard.php?id=' . $project['id'] . '\';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">' . $project['name'] . '</h4>
                                                    <p class="summary">' . $project['description'] . '</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            <p>' . $state_name . '</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>' . $project['num_collaborators'] . 'Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    ';
                                  }
                                  ?>
                                    <!-- <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">ScrumHub</h4>
                                                    <span class="media-meta pull-right">Updated on 20 Mar 2016</span>
                                                    <p class="summary">A project for the LBAW course</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            <p>Under Development</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>4 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr> -->
                                    <!-- <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">Christmas Party</h4>
                                                    <span class="media-meta pull-right">Updated on 22 Dec 2016</span>
                                                    <p class="summary">preparing decorations, food and drinks for a Christmas party</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square" aria-hidden="true"></i>
                                                            <p>Finished</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>3 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">RaspberryPi Workshop</h4>
                                                    <span class="media-meta pull-right">Updated on 15 Feb 2017</span>
                                                    <p class="summary">RaspberryPi Workshop for IoT Week</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square" aria-hidden="true"></i>
                                                            <p>Finished</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>11 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td onclick="window.location = 'project_dashboard.php';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h4 class="title">Pokémon Go Hacking App</h4>
                                                    <span class="media-meta pull-right">Updated on 30 Feb 2017</span>
                                                    <p class="summary">App to track Pokémon using a radar</p>
                                                    <div class="info">
                                                        <div class="state">
                                                            <i class="fa fa-check-square" aria-hidden="true"></i>
                                                            <p>Under Development</p>
                                                        </div>
                                                        <div class="collaborators">
                                                            <i class="fa fa-users" aria-hidden="true"></i>
                                                            <p>3 Collaborators</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr> -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--end of my projects tab-->

                    <!--notifications tab-->
                    <div id="notifications" class="tab-pane fade">
                        <div class="profile-content">
                            <div class="row">
                                <div class="settings_title col-md-12">
                                    <i class="fa fa-exclamation-circle fa-2x" aria-hidden="true"></i>
                                    <h3>Notifications</h3>
                                </div>
                                <ul class="nav nav-tabs notification_tabs">
                                    <li class="active"><a data-toggle="tab" href="#messages">Messages</a></li>
                                    <li><a data-toggle="tab" href="#invites">Invites</a></li>
                                    <li><a data-toggle="tab" href="#reports">Reports</a></li>
                                </ul>

                                <div class="tab-content">
                                    <!--messages tab-->
                                    <div id="messages" class="tab-pane fade in active">
                                        <table class="table table-myproj">
                                            <tbody>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Message 1</h4>
                                                                <span class="media-meta pull-right">20 Feb 2017</span>
                                                                <p class="summary">Hey Harold! When can we meet to...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Message 2</h4>
                                                                <span class="media-meta pull-right">15 Feb 2017</span>
                                                                <p class="summary">Hey Harold! When can we meet to...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Message 3</h4>
                                                                <span class="media-meta pull-right">29 Jan 2017</span>
                                                                <p class="summary">Hey Harold! When can we meet to...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- end of messages tab-->

                                    <!--invites tab-->
                                    <div id="invites" class="tab-pane fade">
                                        <table class="table table-myproj">
                                            <tbody>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Invite 1</h4>
                                                                <span class="media-meta pull-right">20 Feb 2017</span>
                                                                <p class="summary">Hey there! Would you like to join...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Invite 2</h4>
                                                                <span class="media-meta pull-right">15 Feb 2017</span>
                                                                <p class="summary">Hey there! Would you like to join...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Invite 3</h4>
                                                                <span class="media-meta pull-right">29 Jan 2017</span>
                                                                <p class="summary">Hey there! Would you like to join...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Invite 4</h4>
                                                                <span class="media-meta pull-right">11 Jan 2017</span>
                                                                <p class="summary">Hey there! Would you like to join...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--end of invites tab-->

                                    <!--reports tab-->
                                    <div id="reports" class="tab-pane fade">
                                        <table class="table table-myproj">
                                            <tbody>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Report 1</h4>
                                                                <span class="media-meta pull-right">20 Feb 2017</span>
                                                                <p class="summary">I think this user is...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Report 2</h4>
                                                                <span class="media-meta pull-right">15 Feb 2017</span>
                                                                <p class="summary">I think this user is ...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">Report 3</h4>
                                                                <span class="media-meta pull-right">29 Jan 2017</span>
                                                                <p class="summary">I think this user is ...</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>sender_username</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--end of reports tab-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end of account settings tab-->

                    <!--account settings tab-->
                    <div id="account_settings" class="tab-pane fade">
                        <div class="profile-content">
                            <div class="row">
                                <div class="settings_title col-md-11 col-md-offset-1">
                                    <i class="fa fa-cogs fa-2x" aria-hidden="true"></i>
                                    <h3>Account Settings</h3>
                                </div>
                            </div>
                            <h4>Under Development</h4>
                        </div>
                    </div>
                    <!--end of account settings tab-->
                </div>
                <!--end of tabs content-->
            </div>
        </div>
    </div>