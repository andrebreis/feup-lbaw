<?php
include_once "header.html";
?>


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
                    <div class="profile-usertitle-job">
                        Developer
                    </div>
                </div>
                <div class="info">
                    <div class="location">
                        <i class="fa fa-map-marker" aria-hidden="true"></i> 
                        <p>Porto, Portugal</p>
                    </div>
                    <div class="email">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <p>filipabp123@hotmail.com</p>
                    </div>
                </div>
                <!-- END SIDEBAR USER TITLE -->
                <!-- SIDEBAR MENU -->
                <div class="profile-usermenu">
                    <ul class="nav">
                        <li class="active">
                            <a href="#">
                                <i class="glyphicon glyphicon-home"></i>
                                Overview </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <i class="glyphicon glyphicon-ok"></i>
                                    Projects </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="glyphicon glyphicon-user"></i>
                                        Account Settings </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- END MENU -->
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="profile-content">
                            <h3>Statistics</h3>
                                <ul class="list-unstyled">
                                    <li>
                                        <i class="fa fa-wrench" aria-hidden="true"></i>
                                        <b>18</b> Project Contributions
                                    </li>
                                    <li>
                                        <i class="fa fa-briefcase" aria-hidden="true"></i>
                                        <b>5</b> Project Coordinations
                                    </li>
                                    <li>
                                        <i class="fa fa-check" aria-hidden="true"></i>
                                        <b>58</b> Tasks Completed
                                    </li>
                                    <li>
                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                        On ScrumHub since 17 Sep 2015
                                    </li>
                                </ul>

                           <h3>Popular Projects</h3>
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
        </div>
    </div>

    <?php
    include_once "footer.html";
    ?>
