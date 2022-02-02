<?php
session_start();
$host="localhost";
$username="root";
$password='';
$db="attendance";
$conn=mysqli_connect("$host","$username","$password","$db");
$flag=0;
$status="";

if(!isset($_SESSION['email']))

{
    header('location:firstpage.php');			

}





 

    if(isset($_POST['submit']))
		
	{   
         
        
         $status=$_POST['status'];
         $br= $_SESSION['co'];
         $fname=$_SESSION['fname'];
         $sem=   $_SESSION['sem'];
         $batch= $_SESSION['batch'];
         $class=$_SESSION['class'];
   

         $sub= $_SESSION['sub'];

         $quer="select 	name from subject where  id='$sub' ";
         $result2=mysqli_query($conn,$quer);
         $row=mysqli_fetch_assoc($result2);
         $subject=$row['name'];
        //end
        

         $fileExistsFlag = 0; 
         $fileName = $_FILES['Filename']['name'];
         $link = mysqli_connect("localhost","root","","attendance") or die("Error ".mysqli_error($link));
         /* 
         *    Checking whether the file already exists in the destination folder 
         */
         $query = "SELECT filename FROM filedetails WHERE filename='$fileName'";    
         $result = $link->query($query) or die("Error : ".mysqli_error($link));
         while($row = mysqli_fetch_array($result)) {
             if($row['filename'] == $fileName) {
                 $fileExistsFlag = 1;
             }        
         }
         /*
         *     If file is not present in the destination folder
         */
         if($fileExistsFlag == 0) { 
             $target = "files/";        
             $fileTarget = $target.$fileName;    
             $tempFileName = $_FILES["Filename"]["tmp_name"];
             $fileDescription = $_POST['Description'];    
             $result = move_uploaded_file($tempFileName,$fileTarget);
             /*
             *    If file was successfully uploaded in the destination folder
             */
            $dl = $_POST['drivelink'];    
             if($result)
             { 
                 echo "<script>alert('Your file ".$fileName." has been successfully uploaded')</script>";        
                 $query = "INSERT INTO filedetails(filepath,filename,comments,link,course,batch,Faculty_Name,semestar,sub,date,class) VALUES ('$fileTarget','$fileName','$fileDescription','$dl','$br','$batch','$fname',' $sem','$subject',now(),'$class')";
                 $link->query($query) or die("Error : ".mysqli_error($link));  
                
                 foreach($status as $id=>$val)
                 {
                  
                   $name=  $_POST['name'][$id];
                    $reg_no=  $_POST['reg_no'][$id];

                    $q="insert into attendance_record(id,Reg_no,Name,Attendance_Status,course,batch,Faculty_Name,semestar,subject,Date,class) values('','$reg_no','$name','$val','$br','$batch','$fname','$sem','$subject',now(),'$class')";
                    $r=mysqli_query($conn,$q);
                  
                  
                 }
              
                 $query="insert into faculty_attendence(id,faculty_name,course,batch,sem,subject,Date) values('','$fname','$br','$batch','$sem','$subject',now())";
                 $res=mysqli_query($conn,$query);
                                if($r && $res)
                                {
                                    $flag=1;
                    
                                }
                          
             }
             else {            
                 echo "<script>alert('Sorry !!! There was an error in uploading your file')</scipt>";            
             }
             mysqli_close($link);
         }
         /*
         *     If file is already present in the destination folder
         */
         else {
             echo "<script>alert('File ".$fileName." already exists in your folder. Please rename the file and try again.')</script>";
             mysqli_close($link);
         }  

     
					
					  
                

    
                      
	   
	}


?>


<!doctype html>
<html lang="en">

