<script type="text/javascript">
    $('.datepicker').datepicker();
</script>

            {include_php file='../../pages/project_sidebar.php'}

            <div class="col-md-9">

                <!--overview tab-->
                <div class="project-content">

                    <div class="row">
                        <div class="tasks_title col-md-8 col-md-offset-1">
                            <i id="graph_chart" class="fa fa-tasks fa-2x" aria-hidden="true"></i>
                            <h3>Tasks</h3>
                        </div>
                        <div class="col-md-3">
                            <button id="proj_btn" type="button" class="btn btn-default" data-toggle="modal"
                                    data-target="#createTaskModal">Create Task
                            </button>
                        </div>
                    </div>

                    <div class="table-container">
                        <table class="table table-filter">
                            <tbody>
                            {foreach from=$tasks  item=task} 
                              <tr>
                                <td onclick="window.location = 'index.php?page=task_details.php&id={$smarty.get.id}';">
                                    <div class="media">
                                        <div class="media-body">
                                            {if isset($task.end_date)}
                                            <span class="media-meta pull-right"><small>Deadline: </small><b>{$task.end_date}</b> </span>
                                            {/if}
                                            <h4 class="title">
                                                {$task.title}
                                            </h4>
                                            <div class="progress">
                                                <div style="padding-left: 0.5em;">
                                                    <span class="progress-value">{$task.completion}% - {$task.name}</span>
                                                </div>
                                                <div class="progress-bar progress-bar-success" role="progressbar"
                                                     aria-valuenow="{$task.completion}"
                                                     aria-valuemin="0" aria-valuemax="100" style="width:{$task.completion}%">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            {/foreach}
                            <!-- <tr>
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
                            </tr> -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--overview tab-->
    <!--<div class="project-content">
      <div class="col-md-12">
        <div class="tasks_title col-md-4 col-md-offset-1">
          <i id="graph_chart" class="fa fa-tasks fa-2x" aria-hidden="true"></i>
          <h3>Tasks</h3>
        </div>
        <div class="col-md-12">
          <a href="create_task.php"><button id="create-task" type="button" class="btn btn-default col-md-offset-10 col-md-2">Create Task</button></a>
          <input id="search-tasks" class="col-md-6" type="text" name="search" placeholder="Search" title="  is: open
          priority: high
          label: frontend
          milestone: may
          assignee: andre">
        </div>

        <div id="task-list" class="col-md-6">
          <ul class="list-group">
            <li class="list-group-item"><i class="fa fa-check-square-o" aria-hidden="true"></i> Complete Project Description <span class="bg-success">Low</span></li>
            <li class="list-group-item"><i class="fa fa-check-square-o" aria-hidden="true"></i> Complete User Stories <span class="bg-warning">Medium</span></li>
            <li class="list-group-item"><i class="fa fa-square-o" aria-hidden="true"></i> Complete Front End  <span class="bg-danger">HIGH</span></li>
          </ul>
        </div>

      </div> -->
</div>

<div class="modal fade" id="createTaskModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="createTaskModalContent">
            <div class="modal-header">
                <h3 class="modal-title" id="createTaskModalTitle">New Task</h3>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="taskTitle">Task Title</label>
                        <input type="title" class="form-control" id="taskTitleInput"
                               placeholder="Choose a title for your task">
                    </div>
                    <div class="form-group">
                        <label for="taskContent">Task Description</label>
                        <input type="description" class="form-control" id="taskContentInput" placeholder="Describe your task here">
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
                    <button type="button" id="proj_btn" class="btn btn-default create_in_modal">Create Task</button>
                </div>
            </div>
        </div>
    </div>
</div>