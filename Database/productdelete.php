<html>
 
<head>
<meta charset="utf-8">
<title>Notlar</title>
</head>
 
<body>
<table border="1" align="center" width="80%">
<tr>
 <td>title </td><td>subtitle</td><td> comment</td><td> price </td><td>discounted</td><td> color</td><td> seo </td><td>labels </td><td>size</td><td> brand</td><td> piece</td><td> delivery date </td><td>properties</td><td> favorites</td><td> upload </td><td>update  </td><td>DELETE</td>
</tr>
<?php
$connection=mysqli_connect("localhost", "root","", "corporate");
$result=mysqli_query($connection,"SELECT * FROM products");
mysqli_set_charset($connection,"utf8");
 
while($line=mysqli_fetch_array($result))
{
echo '<tr>';
echo '<td>'.$line['title'].'</td>';
echo '<td>'.$line['subtitle'].'</td>';
echo '<td>'.$line['comment'].'</td>';
echo '<td>'.$line['price'].'</td>';
echo '<td>'.$line['discounted'].'</td>';
echo '<td>'.$line['color'].'</td>';
echo '<td>'.$line['seo'].'</td>';
echo '<td>'.$line['labels'].'</td>';
echo '<td>'.$line['size'].'</td>';
echo '<td>'.$line['brand'].'</td>';
echo '<td>'.$line['piece'].'</td>';
echo '<td>'.$line['delivery_date'].'</td>';
echo '<td>'.$line['properties'].'</td>';
echo '<td>'.$line['favorites'].'</td>';
echo '<td>'.$line['upload'].'</td>';
echo '<td>'.$line['update_'].'</td>';

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