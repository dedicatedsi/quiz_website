<?php
include 'session2.php';
include 'connection.php';
	$quizname = $_POST['QuizName'];
	$level = $_POST['Level'];
	$tablename = $_POST['TableName'];
    $_SESSION['tname'] = $tablename;
    header('location:action.php');
    
?>
