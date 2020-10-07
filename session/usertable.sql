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


-- user için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `user` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `user`;

-- tablo yapısı dökülüyor user.usertable
CREATE TABLE IF NOT EXISTS `usertable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `job` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `mail` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- user.usertable: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` (`id`, `username`, `name`, `lastname`, `age`, `job`, `address`, `facebook`, `instagram`, `twitter`, `mail`, `password`) VALUES
	(2, 'omer', 'rewq', 'rewqq', 34, 'rew', 'gre', 'rew', 'rew', 'rew', 'rew', '1234'),
	(14, 'gulbahar', 'Gülbahar', 'Kankaya', 23, 'Coder', 'Bölmepınar', 'gulbaharkankaya', 'gulbaharkankaya', 'gulbaharkankaya', 'gulbaharkankaya.97@gmail.com', '1234'),
	(15, 'ali', 'gfgf', 'gfdgf', 233, NULL, NULL, NULL, NULL, NULL, NULL, '55555');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
