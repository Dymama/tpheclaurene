-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 08 Mars 2021 à 01:33
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `service`
--

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `sexe` varchar(60) NOT NULL,
  `service` varchar(60) NOT NULL,
  `embauche` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`id`, `nom`, `prenom`, `sexe`, `service`, `embauche`) VALUES
(1, 'test', 'test', 'FÃ©minin', 'Service Commercial', '2021-03-08'),
(2, 'Test', 'test', 'FÃ©minin', 'Service Informatique', '2021-03-08'),
(3, 'DIOMANDE', 'LaurÃ¨ne', 'FÃ©minin', 'Service Informatique', '2021-03-08'),
(4, 'Mamady', 'KEITA', 'Masculin', 'Service Maintenant & RÃ©seaux', '2021-03-08'),
(5, 'Mamady', 'KEITA', 'Masculin', 'Service Maintenant & RÃ©seaux', '2021-03-08');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
