<?php
if(!isset($_SESSION))
    session_start();

unset( $_SESSION['panier']);
unset( $_SESSION['user']);

session_destroy();
header('location: index.php');
?>
