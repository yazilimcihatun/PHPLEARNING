<html>
<head>
	<title>User Update</title>
		<meta charset="utf-8">
</head>
<body>
<?php
$connetion=mysqli_connect("localhost","root","","user");
  $connetion->set_charset("utf8");
 	 if (!$connetion) { 
      	die('Error: ' . mysqli_connect_error()); 
  	}else{
    	 echo "connection established. <hr>";
 	}
		if(isset($_GET['id'])){
			$id=$_GET['id'];
				if(isset($_POST['submit'])){
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

	$updatequery=mysqli_query($connetion, "UPDATE usertable SET username='$_Username', name='$_Name',lastname='$_Lastname',age='$_Age',job='$_Job',address='$_Address',facebook='$_Facebook',instagram='$_Instagram',twitter='$_Twitter',mail='$_Mail',password='$_Password' WHERE id='$id'");
			if($updatequery){
				echo "Kayıt eklendi...";
				header("refresh:0;url=index.php");
			}
		}
	}
	$siralama = mysqli_query($connetion, "SELECT * FROM usertable WHERE id='$id'");
		$kayit=mysqli_fetch_array($siralama);
		?>
		<form method="POST" action="">
		<table border="1", align="center">
	<tr>
		<td colspan="2" align="center"> Adding a Record </td>
 		</tr>
		<tr>
		<td>Username</td>
		<td><input type="text" name="Username" value="<?php echo $kayit['username']; ?>" /></td>
		</tr>
		<tr>
		<td>Name</td>
		<td><input type="text" name="Name" value="<?php echo $kayit['name']; ?>"></td>
		</tr>
		<tr>
		<td>Lastname</td>
		<td><input type="text" name="Lastname" value="<?php echo $kayit['lastname']; ?>"></td>
		</tr>
		<tr>
		<td>Age</td>
		<td><input type="text" name="Age" value="<?php echo $kayit['age']; ?>"></td>
		</tr>
		<tr>
		<td>Job</td>
		<td><input type="text" name="Job" value="<?php echo $kayit['job']; ?>"></td>
		</tr>
		<tr>
		<td>Address</td>
		<td><input type="text" name="Address" value="<?php echo $kayit['address']; ?>"></td>
		</tr>
		<tr>
		<td>Facebook</td>
		<td><input type="text" name="Facebook" value="<?php echo $kayit['facebook']; ?>"></td>
		</tr>
		<tr>
		<td>Instagram</td>
		<td><input type="text" name="Instagram" value="<?php echo $kayit['instagram']; ?>"></td>
		</tr>
		<tr>
		<td>Twitter</td>
		<td><input type="text" name="Twitter" value="<?php echo $kayit['twitter']; ?>"></td>
		</tr>
		<tr>
		<td>Mail Address</td>
		<td><input type="text" name="Mail" value="<?php echo $kayit['mail']; ?>"></td>
		</tr>
		<tr>
		<td>Password</td>
		<td><input type="password" name="Password" value="<?php echo $kayit['password']; ?>"></td>
		</tr>
		<tr>
		<td>Add</td>
		<td><input type="submit" name="submit" value="Add" ></td>
		</tr>
	</tr>
</table>
</form>
</body>
</html>
