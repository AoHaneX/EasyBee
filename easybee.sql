<<<<<<< HEAD
-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour easybee
CREATE DATABASE IF NOT EXISTS `easybee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `easybee`;

-- Listage de la structure de table easybee. equipement
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idFormation` int DEFAULT NULL,
  `descriptionEquipement` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.equipement : ~0 rows (environ)

-- Listage de la structure de table easybee. formation
CREATE TABLE IF NOT EXISTS `formation` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idTypeFormation` int DEFAULT NULL,
  `idTheme` int DEFAULT NULL,
  `descriptionFormation` varchar(250) DEFAULT NULL,
  `niveauFormation` varchar(20) DEFAULT NULL,
  `lieuFormation` varchar(250) DEFAULT NULL,
  `dateDebutFormation` date DEFAULT NULL,
  `dateFinFormation` date DEFAULT NULL,
  `heureDebutJ1` time DEFAULT NULL,
  `heureFinJ1` time DEFAULT NULL,
  `heureDebutJ2` time DEFAULT NULL,
  `heureFinJ2` time DEFAULT NULL,
  `prixFormation` float DEFAULT NULL,
  `modaliteFormation` varchar(100) DEFAULT NULL,
  `nombreParticipant` int DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.formation : ~2 rows (environ)
INSERT INTO `formation` (`id`, `idTypeFormation`, `idTheme`, `descriptionFormation`, `niveauFormation`, `lieuFormation`, `dateDebutFormation`, `dateFinFormation`, `heureDebutJ1`, `heureFinJ1`, `heureDebutJ2`, `heureFinJ2`, `prixFormation`, `modaliteFormation`, `nombreParticipant`, `titre`) VALUES
	(1, 1, 1, 'Une formation pour apprendre  la base de l\'essaimage', '1', 'Centre EasyBee', '2023-08-25', '2023-08-25', '08:00:00', '03:27:23', NULL, NULL, 60, NULL, 20, 'L\'essaimage-Débutant'),
	(2, 1, 1, 'Une formation en deux jours chez un apiculteur pour percer les secrets de l\'essaimage', '3', 'Domaine des 3 Trèfles', '2023-09-18', '2023-09-19', '14:30:00', '18:00:00', '15:00:00', '19:00:00', 800, '1', 12, 'L\'essaimage-Avancé'),
	(3, 2, 2, 'Les abeilles sont très importantes pour notre écosytème. On vous explique les raisons de leurs importance et l\'impact qu\'a la diminution de leurs nombres', '1', 'Centre EasyBee', '2022-07-12', '2023-07-12', '15:00:00', '16:00:00', NULL, NULL, 15, NULL, 35, 'L\'importance des abeilles');

-- Listage de la structure de table easybee. reservation
CREATE TABLE IF NOT EXISTS `reservation` (
  `idUtilisateur` int DEFAULT NULL,
  `idFormation` int DEFAULT NULL,
  `etatPaiement` tinyint(1) DEFAULT NULL,
  `etat` varchar(20) DEFAULT NULL,
  `dateReservation` date DEFAULT NULL,
  `nombreReservation` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.reservation : ~0 rows (environ)

-- Listage de la structure de table easybee. theme
CREATE TABLE IF NOT EXISTS `theme` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.theme : ~0 rows (environ)
INSERT INTO `theme` (`id`, `libelle`) VALUES
	(1, 'Essaimage'),
	(2, 'Sensibilisation');

-- Listage de la structure de table easybee. typeformation
CREATE TABLE IF NOT EXISTS `typeformation` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.typeformation : ~0 rows (environ)

-- Listage de la structure de table easybee. utilisateur
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `motDePasse` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.utilisateur : ~0 rows (environ)
INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `mail`, `telephone`, `motDePasse`) VALUES
	(1, 'Stalin-Renault', 'Adrian', 'rainbowaohane@gmail.com', '0644786728', 'rqdd');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
=======
-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour easybee
CREATE DATABASE IF NOT EXISTS `easybee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `easybee`;

