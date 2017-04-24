  <!DOCTYPE html>
  <html lang="en">

  <head>

      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="">

      <title>ScrumHub</title>

      <!-- Bootstrap Core CSS -->
      <link href="../lib/bootstrap-sass-3.3.7/assets/stylesheets/_bootstrap.css" rel="stylesheet">

      <!-- Custom Fonts -->
      <link href="../css/font-awesome.min.css" rel="stylesheet">
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
            rel='stylesheet' type='text/css'>
      <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
            rel='stylesheet' type='text/css'>

      <!-- Plugin CSS -->
      <link href="../css/magnific-popup.css" rel="stylesheet">

      <!-- Theme CSS -->
      <link href="../css/landing.min.css" rel="stylesheet">
      <link href="../css/login_modal.min.css" rel="stylesheet">


      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

      <script src="../javascript/arrow.js"></script>
      <script src="../javascript/login_modal.js"></script>


  </head>

  <body id="page-top">

  {if !isset($USERNAME)}
  <!-- BEGIN # MODAL LOGIN -->
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

              <!-- Begin # DIV Form -->
              <div id="div-forms">

                  <!-- Begin # Login Form -->
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
                              <button id="login-btn" type="submit" value="submit" class="btn btn-lg btn-block">Login</button>
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
                  <!-- End # Login Form -->

                  <!-- Begin | Lost Password Form -->
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
                  <!-- End | Lost Password Form -->

                  <!-- Begin | Register Form -->
                  <form id="register-form" action="../actions/sign_up.php" method="post" style="display:none;">
                      <div class="modal-body">
                          <input id="register_name1" name="first-name" class="form-control" type="text"
                                 placeholder="First Name" required>
                          <input id="register_name2" name="last-name" class="form-control" type="text"
                                 placeholder="Last Name" required>
                          <input id="register_username" name="username" class="form-control" type="text"
                                 placeholder="Username" required>
                          <input id="register_email" name="email" class="form-control" type="text" placeholder="E-Mail" required>
                          <input id="register_password" name="password" class="form-control" type="password" placeholder="Password"
                                 required>
                          <input id="register_password" name="password-repeat" class="form-control" type="password" placeholder="Repeat Password"
                                 required>
                      </div>
                      <div class="modal-footer">
                          <div>
                              <button type="submit" class="btn btn-lg btn-block">Register</button>
                          </div>
                          <div>
                              <button id="register_login_btn" type="button" class="btn btn-link">Log In</button>
                              <button id="register_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                          </div>
                      </div>
                  </form>
                  <!-- End | Register Form -->

              </div>
              <!-- End # DIV Form -->

          </div>
      </div>
  </div>
  <!-- END # MODAL LOGIN -->
  {/if}

  <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                      data-target="#bs-example-navbar-collapse-1">
                  <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
              </button>
              <a class="navbar-brand page-scroll" href="#page-top">ScrumHub</a>
          </div>


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


          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                  <li>
                      <a class="page-scroll" href="#about">About</a>
                  </li>
                  <li>
                      <a class="page-scroll" href="#features">Features</a>
                  </li>
                  <li>
                      <a class="page-scroll" href="#contact">Contact</a>
                  </li>
              </ul>
          </div>
          <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
  </nav>

  <header>
      <div class="header-content">
          <div class="header-content-inner">
              <h1 id="homeHeading">A better way to work together</h1>
              <hr class="light">
              <p>ScrumHub is a development platform inspired by the way you work. Manage your projects, and coordinate
                  your teams to raise your productivity.</p>
                  {if !isset($USERNAME)}
              <a data-toggle="modal" data-target="#login-modal"
                 class="btn btn-primary btn-xl page-scroll">Sign In/Up</a>
                  {else}
                  <a href="index.php?page=profile.php&id={$ID}"
                     class="btn btn-primary btn-xl page-scroll">Back to Profile</a>
                  {/if}
              <div id="arrow" class="demo">
                  <a href="#about"><span></span></a>
              </div>
          </div>
      </div>
  </header>

  <section class="bg-section" id="about">
      <div class="container">
          <div class="col-lg-8 col-lg-offset-2 text-center">
              <h2 class="section-heading">We've got what you need!</h2>
              <hr class="light">
              <p id="text">ScrumHub has you need to get keep your projects organized and on
                  schedule, without wasting your time! Bring your working team to ScrumHub so you can start organizing
                  your work with them.</p>
              <a href="#features" class="btn btn-primary btn-xl page-scroll">Get Started!</a>
              <div id="arrow" class="demo">
                  <a href="#features"><span></span></a>
              </div>
          </div>
      </div>
  </section>

  <section class="bg-section" id="features">
      <div class="container">
          <div class="row">
              <div class="col-lg-12 text-center">
                  <h2 class="section-heading">At Your Service</h2>
                  <hr class="primary">
              </div>
          </div>
      </div>
      <div class="container">
          <div class="row">
              <div class="col-lg-3 col-md-6 text-center">
                  <div class="service-box">
                      <i id="icon" class="fa fa-4x fa-users text-primary sr-icons" aria-hidden="true"></i>
                      <h3>Project Roles</h3>
                      <p id="text" class="text-muted">You can set your team leaders as project coordinators, so they help you
                          coordinate your teams!</p>
                  </div>
              </div>
              <div class="col-lg-3 col-md-6 text-center">
                  <div class="service-box">
                      <i id="icon" class="fa fa-4x fa-calendar text-primary sr-icons" aria-hidden="true"></i>
                      <h3>Project Milestones</h3>
                      <p id="text" class="text-muted">Our platform lets you define milestones so you can split your projects in
                          smaller parts.</p>
                  </div>
              </div>
              <div class="col-lg-3 col-md-6 text-center">
                  <div class="service-box">
                      <i id="icon" class="fa fa-4x fa-tasks text-primary sr-icons"></i>
                      <h3>Project Tasks</h3>
                      <p id="text"class="text-muted">You can assign tasks to your coworkers so they always know what's left for
                          them to do!</p>
                  </div>
              </div>
              <div class="col-lg-3 col-md-6 text-center">
                  <div class="service-box">
                      <i id="icon" class="fa fa-4x fa-comments-o text-primary sr-icons"></i>
                      <h3>Project Forum</h3>
                      <p id="text" class="text-muted">Everyone deserves a word, so everyone can discuss about the project on your
                          project forum.</p>
                  </div>
              </div>
          </div>
      </div>
      <div id="arrow" class="demo">
          <a href="#contact"><span></span></a>
      </div>
  </section>

  <section class="bg-section" id="contact">
      <div class="container">
          <div class="row">
              <div class="col-lg-8 col-lg-offset-2 text-center">
                  <h2 class="section-heading">Let's Get In Touch!</h2>
                  <hr class="primary">
                  <p id="text">Got any idea to help us improve our platform? That's great! That's great! Give us a call or send us
                      an email and we will get back to you as soon as possible!</p>
              </div>
              <div class="col-lg-4 col-lg-offset-2 text-center">
                  <i id="icon" class="fa fa-phone fa-3x sr-contact"></i>
                  <p id="text">123-456-6789</p>
              </div>
              <div class="col-lg-4 text-center">
                  <i id="icon" class="fa fa-envelope-o fa-3x sr-contact"></i>
                  <p id="text"><a id="link" href="mailto:your-email@your-domain.com">feedback@scrumhub.com</a></p>
              </div>
          </div>
      </div>
  </section>

  <!-- jQuery -->
  <!-- <script src="vendor/jquery/jquery.min.js"></script> -->

  <!-- Bootstrap Core JavaScript -->
  <script src="../lib/bootstrap-sass-3.3.7/assets/javascripts/bootstrap.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
  <script src="../javascript/scrollreveal.min.js"></script>
  <script src="../javascript/jquery.magnific-popup.min.js"></script>

  <!-- Theme JavaScript -->
  <script src="../javascript/creative.js"></script>

  </body>

  </html>
