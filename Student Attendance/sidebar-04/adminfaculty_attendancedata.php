<?php
session_start();
$host="localhost";
$username="root";
$password='';
$db="attendance";
$conn=mysqli_connect("$host","$username","$password","$db");

if(!isset($_SESSION['admin_email']))

{
    header('location:firstpage.php');			

}
$cor= $_SESSION['cor'];
$fname=$_SESSION['faname'];
$batch= $_SESSION['batch'];
$sem= $_SESSION['sem'];
$sub= $_SESSION['subject'];
                                            $quer="select 	name from subject where  id='$sub' ";
                                            $result2=mysqli_query($conn,$quer);
                                            $row=mysqli_fetch_assoc($result2);
                                            $sub=$row['name'];



?>


<!doctype html>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
                    <a href="adminchangepassword.php"><span class="fa fa-key mr-3"></span> Change password</a>
                </li>
            
                <li>
                    <a href="logout.php"><span class="fa fa-sign-out mr-3"></span> Logout</a>
                </li>

            </ul>

        </nav>
    <div id="content" class="p-4 p-md-5 pt-5">
    <div class="container-fluid">
		
		<u style="color:#000;"><center><h3><b>FACULTY ATTENDANCE RECORD</b></h2></center></u>
        <center><h6 style="color:#000;">Course:<?php 	 $course= $_SESSION['cor'];
       
           echo $course;  ?><br>Faculty Name:<?php   $fname=$_SESSION['faname']; echo"$fname";      ?><br></h6>
           <h6 style="color:#000;"><mark style="background:#fff;">Total class conducted:<?php  
           //code to display faculty total attendence starts
           $query="select count(id) from  faculty_attendence where  course='$cor'and faculty_name='$fname' and batch='$batch' and sem='$sem' and subject='$sub' ";
           $r=mysqli_query($conn,$query);
           $row=mysqli_fetch_array($r);
           $totalclass=$row['count(id)'];
           echo $totalclass;

           ?></h6></mark>
		</div></center> <br>
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
                        <th scope="col">Faculty Name</th>
                        <th scope="col">Course</th>
                        <th scope="col">Batch</th>
                        <th scope="col">Subject</th>
                         <th scope="col">Date</th> 
                         
                        
                    </tr>
                    <?php         
                         $s=1;
                         $cor= $_SESSION['cor'];
                         $fname=$_SESSION['faname'];
            
                          $q="select * from  faculty_attendence where  course='$cor'and faculty_name='$fname' and batch='$batch' and sem='$sem' and subject='$sub'  ";
                          $r=mysqli_query($conn,$q);
                          $rw = mysqli_num_rows($r); 
                          if($rw>=1)
                          {
                        while($row=mysqli_fetch_array($r))
                            
                            
                        {
                                
                        
                        
                    ?>
                </thead>
                <tbody>
                    <tr>
                    
                        
                        <td><?php echo $s;?></td>
                        <td><?php echo $row['faculty_name'];?></td>
                        <td><?php echo $row['course'];?></td>
                        <td><?php echo"Batch ". $row['batch'];?></td>
                        <td><?php echo $row['subject'];?></td>
                         <td><?php  $date=date_create($row['Date']);
           echo date_format($date,"d-m-Y");  ?></td>
                        
                      
                    </tr>
                <?php   
                          $s++;
                         
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