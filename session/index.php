<?php
//It prepares the session event for use.
session_start();
$connection = mysqli_connect("localhost","root","","user");
if ( mysqli_connect_errno ()) {
 // Shows the error
	exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}
// isset () will check if data exists.
if ( !isset($_POST['username'], $_POST['password']) ) {
// Data could not be retrieved.
	exit('Please fill in the username and password fields!');
}// Prepare :Prepares the SQL query stmt= statement abbreviation
if ($stmt = $connection->prepare('SELECT id, password FROM usertable WHERE username = ?')) {
// bind_param: Enters SQL queries as parameters. (i = integer s = string, d = double, b = blob)
	$stmt->bind_param('s', $_POST['username']);
	$stmt->execute();
	//H// We will keep the result so that we can check if the account exists in the database.
	$stmt->store_result();
if ($stmt->num_rows > 0) {
	$stmt->bind_result($id, $password);
	$stmt->fetch();
	// Account exists, now we verify the password.
if ($_POST['password'] === $password) {
		//session_regenerate_id= Replaces the current session ID with a new one and keeps session information
		session_regenerate_id();
		$_SESSION['loggedin'] = TRUE;
		$_SESSION['name'] = $_POST['username'];
		$_SESSION['id'] = $id;
		echo 'Welcome ' . $_SESSION['name'] . '!';
	} else {
		// Incorrect password
		echo 'Incorrect username and/or password!';
	}
} else {
	// Incorrect username
	echo 'Incorrect username and/or password!';
}

	$stmt->close();
}
?>