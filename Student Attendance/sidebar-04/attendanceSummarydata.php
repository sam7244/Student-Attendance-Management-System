<?php
session_start();
$host="localhost";
$username="root";
$password='';
$db="attendance";
$conn=mysqli_connect("$host","$username","$password","$db");

if(!isset($_SESSION['email']))

{
    header('location:firstpage.php');     

}
if(isset($_POST['Filter']))
{
    $rollno=$_POST['rollno'];
    $date1=$_POST['date1'];
    $date2=$_POST['date2'];
    if(empty($rollno) || empty($date1) ||empty($date2) )
         {
             echo "<script>alert('input fileds are empty')</script>";
         }
         else
         {
             $_SESSION['rollno'] = $rollno;
             $_SESSION['date1'] = $date1;
             $_SESSION['date2']=$date2;
            
            
        
            
         
 
 
             header('location:onestudentdata.php');			
    
         }
   
}
?>


<!doctype html>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>SDM B.voc</title>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
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
                    <a href="changepassword.php"><span class="fa fa-key mr-3"></span> Change password</a>
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
    <div id="content" class="p-4 p-md-5 pt-5">
    <div class="container-fluid">
    
    <u style="color:#000;"><center><h3><b>ATTENDANCE RECORD</b></h2></center></u>
<!-- Button trigger modal -->
<button type="button"style="float:right;" class="btn btn-light" data-toggle="modal" data-target="#exampleModal" data-toggle="tooltip" data-placement="top" title="Filter data">
<i style="float:right;font-size:20px;color:#000;" class="fa fa-filter"></i>
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Filter Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="hideCancelModal()">
       
          <span aria-hidden="true">&times;</span>
        </button>
        <script>
        function hideCancelModal(){
            document.getElementById("dtlist2").value=''
            document.getElementById("date1").value=''
            document.getElementById("date2").value=''
        }
        
        </script>
      </div>
      <div class="modal-body">
        
          <center> <form action="" method="POST"> 
          <div class="form-group">
    <label for="exampleFormControlSelect1" style="color:#000;font-weight: bold;font-size:16px;float:left;">Select Reg No</label>
   <?php 
            $br =  $_SESSION['cor'];
            $batch= $_SESSION['batch'];
            $r="select * from student where course='$br' and batch='$batch' ";
            $result=mysqli_query($conn,$r);
            echo "<input type='search'  id='dtlist2' class='form-control border' name='rollno' placeholder='Select regno' list='dtlist' style='border:1px solid #000;outline:none;colo:#fff;'>";
            echo "<datalist id='dtlist'>";

                while($row = mysqli_fetch_array($result)) {
                    echo "<option value='$row[Reg_no]'> $row[Reg_no] </option>";
                }

            echo "</datalist>";


            ?>

  </div>
          <div class="form-group">
                    <label for="exampleInputPassword1" style="color:#000;font-weight: bold;font-size:16px;float:left;" required >Select date from</label>
                    <input type="date" name="date1"  max="<?php 
         echo date('Y-m-d');
     ?>"  class="form-control border" id="date1"  required="required">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" style="color:#000;font-weight: bold;font-size:16px;float:left;" required >Select date to</label>
                    <input type="date" name="date2"  max="<?php 
         echo date('Y-m-d');
     ?>"  class="form-control border" id="date2"  required="required">
                </div> 


        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="hideCancelModal()">Close</button>
        <button type="submit" name="Filter" onclick="Checkmode()"class="btn btn-primary">Filter</button></form></center>
        <script>
        function Checkmode(){
            localStorage.setItem("filterstatus", "filterclicked");
        } </script>
      </div>
    </div>
  </div>
