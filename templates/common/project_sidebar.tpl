<script>
$.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    if (results==null){
       return null;
    }
    else{
       return results[1] || 0;
    }
}

$(document).ready(function () {
	let pageName = $.urlParam('page').split('.')[0]; //get page name and remove the .php part
  
  $('#big_menu_' + pageName).parent().attr('class', 'active');
  $('#small_menu_'+ pageName).parent().attr('class', 'active');
});
</script>

<div class="project-sidebar">
  <!-- SIDEBAR PROJECT TITLE -->
  <div class="project-title">
    <div class="project-title-name">
      {$name}
    </div>
    {if isset($state_name)}
    <div class="project-title-state">
      {$state_name}
    </div>
    {/if}
  </div>
  <div class="info">
    {if isset($completion)}
    <div class="percentage">
      <i class="fa fa-hourglass-half" aria-hidden="true"></i>
      <p>{$completion}% Completed</p>
    </div>
    {/if}
    <div class="sidebar_collaborators">
      <i class="fa fa-users" aria-hidden="true"></i>
      <p>{$num_collaborators} Collaborators</p>
    </div>
  </div>
  <!-- END SIDEBAR PROJECT TITLE -->
  <!-- SIDEBAR MENU -->
  <ul class="menu-side nav nav-pills nav-stacked">
    <li><a id="big_menu_project_dashboard" href="index.php?page=project_dashboard.php&id={$smarty.get.id}"><i class="fa fa-eye" aria-hidden="true"></i><b> Overview</b></a></li>
    <li><a id="big_menu_tasks" href="index.php?page=tasks.php&id={$smarty.get.id}"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
    <li><a id="big_menu_milestones" href="index.php?page=milestones.php&id={$smarty.get.id}"><i class="fa fa-calendar" aria-hidden="true"></i><b> Milestones</b></a></li>
    <li><a id="big_menu_collaborators" href="index.php?page=collaborators.php&id={$smarty.get.id}"><i class="fa fa-users" aria-hidden="true"></i><b> Collaborators</b></a></li>
    <li><a id="big_menu_project_forum" href="index.php?page=project_forum.php&id={$smarty.get.id}"><i class="fa fa-comments" aria-hidden="true"></i><b> Forum</b></a></li>
    <li><a id="big_menu_settings" href="index.php?page=settings.php&id={$smarty.get.id}"><i class="fa fa-cog" aria-hidden="true"></i><b> Settings</b></a></li>
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
          <li><a id="small_menu_project_dashboard" href="index.php?page=project_dashboard.php&id={$smarty.get.id}"><i class="fa fa-eye" aria-hidden="true"></i><b> Overview</b></a></li>
          <li><a id="small_menu_tasks" href="index.php?page=tasks.php&id={$smarty.get.id}"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
          <li><a id="small_menu_milestones" href="index.php?page=milestones.php&id={$smarty.get.id}"><i class="fa fa-calendar" aria-hidden="true"></i><b> Milestones</b></a></li>
          <li><a id="small_menu_collaborators" href="index.php?page=collaborators.php&id={$smarty.get.id}"><i class="fa fa-users" aria-hidden="true"></i><b> Collaborators</b></a></li>
          <li><a id="small_menu_project_forum" href="index.php?page=project_forum.php&id={$smarty.get.id}"><i class="fa fa-comments" aria-hidden="true"></i><b> Forum</b></a></li>
          <li><a id="small_menu_settings" href="index.php?page=settings.php&id={$smarty.get.id}"><i class="fa fa-cog" aria-hidden="true"></i><b> Settings</b></a></li>
        </ul>
      </li>
    </ul>
  </div>

  <div class="project-sidebar">
    <!-- SIDEBAR PROJECT TITLE -->
    <div class="project-title">
      <div class="project-title-name">
        {$name}
      </div>
      {if isset($state_name)}
      <div class="project-title-state">
        {$state_name}
      </div>
      {/if}
    </div>
    <div class="info">
      {if isset($completion)}
      <div class="percentage">
        <i class="fa fa-hourglass-half" aria-hidden="true"></i>
        <p>{$completion}% completed</p>
      </div>
      {/if}
      <div class="sidebar_collaborators">
        <i class="fa fa-users" aria-hidden="true"></i>
        <p>{$num_collaborators} Collaborators</p>
      </div>
    </div>
    <!-- END SIDEBAR PROJECT TITLE -->
  </div>
</div>


<!--end of mobile only-->