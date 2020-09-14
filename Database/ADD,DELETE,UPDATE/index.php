
<html>
<head>
	<meta charset="utf-8">
	<title>Users Table</title>
</head>
 
<body>

<form method="POST" action="useradd.php">
<table border="1", align="center">
	<tr>
	<td colspan="2" align="center"> Adding a Record </td>
 	</tr>
	<tr>
		<td>Username</td>
		<td><input type="text" name="Username"></td>
		</tr>
		<tr>
		<td>Name</td>
		<td><input type="text" name="Name"></td>
		</tr>
		<tr>
		<td>Lastname</td>
		<td><input type="text" name="Lastname"></td>
		</tr>
		<tr>
		<td>Age</td>
		<td><input type="text" name="Age"></td>
		</tr>
		<tr>
		<td>Job</td>
		<td><input type="text" name="Job"></td>
		</tr>
		<tr>
		<td>Address</td>
		<td><input type="text" name="Address"></td>
		</tr>
		<tr>
		<td>Facebook</td>
		<td><input type="text" name="Facebook"></td>
		</tr>
		<tr>
		<td>Instagram</td>
		<td><input type="text" name="Instagram"></td>
		</tr>
		<tr>
		<td>Twitter</td>
		<td><input type="text" name="Twitter"></td>
		</tr>
		<tr>
		<td>Mail Address</td>
		<td><input type="text" name="Mail"></td>
		</tr>
		<tr>
		<td>Password</td>
		<td><input type="password" name="Password"></td>
		</tr>
		<tr>
		<td>Add</td>
		<td><input type="submit" name="Add"></td>
		</tr>
	</tr>
</table>
<br><br><br>

<table border="1" align="center" width="80%">
<tr>
<td>Username</td><td>Name</td><td>Lastname</td><td>Age</td><td>Job</td><td>Address</td><td>Facebook</td><td>Instagram</td><td>Twitter</td><td>Mail</td><td>Password</td><td>Delete</td><td>Update</td>
</tr>
<?php
$connection=mysqli_connect("localhost", "root","", "user");
$result=mysqli_query($connection,"SELECT * FROM usertable");
mysqli_set_charset($connection,"utf8");
 
while($line=mysqli_fetch_array($result))
{
echo '<tr>';
echo '<td>'.$line['username'].'</td>';
echo '<td>'.$line['name'].'</td>';
echo '<td>'.$line['lastname'].'</td>';
echo '<td>'.$line['age'].'</td>';
echo '<td>'.$line['job'].'</td>';
echo '<td>'.$line['address'].'</td>';
echo '<td>'.$line['facebook'].'</td>';
echo '<td>'.$line['instagram'].'</td>';
echo '<td>'.$line['twitter'].'</td>';
echo '<td>'.$line['mail'].'</td>';
echo '<td>'.$line['password'].'</td>';
echo '<td> <a href="delete.php?id='.$line['id'].'" onclick="return warning();">DELETE</a> </td>';
echo '<td> <a href="update.php?id='.$line['id'].'" onclick="return warning();">UPDATE</a> </td>';
echo '</tr>';
}
?>
 
</table>
 
</body>
</html>
<script language="javascript">fuction warning() {
if (confirm("Do you want to delete this record ?"))
	return true;
else
	return false;
}
</script>