<head>
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
            <h1><a href="#" class="logo" style="background:orange;colo:#fff;">SDM B.voc</a></h1>
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

        <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">
		
		<?php if($flag){  ?>
		<div class="alert alert-danger">
		Attendance Data Saved sucessfully
		
		</div><?php }  ?>
		<form action="tabledata.php" method="POST" name="form1"  enctype="multipart/form-data">
        <label for="present" style="float:right;color:#000;" class="mx-2"  > All present</label><input type="radio"  style="float:right;" class="mt-1"  name="group4" value="1" onclick="selectAll(form1)">
            <table class="table" style="background:#fff;">
			
                <thead class="thead-dark">
                    <tr>
					    <th scope="col">SL No</th>
                        <th scope="col">Reg no</th>
                        <th scope="col">Name</th>
                        <th scope="col">Status</th>
						
                    </tr>
                    <?php 
                        $br= $_SESSION['co'];
                        $batch= $_SESSION['batch'];
                        $query="select * from student where course='$br' and batch='$batch' ";
						$result=mysqli_query($conn,$query);
						$counter=0;
						$s=1;
                        while($row=mysqli_fetch_assoc($result))
							
                            
                        {
						
                    ?>
                </thead>
                <tbody>
                    <tr>
					
					     
                        <td><?php echo $s;?></td>
                        <td><?php echo $row['Reg_no'];?><input type="hidden" value="<?php echo $row['Reg_no'];?>" name="reg_no[]"></td>
                        <td><?php echo $row['Name'];?><input type="hidden" value="<?php echo $row['Name'];?>" name="name[]"></td>
						<td><input type="radio"  name="status[<?php echo $counter; ?>]" value="present" required 
						<?php if(isset($_POST['status'][$counter]) && $_POST['status'][$counter]=="present")
						      {
								  echo "checked=checked";
							  }
					     ?>
						 
						
						
						>  Present
						    <input  type="radio"  name="status[<?php echo $counter; ?>]" value="absent" 
                           <?php if(isset($_POST['status'][$counter]) && $_POST['status'][$counter]=="absent")
						      {
								  echo "checked=checked";
							  }
					       ?> >
							Absent</td>
						
                      
                    </tr>
				<?php	
						
						  $counter++;
						  $s++;
						}

				?>
					
				
				

                </tbody>
            </table>
			<br>
				  <div class="form-group">
              
					<label for="exampleFormControlFile1" style="color:#000;font-weight:bold;font-size:16px;">Upload Online Attendance  file</label> <br>
					<input type="file" class="form-control-file" id="exampleFormControlFile1" name="Filename" required>
				  </div>
				  <div class="form-group">
                    <label for="exampleFormControlTextarea1" style="color:#000;font-size:16px;"><b>Upload Notes Material (Google Drive Link)</b></label>
					<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="drivelink" max-length="200"></textarea>
				  </div>
                  <div class="form-group">
                    <label for="exampleFormControlTextarea1" style="color:#000;font-size:16px;"><b>Enter Topics discussed</b></label>
					<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="Description" max-length="200" required></textarea>
				  </div>
				 
			  
				  

                <br>
                        
			     <button type="submit" name="submit" class="btn btn-danger">Save Data</button>
	      </form>

    </div>

</div>  
<?php include 'footer.html';?>
<script type="text/javascript">
function selectAll(form1) {
  
  var check = document.getElementsByName("group4"),
	    radios = document.form1.elements;
  
  //If the first radio is checked
	if (check[0].checked) {
  
		for( i = 0; i < radios.length; i++ ) {
			
      //And the elements are radios
			if( radios[i].type == "radio" ) {
        
        //And the radio elements's value are 1
				if (radios[i].value == "present" ) {
          //Check all radio elements with value = 1
					radios[i].checked = true;
				}
        
			}//if
      
		}//for
    
  //If the second radio is checked
	} else {
    
		for( i = 0; i < radios.length; i++ ) {
			
      //And the elements are radios
			if( radios[i].type == "radio" ) {
        
        //And the radio elements's value are 0
				if (radios[i].value == 0 ) {
  
          //Check all radio elements with value = 0
					radios[i].checked = true;
  
				}
        
			}//if
      
		}//for
    
	};//if
  return null;
}
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
</body>

</html>