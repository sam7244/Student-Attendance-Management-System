<!doctype html>
<html>
<head>
<title>SDM B.voc</title>
   
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="jquery-1.12.0.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function(){

            $("#sel_depart").change(function(){
                var deptid = $(this).val();

                $.ajax({
                    url: 'getUsers.php',
                    type: 'post',
                    data: {depart:deptid},
                    dataType: 'json',
                    success:function(response){

                        var len = response.length;

                        $("#sel_user").empty();
                        for( var i = 0; i<len; i++){
                            var id = response[i]['id'];
                            var name = response[i]['name'];

                            $("#sel_user").append("<option value='"+id+"'>"+name+"</option>");

                        }
                    }
                });
            });

        });
    </script>
    
</head>
<body >


        
            
<div class="container">  
       
</div> 

<div class="d-flex align-items-stretch" style="background-image: url(back11.jpg);background-repeat:no-repeat;background-size:cover;">
        <nav id="sidebar">
            <div class="custom-menu">
                <button type="button" id="sidebarCollapse" class="btn btn-primary">
                    <i class="fa fa-bars"></i>
                    <span class="sr-only">Toggle Menu</span>
                </button>
            </div>
            <h1><a href="#" class="logo" style="background:orange;color:#fff;">SDM B.voc</a></h1>
            <ul class="list-unstyled components mb-5">
            <li class="active">
                    <a href="firstpage.php"><span class="fa fa-home mr-3"></span> Home</a>
                </li>

            </ul>

        </nav>

        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5 pt-5">
        <center><b><h1 class="h3" style="color:orange">Digital Media and Film Making</h1></b></center>
        <div class="card-deck">
  <div class="card" style="width: 20rem;height:36rem;">
    <img src="p8.jpeg" style="height:330px;" class="card-img-top" alt="...">
    <div class="card-body">
    <h5 class="card-title text-center"><b>Ashwini Jain </b></h5>
      <p class="card-title text-dark"><b>Designation : Assistant Professor and content writer</b></p>
      <p class="card-title text-dark"><b>Department : Digital Media and Film Making</b></p>
      <p class="card-title text-dark"><b>E-mail : ashwini.jain@sdmcujire.in</b></p>
      <p class="card-title text-dark"><b>Ph. No.: 9900648252</b></p>
    </div>
  </div>
  <div class="card" style="width: 20rem;height:36rem;">
    <img src="p9.jpeg" class="card-img-top" style="height:330px;" alt="...">
    <div class="card-body">
      <h5 class="card-title text-center"><b>Madhava Holla</b></h5>
      <p class="card-title text-dark"><b>Designation : Assistant Professor</b></p>
      <p class="card-title text-dark"><b>Department : Digital Media and Film Making</b></p>
      <p class="card-title text-dark"><b>E-mail : mholla656@sdmcujire.in</b></p>
      <p class="card-title text-dark"><b>Ph. No.: 9591592988</b></p>
      <!-- <p class="card-text"><small class="text-muted">Last updated 100 yrs ago</small></p> -->
    </div>
  </div>
  <div class="card bg-transparent" style="border:none;width:0px;height:0px;" >
    
    <div class="card-body">
      
    </div>
  </div>
</div>
</div>
</div>

        </div>
    
</div>  
<?php include 'footer.html';?>
    <script src="js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>

