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
  background-color: #965e6f; 
  color: black; 
  border: 2px solid #865463;
  padding: 10px 24px;
}
.button2:hover {
  background-color: #865463;
  color: black;
}
.content-header{
 
  background-image: url(../dist/img/v.jpg);
 
  background-repeat: repeat;
  padding: 40px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h2 class="m-0 text-dark">Kelola Order</h2>
            
          </div><!-- /.col -->

        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>

  <br>
        <div class="row" style="margin-left:20px;">
          
            {% for jahitan in jahitans %}
       
            <div class="col-md-3" style="text-align: left;" > 
                <div class="card card-primary">
                  <div class="card-header">
                    <h3 class="card-title">
                     <strong>{{jahitan['aksi']}}</strong></h3>

                     <div class="card-tools">
                  

                     

                      <button type="button" class="button button1"" data-toggle="modal" data-target="#myModal7{{jahitan['id']}}">Pembayaran</button>
                      <div class="modal fade" id="myModal7{{jahitan['id']}}" role="dialog">
                          <div class="modal-dialog"> 
                              <div class="modal-content">
                            <div class="card card-primary">
                          <div class="card-header">
                            <h3 class="card-title">Pembayaran</h3>
                          </div>
                          <!-- /.card-header -->
                          <!-- form start -->
                            <form role="form" action="#" method="post" enctype="multipart/form-data" >
                          <div class="card-body">

                            <div class="form-group">
                                  
                              <h3 class="card-title" style="color:black;">
                              {{jahitan['progres']}}</h3>

                               <center><img src="data:image/png;base64,{{jahitan['buktitf']}}" alt="" height="300"></center>
                  
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
                            
                           
                          </div>
                          </form>
                            </div>
                          </div>
                        </div> 
                        </div>

                    </div>
                       
                  </div>
                 
                  
                  <!-- /.card-header -->
                  <div class="card-body">

             Size     	  :{{jahitan['size']}}<br>  
             <img src="data:image/png;base64,{{jahitan['design']}}" alt="" height="280"; width="230"><br><br>
             <strong>Atas Nama    :</strong><br>{{jahitan['atasnama']}}<br>
             <strong>Alamat pengiriman    :</strong><br>{{jahitan['alamatkirim']}}<br>
             <strong>Keterangan    :</strong><br>{{jahitan['keterangan']}}<br>

             <button type="button" class="button button1 " data-toggle="modal" data-target="#myModal5{{jahitan['id']}}">BuktiTF</button>
             <div class="modal fade" id="myModal5{{jahitan['id']}}" value="{{jahitan['id']}}" role="dialog">
                 <div class="modal-dialog"> 
                     <div class="modal-content">
                   <div class="card card-primary">
                 <div class="card-header">
                   <h3 class="card-title">Edit Order  {{jahitan['id']}}</h3>
                 </div>
                 <!-- /.card-header -->
                 <!-- form start -->
                 <form role="form" action="/dashboard/upload/uploadproges" method="post" enctype="multipart/form-data" >
                   <div class="card-body">
                     
                     <div class="form-group">
                       <input type="hidden" name="id" class="form-control" id="id" placeholder="Enter Size" value="{{jahitan['id']}}">
                     </div>
                         
                     <div class="form-group">
                       <label for="buktitf">Bukti TF</label>
                       <div class="input-group">
                         <div class="custom-file">
                           <input type="file" name="buktitf" class="custom-file-input" id="exampleInputFile">
                           <label class="custom-file-label" for="exampleInputFile">Choose file</label>
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
       
        <button type="button" class="button button1 " data-toggle="modal" data-target="#myModal2{{jahitan['id']}}">Edit</button>
        <div class="modal fade" id="myModal2{{jahitan['id']}}" value="{{jahitan['id']}}" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
              <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Edit Order  {{jahitan['id']}}</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form role="form" action="/dashboard/upload/editpost" method="post" enctype="multipart/form-data" >
              <div class="card-body">
                <div class="form-group">
                  <label for="nama">Size</label>
                  <input type="text" name="size" class="form-control" id="size" placeholder="Enter Size" value="{{jahitan['size']}}">
                </div>
                



                <div class="form-group">
                  <input type="hidden" name="id" class="form-control" id="size" placeholder="Enter Size" value="{{jahitan['id']}}">
                </div>
                

                <div class="form-group">
                  <label for="atasnama">Atas Nama</label>
                  <input type="text" name="atasnama" class="form-control" id="atasnama" placeholder="Name" value="{{jahitan['atasnama']}}">
                </div>

                <div class="form-group">
                  <label for="alamatkirim">Alamat Pengiriman</label>
                  <input type="text" name="alamatkirim" class="form-control" id="alamatkirim" placeholder="Address" value="{{jahitan['alamatkirim']}}">
                </div>

                <div class="form-group">
                  <label for="keterangan">Keterangan</label>
                   <textarea class="form-control" name="keterangan" rows="5" id="keterangan" value="{{jahitan['keterangan']}}"> </textarea>
                </div>
                        
                <div class="form-group">
                  <label for="foto">Design / Sketsa</label>
                  <div class="input-group">
                    <div class="custom-file">
                      <input type="file" name="foto" class="custom-file-input" id="exampleInputFile">
                      <label class="custom-file-label" for="exampleInputFile">Choose file</label>
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
        <a href="/dashboard/upload/delete/{{jahitan['id']}}"><button class="button button2">Hapus</button></a>
      
                  </div>
                  <!-- /.card-body -->
                </div>
                


                <!-- /.card -->
              </div>
            <!-- /.col -->
            {% endfor %}
          </div>

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
