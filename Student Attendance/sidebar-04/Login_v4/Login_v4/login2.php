<?php 

session_start();
 $username = "";


	$_SESSION['success'] = ""; 

 $host="localhost";
 $password='';
 $db="attendance";
 $conn=mysqli_connect("$host","root","$password","$db");
 $flag=0;
 
 	if (isset($_POST['login'])) {
		$useremail = mysqli_real_escape_string($conn, $_POST['email']);
		$password = mysqli_real_escape_string($conn, $_POST['password']);
		$password=md5($password); 

			
			$query = "select  faculty_email,password FROM faculty WHERE faculty_email='$useremail' AND password='$password'";
			$results = mysqli_query($conn, $query);
			
			

			if (mysqli_num_rows($results) == 1) {
				$_SESSION['email']=$useremail;
					header('location:../../main.php');
				
				      
				 
			}
			else {
				  $flag=1;
			     }
		
	}







?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SDM B.voc</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style>

.field-icon {
  float: right;
  margin-right: 10px;
  margin-top: -35px;
  position: relative;
  z-index: 2;
}
</style>

</head>
<body>
	
	<div class="limiter" >
		<div class="container-login100" style="background-image: url('back2.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" action="" method="POST">
				<?php if($flag==1){  ?>
		<div class="alert alert-success alert-dismissible fade show" role="alert">
  Wrong user email and password
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
		
		
		<?php }  ?>
					<span class="login100-form-title p-b-49">
						Faculty Login
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Useremail is reauired">
						<span class="label-input100">User Email</span>
						<input class="input100" type="email" name="email" placeholder="Type your email">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Type your password" id="password-field" id="txt">
						<span id="password-availability-status" toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password" style="color:#000;" class="help-block m-b-none" style="font-size:12px;" ></span> 
						<span class="focus-input100" data-symbol="&#xf190;"></span> 
					</div>
					
					<div class="text-right p-t-8 p-b-31">
						
					</div>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="submit"class="login100-form-btn" name="login">
							Login
							</button>
						</div>
					</div>

					
				</form>
			</div>
		</div>
	</div>
	

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

</script>
	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>