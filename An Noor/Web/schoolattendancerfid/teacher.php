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
		<script src="jquery.min.js"></script>
		<script>
			$(document).ready(function(){
				 $("#getUID").load("UIDContainer.php");
				setInterval(function() {
					$("#getUID").load("UIDContainer.php");
				}, 500);
			});
		</script>
		
		<style>
		html {
			font-family: Arial;
			display: inline-block;
			margin: 0px auto;
		}
		
		textarea {
			resize: none;
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
		body{
			background-color:#bdd2f2;
		}
		</style>
		
		<title>Teacher</title>
	</head>
	
	<body>

		<center><img src="head-logo.png" alt="" style="width:35%;"></center>
		<ul class="topnav">
			<li><a href="home.php">Home</a></li>
			<li><a href="user data.php">Students Info</a></li>
			<li><a href="registration.php">Registration</a></li>
			<li><a class="active" href="teacher.php">Teacher</a></li>
			<li><a href="attendance.php">Attendance</a></li>
			<li style="float:right"><a href="logout.php">Log Out</a></li>
		</ul>

		<div class="container">
			<br>
			<div class="center" style="margin: 0 auto; width:495px; border-style: solid; border-color: #f2f2f2;">
				<div class="row">
					<h3 align="center">Registration Teacher</h3>
				</div>
				<br>
				<form class="form-horizontal" action="insertDBteacher.php" method="post" >
					
					<div class="control-group">
						<label class="control-label">Username</label>
						<div class="controls">
							<input id="div_refresh" name="username" type="text"  placeholder="" required>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Password</label>
						<div class="controls">
							<input id="div_refresh" name="password" type="password"  placeholder="" required>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Name</label>
						<div class="controls">
							<input name="name" type="text" placeholder="" required>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Class</label>
						<div class="controls">
							<input name="class" type="text"  placeholder="" required>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Phone Number</label>
						<div class="controls">
							<input name="phone" type="text"  placeholder="" required>
						</div>
					</div>
					
					<div class="form-actions">
						<button type="submit" class="btn btn-success">Save</button>
                    </div>
				</form>
				
			</div>               
		</div> <!-- /container -->	
		<br>
		<center><a class="btn" href="teacherdata.php">Teacher Info</a></center>
	</body>
</html>