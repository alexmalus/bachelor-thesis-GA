-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2013 at 10:50 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `proiectlicenta`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_component`
--

CREATE TABLE IF NOT EXISTS `cms_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cms_componenttype_id` int(11) DEFAULT NULL,
  `config` text,
  `is_enabled` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cms_component`
--

INSERT INTO `cms_component` (`id`, `name`, `cms_componenttype_id`, `config`, `is_enabled`) VALUES
(1, 'Welcome', 1, 'YToxOntzOjQ6InRleHQiO3M6NTQ6InNhb3RlaHVzYW9odQ0KYW9ldSBzYW90bmV1aCBzbm9lDQp1YW8NCmV1DQoNCg0KPGI+dGVzdCI7fQ==', 'Y'),
(2, 'Test2', 1, 'YToxOntzOjQ6InRleHQiO3M6OToiYW9ldWF1YW91Ijt9', 'Y'),
(3, 'Article', 3, 'YToyOntzOjc6ImNvbnRlbnQiO3M6Mjg3OiI8aDE+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvTGljZW50YU1hbHVzQWxleGFuZHJ1Ly9hbWJpZW50LWFkZG9ucy9jbXMvdGVtcGxhdGVzL2RlZmF1bHQvY3NzL2VscnRlL2ltYWdlcy9zbWlsZXlzL3N1cnByaXNlZC5wbmciIHRpdGxlPSJzdXJwcmlzZWQiIGFsdD0ic3VycHJpc2VkIj48aW1nIHNyYz0iL2ltZy82Ij5IZWxsbyBXb3JsZDwvaDE+PGRpdj5hb2V1YW91YW9ldWFvZXU8L2Rpdj48ZGl2Pm9hZXU8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pm9lYXU8L2Rpdj4gICI7czo2OiJpbWFnZXMiO047fQ==', 'Y'),
(4, 'Test', 1, 'YToxOntzOjQ6InRleHQiO3M6MjU6IldlbGNvbWUgdG8gTG9zdCBhbmQgRk91bmQiO30=', 'Y'),
(5, 'test_crud', 2, 'YTo3OntzOjU6Im1vZGVsIjtzOjQ6Ikl0ZW0iO3M6ODoicGFnaW5hdGUiO3M6MDoiIjtzOjExOiJncmlkX2ZpZWxkcyI7czowOiIiO3M6MTE6ImZvcm1fZmllbGRzIjtzOjA6IiI7czo3OiJjYW5fYWRkIjtpOjE7czo4OiJjYW5fZWRpdCI7aTowO3M6MTA6ImNhbl9kZWxldGUiO2k6MDt9', 'Y'),
(6, 'tetete', 2, 'YTo3OntzOjU6Im1vZGVsIjtzOjc6IkNvdW50cnkiO3M6ODoicGFnaW5hdGUiO3M6MjoiMTAiO3M6MTE6ImdyaWRfZmllbGRzIjtzOjA6IiI7czoxMToiZm9ybV9maWVsZHMiO3M6MDoiIjtzOjc6ImNhbl9hZGQiO2k6MTtzOjg6ImNhbl9lZGl0IjtpOjE7czoxMDoiY2FuX2RlbGV0ZSI7aToxO30=', 'Y'),
(7, 'cucu bau', 3, 'YToyOntzOjc6ImNvbnRlbnQiO3M6MjM6ImxhbGFsYTxkaXY+PGJyPjwvZGl2PiAgIjtzOjY6ImltYWdlcyI7Tjt9', 'Y'),
(8, 'a', 3, NULL, 'Y'),
(9, 'a', 3, 'YToyOntzOjc6ImNvbnRlbnQiO3M6MTk2NDoiPGRpdj48ZGl2PjxkaXY+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvVGVtYU9yaWcyLy9hbWJpZW50LWFkZG9ucy9jbXMvdGVtcGxhdGVzL2RlZmF1bHQvY3NzL2VscnRlL2ltYWdlcy9zbWlsZXlzL3N1cnByaXNlZC5wbmciIHRpdGxlPSJzdXJwcmlzZWQiIGFsdD0ic3VycHJpc2VkIj48L2Rpdj48L2Rpdj48aW1nIHNyYz0iaHR0cDovL2xvY2FsaG9zdC9UZW1hT3JpZzIvL2FtYmllbnQtYWRkb25zL2Ntcy90ZW1wbGF0ZXMvZGVmYXVsdC9jc3MvZWxydGUvaW1hZ2VzL3NtaWxleXMvc3VycHJpc2VkLnBuZyIgdGl0bGU9InN1cnByaXNlZCIgYWx0PSJzdXJwcmlzZWQiPjxkaXY+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvVGVtYU9yaWcyLy9hbWJpZW50LWFkZG9ucy9jbXMvdGVtcGxhdGVzL2RlZmF1bHQvY3NzL2VscnRlL2ltYWdlcy9zbWlsZXlzL3N1cnByaXNlZC5wbmciIHRpdGxlPSJzdXJwcmlzZWQiIGFsdD0ic3VycHJpc2VkIj48ZGl2PjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L1RlbWFPcmlnMi8vYW1iaWVudC1hZGRvbnMvY21zL3RlbXBsYXRlcy9kZWZhdWx0L2Nzcy9lbHJ0ZS9pbWFnZXMvc21pbGV5cy9zdXJwcmlzZWQucG5nIiB0aXRsZT0ic3VycHJpc2VkIiBhbHQ9InN1cnByaXNlZCI+PC9kaXY+PC9kaXY+PC9kaXY+VGVzdGluZyBUZXN0aW5nITxkaXY+PGJyPjwvZGl2PjxkaXY+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvVGVtYU9yaWcyLy9hbWJpZW50LWFkZG9ucy9jbXMvdGVtcGxhdGVzL2RlZmF1bHQvY3NzL2VscnRlL2ltYWdlcy9zbWlsZXlzL3dpbmsucG5nIiB0aXRsZT0id2luayIgYWx0PSJ3aW5rIj5NZXJnZSE8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L1RlbWFPcmlnMi8vYW1iaWVudC1hZGRvbnMvY21zL3RlbXBsYXRlcy9kZWZhdWx0L2Nzcy9lbHJ0ZS9pbWFnZXMvc21pbGV5cy9zdXJwcmlzZWQucG5nIiB0aXRsZT0ic3VycHJpc2VkIiBhbHQ9InN1cnByaXNlZCI+IDxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L1RlbWFPcmlnMi8vYW1iaWVudC1hZGRvbnMvY21zL3RlbXBsYXRlcy9kZWZhdWx0L2Nzcy9lbHJ0ZS9pbWFnZXMvc21pbGV5cy9zdXJwcmlzZWQucG5nIiB0aXRsZT0ic3VycHJpc2VkIiBhbHQ9InN1cnByaXNlZCI+IDxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L1RlbWFPcmlnMi8vYW1iaWVudC1hZGRvbnMvY21zL3RlbXBsYXRlcy9kZWZhdWx0L2Nzcy9lbHJ0ZS9pbWFnZXMvc21pbGV5cy9zdXJwcmlzZWQucG5nIiB0aXRsZT0ic3VycHJpc2VkIiBhbHQ9InN1cnByaXNlZCI+IDxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L1RlbWFPcmlnMi8vYW1iaWVudC1hZGRvbnMvY21zL3RlbXBsYXRlcy9kZWZhdWx0L2Nzcy9lbHJ0ZS9pbWFnZXMvc21pbGV5cy9zdXJwcmlzZWQucG5nIiB0aXRsZT0ic3VycHJpc2VkIiBhbHQ9InN1cnByaXNlZCI+PGRpdj48aW1nIHNyYz0iaHR0cDovL2xvY2FsaG9zdC9UZW1hT3JpZzIvL2FtYmllbnQtYWRkb25zL2Ntcy90ZW1wbGF0ZXMvZGVmYXVsdC9jc3MvZWxydGUvaW1hZ2VzL3NtaWxleXMvc3VycHJpc2VkLnBuZyIgdGl0bGU9InN1cnByaXNlZCIgYWx0PSJzdXJwcmlzZWQiPjwvZGl2PiAgICAgPGRpdj48aW1nIHNyYz0iaHR0cDovL2xvY2FsaG9zdC9UZW1hT3JpZzIvL2FtYmllbnQtYWRkb25zL2Ntcy90ZW1wbGF0ZXMvZGVmYXVsdC9jc3MvZWxydGUvaW1hZ2VzL3NtaWxleXMvc3VycHJpc2VkLnBuZyIgdGl0bGU9InN1cnByaXNlZCIgYWx0PSJzdXJwcmlzZWQiPjxkaXY+PGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvVGVtYU9yaWcyLy9hbWJpZW50LWFkZG9ucy9jbXMvdGVtcGxhdGVzL2RlZmF1bHQvY3NzL2VscnRlL2ltYWdlcy9zbWlsZXlzL3N1cnByaXNlZC5wbmciIHRpdGxlPSJzdXJwcmlzZWQiIGFsdD0ic3VycHJpc2VkIj48L2Rpdj48L2Rpdj48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+ICAiO3M6NjoiaW1hZ2VzIjtOO30=', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `cms_componenttype`
--

CREATE TABLE IF NOT EXISTS `cms_componenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cms_componenttype`
--

INSERT INTO `cms_componenttype` (`id`, `name`, `class`) VALUES
(1, 'Text', 'cms/Cms_Text'),
(2, 'CRUD', 'cms/Cms_CRUD'),
(3, 'What you see is  what you get', 'cms/Cms_Html');

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `api_layout` varchar(255) DEFAULT NULL,
  `page_layout` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`id`, `name`, `api_layout`, `page_layout`) VALUES
