-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 11 mars 2023 à 21:27
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfonycontact`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `id_contact` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `id_contact`) VALUES
(1, 2),
(2, 1),
(1, 3),
(3, 1),
(1, 4),
(4, 1),
(1, 11),
(11, 1),
(1, 14),
(14, 1),
(2, 14),
(14, 2),
(2, 4),
(4, 2),
(2, 23),
(23, 2),
(2, 69),
(69, 2),
(3, 23),
(23, 3),
(3, 70),
(70, 3);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230307122225', '2023-03-08 01:29:42', 77);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int NOT NULL,
  `username` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `roles`, `password`, `nom`, `prenom`, `email`) VALUES
(1, 'nate', '[\"ROLE_ADMIN\"]', '$2y$13$sBVocyExnI4PkPaGS6UFO.cvJpqR1yfWFEYoZsZ9ccws3Aas7jT6K', 'Collombet', 'Nathan', 'nathan@hotmail.fr'),
(2, 'Karl', '{\"1\": \"ROLE_USER\"}', '$2y$13$WhGExIB4RE/VcPqJO3Eflu526iCngYHIwgBCJ/fbh19tApoOeO0kC', 'Karl', 'Karl', 'kerl2@gmail.com'),
(3, 'Pont', '{\"1\": \"ROLE_USER\"}', '$2y$13$Tbgk468EfdSh8YTl7MuogeYjd8lkqeS9ncAUxHajwtPoRDLF/rvh6', 'Pont', 'Helene', 'helene.pont@parisdescartes.fr'),
(4, 'Sunchine', '{\"1\": \"ROLE_USER\"}', '$2y$13$adFjvU4gl4nTvs.09OM7B.qSek8gJJXv1MkmX7f6D1PUujD/kKlcG', 'Lisa', 'Anna', 'annalisa@parisdescartes.fr'),
(11, 'Dent', '{\"1\": \"ROLE_USER\"}', '$2y$13$9JAftFk1NHZQFjq0OIoawOx1Sbcfm10oaapK1fB9wukTqdWaxD/fS', 'Dent', 'Arthur', 'sahm75@gmail.com'),
(14, 'lili', '{\"1\": \"ROLE_USER\"}', '$2y$13$JsTt3NwH9MCcg.v6EwRbROSn6BHmMM1NyB9zRVfKmCrTOQ.U2aQ1y', 'Iliée', 'Jean-Michel', 'jean-michel.ilie@parisdescartes.fr'),
(23, 'chhaib', '{\"1\": \"ROLE_USER\"}', '$2y$13$MFJcVDTof86SJKdZM8g1RekK811BPjTLyCVOS9GHBdJ1VYD1GDKLO', 'chhaib', 'Yacine', 'yacinehcb@outlook.fr'),
(31, 'kienzler', '{\"1\": \"ROLE_USER\"}', '$2y$13$Sx6mRgUbiHkxJnz9kL.wheZhPTatYcNISN3i0HAC4ExK3Jai0MoR2', 'kienzler', 'Florent', 'florentk98@gmail.com'),
(32, 'oss', '{\"1\": \"ROLE_USER\"}', '$2y$13$7D.lQLSdI2qgotheLLV2ZerNeTJnVjc0iMzSnx7.LAD0mFGXx.cES', 'X', 'John', 'oss@spy.fr'),
(69, 'Texas', '[\"ROLE_ADMIN\"]', '$2y$13$bIowD9tXEu11WfszJWLriucmrr/tjloGNBhX0V2mXfjJMMsgSvnsO', 'Granger', 'Hermione', 'LaBestGriffondor@gmail.com'),
(70, 'Potter', '{\"1\": \"ROLE_USER\"}', '$2y$13$1/AdVVK7gTVPYb9oCASIdu8B1PBYlgtpjliL6iCvJtc47E1i7ZNGW', 'Potter', 'Harry', 'LeBestGriffondor@hotmail.com'),
(72, 'bond', '{\"1\": \"ROLE_USER\"}', '$2y$13$RX6hpxTWnU4vhnko7uRdZOoM5k0Si.ZF5tE3esGzoHeD1zQgAhk9u', 'bond', 'James', 'bond@spy.fr'),
(86, 'mimi', '[\"ROLE_USER\"]', '$2y$13$A7PKV2rJvi1jyfBJVQjJ4evjFeDi2r0BBNRfTC2nwVghzUcHse.s6', 'Rodrigo', 'Pénélope', 'penelope.rodrigo@mimi.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_497B315EF85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
