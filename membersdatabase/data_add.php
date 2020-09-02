 <?php
	$_username=$_POST['username'];
	$_name=$_POST['name'];
	$_lastname=$_POST['lastname'];
	$_age=$_POST['age'];
	$_gender=$_POST['gender'];
	$_martital=$_POST['martital'];
	$_job=$_POST['job'];
	$_mail=$_POST['mail'];
	$_password=$_POST['password'];
	$_hobbies=$_POST['hobbies'];
	$_interests=$_POST['interests'];
	$connection=mysqli_connect("localhost", "root","", "corporate");
	mysqli_set_charset($connection,"utf8");
	$sqladd="INSERT INTO members(Username,Name,Lastname,Age,Gender,Martital_status,Job,Mail,Password,Hobbies,Interests)
	VALUES('$_username','$_name','$_lastname','$_age','$_gender','$_martital','$_job','$_mail','$_password','$_hobbies','$_interests')";
	$result=mysqli_query($connection,$sqladd);
	if($result==0){
		echo "Could not be added";
	}
	else{
		echo "Added";
	}
?>
