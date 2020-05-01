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

.cardy {
  margin-left:-100px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}


.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
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
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
   

  <br>
        <div class="row">
          
            {% for users in user %}

            <div class="cardy"><br>
              <h3 style="text-align:center">Profile {{users['username']}}</h3>
              <img src="../dist/img/stichu.png" alt="John" style="width:100%">
              
              <p>nama     :{{users['nama']}}</p>
              <p>Email    :{{users['email']}}</p>
              <p>No hp    :{{users['nohp']}}</p>
              <p>Alamat   :{{users['alamat']}}</p>

              <!-- <button>Contact</button></p> -->
              <p><button type="button" data-toggle="modal" data-target="#myModal1">Edit</button></p>
              <div class="modal fade" id="myModal1" role="dialog">
                  <div class="modal-dialog"> 
                      <div class="modal-content">
                    <div class="card card-primary">
                  <div class="card-header">
                    <h3 class="card-title">Edit</h3>
                  </div>
                  <!-- /.card-header -->
                  <!-- form start -->
                  <form role="form" action="/dashboard/editprofile/editpost" method="post" enctype="multipart/form-data" >
                    <div class="card-body">
      
                      <div class="form-group">
                        <label for="nama">Nama</label>
                        <input type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Enter name" value="{{users['nama']}}">
                      </div>
      
                     
      
                       <div class="form-group">
                        <label for="nama">Email</label>
                        <input type="text" name="email" class="form-control" id="exampleInputEmail1" placeholder="Enter name" value="{{users['email']}}">
                      </div>
      
                      <div class="form-group">
                        <label for="alamat">alamat</label>
                        <input type="text" name="alamat" class="form-control" id="exampleInputPassword1" placeholder="Kategori" value="{{users['alamat']}}">
                      </div>
      
                      <div class="form-group">
                        <label for="nohp">nohp</label>
                        <input type="text" name="nohp" class="form-control" id="exampleInputPassword1" placeholder="Kategori" value="{{users['nohp']}}">
                      </div>
      
                      
      
                      <div class="form-group">
      
                        <input type="hidden" name="id" required="required" value="{{users['id']}}"> <br/>
            
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
