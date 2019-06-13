-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 13 juin 2019 à 21:12
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecom`
--

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `type` varchar(7) DEFAULT NULL,
  `reference` varchar(12) DEFAULT NULL,
  `designation` varchar(32) DEFAULT NULL,
  `prixNormal` varchar(6) DEFAULT NULL,
  `prixPromo` varchar(6) DEFAULT NULL,
  `photo` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`type`, `reference`, `designation`, `prixNormal`, `prixPromo`, `photo`) VALUES
('chemise', '1012732NC', 'CHEMISE MARCO FERRERA', '39,98', '', 'w10-1012732nc-tq.jpg'),
('chemise', '2212780', 'CHEMISE MARCO FERRERA', '59', '39,98', 'w10-2212780-ny.jpg'),
('chemise', '2212807DE', 'CHEMISE ANTHONY OF LONDON', '109', '79,98', 's17-2212807de-ny.jpg'),
('chemise', '781153757008', 'CHEMISE LIPSON', '124,98', '79,98', 'l14-781153757008-bk.jpg'),
('chemise', '2212808DE', 'CHEMISE ANTHONY OF LONDON', '124,98', '79,98', 's17-2212808de-ny.jpg'),
('chemise', '781253757008', 'CHEMISE LIPSON', '125,65', '79,98', 'l14-781253757008-bl.jpg'),
('chemise', 'HR72734', 'CHEMISE FIL ? FIL H?RST', '88', '', 'h09-hr72734-brp.jpg'),
('chemise', '2212800E', 'CHEMISE ANTHONY OF LONDON', '95', '', 'm12-2212800e-pr.jpg'),
('chemise', '12-304E', 'CHEMISE SATIN?E ANTHONY OF LONDO', '95', '', 'm12-12-304e-wh_12.jpg'),
('chemise', '2212899E', 'CHEMISE ANTHONY OF LONDON', '98', '', 'm12-2212899e-ry.jpg'),
('chemise', '2212802DE', 'CHEMISE PAOLETTI', '98', '', 'm12-2212802de-bk.jpg'),
('veston', '22651-02', 'VESTON SPORT ORVIETO', '199,99', '99,99', 'b30-22651-02-ny.jpg'),
('veston', '2203633', 'VESTON SPORT ANTHONY OF LONDON', '199', '149', 'd07-2203633-bk.jpg'),
('veston', '7JY0062', 'VESTON CALVIN KLEIN', '275', '199,98', 'p13-7jy0062-bk.jpg'),
('veston', '2203621', 'VESTON SPORT ORVIETO', '249', '199,98', 'l05-2203621-ol.jpg'),
('veston', '22665-14', 'VESTON SPORT ORVIETO', '149', '', 'b30-22665-10-gy.jpg'),
('veston', '2203622', 'VESTON SPORT ORVIETO', '249', '199', 'l15-2203622-cha.jpg'),
('veston', '22671-01', 'VESTON SPORT ORVIETO', '199,98', '', 'b30-22671-01-bka.jpg'),
('veston', '2103625E', 'BLAZER PAOLETTI', '295', '249', 'l05-2103625e-bkb_1.jpg'),
('veston', '122600', 'VESTON JACK VICTOR', '595', '549,98', 'j02-122600-chb.jpg'),
('blouson', '5418285', 'BLOUSON POINT ZERO', '79', '59', 'p18-5418285-bl.jpg'),
('blouson', '5418297', 'BLOUSON POINT ZERO', '79', '59', 'p18-5418297-ice.jpg'),
('blouson', '2204982', 'MANTEAU ORVIETO', '199', '129', 'm23-2204982-ice.jpg'),
('blouson', '5418151', 'MANTEAU POINT ZERO', '150', '129', 'p18-5418151-zz.jpg'),
('blouson', 'CJK31115', 'BLOUSON SCALA MILANO', '159', '', 'l02-cjk31115-bka.jpg'),
('blouson', '2204981', 'MANTEAU ORVIETO GLACIER', '209', '199', 'm23-2204981-ch.jpg'),
('blouson', '2204989', 'PARDESSUS ANTHONY OF LONDON', '309', '199', 'd06-2204989-bk.jpg'),
('blouson', '3317', 'MANTEAU RAINFOREST', '325', '', 'r03-3317-br.jpg'),
('blouson', '3960', 'MANTEAU QUARTZ NATURE', '425', '', 'q00-3960-rd_1.jpg'),
('', '22127800', '', '60', '', 'w10-2212780-ny.jpg.jpg'),
('', '221278000', '', '60', '', 'w10-2212780-ny.jpg'),
('chemise', '2212780000', 'CHEMISE MARCO FERRERA', '60', '', 'w10-2212780-ny.jpg'),
('chemise', '2212780000', 'CHEMISE MARCO FERRERA', '60', '50', 'w10-2212780-ny.jpg'),
('chemise', '221278', 'CHEMISE MARCO FERRERA', '60', '50', './images/chemise/w10-22'),
('chemise', '2212782', 'CHEMISE MARCO FERRERA', '60', '50', 'w10-2212780-ny.jpg'),
('chemise', '221278200000', 'CHEMISE MARCO FERRERA', '60', '50', 'w10-2212780-ny.jpg'),
('chemise', '221278200000', 'CHEMISE MARCO FERRERA', '60', '50', '19st.jpg'),
('type', 'reference', 'designation', 'prixNo', 'prixPr', 'photo'),
('chemise', '1012732NC', 'CHEMISE MARCO FERRERA', '39,98', '', 'w10-1012732nc-tq.jpg'),
('chemise', '2212780', 'CHEMISE MARCO FERRERA', '59', '39,98', 'w10-2212780-ny.jpg'),
('chemise', '2212807DE', 'CHEMISE ANTHONY OF LONDON', '109', '79,98', 's17-2212807de-ny.jpg'),
('chemise', '781153757008', 'CHEMISE LIPSON', '124,98', '79,98', 'l14-781153757008-bk.jpg'),
('chemise', '2212808DE', 'CHEMISE ANTHONY OF LONDON', '124,98', '79,98', 's17-2212808de-ny.jpg'),
('chemise', '781253757008', 'CHEMISE LIPSON', '125,65', '79,98', 'l14-781253757008-bl.jpg'),
('chemise', 'HR72734', 'CHEMISE FIL ? FIL H?RST', '88', '', 'h09-hr72734-brp.jpg'),
('chemise', '2212800E', 'CHEMISE ANTHONY OF LONDON', '95', '', 'm12-2212800e-pr.jpg'),
('chemise', '12-304E', 'CHEMISE SATIN?E ANTHONY OF LONDO', '95', '', 'm12-12-304e-wh_12.jpg'),
('chemise', '2212899E', 'CHEMISE ANTHONY OF LONDON', '98', '', 'm12-2212899e-ry.jpg'),
('chemise', '2212802DE', 'CHEMISE PAOLETTI', '98', '', 'm12-2212802de-bk.jpg'),
('veston', '22651-02', 'VESTON SPORT ORVIETO', '199,99', '99,99', 'b30-22651-02-ny.jpg'),
('veston', '2203633', 'VESTON SPORT ANTHONY OF LONDON', '199', '149', 'd07-2203633-bk.jpg'),
('veston', '7JY0062', 'VESTON CALVIN KLEIN', '275', '199,98', 'p13-7jy0062-bk.jpg'),
('veston', '2203621', 'VESTON SPORT ORVIETO', '249', '199,98', 'l05-2203621-ol.jpg'),
('veston', '22665-14', 'VESTON SPORT ORVIETO', '149', '', 'b30-22665-10-gy.jpg'),
('veston', '2203622', 'VESTON SPORT ORVIETO', '249', '199', 'l15-2203622-cha.jpg'),
('veston', '22671-01', 'VESTON SPORT ORVIETO', '199,98', '', 'b30-22671-01-bka.jpg'),
('veston', '2103625E', 'BLAZER PAOLETTI', '295', '249', 'l05-2103625e-bkb_1.jpg'),
('veston', '122600', 'VESTON JACK VICTOR', '595', '549,98', 'j02-122600-chb.jpg'),
('blouson', '5418285', 'BLOUSON POINT ZERO', '79', '59', 'p18-5418285-bl.jpg'),
('blouson', '5418297', 'BLOUSON POINT ZERO', '79', '59', 'p18-5418297-ice.jpg'),
('blouson', '2204982', 'MANTEAU ORVIETO', '199', '129', 'm23-2204982-ice.jpg'),
('blouson', '5418151', 'MANTEAU POINT ZERO', '150', '129', 'p18-5418151-zz.jpg'),
('blouson', 'CJK31115', 'BLOUSON SCALA MILANO', '159', '', 'l02-cjk31115-bka.jpg'),
('blouson', '2204981', 'MANTEAU ORVIETO GLACIER', '209', '199', 'm23-2204981-ch.jpg'),
('blouson', '2204989', 'PARDESSUS ANTHONY OF LONDON', '309', '199', 'd06-2204989-bk.jpg'),
('blouson', '3317', 'MANTEAU RAINFOREST', '325', '', 'r03-3317-br.jpg'),
('blouson', '3960', 'MANTEAU QUARTZ NATURE', '425', '', 'q00-3960-rd_1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `level`) VALUES
(1, 'admin@gm.co', '123', 0),
(2, 'guest@gm.co', '123', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
