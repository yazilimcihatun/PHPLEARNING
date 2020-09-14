  
<?php
$willdeletedID=$_GET['id'];
$connection=mysqli_connect("localhost","root","","user");
mysqli_set_charset($connection,"utf8");
$result=mysqli_query($connection,"DELETE FROM usertable WHERE id=".$willdeletedID);
if($result>0){
	echo "Successfully deleted, you will be redirected in 2 seconds.";
	header("refresh:0;url=index.php");
}
else{
	echo "There was a problem, it could not be deleted";
}
?>
