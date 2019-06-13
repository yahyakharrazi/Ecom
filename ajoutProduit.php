<?php

require_once './connect.php';
require_once './sessions.php';

if(!isset($_SESSION['user'])){
    header('location: index.php');
}

/*
if($_SESSION['user']!=0){
    header('location: index.php');
}
*/
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./style.css">
    <title>Document</title>
</head>
<body>
    <div class="myCont">
        <form action="./addProduct.php" enctype="multipart/form-data" method="POST">
            <h2></h2>
            <div class="form-group">
                <label for="type">Type</label>
                <input type="text" class="form-control" id="type" name="type" placeholder="Enter type">
            </div>
            <div class="form-group">
                <label for="reference">Reference</label>
                <input type="text" class="form-control" id="reference" name="reference" placeholder="reference">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="designation" name="designation" placeholder="Enter designation">
            </div>
            <div class="form-group">
                <label for="prixnormal">prixNormal</label>
                <input type="text" class="form-control" id="prixnormal" name="prixnormal" placeholder="Prix Normal">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="prixpromo" name="prixpromo" placeholder="Prix Promotion">
            </div>
            <div class="form-group">
                <input type="file" class="form-control" id="image" name="image" placeholder="enter a file">
            </div>
            <button type="submit" class="my-btn">CREATE</button>
        </form>
    </div>
</body>
</html>