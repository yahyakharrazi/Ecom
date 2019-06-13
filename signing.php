<?php
require_once '../connect.php';
if(!isset($_SESSION))
    session_start();

$email=$_POST['email'];
$pass=$_POST['password'];
$level=$_POST['level'];

$query = "insert into users values (null,'$email','$pass','')";
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$pdo->exec($query); 

$_SESSION['user'] = $pdo->lastInsertId();
header('Location: ../index.php');



?>