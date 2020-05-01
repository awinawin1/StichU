{% extends "templatep.volt" %}

{% block title %}Index{% endblock %}

{% block content %}
<style>

.center {
    margin: auto;
    width: 60%;
    padding: 20px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.hideform {
    display: none;
}
.content-header{
 
 background-image: url(../dist/img/v.jpg);

 background-repeat: repeat;
 padding: 40px;
}

.button {
  background-color: #5e8b96;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.containers {
  display: block;
  position: relative;
  padding-left: 10px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 18px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.containers input {
  
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}

.button1 {
  background-color:#5e8b96; 
  color: black; 
  border: 2px solid #5e9685;
  padding: 10px 24px;
}
.button1:hover {
  background-color: #5e9685;
  color: black;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            
            
          </div><!-- /.col -->
          

        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
   
    <div class="row">
          <!-- left column -->
          <div class="col-md-7">
            <!-- general form elements -->
            <button class="button button1" data-toggle="modal" data-target="#myModal">Order</button>
            <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog"> 
                  <div class="modal-content">
                <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Upload</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="/dashboard/upload/upload" method="post" enctype="multipart/form-data" >
                <div class="card-body">
                  <div class="form-group">
                    <label for="atasnama">Size</label>
                    <div style="margin-left:70px;">
                    <label style="margin-left:-70px;"class="containers">S
                      <input style="margin-left:330px;"type="radio" name="size" value="S">
                      <span class="checkmark"></span>
                    </label>
                    <label style="margin-left:-70px;"class="containers">M
                      <input style="margin-left:330px;"type="radio" name="size" value="M">
                      <span class="checkmark"></span>
                    </label>
                    <label style="margin-left:-70px;"class="containers">L
                      <input style="margin-left:330px;" type="radio" name="size" value="L">
                      <span class="checkmark"></span>
                    </label>
                    <label style="margin-left:-70px;" class="containers">XL
                      <input style="margin-left:330px;" type="radio" name="size" value="XL">
                      <span class="checkmark"></span>
                    </label>
                    <label style="margin-left:-70px;"class="containers">XXL
                      <input style="margin-left:330px;" type="radio" name="size" value="XXL">
                      <span class="checkmark"></span>
                    </label>
                  </div>
                </div>

                  
                  <div class="form-group">
                    <label for="atasnama">Atas Nama</label>
                    <input type="text" name="atasnama" class="form-control" id="exampleInputPassword1" placeholder="Enter Name">
                  </div>


                  <div class="form-group">
                    <label for="alamatkirim">Alamat Pengiriman</label>
                    <input type="text" name="alamatkirim" class="form-control" id="exampleInputPassword1" placeholder="Enter Address">
                  </div>

                  <div class="form-group">
                    <label for="keterangan">Keterangan</label>
                
                     <textarea class="form-control" name="keterangan" rows="5" id="comment"></textarea>
                    
                  </div>

                  <div class="form-group">

                    <input type="hidden" name="iduser" required="required" value="{{userid}}"> <br/>
        
                  </div>
                  


                  <div class="form-group">
                    <label for="design">Design atau Sketsa</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" name="design" class="custom-file-input" id="exampleInputFile">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      
                    </div>
                  </div>

                 
               
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="button button1">Order</button>
                </div>
              </form>
                </div>
              </div>
            </div> 
            </div>
            <!-- /.card -->

   
          <!--/.col (right) -->
        </div>
    </div>
  <br>
      <div class="row">
          {% for jahitan in jahitans %}
          <div class="col-md-3" style="text-align: left"; margin: 30px;float:"left";>
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">
                      {{ jahitan['size']}} </h3>
                      <div class="card-tools">
                        
                      </div>
                </div>
                    <div class="card-body">
                      <img src="data:image/png;base64,{{jahitan['design']}}" alt="" height="280"; width="240"><br><br>
                      <strong>Order :</strong> <br>{{jahitan['created_at']}}<br>
                      <strong>Keterangan :</strong> <br>{{jahitan['keterangan']}}<br>
                      
                      <strong>Alamat Pengiriman :</strong><br>{{jahitan['alamatkirim']}}
                    </div>
              </div> 
          </div>
           {% endfor %}
    </div>
                <!-- /.card -->
              </div>
            <!-- /.col -->
           
          </div>



<section class="content">


</section>



</div>
<script>$('#show').on('click', function () {
    $('.center').show();
    $(this).hide();
})

$('#close').on('click', function () {
    $('.center').hide();
    $('#show').show();
})</script>


{% endblock%}
