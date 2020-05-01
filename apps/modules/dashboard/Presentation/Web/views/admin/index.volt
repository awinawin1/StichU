{% extends "template.volt" %}

{% block title %}Index{% endblock %}

{% block content %}
<style>
.button {
  background-color: #5e8b96;
  border: none;
  color: white;
  padding: 14px 28px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
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

.button2 {
  background-color:#547c86; 
  color: black; 
  border: 2px solid #5e9685;
  padding: 10px 24px;
}
.button2:hover {
  background-color: #5e9685;
  color: black;
}

.button3 {
  background-color:#4a6e77; 
  color: black; 
  border: 2px solid #5e9685;
  padding: 10px 24px;
}
.button3:hover {
  background-color: #5e9685;
  color: black;
}

.center {
    margin: auto;
    width: 60%;
    padding: 20px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.hideform {
    display: none;
}

.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.container input {
  position: absolute;
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
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
<H3>list order</H3>
    </div>

        <div class="row">
          
            {% for jahitan in jahitans %}
       

       
            <div class="col-md-3" style="text-align: left;" > 
                <div class="card card-primary">
                  <div class="card-header">
                    <h3 class="card-title">
                      <p class="card-title">
                        {{ jahitan['created_at']}} </p>
    
                    <div class="card-tools">
                      
                      </button>
                    </div>
                    <!-- /.card-tools -->
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
       <p><strong>Aksi         :</strong>{{jahitan['aksi']}}<br></p>
       <p><strong>Size     	  :</strong>{{jahitan['size']}}<br></p>
       <p><strong>Atas Nama    :</strong>{{jahitan['atasnama']}}<br></p>
       <p><strong>Alamat Kirim :</strong>{{jahitan['alamatkirim']}}<br></p>
       <p><strong>Keterangan   :</strong>{{jahitan['keterangan']}}<br></p>
       <p><strong>Pesan Admin   :</strong>{{jahitan['progres']}}<br></p>
       
       <img src="data:image/png;base64,{{jahitan['design']}}" alt="" height="300"; width="250"><br><br>
    

    

        <button class="button button1" data-toggle="modal" data-target="#myModal1{{jahitan['id']}}">Aksi</button>
        <div class="modal fade" id="myModal1{{jahitan['id']}}" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Aksi</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form role="form" action="/dashboard/upload/uploadproges" method="post" enctype="multipart/form-data" >
              <div class="card-body">
                <label class="container"><p>Terima</p>
                  <input type="radio" name="aksi" value="Terima">
                  <span class="checkmark"></span>
                </label>
 
                <label class="container">Tolak
                  <input type="radio" name="aksi" value="Tolak">
                  <span class="checkmark"></span>
                </label>

                <!-- <div class="form-group">
                  <label for="aksi">Terima</label>
                  <input type="radio" name="aksi" class="form-control" id="aksi" placeholder="Terima atau tolak" value="{{jahitan['aksi']}}">
                </div>
                <div class="form-group">
                  <label for="aksi">Tolak</label>
                  <input type="radio" name="aksi" class="form-control" id="aksi" placeholder="Terima atau tolak" value="{{jahitan['aksi']}}">
                </div> -->

                <div class="form-group">
                  <input type="hidden" name="id" class="form-control" id="id" placeholder="id" value="{{jahitan['id']}}">
                </div>

                
                <div class="form-group">
                  
                  <div class="input-group">
                    <div class="custom-file">
                     
                    </div>
                    <div class="input-group-append">
                     
                    </div>
                  </div>
                </div>


              </div>

              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" class="button button1">Submit</button>
              </div>
            </form>
              </div>
            </div>
          </div> 
          </div>


          <button type="button" class="button button2" data-toggle="modal" data-target="#myModal2{{jahitan['id']}}">Pesan</button>
        <div class="modal fade" id="myModal2{{jahitan['id']}}" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Message</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form role="form" action="/dashboard/upload/uploadproges" method="post" enctype="multipart/form-data" >
              <div class="card-body">
                <div class="form-group">
                    <label for="progres">Pesan</label>
                
                     <textarea class="form-control" name="progres" rows="5" id="progres" value="{{jahitan['progres']}}"></textarea>
                    
                  </div>

                <div class="form-group">
                  <input type="hidden" name="id" class="form-control" id="id" placeholder="id" value="{{jahitan['id']}}">
                </div>

                
                <div class="form-group">
                  
                  <div class="input-group">
                    <div class="custom-file">
                     
                    </div>
                    <div class="input-group-append">
                     
                    </div>
                  </div>
                </div>


              </div>

              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" class="button button1">Kirim</button>
              </div>
            </form>
              </div>
            </div>
          </div> 
          </div>

        
          
          
          <button type="button" class="button button3" data-toggle="modal" data-target="#myModal7{{jahitan['id']}}">Pembayaran</button>
        <div class="modal fade" id="myModal7{{jahitan['id']}}" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">BuktiTF</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form >
              <div class="card-body">
                <div class="form-group">
                   
                
                    <center><img src="data:image/png;base64,{{jahitan['buktitf']}}" alt="" height="300"; width="250"></center>
                    
                  </div>

                <div class="form-group">
                  <input type="hidden" name="id" class="form-control" id="id" placeholder="id" value="{{jahitan['id']}}">
                </div>

                
                <div class="form-group">
                  
                  <div class="input-group">
                    <div class="custom-file">
                     
                    </div>
                    <div class="input-group-append">
                     
                    </div>
                  </div>
                </div>


              </div>

              <!-- /.card-body -->

            </form>
              </div>
            </div>
          </div> 
          </div>


        


       
                  </div>
                  <!-- /.card-body -->
                </div>
                <!-- /.card -->
              </div>
            <!-- /.col -->
            {% endfor %}
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
