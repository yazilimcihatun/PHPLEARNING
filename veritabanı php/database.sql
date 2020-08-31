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
  `username` text NOT NULL,
  `name` text NOT NULL DEFAULT '',
  `lastname` text NOT NULL DEFAULT '',
  `age` int(11) NOT NULL,
  `gender` text NOT NULL DEFAULT '',
  `martital_status` text NOT NULL DEFAULT '',
  `job` text NOT NULL DEFAULT '',
  `mail` text NOT NULL DEFAULT '',
  `password` text NOT NULL DEFAULT '',
  `hobbies` text NOT NULL DEFAULT '',
  `interests` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- corporate.members: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `username`, `name`, `lastname`, `age`, `gender`, `martital_status`, `job`, `mail`, `password`, `hobbies`, `interests`) VALUES
	(1, 'fdsffd', 'fdsdfgfds', 'fdfgfds', 23, 'fdsdfgfd', 'fdsdfg', 'fdsdfgfds', 'fgfds', 'fddfgfd', 'fdfgfd', 'fdfgfds');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- tablo yapısı dökülüyor corporate.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL DEFAULT '0',
  `subtitle` text NOT NULL DEFAULT '0',
  `evaluation` tinyint(4) NOT NULL DEFAULT 0,
  `price` decimal(10,0) NOT NULL DEFAULT 0,
  `discounted` decimal(10,0) NOT NULL DEFAULT 0,
  `color` text NOT NULL DEFAULT '0',
  `seo` text NOT NULL DEFAULT '0',
  `labels` text NOT NULL DEFAULT '0',
  `size` tinyint(4) DEFAULT NULL,
  `brand` text NOT NULL DEFAULT '0',
  `piece` int(11) DEFAULT NULL,
  `delivery_date` text NOT NULL DEFAULT '0',
  `favorites` int(11) DEFAULT NULL,
  `properties` mediumtext DEFAULT NULL,
  `upload` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- corporate.products: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
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
