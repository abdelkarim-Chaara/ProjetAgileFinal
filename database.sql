-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2019 at 10:36 PM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Z3VIMoBVcW`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentification`
--

CREATE TABLE `authentification` (
  `id_connection` int(11) NOT NULL,
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_connection` varchar(64) NOT NULL,
  `pseudo_connection` varchar(240) DEFAULT NULL,
  `mot_passe` varchar(32) DEFAULT NULL,
  `no_enseignant` int(11) DEFAULT NULL,
  `no_etudiant` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authentification`
--

INSERT INTO `authentification` (`id_connection`, `role`, `login_connection`, `pseudo_connection`, `mot_passe`, `no_enseignant`, `no_etudiant`) VALUES
(1, 'administrateur', 'admin', 'admin@gmail.com', 'admin', NULL, NULL),
(2, 'enseignant', 'ens2', 'ens2@ens.com', 'ens2', 1, NULL),
(3, 'etudiant', 'etu3', 'etu3@etu.com', 'etu3', NULL, '3'),
(4, 'enseignant', 'adm', 'adm', 'adm', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidat`
--

CREATE TABLE `candidat` (
  `NO_CANDIDAT` varchar(50) NOT NULL DEFAULT '' COMMENT 'Numéro du candidat',
  `CODE_FORMATION` varchar(8) DEFAULT NULL COMMENT 'Code de la formation sur laquelle le candidat postule.',
  `ANNEE_UNIVERSITAIRE` varchar(10) DEFAULT NULL COMMENT 'Année universitaire. Ex. : 2014-2015',
  `NOM` varchar(50) DEFAULT NULL COMMENT 'Nom de famille du candidat',
  `PRENOM` varchar(50) DEFAULT NULL COMMENT 'Prénom du candidat',
  `SEXE` varchar(1) DEFAULT NULL COMMENT 'Sexe du candidat : Homme ou Femme.',
  `DATE_NAISSANCE` datetime DEFAULT NULL COMMENT 'Date de naissance du candidat',
  `LIEU_NAISSANCE` varchar(255) DEFAULT NULL COMMENT 'Lieu de naissance du candidat',
  `NATIONALITE` varchar(50) DEFAULT 'Française' COMMENT 'Nationalité du candidat',
  `TELEPHONE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone fixe du candidat',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone portable du candidat',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email du candidat',
  `ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue du candidat',
  `CODE_POSTAL` varchar(10) DEFAULT NULL COMMENT 'Code postal de la ville où réside le candidat',
  `VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville où habite le candidat',
  `PAYS_ORIGINE` varchar(5) DEFAULT NULL COMMENT 'Pays d''origine du candidat',
  `UNIVERSITE_ORIGINE` varchar(6) DEFAULT NULL COMMENT 'Université d''originie du candidat',
  `LISTE_SELECTION` varchar(6) DEFAULT NULL COMMENT 'Liste sur laquelle est positionné le candidat  : liste principale, liste d''attente ou non retenu.',
  `SELECTION_NO_ORDRE` double DEFAULT NULL COMMENT 'Classement du candidat sur la liste prinicipale ou sur la liste d''attente',
  `CONFIRMATION_CANDIDAT` char(1) DEFAULT NULL COMMENT 'Confirmation du candidat.',
  `DATE_REPONSE_CANDIDAT` datetime DEFAULT NULL COMMENT 'Date à laquelle le candidat a confirmé ou annulé son inscription.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidat`
--

INSERT INTO `candidat` (`NO_CANDIDAT`, `CODE_FORMATION`, `ANNEE_UNIVERSITAIRE`, `NOM`, `PRENOM`, `SEXE`, `DATE_NAISSANCE`, `LIEU_NAISSANCE`, `NATIONALITE`, `TELEPHONE`, `MOBILE`, `EMAIL`, `ADRESSE`, `CODE_POSTAL`, `VILLE`, `PAYS_ORIGINE`, `UNIVERSITE_ORIGINE`, `LISTE_SELECTION`, `SELECTION_NO_ORDRE`, `CONFIRMATION_CANDIDAT`, `DATE_REPONSE_CANDIDAT`) VALUES
('1', 'M2DOSI', '2014-2015', 'Etudiant1', 'Etu1', 'M', '1992-02-09 00:00:00', 'Tanger', 'Marocaine', NULL, '06 61 13 60 05', 'afkir.zakaria@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UAE', 'LP', NULL, 'O', NULL),
('10', 'M2DOSI', '2014-2015', 'Etudiant2', 'Etu2', 'M', '1990-12-23 00:00:00', 'Kénitra', 'Marocaine', NULL, '06 64 85 76 53', 'elharchaouisamira@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UIT', 'LP', NULL, 'O', NULL),
('2', 'M2DOSI', '2014-2015', 'Etudiant3', 'Etu3', 'M', '1999-09-03 00:00:00', 'Marrakech', 'Marocaine', NULL, '06 64 32 76 85', 'Ait.adnane@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UCAM', 'LP', NULL, 'O', NULL),
('3', 'M2DOSI', '2014-2015', 'Etudiant4', 'Etu4', 'M', '1991-11-02 00:00:00', 'Agadir', 'Marocaine', NULL, '07 82 34 89 60', 'hamza.aitmbarek@edu.uiz.ac.ma', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UIZ', 'LP', NULL, 'O', NULL),
('4', 'M2DOSI', '2014-2015', 'Etudiant5', 'Etu5', 'M', '1991-05-29 00:00:00', 'Marrakech', 'Marocaine', NULL, '06 64 94 22 68', 'aterhzaz.tr@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UCAM', 'LP', NULL, 'O', NULL),
('5', 'M2DOSI', '2014-2015', 'Etudiant6', 'Etu6', 'M', '1992-09-11 00:00:00', 'Agadir', 'Marocaine', NULL, '07 82 73 87 30', 'youssef.barghane@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UIZ', 'LP', NULL, 'O', NULL),
('6', 'M2DOSI', '2014-2015', 'Etudiant7', 'Etu7', 'M', '1992-02-20 00:00:00', 'Agadir', 'Marocaine', NULL, '06 61 13 60 05', 'soufiane.baroudi@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UIZ', 'LP', NULL, 'O', NULL),
('7', 'M2DOSI', '2014-2015', 'Etudiant8', 'Etu8', 'M', '1991-07-18 00:00:00', 'Kénitra', 'Marocaine', NULL, '07 82 52 47 08', 'bousraref.badr@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UIT', 'LP', NULL, 'O', NULL),
('8', 'M2DOSI', '2014-2015', 'Etudiant9', 'Etu9', 'F', '1992-02-04 00:00:00', 'Kénitra', 'Marocaine', NULL, '07 54 49 92 69', 'laila.chaabi@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UIT', 'LP', NULL, 'O', NULL),
('9', 'M2DOSI', '2014-2015', 'Etudiant10', 'Etu10', 'F', '1992-08-01 00:00:00', 'Tanger', 'Marocaine', NULL, '06 64 41 28 05', 'salwaelarbaoui@gmail.com', '4 avenue Hassan 1er', '40000', 'MARRAKECH', 'MA', 'UAE', 'LP', NULL, 'O', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `droit`
--

CREATE TABLE `droit` (
  `ID_EVALUATION` int(11) NOT NULL,
  `NO_ENSEIGNANT` int(11) NOT NULL,
  `CONSULTATION` char(1) NOT NULL,
  `DUPLICATION` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `droit`
--

INSERT INTO `droit` (`ID_EVALUATION`, `NO_ENSEIGNANT`, `CONSULTATION`, `DUPLICATION`) VALUES
(1, 2, 'O', 'O'),
(1, 3, 'O', 'O'),
(1, 4, 'O', 'O'),
(2, 3, 'O', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `element_constitutif`
--

CREATE TABLE `element_constitutif` (
  `CODE_FORMATION` varchar(8) NOT NULL DEFAULT '' COMMENT 'Code de la formation (Ex. : M2DOSI)',
  `CODE_UE` varchar(8) NOT NULL DEFAULT '' COMMENT 'Code de l''Unité d''Enseignement (Ex. : ISI, J2EE, WEB, etc.)',
  `CODE_EC` varchar(8) NOT NULL DEFAULT '' COMMENT 'Code de l''Elément Constitutif (Ex. : SD pour Serveur de Données dans l''UE PSI',
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'N° de l''enseignant responsable de l''EC',
  `DESIGNATION` varchar(64) DEFAULT NULL COMMENT 'Désignation de l''EC',
  `DESCRIPTION` varchar(240) DEFAULT NULL COMMENT 'Description ou résumé de l''élément constitutof',
  `NBH_CM` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Cours Magistraux (CM) dispensées dans l''EC.',
  `NBH_TD` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Travaux Dirigés (TD) dispensées dans l''EC.',
  `NBH_TP` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Travaux Pratiques (TP) dispensées dans l''EC.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `element_constitutif`
--

INSERT INTO `element_constitutif` (`CODE_FORMATION`, `CODE_UE`, `CODE_EC`, `NO_ENSEIGNANT`, `DESIGNATION`, `DESCRIPTION`, `NBH_CM`, `NBH_TD`, `NBH_TP`) VALUES
('GII', 'UE96', 'ec1', 995, 'BARDA2', 'une nouvelle matière', 20, 20, 20),
('M2DOSI', 'IDL', 'iiooio', 1, 'test', 'test', 12, 12, 12),
('M2DOSI', 'IDL', 'IL', 1, 'ingénierie développement logicielle', 'ingénierie logicielle', 12, 12, 12),
('M2DOSI', 'ISI', 'cuize', 4, 'jioejr', 'ojiozjpirfj', 12, 52, 22);

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `NO_ENSEIGNANT` int(11) NOT NULL DEFAULT '0' COMMENT 'Numéro de l''enseignant',
  `TYPE` varchar(5) DEFAULT NULL COMMENT 'Type de l''enseignant : Maître de Conférences, Professeur des Universités, Intervenant Extérieur, etc.',
  `SEXE` varchar(1) DEFAULT NULL COMMENT 'Sexe de l''enseignant : Homme ou Femme.',
  `NOM` varchar(50) DEFAULT NULL COMMENT 'Nom de l''enseignant',
  `PRENOM` varchar(50) DEFAULT NULL COMMENT 'Prénom de l''enseignant',
  `ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue de l''enseignant',
  `CODE_POSTAL` varchar(10) DEFAULT NULL COMMENT 'Code Postal de la ville où réside l''enseignant.',
  `VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville de résidence de l''enseignant',
  `PAYS` varchar(5) DEFAULT NULL COMMENT 'Pays où vit l''enseignant',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone portable de l''enseignant chercheur',
  `TELEPHONE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone fixe de l''enseignant',
  `EMAIL_UBO` varchar(255) DEFAULT NULL COMMENT 'Adresse email UBO de l''enseignant',
  `EMAIL_PERSO` varchar(255) DEFAULT NULL COMMENT 'Adresse email de l''UBO de l''enseignant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`NO_ENSEIGNANT`, `TYPE`, `SEXE`, `NOM`, `PRENOM`, `ADRESSE`, `CODE_POSTAL`, `VILLE`, `PAYS`, `MOBILE`, `TELEPHONE`, `EMAIL_UBO`, `EMAIL_PERSO`) VALUES
(0, 'PRAST', 'M', 'Enseignant1', 'Ens1', 'Rue de la mer', '29860', 'Le Drennec', 'FR', '0600000000', '0600000000', 'yl@univ-brest.fr', 'yl@gmail.com'),
(1, 'MCF', 'H', 'Enseignant2', 'Ens2', '6 rue de l\'Argoat', '29860', 'LE DRENNEC', 'FR', '06.29.24.01.00', '02.98.01.69.74', 'philippe.saliou@univ-brest.fr', 'philippe.saliou@gmail.com'),
(2, 'MCF', 'H', 'Enseignant3', 'Ens3', '18rue Jean Jaurès', '29200', 'BREST', 'FR', '06.32.03.56.32', '02.08.01.67.32', 'mounir.lallali@univ-brest.fr', 'mouni.lallali@gmail.com'),
(3, 'PRAST', 'H', 'Enseignant4', 'Ens4', '45 rue de SIAM', '29200', ' BREST', 'FR', '06.21.76.89.28', NULL, 'guillaume.bourel@univ-brest.fr', NULL),
(4, 'INT', 'H', 'Enseignant5', 'Ens5', '65 route de Gouesnou', '29200', 'BREST', 'FR', '06.45.95.47.29', NULL, 'pierre.leroux@univ-brest.fr', 'pileroux@gmail.com'),
(5, 'MCF', 'H', 'Enseignant6', 'Ens6', '63 rue de la Libération', '29650', 'ST RENAN', 'FR', '06.32.06.84.10', NULL, 'mickael.kerboeuf@univ-brest.fr', 'mickael.kerboeuf@gmail.com'),
(6, 'INT', 'H', 'Enseignant7', 'Ens7', '65 rue Charles de Gaule', '29260', 'LESNEVEN', 'FR', '06.31.59.20.43', NULL, 'francois.oleo@univ-brest.fr', NULL),
(995, 'PRAS', 'M', 'Enseignant8', 'Ens8', 'XX rue du YYYYY', '29490', 'XXXXXX', 'FR', '0000000000', '0000000000', 'yann.pauly@gmail.com', 'yann.pauly@gmail.com'),
(996, 'PRAS', 'M', 'Enseignant9', 'Ens9', 'XX rue du YYYYY', '29490', 'XXXXXX', 'FR', '0000000000', '0000000000', 'yann.pauly@gmail.com', 'yann.pauly@gmail.com'),
(997, 'PRAS', 'M', 'Enseignant10', 'Ens10', 'XX rue du YYYYY', '29490', 'XXXXXX', 'FR', '0000000000', '0000000000', 'yann.pauly@gmail.com', 'yann.pauly@gmail.com'),
(998, 'PRAS', 'M', 'Enseignant11', 'Ens11', 'XX rue du YYYYY', '29490', 'XXXXXX', 'FR', '0000000000', '0000000000', 'yann.pauly@gmail.com', 'yann.pauly@gmail.com'),
(999, 'PRAS', 'M', 'Enseignant12', 'Ens12', '29 rue du pont neuf', '29490', 'GUIPAVAS', 'FR', '0678598820', '0678598820', 'yann.pauly@gmail.com', 'yann.pauly@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `NO_ETUDIANT` varchar(50) NOT NULL DEFAULT '' COMMENT 'Numéro National de l''étudiant',
  `CODE_FORMATION` varchar(8) DEFAULT NULL COMMENT 'Code de la formation suivie par l''étudiant',
  `ANNEE_UNIVERSITAIRE` varchar(10) DEFAULT NULL COMMENT 'Année universitaire suivie par l''étudiant. Ex. : 2014-2015.',
  `NOM` varchar(50) DEFAULT NULL COMMENT 'Nom de l''étudiant',
  `PRENOM` varchar(50) DEFAULT NULL COMMENT 'Prénom de l''étudiant',
  `SEXE` varchar(1) DEFAULT NULL COMMENT 'Sexe de l''étudiant : Homme ou Femme.',
  `DATE_NAISSANCE` datetime DEFAULT NULL COMMENT 'Date de naiisance de l''étudiant',
  `LIEU_NAISSANCE` varchar(255) DEFAULT NULL COMMENT 'Lieu de naissance de l''étudiant',
  `NATIONALITE` varchar(50) DEFAULT 'Française' COMMENT 'Nationalité de l''étudiant',
  `TELEPHONE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone fixe de l''étudiant',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT 'Numéro de téléphone portable de l''étudiant',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT 'Adresse email personnel de l''étudiant',
  `EMAIL_UBO` varchar(255) DEFAULT NULL COMMENT 'Adresse email UBO de l''étudiant',
  `ADRESSE` varchar(255) DEFAULT NULL COMMENT 'Rue de l''étudiant pendant l''anne scolaire',
  `CODE_POSTAL` varchar(10) DEFAULT NULL COMMENT 'Code postal de l''étudiant pendant l''année scolaire',
  `VILLE` varchar(255) DEFAULT NULL COMMENT 'Ville de l''étudiant pendant l''année scolaire',
  `PAYS_ORIGINE` varchar(5) DEFAULT NULL COMMENT 'Pays d''origine de l''étudiant',
  `UNIVERSITE_ORIGINE` varchar(6) DEFAULT NULL COMMENT 'Université d''origine de l''étudiant',
  `GROUPE_TP` double DEFAULT NULL COMMENT 'N° du groupe de TP de l''étudiant',
  `GROUPE_ANGLAIS` double DEFAULT NULL COMMENT 'N° du groupe d''anglais de l''étudiant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`NO_ETUDIANT`, `CODE_FORMATION`, `ANNEE_UNIVERSITAIRE`, `NOM`, `PRENOM`, `SEXE`, `DATE_NAISSANCE`, `LIEU_NAISSANCE`, `NATIONALITE`, `TELEPHONE`, `MOBILE`, `EMAIL`, `EMAIL_UBO`, `ADRESSE`, `CODE_POSTAL`, `VILLE`, `PAYS_ORIGINE`, `UNIVERSITE_ORIGINE`, `GROUPE_TP`, `GROUPE_ANGLAIS`) VALUES
('1', 'M2DOSI', '2014-2015', 'Etudiant1', 'Etu1', 'M', '1992-02-09 00:00:00', 'Tanger', 'Marocaine', NULL, '06 61 13 60 05', 'afkir.zakaria@gmail.com', 'afkir.zakaria@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UAE', 1, 1),
('10', 'M2DOSI', '2013-2014', 'Etudiant2', 'Etu2', 'M', '1990-12-23 00:00:00', 'Kénitra', 'Marocaine', NULL, '06 64 85 76 53', 'elharchaouisamira@gmail.com', 'elharchaouisamira@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UIT', 1, 1),
('2', 'M2DOSI', '2014-2015', 'Etudiant3', 'Etu3', 'M', '1999-09-03 00:00:00', 'Marrakech', 'Marocaine', NULL, '06 64 32 76 85', 'Ait.adnane@gmail.com', 'Ait.adnane@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UCAM', 1, 1),
('3', 'M2DOSI', '2014-2015', 'Etudiant4', 'Etu4', 'M', '1991-11-02 00:00:00', 'Agadir', 'Marocaine', NULL, '07 82 34 89 60', 'hamza.aitmbarek@edu.uiz.ac.ma', 'hamza.aitmbarek@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UIZ', 1, 1),
('4', 'M2DOSI', '2014-2015', 'Etudiant5', 'Etu5', 'M', '1991-05-29 00:00:00', 'Marrakech', 'Marocaine', NULL, '06 64 94 22 68', 'aterhzaz.tr@gmail.com', 'aterhzaz.tr@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UCAM', 1, 1),
('5', 'M2DOSI', '2014-2015', 'Etudiant6', 'Etu6', 'M', '1992-09-11 00:00:00', 'Agadir', 'Marocaine', NULL, '07 82 73 87 30', 'youssef.barghane@gmail.com', 'youssef.barghane@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UIZ', 1, 1),
('6', 'M2DOSI', '2014-2015', 'Etudiant7', 'Etu7', 'M', '1992-02-20 00:00:00', 'Agadir', 'Marocaine', NULL, '06 61 13 60 05', 'soufiane.baroudi@gmail.com', 'soufiane.baroudi@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UIZ', 2, 1),
('7', 'M2DOSI', '2014-2015', 'Etudiant8', 'Etu8', 'M', '1991-07-18 00:00:00', 'Kénitra', 'Marocaine', NULL, '07 82 52 47 08', 'bousraref.badr@gmail.com', 'bousraref.badr@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UIT', 1, 1),
('8', 'M2DOSI', '2014-2015', 'Etudiant9', 'Etu9', 'F', '1992-02-04 00:00:00', 'Kénitra', 'Marocaine', NULL, '07 54 49 92 69', 'laila.chaabi@gmail.com', 'laila.chaabi@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UIT', 1, 1),
('9', 'M2DOSI', '2014-2015', 'Etudiant10', 'Etu10', 'F', '1992-08-01 00:00:00', 'Tanger', 'Marocaine', NULL, '06 64 41 28 05', 'salwaelarbaoui@gmail.com', 'salwaelarbaoui@univ-brest.fr', '2 rue des Archives', '29287', 'BREST', 'MA', 'UAE', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `ID_EVALUATION` int(11) NOT NULL,
  `NO_ENSEIGNANT` int(11) NOT NULL,
  `CODE_FORMATION` varchar(8) NOT NULL,
  `ANNEE_UNIVERSITAIRE` varchar(10) NOT NULL,
  `CODE_UE` varchar(8) NOT NULL,
  `CODE_EC` varchar(8) DEFAULT NULL,
  `NO_EVALUATION` int(11) DEFAULT NULL,
  `DESIGNATION` varchar(16) NOT NULL,
  `ETAT` char(3) NOT NULL DEFAULT 'ELA',
  `PERIODE` varchar(64) DEFAULT NULL,
  `DEBUT_REPONSE` date NOT NULL,
  `FIN_REPONSE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`ID_EVALUATION`, `NO_ENSEIGNANT`, `CODE_FORMATION`, `ANNEE_UNIVERSITAIRE`, `CODE_UE`, `CODE_EC`, `NO_EVALUATION`, `DESIGNATION`, `ETAT`, `PERIODE`, `DEBUT_REPONSE`, `FIN_REPONSE`) VALUES
(1, 1, 'M2DOSI', '2014-2015', 'IDL', 'IL', 1, 'ISI', 'CLO', 'Du 22 septembre au 24 octobre', '2001-11-14', '2012-11-14'),
(2, 1, 'M2DOSI', '2014-2015', 'IDL', 'IL', 1, 'BIG DATA', 'CLO', 'Du 22 septembre au 24 octobre', '2001-11-14', '2012-11-14'),
(5, 1, 'M2DOSI', '2013-2014', 'IDL', 'IL', 5, 'UML', 'ELA', 'Du 22 septembre au 24 octobre', '2019-03-05', '2019-03-26'),
(13, 1, 'M2DOSI', '2013-2014', 'IDL', 'IL', 13, 'ERP', 'ELA', 'Du 22 septembre au 24 octobre', '2001-11-14', '2012-11-14'),
(16, 1, 'M2DOSI', '2014-2015', 'ISI', 'cuize', 20, 'IC', 'CLO', 'Du 22 septembre au 24 octobre', '2001-11-14', '2012-11-14'),
(20, 1, 'M2DOSI', '2014-2015', 'ISI', 'cuize', 12, 'BI', 'CLO', 'Du 22 septembre au 24 octobre', '2001-11-14', '2012-11-14'),
(21, 1, 'M2DOSI', '2014-2015', 'ISI', 'cuize', 13, 'JEE', 'CLO', 'Du 22 septembre au 24 octobre', '2001-11-14', '2012-11-14'),
(73, 1, 'M2DOSI', '2018-2019', 'IDL', 'IL', 59, 'Eval test', 'ECL', 'Du 22 septembre au 24 octobre', '2019-04-02', '2019-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `formation`
--

CREATE TABLE `formation` (
  `CODE_FORMATION` varchar(8) NOT NULL DEFAULT '' COMMENT 'Code de la formation (Ex. : M2DOSI)',
  `DIPLOME` varchar(3) DEFAULT NULL COMMENT 'Type de diplôem préparé : Licence, Master ou Doctorat.',
  `N0_ANNEE` tinyint(4) DEFAULT '1' COMMENT 'Année de formation (Ex.: 2 pour Licence 2)',
  `NOM_FORMATION` varchar(64) DEFAULT NULL COMMENT 'Nom de  la formation',
  `DOUBLE_DIPLOME` char(1) DEFAULT NULL COMMENT 'Indique s''il s''agit d''un double dipôme ou non',
  `DEBUT_ACCREDITATION` datetime DEFAULT NULL COMMENT 'Date de début de validité de l''accréditation courante.',
  `FIN_ACCREDITATION` datetime DEFAULT NULL COMMENT 'Date de fin de validité de l''accréditation courante.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `formation`
--

INSERT INTO `formation` (`CODE_FORMATION`, `DIPLOME`, `N0_ANNEE`, `NOM_FORMATION`, `DOUBLE_DIPLOME`, `DEBUT_ACCREDITATION`, `FIN_ACCREDITATION`) VALUES
('GII', 'M', 2, 'Génie civil', 'O', '2019-04-13 00:00:00', '2019-04-06 00:00:00'),
('M1TIIL', 'M', 1, 'Master technologie de l\'Information et Ingénierie du Logiciel', 'N', '2012-09-01 00:00:00', '2017-09-30 00:00:00'),
('M2CCN', 'M', 2, 'Master CCN', 'N', '2019-03-17 00:00:00', '2019-03-31 00:00:00'),
('M2DOSI', 'M', 2, 'Master Développement à l\'Offshore des Systèmes d\'Information', 'O', '2012-09-01 00:00:00', '2017-09-30 00:00:00'),
('M2M5', 'M', 1, 'Master technologie de l\'Information et Ingénierie du Logiciel', 'N', '2012-09-01 00:00:00', '2017-09-30 00:00:00'),
('M2MIL', 'M', 1, 'Master technologie de l\'Information et Ingénierie du Logiciel', 'N', '2012-09-01 00:00:00', '2017-09-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `CODE_FORMATION` varchar(8) NOT NULL COMMENT 'Code de la formation',
  `ANNEE_UNIVERSITAIRE` varchar(10) NOT NULL COMMENT 'Année universitaire. Ex. : 2014-2015',
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'N° de l''enseignant responsable de la promotion.',
  `SIGLE_PROMOTION` varchar(16) DEFAULT NULL COMMENT 'Sigle de la promotion. Ex. : DOSI5 pour la 5ème promotion DOSI.',
  `NB_MAX_ETUDIANT` smallint(6) DEFAULT NULL COMMENT 'Nombre maximum d''étudiants que peut contenir la promotion.',
  `DATE_REPONSE_LP` datetime DEFAULT NULL COMMENT 'Date (au plus tard) à laquelle les candidats sur liste principale doivent donner leur réponse',
  `DATE_REPONSE_LALP` datetime DEFAULT NULL COMMENT 'Date (au plus tard) à laquelle les candidats passés de la liste d''attente à la liste principale doivent donner leur réponse',
  `DATE_RENTREE` datetime DEFAULT NULL COMMENT 'Date à laquelle la rentrée est prévue.',
  `LIEU_RENTREE` varchar(12) DEFAULT 'LC117A' COMMENT 'Salle où s''effectuera la rentrée',
  `PROCESSUS_STAGE` varchar(5) DEFAULT 'RECH' COMMENT 'Etat d''avancement du processus stage.',
  `COMMENTAIRE` varchar(255) DEFAULT NULL COMMENT 'Commentaire sur la promotion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`CODE_FORMATION`, `ANNEE_UNIVERSITAIRE`, `NO_ENSEIGNANT`, `SIGLE_PROMOTION`, `NB_MAX_ETUDIANT`, `DATE_REPONSE_LP`, `DATE_REPONSE_LALP`, `DATE_RENTREE`, `LIEU_RENTREE`, `PROCESSUS_STAGE`, `COMMENTAIRE`) VALUES
('M1TIIL', '2014-2015', 6, NULL, 60, '2014-07-10 00:00:00', '2014-08-10 00:00:00', '2014-09-01 00:00:00', 'LC117A', 'EC', NULL),
('M2DOSI', '2013-2014', 1, 'DOSI4', 24, '2013-05-04 00:00:00', '2013-05-19 00:00:00', '2013-09-07 00:00:00', 'LC117B', 'EC', NULL),
('M2DOSI', '2014-2015', 1, 'DOSI5', 24, '2014-05-10 00:00:00', '2014-05-19 00:00:00', '2014-09-08 00:00:00', 'LC117B', 'RECH', NULL),
('M2DOSI', '2018-2019', 1, 'M2DOSI10', 20, '2018-05-01 00:00:00', '2019-04-30 00:00:00', '2018-09-07 00:00:00', 'LC117A', 'RECH', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qualificatif`
--

CREATE TABLE `qualificatif` (
  `ID_QUALIFICATIF` int(11) NOT NULL,
  `MAXIMAL` varchar(16) NOT NULL,
  `MINIMAL` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qualificatif`
--

INSERT INTO `qualificatif` (`ID_QUALIFICATIF`, `MAXIMAL`, `MINIMAL`) VALUES
(1, 'très Pauvre', 'Riche'),
(2, 'Faible', 'Fort'),
(3, 'Insatisfaisant', 'Satisfaisant'),
(4, 'Lent', 'Rapide'),
(5, 'Faible', 'Active'),
(6, 'Peu clair', 'Très clair'),
(7, 'Faible', 'Forte'),
(8, 'Facile', 'Difficile'),
(9, 'Insuffisant', 'Suffisant'),
(10, 'Faible', 'Importante'),
(11, 'Mauvaise', 'Bonne'),
(12, 'Insuffisant', 'Excessif'),
(13, 'Insuffisant', 'Trop nombreux');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ID_QUESTION` int(11) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `NO_ENSEIGNANT` int(11) DEFAULT NULL,
  `ID_QUALIFICATIF` int(11) DEFAULT NULL,
  `INTITULE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ID_QUESTION`, `TYPE`, `NO_ENSEIGNANT`, `ID_QUALIFICATIF`, `INTITULE`) VALUES
(1, 'QUS', 1, 1, 'Contenu'),
(2, 'QUS', 2, 2, 'Intérêt'),
(3, 'QUS', 3, 8, 'Assimilité (Ce cours est-il facile à assimiler ?)'),
(4, 'QUS', 1, 3, 'Support de cours'),
(5, 'QUS', 1, 4, 'Rythme'),
(6, 'QUS', 1, 13, 'Nombre de séances'),
(7, 'QUS', 2, 5, 'Attention, participation des étudiants'),
(8, 'QUS', 2, 6, 'Clarté de l\'enseignant'),
(9, 'QUS', 3, 7, 'Compétence de l\'enseignant (vis-à-vis) du domaine)'),
(10, 'QUS', 3, 7, 'Utilitté des TD pour assimiler le cours'),
(11, 'QUS', 3, 6, 'Niveau des exercices'),
(12, 'QUS', 1, 6, 'Clarté des énoncés'),
(13, 'QUS', 2, 10, 'Utilité des TPpour assimiler le cours'),
(14, 'QUS', 2, 9, 'Explications individuelles'),
(15, 'QUS', 1, 8, 'Difficulté du sujet'),
(16, 'QUS', 1, 10, 'Utilité du projet pour assimiler le cours'),
(17, 'QUS', 1, 2, 'Intérêt personnel'),
(18, 'QUS', 2, 11, 'Impression générale'),
(19, 'QUS', 3, 2, 'Investissement personnel'),
(20, 'QUS', 3, 2, 'Intérêt à priori pour cet enseignement'),
(21, 'QUS', 3, 2, 'Intérêt à postériori pour cet enseignement'),
(22, 'QUS', 1, 12, 'Volume global horaire');

-- --------------------------------------------------------

--
-- Table structure for table `question_evaluation`
--

CREATE TABLE `question_evaluation` (
  `ID_QUESTION_EVALUATION` int(11) NOT NULL,
  `ID_RUBRIQUE_EVALUATION` int(11) NOT NULL,
  `ID_QUESTION` int(11) DEFAULT NULL,
  `ID_QUALIFICATIF` int(11) DEFAULT NULL,
  `ORDRE` int(11) NOT NULL,
  `INTITULE` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_evaluation`
--

INSERT INTO `question_evaluation` (`ID_QUESTION_EVALUATION`, `ID_RUBRIQUE_EVALUATION`, `ID_QUESTION`, `ID_QUALIFICATIF`, `ORDRE`, `INTITULE`) VALUES
(1, 1, 1, 1, 1, NULL),
(2, 1, 2, 2, 2, NULL),
(3, 1, 3, 2, 3, NULL),
(4, 1, 4, 3, 4, NULL),
(5, 1, 5, 4, 5, NULL),
(6, 1, 6, 5, 6, NULL),
(7, 1, 7, 6, 7, NULL),
(44, 10, 18, 1, 8, NULL),
(45, 10, 18, 1, 0, NULL),
(46, 10, 1, 1, 0, NULL),
(47, 10, 1, 1, 0, NULL),
(48, 10, 1, 1, 0, NULL),
(49, 10, 1, 1, 0, NULL),
(50, 10, 11, 2, 0, NULL),
(51, 10, 1, 2, 0, NULL),
(52, 10, 1, 2, 0, NULL),
(54, 10, 2, 12, 0, NULL),
(55, 10, 13, 8, 0, NULL),
(58, 10, 15, 8, 0, NULL),
(68, 94, 15, 8, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reponse_evaluation`
--

CREATE TABLE `reponse_evaluation` (
  `ID_REPONSE_EVALUATION` int(11) NOT NULL,
  `ID_EVALUATION` int(11) NOT NULL,
  `NO_ETUDIANT` varchar(50) DEFAULT NULL,
  `COMMENTAIRE` varchar(512) DEFAULT NULL,
  `NOM` varchar(32) DEFAULT NULL,
  `PRENOM` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reponse_evaluation`
--

INSERT INTO `reponse_evaluation` (`ID_REPONSE_EVALUATION`, `ID_EVALUATION`, `NO_ETUDIANT`, `COMMENTAIRE`, `NOM`, `PRENOM`) VALUES
(1, 1, '1', 'Une pédagogie active très intéressante', 'mds', 'HABALLA'),
(2, 1, '2', 'Cette UE a permis de consolider nos connaissances en BDD', 'Meryem', 'El HILALI'),
(3, 1, '3', 'Il est très intéressant d\'être immergé dans une Tierce Maintenance Applicative', 'abdelhak', 'MAAMOU');

-- --------------------------------------------------------

--
-- Table structure for table `reponse_question`
--

CREATE TABLE `reponse_question` (
  `ID_REPONSE_EVALUATION` int(11) NOT NULL,
  `ID_QUESTION_EVALUATION` int(11) NOT NULL,
  `POSITIONNEMENT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reponse_question`
--

INSERT INTO `reponse_question` (`ID_REPONSE_EVALUATION`, `ID_QUESTION_EVALUATION`, `POSITIONNEMENT`) VALUES
(1, 1, 3),
(1, 2, 4),
(1, 3, 2),
(1, 4, 5),
(1, 5, 3),
(1, 6, 4),
(1, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rubrique`
--

CREATE TABLE `rubrique` (
  `ID_RUBRIQUE` int(11) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `NO_ENSEIGNANT` int(11) DEFAULT NULL,
  `DESIGNATION` varchar(32) NOT NULL,
  `ORDRE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rubrique`
--

INSERT INTO `rubrique` (`ID_RUBRIQUE`, `TYPE`, `NO_ENSEIGNANT`, `DESIGNATION`, `ORDRE`) VALUES
(1, 'RBS', 1, 'COURS', 1),
(2, 'RBS', 1, 'COURS/TD', 2),
(3, 'RBS', 2, 'TD', 3),
(4, 'RBS', 3, 'TD/TP', 4),
(5, 'RBS', 4, 'TP', 5),
(6, 'RBS', 5, 'PROJET', 6),
(7, 'RBS', 6, 'BILAN', 7),
(8, 'RBS', 5, 'CM pré-composé', 8),
(11, 'RBS', 1, 'COURS', 1),
(15, 'RBS', 1, 'COURS', 1),
(16, 'RBS', 1, 'COURS', 1),
(17, 'RBS', 1, 'COURS', 1),
(18, 'RBS', 1, 'COURS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rubrique_evaluation`
--

CREATE TABLE `rubrique_evaluation` (
  `ID_RUBRIQUE_EVALUATION` int(11) NOT NULL,
  `ID_EVALUATION` int(11) NOT NULL,
  `ID_RUBRIQUE` int(11) DEFAULT NULL,
  `ORDRE` int(11) DEFAULT NULL,
  `DESIGNATION` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rubrique_evaluation`
--

INSERT INTO `rubrique_evaluation` (`ID_RUBRIQUE_EVALUATION`, `ID_EVALUATION`, `ID_RUBRIQUE`, `ORDRE`, `DESIGNATION`) VALUES
(1, 1, 1, 1, 'COURS'),
(10, 1, 2, 3, 'TDs'),
(32, 13, 3, NULL, NULL),
(33, 5, 1, NULL, NULL),
(34, 5, 7, NULL, NULL),
(35, 5, 6, NULL, NULL),
(36, 5, 1, NULL, NULL),
(37, 13, 8, NULL, NULL),
(42, 13, 6, NULL, NULL),
(44, 5, 1, NULL, NULL),
(45, 5, 8, NULL, NULL),
(52, 5, 11, NULL, NULL),
(89, 1, 7, 7, 'BILAN'),
(90, 1, 6, 6, 'PROJET'),
(94, 73, 7, 7, 'BILAN'),
(95, 73, 4, 4, 'TD/TP'),
(97, 73, 2, 2, 'COURS/TD');

-- --------------------------------------------------------

--
-- Table structure for table `rubrique_question`
--

CREATE TABLE `rubrique_question` (
  `ID_RUBRIQUE` int(11) NOT NULL,
  `ID_QUESTION` int(11) NOT NULL,
  `ORDRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rubrique_question`
--

INSERT INTO `rubrique_question` (`ID_RUBRIQUE`, `ID_QUESTION`, `ORDRE`) VALUES
(8, 1, 1),
(8, 2, 2),
(8, 3, 3),
(8, 4, 4),
(8, 5, 5),
(8, 6, 6),
(8, 7, 7),
(8, 8, 8),
(8, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `unite_enseignement`
--

CREATE TABLE `unite_enseignement` (
  `CODE_FORMATION` varchar(8) NOT NULL COMMENT 'Code de la formation (Ex. : M2DOSI)',
  `CODE_UE` varchar(8) NOT NULL COMMENT 'Code de l''Unité d''Enseignement (Ex. : ISI, J2EE, WEB, etc.)',
  `NO_ENSEIGNANT` int(11) DEFAULT NULL COMMENT 'N° de l''enseignant responsable de l''UC',
  `DESIGNATION` varchar(64) DEFAULT NULL COMMENT 'Désignation de l''Unité d''Enseignement.',
  `SEMESTRE` char(3) DEFAULT NULL COMMENT 'N° de semestre dans lequel l''UE doit être dispensée.',
  `DESCRIPTION` varchar(256) DEFAULT NULL COMMENT 'Description ou résumé de l''Unité d''Enseignement',
  `NBH_CM` decimal(38,0) DEFAULT NULL COMMENT 'Nb d''heures de Cours Magistraux (CM) dispensées dans l''UE.',
  `NBH_TD` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Travaux Dirigés (TD) dispensées dans l''UE.',
  `NBH_TP` tinyint(4) DEFAULT NULL COMMENT 'Nb d''heures de Travaux Pratiques (TP) dispensées dans l''UE.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unite_enseignement`
--

INSERT INTO `unite_enseignement` (`CODE_FORMATION`, `CODE_UE`, `NO_ENSEIGNANT`, `DESIGNATION`, `SEMESTRE`, `DESCRIPTION`, `NBH_CM`, `NBH_TD`, `NBH_TP`) VALUES
('GII', 'UE96', 1, 'BARDA2', NULL, 'une nouvelle matière', '20', 20, 20),
('M2CCN', 'JEE', 1, 'JAVA EE', 'S9', 'JAVA EE', '16', 16, 16),
('M2CCN', 'UE80', 0, 'BARDA', NULL, 'une nouvelle matière2', '20', 20, 20),
('M2CCN', 'UE99', 0, 'BARDA2', NULL, 'une nouvelle matière', '12', 11, 11),
('M2DOSI', 'IDL', 1, 'Ingénierie de Développement Logiciel', '9', NULL, '20', 20, 20),
('M2DOSI', 'ISI', 1, 'Ingénierie des Systèmes d\'Information', '9', NULL, '20', 20, 20),
('M2M5', '22', 0, NULL, 'S3', 'c\'est une description', '25', 14, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentification`
--
ALTER TABLE `authentification`
  ADD PRIMARY KEY (`id_connection`),
  ADD UNIQUE KEY `id_connection` (`id_connection`),
  ADD KEY `aut_etu_fk` (`no_etudiant`),
  ADD KEY `aut_ens_fk` (`no_enseignant`);

--
-- Indexes for table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`NO_CANDIDAT`),
  ADD UNIQUE KEY `CAN_PK` (`NO_CANDIDAT`),
  ADD KEY `CAN_PRO_FK_I` (`ANNEE_UNIVERSITAIRE`),
  ADD KEY `CAN_PR0_FK` (`CODE_FORMATION`,`ANNEE_UNIVERSITAIRE`);

--
-- Indexes for table `droit`
--
ALTER TABLE `droit`
  ADD PRIMARY KEY (`ID_EVALUATION`,`NO_ENSEIGNANT`),
  ADD KEY `DRT_ENS_FK` (`NO_ENSEIGNANT`);

--
-- Indexes for table `element_constitutif`
--
ALTER TABLE `element_constitutif`
  ADD PRIMARY KEY (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`),
  ADD UNIQUE KEY `EC_PK` (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`),
  ADD KEY `EC_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `EC_UE_FK_I` (`CODE_FORMATION`,`CODE_UE`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`NO_ENSEIGNANT`),
  ADD UNIQUE KEY `ENS_PK` (`NO_ENSEIGNANT`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`NO_ETUDIANT`),
  ADD UNIQUE KEY `ETU_PK` (`NO_ETUDIANT`),
  ADD KEY `ETU_PRO_FK_I` (`ANNEE_UNIVERSITAIRE`),
  ADD KEY `ETU_PRO_FK` (`ANNEE_UNIVERSITAIRE`,`CODE_FORMATION`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`ID_EVALUATION`),
  ADD KEY `EVE_UE_FK` (`CODE_FORMATION`,`CODE_UE`),
  ADD KEY `EVE_PRO_FK` (`CODE_FORMATION`,`ANNEE_UNIVERSITAIRE`),
  ADD KEY `EVE_ENS_FK` (`NO_ENSEIGNANT`),
  ADD KEY `EVE_EC_FK` (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`);

--
-- Indexes for table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`CODE_FORMATION`),
  ADD UNIQUE KEY `FRM_PK` (`CODE_FORMATION`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`CODE_FORMATION`,`ANNEE_UNIVERSITAIRE`),
  ADD UNIQUE KEY `PRO_PK` (`ANNEE_UNIVERSITAIRE`,`CODE_FORMATION`),
  ADD KEY `PRO_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `PRO_FRM_FK_I` (`CODE_FORMATION`);

--
-- Indexes for table `qualificatif`
--
ALTER TABLE `qualificatif`
  ADD PRIMARY KEY (`ID_QUALIFICATIF`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID_QUESTION`),
  ADD KEY `QUE_ENS_FK` (`NO_ENSEIGNANT`),
  ADD KEY `QUE_QUA_FK` (`ID_QUALIFICATIF`);

--
-- Indexes for table `question_evaluation`
--
ALTER TABLE `question_evaluation`
  ADD PRIMARY KEY (`ID_QUESTION_EVALUATION`),
  ADD KEY `QEV_QUA_FK` (`ID_QUALIFICATIF`),
  ADD KEY `QEV_QUE_FK` (`ID_QUESTION`),
  ADD KEY `QEV_REV_FK` (`ID_RUBRIQUE_EVALUATION`);

--
-- Indexes for table `reponse_evaluation`
--
ALTER TABLE `reponse_evaluation`
  ADD PRIMARY KEY (`ID_REPONSE_EVALUATION`),
  ADD KEY `RPE_ETU_FK` (`NO_ETUDIANT`),
  ADD KEY `RPE_EVE_FK` (`ID_EVALUATION`);

--
-- Indexes for table `reponse_question`
--
ALTER TABLE `reponse_question`
  ADD PRIMARY KEY (`ID_REPONSE_EVALUATION`,`ID_QUESTION_EVALUATION`),
  ADD KEY `RPQ_QEV_FK` (`ID_QUESTION_EVALUATION`);

--
-- Indexes for table `rubrique`
--
ALTER TABLE `rubrique`
  ADD PRIMARY KEY (`ID_RUBRIQUE`),
  ADD KEY `RUB_ENS_FK` (`NO_ENSEIGNANT`);

--
-- Indexes for table `rubrique_evaluation`
--
ALTER TABLE `rubrique_evaluation`
  ADD PRIMARY KEY (`ID_RUBRIQUE_EVALUATION`),
  ADD KEY `REV_RUB_FK` (`ID_RUBRIQUE`),
  ADD KEY `REV_EVE_FK` (`ID_EVALUATION`);

--
-- Indexes for table `rubrique_question`
--
ALTER TABLE `rubrique_question`
  ADD PRIMARY KEY (`ID_RUBRIQUE`,`ID_QUESTION`),
  ADD KEY `RBQ_QUE_FK` (`ID_QUESTION`);

--
-- Indexes for table `unite_enseignement`
--
ALTER TABLE `unite_enseignement`
  ADD PRIMARY KEY (`CODE_FORMATION`,`CODE_UE`),
  ADD UNIQUE KEY `UE_PK` (`CODE_FORMATION`,`CODE_UE`),
  ADD KEY `UE_ENS_FK_I` (`NO_ENSEIGNANT`),
  ADD KEY `UE_FRM_FK_I` (`CODE_FORMATION`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authentification`
--
ALTER TABLE `authentification`
  MODIFY `id_connection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `ID_EVALUATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `qualificatif`
--
ALTER TABLE `qualificatif`
  MODIFY `ID_QUALIFICATIF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `ID_QUESTION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `question_evaluation`
--
ALTER TABLE `question_evaluation`
  MODIFY `ID_QUESTION_EVALUATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `reponse_evaluation`
--
ALTER TABLE `reponse_evaluation`
  MODIFY `ID_REPONSE_EVALUATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rubrique`
--
ALTER TABLE `rubrique`
  MODIFY `ID_RUBRIQUE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rubrique_evaluation`
--
ALTER TABLE `rubrique_evaluation`
  MODIFY `ID_RUBRIQUE_EVALUATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authentification`
--
ALTER TABLE `authentification`
  ADD CONSTRAINT `aut_ens_fk` FOREIGN KEY (`no_enseignant`) REFERENCES `enseignant` (`no_enseignant`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `aut_etu_fk` FOREIGN KEY (`no_etudiant`) REFERENCES `etudiant` (`no_etudiant`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `candidat`
--
ALTER TABLE `candidat`
  ADD CONSTRAINT `CAN_PR0_FK` FOREIGN KEY (`CODE_FORMATION`,`ANNEE_UNIVERSITAIRE`) REFERENCES `promotion` (`code_formation`, `annee_universitaire`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `droit`
--
ALTER TABLE `droit`
  ADD CONSTRAINT `DRT_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`no_enseignant`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `DRT_EVE_FK` FOREIGN KEY (`ID_EVALUATION`) REFERENCES `evaluation` (`id_evaluation`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `element_constitutif`
--
ALTER TABLE `element_constitutif`
  ADD CONSTRAINT `EC_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`no_enseignant`),
  ADD CONSTRAINT `EC_UE_FK` FOREIGN KEY (`CODE_FORMATION`,`CODE_UE`) REFERENCES `unite_enseignement` (`code_formation`, `code_ue`);

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `ETU_PRO_FK` FOREIGN KEY (`ANNEE_UNIVERSITAIRE`,`CODE_FORMATION`) REFERENCES `promotion` (`annee_universitaire`, `code_formation`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `EVE_EC_FK` FOREIGN KEY (`CODE_FORMATION`,`CODE_UE`,`CODE_EC`) REFERENCES `element_constitutif` (`code_formation`, `code_ue`, `code_ec`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `EVE_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`no_enseignant`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `EVE_PRO_FK` FOREIGN KEY (`CODE_FORMATION`,`ANNEE_UNIVERSITAIRE`) REFERENCES `promotion` (`code_formation`, `annee_universitaire`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `EVE_UE_FK` FOREIGN KEY (`CODE_FORMATION`,`CODE_UE`) REFERENCES `unite_enseignement` (`code_formation`, `code_ue`);

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `PRO_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`no_enseignant`),
  ADD CONSTRAINT `PRO_FRM_FK` FOREIGN KEY (`CODE_FORMATION`) REFERENCES `formation` (`code_formation`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `QUE_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`no_enseignant`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `QUE_QUA_FK` FOREIGN KEY (`ID_QUALIFICATIF`) REFERENCES `qualificatif` (`id_qualificatif`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `question_evaluation`
--
ALTER TABLE `question_evaluation`
  ADD CONSTRAINT `QEV_QUA_FK` FOREIGN KEY (`ID_QUALIFICATIF`) REFERENCES `qualificatif` (`id_qualificatif`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `QEV_QUE_FK` FOREIGN KEY (`ID_QUESTION`) REFERENCES `question` (`id_question`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `QEV_REV_FK` FOREIGN KEY (`ID_RUBRIQUE_EVALUATION`) REFERENCES `rubrique_evaluation` (`id_rubrique_evaluation`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `reponse_evaluation`
--
ALTER TABLE `reponse_evaluation`
  ADD CONSTRAINT `RPE_ETU_FK` FOREIGN KEY (`NO_ETUDIANT`) REFERENCES `etudiant` (`no_etudiant`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RPE_EVE_FK` FOREIGN KEY (`ID_EVALUATION`) REFERENCES `evaluation` (`id_evaluation`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `reponse_question`
--
ALTER TABLE `reponse_question`
  ADD CONSTRAINT `RPQ_QEV_FK` FOREIGN KEY (`ID_QUESTION_EVALUATION`) REFERENCES `question_evaluation` (`id_question_evaluation`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RPQ_RPE_FK` FOREIGN KEY (`ID_REPONSE_EVALUATION`) REFERENCES `reponse_evaluation` (`id_reponse_evaluation`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `rubrique`
--
ALTER TABLE `rubrique`
  ADD CONSTRAINT `RUB_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`no_enseignant`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `rubrique_evaluation`
--
ALTER TABLE `rubrique_evaluation`
  ADD CONSTRAINT `REV_EVE_FK` FOREIGN KEY (`ID_EVALUATION`) REFERENCES `evaluation` (`id_evaluation`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `REV_RUB_FK` FOREIGN KEY (`ID_RUBRIQUE`) REFERENCES `rubrique` (`id_rubrique`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `rubrique_question`
--
ALTER TABLE `rubrique_question`
  ADD CONSTRAINT `RBQ_QUE_FK` FOREIGN KEY (`ID_QUESTION`) REFERENCES `question` (`id_question`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RBQ_RUB_FK` FOREIGN KEY (`ID_RUBRIQUE`) REFERENCES `rubrique` (`id_rubrique`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `unite_enseignement`
--
ALTER TABLE `unite_enseignement`
  ADD CONSTRAINT `UE_ENS_FK` FOREIGN KEY (`NO_ENSEIGNANT`) REFERENCES `enseignant` (`no_enseignant`),
  ADD CONSTRAINT `UE_FRM_FK` FOREIGN KEY (`CODE_FORMATION`) REFERENCES `formation` (`code_formation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
