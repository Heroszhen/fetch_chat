-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 20 déc. 2020 à 16:43
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fetch_chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `user`, `content`, `created`) VALUES
(1, 'zhen', 'dfagfazefzef', '2020-12-20 16:23:36'),
(2, 'zhen', 'Curabitur et tortor in lacus ornare congue id at purus. Nullam molestie est id magna rhoncus, in ultrices libero sagittis. Phasellus auctor viverra est at posuere.', '2020-12-20 16:26:55'),
(3, 'zhen vvv', 'Curabitur et tortor in lacus ornare congue id at purus. Nullam molestie est id magna rhoncus, in ultrices libero sagittis. Phasellus auctor viverra est at posuere.', '2020-12-20 16:27:10'),
(4, 'zhen vvv', 'Curabitur et tortor in lacus ornare congue id at purus. Nullam molestie est id magna rhoncus, in ultrices libero sagittis. Phasellus auctor viverra est at posuere.', '2020-12-20 16:28:21'),
(5, 'zhen vvv', 'gergergerg', '2020-12-20 16:29:48'),
(6, 'zhen', 'Zhen est le plus grand héros du monde', '2020-12-20 16:30:43'),
(7, 'Vincent', 'Je suis d\'accord', '2020-12-20 16:32:15'),
(8, 'François', 'Je l\'approuve aussi', '2020-12-20 16:34:32');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
