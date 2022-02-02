<?php 
include "c.php";
session_start();
?>
<?php 


 $username = "";
    $_SESSION['a_date'] = ""; 
    $_SESSION['a_dates'] = "";
    $_SESSION['faname'] = "";


 if(!isset($_SESSION['admin_email']))

{
    header('location:firstpage.php');			

}
 
 	if (isset($_POST['login'])) {

		
        $date=$_POST['date'];
        $dates=$_POST['date2'];
        $courses=$_POST['co'];
        $faname=$_POST['faname']; 
        $batch=$_POST['batch'];
        $subject=$_POST['sub'];
        if(empty($date) || empty($dates) || empty($courses) || empty($faname) || empty($batch) || empty($subject) )
        {
            echo "<script>alert('input fileds are empty')</script>";
        }
        else
        {
        
        
        $_SESSION['a_date']=$date;
        $_SESSION['a_dates']=$dates;
   
        $_SESSION['cor']= $courses;
         
         $_SESSION['faname']= $faname;
         $_SESSION['batch']=$batch;
         $_SESSION['subject']=$subject;
        
		header('location:adminattendancedata.php');
        }
	}








?>
<!doctype html>
<html>
<head>
    <title>How to Auto populate dropdown with jQuery AJAX</title>
	
   
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="jquery-1.12.0.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function(){

            $("#sel_depart").change(function(){
                var deptid = $(this).val();

                $.ajax({
                    url: 'getUsers2.php',
                    type: 'post',
                    data: {depart:deptid},
                    dataType: 'json',
                    success:function(response){

                        var len = response.length;

                        $("#sel_user").empty();
                        for( var i = 0; i<len; i++){
                            var id = response[i]['id'];
                            var name = response[i]['subject'];

                            $("#sel_user").append("<option value='"+id+"'>"+name+"</option>");

                        }
                    }
                });
            });

        });
    </script>
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>


        
            

<div class="wrapper d-flex align-items-stretch" style="background-image: url(bg-01.jpg);background-repeat:no-repeat;background-size:cover;">
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
                    <a href="adminviewattendance.php"><span class="fa fa-cloud mr-3"></span>View attendance</a>
                </li>
                <li>
                    <a href="adminfaculty_attendance.php"><span class="fa fa-cloud mr-3"></span>Faculty attendance</a>
                </li>
              
                <li>
                    <a href="adminchangepassword.php"><span class="fa fa-user mr-3"></span> Change password</a>
                </li>
            
                <li>
                    <a href="logout.php"><span class="fa fa-sticky-note mr-3"></span> Logout</a>
                </li>

            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5 pt-5">
        <form action="" method="POST">
        <div class="form-group">
                    <label for="exampleInputEmail1" style="color:#000;font-weight: bold;font-size:16px;">Select  Course</label>
                    <!-- <input type="text" id="browser" name="co" list="course" placeholder="  Select Your course" class="col-lg-12 col-sm-12 col-12 p-2" style="outline:none;border:none;text-indent:5px;" required>
                       <datalist id="course"></datalist> -->
                       <?php $r="select * from course";
                                $result=mysqli_query($con,$r);
                                echo " <input type='search'  name='co' list='course' placeholder='  Select Your course' class='col-lg-12 col-sm-12 col-12 p-2' style='outline:none;border:none;text-indent:5px;' required>";
                                echo "<datalist id='course'>";

                                    while($row = mysqli_fetch_array($result)) {
                                        echo "<option> $row[course] </option>";
                                    }

                                echo "</datalist>";


                        ?>

                </div>
        <div class="form-group">
        <label for="exampleInputEmail1" style="color:#000;font-weight: bold;font-size:16px;">Select Faculty  Name</label>
    <select  id="sel_depart" name='faname' class="form-control" id="exampleFormControlSelect1">
    <option value="0">Select Faculty Name</option>
    <?php 
            // Fetch Department
            $sql_department = "SELECT * FROM faculty_name";
            $department_data = mysqli_query($con,$sql_department);
            while($row = mysqli_fetch_assoc($department_data) ){
                $departid = $row['id'];
                $depart_name = $row['faculty_name'];
              
                // Option
                echo "<option value='".$departid."' >".$depart_name."</option>";
            }
            ?>
        </select>
               
            
        </div>
        
        <div class="form-group">
        <label for="exampleInputEmail1" style="color:#000;font-weight: bold;font-size:16px;">Select Subject</label>
            <select   id="sel_user" class="form-control"  name="sub" id="exampleFormControlSelect1">
            <option value="0"> Select Subject </option>
            </select>
        </div>
        <div class="form-group">
                <label for="exampleFormControlSelect1" style="color:#000;font-weight: bold;font-size:16px;"> Select Batch</label>
                <select class="form-control" name="batch"    required="required">
                <option value=""> Select batch </option>
                <option value="2019">Batch 2019</option>
                <option value="2020">Batch 2020</option>
                <option value="2021">Batch 2021</option>
                <option value="2022">Batch 2022</option>
                <option value="2023">Batch 2023</option>
                </select>
               </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" style="color:#000;font-weight: bold;font-size:16px;" >Select date From</label>
                    <input type="date"   max="<?php 
         echo date('Y-m-d');
     ?>" class="form-control border" id="exampleInputdate" name="date" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" style="color:#000;font-weight: bold;font-size:16px;" >Select date To</label>
                    <input type="date"   max="<?php 
         echo date('Y-m-d');
     ?>" class="form-control border" id="exampleInputdate" name="date2" required>
                </div>

                <button type="submit" class="btn btn-danger" name="login"> View attendance</button>
    </div>
    </form>
  

</body>
</html>

