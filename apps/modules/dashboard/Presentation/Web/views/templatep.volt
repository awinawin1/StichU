<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>StichU</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Facebook Opengraph integration: https://developers.facebook.com/docs/sharing/opengraph -->
  <meta property="og:title" content="">
  <meta property="og:image" content="">
  <meta property="og:url" content="">
  <meta property="og:site_name" content="">
  <meta property="og:description" content="">

  <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
  <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="">
  <meta name="twitter:title" content="">
  <meta name="twitter:description" content="">
  <meta name="twitter:image" content="">

  <!-- Favicons -->
  <link href="../dist/img/favicon.png" rel="icon">
  <link href="../dist/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,700|Roboto:400,900" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../dist/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../dist/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="../dist/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../dist/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Bell - v2.0.0
  * Template URL: https://bootstrapmade.com/bell-free-bootstrap-4-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Hero Section ======= -->
  
     
      

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="/dashboard"><i><img src="../dist/img/stichu.png"></i></a> 
       
      
   
      </div>

      <nav id="nav-menu-container">

        <ul class="nav-menu">

          <li><a href="/dashboard/homepage">STICHU</a></li>

         
          {% if session.get('user-name') == null %}
          <li><a style="margin-left: 850px" href="/dashboard/auth/login" class="nav-link">login</a></li>
          {% else %}
          <li><a href="/dashboard/jahitan">Order</a></li>
          <li><a href="/dashboard/kelola">Kelola</a></li>
          <li><a href="/dashboard/progress">Progress</a></li>
          <li><a style="margin-left: 550px" href="/dashboard/profil">Profile</a></li>
          <li><a href="/dashboard/auth/logout" class="nav-link">Logout</a></li>
          {% endif%}
          
        </ul>
      </nav>
      <!-- #nav-menu-container -->
     
     
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section class="about" id="about">

      <div class="container text-center">
        
       
        {% block content %}{% endblock %}
       

    </section><!-- End About Section -->

  

  <!-- ======= Footer ======= -->
  <footer class="site-footer">
    <div class="bottom">
      <div class="container">
        <div class="row">

          <div class="col-lg-6 col-xs-12 text-lg-left text-center">
            <p class="copyright-text">
              &copy; Copyright <strong>StichU-20</strong>. All Rights Reserved
            </p>
            <div class="credits">
              <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Bell
            -->
              Designed by StichU Team</a>
            </div>
          </div>

          <div class="col-lg-6 col-xs-12 text-lg-right text-center">
            <ul class="list-inline">

          {% if session.get('user-name') == null %}
              <li class="list-inline-item">
                <a href="/dashboard/homepage">Home</a>
              </li>

           {% else %}
              <li class="list-inline-item">
                <a href="/dashboard/jahitan">Order</a>
              </li>

              <li class="list-inline-item">
                <a href="/dashboard/kelola">Kelola</a>
              </li>

              <li class="list-inline-item">
                <a href="/dashboard/progress">Progress</a>
              </li>
          {% endif%}


            </ul>
          </div>

        </div>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>

  <!-- Vendor JS Files -->
  <script src="../dist/vendor/jquery/jquery.min.js"></script>
  <script src="../dist/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../dist/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="../dist/vendor/php-email-form/validate.js"></script>
  <script src="../dist/vendor/counterup/counterup.min.js"></script>
  <script src="../dist/vendor/tether/js/tether.min.js"></script>
  <script src="../dist/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="../dist/vendor/venobox/venobox.min.js"></script>
  <script src="../dist/vendor/lockfixed/jquery.lockfixed.min.js"></script>
  <script src="../dist/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="../dist/vendor/superfish/superfish.min.js"></script>
  <script src="../dist/vendor/hoverIntent/hoverIntent.js"></script>

  <!-- Template Main JS File -->
  <script src="../dist/js/main.js"></script>

</body>

</html>