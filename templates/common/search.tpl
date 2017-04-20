<?php 

include_once("../database/users.php");
include_once("../database/projects.php");

$query = htmlspecialchars($_GET["query"]);

$users = searchUsers($query);
$projects = searchProjects($query);
?>

<script>
$(document).ready(function () {
	$('.btn-filter').on('click', function () {
		var $target = $(this).data('target');
		if ($target != 'all') {
			$('.table tr').css('display', 'none');
			$('.table tr[data-status="' + $target + '"]').fadeIn('slow');
		} else {
			$('.table tr').css('display', 'none').fadeIn('slow');
		}
	});

});
</script>


<div class="container">
	<section class="content">

		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default panel_results">
			<h1 class="title"><b>Search Results for ...</b></h1>
				<div class="panel-body">
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default btn-filter" data-target="user">Users</button>
							<button type="button" class="btn btn-default btn-filter" data-target="project">Projects</button>
							<button type="button" class="btn btn-default btn-filter" data-target="all" autofocus="true">All</button>
						</div>
					</div>
					<div class="table-container">
						<table class="table table-filter">
							<tbody>
								<?php 
									foreach ($users as $user) {
										$picture = $user['picture'];
										if(!isset($picture))
											$picture = '../images/assets/default.png';
										echo '<tr data-status="user">
											<td>
												<div class="media"> 
												<a href="#" class="pull-left">
														<img src=' . $picture . ' class="media-photo" >
													</a>
													<div class="media-body">
														<h4 class="title">
															' . $user['name'] . '
														</h4>
														<p class="username">' . $user['username'] . '</p>
														<div class="info">
															<div class="email">
																<i class="fa fa-envelope" aria-hidden="true"></i>
																<p>' . $user['email'] . '</p>
															</div>
														</div>
													</div>
												</div>
											</td>
										</tr> ';
									}
									foreach ($projects as $project) {
										$state_name = $project['state_name'];
										if(!isset($state_name))
											$state_name = "Undefined";
										echo '<tr data-status="project">
											<td>
												<div class="media">
													<div class="media-body">
														<h4 class="title">
															'. $project['name'] .'
														</h4>
														<p class="summary">'. $project['description'] .'</p>
														<div class="info">
															<div class="state">
																<i class="fa fa-check-square-o" aria-hidden="true"></i>
																<p>'. $state_name .'</p>
															</div>
															<div class="collaborators">
																<i class="fa fa-users" aria-hidden="true"></i>
																<p>'. $project['num_collaborators'] .' Collaborators</p>
															</div>
														</div>
													</div>
												</div>
											</td>
										</tr>';
									}
								 ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

</div>

<?php include_once "footer.html"; ?>
