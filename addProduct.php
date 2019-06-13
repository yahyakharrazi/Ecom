<?php

require_once './connect.php';
if(!isset($_SESSION))
    session_start();
if($_SESSION['user']!=0){

    //header('location:index.php');
    print_r($_SESSION);
    die();
}

$type=$_POST['type'];
$reference=$_POST['reference'];
$designation=$_POST['designation'];
$prixn=$_POST['prixnormal'];
$prixp=$_POST['prixpromo'];


if(!is_null($_FILES["image"])){
    $target_dir = "./images/". $type."/";
    $target_file = basename($_FILES["image"]["name"]);
    $uploadOk = 1;
    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
    $target_name = $target_dir.$target_file;
    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_name)){
        $req = "insert into produits (type,reference,designation,prixPromo,photo,prixNormal) values ('".$type."','".$reference."','".$designation."','". $prixp."','".$target_file."','".$prixn."');";
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $pdo->exec($req);
        header('location: index.php');
    }
}


?>