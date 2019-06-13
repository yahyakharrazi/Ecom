<?php

require_once 'connect.php';

$type='';

if(isset($_GET['type'])){
    $type = $_GET['type'];
}

$req = "select * from produits ";
if($type!='')
    $req.= "where type='$type'";
$query = $pdo->query($req);
$produits = $query->fetchAll(PDO::FETCH_ASSOC);

//print_r($produits);

?>