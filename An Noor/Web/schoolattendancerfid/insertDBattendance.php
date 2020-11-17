<?php
     
    require 'database.php';
 
    if ( !empty($_POST)) {
        // keep track post values
		$idstudent = $_POST['idstudent'];
        
		// insert data
        $pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$sql = "INSERT INTO attendance (idstudent) values(?)";
		$q = $pdo->prepare($sql);
		$q->execute(array($idstudent));
		Database::disconnect();
		header("Location: attendance.php");
    }
?>