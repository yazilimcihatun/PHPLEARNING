-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.13-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- corporate için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `corporate` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `corporate`;

-- tablo yapısı dökülüyor corporate.members
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` mediumtext NOT NULL,
  `Name` mediumtext NOT NULL DEFAULT '',
  `Lastname` mediumtext NOT NULL DEFAULT '',
  `Age` int(11) NOT NULL,
  `Gender` mediumtext NOT NULL DEFAULT '',
  `Martital_status` mediumtext NOT NULL DEFAULT '',
  `Job` mediumtext NOT NULL DEFAULT '',
  `Mail` mediumtext NOT NULL DEFAULT '',
  `Password` mediumtext NOT NULL DEFAULT '',
  `Hobbies` mediumtext NOT NULL DEFAULT '',
  `Interests` mediumtext NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- corporate.members: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `Username`, `Name`, `Lastname`, `Age`, `Gender`, `Martital_status`, `Job`, `Mail`, `Password`, `Hobbies`, `Interests`) VALUES
	(17, 'yazilimcihatun', 'Gülbahar', 'Çetin', 23, 'Kadın', 'Bekar', 'çaylak', 'kdkjska@gmail.com', 'njfkdslş', 'fotoğraf', 'film');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
