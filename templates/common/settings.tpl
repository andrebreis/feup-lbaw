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
						<div class="col-md-3">
							<button id="proj_btn" type="button" class="btn btn-default">Delete Project</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-1">
							<div id="project-visibility">
								<span>Project Visibility: </span><select>
									<option value="0">Public</option>
									<option value="1">Private</option>
								</select>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>