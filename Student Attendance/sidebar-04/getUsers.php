<?php
session_start();
include "c.php";

$departid = $_POST['depart'];   // department id
$c=$_SESSION['course'];

$sql = "SELECT id,name FROM subject WHERE course='$c' and sem=".$departid;

$result = mysqli_query($con,$sql);

$users_arr = array();

while( $row = mysqli_fetch_array($result) ){
    $userid = $row['id'];
    $name = $row['name'];

    $users_arr[] = array("id" => $userid, "name" => $name);
}

// encoding array to json format
echo json_encode($users_arr);