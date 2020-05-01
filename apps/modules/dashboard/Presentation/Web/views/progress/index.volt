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
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
.hideform {
    display: none;
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
            <h2 class="m-0 text-dark">Progress Order</h2>
            
          </div><!-- /.col -->
          <div class="col-sm-6">
           
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
   
   
        <div class="row" style="margin-left:20px;">
          
            {% for jahitan in jahitans %}
       

       
            <div class="col-md-3" style="text-align:left"; > 
                <div class="card card-primary">
                  <div class="card-header">
                    <h3 class="card-title">
                        {{ jahitan['aksi']}}</h3>
    
                    <div class="card-tools">
                      
                    </div>
                    <!-- /.card-tools -->
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
     
        <img src="data:image/png;base64,{{jahitan['design']}}" alt="" height="280"; width="230";>
  
        <br>
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
