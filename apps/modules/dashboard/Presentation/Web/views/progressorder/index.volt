{% extends "template.volt" %}

{% block title %}Index{% endblock %}

{% block content %}
<style>

.square {
  height: 50px;
  width: 50px;
  background-color: #555;
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
.button2 {
  background-color: #965e6f; 
  color: black; 
  border: 2px solid #865463;
  padding: 10px 24px;
}
.button2:hover {
  background-color: #865463;
  color: black;
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
/* The container */
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
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
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
      <H3>Progress Order</H3>
      <div class="container-fluid">
       
      </div><!-- /.container-fluid -->
    </div>

  <br>
        <div class="row">
          
            {% for jahitan in jahitans %}
       

       
            <div class="col-md-4" style="text-align: left;" > 
                <div class="card card-primary">
                  <div class="card-header">
                    <h3 class="card-title">
                      aksi :{{jahitan['aksi']}}</h3>
                        <div class="card-tools">
                          <a href="/dashboard/upload/deleteorder/{{jahitan['id']}}"><button class="button button2">Hapus</button></a>
                          
                        </div>
                  </div>
                  
                  <!-- /.card-header -->
                  <div class="card-body">

       <p>Atas Nama     	  :<br>{{jahitan['atasnama']}}</p>
       <p>Size     	  :{{jahitan['size']}}</p>
       <p>Alamatkirim    :<br>{{jahitan['alamatkirim']}}</p>
       
       <img src="data:image/png;base64,{{jahitan['design']}}" alt="" height="280"; width="240"><br><br>
       <table>
        <tr>
          <th>Time</th>
          <th>Progress</th>
        
        </tr>
        <tr>
          <td>H+3</td>
          <td>{{jahitan['progres1']}}</td>
         
        </tr>
        <tr>
          <td>H+6</td>
          <td>{{jahitan['progres2']}}</td>
         
        </tr>
        <tr>
          <td>H+9</td>
          <td>{{jahitan['progres3']}}</td>
         
        </tr>
        <tr>
          <td>H+12</td>
          <td>{{jahitan['progres4']}}</td>
          
        </tr>
      </table>
      
       
      
      
      
       

        <button type="button" class="button button1" data-toggle="modal" data-target="#myModal1{{jahitan['id']}}">H+3</button>
        <div class="modal fade" id="myModal1{{jahitan['id']}}" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Progress</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form role="form" action="/dashboard/upload/uploadproges" method="post" enctype="multipart/form-data" >
              <div class="card-body">
                <label class="container">Dalam proses pemotongan
                  <input type="radio" name="progres1" value="Dalam proses pemotongan">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Dalam Proses penjahitan
                  <input type="radio" name="progres1" value="Dalam Proses penjahitan">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Finishing
                  <input type="radio" name="progres1" value="Finishing">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Pengiriman
                  <input type="radio" name="progres1" value="Pengiriman">
                  <span class="checkmark"></span>
                </label>
                <!-- <div class="form-group">
                  <label for="progres1">Progress</label>
                   <textarea class="form-control" name="progres1" rows="5" id="progres1" value="{{jahitan['progres1']}}"></textarea>
                </div> -->
                <div class="form-group">
                  <input type="hidden" name="id" class="form-control" id="id" placeholder="id" value="{{jahitan['id']}}">
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
    

        <button type="button" class="button button1" data-toggle="modal" data-target="#myModal2{{jahitan['id']}}">H+6</button>
        <div class="modal fade" id="myModal2{{jahitan['id']}}" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Progress</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form role="form" action="/dashboard/upload/uploadproges" method="post" enctype="multipart/form-data" >
              <div class="card-body">
                <label class="container">Dalam proses pemotongan
                  <input type="radio" name="progres2" value="Dalam proses pemotongan">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Dalam Proses penjahitan
                  <input type="radio" name="progres2" value="Dalam Proses penjahitan">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Finishing
                  <input type="radio" name="progres2" value="Finishing">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Pengiriman
                  <input type="radio" name="progres2" value="Pengiriman">
                  <span class="checkmark"></span>
                </label>
                <div class="form-group">
                  <input type="hidden" name="id" class="form-control" id="id" placeholder="id" value="{{jahitan['id']}}">
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
  
        <br>
      
        <button type="button" class="button button1" data-toggle="modal" data-target="#myModal3{{jahitan['id']}}">H+9</button>
        <div class="modal fade" id="myModal3{{jahitan['id']}}" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Progress</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form role="form" action="/dashboard/upload/uploadproges" method="post" enctype="multipart/form-data" >
              <div class="card-body">
                <label class="container">Dalam proses pemotongan
                  <input type="radio" name="progres3" value="Dalam proses pemotongan">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Dalam Proses penjahitan
                  <input type="radio" name="progres3" value="Dalam Proses penjahitan">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Finishing
                  <input type="radio" name="progres3" value="Finishing">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Pengiriman
                  <input type="radio" name="progres3" value="Pengiriman">
                  <span class="checkmark"></span>
                </label>
                <div class="form-group">
                  <input type="hidden" name="id" class="form-control" id="id" placeholder="id" value="{{jahitan['id']}}">
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
        
        <button class="button button1"  data-toggle="modal" data-target="#myModal4{{jahitan['id']}}">H+12</button>
        <div class="modal fade" id="myModal4{{jahitan['id']}}" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Progress</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form role="form" action="/dashboard/upload/uploadproges" method="post" enctype="multipart/form-data" >
              <div class="card-body">
                <label class="container">Dalam proses pemotongan
                  <input type="radio" name="progres4" value="Dalam proses pemotongan">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Dalam Proses penjahitan
                  <input type="radio" name="progres4" value="Dalam Proses penjahitan">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Finishing
                  <input type="radio" name="progres4" value="Finishing">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Pengiriman
                  <input type="radio" name="progres4" value="Pengiriman">
                  <span class="checkmark"></span>
                </label>
                <div class="form-group">
                  <input type="hidden" name="id" class="form-control" id="id" placeholder="id" value="{{jahitan['id']}}">
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
