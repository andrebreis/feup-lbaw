<div class="container">
  <div class="row project">
    <div class="col-md-3 hidden-xs hidden-sm">
      
      {include file='project_sidebar.tpl'}

      <div class="col-md-9">
        <!--overview tab-->
        <div class="project-content">
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

          </div>

        </div>
      </div>
    </div>
  </div>
