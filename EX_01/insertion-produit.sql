-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 07 juil. 2020 à 11:07
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `basetest01`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` decimal(6,3) DEFAULT NULL,
  `quantite` int(1) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `prix`, `quantite`) VALUES
(0, NULL, NULL, NULL, NULL),
(1, 'T-shirt rouge', 'T-shirt coton de couleur rouge', '15.500', 5),
(2, 'T-shirt vert', 'T-shirt coton de couleur verte', '15.500', 6),
(3, 'T-shirt argent', 'T-shirt coton de couleur argent', '15.500', 8),
(4, 'Short bleu', 'short jean de couleur bleue', '16.500', 5),
(5, 'Short vert', 'short jean de couleur verte', '19.990', 5),
(6, 'Gilet noir', 'gilet de couleur noire', '19.990', 10),
(7, 'Veste argent', 'veste de couleur argentée', '35.000', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
