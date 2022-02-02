<?php
session_start();
$host="localhost";
 $password='';
 $db="attendance";
 $_SESSION['msg']='';
 $cnt=1;
 $conn=mysqli_connect("$host","root","$password","$db");
 if(!isset($_SESSION['email']))

{
    header('location:../firstpage.php');			

}
if(isset($_GET['del']))
{
	$id=intval($_GET['del']);
	$adn="delete from student where id='$id'";
		$r=mysqli_query($conn,$adn);
        echo "<script>alert('Data Deleted');</script>" ;
}
?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>SDM B.voc official</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	
<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directorssies=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+510+',height='+430+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}
</script>
<style>
body
	{
		background-image:url('back15.jpg');
		background-repeat:no-repeat;
		background-size:cover;
	}
</style>
</head>

<body>
	<?php include('includes/adminheader.php');?>

	<div class="ts-main-content">
			<?php include('includes/adminsidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
					<br><br><br>
				
						<div class="panel panel-default">
							<div class="panel-heading">All Room Details</div>
							<div class="panel-body">
							
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" >
									<thead>
										<tr>
											<th>Sno.</th>
											<th>Reg no</th>
											<th>Student Name</th>
											<th>Course</th>							
											<th>Action</th>
										</tr>
									</thead>

									<tbody>
<?php	

$ret="select * from student";
$res=mysqli_query($conn,$ret);

while($row=$res->fetch_object())
	  {
	  	?>
<tr><td><?php echo $cnt;?></td>
<td><?php echo $row->Reg_no	;?></td>
<td><?php echo $row->Name;?></td>
<td><?php echo $row->course;?></td>

<td>

<a href="r.php?del=<?php echo $row->id;?>" title="Delete Record" onclick="return confirm('Do you want to delete');"><i class="fa fa-close"></i></a></td>
										</tr>
									<?php
$cnt=$cnt+1;
									 } ?>
											
										
									</tbody>
								</table>

								
							</div>
						</div>

					
					</div>
				</div>

			

			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
