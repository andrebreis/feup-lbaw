<script type="text/javascript">
    $('.datepicker').datepicker();
</script>

<div class="modal fade" id="createMilestoneModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="createMilestoneModalContent">
            <div class="modal-header">
                <h3 class="modal-title" id="createMilestoneModalTitle">New Milestone</h3>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="milestoneTitle">Milestone Title</label>
                        <input type="title" class="form-control" id="milestoneTitleInput"
                               placeholder="Choose a title for your milestone">
                    </div>
                    <div class="form-group">
                        <label for="taskDeadline">Task Deadline</label>
                        <div class="input-group date" data-provide="datepicker">
                            <input type="text" class="form-control">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <div class="modal-footer col-md-4 col-md-offset-4">
                    <button type="button" id="proj_btn" class="btn btn-default create_in_modal">Create Milestone
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

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
                            <h3>Milestones</h3>
                        </div>
                        <div class="col-md-3">
                            <button id="proj_btn" type="button" class="btn btn-default" data-toggle="modal"
                                    data-target="#createMilestoneModal">Create Milestone
                            </button>
                        </div>
                    </div>

                    <div class="table-container">
                        <table class="table table-filter">
                            <tbody>
                            {foreach from=$milestones  item=milestone}
                                <tr>
                                    <td onclick="window.location = 'index.php?page=milestone_details.php&id={$milestone.id}';">
                                        <div class="media">
                                            <div class="media-body">
                                                {if isset($milestone.end_date)}
                                                <span class="media-meta pull-right"><small>Deadline: </small><b>{$milestone.end_date}</b> </span>
                                                {/if}
                                                <h4 class="title">
                                                    {$milestone.name}
                                                </h4>
                                                <div class="progress">
                                                    <div style="padding-left: 0.5em;">
                                                        <span class="progress-value">{((($now-strtotime($milestone.begin_date))*100) / (strtotime($milestone.end_date)-strtotime($milestone.begin_date)))}%</span>
                                                    </div>
                                                    <div class="progress-bar progress-bar-success" role="progressbar"
                                                         aria-valuemin="0" aria-valuemax="100" style="width:{(($now-strtotime($milestone.begin_date))*100) / (strtotime($milestone.end_date)-strtotime($milestone.begin_date))}%">
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
            </div>
        </div>
    </div>
