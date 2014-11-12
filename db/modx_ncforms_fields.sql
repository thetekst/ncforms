-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2014 at 08:30 PM
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
  `input_name` text,
  `input_value` text,
  `input_default_value` text,
  `input_wrapper_tag_id` text,
  `type` enum('text','textarea','select','checkbox','radio','hidden') NOT NULL DEFAULT 'text',
  `order_id` int(10) DEFAULT '0',
  `error_msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `modx_ncforms_fields`
--

INSERT INTO `modx_ncforms_fields` (`id`, `form_id`, `label`, `placeholder`, `multiple`, `required`, `input_name`, `input_value`, `input_default_value`, `input_wrapper_tag_id`, `type`, `order_id`, `error_msg`) VALUES
(1, 1, 'First name', 'First name', 0, 1, 'FIRST_NAME', '', '', 'FIRST_ID_WR', 'text', 0, 'Name is required'),
(2, 1, 'Check shapes', '', 0, 1, 'CHECKBOX', 'Circle=circle||Triangle=triangle||Rectangle=rectangle', 'triangle||circle', 'CHECKBOX_WR', 'checkbox', 1, ''),
(3, 1, 'Select colors', '', 0, 1, 'RADIO', 'Red=red||Blue=blue||Black=black', '', 'RADIO_WR', 'radio', 2, ''),
(4, 1, 'My textarea', 'My textarea one', 0, 1, 'TEXTAREA', '', 'type', 'TEXTAREA_WR', 'textarea', 3, 'error no!'),
(5, 1, NULL, NULL, 0, 0, 'HIDDEN_NAME', 'hidden_value', NULL, NULL, 'hidden', 4, ''),
(6, 1, 'Pleace select country', '', 1, 1, 'SELECT_COUNTRY', 'Russia=russia||Egypt=egypt||Spain=spain', 'spain', 'COUNTRY_WR', 'select', 5, ''),
(7, 9, 'Имя', 'name', 0, 1, 'name', '', '', 'namewr', 'text', 0, ''),
(8, 9, 'Коммент', '', 0, 0, 'comment', '', '', 'commentid', 'textarea', 1, ''),
(9, 9, 'формы', '', 0, 1, 'colors', 'Нет=||Красный=red||Зеленый=green||Синий=blue', 'blue', 'colorswr', 'select', 3, ''),
(10, 9, 'цвета', '', 0, 0, 'colorstwo', 'Красный=red||Зеленый=green||Синий=blue', 'red', 'colorstwo', 'checkbox', 2, ''),
(11, 9, 'скрытое поле', '', 0, 0, 'hidden_field', 'скрытое поле', '', 'hidwr', 'hidden', 4, ''),
(12, 1, 'newtextfield1', '', 0, 0, NULL, '', '', NULL, 'text', 7, ''),
(22, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 'text', 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
