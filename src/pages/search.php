	<!doctype html>

	<html lang="en">
	<head>
		<meta charset="utf-8">

		<title>Search Results</title>
		<meta name="description" content="The HTML5 Herald">
		<meta name="author" content="SitePoint">

		<!-- Bootstrap -->
		<link href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

		<link href="../css/font-awesome.min.css" rel="stylesheet">

		<link href="../css/searchResults.css" rel="stylesheet">
		<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>

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


		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

	</head>

	<body>
		<?php include_once "header.html"; ?>

		<?php include_once "footer.html"; ?>

		<div class="container">
			<section class="content">
				<h1>search results for ...</h1>
					<div class="col-md-10 col-md-offset-1">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="pull-right">
									<div class="btn-group">
										<button type="button" class="btn btn-success btn-filter" data-target="user">Users</button>
										<button type="button" class="btn btn-warning btn-filter" data-target="project">Projects</button>
										<button type="button" class="btn btn-default btn-filter" data-target="all">All</button>
									</div>
								</div>
								<div class="table-container">
									<table class="table table-filter">
										<tbody>
											<tr data-status="user">
												<td>
													<div class="media">
														<a href="#" class="pull-left">
															<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
														</a>
														<div class="media-body">
															<h4 class="title">
																Filipa Barroso
																<span class="user pull-right">(User)</span>
															</h4>
															<div class="location">
															    <i class="fa fa-map-marker" aria-hidden="true"></i> 
															    <p class="location">Porto, Portugal</p>
														    </div>
														    <div class="email">
															    <i class="fa fa-envelope" aria-hidden="true"></i>
															    <p class="email">filipabp123@hotmail.com</p>
														    </div>
														</div>
													</div>
												</td>
											</tr>
											<tr data-status="user">
												<td>
													<div class="media">
														<a href="#" class="pull-left">
															<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
														</a>
														<div class="media-body">
															<span class="media-meta">Febrero 13, 2016</span>
															<h4 class="title">
																Lorem Impsum
																<span class="user">(User)</span>
															</h4>
															<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
														</div>
													</div>
												</td>
											</tr>
											<tr data-status="project">
												<td>
													<div class="media">
														<a href="#" class="pull-left">
															<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
														</a>
														<div class="media-body">
															<span class="media-meta">Febrero 13, 2016</span>
															<h4 class="title">
																Lorem Impsum
																<span class="project">(Project)</span>
															</h4>
															<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
														</div>
													</div>
												</td>
											</tr>
											<tr data-status="project">
												<td>
													<div class="media">
														<a href="#" class="pull-left">
															<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
														</a>
														<div class="media-body">
															<span class="media-meta">Febrero 13, 2016</span>
															<h4 class="title">
																Lorem Impsum
																<span class="project">(Project)</span>
															</h4>
															<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
														</div>
													</div>
												</td>
											</tr>
											<tr data-status="user">
												<td>
													<div class="media">
														<a href="#" class="pull-left">
															<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
														</a>
														<div class="media-body">
															<span class="media-meta">Febrero 13, 2016</span>
															<h4 class="title">
																Lorem Impsum
																<span class="user">(User)</span>
															</h4>
															<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
														</div>
													</div>
												</td>
											</tr>
											<tr data-status="project">
												<td>
													<div class="media">
														<a href="#" class="pull-left">
															<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
														</a>
														<div class="media-body">
															<span class="media-meta">Febrero 13, 2016</span>
															<h4 class="title">
																Lorem Impsum
																<span class="project">(Project)</span>
															</h4>
															<p class="summary">Ut enim ad minim veniam, quis nostrud exercitation...</p>
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
				</section>

			</div>
		</body>
		</html>
