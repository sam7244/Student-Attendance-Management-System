<?php
session_start();
$host="localhost";
$username="root";
$password='';
$db="attendance";
$conn=mysqli_connect("$host","$username","$password","$db");


?>
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
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div class="wrapper d-flex align-items-stretch" style="background-color:#f1f1f1;">
        <nav id="sidebar">
            <div class="custom-menu">
                <button type="button" id="sidebarCollapse" class="btn btn-primary">
                    <i class="fa fa-bars"></i>
                    <span class="sr-only">Toggle Menu</span>
                </button>
            </div>
            <h1><a href="#" class="logo">SDM B.voc</a></h1>
            <ul class="list-unstyled components mb-5">
                <li class="active">
                    <a href="main.php"><span class="fa fa-home mr-3"></span> Scheduled Class</a>
                </li>
                <li>
                    <a href="changepassword.php"><span class="fa fa-user mr-3"></span> Change password</a>
                </li>
                <li>
                    <a href="viewattendance.php"><span class="fa fa-cloud mr-3"></span>View attendance</a>
                </li>
                <li>
                    <a href="logout.php"><span class="fa fa-sticky-note mr-3"></span> Logout</a>
                </li>

            </ul>
             
        </nav>
    <div id="content" class="p-4 p-md-5 pt-5">
    <div class="container-fluid">
		
		<u><center><h3><b>ATTENDANCE RECORD</b></h2></center></u>
        <center><h6 style="color:#000;">Date:<?php 	 $date= $_SESSION['a_date'];
        $date=date_create($date);
           echo date_format($date,"d/m/Y");   ?></h6>
		</div></center>


                    <form action="" method="POST" id="contents">
                    <div class="table-responsive">
                                <table class="table" id="example"  >
                        
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
                                            $q="select * from  attendance_record where Date='$date' and course='$br' ";
                                            
                                            $r=mysqli_query($conn,$q);
                                    
                                
                                            while($row=mysqli_fetch_assoc($r))
                                
                                                
                                            {
                                    
                                
                                
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
                                
                            ?>
                                    
                            

                                    </tbody>
                                </table>
                                <?php
                                    $date= $_SESSION['a_date'];
                                            $br =  $_SESSION['cor'];
                                    $quer="select * from filedetails where course='$br' and date='$date' ";
                                    $results=mysqli_query($conn,$quer);
                                        
                                    while($row=mysqli_fetch_assoc($results))
                                    {
                                        ?>
                                            <div class="form-group">
                                        <label for="exampleInputEmail1" style="color:#000;font-weight: bold;">Comments of the class</label>
                                        <input type="text"  name="branch"  value=" <?php echo $row['comments']; ?>" class="col-lg-12 col-sm-12 col-12 p-2" style="outline:none;border:none;text-indent:5px;" disabled >
                                        
                                            </div>
                                        <label for="exampleInputEmail1" style="color:#000;font-weight: bold;">file the class</label><br>
                                        <a href="<?php echo $row['filepath'];?>" download>   <button type="button" class="btn btn-danger">Download</button></a>
                            
                                
                                            <?php 
                                
                                
                                }

                                            
                            ?>
                                        
                                    
                                        
                                    
                    </div>

                        
                        
                            </form><br>

                
                    <button class="btn btn-success" id="json">JSON</button>

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
    </div>
</div>

</body>
</html>