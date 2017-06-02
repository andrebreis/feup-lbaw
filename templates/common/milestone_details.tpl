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
                            <h3>{$milestone.name}</h3>
                            <span class="deadline pull-right"><small>Deadline: </small><b>{$milestone.end_date}</b> </span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="progress">
                                <div style="padding-left: 0.5em;">
                                    <span class="progress-value"></span>
                                </div>
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80"
                                aria-valuemin="0" aria-valuemax="100" style="width:{$milestoneCompletion}%">
                            </div>
                        </div>
                    </div>
                </div>
                {foreach from=$milestoneTasks item=task}
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="table-container">
                            <table class="table table-filter">
                                <tbody>
                                    <tr>
                                        <td onclick="window.location = 'index.php?page=task_details.php&id={$task.task_id}';">
                                            <div class="media">
                                                <div class="media-body">
                                                    <span class="media-meta pull-right"><small>Deadline: </small><b>{$task.end_date}</b> </span>
                                                    <h4 class="title">
                                                        {$task.title}
                                                    </h4>
                                                    <div class="priority">
                                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                                        <h5><b>Priority: </b></h5>
                                                        <h5>Medium</h5>
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
                {/foreach}

                <div class="row">
                    <div class="col-md-offset-1">
                        <button id="icon_btn" onclick="window.history.go(-1);"
                        class="btn btn-arrow btn-sm fa fa-arrow-left" type="submit"></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
