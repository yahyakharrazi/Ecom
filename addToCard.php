<?php

require_once 'sessions.php';

if(isset($_GET['ref'])){
    $_SESSION['panier'][$_GET['ref']] = 1;
    //print_r($_SESSION['panier']);
}

header('location:index.php');

?>