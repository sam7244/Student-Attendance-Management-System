<?php
session_start();
$host="localhost";
$username="root";
$password='';
$db="attendance";
$conn=mysqli_connect("$host","$username","$password","$db");
$flag=0;
$status="";
$flag=0;
if(!isset($_SESSION['email']))

{
    header('location:firstpage.php');			

}

   if(isset($_POST['login']))
        
        {
            
           
            $status=$_POST['rno'];
             

            foreach($status as $id=>$val)
             { 
                
                $name=  $_POST['name'][$id];
                $email=  $_POST['email'][$id];
                $course=  $_POST['course'][$id];
                if(empty($val) || empty($name) || empty($email) || empty($course))
                {
                    echo "<script>alert('input fileds are empty')</script>";
                }
                else
                {
                $q="insert into faculty  values('','$name','$email','$name','$course')"; 
                $r=mysqli_query($conn,$q);
                if($r)
                    $flag=1;
                }
              
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
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
body {
    color: #404E67;
    background: #F5F7FA;
    font-family: 'Open Sans', sans-serif;
}
.table-wrapper {
    width: 1200px;
    margin: 30px auto;
    background: #fff;
    padding: 20px;  
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 10px;
    margin: 0 0 10px;
}
.table-title h2 {
    margin: 6px 0 0;
    font-size: 22px;
}
.table-title .add-new {
    float: right;
    height: 30px;
    font-weight: bold;
    font-size: 12px;
    text-shadow: none;
    min-width: 100px;
    border-radius: 50px;
    line-height: 13px;
}
.table-title .add-new i {
    margin-right: 4px;
}
table.table {
    table-layout: fixed;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}
table.table th:last-child {
    width: 100px;
}
table.table td a {
    cursor: pointer;
    display: inline-block;
    margin: 0 5px;
    min-width: 24px;
}    
table.table td a.add {
    color: #27C46B;
}
table.table td a.edit {
    color: #FFC107;
}
table.table td a.delete {
    color: #E34724;
}
table.table td i {
    font-size: 19px;
}
table.table td a.add i {
    font-size: 24px;
    margin-right: -1px;
    position: relative;
    top: 3px;
}    
table.table .form-control {
    height: 32px;
    line-height: 32px;
    box-shadow: none;
    border-radius: 2px;
}
table.table .form-control.error {
    border-color: #f50000;
}
table.table td .add {
    display: none;
}
</style>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
    var actions = $("table td:last-child").html();
    // Append table with add row form on add new button click
    $(".add-new").click(function(){
        
        var index = $("table tbody tr:last-child").index();
        var row = '<tr>' +
            '<td><input type="text" class="form-control" name="rno[]" id="name" required="required"></td>' +
            '<td><input type="text" class="form-control" name="name[]" id="department" required="required"></td>' +
            '<td><input type="text" class="form-control" name="email[]" id="department" required="required"></td>' + 
            '<td><select  class="form-control" name="course[]" onchange="manage()"  required="required"><option value=""> Select Course </option><option value="App and Software Development">App and Software Development</option><option value="Retail and Supply Chain Management">Retail and Supply Chain Management</option><option value="Digital Media and Film Making">Digital Media and Film Making</option></select></td>' +


            '<td>' + actions + '</td>' +
        '</tr>';
        $("table").append(row);     
        $("table tbody tr").eq(index + 1).find(".add").toggle();
        $('[data-toggle="tooltip"]').tooltip();
    });
    // Add row on add button click
    $(document).on("click", ".add", function(){
        var empty = false;
        var input = $(this).parents("tr").find('input[type="text"]');
        input.each(function(){
            if(!$(this).val()){
                $(this).addClass("error");
                empty = true;
            } else{
                $(this).removeClass("error");
            }
        });
        $(this).parents("tr").find(".error").first().focus();
        if(!empty){
            input.each(function(){
                $(this).parent("td").html($(this).val());
            });         
          
        }       
    });
 
    // Delete row on delete button click
    $(document).on("click", ".delete", function(){
        $(this).parents("tr").remove();
    
    });
});
</script>
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
           
            <li>
                    <a href="managementaddstudent.php"><span class="fa fa-arrow-right mr-3"></span> Add student</a>
                </li>
                <li>
                    <a href="admin/r.php"><span class="fa fa-trash-o mr-3"></span> Remove Student</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-arrow-right mr-3"></span> Add Faculty</a>
                </li>
                <li>
                    <a href="admin/removefaculty.php"><span class="fa fa-trash-o mr-3"></span> Remove Faculty</a>
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
		Faculty Data Saved sucessfully
		
		</div><?php }  ?>
        <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Add <b>Faculty</b></h2></div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New</button>
                    </div>
                </div>
            </div>
            <form method="POST" action="">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Faculty Name</th>
                        <th>Faculty Email</th>
                        <th>Course</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                             <td><div class="form-group">
                        <input type="text" name="rno[]" class="form-control" id="formGroupExampleInput" required="required">
  </div></td>
                        <td><div class="form-group">
                        <input type="text" name="name[]" class="form-control" id="formGroupExampleInput"  required="required">
  </div></td>
                        <td><div class="form-group">
                        <input type="text"  name="email[]" class="form-control" id="formGroupExampleInput"  required="required">
  </div></td>
                        <td><div class="form-group">
                        <select class="form-control"  name="course[]" required="required"><option value=""> Select Course </option><option value="App and Software Development">App and Software Development</option><option value="Retail and Supply Chain Management">Retail and Supply Chain Management</option><option value="Digital Media and Film Making">Digital Media and Film Making</option></select>
  </div></td>
                        <td>
                            
                            <a class="delete" ><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                    
                </tbody>
            </table>
            <br>
             <button type="submit" name="login" id="btn-submit"  class="btn btn-success">Submit</button>
         </form>
        </div>
    </div>

        </div>
    </div>
          
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
        <?php include 'footer.html';?>
</body>

</html>