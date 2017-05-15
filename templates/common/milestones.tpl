<script type="text/javascript">
    $('.datepicker').datepicker();
</script>

<div class="modal fade" id="createMilestoneModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" id="createMilestoneModalContent">
			<div class="modal-header">
				<h3 class="modal-title" id="createMilestoneModalTitle">New Milestone</h3>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="milestoneTitle">Milestone Title</label>
						<input type="title" class="form-control" id="milestoneTitleInput" placeholder="Choose a title for your milestone">
					</div>
					<div class="form-group">
						<label for="milestoneContent">Milestone Description</label>
						<input type="description" class="form-control" id="milestoneContentInput" placeholder="Describe your milestone here">
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
					<button type="button" id="proj_btn" class="btn btn-default create_in_modal">Create Milestone</button>
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
							<button id="proj_btn" type="button" class="btn btn-default" data-toggle="modal" data-target="#createMilestoneModal">Create Milestone</button>
						</div>
					</div>

					<div class="table-container">
						<table class="table table-filter">
							<tbody>
								<tr>
									<td onclick="window.location = 'index.php?page=milestone_details.php';">
										<div class="media">
											<div class="media-body">
												<span class="media-meta pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
												<h4 class="title">
													Lorem Impsum
												</h4>
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
								</td>
							</tr>
							<tr>
								<td onclick="window.location = 'index.php?page=milestone_details.php';">
									<div class="media">
										<div class="media-body">
											<span class="media-meta pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
											<h4 class="title">
												Lorem Impsum
											</h4>
											<div class="progress">
												<div style="padding-left: 0.5em;">
													<span class="progress-value">100% - Complete</span>
												</div>
												<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100"
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
											Lorem Impsum
										</h4>
										<div class="progress">
											<div style="padding-left: 0.5em;">
												<span class="progress-value">40% - Under Development</span>
											</div>
											<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
											aria-valuemin="0" aria-valuemax="100" style="width:40%">
										</div>
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td onclick="window.location = 'index.php?page=milestone_details.php';">
							<div class="media">
								<div class="media-body">
									<span class="media-meta pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
									<h4 class="title">
										Lorem Impsum
									</h4>
									<div class="progress">
										<div style="padding-left: 0.5em;">
											<span class="progress-value">10% - Paused</span>
										</div>
										<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="10"
										aria-valuemin="0" aria-valuemax="100" style="width:10%">
									</div>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td onclick="window.location = 'index.php?page=milestone_details.php';">
						<div class="media">
							<div class="media-body">
								<span class="media-meta pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
								<h4 class="title">
									Lorem Impsum
								</h4>
								<div class="progress">
									<div style="padding-left: 0.5em;">
										<span class="progress-value">0% - Development Pending</span>
									</div>
									<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0"
									aria-valuemin="0" aria-valuemax="100" style="width:0%">
								</div>
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td onclick="window.location = 'index.php?page=milestone_details.php';">
					<div class="media">
						<div class="media-body">
							<span class="media-meta pull-right"><small>Deadline: </small><b>Febrero 13, 2016</b> </span>
							<h4 class="title">
								Lorem Impsum

							</h4>
							<div class="progress">
								<div style="padding-left: 0.5em;">
									<span class="progress-value">40% - Under Development</span>
								</div>
								<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
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
</div>
</div>
