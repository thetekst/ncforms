-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2014 at 01:56 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `modx_delete`
--

-- --------------------------------------------------------

--
-- Table structure for table `modx_ncforms_sent_data`
--

CREATE TABLE IF NOT EXISTS `modx_ncforms_sent_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned DEFAULT NULL,
  `sent_on` datetime DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `sent_on` (`sent_on`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `modx_ncforms_sent_data`
--

INSERT INTO `modx_ncforms_sent_data` (`id`, `form_id`, `sent_on`, `data`) VALUES
(1, 3, '2014-08-29 15:22:59', '{"FIRST_NAME":"FIRST_ID","TEXTAREA":"textarea","SELECT_COUNTRY":"spain","CHECKBOX":["circle","triangle"],"RADIO":["blue"],"HIDDEN_NAME":"hidden_value"}'),
(2, 3, '2014-08-29 16:42:15', '{"FIRST_NAME":"sdfsdf","TEXTAREA":"textarea","SELECT_COUNTRY":"spain","CHECKBOX":["circle","triangle"],"RADIO":["blue"],"HIDDEN_NAME":"hidden_value"}'),
(3, 3, '2014-08-29 19:41:09', '{"FIRST_NAME":"name","TEXTAREA":"textarea","SELECT_COUNTRY":"spain","CHECKBOX":["circle","triangle"],"RADIO":["blue"],"HIDDEN_NAME":"hidden_value"}'),
(4, 9, '2014-09-01 11:23:33', '{"name":"name","comment":"","colors":"blue","colorstwo":["red","green"]}'),
(5, 9, '2014-09-01 11:24:09', '{"name":"name","comment":"","colors":"red","colorstwo":["red","blue"]}'),
(6, 9, '2014-09-01 11:24:58', '{"name":"name","comment":"","colors":"blue","colorstwo":["red","blue"]}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
