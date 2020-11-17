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
		tr:nth-child(even) {
        background-color: #ffffff;
       }
	   thead {
			color: #FFFFFF;
		}
		td.lf {
			padding-left: 15px;
			padding-top: 12px;
			padding-bottom: 12px;
		}
		</style>
		
		<title>Attendance</title>
	</head>
	
	
	<body>
		<img align="center" src="head-logo.png" alt="" style="width:35%;">
		<ul class="topnav">
			<li><a href="hometeacher.php">Home</a></li>
			<li><a href="studentdata.php">Students Info</a></li>
			<li><a class="active" href="attendancetch.php">Attendance</a></li>
			<li style="float:right"><a href="logout.php">Log Out</a></li>
		</ul>
		<br>		
		<div class="container">
            <div class="row">
                <h3>Attendance</h3>
            </div>
			<form method="post" action="export.php">
             <input type="submit" name="export" class="btn btn-success" value="Export" />
            </form>
			
			<p id="getUID" ></p>
			
			
            <div class="row">
                <table class="table table-striped table-bordered">
                  <thead>
                    <tr bgcolor="#10c567" color="#FFFFFF">
					  <th>Name</th>
                      <th>ID</th>
                      <th>Gender</th>
					  <th>Class</th>
					  <th>IC Number</th>
                      <th>Date</th>
					  <th>Time</th>
					  
                    </tr>
                  </thead>
                  <tbody>
                  <?php
                   include 'database.php';
                   $pdo = Database::connect();
                   $sql = 'SELECT * FROM attendance 
							JOIN table_nodemcu_rfidrc522_mysql ON attendance.idstudent = table_nodemcu_rfidrc522_mysql.idstudent
							ORDER BY name ASC';
                   foreach ($pdo->query($sql) as $row) {
                            echo '<tr>';
							echo '<td>'. $row['name'] . '</td>';
                            echo '<td>'. $row['id'] . '</td>';
                            echo '<td>'. $row['gender'] . '</td>';
                            echo '<td>'. $row['email'] . '</td>';
							echo '<td>'. $row['mobile'] . '</td>';
							echo '<td>'. $row['date'] . '</td>';
							echo '<td>'. $row['time'] . '</td>';
							echo '</td>';
                            echo '</tr>';
                   }
                   Database::disconnect();
                  ?>
                  </tbody>
				</table>
			</div>
		</div> <!-- /container -->
		
	</body>
</html>
		
	</body>
</html>