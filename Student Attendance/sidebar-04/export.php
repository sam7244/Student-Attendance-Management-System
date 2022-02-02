<?php  
session_start();
      //export.php  
 if(isset($_POST["export"]))  
 {  
      $connect = mysqli_connect("localhost", "root", "", "attendance");  
      header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=data.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('id', 'Reg_no', 'Name' ,'Attendance_Status', 'course', 'Date'));
       $date= $_SESSION['a_date'];
       $br =  $_SESSION['cor'];
       $q="select * from  attendance_record where Date='$date' and course='$br' "; 
      $result = mysqli_query($connect, $q);  
      while($row = mysqli_fetch_assoc($result))  
      {  
           fputcsv($output, $row);  
      }  
      fclose($output);  
 }  
 ?> 
