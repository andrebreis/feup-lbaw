<script type="text/javascript">
$('.datepicker').datepicker();
</script>

<div class="modal fade" id="createTaskModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                    <textarea type="description" class="form-control" id="taskContentInput" placeholder="Describe your task here"></textarea>
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
                <div class="form-group">
                    <label for="effort-input">Task Effort</label>
                    <input class="form-control" type="number" value="5" id="effort-input" min="0" max="10">
                    <small id="effortHelp" class="form-text text-muted">Choose a number between 0 and 10</small>
                </div>
                <div class="form-group">
                    <label for="taskPriority">Task Priority</label>
                    <!-- TODO: CHANGE THIS TO PHP -->
                    <select id="prioritySelect" class="form-control" onchange="changetextbox()">
                        <option value="verylow">Very Low</option>
                        <option value="low">Low</option>
                        <option value="medium" selected>Medium</option>
                        <option value="high">High</option>
                        <option value="veryhigh">Very High</option>
                    </select>
                </div>
                <!-- todo: allow only usernames (like in add collabs) -->
                <div class="form-group">
                    <label for="assignees">Task Assignees</label>
                    <input type="text" class="form-control" id="assigneesInput" placeholder="Enter assignees' usernames"
                    data-role="tagsinput">
                    <small id="tagsInputHelp" class="form-text text-muted">Add multiple assignees by pressing enter after
                        each username
                    </small>
                </div>
                <div class="form-group">
                    <label for="projectTags">Associated Milestone</label>
                    <!-- TODO: CHANGE THIS TO usernames -->
                    <div id="task-milestone">
                      <input class="typeahead form-control" type="text" placeholder="Enter the name of the milestone you want to associate this task to (optional)">
                  </small>
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
                                <td onclick="window.location = 'index.php?page=task_details.php&id={$task.id}';">
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
                                                    <span class="progress-value">{$task.completion}
                                                        % - {$task.name}</span>
                                                    </div>
                                                    <div class="progress-bar progress-bar-success" role="progressbar"
                                                    aria-valuenow="{$task.completion}"
                                                    aria-valuemin="0" aria-valuemax="100"
                                                    style="width:{$task.completion}%">
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
                    <input type="description" class="form-control" id="taskContentInput"
                    placeholder="Describe your task here">
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