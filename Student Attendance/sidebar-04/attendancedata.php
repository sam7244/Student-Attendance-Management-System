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



?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Sidebar 04</title>
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
  <title></title>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
     
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
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
		
		<u style="color:#000;"><center><h3><b>ATTENDANCE RECORD</b></h2></center></u><!-- Button trigger modal -->
<!-- <button type="button"style="float:right;" class="btn btn-light" data-toggle="modal" data-target="#exampleModal" data-toggle="tooltip" data-placement="top" title="Filter data">
<i style="float:right;font-size:20px;color:#000;" class="fa fa-filter"></i>
</button> -->

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
        <center><h6 style="color:#000;">Date:<?php 	 $date= $_SESSION['a_date'];
        $date=date_create($date);
           echo date_format($date,"d/m/Y");   ?><br>Faculty:<?php $fname=$_SESSION['fname']; echo "$fname";   ?></h6></center>
		</div>
        


                    <form action="" method="POST" id="contents">
                    <div class="table-responsive">
                                <table class="table" id="example" style="background:#fff;" >
                        
                                    <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">id</th>
                                            <th scope="col">Reg_no</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Status</th>
                                            <!-- <th scope="col">Date</th> -->
                                
                                        </tr>
                                        <?php    
                                        
                                      
                               
                                       
                                         $s=1;
                                         $date= $_SESSION['a_date'];
                                            $br =  $_SESSION['cor'];
                                            $fname=$_SESSION['fname'];
                                            $sem=  $_SESSION['sem'];
                                            $batch= $_SESSION['batch'];
                                            $class=$_SESSION['class'];
 
                                            
                                            //start 
                                            $sub= $_SESSION['sub'];
                                            $quer="select 	name from subject where  id='$sub' ";
                                            $result2=mysqli_query($conn,$quer);
                                            $row=mysqli_fetch_assoc($result2);
                                            $sub=$row['name'];
                                            //end
                                            
                                           
                                            
                                            $q="select * from  attendance_record where course='$br' and Faculty_Name='$fname' 
                                            and Date='$date' and  semestar='$sem' and subject='$sub'and batch='$batch' and class='$class'";
                                           
                                            $query=mysqli_query($conn,$q);
                                    
                                            $array = array();
                                            while($row = mysqli_fetch_assoc($query))
                                            
                                            
                                              
                                
                                                
                                            {
                                                
                                               
                                                // add each row returned into an array
                                                    $array[] = $row;

                                                    // OR just echo the data:
                                                  //  echo $row['Reg_no'];
                                                   
                                                                                                    
                                                                                                    
                                          
                                                
                                                
                                
                                        ?>
                                    </thead>
                                    <tbody>
                                        <tr>
                            
                                
                                            <td><?php echo $s ?></td>
                                            <td><?php echo $row['Reg_no'];?></td>
                                            <td><?php echo $row['Name'];?></td>
                                <td><?php echo $row['Attendance_Status'];?></td>
                                <!-- <td><?php echo $row['Date'];?></td> -->
                                
                                        
                                        </tr>
                            <?php 
                                $s++;
                                
                        

                                          
                                    
                                    }
                                  //  print_r($array);
                            ?>
                                    
                            

                                    </tbody>
                                </table>
                                <?php
                                    $date= $_SESSION['a_date'];
                                            $br =  $_SESSION['cor'];
                                            $fname=$_SESSION['fname'];
                                            $batch= $_SESSION['batch'];
                                            
                                    $quer="select * from filedetails where course='$br' and date='$date' and Faculty_Name='$fname'and semestar='$sem' and sub='$sub' and batch='$batch' and class='$class' ";
                                    $results=mysqli_query($conn,$quer);
                                        
                                    while($row=mysqli_fetch_assoc($results))
                                    {
                                        ?>
                                          <div class="form-group">
                                        <label for="exampleInputEmail1" style="color:#000;font-weight: bold;font-size:16px;">Google Drive Link</label>
                                        <input type="text"  name="branch"  value=" <?php echo $row['link']; ?>" class="col-lg-12 col-sm-12 col-12 p-2" style="outline:none;border:none;text-indent:5px;background:#fff;" disabled  >
                                        
                                            </div>
                                            <div class="form-group">
                                        <label for="exampleInputEmail1" style="color:#000;font-weight: bold;font-size:16px;">Topics discussed</label>
                                        <input type="text"  name="branch"  value=" <?php echo $row['comments']; ?>" class="col-lg-12 col-sm-12 col-12 p-2" style="outline:none;border:none;text-indent:5px;background:#fff;" disabled  >
                                        
                                            </div>
                                        <label for="exampleInputEmail1" style="color:#000;font-weight: bold;font-size:16px;">Attendance file</label><br>
                                        <a href="<?php echo $row['filepath'];?>" download>   <button type="button" class="btn btn-danger">Download</button></a>
                            
                                
                                            <?php 
                                
                                
                                }

                                            
                            ?>
                                        
                                    
                                        
                                    
                    </div>

                        
                        
                            </form><br>

                
                    <!-- <button class="btn btn-success" id="json">JSON</button> -->
                    <h6 style="color:#000;font-size:16px;"><b>DOWNLOAD ATTENDANCE DATA</b></h6>
                    <button class="btn btn-success" id="pdf">PDF</button>

                    <button class="btn btn-success" id="csv">CSV</button>

                    

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
                     <script src="js/main.js"></script>
    </div>
</div>
<?php include 'footer.html';?>

</body>
</html>