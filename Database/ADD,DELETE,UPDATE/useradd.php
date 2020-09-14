<?php
$_Username=$_POST['Username'];
$_Name=$_POST['Name'];	
$_Lastname=$_POST['Lastname'];	
$_Age=$_POST['Age'];	
$_Job=$_POST['Job'];	
$_Address=$_POST['Address'];	
$_Facebook=$_POST['Facebook'];	
$_Instagram=$_POST['Instagram'];	
$_Twitter=$_POST['Twitter'];	
$_Mail=$_POST['Mail'];	
$_Password=$_POST['Password'];
$connetion=mysqli_connect("localhost","root","","user");
mysqli_set_charset($connetion,"utf8");

$sqladd="INSERT INTO usertable(username,name,lastname,age,job,address,facebook,instagram,twitter,mail,password)
VALUES('$_Username','$_Name','$_Lastname','$_Age','$_Job','$_Address','$_Facebook','$_Instagram','$_Twitter','$_Mail','$_Password')";
$result=mysqli_query($connetion,$sqladd);
	if($result==0){
		echo "Could not be added";
	}
	else{
		echo "Added";
		header("refresh:0;url=index.php");

	}
?>