-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2014 at 12:53 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `modx_package_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `modx_ncforms`
--

CREATE TABLE IF NOT EXISTS `modx_ncforms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `save_method` enum('database','database_email') NOT NULL DEFAULT 'database_email',
  `redirect_or_msg` enum('redirect','success_message') NOT NULL DEFAULT 'success_message',
  `email` text,
  `success_message` text,
  `spam_hook` int(1) unsigned NOT NULL DEFAULT '1',
  `recaptcha_hook` int(1) unsigned NOT NULL DEFAULT '1',
  `redirect_id` int(11) unsigned DEFAULT '0',
  `identifier` varchar(255) DEFAULT '',
  `hooks` text,
  `action_button` varchar(255) DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `modx_ncforms`
--

INSERT INTO `modx_ncforms` (`id`, `name`, `save_method`, `redirect_or_msg`, `email`, `success_message`, `spam_hook`, `recaptcha_hook`, `redirect_id`, `identifier`, `hooks`, `action_button`, `properties`) VALUES
(1, 'Один', 'database_email', 'success_message', 'dmitry.tkachenko@netcracker.com', 'good', 1, 1, 2, 'sdfsfds', '', 'sdfsdf', ''),
(3, 'Два', 'database', 'success_message', '', 'ok', 1, 0, 0, 'twoform', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
