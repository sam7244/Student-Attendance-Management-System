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
                    <a href="#"><span class="fa fa-home mr-3"></span> Scheduled Class</a>
                </li>
                <li>
                    <a href="changepassword.php"><span class="fa fa-user mr-3"></span> Change password</a>
                </li>
                <li>
                    <a href="viewattendance.php"><span class="fa fa-cloud mr-3"></span>View attendance</a>
                </li>
                <li>
                    <a href="downloadattendancefile.php"><span class="fa fa-cloud mr-3"></span>Download attendance File</a>
                </li>
                <li>
                    <a href="logout.php"><span class="fa fa-sticky-note mr-3"></span> Logout</a>
                </li>

            </ul>

        </nav>

        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5 pt-5">
        <div class="card-deck">
  <div class="card">
    <img src="p4.jpg" style="height:330px;" class="card-img-top" alt="...">
    <div class="card-body">
    <h5 class="card-title"><b>Sammed Jain </b></h5>
      <p class="card-title text-dark"><b>Designation : Assistant Professor</b></p>
      <p class="card-title text-dark"><b>Department : App and Software Development</b></p>
      <p class="card-title text-dark"><b>E-mail : sammedbvoc@gmail.com</b></p>
      <p class="card-title text-dark"><b>Ph. No.: 9741039384</b></p>
    </div>
  </div>
  <div class="card">
    <img src="p2.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title"><b>Shivaraj B G</b></h5>
      <p class="card-title text-dark"><b>Designation : Assistant Professor</b></p>
      <p class="card-title text-dark"><b>Department : App and Software Development</b></p>
      <p class="card-title text-dark"><b>E-mail : shivaraj.ss1725@gmail.com</b></p>
      <p class="card-title text-dark"><b>Ph. No.: 9019671447, 9986234617</b></p>
      <!-- <p class="card-text"><small class="text-muted">Last updated 100 yrs ago</small></p> -->
    </div>
  </div>
  <div class="card">
    <img src="..." class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
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

