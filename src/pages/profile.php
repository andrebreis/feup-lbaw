<?php
include_once "header.html";
?>

<script>
$(document).ready(function () {
    $('.btn-filter').on('click', function () {
        var $target = $(this).data('target');
        if ($target != 'all') {
            $('.table tr').css('display', 'none');
            $('.table tr[data-status="' + $target + '"]').fadeIn('slow');
        } else {
            $('.table tr').css('display', 'none').fadeIn('slow');
        }
    });

});
</script>


<div class="container">
    <div class="row profile">
        <div class="col-md-3">
            <div class="profile-sidebar">
                <!-- SIDEBAR USERPIC -->
                <div class="profile-userpic">
                    <img src="http://www.sadanduseless.com/wp-content/uploads/2014/09/hide-the-pain-harold.jpg" class="img-responsive" alt="">
                </div>
                <!-- END SIDEBAR USERPIC -->
                <!-- SIDEBAR USER TITLE -->
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                        Harold Johnson
                    </div>
                    <div class="profile-usertitle-username">
                        (HTPharold)
                    </div>
                </div>
                <div class="info">
                    <div class="email">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <p>haroldme@hotmail.com</p>
                    </div>
                    <div class="location">
                        <i class="fa fa-map-marker" aria-hidden="true"></i> 
                        <p>Lansing, United States</p>
                    </div>
                    <div class="job">
                        <i class="fa fa-briefcase" aria-hidden="true"></i>
                        <p>Web Developer</p>
                    </div>
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
                       <tr data-status="project">
                        <td>
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
                        <td>
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
                        <td>
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
                <button id="new_proj_btn"type="button" class="btn btn-default pull-right">Create Project</button>
            </div>
        </div>
        <table class="table table-myproj">
            <tbody>
               <tr data-status="project">
                <td>
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
                <td>
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
                <td>
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
                <td>
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
            </tr>
        </tbody>
    </table>
</div>
</div>
<!--end of my projects tab-->

<!--notifications tab-->
<div id="notifications" class="tab-pane fade">
    <div class="profile-content">
       <div class="row">
        <div class="settings_title col-md-11 col-md-offset-1">
            <i class="fa fa-exclamation-circle fa-2x" aria-hidden="true"></i>
            <h3>Notifications</h3>
        </div>
    

    <div class="pull-right">
        <div class="btn-group">
            <button id="notification_filter" type="button" class="btn btn-default btn-filter" data-target="invite">Invites</button>
            <button id="notification_filter" type="button" class="btn btn-default btn-filter" data-target="message">Messages</button>
            <button id="notification_filter" type="button" class="btn btn-default btn-filter" data-target="all" autofocus="true">All</button>
        </div>
    </div>
    <div class="notification_table">
        <table class="table table-myproj">
            <tbody>
               <tr data-status="invite">
                <td>
                    <div class="media">
                        <div class="media-body">
                            <h4 class="title">Invite 1</h4>
                            <span class="media-meta pull-right">1 Mar 2017</span>
                            <p class="summary">Hi there! I wanted to invite you to...</p>
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
                            <h4 class="title">Message 1</h4>
                            <span class="media-meta pull-right">20 Feb 2016</span>
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
            <tr data-status="invite">
                <td>
                    <div class="media">
                        <div class="media-body">
                            <h4 class="title">Invite 2</h4>
                            <span class="media-meta pull-right">12 Feb 2017</span>
                            <p class="summary">Hi there! I wanted to invite you to...</p>
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

<?php
include_once "footer.html";
?>
