<div class="container">
    <div class="row project">
        <div class="col-md-3 hidden-xs hidden-sm">

            {include file='project_sidebar.tpl'}

            <div class="col-md-9">
                <!--overview tab-->
                <div class="project-content">

                    <div class="row">
                        <div class="tasks_title col-md-8 col-md-offset-1">
                            <i id="graph_chart" class="fa fa-tasks fa-2x" aria-hidden="true"></i>
                            <h3>Task Name</h3>
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
                    <div class="col-md-4 col-md-offset-1">
                        <div class="table-container">
                            <table class="table table-filter col-md-offset-1">
                                <tr>
                                    <th>Assignees</th>
                                </tr>
                                <tr>
                                    <td>Francisca Paupério</td>
                                </tr>
                                <tr>
                                    <td>André Reis</td>
                                </tr>
                                <tr>
                                    <td>Sofia Magalhães</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-5 col-md-offset-1">
                        <button type="button" id="new_proj_btn" class="btn btn-primary col-md-5">Assign to me</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-offset-1">
                        <button id="icon_btn" class="btn btn-arrow btn-sm" type="submit"><i class="fa fa-arrow-left"
                            aria-hidden="true"
                            onclick="window.location = 'index.php?page=tasks.php&id={$ID}'"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
