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
		
		.table {
			margin: auto;
			width: 90%; 
		}
		
		thead {
			color: #FFFFFF;
		}
		body{
			background-color:#bdd2f2;
		}
		tr:nth-child(even) {
        background-color: #ffffff;
       }
		</style>
		
		<title>Teacher Info</title>
	</head>
	
	<body>
		<img src="head-logo.png" alt="" style="width:35%;">
		<br>
		<div class="container">
            <div class="row">
                <h3>Teacher Information Table</h3>
            </div>
            <div class="row">
                <table class="table table-striped table-bordered">
                  <thead>
                    <tr bgcolor="#b610c5" color="#FFFFFF">
					  <th>Name</th>
					  <th>Class</th>
					  <th>Phone Number</th>
					  <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php
                   include 'database.php';
                   $pdo = Database::connect();
                   $sql = 'SELECT * FROM teacher ORDER BY id ASC';
                   foreach ($pdo->query($sql) as $row) {
                            echo '<tr>';
                            echo '<td>'. $row['name'] . '</td>';
							echo '<td>'. $row['class'] . '</td>';
							echo '<td>'. $row['phone'] . '</td>';
							echo '<td><a class="btn btn-success" href="teacherdataeditpage.php?id='.$row['id'].'">Edit</a>';
							echo ' ';
							echo '<a class="btn btn-danger" href="teacherdatadeletepage.php?id='.$row['id'].'">Delete</a>';
							echo '</td>';
                            echo '</tr>';
                   }
                   Database::disconnect();
                  ?>
                  </tbody>
				</table>
			</div>
		</div> <!-- /container -->
		<br>
		<a class="btn" href="teacher.php">Back</a>
	</body>
</html>