-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.5.5-10.4.6-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for db_penchat
CREATE DATABASE IF NOT EXISTS `db_penchat` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_penchat`;


-- Dumping structure for table db_penchat.tbl_admin
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `kode` int(11) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `level` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `login_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=latin1;

-- Dumping data for table db_penchat.tbl_admin: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
REPLACE INTO `tbl_admin` (`kode`, `nama_admin`, `username`, `password`, `level`, `foto`, `login_status`) VALUES
	(1, 'Sumanta', 'sumanta', 'bac1a82f16047f9404b77a6b849e6c09', 'superadmin', 'http://66.96.238.16/st/assets/img/sumanta.jpg', 1),
	(239, 'guest', 'guest', '084e0343a0486ff05530df6c705c8bb4', 'karyawan', 'http://66.96.238.16/st/		assets/img/PENCHAT.png', 1),
	(240, 'guest2', 'guest2', 'c4e799fad53c0dec94d4f201a4dd5e78', 'karyawan', 'http://66.96.238.16/st/		assets/img/ig1.jpg', 1),
	(241, 'Demo', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'karyawan', 'http://66.96.238.16/st/assets/img/maintenance.png', NULL);
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;


-- Dumping structure for table db_penchat.tbl_chatting
CREATE TABLE IF NOT EXISTS `tbl_chatting` (
  `kode` int(100) NOT NULL AUTO_INCREMENT,
  `tgl` datetime NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `subject` text NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

-- Dumping data for table db_penchat.tbl_chatting: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_chatting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_chatting` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
