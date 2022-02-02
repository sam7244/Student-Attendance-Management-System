<?php

session_start();
 $host="localhost";
 $password='';
 $db="attendance";
 $conn=mysqli_connect("$host","root","$password","$db");
 if(!isset($_SESSION['admin_email']))

{
    header('location:firstpage.php');			

}
 if( isset($_POST['changepassword']))
 {
	 $oldpassword=$_POST['oldpassword'];
	 $_SESSION['oldpassword']=$oldpassword;
	 $newpassword=$_POST['newpassword'];
	 $cpassword=$_POST['cpassword'];
   $mail=$_SESSION['admin_email'];
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
                      $query="select * from admin where password='$oldpassword' and 	admin_email='$mail';";
                      $res=mysqli_query($conn,$query);
                      if(mysqli_num_rows($res)==1)
                    {   
                      $newpassword=md5($newpassword);
                      $q="update admin set password='$newpassword' where password='$oldpassword' and admin_email='$mail';";
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js">
        </script>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
            <li>
                    <a href="adminviewattendance.php"><span class="fa fa-download mr-3"></span> attendance Summary</a>
                </li>
                <li>
                    <a href="adminfaculty_attendance.php"><span class="fa fa-clipboard mr-3"></span>Faculty attendance</a>
                </li>
                <li>
                    <a href="admindownloadattendancefile.php"><span class="fa fa-clipboard mr-3"></span>Download Attendance File</a>
                </li>
              
                <li>
                    <a href="#"><span class="fa fa-key mr-3"></span> Change password</a>
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
				<input type="password" value="" name="oldpassword" id="password-field" id="txt" class="form-control" onkeyup="manage(this)"  required="required">
        <span id="password-availability-status" toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password" style="color:#000;" class="help-block m-b-none" style="font-size:12px;" ></span> </div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label"><b style="color:#000;font-size:17px;">New Password</b></label>
												<div class="col-sm-8">
											<input type="password" class="form-control" name="newpassword" id="txt1" onkeyup="manage(this)" value="" required="required">
										  <span id="password-availability-status" toggle="#txt1" class="fa fa-fw fa-eye field-icon toggle-password"  style="color:#000;" class="help-block m-b-none" style="font-size:12px;" ></span>		</div>
											</div>
                             <div class="form-group">
									<label class="col-sm-4 control-label"><b style="color:#000;font-size:17px;">Confirm Password</b></label>
									<div class="col-sm-8">
				<input type="password" class="form-control" value="" id="txt2"onkeyup="manage(this)" required="required" name="cpassword" >
        <span id="password-availability-status" toggle="#txt2" class="fa fa-fw fa-eye field-icon toggle-password"   style="color:#000;" class="help-block m-b-none" style="font-size:12px;" ></span> 								</div>
											</div>
                                                <br>


												<div class="col-sm-6 col-sm-offset-4">
                                                   
												<input type="submit" id="submit" name="changepassword" Value="Change Password" class="btn btn-danger" disabled>
											</div>

										</form>






       
    </div>
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
    <?php include 'footer.html';?>
</body>

</html>