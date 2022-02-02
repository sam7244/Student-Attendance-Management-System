<?php
session_start();
$host="localhost";
 $password='';
 $db="hostel1";
 $_SESSION['msg']='';
 $conn=mysqli_connect("$host","root","$password","$db");
 ?>