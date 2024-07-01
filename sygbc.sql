-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 29 juin 2024 à 06:42
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sygbc`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `IdCategorie` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `NomCategorie` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`IdCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`IdCategorie`, `NomCategorie`) VALUES
('BJ', 'Blue Jeans'),
('CRG', 'Cargo'),
('Lac', 'Lacoste'),
('LV', 'Louis Vuitton');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `IdClient` int NOT NULL,
  `Nom` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Prenom` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `Contact` int NOT NULL,
  PRIMARY KEY (`IdClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`IdClient`, `Nom`, `Prenom`, `Contact`) VALUES
(1, 'AZAZA', 'Zolati', 12345678),
(2, 'PLOUF', 'Plouf', 98765412),
(3, 'LOFTUS', 'Cheek', 66523514),
(4, 'LAPOI', 'MOUTY', 55224488);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `nocmd` int NOT NULL,
  `DateVente` date DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `IdClient` int DEFAULT NULL,
  PRIMARY KEY (`nocmd`),
  KEY `commande_ibfk_1` (`IdClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`nocmd`, `DateVente`, `Total`, `IdClient`) VALUES
(1, '2024-06-29', '30000.00', 1),
(2, '2024-06-29', '7800.00', 3),
(3, '2024-06-29', '4800.00', 2),
(4, '2024-06-29', '36000.00', 4);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `Login` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NomEmploy` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `PrenomEmploy` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `Role` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `PassWord` varchar(12) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`Login`, `NomEmploy`, `PrenomEmploy`, `Role`, `PassWord`) VALUES
('Admin', 'ZOZO', 'Zola', 'Administrateur', 'Admin'),
('Maga-001', 'Atto', 'Jackie', 'Magasinier', 'Mag001'),
('Compt-001', 'Agbagba', 'Bref', 'Caisse', 'Kyr001');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `IdProduit` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `NomProduit` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `PrixUn` float NOT NULL,
  `StockDispo` int NOT NULL,
  `IdCategorie` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`IdProduit`),
  KEY `produits_ibfk_1` (`IdCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`IdProduit`, `NomProduit`, `PrixUn`, `StockDispo`, `IdCategorie`) VALUES
('Bj-01', 'Jeans Mortis', 2000, 10, 'BJ'),
('CRG-01', 'Cargo Gris', 2000, 58, 'CRG'),
('CRG-02', 'Cargo Blue', 3500, 25, 'CRG'),
('Lac-Pol', 'Polo Blanc', 1500, 68, 'Lac'),
('SH-LV', 'Short LV', 3000, 25, 'LV');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

DROP TABLE IF EXISTS `vente`;
CREATE TABLE IF NOT EXISTS `vente` (
  `IdVente` int NOT NULL AUTO_INCREMENT,
  `IdProduit` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `NomProduit` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `QteVendu` int NOT NULL,
  `PrixUn` int NOT NULL,
  `nocmd` int NOT NULL,
  `SousTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`IdVente`),
  KEY `IdProduit` (`IdProduit`),
  KEY `nocmd` (`nocmd`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`IdVente`, `IdProduit`, `NomProduit`, `QteVendu`, `PrixUn`, `nocmd`, `SousTotal`) VALUES
(1, 'Bj-01', 'Jeans Mortis', 5, 2000, 1, '10000.00'),
(2, 'Lac-Pol', 'Polo Blanc', 10, 1500, 1, '15000.00'),
(3, 'CRG-01', 'Cargo Gris', 1, 2000, 2, '2000.00'),
(4, 'SH-LV', 'Short LV', 1, 3000, 2, '3000.00'),
(5, 'Lac-Pol', 'Polo Blanc', 1, 1500, 2, '1500.00'),
(6, 'CRG-01', 'Cargo Gris', 1, 2000, 3, '2000.00'),
(7, 'Bj-01', 'Jeans Mortis', 1, 2000, 3, '2000.00'),
(8, 'Lac-Pol', 'Polo Blanc', 10, 1500, 4, '15000.00'),
(9, 'SH-LV', 'Short LV', 5, 3000, 4, '15000.00');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`IdClient`) REFERENCES `clients` (`IdClient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`IdCategorie`) REFERENCES `categories` (`IdCategorie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`IdProduit`) REFERENCES `produits` (`IdProduit`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `vente_ibfk_2` FOREIGN KEY (`nocmd`) REFERENCES `commande` (`nocmd`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
