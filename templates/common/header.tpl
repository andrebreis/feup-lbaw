<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>ScrumHub</title>

  <!-- Bootstrap -->
  <link href="../css/font-awesome.min.css" rel="stylesheet">
  <link href="../css/global.min.css" rel="stylesheet">
  <link href="../css/project_dashboard.min.css" rel="stylesheet">
  <link href="../css/project_forum.min.css" rel="stylesheet">
  <link href="../css/search_results.min.css" rel="stylesheet">
  <link href="../css/profile.min.css" rel="stylesheet">
  <link href="../css/header.min.css" rel="stylesheet">
  <link href="../css/milestone_details.min.css" rel="stylesheet">

  <link href="../lib/bootstrap-sass-3.3.7/assets/stylesheets/_bootstrap.css" rel="stylesheet">
  <link href="../lib/bootstrap-datepicker-1/css/bootstrap-datepicker.css" rel="stylesheet">

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="../lib/jquery/jquery-3.2.1.min.js"></script>

  <script src="../lib/bootstrap-sass-3.3.7/assets/javascripts/bootstrap.min.js"></script>

  <script src="../lib//bootstrap-datepicker-1/js/bootstrap-datepicker.js"></script>


  <link href="../css/login_modal.min.css" rel="stylesheet">
  <script src="../javascript/login_modal.js"></script>

  <!-- bootstrap tags plugin -->
  <script src="../lib/bootstrap-tagsinput/src/bootstrap-tagsinput.js"></script>
  <link rel="stylesheet" href="../lib/bootstrap-tagsinput/src/bootstrap-tagsinput.css">

  <!-- typeahead lib -->
  <script src="../lib/typeahead/bloodhound.js"></script>
  <script src="../lib/typeahead/bloodhound.min.js"></script>
  <script src="../lib/typeahead/typeahead.bundle.js"></script>
  <script src="../lib/typeahead/typeahead.bundle.min.js"></script>
  <script src="../lib/typeahead/typeahead.jquery.js"></script>
  <script src="../lib/typeahead/typeahead.jquery.min.js"></script>
  <link href="../lib/typeahead/typeahead.css" rel="stylesheet">
  


  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    input {
      border: 0.1em solid #343434;
      border-radius: 0.3em;
    }
    </style>
  </head>
  <body>


    {if !isset($USERNAME)}
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style="display: none;">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" align="center">
          <img class="img-circle" id="img_logo" src="../images/logo.png">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
          </button>
        </div>

        <div id="div-forms">


          <form id="login-form" action="../actions/login.php" method="post">
            <div class="modal-body">
              <input id="login_username" name="username" class="form-control" type="text"
              placeholder="Username" required>
              <input id="login_password" name="password" class="form-control" type="password" placeholder="Password" required>
              <div class="checkbox">
                <label>
                  <input type="checkbox"> Remember me
                </label>
              </div>
            </div>
            <div class="modal-footer">
              <div>
                <button id="login-btn" type="submit" class="btn btn-lg btn-block">Login</button>
              </div>
              <button class="loginBtn loginBtn--google">
                Login with Google
              </button>
              <div>
                <button id="login_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                <button id="login_register_btn" type="button" class="btn btn-link">Register</button>
              </div>
            </div>
          </form>

          <form id="lost-form" style="display:none;">
            <div class="modal-body">
              <input id="lost_email" class="form-control" type="text"
              placeholder="E-Mail" required>
            </div>
            <div class="modal-footer">
              <div>
                <button type="submit" class="btn btn-lg btn-block">Send</button>
              </div>
              <div>
                <button id="lost_login_btn" type="button" class="btn btn-link">Log In</button>
                <button id="lost_register_btn" type="button" class="btn btn-link">Register</button>
              </div>
            </div>
          </form>

          <form id="register-form" style="display:none;">
            <div class="modal-body">
              <input id="register_name1" name="first-name" class="form-control" type="text"
              placeholder="First Name" required>
              <input id="register_name2" name="last-name" class="form-control" type="text"
              placeholder="Last Name" required>
              <input id="register_username" name="username" class="form-control" type="text"
              placeholder="Username" required>
              <input id="register_email" name="email" class="form-control" type="text"
              placeholder="E-Mail" required>
              <input id="register_password" name="password" class="form-control" type="password"
              placeholder="Password"
              required>
              <input id="register_password_repeat" name="password-repeat" class="form-control" type="password"
              placeholder="Repeat Password"
              required>

              <button type="submit" class="btn btn-lg btn-block" style="margin-top:0.5em;">Register</button>
              <button id="register_login_btn" type="button" class="btn btn-link">Log In</button>
              <button id="register_lost_btn" type="button" class="btn btn-link">Lost Password?
              </button>
            </div>
            <div class="modal-footer" style="visibility: hidden;">
             <button type="submit" class="btn btn-lg btn-block">Register</button>
             <button id="register_login_btn" type="button" class="btn btn-link">Log In</button>
           </div>
         </form>


       </div>


     </div>
   </div>
 </div>
 {/if}

 <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
      data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
    </button>
    {if isset($USERNAME)}
    <a class="navbar-brand page-scroll" href="index.php?page=profile.php&id={$ID}">ScrumHub</a>
    {else}
    <a class="navbar-brand page-scroll" href="index.php">ScrumHub</a>
    {/if}
  </div>

  <div class="row">

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <form action="index.php" method="get">
        <div class="col-md-3 col-xs-4 col-xs-offset-2">
          <div class="input-group search-input-group">
            <input type="hidden" name="page" value="search.php">
            <input type="text" name="query" class="form-control" placeholder="Search...">
            <span class="input-group-addon">
              <button type="submit">
                <span><i class="fa fa-search" aria-hidden="true"></i></span>
              </button>
            </span>
          </div>
        </div>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li>
          {if isset($USERNAME)}
          <form id="logout_form" action="../actions/logout.php">
            <button id="logout" class="btn btn-link btn-sm" type="submit"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</button>
          </form>
          {else}
          <a id="signinup" href="#signinup" data-toggle="modal" data-target="#login-modal">Sign In/Up</a>
          {/if}
        </li>
      </ul>
    </div>
  </div>


</div>
</nav>

<div id="parent">
  <div id="main-content">
