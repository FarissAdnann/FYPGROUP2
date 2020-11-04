<?php
    require 'database.php';
 
    $id = null;
    if ( !empty($_GET['id'])) {
        $id = $_REQUEST['id'];
    }
     
    if ( !empty($_POST)) {
        // keep track post values
        $username = $_POST['username'];
		$password = $_POST['password'];
        $name = $_POST['name'];
        $class = $_POST['class'];
         
        $pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$sql = "UPDATE teacher  set username = ?, password =?, name =?, class =? WHERE id = ?";
		$q = $pdo->prepare($sql);
		$q->execute(array($username,$password,$name,$class,$id));
		Database::disconnect();
		header("Location: teacherdata.php");
    }
?>