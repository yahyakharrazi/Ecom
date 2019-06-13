<?php
    require_once 'sessions.php';
    require_once 'produits.php';
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

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./ajoutProduit.php">Ajout Produit</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./logout.php">Logout</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./login.php">Login</a>
      </li>
    </ul>
  </div>
</nav>


    <div class="row">
        <?php foreach($produits as $res): ?>
            <div class="col-lg-4 col-md-6 col-sm-12 p-5 article">
                <div class="card ">
                    <img src="./images/<?= $res['type'] ?>/<?= $res['photo'] ?>" class="card-img-top" alt="pic">
                    <div class="card-body">
                        <a href=""><?= $res['designation'] ?></a><br>
                        <span style="text-decoration: line-through;"><?= $res['prixPromo'] ?></span>
                        <span><?= $res['prixNormal'] ?>$</span>
                        <span><?= $res['reference'] ?></span><br>
                        <a href="./addToCard.php?ref=<?= $res['reference'] ?>" class="btn btn-primary">ajouter au panier</a>
                    </div>

                </div>
            </div>
        <?php endforeach ?>
    </div>
    <div class="container my-2">
    <?php 
        require_once 'panier.php';
    ?>
    </div>
</body>
