<div class="container">
    <div class="row project">
        <div class="col-md-3 hidden-xs hidden-sm">

			{include file='project_sidebar.tpl'}

			<div class="col-md-9">
				<!--overview tab-->
				<div class="project-content">
					<div class="row">
						<div class="settings_title col-md-8 col-md-offset-1">
							<i id="graph_chart" class="fa fa-cog fa-2x" aria-hidden="true"></i>
							<h3>Settings</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label for="newProjectName">Change Project Name</label>
								<input type="newProjectName" name="newProjectName" class="form-control" id="newProjectNameInput" placeholder="Type a new name for your project">
							</div>
							<form class="form-inline projectVisibility">
								<label for="inlineFormCustomSelect">Project Visibility</label>
								<select class="custom-select" id="inlineFormCustomSelect">
									<option value="true" selected>Public</option>
									<option value="false">Private</option>
								</select>
							</form>
							<div class="form-group">
								<label for="newProjectName">Change Project Description</label>
								<textarea type="description" class="form-control" placeholder="Write a new description"></textarea>
							</div>
						</div>
						<button type="button" id="new_proj_btn" class="btn btn-primary col-md-2 col-md-offset-5">Save Changes</button>
						<button id="new_proj_btn" type="button" class="btn btn-primary col-md-2 col-md-offset-5" data-toggle="modal" data-target="#deleteProjectModal">Delete Project</button>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="deleteProjectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" id="deleteProjectModalContent">
				<div class="modal-header">
					<h4 class="modal-title" id="deleteProjectModalTitle">Are you sure you want to delete this project?</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<button id="new_proj_btn" type="button" class="btn btn-success col-md-2 col-md-offset-4">Yes</button>
						<button id="new_proj_btn" type="button" class="btn btn-danger col-md-2">No</button>
					</div>
				</div>
			</div>
		</div>
	</div>