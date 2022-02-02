<?php

session_start();
$host="localhost";
$password='';
$db="attendance";
$conn=mysqli_connect("$host","root","$password","$db");

if(!isset($_SESSION['email']))

{
    header('location:firstpage.php');			

}
 $host="localhost";
 $password='';
 $db="attendance";
 $conn=mysqli_connect("$host","root","$password","$db");
 if( isset($_POST['changepassword']))
 {
	 $oldpassword=$_POST['oldpassword'];
	 $_SESSION['oldpassword']=$oldpassword;
	 $newpassword=$_POST['newpassword'];
	 $cpassword=$_POST['cpassword'];
   $mail=$_SESSION['email'];
   if(empty($oldpassword) || empty($newpassword) || empty($cpassword))
   {
       echo "<script>alert('input fileds are empty')</script>";
   }
   else
   {
                  if($newpassword!=$cpassword)
                  {
                    echo"<script>alert('Password and Re-Type Password Field do not match  !!')</script>";
                  }
            else
            {
                $oldpassword=md5($oldpassword);
                $query="select * from faculty where password='$oldpassword' and faculty_email='$mail';";
                $res=mysqli_query($conn,$query);
                if(mysqli_num_rows($res)==1)
              {   
                $newpassword=md5($newpassword);
                $q="update faculty set password='$newpassword' where password='$oldpassword' and faculty_email='$mail';";
                $result=mysqli_query($conn,$q);
                echo"<script>alert('Password Changed Successfully')</script>";
              }
              else
              {
                echo"<script>alert('Old Password Not much')</script>";
              }
              }
    }
    
 }
	 
	 
	 
	 
	 
	 
	 
	?>
 <!doctype html>
<html lang="en">

<head>
<style>.field-icon {
  float: right;
  margin-right: 10px;
  margin-top: -25px;
  position: relative;
  z-index: 2;
}</style>


<title>SDM B.voc</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
        </script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>

<body>

  <div class="wrapper d-flex align-items-stretch" style="background-image: url(back15.jpg);background-repeat:no-repeat;background-size:cover;">
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
                    <a href="main.php"><span class="fa fa-home mr-3"></span> Scheduled Class</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-key mr-3"></span> Change password</a>
                </li>
                <li>
                    <a href="viewattendance.php"><span class="fa fa-file mr-3"></span>View attendance</a>
                </li>
                <li>
                    <a href="attendanceSummary.php"><span class="fa fa-clipboard mr-2"></span>Attendance Summary</a>
                </li>
                <li>
                    <a href="downloadattendancefile.php"><span class="fa fa-download mr-3"></span>Download attendance File</a>
                </li>
                
                <li>
                    <a href="logout.php"><span class="fa fa-sign-out mr-3"></span> Logout</a>
                </li>

            </ul>

    </nav>

    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">
    <div class="container-fluid">
    <h3><b>Change Password</b></h3>
    <br>
    </div>
  
               
    <form action="" method="post" class="form-horizontal " >
				
                                        
    											<div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-4 control-label"><b style="color:#000;font-size:17px;">Old Password</b> </label>
												<div class="col-sm-8">
				<input type="password" value="" name="oldpassword" id="password-field" id="txt" onkeyup="manage(this)" class="form-control"  required="required">
									 <span id="password-availability-status" toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password" style="color:#000;" class="help-block m-b-none" style="font-size:12px;" ></span> </div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label"><b style="color:#000;font-size:17px;">New Password</b></label>
												<div class="col-sm-8">
											<input type="password" class="form-control"   name="newpassword" id="txt1" onkeyup="manage(this)"  value="" required="required">
                      <span id="password-availability-status" toggle="#txt1" class="fa fa-fw fa-eye field-icon toggle-password"  style="color:#000;" class="help-block m-b-none" style="font-size:12px;" ></span> 
												</div>
											</div>
                             <div class="form-group">
									<label class="col-sm-4 control-label"><b style="color:#000;font-size:17px;">Confirm Password</b></label>
									<div class="col-sm-8">
				<input type="password" class="form-control" value=""   required="required" id="txt2"onkeyup="manage(this)"   name="cpassword" >
        <span id="password-availability-status" toggle="#txt2" class="fa fa-fw fa-eye field-icon toggle-password"   style="color:#000;" class="help-block m-b-none" style="font-size:12px;" ></span> 
												</div>
											</div>
                                                <br>


												<div class="col-sm-6 col-sm-offset-4">
                                                   
												<input type="submit" id="submit" name="changepassword" Value="Change Password" class="btn btn-danger" disabled>
                      

                      </div>
                    
                      <script>
    function manage(txt) {
        var bt = document.getElementById('submit');
        var ele = document.getElementsByTagName('input'); 

        // Loop through each element.
        for (i = 0; i < ele.length; i++) {

            // Check the element type.
            if (ele[i].type == 'password' && ele[i].value == '') {
                bt.disabled = true;    // Disable the button.
                return false;
            }
            else {
                bt.disabled = false;   // Enable the button.
            }
        }
    }
</script>
                     
										</form>



<script>
$(".toggle-password").click(function() {

$(this).toggleClass("fa-eye fa-eye-slash");
var input = $($(this).attr("toggle"));
if (input.attr("type") == "password") {
  input.attr("type", "text");
} else {
  input.attr("type", "password");
}
});
$(".txt1").click(function() {
$(this).toggleClass("fa-eye fa-eye-slash");
var input = $($(this).attr("toggle"));
if (input.attr("type") == "password") {
  input.attr("type", "text");
} else {
  input.attr("type", "password");
}
});
$(".txt2").click(function() {
$(this).toggleClass("fa-eye fa-eye-slash");
var input = $($(this).attr("toggle"));
if (input.attr("type") == "password") {
  input.attr("type", "text");
} else {
  input.attr("type", "password");
}
});
</script>


       
    </div>
  </div>
  <?php include 'footer.html';?>
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
 
</body>
<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>
</html>