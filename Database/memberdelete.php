<html>
 
<head>
<meta charset="utf-8">
<title>Notlar</title>
</head>
 
<body>
<table border="1" align="center" width="80%">
<tr>
<td>Username</td><td>Name</td><td>Lastname</td><td>Age</td><td>Gender</td><td>Martital Status</td><td>Job</td><td>Mail</td><td>Password</td><td>Hobbies</td><td>Interests</td><td>Delete</td>
 
</tr>
<?php
$connection=mysqli_connect("localhost", "root","", "corporate");
$result=mysqli_query($connection,"SELECT * FROM members");
mysqli_set_charset($connection,"utf8");
 
while($line=mysqli_fetch_array($result))
{
echo '<tr>';
echo '<td>'.$line['Username'].'</td>';
echo '<td>'.$line['Name'].'</td>';
echo '<td>'.$line['Lastname'].'</td>';
echo '<td>'.$line['Age'].'</td>';
echo '<td>'.$line['Gender'].'</td>';
echo '<td>'.$line['Job'].'</td>';
echo '<td>'.$line['Mail'].'</td>';
echo '<td>'.$line['Password'].'</td>';
echo '<td>'.$line['Hobbies'].'</td>';
echo '<td>'.$line['Interests'].'</td>';
echo '<td> <a href="delete.php?id='.$line['id'].'" onclick="return warning();">DELETE</a> </td>';
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