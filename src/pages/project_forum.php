<!doctype html>

<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Search Results</title>
    <meta name="description" content="The HTML5 Herald">
    <meta name="author" content="SitePoint">

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">

    <link href="../css/projectForum.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>

</head>
<body>
<?php
include_once "header.html";
?>

<?php
include_once "project_navbar.html";
?>

<div class="wrapper col-md-8">

    <div id="forum-items" class="col-md-12">
        <div class="container">
            <div class="row">

                <section class="content">

                    <div class="panel panel-default">

                        <div class="panel-body">
                            <!-- <div class="col-md-3"> -->
                            <div class="header pull-left">
                                <h1>Project Forum</h1>
                            </div>

                            <div class="col-md-3 col-md-push-8">
                                <button id="create-post" type="button" class="btn btn-success">New Post</button>
                            </div>
                            <div id="custom-search-input" class="input-group col-md-3">
                                <input type="text" class="form-control input-md" placeholder="Search Post..."/>
                                <span class="input-group-btn">
                        <button class="btn btn-info btn-md" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
											</span>
                            </div>

                            <div class="table-container">
                                <table class="table table-filter">
                                    <tbody>
                                    <tr data-status="user">
                                        <td>
                                            <div class="media">
                                                <a href="#" class="pull-left">
                                                    <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
                                                         class="media-photo">
                                                </a>
                                                <div class="media-body">
                                                    <span class="media-meta pull-right">Febrero 13, 2016</span>
                                                    <h4 class="title">
                                                        Lorem Impsum
                                                    </h4>
                                                    <span class="badge badge-default badge-pill pull-right">2</span>
                                                    <p class="summary">Ut enim ad minim veniam, quis nostrud
                                                        exercitation...</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="user">
                                        <td>
                                            <div class="media">
                                                <a href="#" class="pull-left">
                                                    <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
                                                         class="media-photo">
                                                </a>
                                                <div class="media-body">
                                                    <span class="media-meta pull-right">Febrero 13, 2016</span>
                                                    <h4 class="title">
                                                        Lorem Impsum
                                                    </h4>
                                                    <p class="summary">Ut enim ad minim veniam, quis nostrud
                                                        exercitation...</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td>
                                            <div class="media">
                                                <a href="#" class="pull-left">
                                                    <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
                                                         class="media-photo">
                                                </a>
                                                <div class="media-body">
                                                    <span class="media-meta pull-right">Febrero 13, 2016</span>
                                                    <h4 class="title">
                                                        Lorem Impsum
                                                    </h4>
                                                    <span class="badge badge-default badge-pill pull-right">1</span>
                                                    <p class="summary">Ut enim ad minim veniam, quis nostrud
                                                        exercitation...</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td>
                                            <div class="media">
                                                <a href="#" class="pull-left">
                                                    <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
                                                         class="media-photo">
                                                </a>
                                                <div class="media-body">
                                                    <span class="media-meta pull-right">Febrero 13, 2016</span>
                                                    <h4 class="title">
                                                        Lorem Impsum
                                                    </h4>
                                                    <span class="badge badge-default badge-pill pull-right">6</span>
                                                    <p class="summary">Ut enim ad minim veniam, quis nostrud
                                                        exercitation...</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="user">
                                        <td>
                                            <div class="media">
                                                <a href="#" class="pull-left">
                                                    <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
                                                         class="media-photo">
                                                </a>
                                                <div class="media-body">
                                                    <span class="media-meta pull-right">Febrero 13, 2016</span>
                                                    <h4 class="title">
                                                        Lorem Impsum
                                                    </h4>
                                                    <span class="badge badge-default badge-pill pull-right">14</span>
                                                    <p class="summary">Ut enim ad minim veniam, quis nostrud
                                                        exercitation...</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr data-status="project">
                                        <td>
                                            <div class="media">
                                                <a href="#" class="pull-left">
                                                    <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
                                                         class="media-photo">
                                                </a>
                                                <div class="media-body">
                                                    <span class="media-meta pull-right">Febrero 13, 2016</span>
                                                    <h4 class="title">
                                                        Lorem Impsum

                                                    </h4>
                                                    <span class="badge badge-default badge-pill pull-right">14</span>
                                                    <p class="summary">Ut enim ad minim veniam, quis nostrud
                                                        exercitation...</p>

                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                </section>

            </div>
        </div>
    </div>
</div>

<?php
include_once "footer.html";
?>
</body>
</html>
