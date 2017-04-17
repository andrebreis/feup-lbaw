<?php
include_once "header.php";
?>

<div class="container">
	<div class="row project">
		<div class="col-md-3 hidden-xs hidden-sm">
			<div class="project-sidebar">
				<!-- SIDEBAR PROJECT TITLE -->
				<div class="project-title">
					<div class="project-title-name">
						ScrumHub
					</div>
					<div class="project-title-state">
						Under Development
					</div>
				</div>
				<div class="info">
					<div class="creator">
						<i class="fa fa-address-card" aria-hidden="true"></i>
						<p>creator_username</p>
					</div>
					<div class="percentage">
						<i class="fa fa-hourglass-half" aria-hidden="true"></i>
						<p>40% completed</p>
					</div>
					<div class="sidebar_collaborators">
						<i class="fa fa-users" aria-hidden="true"></i>
						<p>4 Collaborators</p>
					</div>
				</div>
				<!-- END SIDEBAR PROJECT TITLE -->
				<!-- SIDEBAR MENU -->
				<ul class="menu-side nav nav-pills nav-stacked">
					<li><a href="project_dashboard.php"><i class="fa fa-eye" aria-hidden="true"></i><b> Overview</b></a></li>
					<li><a href="tasks.php"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
					<li class="active"><a href="milestones.php"><i class="fa fa-calendar" aria-hidden="true"></i><b> Milestones</b></a></li>
					<li><a href="collaborators.php"><i class="fa fa-users" aria-hidden="true"></i><b> Collaborators</b></a></li>
					<li><a href="project_forum.php"><i class="fa fa-comments" aria-hidden="true"></i><b> Forum</b></a></li>
					<li><a href="settings.php"><i class="fa fa-cog" aria-hidden="true"></i><b> Settings</b></a></li>
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
								<li><a href="project_dashboard.php"><i class="fa fa-eye" aria-hidden="true"></i><b> Overview</b></a></li>
								<li><a href="tasks.php"><i class="fa fa-tasks" aria-hidden="true"></i><b> Tasks</b></a></li>
								<li class="active"><a href="milestones.php"><i class="fa fa-calendar" aria-hidden="true"></i><b> Milestones</b></a></li>
								<li><a href="collaborators.php"><i class="fa fa-users" aria-hidden="true"></i><b> Collaborators</b></a></li>
								<li><a href="project_forum.php"><i class="fa fa-comments" aria-hidden="true"></i><b> Forum</b></a></li>
								<li><a href="settings.php"><i class="fa fa-cog" aria-hidden="true"></i><b> Settings</b></a></li>
							</ul>
						</li>
					</ul>
				</div>

				<div class="project-sidebar">
					<!-- SIDEBAR PROJECT TITLE -->
					<div class="project-title">
						<div class="project-title-name">
							ScrumHub
						</div>
						<div class="project-title-state">
							Under Development
						</div>
					</div>
					<div class="info">
						<div class="creator">
							<i class="fa fa-address-card" aria-hidden="true"></i>
							<p>creator_username</p>
						</div>
						<div class="percentage">
							<i class="fa fa-hourglass-half" aria-hidden="true"></i>
							<p>50% completed</p>
						</div>
						<div class="sidebar_collaborators">
							<i class="fa fa-users" aria-hidden="true"></i>
							<p>4 Collaborators</p>
						</div>
					</div>
					<!-- END SIDEBAR PROJECT TITLE -->
				</div>
			</div>


			<!--end of mobile only-->

			<div class="col-md-9">
				<!--overview tab-->
				<div class="project-content">

					<div class="row">
						<div class="milestones_title col-md-10 col-md-offset-1">
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

				<div class="table-container">
					<table class="table table-filter">
						<tbody>
							<tr>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<?php
include_once "footer.html";
?>