</div>


        <center><h6 style="color:#000;">Course:<?php $course= $_SESSION['cor'];
       
           echo $course;  ?></h6><h6 style="color:#000;">Faculty Name:<?php   $fname=$_SESSION['faname']; 
          
            echo $fname;  ?></h6>
    
        <!-- starts -->
        <h6 style="color:#000;">Total Class Conducted: <?php 
          $s=1;
          $date= $_SESSION['a_date'];
          $dates=$_SESSION['a_dates'];
          $cor= $_SESSION['cor'];
          $sem=$_SESSION['sem'];
          $fname=$_SESSION['faname'];
        
          $batch=$_SESSION['batch'];
          $sub=  $_SESSION['subject'];
          $res="select name from subject where  id='$sub' ";
            $a=mysqli_query($conn,$res); 
            $row=mysqli_fetch_assoc($a); 
            $subject=$row['name'];
            
         $q1="select count(id) from  faculty_attendence where  course='$cor'and faculty_name='$fname'and batch='$batch'and subject='$subject' and Date between '$date' and  '$dates'   and sem='$sem' ";
         $query=mysqli_query($conn,$q1);
         $a=$query;
         $row = mysqli_fetch_assoc($query);
         $a=array($row);
         print_r($a['0']['count(id)']);
         $t=$a['0']['count(id)'];
        //  ends
               ?> 
        </div></center></h6> <br>
        <label for="exampleInputEmail1" style="color:#000;font-weight: bold;font-size:17px;">DOWNLOAD ATTENDANCE DATA </label><br>
        

            <button class="btn btn-success" id="pdf">PDF</button>

            <button class="btn btn-success" id="csv">CSV</button>
    

        <form action="" method="POST">
    <div class="table-responsive">
    <br>
    <table class="table" id="example" style="background:#fff;">
            
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">RegNo</th>
                    <th scope="col">Name</th>
                    <th scope="col">Attedented class </th>
                    <th scope="col">Attendance Percentage</th>
                   
                    
                </tr>
                <?php         
        $s=1;
        $date= $_SESSION['a_date'];
        $dates=$_SESSION['a_dates'];
        $cor= $_SESSION['cor'];
        $fname=$_SESSION['faname'];
        $batch=$_SESSION['batch'];
        $sub=  $_SESSION['subject'];                
       $m="select Reg_no from student where course='$cor' and batch='$batch'  ";
       $res=mysqli_query($conn,$m);
       while($row=mysqli_fetch_assoc($res))
       {
        foreach($row as $key ) {  

            $rollNo= $key; 
            
            $q= "select count(Attendance_Status)  from  attendance_record where  course='$cor'and Faculty_Name='$fname'and batch='$batch'and subject='$subject' and Date between '$date' and  '$dates' and Attendance_Status='present' and  Reg_no='$rollNo'  and semestar='$sem' ";
            $r=mysqli_query($conn,$q);
           
          while($row=mysqli_fetch_array($r))
              
              
          {
            $c=$row['count(Attendance_Status)'];
                  
          
          
      ?>
  </thead>
  <tbody>
      <tr>
      
          
          <td><?php echo $s;?></td>
          <td><?php echo $key;?></td>
          <td><?php $query="select Name  from  attendance_record where  Reg_no='$rollNo'  ";
       $res1=mysqli_query($conn,$query);
       $row=mysqli_fetch_array($res1);
       echo $row['Name']; ?></td>
          <td><?php  echo $c;?></td>
          <td><?php $per=($c/$t)*100;echo number_format((float)$per, 2, '.', '')."%";?></td>
  
          
          
        
      </tr>
  <?php   
            $s++;
           
          }
        }
    }

      
      
      
  ?> 
        

       
       
      
      
       
     
     
                    

                
                
            

            </tbody>
        </table>
    </div>
            
            
          </form><br>

                
                   
                    

                    <script type="text/javascript" src="src/jquery-3.3.1.slim.min.js"></script>

                    <script type="text/javascript" src="src/jspdf.min.js"></script>

                    <script type="text/javascript" src="src/jspdf.plugin.autotable.min.js"></script>

                    <script type="text/javascript" src="src/tableHTMLExport.js"></script>

                    <script type="text/javascript">
                    
                    $("#json").on("click",function(){
                        $("#example").tableHTMLExport({
                        type:'json',
                        filename:'sample.json'
                        });
                    });

                    $("#pdf").on("click",function(){
                        $("#example").tableHTMLExport({
                        type:'pdf',
                        filename:'sample.pdf'
                        });
                    });

                    $("#csv").on("click",function(){
                        $("#example").tableHTMLExport({
                        type:'csv',
                        filename:'sample.csv'
                        });
                    });

   
                    </script>
    </div>
</div>
<script src="js/main.js"></script>
<?php include 'footer.html';?>
</body>
</html>


