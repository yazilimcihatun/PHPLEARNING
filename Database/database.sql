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

-- tablo yapısı dökülüyor corporate.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL DEFAULT '0',
  `subtitle` text NOT NULL DEFAULT '0',
  `comment` mediumtext NOT NULL DEFAULT '0',
  `price` decimal(10,0) NOT NULL DEFAULT 0,
  `discounted` decimal(10,0) NOT NULL DEFAULT 0,
  `color` text NOT NULL DEFAULT '0',
  `seo` text NOT NULL DEFAULT '0',
  `labels` text NOT NULL DEFAULT '0',
  `size` tinyint(4) DEFAULT NULL,
  `brand` text NOT NULL DEFAULT '0',
  `piece` int(11) DEFAULT NULL,
  `delivery_date` text NOT NULL DEFAULT '0',
  `properties` mediumtext DEFAULT NULL,
  `favorites` int(11) DEFAULT NULL,
  `upload` datetime DEFAULT NULL,
  `update_` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- corporate.products: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `subtitle`, `comment`, `price`, `discounted`, `color`, `seo`, `labels`, `size`, `brand`, `piece`, `delivery_date`, `properties`, `favorites`, `upload`, `update_`) VALUES
	(7, 'tişört', 'tişört şok fiyata', 'güzel tişört', 45, 35, 'sarı', '#tişörtal', 'tişört', 38, 'gülbahar', 5, 'Beş gün', '50', 0, '2020-09-04 00:00:00', '2020-09-12 00:00:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- tablo yapısı dökülüyor corporate.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_title` text DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- corporate.settings: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
