<?php
	$Write="<?php $" . "UIDresult=''; " . "echo $" . "UIDresult;" . " ?>";
	file_put_contents('UIDContainer.php',$Write);
	
?>

<!DOCTYPE html>
<html lang="en">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<script src="js/bootstrap.min.js"></script>
		<style>
		html {
			font-family: Arial;
			display: inline-block;
			margin: 0px auto;
			text-align: center;
		}

		ul.topnav {
			list-style-type: none;
			margin: auto;
			padding: 0;
			overflow: hidden;
			background-color: #2b5761;
			width: 100%;
		}

		ul.topnav li {float: left;}

		ul.topnav li a {
			display: block;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		ul.topnav li a:hover:not(.active) {background-color: #25383C;}

		ul.topnav li a.active {background-color: #333;}

		ul.topnav li.right {float: right;}

		@media screen and (max-width: 600px) {
			ul.topnav li.right, 
			ul.topnav li {float: none;}
		}
		
		img {
			display: block;
			margin-left: auto;
			margin-right: auto;
		}
		body{
			background-color:#d7bdf2;
		}
		</style>
		
		<title>Home</title>
	</head>
	
	<body>
		<img src="head-logo.png" alt="" style="width:35%;">
		<ul class="topnav">
			<li><a class="active"href="hometeacher.php">Home</a></li>
			<li><a href="studentdata.php">Students Info</a></li>
			<li><a href="attendancetch.php">Attendance</a></li>
			<li style="float:right"><a href="logout.php">Log Out</a></li>
		</ul>
		<br>
		<h2>School Attendance System Using RFID</h2>
		<h3>Welcome, Teacher</h3>
		
		<img src="logo.jpg" alt="" style="width:10%;">
	</body>
</html>