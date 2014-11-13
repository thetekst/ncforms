-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2014 at 04:17 PM
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
-- Table structure for table `modx_ncforms_fields`
--

CREATE TABLE IF NOT EXISTS `modx_ncforms_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned DEFAULT NULL,
  `label` text,
  `placeholder` text,
  `multiple` int(1) unsigned NOT NULL DEFAULT '0',
  `required` int(1) unsigned NOT NULL DEFAULT '0',
  `input_value` text,
  `input_default_value` text,
  `type` enum('text','textarea','select','checkbox','radio','hidden') NOT NULL DEFAULT 'text',
  `order_id` int(10) DEFAULT '0',
  `error_msg` text NOT NULL,
  `validation` enum('','email','isNumber') NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `modx_ncforms_fields`
--

INSERT INTO `modx_ncforms_fields` (`id`, `form_id`, `label`, `placeholder`, `multiple`, `required`, `input_value`, `input_default_value`, `type`, `order_id`, `error_msg`, `validation`) VALUES
(1, 1, 'First name', 'First name', 0, 1, '', '', 'text', 0, 'Name is required!', ''),
(2, 1, 'Check shapes', '', 0, 1, 'Circle=circle||Triangle=triangle||Rectangle=rectangle', 'triangle||circle', 'checkbox', 1, '', ''),
(3, 1, 'Select colors', '', 0, 0, 'Red=red||Blue=blue||Black=black', '', 'radio', 2, '', ''),
(4, 1, 'My textarea', 'My textarea one', 0, 0, '', 'type', 'textarea', 3, 'error no!', ''),
(5, 1, NULL, NULL, 0, 0, 'hidden_value', NULL, 'hidden', 4, '', ''),
(6, 1, 'Pleace select country', '', 1, 1, 'Russia=russia||Egypt=egypt||Spain=spain', 'spain', 'select', 5, '', ''),
(7, 9, 'Имя', 'name', 0, 1, '', '', 'text', 0, '', ''),
(8, 9, 'Коммент', '', 0, 0, '', '', 'textarea', 1, '', ''),
(9, 9, 'формы', '', 0, 1, 'Нет=||Красный=red||Зеленый=green||Синий=blue', 'blue', 'select', 3, '', ''),
(10, 9, 'цвета', '', 0, 0, 'Красный=red||Зеленый=green||Синий=blue', 'red', 'checkbox', 2, '', ''),
(11, 9, 'скрытое поле', '', 0, 0, 'скрытое поле', '', 'hidden', 4, '', ''),
(12, 1, 'newtextfield1', '', 0, 0, '', '', 'text', 7, '', ''),
(22, NULL, NULL, NULL, 0, 0, NULL, NULL, 'text', 0, '', ''),
(23, 3, 'Name', '', 0, 1, '', '', 'text', 23, 'req name', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
