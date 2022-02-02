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
  <title></title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>

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

      
      
        </form>

<center>
<button class="btn btn-success" id="json">JSON</button>

<button class="btn btn-success" id="pdf">PDF</button>

<button class="btn btn-success" id="csv">CSV</button>

</center>

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

</body>
</html>