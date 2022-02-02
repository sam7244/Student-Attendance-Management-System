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
                $q="insert into faculty  values('','$name','$email','$course')"; 
                $r=mysqli_query($conn,$q);
                if($r)
                    $flag=1;
                }
              
             }
            
           
            
        }
    
    
    ?>
    <HTML>

    <HEAD>
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
        <TITLE> Add/Remove dynamic rows in HTML table </TITLE>
        <SCRIPT language="javascript">
            function addRow(tableID) {
    
                var table = document.getElementById(tableID);
    
                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);
    
                var cell1 = row.insertCell(0);
                var element1 = document.createElement("input");
                element1.type = "checkbox";
                element1.name="chkbox[]";
                cell1.appendChild(element1);
    
                var cell2 = row.insertCell(1);
                // cell2.innerHTML = rowCount + 1;
                var element2 = document.createElement("input");
        
                element2.type = "text";
                element2.name = "rno[]";
                
                cell2.appendChild(element2);
               
    
                var cell3 = row.insertCell(2);
                var element3 = document.createElement("input");
                element3.type = "text";
                element3.name = "course[]";
            
                cell3.appendChild(element3);

                var cell3 = row.insertCell(2);
                var element3 = document.createElement("input");

                element3.type = "text";
                element3.name = "name[]";
        
                cell3.appendChild(element3);

                var cell3 = row.insertCell(3);
                var element3 = document.createElement("input");

                element3.type = "text";
                element3.name = "email[]";
        
                cell3.appendChild(element3);

              
                
    
    
            }
    
            function deleteRow(tableID) {
                try {
                var table = document.getElementById(tableID);
                var rowCount = table.rows.length;
    
                for(var i=0; i<rowCount; i++) {
                    var row = table.rows[i];
                    var chkbox = row.cells[0].childNodes[0];
                    if(null != chkbox && true == chkbox.checked) {
                        table.deleteRow(i);
                        rowCount--;
                        i--;
                    }
    
    
                }
                }catch(e) {
                    alert(e);
                }
            }
    
        </SCRIPT>
    </HEAD>
    <BODY>
    <?php if($flag){  ?>
		<div class="alert alert-success">
		Students Data Saved sucessfully
		
		</div><?php }  ?>
       <form action="" method="POST">
        <INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />
    
        <INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable')" />
         <br>
        <!-- <script>
        if(document.getElementById('save_data')){
            console.log("inside if")
            document.getElementById('save_data').disabled=true;
        }
        </script> -->
        
             

        <TABLE id="dataTable" width="350px" border="1">
                <tr>
                    <th>check</th>
                    <th>Id</th>
                    <th>Faculty Name</th>
                    <th>Faculty Email</th>
                    <th>Course</th>

                </tr>
            <TR>
                <TD><INPUT type="checkbox" name="chk"></TD>
                <!-- <TD> 1 </TD> -->
                <TD> <INPUT type="text"  name="rno[]" required="required"> </TD>
                <TD> <INPUT type="text"  name="name[]" required="required"> </TD>
                <TD> <INPUT type="text"  name="email[]" required="required"> </TD>
                <TD> <INPUT type="text"  name="course[]" required="required"> </TD>

            </TR>
        </TABLE>
      
        <button type="submit" name="login" id="btn-submit"  class="btn btn-success">Submit</button>
        </form>
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>

    </BODY>
    </HTML>