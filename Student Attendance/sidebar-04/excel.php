<?php  
session_start();
      //export.php  
 if(isset($_POST["login"]))  
 {  
   

      $connect = mysqli_connect("localhost", "root", "", "attendance");  
      header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=data.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('Date','link','Topics Discussed'));  
      $_SESSION['course']=$_POST['course'];
      $_SESSION['fname']=$_POST['fname'];
      $_SESSION['sem']=$_POST['sem'];
      $_SESSION['sub']=$_POST['sub'];
      $_SESSION['batch']=$_POST['batch'];
      $_SESSION['fdate']=$_POST['date'];
      $_SESSION['tdate']=$_POST['date2'];
     
      
      $course=$_SESSION['course'];
      $fname=$_SESSION['fname'];
      
      $sem=$_SESSION['sem'];
      
            
      $sub= $_SESSION['sub'];
     
      
      //begins
      $quer="select name from subject where  id='$sub' ";
      $result2=mysqli_query($connect,$quer);
      $row=mysqli_fetch_assoc($result2);
      $subject=$row['name'];
      
      //ends
      $batch =$_SESSION['batch'];
      $fdate =$_SESSION['fdate'];
      $tdate=$_SESSION['tdate'];
      $query = "SELECT date,link,comments from filedetails where course='$course' and batch=' $batch' and sub='$subject' and semestar='$sem' and Faculty_Name='$fname' and Date between '$fdate' and  '$tdate' ";  
      $result = mysqli_query($connect, $query);  
      while($row = mysqli_fetch_assoc($result))  
      {  
           fputcsv($output, $row);  
      }  
      fclose($output);  
     
 }  
 ?> 

 
