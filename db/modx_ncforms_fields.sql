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
-- Table structure for table `modx_ncforms_fields`
--

CREATE TABLE IF NOT EXISTS `modx_ncforms_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned DEFAULT NULL,
  `label` text,
  `placeholder` text,
  `multiple` int(1) unsigned NOT NULL DEFAULT '0',
  `input_validate` int(1) unsigned NOT NULL DEFAULT '0',
  `input_name` text,
  `input_value` text,
  `input_default_value` text,
  `input_wrapper_tag_id` text,
  `type` enum('text','textarea','select','checkbox','radio','hidden') NOT NULL DEFAULT 'text',
  `order_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `modx_ncforms_fields`
--

INSERT INTO `modx_ncforms_fields` (`id`, `form_id`, `label`, `placeholder`, `multiple`, `input_validate`, `input_name`, `input_value`, `input_default_value`, `input_wrapper_tag_id`, `type`, `order_id`) VALUES
(1, 3, 'First name', '', 0, 1, 'FIRST_NAME', '', '', 'FIRST_ID_WR', 'text', 0),
(2, 3, 'Select shapes', '', 0, 0, 'CHECKBOX', 'Circle=circle||Triangle=triangle||Rectangle=rectangle', 'triangle||circle', 'CHECKBOX_WR', 'checkbox', 3),
(3, 3, 'Select colors', NULL, 0, 0, 'RADIO', 'Red=red||Blue=blue||Black=black', 'blue', 'RADIO_WR', 'radio', 4),
(4, 3, 'My textarea', '', 0, 1, 'TEXTAREA', 'textarea', 'type', 'TEXTAREA_WR', 'textarea', 1),
(5, 3, NULL, NULL, 0, 0, 'HIDDEN_NAME', 'hidden_value', NULL, NULL, 'hidden', 5),
(6, 3, 'Pleace select country', '', 0, 1, 'SELECT_COUNTRY', 'Russia=russia||Egypt=egypt||Spain=spain', 'spain', 'COUNTRY_WR', 'select', 2),
(7, 9, 'Имя', 'name', 0, 1, 'name', '', '', 'namewr', 'text', 0),
(8, 9, 'Коммент', '', 0, 0, 'comment', '', '', 'commentid', 'textarea', 1),
(9, 9, 'формы', '', 0, 1, 'colors', 'Нет=||Красный=red||Зеленый=green||Синий=blue', 'blue', 'colorswr', 'select', 3),
(10, 9, 'цвета', '', 0, 0, 'colorstwo', 'Красный=red||Зеленый=green||Синий=blue', 'red', 'colorstwo', 'checkbox', 2),
(11, 9, 'скрытое поле', '', 0, 0, 'hidden_field', 'скрытое поле', '', 'hidwr', 'hidden', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