(1, 'cms/test', NULL, NULL),
(2, 'index', NULL, NULL),
(3, 'cms/testa', NULL, NULL),
(4, 'cms/testd', NULL, NULL),
(6, 'cms/index', NULL, NULL),
(7, 'cms/UnTest', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pagecomponent`
--

CREATE TABLE IF NOT EXISTS `cms_pagecomponent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_page_id` int(11) DEFAULT NULL,
  `cms_component_id` int(11) DEFAULT NULL,
  `template_spot` text,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cms_pagecomponent`
--

INSERT INTO `cms_pagecomponent` (`id`, `cms_page_id`, `cms_component_id`, `template_spot`, `ord`) VALUES
(1, 1, 1, 'Content', NULL),
(3, 1, 3, 'Content', NULL),
(4, 2, 7, 'Content', 1),
(5, 2, 1, 'Content', 2),
(7, 3, 7, 'Content', NULL),
(8, 4, 8, 'Content', NULL),
(9, 6, 9, 'Content', NULL),
(10, 6, 1, 'Content', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_route`
--

CREATE TABLE IF NOT EXISTS `cms_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule` text,
  `target` text,
  `params` text,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_route`
--

INSERT INTO `cms_route` (`id`, `rule`, `target`, `params`, `ord`) VALUES
(1, '(cms\\/.*)', 'cms', 'cms_page', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_tag`
--

CREATE TABLE IF NOT EXISTS `cms_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `cms_tag_n` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `nume` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `companie` varchar(50) NOT NULL,
  `detalii` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`nume`, `email`, `telefon`, `companie`, `detalii`, `id`) VALUES
('Malus Alexandru', 'mitzu_alex2002@yahoo.com', '0755678238', 'nici una, sunt student', 'doresc mai multe detalii in legatura cu acest produs', 1),
('Stefan Colotin', 'stefancolotin@yahoo.com', '0756565271', 'RDS RCS', 'Am folosit Scrum4u si sunt multumit!', 20);

-- --------------------------------------------------------

--
-- Table structure for table `filestore_file`
--

CREATE TABLE IF NOT EXISTS `filestore_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filestore_type_id` int(11) NOT NULL DEFAULT '0',
  `filestore_volume_id` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) DEFAULT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `filenum` int(11) NOT NULL DEFAULT '0',
  `deleted` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `filestore_file`
--

INSERT INTO `filestore_file` (`id`, `filestore_type_id`, `filestore_volume_id`, `filename`, `original_filename`, `filesize`, `filenum`, `deleted`) VALUES
(1, 2, 1, '0/20130704133027__68fb4548e8ab56effdeedeffc7d109c8-d5z3z98.jpg', '68fb4548e8ab56effdeedeffc7d109c8-d5z3z98.jpg', 447112, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `filestore_image`
--

CREATE TABLE IF NOT EXISTS `filestore_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `original_file_id` int(11) NOT NULL DEFAULT '0',
  `thumb_file_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `filestore_image`
--

INSERT INTO `filestore_image` (`id`, `name`, `original_file_id`, `thumb_file_id`) VALUES
(1, NULL, 6, 5),
(2, NULL, 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `filestore_type`
--

CREATE TABLE IF NOT EXISTS `filestore_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mime_type` varchar(64) NOT NULL DEFAULT '',
  `extension` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `filestore_type`
--

INSERT INTO `filestore_type` (`id`, `name`, `mime_type`, `extension`) VALUES
(1, 'png', 'image/png', 'png'),
(2, 'jpeg', 'image/jpeg', 'jpeg'),
(3, 'gif', 'image/gif', 'gif');

-- --------------------------------------------------------

--
-- Table structure for table `filestore_volume`
--

CREATE TABLE IF NOT EXISTS `filestore_volume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `dirname` varchar(255) NOT NULL DEFAULT '',
  `total_space` bigint(20) NOT NULL DEFAULT '0',
  `used_space` bigint(20) NOT NULL DEFAULT '0',
  `stored_files_cnt` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('Y','N') DEFAULT 'Y',
  `last_filenum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `filestore_volume`
--

INSERT INTO `filestore_volume` (`id`, `name`, `dirname`, `total_space`, `used_space`, `stored_files_cnt`, `enabled`, `last_filenum`) VALUES
(1, 'upload', 'upload', 1000000000, 0, 10, 'Y', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `info` varchar(255) NOT NULL,
  `tabel` varchar(255) NOT NULL,
  `DataActiune` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `user_id`, `info`, `tabel`, `DataActiune`) VALUES
(10, 3, 'Inserare date in tabelul Poveste', 'story', '2013-06-24'),
(11, 3, 'Stergere linie in tabelul Poveste', 'story', '2013-06-24'),
(12, 3, 'Actualizare date in tabelul Poveste', 'story', '2013-06-24'),
(13, 3, 'Incarcare date din tabelul Poveste', 'story', '2013-06-24'),
(22, 2, 'Actualizare date in tabelul Poveste', 'story', '2013-06-24'),
(23, 2, 'Actualizare date in tabelul Poveste', 'story', '2013-06-25'),
(24, 2, 'Actualizare date in tabelul Poveste', 'story', '2013-06-25'),
(25, 3, 'Actualizare date in tabelul Poveste', 'poveste', '2013-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `poveste`
--

CREATE TABLE IF NOT EXISTS `poveste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `Nume` varchar(20) DEFAULT NULL,
  `Prioritate` int(11) DEFAULT NULL,
  `Estimare` int(11) DEFAULT NULL,
  `MetodaValidare` varchar(255) DEFAULT NULL,
  `Note` varchar(255) DEFAULT NULL,
  `nrSprint` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1585 ;

--
-- Dumping data for table `poveste`
--

INSERT INTO `poveste` (`id`, `user_id`, `Nume`, `Prioritate`, `Estimare`, `MetodaValidare`, `Note`, `nrSprint`) VALUES
(1, 3, 'Depunere in Cont', 55, 10, 'autentificare', 'trebuie diagrama UML', 3),
(2, 4, 'Istoric Tranzactii', 5, 16, 'Autentificare, deschidere tranzactii', 'Folosire memorie virtuala', 2),
(3, 2, 'Interfata utilizare', 44, 2, 'uml', 'se va folosi grija maxima!', 0),
(4, 2, 'Depunere bani', 22, 3, 'Autentificare user', '', 1),
(1582, 0, 'Administrare utiliza', 2, 22, 'Intai un powerpoint cu ceva slide-uri', 'Bonus la reincarcare credit', 2),
(1583, 0, 'Verificare Credit Pr', 22, 2, 'Introducere credit in cardurile programatorilor', 'Minim 1000 de euro', 1),
(1584, 0, 'Depanare erori', 22, 3, 'Eclipse', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `probleme`
--

CREATE TABLE IF NOT EXISTS `probleme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proiect_id` int(11) NOT NULL,
  `Titlu` varchar(30) NOT NULL,
  `Prioritatea` int(11) NOT NULL,
  `ZiuaScadenta` date NOT NULL,
  `este_fixata` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `probleme`
--

INSERT INTO `probleme` (`id`, `proiect_id`, `Titlu`, `Prioritatea`, `ZiuaScadenta`, `este_fixata`) VALUES
(1, 1, 'Lipsa spatiu hard', 22, '2013-06-20', 1),
(5, 3, 'Nevoie cerneala pentru imprima', 22, '1990-04-19', 1),
(6, 1, 'Lipsa training proiectanti', 1, '1000-09-10', 1),
(7, 4, 'Angajati neplatiti de 2 luni', 223, '2013-06-21', 1),
(8, 3, 'Nemultumire client proiect', 23, '2013-06-29', 1),
(9, 1, 'Product Owner-ul se pensioneaz', 22, '2013-06-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `proiect`
--

CREATE TABLE IF NOT EXISTS `proiect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `realizare` tinyint(1) NOT NULL,
  `nume` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `proiect`
--

INSERT INTO `proiect` (`id`, `user_id`, `realizare`, `nume`) VALUES
(1, 8, 1, 'Sistem de tranzactii bancare online'),
(2, 8, 0, 'Un Alt Proiect'),
(3, 11, 0, 'Creare retea ATM'),
(4, 11, 0, 'Dezvoltare produs software pentru gestionarea licentei');

-- --------------------------------------------------------

--
-- Table structure for table `stickynote`
--

CREATE TABLE IF NOT EXISTS `stickynote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `is_global` enum('Y','N') DEFAULT 'N',
  `url` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `created_dts` datetime DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `stickynote`
--

INSERT INTO `stickynote` (`id`, `name`, `content`, `is_global`, `url`, `color`, `user_id`, `x`, `y`, `created_dts`, `width`, `height`) VALUES
(5, NULL, 'versiunea 1.1 va permite dezvoltarea mai multor proiecte!', 'N', 'index', 'blue', NULL, 888, 342, '2013-07-01 14:17:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subnotite`
--

CREATE TABLE IF NOT EXISTS `subnotite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `poveste_id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `estimare` int(11) NOT NULL,
  `Utilitate` int(11) NOT NULL,
  `faza` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `subnotite`
--

INSERT INTO `subnotite` (`id`, `user_id`, `poveste_id`, `nume`, `estimare`, `Utilitate`, `faza`) VALUES
(1, 4, 1, 'Test', 22, 40, 'sfarsit'),
(2, 5, 3, 'Form', 22, 0, 'sfarsit'),
(3, 4, 3, 'Oper.', 3, 0, 'sfarsit'),
(4, 4, 2, 'GUI', 3, 25, 'sfarsit'),
(9, 5, 4, 'Test', 22, 0, 'sfarsit'),
(26, 4, 2, 'Integr', 22, 0, 'inceput');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `nume`, `email`) VALUES
(1, 'Malus Alexandru', 'malus.alexandru@yahoo.com'),
(2, 'Dogariu Laura', 'laura.dogariu@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `sumar_sprint`
--

CREATE TABLE IF NOT EXISTS `sumar_sprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DataIncepere` date NOT NULL,
  `DataSfarsit` date NOT NULL,
  `story_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sumar_sprint`
--

INSERT INTO `sumar_sprint` (`id`, `DataIncepere`, `DataSfarsit`, `story_id`) VALUES
(1, '2013-06-23', '2013-06-24', 1),
(2, '2013-06-06', '2013-06-29', 2),
(3, '2013-06-02', '2013-07-18', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_po` tinyint(1) NOT NULL DEFAULT '0',
  `is_scrum` tinyint(1) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT 'HASH of password',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `is_admin`, `is_po`, `is_scrum`, `first_name`, `last_name`, `company`, `email`, `password`, `created`) VALUES
(1, 1, 0, 0, 'Alex', 'Malus', NULL, 'alex@a.com', 'admin', '2013-05-31 10:14:00'),
(2, 0, 1, 0, 'ProductOwner', 'BossMare', NULL, 'product@owner.com', 'product', '2013-06-12 02:13:12'),
(3, 0, 0, 1, 'ScrumMaster', 'BossMic', NULL, 'scrum@master.com', 'scrum', '2013-06-27 00:15:10'),
(4, 0, 0, 0, 'Programator', 'Mic', NULL, 'programator@mic.com', 'prog', '2013-06-05 07:00:20'),
(5, 0, 0, 0, 'AlDoileaProgramator', 'Mai mare', NULL, 'programator@mare.com', 'prog', '2013-07-24 02:17:19');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
