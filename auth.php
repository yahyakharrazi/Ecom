<?php
require_once './connect.php';
if(!isset($_SESSION)){
    session_start();
}

if(!isset($_SESSION['user'])){
    $email = $_POST['email'];
    $pwd = $_POST['pass'];
    $str = "select level from users where email='$email' and password='$pwd'";
    $req = $pdo->query($str);
    $res = $req->fetch();

    if($res['level']!=NULL){
        $_SESSION['user']=$res['level'];
        header('Location: ./index.php');     
    }
    else
        header('Location: ./login.php');
}
    
?>