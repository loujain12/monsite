-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 25 déc. 2021 à 15:48
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `monsite`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_membre` int(3) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `sexe` enum('m','f') NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_membre`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_membre`, `login`, `mdp`, `nom`, `sexe`, `email`) VALUES
(1, 'admin', '123', 'loujain', 'f', 'loujainsallami12@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(3) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `sexe` enum('m','f') NOT NULL,
  `email` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `tel` int(8) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int(3) NOT NULL AUTO_INCREMENT,
  `id_client` int(3) NOT NULL,
  `montant` double NOT NULL,
  `date_commande` date NOT NULL,
  PRIMARY KEY (`id_commande`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qte` int(11) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nom_produit` varchar(30) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `prix` varchar(10) NOT NULL,
  `stock` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom_produit`, `image`, `description`, `prix`, `stock`) VALUES
(1, 'écouteurs sans fil ', 's.jpg', 'écouteurs sans fil i7s tws bluetooth 5.0,oreillettes de sport ,casque avec boite de chargement de micro ,écouteurs pour tous les smartphones ', '25dt ', 20),
(2, 'écouteurs sans fil', 'ec.jpg', 'écouteurs sans fil bluetooth i7Mini tws ,oreillettes de sport étanches ,compatibles avec iphone Android ,offre spéciale  ', '30dt', 12),
(3, 'écouteurs filaires', 'sa.jpg', 'écouteurs filaires de sport ,6 couleurs ,3.5mm,oreillettes avec basses pour téléphone portable ,casques stéréos ,micro ,musique ', '30dt', 50),
(4, 'coque ', 'jp.jpg', 'coque officielle en silicone pour iPhone ,étui orignal pour 7 ,8plus x,xs Max ,XR', '15dt', 12),
(5, 'coque ', 'sams.jpg', 'coque arrière en silicone pour samsung galaxy ,6.5 pouces, pour modèles A51,A30,A30S  ', '20dt', 50),
(6, 'protecteur d\'écran ', 'app.jpg', 'protecteur d\'écran pour objectif d\'appareil photo 3 pièces pour iPhone 11 12 13PRO XS Max ', '5DT', 20),
(7, 'clavier', '2.jpg', 'kawaii ensemble de clavier sans fil 2.4G ,couleurs acidulées ,Roud ,capuchons de touches et peigne de souris ,pour ordinateur portable ,Notebook ,pc', '50dt', 10),
(8, 'Gadget chauffant', 'sous-tasse.jpg', 'Gadget chauffant USB en silicone de dessin animé ,tasse fine-pad café thé boisson plateau chauffant usb', '40dt', 6),
(9, 'tapis de souris ', 'tapis.jpg', 'tapis de souris RGB pour gamer ,accessoire de jeu ,taille XXL ,dessin animé ,pour ordinateur de bureau ,grand format ', '45dt', 8),
(10, 'casque de jeu ', 'q.jpg', 'casque de jeu avec micro et lumière RGB ,anti-bruit ,pour ordinateur ', '60dt', 10),
(12, 'écouteurs filaires', 'ecou.jpg', 'Écouteurs filaires stéréo avec boîte de rangement, oreillettes pour enfants et adultes, cadeau', '30dt', 8),
(13, 'coque ', 'saa.jpg', 'coque arrière en silicone pour samsung galaxy ,6.5 pouces, pour modèles A51,A30,A30S  ', '25dt', 10),
(14, 'coque ', 'ab.jpg', 'coque officielle en silicone pour iPhone\r\nétui orignal pour 7,8plus x,xs Max ,XR', '25dt ', 10);

-- --------------------------------------------------------

--
-- Structure de la table `produit_commande`
--

DROP TABLE IF EXISTS `produit_commande`;
CREATE TABLE IF NOT EXISTS `produit_commande` (
  `id_proCom` int(3) NOT NULL AUTO_INCREMENT,
  `id_produit` int(3) NOT NULL,
  `id_commande` int(3) NOT NULL,
  `quantite` int(3) NOT NULL,
  `prix` double NOT NULL,
  `id_client` int(3) NOT NULL,
  PRIMARY KEY (`id_proCom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
