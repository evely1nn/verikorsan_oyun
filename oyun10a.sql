-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- korsan_oyun için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `korsan_oyun` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `korsan_oyun`;

-- tablo yapısı dökülüyor korsan_oyun.oyun
CREATE TABLE IF NOT EXISTS `oyun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) DEFAULT NULL,
  `fiyat` double DEFAULT NULL,
  `tur_id` int(11) DEFAULT NULL,
  `yas` tinyint(4) DEFAULT NULL,
  `boyut` int(11) DEFAULT NULL,
  `sistem` text DEFAULT NULL,
  `yayıncı_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_oyun_tur` (`tur_id`),
  KEY `FK_oyun_yayinci` (`yayıncı_id`),
  CONSTRAINT `FK_oyun_tur` FOREIGN KEY (`tur_id`) REFERENCES `tur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_oyun_yayinci` FOREIGN KEY (`yayıncı_id`) REFERENCES `yayinci` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyun.oyun: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `oyun` DISABLE KEYS */;
/*!40000 ALTER TABLE `oyun` ENABLE KEYS */;

-- tablo yapısı dökülüyor korsan_oyun.tur
CREATE TABLE IF NOT EXISTS `tur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyun.tur: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `tur` DISABLE KEYS */;
/*!40000 ALTER TABLE `tur` ENABLE KEYS */;

-- tablo yapısı dökülüyor korsan_oyun.yayinci
CREATE TABLE IF NOT EXISTS `yayinci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kurulus_tarih` date DEFAULT NULL,
  `personel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyun.yayinci: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `yayinci` DISABLE KEYS */;
/*!40000 ALTER TABLE `yayinci` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
