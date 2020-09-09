<?php
$willdeletedID=$_GET['id'];
$connection=mysqli_connect("localhost","root","","corporate");
mysqli_set_charset($connection,"utf8");
$result=mysqli_query($connection,"DELETE FROM products WHERE id=".$willdeletedID);
if($result>0){
	echo "Successfully deleted, you will be redirected in 2 seconds.";
	header("refresh:2;url=productdelete.php");
}
else{
	echo "There was a problem, it could not be deleted";
}
?>