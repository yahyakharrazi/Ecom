<?php
    //B-2-1
    if(!isset($_SESSION))
        session_start();
    //B-2-2
    if(!isset($_SESSION['panier'])){
        $_SESSION['panier']=[];
    }

    
?>