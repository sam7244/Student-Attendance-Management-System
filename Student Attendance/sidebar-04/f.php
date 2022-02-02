<?php
if(isset($_POST['submit']))
{
    $file=$_FILES['file'];
                    
                    $fileName=$_FILES['file']['name'];
                    $fileTmpName=$_FILES['file']['tmp_name'];
                    $fileSize=$_FILES['file']['size'];
                    $fileError=$_FILES['file']['error'];
                    $fileType=$_FILES['file']['type'];
                    $fileExt=explode('.',  $fileName);
                    $fileActualExt=strtolower(end($fileExt));


            

                
                
                       if( $fileError==0)
                       {
                            if($fileSize<3000000) 
                            {
                               $fileNameNew=uniqid('',true).".".$fileActualExt;
                               $fileDestination='files/'. $fileNameNew;
                               if (file_exists($fileNameNew)) {
                                 echo "Sorry, file already exists.";
                                 }
                                 else
                                 {
                               move_uploaded_file($fileTmpName,$fileDestination);
                               header("location:tabledata.php");}
                            }
                            else
                            {
                                echo "<script>alert('sorry your file size is too big to upload !')</script>";
                            }
                       }
                       else
                       {
                         echo"their was an error file uploading your file!";
                       }

                    
                 
}

?>
<html>
    <body>
    <form name="form" method="post" action="" enctype="multipart/form-data" >
<input type="file" name="file" /><br /><br />
<input type="submit" name="submit" value="Upload"/>
</form>
   </body>
</html>