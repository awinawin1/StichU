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
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
     
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
   

  <br>
        <div class="row">
          
            {% for jahitan in jahitans %}
       

       
            <div class="col-md-3" style="text-align: left;" > 
                <div class="card card-primary">
                  <div class="card-header">
                    <h3 class="card-title">
                       
    
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                      </button>
                    </div>
                    <!-- /.card-tools -->
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">

       Size     	  :{{jahitan['size']}}<br>
       Alamatkirim    :{{jahitan['alamatkirim']}}<br>
       Keterangan     :{{jahitan['keterangan']}}<br>
       <img src="data:image/png;base64,{{jahitan['design']}}" alt="" height="300"; width="250"><br><br>
    
       
      


        <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal1">Edit</button>
        <div class="modal fade" id="myModal1" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Edit</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form role="form" action="/dashboard/upload/uploadprogres" method="post" enctype="multipart/form-data" >
              <div class="card-body">

                <div class="form-group">
                  <label for="aksi">aksi</label>
                  <input type="text" name="aksi" class="form-control" id="exampleInputEmail1" placeholder="Enter name" value="{{jahitan['aksi']}}">
                </div>

               

                 <div class="form-group">
                  <label for="progres">progres</label>
                  <input type="text" name="email" class="form-control" id="exampleInputEmail1" placeholder="Enter name" value="{{jahitan['progres']}}">
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
                <button type="submit" class="btn btn-primary">Submit</button>
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
