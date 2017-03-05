<?php include_once "header.html"; ?>

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
		<h1>search results for ...</h1>
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-success btn-filter" data-target="user">Users</button>
							<button type="button" class="btn btn-warning btn-filter" data-target="project">Projects</button>
							<button type="button" class="btn btn-default btn-filter" data-target="all" autofocus="true">All</button>
						</div>
					</div>
					<div class="table-container">
						<table class="table table-filter">
							<tbody>
								<tr data-status="user">
									<td>
										<div class="media">
											<a href="#" class="pull-left">
												<img src="https://scontent-frt3-1.xx.fbcdn.net/v/t1.0-9/13537811_1183966321634129_3091506145273549127_n.jpg?oh=bf9c20af1bb3975821e23474811bf0e9&oe=59719F73" class="media-photo">
											</a>
											<div class="media-body">
												<h4 class="title">
													Filipa Barroso
													<span class="user pull-right">(User)</span>
												</h4>
												<div class="info">
													<div class="location">
														<i class="fa fa-map-marker" aria-hidden="true"></i> 
														<p>Lousada, Portugal</p>
													</div>
													<div class="email">
														<i class="fa fa-envelope" aria-hidden="true"></i>
														<p>filipabp123@hotmail.com</p>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr data-status="user">
									<td>
										<div class="media">
											<a href="#" class="pull-left">
												<img src="https://scontent-frt3-1.xx.fbcdn.net/v/t1.0-9/13133284_1234825669880650_5349231733758883019_n.jpg?oh=021ebeac93bef82d67d6737483ace5ab&oe=59386706" class="media-photo">
											</a>
											<div class="media-body">
												<h4 class="title">
													André Reis
													<span class="user pull-right">(User)</span>
												</h4>
												<div class="info">
													<div class="location">
														<i class="fa fa-map-marker" aria-hidden="true"></i> 
														<p>Porto, Portugal</p>
													</div>
													<div class="email">
														<i class="fa fa-envelope" aria-hidden="true"></i>
														<p>up201403057@fe.up.pt</p>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr data-status="project">
									<td>
										<div class="media">
											<div class="media-body">
												<h4 class="title">
													ScrumHub
													<span class="project pull-right">(Project)</span>
												</h4>
												<span class="media-meta pull-right">Updated on 20 Mar 2016</span>
												<p class="summary">A project for the LBAW course</p>
												<div class="info">
													<div class="state">
														<i class="fa fa-check-square-o" aria-hidden="true"></i>
														<p>Under Development</p>
													</div>
													<div class="collaborators">
														<i class="fa fa-users" aria-hidden="true"></i>
														<p>4 Collaborators</p>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr data-status="project">
									<td>
										<div class="media">
											<div class="media-body">
												<h4 class="title">
													ScrumHub
													<span class="project pull-right">(Project)</span>
												</h4>
												<span class="media-meta pull-right">Updated on 20 Mar 2016</span>
												<p class="summary">A project for the LBAW course</p>
												<div class="info">
													<div class="state">
														<i class="fa fa-check-square-o" aria-hidden="true"></i>
														<p>Under Development</p>
													</div>
													<div class="collaborators">
														<i class="fa fa-users" aria-hidden="true"></i>
														<p>4 Collaborators</p>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr data-status="user">
									<td>
										<div class="media">
											<a href="#" class="pull-left">
												<img src="https://scontent-frt3-1.xx.fbcdn.net/v/t1.0-9/14963290_10154737467449241_2539270162133614668_n.jpg?oh=510db261345afa0728ce012d1d861670&oe=592799DE" class="media-photo">
											</a>
											<div class="media-body">
												<h4 class="title">
													Francisca Paupério
													<span class="user pull-right">(User)</span>
												</h4>
												<div class="info">
													<div class="location">
														<i class="fa fa-map-marker" aria-hidden="true"></i> 
														<p>Porto, Portugal</p>
													</div>
													<div class="email">
														<i class="fa fa-envelope" aria-hidden="true"></i>
														<p>francisca@gmail.com</p>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr data-status="project">
									<td>
										<div class="media">
											<div class="media-body">
												<h4 class="title">
													ScrumHub
													<span class="project pull-right">(Project)</span>
												</h4>
												<span class="media-meta pull-right">Updated on 20 Mar 2016</span>
												<p class="summary">A project for the LBAW course</p>
												<div class="info">
													<div class="state">
														<i class="fa fa-check-square-o" aria-hidden="true"></i>
														<p>Under Development</p>
													</div>
													<div class="collaborators">
														<i class="fa fa-users" aria-hidden="true"></i>
														<p>4 Collaborators</p>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr data-status="user">
									<td>
										<div class="media">
											<a href="#" class="pull-left">
												<img src="https://scontent-frt3-1.xx.fbcdn.net/v/t1.0-9/10898254_10203300819863086_1545665381755869624_n.jpg?oh=8cd71e057ad50a6563f61db29c5ff2d1&oe=5930136D" class="media-photo">
											</a>
											<div class="media-body">
												<h4 class="title">
													Zé Miguel Costa
													<span class="user pull-right">(User)</span>
												</h4>
												<div class="info">
													<div class="location">
														<i class="fa fa-map-marker" aria-hidden="true"></i> 
														<p>Braga, Portugal</p>
													</div>
													<div class="email">
														<i class="fa fa-envelope" aria-hidden="true"></i>
														<p>zemiguel@gmail.com</p>
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
	</section>

</div>

<?php include_once "footer.html"; ?>
