<div class="container">
    <div class="row project">
        <div class="col-md-3 hidden-xs hidden-sm">

            {include file='project_sidebar.tpl'}

            <div class="col-md-9">
                <!--overview tab-->
                <div class="project-content">

                    <div class="row">
                        <div class="milestones_title col-md-8 col-md-offset-1">
                            <i id="graph_chart" class="fa fa-calendar fa-2x" aria-hidden="true"></i>
                            <h3>Milestone Name</h3>
                            <span class="deadline pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="progress">
                                <div style="padding-left: 0.5em;">
                                    <span class="progress-value">80% - Under Development</span>
                                </div>
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80"
                                aria-valuemin="0" aria-valuemax="100" style="width:80%">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                       <div class="table-container">
                        <table class="table table-filter">
                            <tbody>
                                <tr>
                                    <td onclick="window.location = 'index.php?page=task_details.php&id={$smarty.get.id}';">
                                        <div class="media">
                                            <div class="media-body">
                                                <span class="media-meta pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
                                                <h4 class="title">
                                                    Complete Project Description
                                                </h4>
                                                <div class="progress">
                                                    <div style="padding-left: 0.5em;">
                                                        <span class="progress-value">80% - Under Development</span>
                                                    </div>
                                                    <div class="progress-bar progress-bar-success" role="progressbar"
                                                    aria-valuenow="80"
                                                    aria-valuemin="0" aria-valuemax="100" style="width:80%">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td onclick="window.location = 'index.php?page=task_details.php';">
                                    <div class="media">
                                        <div class="media-body">
                                            <span class="media-meta pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
                                            <h4 class="title">
                                                Complete User Stories
                                            </h4>
                                            <div class="progress">
                                                <div style="padding-left: 0.5em;">
                                                    <span class="progress-value">100% - Complete</span>
                                                </div>
                                                <div class="progress-bar progress-bar-success" role="progressbar"
                                                aria-valuenow="100"
                                                aria-valuemin="0" aria-valuemax="100" style="width:100%">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <span class="media-meta pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
                                        <h4 class="title">
                                            Complete Front End
                                        </h4>
                                        <div class="progress">
                                            <div style="padding-left: 0.5em;">
                                                <span class="progress-value">40% - Under Development</span>
                                            </div>
                                            <div class="progress-bar progress-bar-success" role="progressbar"
                                            aria-valuenow="40"
                                            aria-valuemin="0" aria-valuemax="100" style="width:40%">
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

<div class="row">
    <div class="col-md-offset-1">
        <button id="icon_btn" class="btn btn-arrow btn-sm" type="submit"><i class="fa fa-arrow-left"
            aria-hidden="true"
            onclick="window.location = 'index.php?page=milestones.php&id={$ID}'"></i>
        </button>
    </div>
</div>
</div>
</div>
</div>
</div>
