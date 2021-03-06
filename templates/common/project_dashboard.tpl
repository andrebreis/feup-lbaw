<div class="container">
    <div class="row project">
        <div class="col-md-3 hidden-xs hidden-sm">

            {include file='project_sidebar.tpl'}

            <div class="col-md-9">
                <!--overview tab-->
                <div class="project-content">

                    <div class="row">
                        <div class="milestones_title col-md-8 col-md-offset-1">
                            <i id="graph_chart" class="fa fa- fa-2x" aria-hidden="true"></i>
                            <h2><b>{$name}</b></h2>
                        </div>

                        {if isset($USERNAME)}
                            {if !$isCollaborator}
                                <form action="../actions/join_project.php" method="post">
                                    <input type="hidden" name="projectId" value="{$smarty.get.id}">
                                    <div class="col-md-3">
                                        <button id="proj_btn" type="submit" class="btn btn-default">Join
                                            Project
                                        </button>
                                    </div>
                                </form>
                            {else}
                                <form action="../actions/leave_project.php" method="post">
                                    <input type="hidden" name="projectId" value="{$smarty.get.id}">
                                    <div class="col-md-3">
                                        <button id="proj_btn" type="submit" class="btn btn-default">Leave
                                            Project
                                        </button>
                                    </div>
                                </form>
                            {/if}
                        {/if}

                    </div>

                    <div class="row">
                        <div class="project_description col-md-12">
                            <p>{$description}</p>
                        </div>
                    </div>

                    {if isset($completion)}
                    <div class="row">
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                 aria-valuemin="0" aria-valuemax="100" style="width:{$completion}%">
                                <span>{$completion}% {$state_name}</span>
                            </div>
                        </div>
                    </div>
                    {/if}

                    <div class="row">
                        <div class="stat_title col-md-4 col-md-offset-1">
                            <i id="graph_chart" class="fa fa-bar-chart fa-2x" aria-hidden="true"></i>
                            <h3>Statistics</h3>
                        </div>
                    </div>
                    <div class="stats_row row">
                        <div class="col-md-4">
                            <i class="fa fa-check" aria-hidden="true"></i>
                            <h4><b>{$stats.num_tasks}</b> Tasks Completed</h4>
                        </div>
                        <div class="col-md-4">
                            <i class="fa fa-calculator" aria-hidden="true"></i>
                            <h4><b>{$stats.num_likes}</b> Likes on Tasks</h4>
                        </div>
                        <div class="col-md-4">
                            <i class="fa fa-briefcase" aria-hidden="true"></i>
                            <h4><b>{$stats.num_coordinators}</b> Coordinators</h4>
                        </div>
                    </div>
                    <div class="stats_row row">
                        <div class="col-md-4">
                            <i class="fa fa-check-square" aria-hidden="true"></i>
                            <h4><b>{$stats.num_milestones}</b> Milestones Finished</h4>
                        </div>
                        <div class="col-md-4">
                            <i class="fa fa-commenting" aria-hidden="true"></i>
                            <h4><b>{$stats.num_posts}</b> Posts on Forum</h4>
                        </div>
                        <div class="col-md-4">
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <h4><b>{$stats.num_comments}</b> Post Comments</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
