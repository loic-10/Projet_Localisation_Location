-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  Dim 08 déc. 2019 à 09:26
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `locadrex`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartement`
--

CREATE TABLE `appartement` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `nom` text NOT NULL,
  `images` text NOT NULL,
  `position_geographique` text NOT NULL,
  `validite` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `nom` text NOT NULL,
  `images` text NOT NULL,
  `position_geographique` text NOT NULL,
  `validite` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenu_appartement`
--

CREATE TABLE `contenu_appartement` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_appartement` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `type_appartement` text NOT NULL,
  `image` text NOT NULL,
  `prix_par_mois` int(150) NOT NULL,
  `nombre_mois_minimum` int(100) NOT NULL,
  `nombre_chambre` int(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenu_chambre`
--

CREATE TABLE `contenu_chambre` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_chambre` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `type_chambre` text NOT NULL,
  `image` text NOT NULL,
  `prix_par_mois` int(150) NOT NULL,
  `nombre_mois_minimum` int(100) NOT NULL,
  `nombre_chambre` int(100) NOT NULL,
  `description` text NOT NULL,
  `statut_cuisine` text NOT NULL,
  `statut_douche` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenu_duplex`
--

CREATE TABLE `contenu_duplex` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_duplex` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `type_duplex` text NOT NULL,
  `image` text NOT NULL,
  `prix_par_mois` int(150) NOT NULL,
  `nombre_mois_minimum` int(100) NOT NULL,
  `nombre_chambre` int(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenu_hotel`
--

CREATE TABLE `contenu_hotel` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `type_chambre_hotel` text NOT NULL,
  `image` text NOT NULL,
  `prix_par_nuitee` int(150) NOT NULL,
  `statut_dejeune` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenu_magazin`
--

CREATE TABLE `contenu_magazin` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_magazin` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `image` text NOT NULL,
  `prix_par_mois` int(150) NOT NULL,
  `superficie` int(150) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenu_salle_banquet`
--

CREATE TABLE `contenu_salle_banquet` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_salle_banquet` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `type_evenement` text NOT NULL,
  `image` text NOT NULL,
  `prix_par_jour` int(150) NOT NULL,
  `capacite` int(150) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `duplex`
--

CREATE TABLE `duplex` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `nom` text NOT NULL,
  `images` text NOT NULL,
  `position_geographique` text NOT NULL,
  `validite` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_ville` int(11) NOT NULL,
  `id_quartier` int(11) NOT NULL,
  `nom` text NOT NULL,
  `images` text NOT NULL,
  `nombre_etoile` int(11) NOT NULL,
  `position_geographique` text NOT NULL,
  `validite` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `magazin`
--

CREATE TABLE `magazin` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `nom` text NOT NULL,
  `images` text NOT NULL,
  `position_geographique` text NOT NULL,
  `validite` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `quartier`
--

CREATE TABLE `quartier` (
  `id` int(11) NOT NULL,
  `ville` text NOT NULL,
  `nom` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salle_banquet`
--

CREATE TABLE `salle_banquet` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `ville` text NOT NULL,
  `quartier` text NOT NULL,
  `nom` text NOT NULL,
  `images` text NOT NULL,
  `position_geographique` text NOT NULL,
  `validite` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `categorie_local` enum('appartement','chambre','duplex','hotel','magazin','salle_banquet') NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom_complet` text NOT NULL,
  `date_naissance` date NOT NULL,
  `numero_telephone` text NOT NULL,
  `adresse_email` text NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `ville` text NOT NULL,
  `mot_de_passe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartement`
--
ALTER TABLE `appartement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contenu_appartement`
--
ALTER TABLE `contenu_appartement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contenu_chambre`
--
ALTER TABLE `contenu_chambre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contenu_duplex`
--
ALTER TABLE `contenu_duplex`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contenu_hotel`
--
ALTER TABLE `contenu_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contenu_magazin`
--
ALTER TABLE `contenu_magazin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contenu_salle_banquet`
--
ALTER TABLE `contenu_salle_banquet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `duplex`
--
ALTER TABLE `duplex`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `magazin`
--
ALTER TABLE `magazin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quartier`
--
ALTER TABLE `quartier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salle_banquet`
--
ALTER TABLE `salle_banquet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appartement`
--
ALTER TABLE `appartement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contenu_appartement`
--
ALTER TABLE `contenu_appartement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contenu_chambre`
--
ALTER TABLE `contenu_chambre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contenu_duplex`
--
ALTER TABLE `contenu_duplex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contenu_hotel`
--
ALTER TABLE `contenu_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contenu_magazin`
--
ALTER TABLE `contenu_magazin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contenu_salle_banquet`
--
ALTER TABLE `contenu_salle_banquet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `duplex`
--
ALTER TABLE `duplex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `magazin`
--
ALTER TABLE `magazin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quartier`
--
ALTER TABLE `quartier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `salle_banquet`
--
ALTER TABLE `salle_banquet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
