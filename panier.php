<?php

if(isset($_SESSION['panier']) && count($_SESSION['panier'])!=0){
    if(count($_SESSION['panier'])!=0){
        $req = "select distinct * from produits where reference in (";

        foreach ($_SESSION['panier'] as $key => $value) {
            $req.="'$key',";
        }
        $req = substr($req, 0, -1);
        $req .= ");";
    
        $query = $pdo->query($req);
        $panier = $query->fetchAll();
    }
    else{
        die();
    }


}
else{
    die();
}

?>

    <table class="table table-responsive bg-dark text-white">
        <tr>
            <th>TYPE</th>
            <th>REFERENCE</th>
            <th>DESIGNATION</th>
            <th>PRIX</th>
            <th>PHOTO</th>
            <th>QUANTITE</th>
        </tr>
        <?php foreach($panier as $results): ?>
        <tr>            
            <td><?= $results['type']; ?></td>
            <td><?= $results['reference']; ?></td>
            <td><?= $results['designation']; ?></td>
            <td><?= $results['prixNormal']; ?></td>
            <td><img src="./images/<?= $results['type']; ?>/<?= $results['photo']; ?>" alt=""></td>
            <td><?= $_SESSION['panier'][$results['reference']]; ?></td>

        </tr>
        <?php endforeach ?>
    </table>
