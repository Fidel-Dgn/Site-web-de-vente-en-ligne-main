-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 12 déc. 2025 à 09:50
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `défi`
--

-- --------------------------------------------------------

--
-- Structure de la table `Shop`
--

DROP TABLE IF EXISTS `Shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantite` int NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Shop`
--

INSERT INTO `Shop` (`id`, `genre`, `categorie`, `nom`, `quantite`, `prix`) VALUES
(1, 'Homme', 'Chaussures', 'Sneakers Nike Air', 20, 89.99),
(2, 'Homme', 'Chaussures', 'Adidas Superstar', 15, 79.90),
(3, 'Homme', 'Chaussures', 'Puma Running', 25, 69.50),
(4, 'Homme', 'Chaussures', 'Timberland Bottes', 10, 129.00),
(5, 'Homme', 'Chaussures', 'Converse All Star', 18, 59.99),
(6, 'Femme', 'Chaussures', 'Sandales cuir', 25, 39.99),
(7, 'Femme', 'Chaussures', 'Escarpins rouges', 12, 75.00),
(8, 'Femme', 'Chaussures', 'Baskets mode', 20, 55.50),
(9, 'Femme', 'Chaussures', 'Bottes hiver', 8, 120.00),
(10, 'Femme', 'Chaussures', 'Mocassins élégants', 14, 65.00),
(11, 'Enfant', 'Vêtements', 'T-shirt Marvel', 40, 14.99),
(12, 'Enfant', 'Vêtements', 'Sweat Pokémon', 30, 24.90),
(13, 'Enfant', 'Vêtements', 'Pantalon jean', 25, 19.99),
(14, 'Enfant', 'Vêtements', 'Robe princesse', 15, 29.50),
(15, 'Enfant', 'Vêtements', 'Pyjama coton', 35, 17.00),
(16, 'Homme', 'Accessoires', 'Montre Casio', 10, 59.00),
(17, 'Homme', 'Accessoires', 'Ceinture cuir', 20, 35.00),
(18, 'Homme', 'Accessoires', 'Sac à dos sport', 12, 49.90),
(19, 'Homme', 'Accessoires', 'Portefeuille cuir', 18, 45.00),
(20, 'Homme', 'Accessoires', 'Lunettes de soleil', 15, 70.00),
(21, 'Femme', 'Vêtements', 'Robe d\'été', 15, 49.50),
(22, 'Femme', 'Vêtements', 'Chemisier blanc', 20, 39.90),
(23, 'Femme', 'Vêtements', 'Jupe plissée', 18, 44.00),
(24, 'Femme', 'Vêtements', 'Pull laine', 12, 55.00),
(25, 'Femme', 'Vêtements', 'Veste en jean', 10, 69.90),
(26, 'Enfant', 'Jouets', 'Puzzle 100 pièces', 30, 12.90),
(27, 'Enfant', 'Jouets', 'Voiture télécommandée', 20, 29.99),
(28, 'Enfant', 'Jouets', 'Poupée Barbie', 25, 24.50),
(29, 'Enfant', 'Jouets', 'Lego Classic', 15, 49.00),
(30, 'Enfant', 'Jouets', 'Jeu de société Uno', 40, 9.99),
(31, 'Homme', 'Electronique', 'Casque Bluetooth', 12, 89.00),
(32, 'Femme', 'Electronique', 'Écouteurs sans fil', 20, 59.90),
(33, 'Homme', 'Electronique', 'Smartwatch Huawei', 10, 129.00),
(34, 'Femme', 'Electronique', 'Tablette Samsung', 8, 199.00),
(35, 'Enfant', 'Electronique', 'Console Nintendo Switch', 5, 299.00),
(36, 'Homme', 'Sport', 'Ballon de foot', 25, 25.00),
(37, 'Femme', 'Sport', 'Tapis de yoga', 18, 35.00),
(38, 'Enfant', 'Sport', 'Raquette de tennis junior', 12, 29.90),
(39, 'Homme', 'Maison', 'Lampe de bureau', 10, 45.00),
(40, 'Femme', 'Maison', 'Coussin déco', 20, 19.99),
(41, 'Enfant', 'Maison', 'Couverture polaire', 15, 22.00),
(42, 'Homme', 'Cuisine', 'Couteau chef', 8, 39.90),
(43, 'Femme', 'Cuisine', 'Mixeur électrique', 6, 59.00),
(44, 'Enfant', 'Cuisine', 'Set vaisselle enfant', 12, 15.00),
(45, 'Homme', 'Bureau', 'Clavier mécanique', 10, 89.00),
(46, 'Femme', 'Bureau', 'Souris ergonomique', 15, 49.00),
(47, 'Enfant', 'Bureau', 'Cartable scolaire', 20, 35.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
