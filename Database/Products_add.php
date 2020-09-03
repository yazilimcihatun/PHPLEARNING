<?php
$_Title = $_POST['Title'];
$_Subtitle 	= $_POST['Subtitle'];
$_Comment 	= $_POST['Comment'];
$_Price 	= $_POST['Price'];
$_Discounted 	= $_POST['Discounted'];
$_Color 	= $_POST['Color'];
$_Seo 	= $_POST['Seo'];
$_Labels 	= $_POST['Labels'];
$_Size 	= $_POST['Size'];
$_Brand 	= $_POST['Brand'];
$_Piece 	= $_POST['Piece'];
$_Delivery	= $_POST['Delivery'];
$_Favorites 	= $_POST['Favorites'];
$_Properties 	= $_POST['Properties'];
$_Upload 	= $_POST['Upload'];
$_Update 	= $_POST['Update'];
$connection=mysqli_connect("localhost","root","","corporate");
mysqli_set_charset($connection,"utf8");
$sqladd=" INSERT INTO products (title,subtitle,comment,price,discounted,color,seo,labels,size,brand,piece,delivery_date,properties,favorites,upload,update_)
VALUES('$_Title','$_Subtitle','$_Comment','$_Price','$_Discounted','$_Color','$_Seo','$_Labels','$_Size','$_Brand','$_Piece','$_Delivery','$_Favorites','$_Properties','$_Upload','$_Update')";
$result = mysqli_query($connection,$sqladd);
if($result==0){
	echo "Could not be added";
}
else{
	echo "Added";
}
?>