-- Listage de la structure de table easybee. equipement
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idFormation` int DEFAULT NULL,
  `descriptionEquipement` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.equipement : ~0 rows (environ)

-- Listage de la structure de table easybee. formation
CREATE TABLE IF NOT EXISTS `formation` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idTypeFormation` int DEFAULT NULL,
  `idTheme` int DEFAULT NULL,
  `descriptionFormation` varchar(250) DEFAULT NULL,
  `niveauFormation` varchar(20) DEFAULT NULL,
  `lieuFormation` varchar(250) DEFAULT NULL,
  `dateDebutFormation` date DEFAULT NULL,
  `dateFinFormation` date DEFAULT NULL,
  `heureDebutJ1` time DEFAULT NULL,
  `heureFinJ1` time DEFAULT NULL,
  `heureDebutJ2` time DEFAULT NULL,
  `heureFinJ2` time DEFAULT NULL,
  `prixFormation` float DEFAULT NULL,
  `modaliteFormation` varchar(100) DEFAULT NULL,
  `nombreParticipant` int DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.formation : ~2 rows (environ)
INSERT INTO `formation` (`id`, `idTypeFormation`, `idTheme`, `descriptionFormation`, `niveauFormation`, `lieuFormation`, `dateDebutFormation`, `dateFinFormation`, `heureDebutJ1`, `heureFinJ1`, `heureDebutJ2`, `heureFinJ2`, `prixFormation`, `modaliteFormation`, `nombreParticipant`, `titre`) VALUES
	(1, 1, 1, 'Une formation pour apprendre  la base de l\'essaimage', '1', 'Centre EasyBee', '2023-08-25', '2023-08-25', '08:00:00', '03:27:23', NULL, NULL, 60, NULL, 20, 'L\'essaimage-Débutant'),
	(2, 1, 1, 'Une formation en deux jours chez un apiculteur pour percer les secrets de l\'essaimage', '3', 'Domaine des 3 Trèfles', '2023-09-18', '2023-09-19', '14:30:00', '18:00:00', '15:00:00', '19:00:00', 800, '1', 12, 'L\'essaimage-Avancé'),
	(3, 2, 2, 'Les abeilles sont très importantes pour notre écosytème. On vous explique les raisons de leurs importance et l\'impact qu\'a la diminution de leurs nombres', '1', 'Centre EasyBee', '2022-07-12', '2023-07-12', '15:00:00', '16:00:00', NULL, NULL, 15, NULL, 35, 'L\'importance des abeilles');

-- Listage de la structure de table easybee. reservation
CREATE TABLE IF NOT EXISTS `reservation` (
  `idUtilisateur` int DEFAULT NULL,
  `idFormation` int DEFAULT NULL,
  `etatPaiement` tinyint(1) DEFAULT NULL,
  `etat` varchar(20) DEFAULT NULL,
  `dateReservation` date DEFAULT NULL,
  `nombreReservation` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.reservation : ~0 rows (environ)

-- Listage de la structure de table easybee. theme
CREATE TABLE IF NOT EXISTS `theme` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.theme : ~0 rows (environ)
INSERT INTO `theme` (`id`, `libelle`) VALUES
	(1, 'Essaimage'),
	(2, 'Sensibilisation');

-- Listage de la structure de table easybee. typeformation
CREATE TABLE IF NOT EXISTS `typeformation` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.typeformation : ~0 rows (environ)

-- Listage de la structure de table easybee. utilisateur
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `motDePasse` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table easybee.utilisateur : ~0 rows (environ)
INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `mail`, `telephone`, `motDePasse`) VALUES
	(1, 'Stalin-Renault', 'Adrian', 'rainbowaohane@gmail.com', '0644786728', 'rqdd');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
>>>>>>> 19db8cb (Added new folders to repository)
