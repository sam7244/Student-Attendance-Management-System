<?php 

session_start();
 $username = "";
	$_SESSION['a_date'] = ""; 

 $host="localhost";
 $password='';
 $db="attendance";
 $conn=mysqli_connect("$host","root","$password","$db");
 
 
 	if (isset($_POST['login'])) {
		
        $log=$_POST['log'];
        if($log=='Faculty login')
        {
           header('location:Login_v4/Login_v4/login2.php');
        }
        else if($log=='HOD login')
        {
            header('location:Login_v4/Login_v4/adminlogin.php'); 
        }
        else if($log=='Management login')
        {
          header('location:Login_v4/Login_v4/managementlogin.php'); 
      }
      else{
        echo "<script>alert('Wrong Input')<script>";
      }

		
	}








?>
 <!doctype html>
<html lang="en">

<head>

<title>SDM B.voc</title>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <script src = "http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src = "http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
</script>
<style>
.submenu
{
  display:none;
}
.menu2:hover .submenu
{
  display:block;
  margin-left:-20px;

}
body {
    font-family: 'Poppins';
}
   

      
 

</style>
</head>

<body>
 

  <div class="wrapper d-flex align-items-stretch" style="background-image: url(back10.jpg);background-repeat:no-repeat;background-size:cover;
  height:auto;">
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
          <a href="#"><span class="fa fa-home mr-3"></span> Home</a>
        </li>
        <li class="active menu2">
          <a href="#"><span class="fas fa-user-alt mr-3" ></span>
            Faculty Profile <span class="fa fa-angle-down ml-1">
          </a>
          <div class="submenu active">
          <ul type='none'>
                <li><a href="facultyprofile1.php"><span class="fa fa-angle-right mr-3"></span>App and software Development</a></li>
                <li ><a href="facultyprofile2.php"><span class="fa fa-angle-right mr-3"></span>Retail and Supply Chain Management</a></li>
                <li><a href="facultyprofile3.php"><span class="fa fa-angle-right mr-3"></span>Digital Media and Film Making</a></li>
                
            </ul> 
          </div>
        </li>
    
      

      </ul>

    </nav>

    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">
      <form action='' method="POST">
        <div class="form-group">
          <label for="exampleInputEmail1" style="color:#000;font-weight: bold;font-size:16px;">Select Your Login</label>
          <input type="text" id="log" name="log" list="userlogin" onchange="checkRole();" placeholder=" --Select-- " class="col-lg-12 col-sm-12 col-12 p-2" style="outline:none;border:none;text-indent:10px;" required>
            <datalist id="userlogin"></datalist>
        </div>
           
       
     
         <button type="submit" id="login" name="login" class="btn btn-danger text-light" style="opacity:1;">Login</a></button>
      </form>
  <br>
  <br>
  
  <div class="container-fluid " style="background-color: #1b2945;">
        <div class="row">
          <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-3 mt-5">
            <i class='fas fa-book-open mb-3 ml-3' style="font-size:36px;color:#3db166;"></i>
            <h4 class="text-white mb-4 ml-3">Library</h4>
            <p class="text-white mb-5 ml-3" style="font-size: 16px;" >The library shelves more than a lakh
                 books and non book collections.
                Having seating of more than 400,it 
                provides 20 unique services to make 
                reading a pleasure.</p>
            <a href="https://www.sdmcujire.in/library/" target="_blank"><h6 class="ml-3 mb-5" style="margin-top:-30px;color:#3db166;">Read More</h6></a>
          </div>
          <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-3 mt-5">
            <i class='fa fa-globe mb-3' style="font-size:36px;color:#3db166;"></i>
             <h4  class="text-white mb-4">Placement</h4>
             <p  class="text-white mb-5" style="font-size: 16px;">Career Guidance Center offers programmes in the area of skill development, placement training etc. We invite companies of repute for campus recruitment.</p>
             <a href="https://www.sdmcujire.in/placement/" target="_blank"><h6 class="mb-5"style="margin-top:-30px;color:#3db166;">Read More</h6></a>
          </div>
          <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-3 mt-5">
            <i class='fas fa-award mb-3' style="font-size:36px;color:#3db166;"></i>
            <h4 class="text-white mb-4">Recognitions</h4>
            <p class="text-white mb-5" style="font-size: 16px;">UGC – College with Potential for Excellence
                NAAC- Re-accredited at ‘A’ grade (CGPA 3.61 /4)
                NIRF – Placed in 2nd band (between 151 & 200)</p><br>
                <a href="https://www.sdmcujire.in/recognitions-2/" target="_blank"><h6 class="mb-5" style="margin-top:-30px;color:#3db166;">Read More</h6></a>
          </div>
          <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-3 mt-5">
            <i class='fa fa-institution mb-3 mr-3' style="font-size:36px;color:#3db166;"></i>
            <h4 class="text-white mb-4 mr-3">Student Space</h4>
            <p class="text-white mb-5 mr-3" style="font-size: 16px;">Student space allows students to track their progress record at the institution. Here, students can
                access notifications,customized progress portfolios and more.</p>
                <a href="http://117.196.245.150:8080/EERPV3.0/EAM/login.jsp?ConsID=SDMCOLL" target="_blank"><h6 class="mb-5" style="margin-top:-30px;color:#3db166;">Click to Login</h6></a>
          </div>
        </div>
      </div>




    </div>


 

  </div>





  <?php include 'footer.html';?>



  <script type="text/javascript">
  var mycars = new Array();
 
   mycars[0]='Faculty login';
   mycars[1]='HOD login';
   mycars[2]='Management login';

  
  var mycars = mycars.sort();
    var options = '';

  for(var i = 0; i < mycars.length; i++)
    options += '<option value="'+mycars[i]+'" />';

  document.getElementById('userlogin').innerHTML = options;
  //Button disabling code starts from here
  document.getElementById('login').disabled=true;
  function checkRole(){
  var roles= document.getElementById('log').value;
  if(roles){
    document.getElementById('login').disabled=false;
  }
  else{
    document.getElementById('login').disabled=true;
   
  }
  }
  //button disable code ending here
</script>
  

  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  <!-- optional jquery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>
 
</body>

</html>