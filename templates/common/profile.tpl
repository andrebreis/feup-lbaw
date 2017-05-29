<script>
    function changetextbox() {
        if (document.getElementById("select-state").value == 'Other') {
            document.getElementById("customState").disabled = '';
        } else {
            document.getElementById("customState").disabled = 'true';
        }
    };

    $(document).on("keypress", "form", function (event) {
        return event.keyCode != 13;
    });
</script>

<script>
    $(document).on('click', '.browse', function () {
        var file = $(this).parent().parent().parent().find('.file');
        file.trigger('click');
    });
    $(document).on('change', '.file', function () {
        $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
    });
</script>

<!-- create project modal-->
<div class="modal fade" id="createProjectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="createProjectModalContent">
            <div class="modal-header">
                <h3 class="modal-title" id="createProjectModalTitle">Create Project</h3>
            </div>
            <div class="modal-body">
                <form action="../actions/create_project.php" method="post">
                    <div class="form-group">
                        <label for="projectName">Project Name</label>
                        <input type="name" name="name" class="form-control" id="projectNameInput"
                               placeholder="Choose a name for your Project">
                    </div>
                    <div class="form-group">
                        <label for="projectDescription">Project Description</label>
                        <input type="description" name="description" class="form-control" id="projectDescriptionInput"
                               placeholder="Write a small description of your Project">
                    </div>
                    <div class="form-inline">
                        <label for="projectVisibility">Project Visibility</label>
                        <select class="custom-select" name="is-visible" id="projectVisibilitySelect">
                            <option selected value="true">Public</option>
                            <option value="false">Private</option>
                        </select>
                    </div>
                    <div class="form-group projectStateGroup">
                        <label for="projectState">Project State</label>
                        <div class="row">
                            <!-- TODO: CHANGE THIS TO PHP -->
                            <div class="col-md-3">
                                <select id="select-state" class="custom-select" id="projectStateSelect"
                                        onchange="changetextbox()">
                                    <option value="none" selected>Choose...</option>
                                    <option value="Waiting for Start">Waiting for Start</option>
                                    <option value="Under Development">Under Development</option>
                                    <option value="Arrested Development">Arrested Development</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="col-md-8 col-md-offset-1">
                                <input disabled="disabled" name="new-state" id="customState" type="state"
                                       class="form-control-sm" id="projectStateInput"
                                       placeholder="Choose a custom State">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="projectTags">Project Tags</label>
                        <!-- TODO: CHANGE THIS TO PHP -->
                        <input type="text" class="form-control" id="projectTagsInput" placeholder="Enter tags"
                               data-role="tagsinput">
                        <small id="tagsInputHelp" class="form-text text-muted">Add multiple tags by pressing enter after
                            each tag
                        </small>
                    </div>
            </div>
            <div class="row">
                <div class="modal-footer col-md-4 col-md-offset-4">
                    <button type="submit" id="new_proj_btn" class="btn btn-primary create_in_modal">Create Project
                    </button>
                </div>
            </div>
            </form>
        </div>
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
                    <img src="{$profile_picture}" class="img-responsive" alt="">
                </div>
                <!-- END SIDEBAR USERPIC -->
                <!-- SIDEBAR USER TITLE -->
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                        {$name}
                    </div>
                    <div class="profile-usertitle-username">
                        ({$username})
                    </div>
                </div>
                <div class="info">
                    <div class="email">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <p>{$email}</p>
                    </div>
                    <!-- <div class="location">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <p>Lansing, United States</p>
                    </div> -->
                    {if isset($job)}
                        <div class="job">
                            <i class="fa fa-briefcase" aria-hidden="true"></i>
                            <p>{$job}</p>
                        </div>
                    {/if}
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
                            <img src="{$profile_picture}" class="img-responsive" alt="">
                        </div>
                    </div>
                    <div class="col-xs-7">
                        <div class="profile-usertitle">
                            <div class="profile-usertitle-name">
                                {$name}
                            </div>
                            <div class="profile-usertitle-username">
                                ({$username})
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <div class="info">
                            <div class="email">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <p>{$email}</p>
                            </div>
                            {if isset($job)}
                                <div class="job">
                                    <i class="fa fa-briefcase" aria-hidden="true"></i>
                                    <p>{$job}</p>
                                </div>
                            {/if}
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
                                <h4><b>{$stats.num_contributions}</b> Project Contributions</h4>
                            </div>
                            <div class="col-md-4">
                                <i class="fa fa-briefcase" aria-hidden="true"></i>
                                <h4><b>{$stats.num_coordinations}</b> Project Coordinations</h4>
                            </div>
                            <div class="col-md-4">
                                <i class="fa fa-check" aria-hidden="true"></i>
                                <h4><b>{$stats.num_tasks}</b> Tasks Completed</h4>
                            </div>
                        </div>
                        <div class="stats_row row">
                            <div class="col-md-4">
                                <i class="fa fa-check-square" aria-hidden="true"></i>
                                <h4><b>{$stats.num_finished_projects}</b> Projects Finished</h4>
                            </div>
                            <div class="col-md-4">
                                <i class="fa fa-comments-o" aria-hidden="true"></i>
                                <h4><b>{$stats.num_posts}</b> Posts on Forum</h4>
                            </div>
                            <div class="col-md-4">
                                <i class="fa fa-commenting-o" aria-hidden="true"></i>
                                <h4><b>{$stats.num_comments}</b> Comments</h4>
                            </div>
                        </div>

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
                                {if $_SESSION['userId'] == $_GET['id']}
                                    <button id="new_proj_btn" type="button" class="btn btn-default pull-right"
                                            data-toggle="modal" data-target="#createProjectModal">Create Project
                                    </button>
                                {/if}
                            </div>
                        </div>
                        <table class="table table-myproj">
                            <tbody>
                            {foreach from=$projects  item=project}
                                {assign var='state_name' value=$project.state_name}
                                {if !isset($state_name)}
                                    {assign var='state_name' value='Undefined'}
                                {/if}
                                <tr data-status="project">
                                    <td onclick="window.location='index.php?page=project_dashboard.php&id={$project.id}';">
                                        <div class="media">
                                            <div class="media-body">
                                                <h4 class="title">{$project.name}</h4>
                                                <p class="summary">{$project.description}</p>
                                                <div class="info">
                                                    <div class="state">
                                                        <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                        <p>{$state_name}</p>
                                                    </div>
                                                    <div class="collaborators">
                                                        <i class="fa fa-users" aria-hidden="true"></i>
                                                        <p>{$project.num_collaborators} Collaborators</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--end of my projects tab-->

                <!--notifications tab-->
                <div id="notifications" class="tab-pane fade">
                    <div class="profile-content">
                        <div class="row">
                            <div class="settings_title col-md-offset-1">
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
                                        {foreach from=$messages  item=message}
                                            {if !isset($message.invite)}
                                                {if !isset($message.report)}
                                                    <tr data-status="message">
                                                        <td>
                                                            <div class="media">
                                                                <div class="media-body">
                                                                    <h4 class="title">{$message.subject}</h4>
                                                                    <p class="summary">{$message.text}</p>
                                                                    <div class="info">
                                                                        <div class="sender">
                                                                            <i class="fa fa-user"
                                                                               aria-hidden="true"></i>
                                                                            <p>{$message.username}</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                {/if}
                                            {/if}
                                        {/foreach}
                                        </tbody>
                                    </table>
                                </div>
                                <!-- end of messages tab-->

                                <!--invites tab-->
                                <div id="invites" class="tab-pane fade">
                                    <table class="table table-myproj">
                                        <tbody>
                                        {foreach from=$messages  item=message}
                                            {if isset($message.invite)}
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">{$message.subject}</h4>
                                                                <div class="row">
                                                                    <p class="summary col-md-7">{$message.text}</p>
                                                                    <button type="button" id="accept_btn"
                                                                            class="btn btn-primary col-md-2">Accept
                                                                    </button>
                                                                    <button type="button" id="decline_btn"
                                                                            class="btn btn-primary col-md-2">Decline
                                                                    </button>
                                                                </div>
                                                                <div class="sender">
                                                                    <i class="fa fa-user" aria-hidden="true"></i>
                                                                    <p>{$message.username}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            {/if}
                                        {/foreach}
                                        </tbody>
                                    </table>
                                </div>
                                <!--end of invites tab-->

                                <!--reports tab-->
                                <div id="reports" class="tab-pane fade">
                                    <table class="table table-myproj">
                                        <tbody>
                                        {foreach from=$messages  item=message}
                                            {if isset($message.report)}
                                                <tr data-status="message">
                                                    <td>
                                                        <div class="media">
                                                            <div class="media-body">
                                                                <h4 class="title">{$message.subject}</h4>
                                                                <p class="summary">{$message.text}</p>
                                                                <div class="info">
                                                                    <div class="sender">
                                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                                        <p>{$message.username}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            {/if}
                                        {/foreach}
                                        </tbody>
                                    </table>
                                </div>
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
                        <div class="row changePasswordGroup">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="newpass">Change Password</label>
                                    <input type="newpass" name="newpass" class="form-control" id="newPassInput"
                                           placeholder="Type a new password">
                                </div>
                                <div class="form-group">
                                    <label for="confirmpass">Confirm Password</label>
                                    <input type="confirmpass" name="confirmpass" class="form-control"
                                           id="confirmPassInput" placeholder="Confirm your new password">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="newUsername">Change Username</label>
                                    <input type="newUsername" name="newUsername" class="form-control"
                                           id="newUsernameInput" placeholder="Type a new username">
                                </div>
                                <div class="form-group">
                                    <label for="newUsername">Change Display Name</label>
                                    <form class="form-inline">
                                        <input type="newFirstName" name="newFirstName" class="form-control"
                                               id="newUsernameInput" placeholder="First name">
                                        <input type="newLastName" name="newLastName" class="form-control"
                                               id="newUsernameInput" placeholder="Last name">
                                    </form>
                                </div>
                                <div class="form-check displayEmail">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" value="">
                                        Display E-mail
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label for="newJob">Change Job</label>
                                    <input type="newJob" name="newJob" class="form-control"
                                           id="newUsernameInput" placeholder="Type a new job">
                                </div>

                                <div class="form-group">
                                    <label for="newImage">Change Profile Picture</label>
                                    <input type="file" name="img[]" class="file">
                                    <div class="input-group col-xs-12">
                                                <span class="input-group-addon"><i
                                                            class="glyphicon glyphicon-picture"></i></span>
                                        <input type="text" class="form-control" disabled
                                               placeholder="Upload Image">
                                        <span class="input-group-btn">
                                    <button class="browse btn btn-primary" type="button"><i
                                                class="glyphicon glyphicon-search"></i> Browse</button>
                                </span>
                                    </div>
                                </div>
                                <button type="button" id="new_proj_btn"
                                        class="btn btn-primary col-md-2 col-md-offset-5">Save Changes
                                </button>
                            </div>

                        </div>

                    </div>
                </div>
                <!--end of account settings tab-->
            </div>
            <!--end of tabs content-->
        </div>
    </div>
</div>
