{% extends "templatep.volt" %}

{% block title %}Index{% endblock %}

{% block content %}

<style>
  table {
    border-collapse: collapse;
    width: 120%;
  }
  
  th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }
  * {box-sizing: border-box;}
    body {font-family: Verdana, sans-serif;}
    .mySlides {display: none;}
    img {vertical-align: middle;}

    /* Slideshow container */
    .slideshow-container {
      width: 400x;
      height: 400px;
     
      position: relative;
      margin: auto;
    }

    /* Caption text */
    .text {
      color: #f2f2f2;
      font-size: 15px;
      padding: 8px 12px;
      position: absolute;
      bottom: 8px;
      width: 100%;
      text-align: center;
    }

    /* Number text (1/3 etc) */
    .numbertext {
      color: #f2f2f2;
      font-size: 12px;
      padding: 8px 12px;
      position: absolute;
      top: 0;
    }

    /* The dots/bullets/indicators */
    .dot {
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #bbb;
      border-radius: 50%;
      display: inline-block;
      transition: background-color 0.6s ease;
    }

    .active {
      background-color: #717171;
    }

    /* Fading animation */
    .fade {
      -webkit-animation-name: fade;
      -webkit-animation-duration: 1.5s;
      animation-name: fade;
      animation-duration: 1.5s;
    }

    @-webkit-keyframes fade {
      from {opacity: .4} 
      to {opacity: 1}
    }

    @keyframes fade {
      from {opacity: .4} 
      to {opacity: 1}
    }
    </style>
    <a href="#"><img alt="" class="team-img" style="width: 100%;" img-background: src="../dist/img/category.jpg">

        <section class="features" id="features">

         
              
                


      <div class="container">
        <h2 class="text-center">
          Features
        </h2>

        <div class="row">
          <div class="feature-col col-lg-4 col-xs-12">
            <div class="card card-block text-center">
              <div>
                <div class="feature-icon">
                  <span class="fa fa-rocket"></span>
                </div>
              </div>

              <div>
                <h3>
                  Custom Design
                </h3>

                <p>
                  Pelanggan silahkan mendesign baju sendiri<br>
                  Sesuai keinginan.
                </p>
              </div>
            </div>
          </div>

          <div class="feature-col col-lg-4 col-xs-12">
            <div class="card card-block text-center">
              <div>
               <div class="feature-icon">
                   <span class="fa fa-database"></span>
                </div>
              </div>

              <div>
                <h3>
                  Excellent Features
                </h3>

                <p>
                 Kami menyedikana beberapa fitur<br>
                 untuk mengelola orderan Anda
                </p>
              </div>
            </div>
          </div>

          <div class="feature-col col-lg-4 col-xs-12">
            <div class="card card-block text-center">
              <div>
                <div class="feature-icon">
                  <span class="fa fa-bell"></span>
                </div>
              </div>

              <div>
                <h3>
                  Fast-Respond
                </h3>

                <p>
                  Kami bekerja semaksimal mungkin<br>
                  untuk mendapatkan kepercayaan Anda
                </p>
              </div>
            </div>
          </div>
        </div>





        
        </div>
      </div>

    </section><!-- End Features Section -->

   <section class="team" id="team">



      <div class="container">
        <h2 class="text-center">
          Meet our Galleries
        </h2>

        <div class="row">
          <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/3.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                  
                  </h4>

                  <nav class="social-nav">
                   
                  </nav>

                  
                </div>
              </a>
            </div>
          </div>

          <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/2.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>

            <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/5.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>


             <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/6.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>

          <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/1.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                   
                  </h4>

                  <nav class="social-nav">
                   
                  </nav>

                </div>
              </a>
            </div>
          </div>

             <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/7.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>

             <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/8.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>

             <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/9.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>

             <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/10.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>
             <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/11.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>
             <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/12.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                    
                  </h4>

                  <nav class="social-nav">
                    
                  </nav>

               
                </div>
              </a>
            </div>
          </div>

          <div class="col-sm-3 col-xs-6">
            <div class="card card-block">
              <a href="#"><img alt="" class="team-img" src="../dist/img/4.png">
                <div class="card-title-wrap">
                  <span class="card-title">StichU</span> <span class="card-text">Art Director</span>
                </div>

                <div class="team-over">
                  <h4 class="hidden-md-down">
                  
                  </h4>

                  <nav class="social-nav">
                   
                  </nav>

                </div>
              </a>
            </div>
             <br>
          <br>
          <br>
          <br>

          </div>

        <div><h2 class="text-center">
          <center>Size</center>
        </h2>



            <table>
          <tr>
            <td>Size</td>
            <td>Lingkar Dada</td>
            <td>Lingkar Pinggang</td>
            <td>Lingkar Pinggul</td>
            <td>Panjang Tangan</td>
            <td>Panjang Baju</td>
            <td>Panjang Celana</td>
            <td>Lingkar Paha</td>
          </tr>
          <tr>
            <td>S</td>
            <td>90cm</td>
            <td>90cm</td>
            <td>90cm</td>
            <td>34cm</td>
            <td>66cm</td>
            <td>66cm</td>
            <td>50cm</td>
          </tr>
          <tr>
            <td>M</td>
            <td>98cm</td>
            <td>98cm</td>
            <td>98cm</td>
            <td>36cm</td>
            <td>66cm</td>
            <td>68cm</td>
            <td>52cm</td>
          </tr>
          <tr>
            <td>L</td>
            <td>104cm</td>
            <td>104cm</td>
            <td>104cm</td>
            <td>37cm</td>
            <td>71cm</td>
            <td>70cm</td>
            <td>56cm</td>
          </tr>
          <tr>
            <td>XL</td>
            <td>106cm</td>
            <td>106cm</td>
            <td>106cm</td>
            <td>39cm</td>
            <td>73cm</td>
            <td>73cm</td>
            <td>60cm</td>
          </tr>
          <tr>
            <td>XXL</td>
            <td>114cm</td>
            <td>114cm</td>
            <td>114cm</td>
            <td>40cm</td>
            <td>74cm</td>
            <td>74cm</td>
            <td>62cm</td>
          </tr>
        </table>
        </div>
        </div>
            <!-- ======= Contact Section ======= -->


      </div>
      </div>
    </section><!-- End Team Section -->

       <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h2 class="section-title">Contact Us</h2>
          </div>
        </div>

        <div class="row justify-content-center">
          <div class="col-lg-3 col-md-4">
            <div class="info">
              <div>
                <i class="fa fa-map-marker"></i>
               <p style="font-align: left;">jl Jendral Soedirman no. 48 <br>
                Sukoharjo Jawa, Tengah</p>
              </div>

              <div>
                <i class="fa fa-envelope"></i>
                <p>StichU20@outlook.com</p>
              </div>

              <div>
                <i class="fa fa-phone"></i>
                <p>0271-591000</p>
              </div>

            </div>
          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              	<p>BCA: 09889882</p>
                <p>BNI: 051890072</p>
                <p>BRI: 0989788267</p>
                <p>a.n Christina Shane</p>
      
            </div>
          </div>

        </div>
      </div>
    </section><!-- End Contact Section -->

{% endblock%}