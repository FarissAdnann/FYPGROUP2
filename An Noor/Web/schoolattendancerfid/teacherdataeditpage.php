<?php
    require 'database.php';
    $id = null;
    if ( !empty($_GET['id'])) {
        $id = $_REQUEST['id'];
    }
     
    $pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$sql = "SELECT * FROM teacher where id = ?";
	$q = $pdo->prepare($sql);
	$q->execute(array($id));
	$data = $q->fetch(PDO::FETCH_ASSOC);
	Database::disconnect();
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
		}
		
		textarea {
			resize: none;
		}

		ul.topnav {
			list-style-type: none;
			margin: auto;
			padding: 0;
			overflow: hidden;
			background-color: #4CAF50;
			width: 70%;
		}

		ul.topnav li {float: left;}

		ul.topnav li a {
			display: block;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		ul.topnav li a:hover:not(.active) {background-color: #3e8e41;}

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
		
		<title>Edit</title>
		
	</head>
	
	<body>

		<center><img src="head-logo.png" alt="" style="width:35%;"></center>
		
		<br>
		
		<div class="container">
     
			<div class="center" style="margin: 0 auto; width:495px; border-style: solid; border-color: #f2f2f2;">
				<div class="row">
					<h3 align="center">Edit Teacher Information</h3>
				</div>
		 
				<form class="form-horizontal" action="teacherdataedittb.php?id=<?php echo $id?>" method="post">
					<div class="control-group">
						<label class="control-label">Username</label>
						<div class="controls">
							<input name="username" type="text"  placeholder="" value="<?php echo $data['username'];?>" required>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Password</label>
						<div class="controls">
							<input name="password" type="text"  placeholder="" value="<?php echo $data['password'];?>" required>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Name</label>
						<div class="controls">
							<input name="name" type="text" placeholder="" value="<?php echo $data['name'];?>" required>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Class</label>
						<div class="controls">
							<input name="class" type="text"  placeholder="" value="<?php echo $data['class'];?>" required>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Phone Number</label>
						<div class="controls">
							<input name="phone" type="text"  placeholder="" value="<?php echo $data['phone'];?>" required>
						</div>
					</div>
					
					<div class="form-actions">
						<button type="submit" class="btn btn-success">Update</button>
						<a class="btn" href="teacherdata.php">Back</a>
					</div>
				</form>
			</div>               
		</div> <!-- /container -->	
		
		<script>
			var g = document.getElementById("defaultGender").innerHTML;
			if(g=="Male") {
				document.getElementById("mySelect").selectedIndex = "0";
			} else {
				document.getElementById("mySelect").selectedIndex = "1";
			}
		</script>
	</body>
</html>