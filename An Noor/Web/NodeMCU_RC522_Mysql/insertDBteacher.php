<?php
     
    require 'database.php';
 
    if ( !empty($_POST)) {
        // keep track post values
        $username = $_POST['username'];
		$password = $_POST['password'];
		$name = $_POST['name'];
        $class = $_POST['class'];
        
		// insert data
        $pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$sql = "INSERT INTO teacher (username,password,name,class) values(?, ?, ?, ?)";
		$q = $pdo->prepare($sql);
		$q->execute(array($username,$password,$name,$class));
		Database::disconnect();
		header("Location: teacherdata.php");
    }
?>