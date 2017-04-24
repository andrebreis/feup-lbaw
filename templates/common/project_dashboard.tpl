<div class="container">
  <div class="row project">
    <div class="col-md-3 hidden-xs hidden-sm">
      
      {include file='project_sidebar.tpl'}

      <div class="col-md-9">
        <!--overview tab-->
        <div class="project-content">

          <div class="row">
            <div class="project_maintitle col-md-12">
              <div class="col-md-9">
              <h2><b>ScrumHub</b></h2>
            </div>
              <div class="col-md-2">
                {if isset($USERNAME)}
                {if !$isCollaborator}
                <form action="../actions/join_project.php" method="post">
                  <input type="hidden" name="projectId" value="{$smarty.get.id}">
                  <button type="submit">Join Project</button>
                </form>
                {else}
                <form action="../actions/leave_project.php" method="post">
                  <input type="hidden" name="projectId" value="{$smarty.get.id}">
                  <button type="submit">Leave Project</button>
                </form>
                {/if}
                {/if}
            </div>
            </div>
          </div>

          <div class="row">
            <div class="project_description col-md-12">
              <p>Maecenas ipsum velit, consectetuer eu, lobortis ut, dictum at, dui. In rutrum. Sed ac dolor sit amet purus malesuada congue. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Suspendisse sagittis ultrices augue. Mauris metus. Nunc dapibus tortor vel mi dapibus sollicitudin. Etiam posuere lacus quis dolor. Praesent id justo in neque elementum ultrices</p>
            </div>
          </div>

          <div class="row">
            <div class="progress">
              <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
              aria-valuemin="0" aria-valuemax="100" style="width:40%">
               <span>40% (Under Development)</span>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="stat_title col-md-4 col-md-offset-1">
            <i id="graph_chart" class="fa fa-bar-chart fa-2x" aria-hidden="true"></i>
            <h3>Statistics</h3>
          </div>
        </div>
        <div class="stats_row row">
          <div class="col-md-4">
            <i class="fa fa-check" aria-hidden="true"></i>
            <h4><b>58</b> Tasks Completed</h4>
          </div>
          <div class="col-md-4">
            <i class="fa fa-calculator" aria-hidden="true"></i>
            <h4><b>18</b> Tasks per Week</h4>
          </div>
          <div class="col-md-4">
            <i class="fa fa-briefcase" aria-hidden="true"></i>
            <h4><b>2</b> Coordinators</h4>
          </div>
        </div>
        <div class="stats_row row">
          <div class="col-md-4">
            <i class="fa fa-check-square" aria-hidden="true"></i>
            <h4><b>2</b> Milestones Finished</h4>
          </div>
          <div class="col-md-4">
            <i class="fa fa-commenting" aria-hidden="true"></i>
            <h4><b>41</b> Forum Messages</h4>
          </div>
          <div class="col-md-4">
            <i class="fa fa-calendar" aria-hidden="true"></i>
            <h4> Created on 17/07/15</h4>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
