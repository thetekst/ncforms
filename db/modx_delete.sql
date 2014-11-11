-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2014 at 03:46 PM
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
-- Table structure for table `modx_access_actiondom`
--

CREATE TABLE IF NOT EXISTS `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actions`
--

CREATE TABLE IF NOT EXISTS `modx_access_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_category`
--

CREATE TABLE IF NOT EXISTS `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_context`
--

CREATE TABLE IF NOT EXISTS `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_elements`
--

CREATE TABLE IF NOT EXISTS `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_media_source`
--

CREATE TABLE IF NOT EXISTS `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_menus`
--

CREATE TABLE IF NOT EXISTS `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_permissions`
--

CREATE TABLE IF NOT EXISTS `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=215 ;

--
-- Dumping data for table `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_view', 'perm.file_view_desc', 1),
(59, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(60, 1, 'frames', 'perm.frames_desc', 1),
(61, 1, 'help', 'perm.help_desc', 1),
(62, 1, 'home', 'perm.home_desc', 1),
(63, 1, 'import_static', 'perm.import_static_desc', 1),
(64, 1, 'languages', 'perm.languages_desc', 1),
(65, 1, 'lexicons', 'perm.lexicons_desc', 1),
(66, 1, 'list', 'perm.list_desc', 1),
(67, 1, 'load', 'perm.load_desc', 1),
(68, 1, 'logout', 'perm.logout_desc', 1),
(69, 1, 'logs', 'perm.logs_desc', 1),
(70, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(71, 1, 'menu_security', 'perm.menu_security_desc', 1),
(72, 1, 'menu_site', 'perm.menu_site_desc', 1),
(73, 1, 'menu_support', 'perm.menu_support_desc', 1),
(74, 1, 'menu_system', 'perm.menu_system_desc', 1),
(75, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(76, 1, 'menu_user', 'perm.menu_user_desc', 1),
(77, 1, 'menus', 'perm.menus_desc', 1),
(78, 1, 'messages', 'perm.messages_desc', 1),
(79, 1, 'namespaces', 'perm.namespaces_desc', 1),
(80, 1, 'new_category', 'perm.new_category_desc', 1),
(81, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(82, 1, 'new_context', 'perm.new_context_desc', 1),
(83, 1, 'new_document', 'perm.new_document_desc', 1),
(84, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(85, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(86, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(87, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(88, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(89, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(90, 1, 'new_role', 'perm.new_role_desc', 1),
(91, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(92, 1, 'new_template', 'perm.new_template_desc', 1),
(93, 1, 'new_tv', 'perm.new_tv_desc', 1),
(94, 1, 'new_user', 'perm.new_user_desc', 1),
(95, 1, 'packages', 'perm.packages_desc', 1),
(96, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(97, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(98, 1, 'policy_new', 'perm.policy_new_desc', 1),
(99, 1, 'policy_save', 'perm.policy_save_desc', 1),
(100, 1, 'policy_view', 'perm.policy_view_desc', 1),
(101, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(102, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(103, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(104, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(105, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(106, 1, 'property_sets', 'perm.property_sets_desc', 1),
(107, 1, 'providers', 'perm.providers_desc', 1),
(108, 1, 'publish_document', 'perm.publish_document_desc', 1),
(109, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(110, 1, 'remove', 'perm.remove_desc', 1),
(111, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(112, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(113, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(114, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(115, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(116, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(117, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(118, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(119, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(120, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(121, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(122, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(123, 1, 'save', 'perm.save_desc', 1),
(124, 1, 'save_category', 'perm.save_category_desc', 1),
(125, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(126, 1, 'save_context', 'perm.save_context_desc', 1),
(127, 1, 'save_document', 'perm.save_document_desc', 1),
(128, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(129, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(130, 1, 'save_role', 'perm.save_role_desc', 1),
(131, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(132, 1, 'save_template', 'perm.save_template_desc', 1),
(133, 1, 'save_tv', 'perm.save_tv_desc', 1),
(134, 1, 'save_user', 'perm.save_user_desc', 1),
(135, 1, 'search', 'perm.search_desc', 1),
(136, 1, 'settings', 'perm.settings_desc', 1),
(137, 1, 'source_save', 'perm.source_save_desc', 1),
(138, 1, 'source_delete', 'perm.source_delete_desc', 1),
(139, 1, 'source_edit', 'perm.source_edit_desc', 1),
(140, 1, 'source_view', 'perm.source_view_desc', 1),
(141, 1, 'sources', 'perm.sources_desc', 1),
(142, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(143, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(144, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(145, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(146, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(147, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(148, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(149, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(150, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(151, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(152, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(153, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(154, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(155, 1, 'view', 'perm.view_desc', 1),
(156, 1, 'view_category', 'perm.view_category_desc', 1),
(157, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(158, 1, 'view_context', 'perm.view_context_desc', 1),
(159, 1, 'view_document', 'perm.view_document_desc', 1),
(160, 1, 'view_element', 'perm.view_element_desc', 1),
(161, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(162, 1, 'view_offline', 'perm.view_offline_desc', 1),
(163, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(164, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(165, 1, 'view_role', 'perm.view_role_desc', 1),
(166, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(167, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(168, 1, 'view_template', 'perm.view_template_desc', 1),
(169, 1, 'view_tv', 'perm.view_tv_desc', 1),
(170, 1, 'view_user', 'perm.view_user_desc', 1),
(171, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(172, 1, 'workspaces', 'perm.workspaces_desc', 1),
(173, 2, 'add_children', 'perm.add_children_desc', 1),
(174, 2, 'copy', 'perm.copy_desc', 1),
(175, 2, 'create', 'perm.create_desc', 1),
(176, 2, 'delete', 'perm.delete_desc', 1),
(177, 2, 'list', 'perm.list_desc', 1),
(178, 2, 'load', 'perm.load_desc', 1),
(179, 2, 'move', 'perm.move_desc', 1),
(180, 2, 'publish', 'perm.publish_desc', 1),
(181, 2, 'remove', 'perm.remove_desc', 1),
(182, 2, 'save', 'perm.save_desc', 1),
(183, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(184, 2, 'undelete', 'perm.undelete_desc', 1),
(185, 2, 'unpublish', 'perm.unpublish_desc', 1),
(186, 2, 'view', 'perm.view_desc', 1),
(187, 3, 'load', 'perm.load_desc', 1),
(188, 3, 'list', 'perm.list_desc', 1),
(189, 3, 'view', 'perm.view_desc', 1),
(190, 3, 'save', 'perm.save_desc', 1),
(191, 3, 'remove', 'perm.remove_desc', 1),
(192, 4, 'add_children', 'perm.add_children_desc', 1),
(193, 4, 'create', 'perm.create_desc', 1),
(194, 4, 'copy', 'perm.copy_desc', 1),
(195, 4, 'delete', 'perm.delete_desc', 1),
(196, 4, 'list', 'perm.list_desc', 1),
(197, 4, 'load', 'perm.load_desc', 1),
(198, 4, 'remove', 'perm.remove_desc', 1),
(199, 4, 'save', 'perm.save_desc', 1),
(200, 4, 'view', 'perm.view_desc', 1),
(201, 5, 'create', 'perm.create_desc', 1),
(202, 5, 'copy', 'perm.copy_desc', 1),
(203, 5, 'list', 'perm.list_desc', 1),
(204, 5, 'load', 'perm.load_desc', 1),
(205, 5, 'remove', 'perm.remove_desc', 1),
(206, 5, 'save', 'perm.save_desc', 1),
(207, 5, 'view', 'perm.view_desc', 1),
(208, 6, 'load', 'perm.load_desc', 1),
(209, 6, 'list', 'perm.list_desc', 1),
(210, 6, 'view', 'perm.view_desc', 1),
(211, 6, 'save', 'perm.save_desc', 1),
(212, 6, 'remove', 'perm.remove_desc', 1),
(213, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(214, 6, 'copy', 'perm.copy_desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policies`
--

CREATE TABLE IF NOT EXISTS `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{"add_children":true,"create":true,"copy":true,"delete":true,"list":true,"load":true,"move":true,"publish":true,"remove":true,"save":true,"steal_lock":true,"undelete":true,"unpublish":true,"view":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{"about":true,"access_permissions":true,"actions":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"database_truncate":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_role":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_view":true,"flush_sessions":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menus":true,"menu_reports":true,"menu_security":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_static_resource":true,"new_symlink":true,"new_template":true,"new_tv":true,"new_user":true,"new_weblink":true,"packages":true,"policy_delete":true,"policy_edit":true,"policy_new":true,"policy_save":true,"policy_template_delete":true,"policy_template_edit":true,"policy_template_new":true,"policy_template_save":true,"policy_template_view":true,"policy_view":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"remove_locks":true,"resource_duplicate":true,"resourcegroup_delete":true,"resourcegroup_edit":true,"resourcegroup_new":true,"resourcegroup_resource_edit":true,"resourcegroup_resource_list":true,"resourcegroup_save":true,"resourcegroup_view":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_role":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"sources":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"steal_locks":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unlock_element_properties":true,"unpublish_document":true,"usergroup_delete":true,"usergroup_edit":true,"usergroup_new":true,"usergroup_save":true,"usergroup_user_edit":true,"usergroup_user_list":true,"usergroup_view":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_unpublished":true,"view_user":true,"workspaces":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{"load":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{"add_children":true,"create":true,"delete":true,"list":true,"load":true,"remove":true,"save":true,"view":true,"copy":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{"change_profile":true,"class_map":true,"countries":true,"edit_document":true,"frames":true,"help":true,"home":true,"load":true,"list":true,"logout":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_tools":true,"menu_user":true,"resource_duplicate":true,"resource_tree":true,"save_document":true,"source_view":true,"tree_show_resource_ids":true,"view":true,"view_document":true,"new_document":true,"delete_document":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{"create":true,"copy":true,"load":true,"list":true,"save":true,"remove":true,"view":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{"about":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_role":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_view":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"menus":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_static_resource":true,"new_symlink":true,"new_weblink":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_template":true,"new_tv":true,"new_user":true,"packages":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"resource_duplicate":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"sources":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unpublish_document":true,"unlock_element_properties":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_user":true,"view_unpublished":true,"workspaces":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true,"copy":true,"view_unpublished":true}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_templates`
--

CREATE TABLE IF NOT EXISTS `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_template_groups`
--

CREATE TABLE IF NOT EXISTS `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resources`
--

CREATE TABLE IF NOT EXISTS `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resource_groups`
--

CREATE TABLE IF NOT EXISTS `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_templatevars`
--

CREATE TABLE IF NOT EXISTS `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actiondom`
--

CREATE TABLE IF NOT EXISTS `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions`
--

CREATE TABLE IF NOT EXISTS `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `modx_actions`
--

INSERT INTO `modx_actions` (`id`, `namespace`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES
(1, 'console', 'console', 1, 'console:default', '', ''),
(2, 'formz', 'index', 1, 'formz:default', '', ''),
(3, 'migx', 'index', 1, 'example:default', '', ''),
(4, 'doodles', 'index', 1, 'doodles:default', '', ''),
(5, 'ncforms', 'index', 1, 'ncforms:default', '', ''),
(6, 'cmpgenerator', 'controllers/index', 1, 'cmpgenerator:default', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions_fields`
--

CREATE TABLE IF NOT EXISTS `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_active_users`
--

CREATE TABLE IF NOT EXISTS `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories`
--

CREATE TABLE IF NOT EXISTS `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`parent`,`category`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`) VALUES
(1, 0, 'FormIt'),
(2, 0, 'Console'),
(3, 0, 'FormitFastPack'),
(4, 0, 'Formz'),
(5, 0, 'MIGX'),
(6, 0, 'Doodles'),
(7, 0, 'NcForms'),
(8, 0, 'CMPGenerator');

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories_closure`
--

CREATE TABLE IF NOT EXISTS `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT '0',
  `descendant` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(1, 1, 0),
(0, 1, 0),
(2, 2, 0),
(0, 2, 0),
(3, 3, 0),
(0, 3, 0),
(4, 4, 0),
(0, 4, 0),
(5, 5, 0),
(0, 5, 0),
(6, 6, 0),
(0, 6, 0),
(7, 7, 0),
(0, 7, 0),
(8, 8, 0),
(0, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_class_map`
--

CREATE TABLE IF NOT EXISTS `modx_class_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Table structure for table `modx_cmpgenerator`
--

CREATE TABLE IF NOT EXISTS `modx_cmpgenerator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package` varchar(255) DEFAULT '',
  `database` varchar(128) DEFAULT '',
  `tables` text,
  `table_prefix` varchar(255) DEFAULT '',
  `build_scheme` int(1) DEFAULT '1',
  `build_package` int(1) DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `last_ran` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `modx_cmpgenerator`
--

INSERT INTO `modx_cmpgenerator` (`id`, `package`, `database`, `tables`, `table_prefix`, `build_scheme`, `build_package`, `create_date`, `last_ran`) VALUES
(1, 'ncformssentdata', 'modx_delete', 'modx_ncforms_sent_data', 'modx_', 1, 1, '2014-08-20 18:04:03', '2014-08-20 18:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `modx_content_type`
--

CREATE TABLE IF NOT EXISTS `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context`
--

CREATE TABLE IF NOT EXISTS `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`),
  KEY `name` (`name`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('web', 'Website', 'The default front-end context for your web site.', 0),
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_resource`
--

CREATE TABLE IF NOT EXISTS `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_setting`
--

CREATE TABLE IF NOT EXISTS `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget_placement`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard_widget_placement` (
  `dashboard` int(10) unsigned NOT NULL DEFAULT '0',
  `widget` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `modx_documentgroup_names`
--

CREATE TABLE IF NOT EXISTS `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_document_groups`
--

CREATE TABLE IF NOT EXISTS `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_doodles`
--

CREATE TABLE IF NOT EXISTS `modx_doodles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `location` text NOT NULL,
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) unsigned NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `editedby` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `modx_doodles`
--

INSERT INTO `modx_doodles` (`id`, `name`, `description`, `location`, `downloads`, `createdon`, `createdby`, `editedon`, `editedby`) VALUES
(1, 'first-1', 'first.desc', 'en', 0, NULL, 0, NULL, 0),
(3, 'second', 'desc', '', 0, NULL, 0, NULL, 0),
(4, '3th', 'd', '', 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_element_property_sets`
--

CREATE TABLE IF NOT EXISTS `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_extension_packages`
--

CREATE TABLE IF NOT EXISTS `modx_extension_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles`
--

CREATE TABLE IF NOT EXISTS `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

CREATE TABLE IF NOT EXISTS `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_sets`
--

CREATE TABLE IF NOT EXISTS `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_formz_forms`
--

CREATE TABLE IF NOT EXISTS `modx_formz_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `method` enum('database','database_email') NOT NULL DEFAULT 'database_email',
  `email` text,
  `success_message` text,
  `identifier` varchar(255) DEFAULT '',
  `hooks` text,
  `action_button` varchar(255) DEFAULT '',
  `properties` text,
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) unsigned NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `editedby` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_formz_forms`
--

INSERT INTO `modx_formz_forms` (`id`, `name`, `method`, `email`, `success_message`, `identifier`, `hooks`, `action_button`, `properties`, `createdon`, `createdby`, `editedon`, `editedby`) VALUES
(1, 'FirstForm', 'database', '', 'firstErr', 'firstFormInentifier', '', '', '', '2014-08-06 15:44:12', 1, '2014-08-06 15:45:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_formz_forms_data`
--

CREATE TABLE IF NOT EXISTS `modx_formz_forms_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `senton` datetime DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `idx_senton` (`senton`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_formz_forms_data_fields`
--

CREATE TABLE IF NOT EXISTS `modx_formz_forms_data_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_id` int(10) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `data_id` (`data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_formz_forms_fields`
--

CREATE TABLE IF NOT EXISTS `modx_formz_forms_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` enum('text','textarea','select','checkbox','radio','heading','paragraph') NOT NULL DEFAULT 'text',
  `settings` text,
  `order` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order` (`order`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `modx_formz_forms_fields`
--

INSERT INTO `modx_formz_forms_fields` (`id`, `form_id`, `type`, `settings`, `order`) VALUES
(1, 1, 'textarea', '{"label":"sdf","default":"sd"}', 1),
(2, 1, 'checkbox', '{"label":"variable","default":"ddd","values":"n1||n2||n3"}', 0),
(3, 1, 'checkbox', '{"label":"sdfd","values":"sdfsd||sfsdfs"}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_formz_forms_validation`
--

CREATE TABLE IF NOT EXISTS `modx_formz_forms_validation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` enum('required','email','isNumber') DEFAULT 'required',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `modx_formz_forms_validation`
--

INSERT INTO `modx_formz_forms_validation` (`id`, `field_id`, `type`, `error_message`) VALUES
(3, 1, 'required', ''),
(2, 1, 'isNumber', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_lexicon_entries`
--

CREATE TABLE IF NOT EXISTS `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `modx_lexicon_entries`
--

INSERT INTO `modx_lexicon_entries` (`id`, `name`, `value`, `topic`, `namespace`, `language`, `createdon`, `editedon`) VALUES
(1, 'setting_doodles.core_path', 'doodles.core_path', 'default', 'core', 'en', '2014-07-29 17:03:52', '2014-08-07 08:53:12'),
(18, 'setting_doodles.core_path', 'doodles.core_path', 'default', 'doodles', 'en', '2014-08-04 11:28:08', '2014-08-07 08:53:20'),
(8, 'setting_doodles.assets_url', 'doodles.assets_url', 'default', 'core', 'en', '2014-07-29 19:32:42', '2014-08-07 08:53:25'),
(19, 'setting_doodles.assets_url', 'doodles.assets_url', 'default', 'doodles', 'en', '2014-08-04 15:13:22', '2014-08-07 08:53:29'),
(5, 'setting_assets_url', 'doodles.assets_url', 'setting', 'core', 'en', '2014-07-29 17:14:07', '2014-08-07 08:53:33'),
(6, 'setting_doodles.assets_url', 'doodles.assets_url', 'setting', 'core', 'en', '2014-07-29 17:14:24', '2014-08-07 08:53:39'),
(17, 'setting_doodles.assets_url', 'doodles.assets_url', 'default', 'doodles', 'en', '2014-08-04 11:27:53', '2014-08-04 11:11:26'),
(20, 'setting_ncforms.assets_url', 'ncforms.assets_url', 'default', 'ncforms', 'en', '2014-08-06 11:50:38', '0000-00-00 00:00:00'),
(21, 'setting_ncforms.core_path', 'ncforms.core_path', 'default', 'ncforms', 'en', '2014-08-06 11:50:57', '0000-00-00 00:00:00'),
(22, 'setting_session_name_ncforms', 'Session name', 'default', 'ncforms', 'en', '2014-08-21 14:30:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modx_manager_log`
--

CREATE TABLE IF NOT EXISTS `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=345 ;

--
-- Dumping data for table `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2014-07-29 16:20:22', 'package_install', 'transport.modTransportPackage', 'unknown'),
(2, 1, '2014-07-29 16:21:54', 'setting_update', 'modSystemSetting', 'friendly_alias_translit'),
(3, 1, '2014-07-29 16:22:07', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(4, 1, '2014-07-29 16:22:10', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(5, 1, '2014-07-29 16:26:45', 'template_update', 'modTemplate', '1'),
(6, 1, '2014-07-29 16:26:53', 'template_update', 'modTemplate', '1'),
(7, 1, '2014-07-29 16:27:26', 'resource_create', 'modDocument', '2'),
(8, 1, '2014-07-29 16:28:27', 'category_create', 'modCategory', '6'),
(9, 1, '2014-07-29 16:29:24', 'snippet_create', 'modSnippet', '31'),
(10, 1, '2014-07-29 16:35:10', 'snippet_update', 'modSnippet', '31'),
(11, 1, '2014-07-29 16:36:57', 'resource_update', 'modResource', '2'),
(12, 1, '2014-07-29 16:37:18', 'resource_update', 'modResource', '2'),
(13, 1, '2014-07-29 16:40:34', 'snippet_update', 'modSnippet', '31'),
(14, 1, '2014-07-29 16:41:09', 'resource_update', 'modResource', '2'),
(15, 1, '2014-07-29 16:42:03', 'resource_update', 'modResource', '2'),
(16, 1, '2014-07-29 17:03:52', 'setting_create', 'modSystemSetting', 'doodles.core_path'),
(17, 1, '2014-07-29 17:05:42', 'namespace_create', 'modNamespace', 'doodles'),
(18, 1, '2014-07-29 17:06:10', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(19, 1, '2014-07-29 17:06:54', 'setting_create', 'modSystemSetting', 'doodles.assets_url'),
(20, 1, '2014-07-29 17:07:15', 'resource_update', 'modResource', '2'),
(21, 1, '2014-07-29 17:08:21', 'resource_update', 'modResource', '2'),
(22, 1, '2014-07-29 17:13:33', 'setting_create', 'modSystemSetting', 'assets_url'),
(23, 1, '2014-07-29 17:13:46', 'resource_update', 'modResource', '2'),
(24, 1, '2014-07-29 17:14:08', 'setting_update', 'modSystemSetting', 'assets_url'),
(25, 1, '2014-07-29 17:14:24', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(26, 1, '2014-07-29 17:14:40', 'setting_update', 'modSystemSetting', 'assets_url'),
(27, 1, '2014-07-29 17:14:49', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(28, 1, '2014-07-29 17:15:00', 'setting_delete', 'modSystemSetting', 'assets_url'),
(29, 1, '2014-07-29 17:20:01', 'resource_update', 'modResource', '2'),
(30, 1, '2014-07-29 17:20:12', 'setting_create', 'modSystemSetting', 'assets'),
(31, 1, '2014-07-29 17:20:25', 'resource_update', 'modResource', '2'),
(32, 1, '2014-07-29 17:20:39', 'setting_delete', 'modSystemSetting', 'assets'),
(33, 1, '2014-07-29 17:21:23', 'resource_update', 'modResource', '2'),
(34, 1, '2014-07-29 17:21:29', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(35, 1, '2014-07-29 17:22:26', 'resource_update', 'modResource', '2'),
(36, 1, '2014-07-29 17:22:53', 'setting_create', 'modSystemSetting', 'ff'),
(37, 1, '2014-07-29 17:23:21', 'resource_update', 'modResource', '2'),
(38, 1, '2014-07-29 17:23:34', 'resource_update', 'modResource', '2'),
(39, 1, '2014-07-29 17:24:06', 'resource_update', 'modResource', '2'),
(40, 1, '2014-07-29 17:26:41', 'resource_update', 'modResource', '2'),
(41, 1, '2014-07-29 17:27:16', 'setting_delete', 'modSystemSetting', 'ff'),
(42, 1, '2014-07-29 17:28:24', 'resource_update', 'modResource', '2'),
(43, 1, '2014-07-29 17:28:50', 'resource_update', 'modResource', '2'),
(44, 1, '2014-07-29 17:29:22', 'snippet_update', 'modSnippet', '31'),
(45, 1, '2014-07-29 17:29:31', 'snippet_update', 'modSnippet', '31'),
(46, 1, '2014-07-29 17:32:23', 'resource_update', 'modResource', '2'),
(47, 1, '2014-07-29 17:33:41', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(48, 1, '2014-07-29 17:33:54', 'resource_update', 'modResource', '2'),
(49, 1, '2014-07-29 17:34:28', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(50, 1, '2014-07-29 17:34:50', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(51, 1, '2014-07-29 17:35:59', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(52, 1, '2014-07-29 19:02:19', 'menu_create', 'modMenu', 'doodles'),
(53, 1, '2014-07-29 19:06:12', 'menu_delete', 'modMenu', 'doodles'),
(54, 1, '2014-07-29 19:07:05', 'menu_create', 'modMenu', 'Doodles'),
(55, 1, '2014-07-29 19:10:56', 'namespace_delete', 'modNamespace', 'doodles'),
(56, 1, '2014-07-29 19:12:12', 'namespace_create', 'modNamespace', 'doodles'),
(57, 1, '2014-07-29 19:13:21', 'namespace_delete', 'modNamespace', 'doodles'),
(58, 1, '2014-07-29 19:14:50', 'namespace_create', 'modNamespace', 'doodles'),
(59, 1, '2014-07-29 19:15:42', 'namespace_delete', 'modNamespace', 'doodles'),
(60, 1, '2014-07-29 19:15:42', 'namespace_delete', 'modNamespace', 'doodles'),
(61, 1, '2014-07-29 19:16:53', 'namespace_create', 'modNamespace', 'doodles'),
(62, 1, '2014-07-29 19:20:08', 'namespace_delete', 'modNamespace', 'doodles'),
(63, 1, '2014-07-29 19:21:15', 'namespace_create', 'modNamespace', 'doodles'),
(64, 1, '2014-07-29 19:21:34', 'namespace_delete', 'modNamespace', 'doodles'),
(65, 1, '2014-07-29 19:22:09', 'namespace_create', 'modNamespace', 'doodles'),
(66, 1, '2014-07-29 19:28:33', 'namespace_delete', 'modNamespace', 'doodles'),
(67, 1, '2014-07-29 19:29:31', 'namespace_create', 'modNamespace', 'doodles'),
(68, 1, '2014-07-29 19:32:42', 'setting_create', 'modSystemSetting', 'doodles.assets_url'),
(69, 1, '2014-07-29 19:32:58', 'setting_create', 'modSystemSetting', 'doodles.core_path'),
(70, 1, '2014-07-29 19:35:14', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(71, 1, '2014-07-29 19:35:28', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(72, 1, '2014-07-29 19:35:42', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(73, 1, '2014-07-29 19:35:56', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(74, 1, '2014-07-29 19:36:24', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(75, 1, '2014-07-29 19:37:05', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(76, 1, '2014-07-29 19:37:38', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(77, 1, '2014-07-29 19:40:17', 'namespace_delete', 'modNamespace', 'doodles'),
(78, 1, '2014-07-29 19:42:18', 'namespace_create', 'modNamespace', 'doodles'),
(79, 1, '2014-07-29 19:43:18', 'setting_create', 'modSystemSetting', 'doodles.assets_url'),
(80, 1, '2014-07-29 19:43:34', 'setting_create', 'modSystemSetting', 'doodles.core_path'),
(81, 1, '2014-07-29 19:49:12', 'namespace_delete', 'modNamespace', 'doodles'),
(82, 1, '2014-07-29 19:49:41', 'namespace_create', 'modNamespace', 'doodles'),
(83, 1, '2014-07-29 19:52:00', 'setting_create', 'modSystemSetting', 'doodles.assets_url'),
(84, 1, '2014-07-29 19:52:17', 'setting_create', 'modSystemSetting', 'doodles.core_path'),
(85, 1, '2014-07-29 19:53:10', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(86, 1, '2014-07-29 19:53:24', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(87, 1, '2014-07-29 19:53:44', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(88, 1, '2014-07-29 19:53:53', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(89, 1, '2014-08-01 15:38:55', 'snippet_update', 'modSnippet', '31'),
(90, 1, '2014-08-01 15:41:59', 'resource_update', 'modResource', '2'),
(91, 1, '2014-08-01 15:42:22', 'resource_update', 'modResource', '2'),
(92, 1, '2014-08-01 15:42:34', 'resource_update', 'modResource', '2'),
(93, 1, '2014-08-01 18:18:08', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(94, 1, '2014-08-01 18:18:38', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(95, 1, '2014-08-01 18:19:25', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(96, 1, '2014-08-01 18:20:38', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(97, 1, '2014-08-01 18:20:49', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(98, 1, '2014-08-01 18:21:34', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(99, 1, '2014-08-01 18:22:04', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(100, 1, '2014-08-01 18:24:36', 'namespace_delete', 'modNamespace', 'doodles'),
(101, 1, '2014-08-01 18:26:15', 'namespace_create', 'modNamespace', 'doodles'),
(102, 1, '2014-08-01 18:28:29', 'setting_create', 'modSystemSetting', 'doodles.assets_url'),
(103, 1, '2014-08-01 18:28:48', 'setting_create', 'modSystemSetting', 'doodles.core_path'),
(104, 1, '2014-08-01 18:29:31', 'namespace_delete', 'modNamespace', 'doodles'),
(105, 1, '2014-08-01 18:30:12', 'namespace_create', 'modNamespace', 'doodles'),
(106, 1, '2014-08-01 18:30:51', 'namespace_delete', 'modNamespace', 'doodles'),
(107, 1, '2014-08-01 18:34:29', 'namespace_create', 'modNamespace', 'doodles'),
(108, 1, '2014-08-01 18:34:49', 'namespace_delete', 'modNamespace', 'doodles'),
(109, 1, '2014-08-01 18:38:13', 'namespace_create', 'modNamespace', 'doodles'),
(110, 1, '2014-08-01 19:35:42', 'namespace_update', 'modNamespace', 'doodles'),
(111, 1, '2014-08-01 19:36:12', 'namespace_update', 'modNamespace', 'doodles'),
(112, 1, '2014-08-01 19:36:46', 'namespace_update', 'modNamespace', 'doodles'),
(113, 1, '2014-08-01 19:37:04', 'namespace_update', 'modNamespace', 'doodles'),
(114, 1, '2014-08-01 19:47:57', 'namespace_update', 'modNamespace', 'doodles'),
(115, 1, '2014-08-01 19:50:03', 'namespace_update', 'modNamespace', 'doodles'),
(116, 1, '2014-08-04 11:15:37', 'namespace_update', 'modNamespace', 'doodles'),
(117, 1, '2014-08-04 11:27:54', 'setting_create', 'modSystemSetting', 'doodles.assets_url'),
(118, 1, '2014-08-04 11:28:08', 'setting_create', 'modSystemSetting', 'doodles.core_path'),
(119, 1, '2014-08-04 11:29:14', 'namespace_update', 'modNamespace', 'doodles'),
(120, 1, '2014-08-04 11:39:48', 'namespace_update', 'modNamespace', 'doodles'),
(121, 1, '2014-08-04 11:40:01', 'namespace_update', 'modNamespace', 'doodles'),
(122, 1, '2014-08-04 11:40:59', 'namespace_update', 'modNamespace', 'doodles'),
(123, 1, '2014-08-04 11:41:41', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(124, 1, '2014-08-04 11:41:47', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(125, 1, '2014-08-04 11:43:55', 'namespace_update', 'modNamespace', 'doodles'),
(126, 1, '2014-08-04 11:44:37', 'namespace_update', 'modNamespace', 'doodles'),
(127, 1, '2014-08-04 11:45:08', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(128, 1, '2014-08-04 11:55:27', 'namespace_update', 'modNamespace', 'doodles'),
(129, 1, '2014-08-04 11:55:52', 'namespace_update', 'modNamespace', 'doodles'),
(130, 1, '2014-08-04 11:55:57', 'namespace_update', 'modNamespace', 'doodles'),
(131, 1, '2014-08-04 11:57:41', 'namespace_update', 'modNamespace', 'doodles'),
(132, 1, '2014-08-04 11:57:43', 'namespace_update', 'modNamespace', 'formit'),
(133, 1, '2014-08-04 11:57:49', 'namespace_update', 'modNamespace', 'doodles'),
(134, 1, '2014-08-04 11:57:55', 'namespace_update', 'modNamespace', 'doodles'),
(135, 1, '2014-08-04 11:58:13', 'namespace_update', 'modNamespace', 'doodles'),
(136, 1, '2014-08-04 11:58:44', 'namespace_update', 'modNamespace', 'doodles'),
(137, 1, '2014-08-04 12:20:11', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(138, 1, '2014-08-04 12:20:31', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(139, 1, '2014-08-04 12:20:41', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(140, 1, '2014-08-04 12:39:10', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(141, 1, '2014-08-04 12:39:30', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(142, 1, '2014-08-04 12:40:00', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(143, 1, '2014-08-04 12:40:43', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(144, 1, '2014-08-04 12:42:02', 'namespace_update', 'modNamespace', 'doodles'),
(145, 1, '2014-08-04 12:47:50', 'namespace_update', 'modNamespace', 'doodles'),
(146, 1, '2014-08-04 13:06:31', 'menu_update', 'modMenu', 'Doodles'),
(147, 1, '2014-08-04 13:07:41', 'menu_update', 'modMenu', 'Doodles'),
(148, 1, '2014-08-04 13:08:12', 'menu_update', 'modMenu', 'Doodles'),
(149, 1, '2014-08-04 13:13:29', 'menu_update', 'modMenu', 'Doodles'),
(150, 1, '2014-08-04 13:14:23', 'menu_update', 'modMenu', 'Doodles'),
(151, 1, '2014-08-04 13:19:00', 'menu_update', 'modMenu', 'Doodles'),
(152, 1, '2014-08-04 13:21:07', 'menu_update', 'modMenu', 'Doodles'),
(153, 1, '2014-08-04 13:24:34', 'menu_update', 'modMenu', 'Doodles'),
(154, 1, '2014-08-04 13:52:32', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(155, 1, '2014-08-04 14:17:53', 'menu_update', 'modMenu', 'Doodles'),
(156, 1, '2014-08-04 14:28:21', 'namespace_update', 'modNamespace', 'doodles'),
(157, 1, '2014-08-04 14:31:30', 'namespace_update', 'modNamespace', 'doodles'),
(158, 1, '2014-08-04 14:41:22', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(159, 1, '2014-08-04 15:07:55', 'menu_create', 'modMenu', 'doodles'),
(160, 1, '2014-08-04 15:09:23', 'menu_update', 'modMenu', 'doodles'),
(161, 1, '2014-08-04 15:11:49', 'menu_update', 'modMenu', 'doodles'),
(162, 1, '2014-08-04 15:13:22', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(163, 1, '2014-08-04 15:14:06', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(164, 1, '2014-08-04 15:14:44', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(165, 1, '2014-08-04 15:16:01', 'setting_update', 'modSystemSetting', 'manager_language'),
(166, 1, '2014-08-04 15:16:35', 'setting_update', 'modSystemSetting', 'cultureKey'),
(167, 1, '2014-08-04 15:20:12', 'menu_update', 'modMenu', 'doodles'),
(168, 1, '2014-08-04 15:21:33', 'menu_update', 'modMenu', 'doodles'),
(169, 1, '2014-08-04 17:30:44', 'setting_update', 'modSystemSetting', 'session_cookie_path'),
(170, 1, '2014-08-04 17:57:00', 'menu_update', 'modMenu', 'doodles'),
(171, 1, '2014-08-05 19:11:55', 'menu_update', 'modMenu', 'doodles'),
(172, 1, '2014-08-05 19:12:52', 'menu_update', 'modMenu', 'doodles'),
(173, 1, '2014-08-05 20:02:42', 'namespace_create', 'modNamespace', 'ncform'),
(174, 1, '2014-08-05 20:04:05', 'menu_create', 'modMenu', 'ncform'),
(175, 1, '2014-08-06 11:48:49', 'namespace_delete', 'modNamespace', 'ncform'),
(176, 1, '2014-08-06 11:49:06', 'namespace_create', 'modNamespace', 'ncforms'),
(177, 1, '2014-08-06 11:49:30', 'menu_update', 'modMenu', 'ncforms'),
(178, 1, '2014-08-06 11:50:39', 'setting_create', 'modSystemSetting', 'ncforms.assets_url'),
(179, 1, '2014-08-06 11:50:57', 'setting_create', 'modSystemSetting', 'ncforms.core_path'),
(180, 1, '2014-08-06 12:48:41', 'category_create', 'modCategory', '7'),
(181, 1, '2014-08-06 12:49:34', 'snippet_create', 'modSnippet', '32'),
(182, 1, '2014-08-06 12:50:23', 'resource_create', 'modDocument', '3'),
(183, 1, '2014-08-06 12:51:34', 'resource_update', 'modResource', '3'),
(184, 1, '2014-08-06 13:20:23', 'resource_update', 'modResource', '3'),
(185, 1, '2014-08-06 13:22:05', 'resource_update', 'modResource', '3'),
(186, 1, '2014-08-06 13:22:48', 'resource_update', 'modResource', '3'),
(187, 1, '2014-08-06 13:23:31', 'resource_update', 'modResource', '3'),
(188, 1, '2014-08-06 13:24:17', 'resource_update', 'modResource', '3'),
(189, 1, '2014-08-06 13:25:19', 'resource_update', 'modResource', '3'),
(190, 1, '2014-08-06 15:44:12', 'formz.form_create', 'fmzForms', '1'),
(191, 1, '2014-08-06 15:44:53', 'formz.form_update', 'fmzForms', '1'),
(192, 1, '2014-08-06 15:45:10', 'formz.form_update', 'fmzForms', '1'),
(193, 1, '2014-08-06 15:58:17', 'formz.field_create', 'fmzFormsFields', '1'),
(194, 1, '2014-08-06 17:27:37', 'resource_update', 'modResource', '3'),
(195, 1, '2014-08-06 18:31:44', 'menu_update', 'modMenu', 'ncforms'),
(196, 1, '2014-08-07 12:51:03', 'menu_update', 'modMenu', 'ncforms'),
(197, 1, '2014-08-07 13:44:30', 'menu_update', 'modMenu', 'ncform'),
(198, 1, '2014-08-07 14:18:40', 'menu_update', 'modMenu', 'ncforms'),
(199, 1, '2014-08-07 19:15:25', 'setting_update', 'modSystemSetting', 'formit.recaptcha_private_key'),
(200, 1, '2014-08-07 19:15:31', 'setting_update', 'modSystemSetting', 'formit.recaptcha_private_key'),
(201, 1, '2014-08-11 20:08:37', 'setting_update', 'modSystemSetting', 'session_cookie_path'),
(202, 1, '2014-08-11 20:09:14', 'setting_update', 'modSystemSetting', 'session_cookie_path'),
(203, 1, '2014-08-12 18:32:22', 'resource_update', 'modResource', '3'),
(204, 1, '2014-08-12 19:33:11', 'resource_update', 'modResource', '3'),
(205, 1, '2014-08-13 12:44:58', 'formz.field_create', 'fmzFormsFields', '2'),
(206, 1, '2014-08-13 13:40:15', 'formz.field_update', 'fmzFormsFields', '2'),
(207, 1, '2014-08-13 19:29:08', 'formz.field_update', 'fmzFormsFields', '1'),
(208, 1, '2014-08-15 16:46:25', 'setting_update', 'modSystemSetting', 'doodles.assets_url'),
(209, 1, '2014-08-15 16:46:54', 'setting_update', 'modSystemSetting', 'doodles.core_path'),
(210, 1, '2014-08-15 17:40:00', 'resource_update', 'modResource', '3'),
(211, 1, '2014-08-15 19:45:39', 'resource_update', 'modResource', '3'),
(212, 1, '2014-08-18 17:24:43', 'resource_update', 'modResource', '3'),
(213, 1, '2014-08-18 17:26:59', 'resource_update', 'modResource', '3'),
(214, 1, '2014-08-18 18:11:24', 'resource_update', 'modResource', '3'),
(215, 1, '2014-08-19 17:46:22', 'resource_update', 'modResource', '3'),
(216, 1, '2014-08-19 17:46:31', 'resource_update', 'modResource', '3'),
(217, 1, '2014-08-19 19:55:42', 'resource_update', 'modResource', '3'),
(218, 1, '2014-08-19 20:18:34', 'resource_update', 'modResource', '3'),
(219, 1, '2014-08-20 10:20:31', 'resource_update', 'modResource', '3'),
(220, 1, '2014-08-20 10:20:45', 'resource_update', 'modResource', '3'),
(221, 1, '2014-08-20 11:00:22', 'formz.field_update', 'fmzFormsFields', '1'),
(222, 1, '2014-08-20 11:20:10', 'formz.field_update', 'fmzFormsFields', '1'),
(223, 1, '2014-08-20 11:20:15', 'formz.field_update', 'fmzFormsFields', '1'),
(224, 1, '2014-08-20 12:06:47', 'formz.field_create', 'fmzFormsFields', '3'),
(225, 1, '2014-08-20 15:44:58', 'menu_update', 'modMenu', 'ncforms'),
(226, 1, '2014-08-20 18:57:46', 'setting_update', 'modSystemSetting', 'extension_packages'),
(227, 1, '2014-08-20 20:08:16', 'snippet_create', 'modSnippet', '33'),
(228, 1, '2014-08-20 20:09:20', 'resource_update', 'modResource', '3'),
(229, 1, '2014-08-20 20:20:10', 'resource_update', 'modResource', '3'),
(230, 1, '2014-08-20 20:23:16', 'snippet_update', 'modSnippet', '33'),
(231, 1, '2014-08-20 20:24:01', 'resource_update', 'modResource', '3'),
(232, 1, '2014-08-21 11:19:53', 'snippet_update', 'modSnippet', '33'),
(233, 1, '2014-08-21 11:20:27', 'snippet_update', 'modSnippet', '33'),
(234, 1, '2014-08-21 11:32:11', 'resource_update', 'modResource', '3'),
(235, 1, '2014-08-21 11:57:00', 'snippet_update', 'modSnippet', '33'),
(236, 1, '2014-08-21 12:13:00', 'snippet_update', 'modSnippet', '33'),
(237, 1, '2014-08-21 12:13:33', 'snippet_update', 'modSnippet', '33'),
(238, 1, '2014-08-21 12:16:18', 'snippet_update', 'modSnippet', '33'),
(239, 1, '2014-08-21 12:17:35', 'snippet_update', 'modSnippet', '33'),
(240, 1, '2014-08-21 12:36:07', 'setting_update', 'modSystemSetting', 'formit.recaptcha_public_key'),
(241, 1, '2014-08-21 12:36:11', 'setting_update', 'modSystemSetting', 'formit.recaptcha_private_key'),
(242, 1, '2014-08-21 12:38:34', 'setting_update', 'modSystemSetting', 'formit.recaptcha_public_key'),
(243, 1, '2014-08-21 12:38:44', 'setting_update', 'modSystemSetting', 'formit.recaptcha_private_key'),
(244, 1, '2014-08-21 14:30:37', 'setting_create', 'modSystemSetting', 'session_name_ncforms'),
(245, 1, '2014-08-21 14:30:53', 'setting_update', 'modSystemSetting', 'session_name'),
(246, 1, '2014-08-21 14:32:33', 'setting_update', 'modSystemSetting', 'session_name_ncforms'),
(247, 1, '2014-08-21 14:32:50', 'setting_update', 'modSystemSetting', 'session_name'),
(248, 1, '2014-08-21 14:33:10', 'setting_update', 'modSystemSetting', 'session_name_ncforms'),
(249, 1, '2014-08-21 14:34:41', 'setting_update', 'modSystemSetting', 'session_name_ncforms'),
(250, 1, '2014-08-21 14:35:54', 'setting_update', 'modSystemSetting', 'session_name_ncforms'),
(251, 1, '2014-08-21 14:36:35', 'setting_update', 'modSystemSetting', 'session_name_ncforms'),
(252, 1, '2014-08-21 14:37:30', 'setting_update', 'modSystemSetting', 'session_name_ncforms'),
(253, 1, '2014-08-21 14:38:25', 'setting_update', 'modSystemSetting', 'session_name'),
(254, 1, '2014-08-21 14:39:24', 'setting_update', 'modSystemSetting', 'session_name'),
(255, 1, '2014-08-21 14:41:04', 'setting_update', 'modSystemSetting', 'session_name'),
(256, 1, '2014-08-21 14:42:58', 'setting_update', 'modSystemSetting', 'session_name'),
(257, 1, '2014-08-21 14:44:25', 'setting_delete', 'modSystemSetting', 'session_name_ncforms'),
(258, 1, '2014-08-21 14:44:30', 'setting_update', 'modSystemSetting', 'session_name'),
(259, 1, '2014-08-21 14:45:13', 'setting_update', 'modSystemSetting', 'session_name'),
(260, 1, '2014-08-21 14:55:33', 'setting_update', 'modSystemSetting', 'session_name'),
(261, 1, '2014-08-21 14:57:08', 'setting_update', 'modSystemSetting', 'session_name'),
(262, 1, '2014-08-21 15:04:15', 'setting_update', 'modSystemSetting', 'session_name'),
(263, 1, '2014-08-21 15:48:07', 'setting_update', 'modSystemSetting', 'session_name'),
(264, 1, '2014-08-21 15:48:45', 'setting_update', 'modSystemSetting', 'session_name'),
(265, 1, '2014-08-21 15:51:03', 'setting_update', 'modSystemSetting', 'session_name'),
(266, 1, '2014-08-21 15:55:28', 'setting_update', 'modSystemSetting', 'session_name'),
(267, 1, '2014-08-21 15:55:49', 'setting_update', 'modSystemSetting', 'session_cookie_path'),
(268, 1, '2014-08-21 15:57:54', 'setting_update', 'modSystemSetting', 'session_name'),
(269, 1, '2014-08-21 16:55:22', 'resource_create', 'modDocument', '4'),
(270, 1, '2014-08-21 17:47:07', 'chunk_create', 'modChunk', '4'),
(271, 1, '2014-08-21 18:14:18', 'chunk_update', 'modChunk', '4'),
(272, 1, '2014-08-21 18:14:25', 'chunk_update', 'modChunk', '4'),
(273, 1, '2014-08-21 18:14:34', 'chunk_update', 'modChunk', '4'),
(274, 1, '2014-08-21 18:16:15', 'chunk_update', 'modChunk', '4'),
(275, 1, '2014-08-21 19:21:58', 'snippet_create', 'modSnippet', '34'),
(276, 1, '2014-08-21 19:24:21', 'snippet_update', 'modSnippet', '34'),
(277, 1, '2014-08-21 19:26:00', 'snippet_update', 'modSnippet', '34'),
(278, 1, '2014-08-21 19:27:29', 'snippet_update', 'modSnippet', '34'),
(279, 1, '2014-08-21 19:27:40', 'snippet_update', 'modSnippet', '34'),
(280, 1, '2014-08-21 19:27:57', 'snippet_update', 'modSnippet', '34'),
(281, 1, '2014-08-21 19:28:01', 'snippet_update', 'modSnippet', '34'),
(282, 1, '2014-08-21 19:28:42', 'snippet_update', 'modSnippet', '34'),
(283, 1, '2014-08-21 19:29:40', 'snippet_update', 'modSnippet', '34'),
(284, 1, '2014-08-21 19:30:14', 'snippet_update', 'modSnippet', '34'),
(285, 1, '2014-08-21 19:49:23', 'snippet_update', 'modSnippet', '34'),
(286, 1, '2014-08-21 19:51:54', 'snippet_update', 'modSnippet', '34'),
(287, 1, '2014-08-21 19:52:57', 'snippet_update', 'modSnippet', '34'),
(288, 1, '2014-08-21 19:54:55', 'snippet_update', 'modSnippet', '34'),
(289, 1, '2014-08-21 19:55:07', 'snippet_update', 'modSnippet', '34'),
(290, 1, '2014-08-22 11:16:29', 'snippet_update', 'modSnippet', '34'),
(291, 1, '2014-08-22 11:17:36', 'snippet_update', 'modSnippet', '34'),
(292, 1, '2014-08-22 11:18:58', 'snippet_update', 'modSnippet', '34'),
(293, 1, '2014-08-22 11:28:38', 'snippet_update', 'modSnippet', '34'),
(294, 1, '2014-08-22 11:30:19', 'snippet_update', 'modSnippet', '34'),
(295, 1, '2014-08-22 11:42:57', 'snippet_update', 'modSnippet', '34'),
(296, 1, '2014-08-22 12:50:16', 'snippet_update', 'modSnippet', '34'),
(297, 1, '2014-08-22 12:50:30', 'snippet_update', 'modSnippet', '34'),
(298, 1, '2014-08-22 12:51:33', 'snippet_update', 'modSnippet', '34'),
(299, 1, '2014-08-22 12:52:15', 'snippet_update', 'modSnippet', '34'),
(300, 1, '2014-08-22 12:53:50', 'snippet_update', 'modSnippet', '34'),
(301, 1, '2014-08-22 12:54:38', 'snippet_update', 'modSnippet', '34'),
(302, 1, '2014-08-22 12:57:39', 'snippet_update', 'modSnippet', '34'),
(303, 1, '2014-08-22 13:40:39', 'snippet_update', 'modSnippet', '34'),
(304, 1, '2014-08-22 13:41:01', 'snippet_update', 'modSnippet', '34'),
(305, 1, '2014-08-22 13:43:45', 'snippet_update', 'modSnippet', '34'),
(306, 1, '2014-08-22 13:45:42', 'snippet_update', 'modSnippet', '34'),
(307, 1, '2014-08-22 13:45:59', 'snippet_update', 'modSnippet', '34'),
(308, 1, '2014-08-22 13:48:08', 'snippet_update', 'modSnippet', '34'),
(309, 1, '2014-08-22 13:48:35', 'snippet_update', 'modSnippet', '34'),
(310, 1, '2014-08-22 13:49:47', 'snippet_update', 'modSnippet', '34'),
(311, 1, '2014-08-22 13:53:56', 'snippet_update', 'modSnippet', '34'),
(312, 1, '2014-08-22 13:54:33', 'snippet_update', 'modSnippet', '34'),
(313, 1, '2014-08-22 13:54:48', 'snippet_update', 'modSnippet', '34'),
(314, 1, '2014-08-22 13:54:53', 'snippet_update', 'modSnippet', '34'),
(315, 1, '2014-08-22 13:55:16', 'snippet_update', 'modSnippet', '34'),
(316, 1, '2014-08-22 13:55:31', 'snippet_update', 'modSnippet', '34'),
(317, 1, '2014-08-22 13:55:55', 'snippet_update', 'modSnippet', '34'),
(318, 1, '2014-08-22 13:56:23', 'snippet_update', 'modSnippet', '34'),
(319, 1, '2014-08-22 13:56:54', 'snippet_update', 'modSnippet', '34'),
(320, 1, '2014-08-22 13:57:03', 'snippet_update', 'modSnippet', '34'),
(321, 1, '2014-08-22 13:58:16', 'snippet_update', 'modSnippet', '34'),
(322, 1, '2014-08-22 13:58:31', 'snippet_update', 'modSnippet', '34'),
(323, 1, '2014-08-22 13:58:47', 'snippet_update', 'modSnippet', '34'),
(324, 1, '2014-08-22 13:59:06', 'snippet_update', 'modSnippet', '34'),
(325, 1, '2014-08-22 14:01:02', 'snippet_update', 'modSnippet', '34'),
(326, 1, '2014-08-22 14:02:31', 'snippet_update', 'modSnippet', '34'),
(327, 1, '2014-08-22 14:03:32', 'snippet_update', 'modSnippet', '34'),
(328, 1, '2014-08-22 14:04:09', 'snippet_update', 'modSnippet', '34'),
(329, 1, '2014-08-22 14:04:37', 'snippet_update', 'modSnippet', '34'),
(330, 1, '2014-08-22 14:04:59', 'snippet_update', 'modSnippet', '34'),
(331, 1, '2014-08-22 14:05:04', 'snippet_update', 'modSnippet', '34'),
(332, 1, '2014-08-22 14:05:26', 'snippet_update', 'modSnippet', '34'),
(333, 1, '2014-08-22 14:06:39', 'snippet_update', 'modSnippet', '34'),
(334, 1, '2014-08-22 14:06:51', 'snippet_update', 'modSnippet', '34'),
(335, 1, '2014-08-22 14:07:03', 'snippet_update', 'modSnippet', '34'),
(336, 1, '2014-08-22 14:07:10', 'snippet_update', 'modSnippet', '34'),
(337, 1, '2014-08-22 14:07:47', 'snippet_update', 'modSnippet', '34'),
(338, 1, '2014-08-22 14:28:44', 'snippet_update', 'modSnippet', '34'),
(339, 1, '2014-08-22 14:28:56', 'snippet_update', 'modSnippet', '34'),
(340, 1, '2014-08-22 14:44:25', 'snippet_update', 'modSnippet', '34'),
(341, 1, '2014-08-22 14:45:40', 'snippet_update', 'modSnippet', '34'),
(342, 1, '2014-08-22 18:35:50', 'resource_update', 'modResource', '3'),
(343, 1, '2014-08-22 18:36:11', 'resource_update', 'modResource', '3'),
(344, 1, '2014-08-25 12:30:42', 'resource_update', 'modResource', '3');

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_contexts`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_elements`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_membergroup_names`
--

CREATE TABLE IF NOT EXISTS `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `dashboard` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_member_groups`
--

CREATE TABLE IF NOT EXISTS `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT '0',
  `member` int(10) unsigned NOT NULL DEFAULT '0',
  `role` int(10) unsigned NOT NULL DEFAULT '1',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_menus`
--

CREATE TABLE IF NOT EXISTS `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`),
  KEY `namespace` (`namespace`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', '\nMODx.msg.confirm({\n    title: _(''remove_locks'')\n    ,text: _(''confirm_remove_locks'')\n    ,url: MODx.config.connectors_url\n    ,params: {\n        action: ''system/remove_locks''\n    }\n    ,listeners: {\n        ''success'': {fn:function() {\n            var tree = Ext.getCmp("modx-resource-tree");\n            if (tree && tree.rendered) {\n                tree.refresh();\n            }\n         },scope:this}\n    }\n});', 'remove_locks', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(''flush_access'')\n    ,text: _(''flush_access_confirm'')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: ''security/access/flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(''flush_sessions'')\n    ,text: _(''flush_sessions_confirm'')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: ''security/flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', 'security/profile', '', '<span id="user-avatar">{$userImage}</span> <span id="user-username">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('logout', 'user', '', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('admin', 'usernav', 'system/settings', '', '<i class="icon-gear icon icon-large"></i>', 6, '', '', 'settings', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_contexts', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('about', 'usernav', 'help', '', '<i class="icon-question-circle icon icon-large"></i>', 7, '', '', '', 'core'),
('console', 'components', '1', 'console_desc', 'images/icons/plugin.gif', 0, '', '', 'console', 'core'),
('formz', 'components', '2', 'formz.menu_desc', 'images/icons/plugin.gif', 0, '', '', '', 'core'),
('migx', 'components', 'index', '', '', 0, '&configs=packagemanager||migxconfigs||setup', '', '', 'migx'),
('doodles', 'components', 'index', 'doodles.desc', '', 4, '', '', '', 'doodles'),
('ncforms', 'components', 'index', 'ncforms.desc', '', 5, '', '', '', 'ncforms'),
('cmpgenerator', 'components', '6', 'cmpgenerator.desc', '', 0, '', '', '', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `modx_migx_configs`
--

CREATE TABLE IF NOT EXISTS `modx_migx_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `formtabs` text NOT NULL,
  `contextmenus` text NOT NULL,
  `actionbuttons` text NOT NULL,
  `columnbuttons` text NOT NULL,
  `filters` text NOT NULL,
  `extended` text NOT NULL,
  `columns` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_migx_config_elements`
--

CREATE TABLE IF NOT EXISTS `modx_migx_config_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `element_id` int(10) NOT NULL DEFAULT '0',
  `rank` int(10) NOT NULL DEFAULT '0',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_migx_elements`
--

CREATE TABLE IF NOT EXISTS `modx_migx_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_migx_formtabs`
--

CREATE TABLE IF NOT EXISTS `modx_migx_formtabs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `pos` int(10) NOT NULL DEFAULT '0',
  `print_before_tabs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extended` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_id` (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_migx_formtab_fields`
--

CREATE TABLE IF NOT EXISTS `modx_migx_formtab_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int(10) NOT NULL DEFAULT '0',
  `formtab_id` int(10) NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pos` int(10) NOT NULL DEFAULT '0',
  `description_is_code` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inputTV` varchar(255) NOT NULL DEFAULT '',
  `inputTVtype` varchar(255) NOT NULL DEFAULT '',
  `validation` text NOT NULL,
  `configs` varchar(255) NOT NULL DEFAULT '',
  `restrictive_condition` text NOT NULL,
  `display` varchar(255) NOT NULL DEFAULT '',
  `sourceFrom` varchar(255) NOT NULL DEFAULT '',
  `sources` varchar(255) NOT NULL DEFAULT '',
  `inputOptionValues` text NOT NULL,
  `default` text NOT NULL,
  `extended` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_id` (`config_id`),
  KEY `formtab_id` (`formtab_id`),
  KEY `field` (`field`),
  KEY `pos` (`pos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_namespaces`
--

CREATE TABLE IF NOT EXISTS `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('tinymce', '{core_path}components/tinymce/', NULL),
('formit', '{core_path}components/formit/', ''),
('console', '{core_path}components/console/', '{assets_path}components/console/'),
('formz', '{core_path}components/formz/', ''),
('formitfastpack', '{core_path}components/formitfastpack/', ''),
('migx', '{core_path}components/migx/', '{assets_path}components/migx/'),
('translit', '{core_path}components/translit/', ''),
('doodles', 'Z:/home/localhost/www/doodles/core/components/doodles/', 'Z:/home/localhost/www/doodles/assets/components/doodles'),
('ace', '{core_path}components/ace/', ''),
('ncforms', 'Z:/home/localhost/www/ncforms/core/components/ncforms/', 'Z:/home/localhost/www/ncforms/assets/components/ncforms/'),
('cmpgenerator', '{core_path}components/cmpgenerator/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_ncforms`
--

CREATE TABLE IF NOT EXISTS `modx_ncforms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `save_method` enum('database','database_email') NOT NULL DEFAULT 'database_email',
  `email` text,
  `success_message` text,
  `identifier` varchar(255) DEFAULT '',
  `hooks` text,
  `action_button` varchar(255) DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `modx_ncforms`
--

INSERT INTO `modx_ncforms` (`id`, `name`, `save_method`, `email`, `success_message`, `identifier`, `hooks`, `action_button`, `properties`) VALUES
(3, 'second', 'database', 'second@mail.ru', 'this success message', 'SecondForm', 'recaptcha,addDB,spam,email,redirect', 'food', ''),
(4, 'first', 'database_email', '', 'ok', 'firstIdent', '', 'Go1', '');

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
  `order` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `modx_ncforms_fields`
--

INSERT INTO `modx_ncforms_fields` (`id`, `form_id`, `label`, `placeholder`, `multiple`, `input_validate`, `input_name`, `input_value`, `input_default_value`, `input_wrapper_tag_id`, `type`, `order`) VALUES
(1, 3, 'First name', '', 0, 1, 'FIRST_NAME', 'FIRST_ID', '', 'FIRST_ID_WR', 'text', 1),
(2, 3, 'Select shapes', NULL, 0, 0, 'CHECKBOX', 'Circle=circle||Triangle=triangle||Rectangle=rectangle', 'triangle||circle', 'CHECKBOX_WR', 'checkbox', 3),
(3, 3, 'Select colors', NULL, 0, 0, 'RADIO', 'Red=red||Blue=blue||Black=black', 'blue', 'RADIO_WR', 'radio', 4),
(4, 3, 'My textarea', '', 0, 1, 'TEXTAREA', 'textarea', 'type some text', 'TEXTAREA_WR', 'textarea', 0),
(5, 3, NULL, NULL, 0, 0, 'HIDDEN_NAME', 'hidden_value', NULL, NULL, 'hidden', 5),
(6, 3, 'Pleace select country', '', 1, 1, 'SELECT_COUNTRY', 'Russia=russia||Egypt=egypt||Spain=spain', 'spain', 'COUNTRY_WR', 'select', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_ncforms_sent_data`
--

CREATE TABLE IF NOT EXISTS `modx_ncforms_sent_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sent_on` datetime DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `idx_sent_on` (`sent_on`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `modx_ncforms_sent_data`
--

INSERT INTO `modx_ncforms_sent_data` (`id`, `form_id`, `sent_on`, `data`) VALUES
(21, 3, '2014-08-21 13:28:37', '{"FIRST_NAME":"name","CHECKBOX":["circle","triangle"],"RADIO":["blue"],"TEXTAREA":"textarea","HIDDEN_NAME":"hidden_value","SELECT_COUNTRY":["spain"],"recaptcha_challenge_field":"03AHJ_VusUjjtrB6G2nZziHnbzapCj5NcuJxSKg4GwlZ9v73FJer_LMbe-z-NQiSfqTrLJ3DCsr3hnUbtqpySfFduhanWs6JWrmZMQsj-Yc44CkBzCl7ID7in5oQQgqtdBCTHefNjQO3VRiJS_8x3i2FNrcEpmLs76CthEHs0bYridbg-8YPkaLN1voum60f15iEX-nmjPLbKqZ4_g4q49b0ngo19b7b1MKl4dn7qe3Yau7wnuhxz1GVIb5OrGMG08J45HqkPdNJpI8FZ0Hogt1fqYQzJjMKPFMPTT3I-AlMxVKu0ulTlkozY","recaptcha_response_field":"86"}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_property_set`
--

CREATE TABLE IF NOT EXISTS `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_messages`
--

CREATE TABLE IF NOT EXISTS `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_queues`
--

CREATE TABLE IF NOT EXISTS `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:"directory";s:5:"locks";}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_topics`
--

CREATE TABLE IF NOT EXISTS `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2014-07-29 16:26:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_session`
--

CREATE TABLE IF NOT EXISTS `modx_session` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `access` int(20) unsigned NOT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `access` (`access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('mdktug6ge96ihun2l79jgds4v2', 1408617796, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('2pbi9qgm28t3ifn97k91io3p52', 1408617787, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('h7o3hfjlphupvevl8rt56t4d97', 1408617789, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cd35091833.71680511";modx.mgr.session.cookie.lifetime|i:604800;modx.mgr.user.config|a:0:{}'),
('b2tk26unqieqidan3dadm6k5c6', 1408617787, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('jsjfjuasbipab7arf29npmai01', 1408617765, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cd24a12644.57325715";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('sqp4lqq05p9crhlrr14g919j92', 1408617754, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('i1o26a2hmbascuf823t4ciob33', 1408617754, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('j6khc5o6fek9kbl63gci6sso82', 1408617737, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('g0gdc2a4i0fh779s0ga4i4v4h2', 1408617737, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('dmoa09705v9oabnd6gk2blitp0', 1408617736, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cd077e3299.63542495";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('fefduah9j5hks0a9lmtpaig5r1', 1408617705, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cce8999926.74439895";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('in6tcu8p5khgirccjbrlut7dk0', 1408617728, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('haptcq8md994r1l5gg4e3bll47', 1408365258, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153e8eb2d585892.48642192";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('uqnestq2mf6ue965d91o9gh1t6', 1408365256, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f1f2c865bda5.47391367";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('ijduc754h2roq2pgeac449neh5', 1408617673, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('pgfksgt76k86fefh6v6eufu8n2', 1408617672, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5ccc787e5e4.10773846";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('jrr709nbrgqs33d1bk8bsul1p2', 1408617649, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5ccb0aca4e8.56712264";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('ri7haue82cnosiabqb890q3uj7', 1408617641, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('273c6bvdpicd8k2ceiecg09rd6', 1408617632, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cc9fa8db55.50592143";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('5tkjeeb4helf1h6gb19suuehv6', 1408617626, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('8sj4sm3tdfeq3v2qvk0daipie5', 1408617806, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('n4hp56e402c4jeotaogrp9asb6', 1408617625, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cc98d86f98.83793001";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('h5phr0va6lhdgo9rr7eusl2te5', 1408617609, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('fc4clb2kf1jj02i42b100h2684', 1408617582, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cc6d8955e9.40571500";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('lsb7hv87rf4dmtvvg3mtnb6fa7', 1408617609, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('e5gh4caumi8sn017fkqfnlii83', 1408617545, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cc48f2c5c7.13689598";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('q92p6l9sog0f7nq51bkrt5hln4', 1408617576, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('t5g6i8gfrodqrcvqfe4dfvtai4', 1408617511, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cc26baf3c4.23108490";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('a5a3j906iir58vk8mnjn59g2m3', 1408617475, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cc03238dc1.46348580";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('dhiar9v21totqv9un3eh0m71m7', 1408617528, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('hkagu97v3rkengjjheul0cokg0', 1408617456, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('b1kugd1mvm0rmsgikuhvlgul36', 1408617420, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cbcc1fcdd4.58499431";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('33ibpnmlo45j8am80v6sf39uv2', 1408617399, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('fq1ht99elvd4om5nvmt9n2hgn1', 1408617382, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cba5df9128.44043637";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('v43kemdgqrvfrhtoclcapiaj30', 1408617364, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('tgf4p5iiemcnp6ijekqsnveiu7', 1408617330, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cb71bfb8f2.78253404";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('5ot3s7soq8rmq9mc1da7opfhv3', 1408617297, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('ae8e076b61u2fftrvninnp4a12', 1408617289, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cb2f9ab1c1.36038318";modx.mgr.session.cookie.lifetime|i:604800;modx.mgr.user.config|a:0:{}'),
('eru6bqlv9q4npg1jpe0qin31m4', 1408617287, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('g4dd7m93ii4j5ts2q4dn3j8735', 1408617287, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('i8skbkjfqg8fbbu8ippiibja01', 1408617238, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cb15f36e80.03541277";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('j8gih0m8nsqfpdgdn06q5qlkm1', 1408617240, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('rlq1chk5l6j2r75a22tl810pe6', 1408617129, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5ca92737059.48011289";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('v778k37ibv0kt9sm0ejmbaokg1', 1408617085, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('roocida5mij69il1uevjt23010', 1408617076, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5ca737a2413.13273684";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('haoj4bf65bo45h1h7t9bqsnva0', 1408611972, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153e8ea9d856e02.22712549";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:19:{i:0;s:23:"53e9e4a0d4d064.55948885";i:1;s:23:"53ea256616de24.40074026";i:2;s:23:"53eb1245d2cf75.02282745";i:3;s:23:"53eb7f5ca7d2d0.85487054";i:4;s:23:"53eb7fb7241ac4.53763951";i:5;s:23:"53ee0995cdc4c8.24154588";i:6;s:23:"53ee0d6841dae0.69366335";i:7;s:23:"53ee2b110cb0c1.56452813";i:8;s:23:"53f1fe7f9a7b50.98606705";i:9;s:23:"53f20986a827b8.11684632";i:10;s:23:"53f3243186d797.48517757";i:11;s:23:"53f3551d78da48.97725662";i:12;s:23:"53f3736eb2fef7.99087827";i:13;s:23:"53f43e222f5e83.80806095";i:14;s:23:"53f4c80f454ac5.98212953";i:15;s:23:"53f4cb86592e16.17388479";i:16;s:23:"53f4cb98484de9.13920722";i:17;s:23:"53f59b5c49ded2.74022665";i:18;s:23:"53f5b6839b4838.95502963";}modx.user.1.userGroups|a:1:{i:0;i:1;}Console|a:1:{s:4:"code";s:219:"<?php\n$ncformssentdata = $modx->newObject(''NcformsSentData'');\n$scriptProperties[''fields''] = array(''form_id'' => 2, ''sent_on'' => time());\n$ncformssentdata->fromArray($scriptProperties[''fields'']);\n$ncformssentdata->save();";}'),
('plpgq8grgbjihndrctooqji8f6', 1408617816, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cd57e2d4e2.87467266";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('ad3trpr7d57vn0or20oi6vset1', 1408617830, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cd65488c03.78810509";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('ngugqdd55gc71q01jg5s9ilk21', 1408617876, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cd9377b881.20995958";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('lguvar01uem3mjfb026kdgho43', 1408617885, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('4dv2m3ji1j66ccfm5vmkiu27p3', 1408617885, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('gshggkepqenhrh8b70kn14vo07', 1408617895, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('6e5ob3vureds1uempuskcposk0', 1408617898, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cda9b37348.17388267";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('she9p1g5h9hqkjunvljklmjje0', 1408617899, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('mha8vm4hk9he8q0hpe52ltk2e0', 1408617903, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cdaf28fcb3.10209290";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('o0cbqtrdr9rd951j7gg7ierqg3', 1408617920, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cdbf193b66.67414127";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('pi1fpejfq2f44u1f5giubl1fk6', 1408617925, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('e653nmj2k7g3bp1lka7v29ihf2', 1408617934, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('oqhee4gb7mf5j8rl3n1a24lq42', 1408617954, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cde1870832.96359271";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('ci4q5u8qr8letnl6hauq3vfo85', 1408617965, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('q2jl7s38v8oe04juvh8p8q9810', 1408618072, 'modx.user.contextTokens|a:0:{}'),
('jr956jqba7ro1kvueodunfcfq2', 1408618072, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('uaiqrsv1gi0femncn3siodesc6', 1408618166, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5ceb65c50d1.90114239";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('a95hbmpms2i01qmj8m0kaap7u0', 1408618168, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('p1q2q44hotdmalt9lpstdku5g3', 1408618221, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:2:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}s:3:"web";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5ceec92c063.23249684";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('mkjjrbd2tm4rbpkij4t24jduo0', 1408618223, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('t1bu6ls4n2vcpghfiq3n726c51', 1408618417, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cfb0cbf309.44534294";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('2ha60t3ttmg48gr1itilf0oop1', 1408618418, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('0nog39cr1hn8jdfr8nbs5lhr20', 1408618485, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5cff48580a9.46296000";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('up35c5qfdt9cokhp7vs681n867', 1408618513, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d010caf4a6.27310032";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('3b3colqlhlie6jvq05i5oelcr4', 1408618581, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d03515db43.94909586";modx.mgr.session.cookie.lifetime|i:604800;modx.mgr.user.config|a:0:{}'),
('mu0vao1vmpo28nivd52tmvhkk4', 1408618573, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('fdaoj6o0kifj94emn9r4i2bdj3', 1408618573, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('7cddfltj8j4tcp35ir3g36qjr7', 1408618589, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d05d89d973.98123888";modx.mgr.session.cookie.lifetime|i:0;'),
('ej6u08n6dmamic0s5thcpjssa4', 1408618593, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d061856b38.41117234";modx.mgr.session.cookie.lifetime|i:0;'),
('vb74vhn3cjr8nocosvq32v2e33', 1408618595, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d063e14b20.01342901";modx.mgr.session.cookie.lifetime|i:0;'),
('8p9f71fqp8tq4gn3aaej1jnmp4', 1408618596, 'modx.user.contextTokens|a:0:{}'),
('8d5gmipm543bkdcibo7hnumd56', 1408618633, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d0880c9cf3.48352513";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('c61ud4p5r6dbbhqc8c0n8rclp6', 1408618638, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('84c6to7ftk3jjubk5j87rl9dm1', 1408618645, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d0951cd025.07301508";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('3oenhln9c74ist34af7lt2tmq1', 1408618647, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('6ra06inm2n18nrktd4u3iaci80', 1408618647, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('12s000s0o8bjj6a7c1b7k3ait6', 1408618666, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d0a978cbe8.07791137";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('9ns0ao69atlbbos78lbjjbdjk7', 1408618667, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('9n0vove0oq8bpto8fb9ovgmep0', 1408618703, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d0ced8b503.43663341";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('k4g7q937har1f02fobo9j6jb65', 1408618705, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('o4u7kn9dooha72vcrkc0lsgsn7', 1408618712, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d0d84051c3.35456121";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('26o90hg2r86mv56962jhvusha0', 1408618714, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('636opk11kgnqfv8m3pc6vep2q6', 1408618722, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d0e166ea21.88588752";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('mss57ahkaic3trl16psnqalk04', 1408619059, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d232a19337.94231125";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('coca8904nranaihg121m9170g2', 1408619071, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('0maq2fqb4bgb0887a812goojg2', 1408619164, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5d29adeae65.23312159";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('l0gimtict448drrpgjrk3v2874', 1408621691, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('46o1o19ta6qg629g06lnae6hc4', 1408621697, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5dc8013ff19.65667977";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('dali53t7so73ealbvr4l0lnbt5', 1408621742, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('0vcp9usmf73ib95nnslqokuqi1', 1408621761, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5dcc0d36db5.48748160";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('ctv8hfln27sfpjnhmshhtd9qi5', 1408621768, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('gir8es9vruei339s4tmke2dfh5', 1408621768, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('3l80dp6e7tm8st43gdi8i2ts53', 1408621796, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5dce3cd5cc5.71799387";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('9ol3vafmhqo64a6jd6fm77mnn1', 1408621820, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('dj2qb0cda0m48jph0jhs62vv97', 1408621820, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('6k3hn548dha0c1bdmg3li4hgu6', 1408621841, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5dd1128c098.94788310";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('pfsd8qf2sm0kfs3812bge22om5', 1408621842, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('0ba40f8aqoujt9f4ase0d96q75', 1408621850, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5dd198d5259.03813240";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('d3ohjkpg3d3n1ffq5q71vqtcq6', 1408621867, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('lr47mtvluk2mrmkuab6lnnim42', 1408621947, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5dd7a9eef06.97277728";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('p8ij8csd5fiaoshragf900rul1', 1408621948, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('24v2qteu81jsou1c8gfbd259a1', 1408621948, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('c3nn3lvj5q8h7otbm0vuqdkia2', 1408621991, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5dda65c2696.48482500";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('fdrf4ane7iosoja9cmogkurc35', 1408621999, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('vhihc2bgtj9m747qarisutst26', 1408621999, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}'),
('40evg55509pef8c1lopbi8sgm7', 1408622026, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5ddc94011b8.30398892";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('a9eh50q1l11g9qc4ff03k0ita4', 1408622279, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5dec66a26a0.62897198";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('bn6o09u0ce2e3khq8c2nnbo6n3', 1408622188, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5de6b4ec714.30112051";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('l8v32qs0psked98kl8dh0dvuh4', 1408953818, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5ded407f4c7.24465700";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}modx.user.1.userGroups|a:1:{i:0;i:1;}newResourceTokens|a:8:{i:0;s:23:"53f5ec1a9a3511.61704897";i:1;s:23:"53f5ec3b81f812.18197383";i:2;s:23:"53f5ecfd19c136.28759742";i:3;s:23:"53f75536903fa4.85558006";i:4;s:23:"53f75538ce4f68.11841399";i:5;s:23:"53faedc191f2d3.30533936";i:6;s:23:"53faedd309e241.43575084";i:7;s:23:"53faedda648329.88745517";}Console|a:1:{s:4:"code";s:219:"<?php\n//$ncfields = $modx->getObject(''NcFormField'', 1);\n\n//$c = $modx->newQuery(''NcFormField'');\n//$doodles = $modx->getCollection(''NcFormField'',$c);\n\n$doodles = $modx->getCollection(''NcForm'');\n$output = count($doodles);";}'),
('hv05m7c1fv1vn4kvunhtq5f3s7', 1408622349, 'modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}modx.user.0.attributes|a:1:{s:3:"mgr";a:4:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx53d78f489e4158.11683319_153f5df0d655645.22929059";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_content`
--

CREATE TABLE IF NOT EXISTS `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(333)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', '', '', 'index', '', 1, 0, 0, 0, 0, NULL, '', 1, 1, 0, 1, 1, 1, 1406635855, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index.html', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Doodles', '', '', 'doodles', '', 1, 0, 0, 0, 0, '', '[[!DoodlesSnippet? &file=`[[++doodles.core_path]]elements/snippets/snippet.doodles.php` &sort=`name`&dir=`ASC`]]', 0, 1, 1, 1, 1, 1, 1406636846, 1, 1406893354, 0, 0, 0, 1406636820, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'doodles.html', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'NcForms', '', '', 'ncforms', '', 1, 0, 0, 0, 0, '', '[[!NcFormsSnippet? &file=`[[++ncforms.core_path]]elements/snippets/snippet.ncforms.php` &id=`3` &sort=`name` &dir=`ASC`]]', 0, 1, 2, 1, 1, 1, 1407315023, 1, 1408955442, 0, 0, 0, 1407315000, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'ncforms.html', 0, 0, 1, NULL),
(4, 'document', 'text/html', 'SuccessMsg', '', '', 'successmsg', '', 0, 0, 0, 0, 0, '', '', 1, 1, 3, 1, 1, 1, 1408625721, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'successmsg.html', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_htmlsnippets`
--

CREATE TABLE IF NOT EXISTS `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'emailTpl', 'Email Template Layout', 0, 4, 0, 'Sent from [[+formName]]\n\n[[+message]]\n', 0, NULL, 0, ''),
(2, 0, 0, 'fieldTpl', 'Field Template Layout', 0, 4, 0, '[[!field? &type=`[[+type]]` &name=`[[+id]]` &label=`[[+label]]` &req=`[[+required]]` [[+type:eq=`checkbox`:then=`&array=`1``]] &options=`[[+values]]` &default_value=`[[+default]]`]]\n', 0, NULL, 0, ''),
(3, 0, 0, 'formTpl', 'Form Template Layout', 0, 4, 0, '[[!FormIt?\n	&hooks=`[[+action]][[+hooks:notempty=`,[[+hooks]]`]]`\n	&excludeFields=`submit[[+id]]`\n    &submitVar=`submit[[+id]]`\n	&formid=`[[+id]]` [[- "Form ID"]]\n	&store=`1`\n	&storeTime=`900`\n	&successMessage=`<p>[[+success_message]]</p>`\n	&emailTo=`[[+email:default=``]]`\n    [[+properties]]\n	[[+validation:notempty=`&validate=`[[+validation]]``]]\n	[[+validationText:notempty=`[[+validationText]]`]]\n]]\n\n[[!+fi.successMessage]]\n[[!+fi.validation_error_message]]\n\n<form class="form [[+identifier]]" action="" method="post">\n	<fieldset>\n		[[+fields]]\n	</fieldset>\n\n	<div class="actions">\n		<input type="submit" name="submit[[+id]]" value="[[+action_button:default=`Submit`]]" class="btn primary" />\n	</div>\n</form>\n', 0, NULL, 0, ''),
(4, 0, 0, 'sendEmail', '', 0, 0, 0, 'Hello\n<br />[[+name]] ([[+email]]) Wrote: <br />\n[[+text]]', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugins`
--

CREATE TABLE IF NOT EXISTS `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'TinyMCE', 'TinyMCE 4.3.3-pl plugin for MODx Revolution', 0, 0, 0, '/**\n * TinyMCE RichText Editor Plugin\n *\n * Events: OnRichTextEditorInit, OnRichTextEditorRegister,\n * OnBeforeManagerPageInit, OnRichTextBrowserInit\n *\n * @author Jeff Whitfield <jeff@collabpad.com>\n * @author Shaun McCormick <shaun@collabpad.com>\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package tinymce\n * @subpackage build\n */\nif ($modx->event->name == ''OnRichTextEditorRegister'') {\n    $modx->event->output(''TinyMCE'');\n    return;\n}\nrequire_once $modx->getOption(''tiny.core_path'',null,$modx->getOption(''core_path'').''components/tinymce/'').''tinymce.class.php'';\n$tiny = new TinyMCE($modx,$scriptProperties);\n\n$useEditor = $tiny->context->getOption(''use_editor'',false);\n$whichEditor = $tiny->context->getOption(''which_editor'','''');\n\n/* Handle event */\nswitch ($modx->event->name) {\n    case ''OnRichTextEditorInit'':\n        if ($useEditor && $whichEditor == ''TinyMCE'') {\n            unset($scriptProperties[''chunk'']);\n            if (isset($forfrontend) || $modx->context->get(''key'') != ''mgr'') {\n                $def = $tiny->context->getOption(''cultureKey'',$tiny->context->getOption(''manager_language'',''en''));\n                $tiny->properties[''language''] = $modx->getOption(''fe_editor_lang'',array(),$def);\n                $tiny->properties[''frontend''] = true;\n                unset($def);\n            }\n            /* commenting these out as it causes problems with richtext tvs */\n            //if (isset($scriptProperties[''resource'']) && !$resource->get(''richtext'')) return;\n            //if (!isset($scriptProperties[''resource'']) && !$modx->getOption(''richtext_default'',null,false)) return;\n            $tiny->setProperties($scriptProperties);\n            $html = $tiny->initialize();\n            $modx->event->output($html);\n            unset($html);\n        }\n        break;\n    case ''OnRichTextBrowserInit'':\n        if ($useEditor && $whichEditor == ''TinyMCE'') {\n            $inRevo20 = (boolean)version_compare($modx->version[''full_version''],''2.1.0-rc1'',''<'');\n            $modx->getVersionData();\n            $source = $tiny->context->getOption(''default_media_source'',null,1);\n            \n            $modx->controller->addHtml(''<script type="text/javascript">var inRevo20 = ''.($inRevo20 ? 1 : 0).'';MODx.source = "''.$source.''";</script>'');\n            \n            $modx->controller->addJavascript($tiny->config[''assetsUrl''].''jscripts/tiny_mce/tiny_mce_popup.js'');\n            if (file_exists($tiny->config[''assetsPath''].''jscripts/tiny_mce/langs/''.$tiny->properties[''language''].''.js'')) {\n                $modx->controller->addJavascript($tiny->config[''assetsUrl''].''jscripts/tiny_mce/langs/''.$tiny->properties[''language''].''.js'');\n            } else {\n                $modx->controller->addJavascript($tiny->config[''assetsUrl''].''jscripts/tiny_mce/langs/en.js'');\n            }\n            $modx->controller->addJavascript($tiny->config[''assetsUrl''].''tiny.browser.js'');\n            $modx->event->output(''Tiny.browserCallback'');\n        }\n        return '''';\n        break;\n\n   default: break;\n}\nreturn;', 0, 'a:39:{s:22:"accessibility_warnings";a:7:{s:4:"name";s:22:"accessibility_warnings";s:4:"desc";s:315:"If this option is set to true some accessibility warnings will be presented to the user if they miss specifying that information. This option is set to true by default, since we should all try to make this world a better place for disabled people. But if you are annoyed with the warnings, set this option to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"apply_source_formatting";a:7:{s:4:"name";s:23:"apply_source_formatting";s:4:"desc";s:229:"This option enables you to tell TinyMCE to apply some source formatting to the output HTML code. With source formatting, the output HTML code is indented and formatted. Without source formatting, the output HTML is more compact. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"button_tile_map";a:7:{s:4:"name";s:15:"button_tile_map";s:4:"desc";s:338:"If this option is set to true TinyMCE will use tiled images instead of individual images for most of the editor controls. This produces faster loading time since only one GIF image needs to be loaded instead of a GIF for each individual button. This option is set to false by default since it doesn''t work with some DOCTYPE declarations. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"cleanup";a:7:{s:4:"name";s:7:"cleanup";s:4:"desc";s:331:"This option enables or disables the built-in clean up functionality. TinyMCE is equipped with powerful clean up functionality that enables you to specify what elements and attributes are allowed and how HTML contents should be generated. This option is set to true by default, but if you want to disable it you may set it to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:18:"cleanup_on_startup";a:7:{s:4:"name";s:18:"cleanup_on_startup";s:4:"desc";s:135:"If you set this option to true, TinyMCE will perform a HTML cleanup call when the editor loads. This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"convert_fonts_to_spans";a:7:{s:4:"name";s:22:"convert_fonts_to_spans";s:4:"desc";s:348:"If you set this option to true, TinyMCE will convert all font elements to span elements and generate span elements instead of font elements. This option should be used in order to get more W3C compatible code, since font elements are deprecated. How sizes get converted can be controlled by the font_size_classes and font_size_style_values options.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"convert_newlines_to_brs";a:7:{s:4:"name";s:23:"convert_newlines_to_brs";s:4:"desc";s:128:"If you set this option to true, newline characters codes get converted into br elements. This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"convert_urls";a:7:{s:4:"name";s:12:"convert_urls";s:4:"desc";s:495:"This option enables you to control whether TinyMCE is to be clever and restore URLs to their original values. URLs are automatically converted (messed up) by default because the built-in browser logic works this way. There is no way to get the real URL unless you store it away. If you set this option to false it will try to keep these URLs intact. This option is set to true by default, which means URLs will be forced to be either absolute or relative depending on the state of relative_urls.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"dialog_type";a:7:{s:4:"name";s:11:"dialog_type";s:4:"desc";s:246:"This option enables you to specify how dialogs/popups should be opened. Possible values are "window" and "modal", where the window option opens a normal window and the dialog option opens a modal dialog. This option is set to "window" by default.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{i:0;s:6:"window";s:4:"text";s:6:"Window";}i:1;a:2:{i:0;s:5:"modal";s:4:"text";s:5:"Modal";}}s:5:"value";s:6:"window";s:7:"lexicon";N;s:4:"area";s:0:"";}s:14:"directionality";a:7:{s:4:"name";s:14:"directionality";s:4:"desc";s:261:"This option specifies the default writing direction. Some languages (Like Hebrew, Arabic, Urdu...) write from right to left instead of left to right. The default value of this option is "ltr" but if you want to use from right to left mode specify "rtl" instead.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"ltr";s:4:"text";s:13:"Left to Right";}i:1;a:2:{s:5:"value";s:3:"rtl";s:4:"text";s:13:"Right to Left";}}s:5:"value";s:3:"ltr";s:7:"lexicon";N;s:4:"area";s:0:"";}s:14:"element_format";a:7:{s:4:"name";s:14:"element_format";s:4:"desc";s:210:"This option enables control if elements should be in html or xhtml mode. xhtml is the default state for this option. This means that for example &lt;br /&gt; will be &lt;br&gt; if you set this option to "html".";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:5:"xhtml";s:4:"text";s:5:"XHTML";}i:1;a:2:{s:5:"value";s:4:"html";s:4:"text";s:4:"HTML";}}s:5:"value";s:5:"xhtml";s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"entity_encoding";a:7:{s:4:"name";s:15:"entity_encoding";s:4:"desc";s:70:"This option controls how entities/characters get processed by TinyMCE.";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:5:"value";s:0:"";s:4:"text";s:4:"None";}i:1;a:2:{s:5:"value";s:5:"named";s:4:"text";s:5:"Named";}i:2;a:2:{s:5:"value";s:7:"numeric";s:4:"text";s:7:"Numeric";}i:3;a:2:{s:5:"value";s:3:"raw";s:4:"text";s:3:"Raw";}}s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:16:"force_p_newlines";a:7:{s:4:"name";s:16:"force_p_newlines";s:4:"desc";s:147:"This option enables you to disable/enable the creation of paragraphs on return/enter in Mozilla/Firefox. The default value of this option is true. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"force_hex_style_colors";a:7:{s:4:"name";s:22:"force_hex_style_colors";s:4:"desc";s:277:"This option enables you to control TinyMCE to force the color format to use hexadecimal instead of rgb strings. It converts for example "color: rgb(255, 255, 0)" to "#FFFF00". This option is set to true by default since otherwice MSIE and Firefox would differ in this behavior.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"height";a:7:{s:4:"name";s:6:"height";s:4:"desc";s:38:"Sets the height of the TinyMCE editor.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"400px";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"indentation";a:7:{s:4:"name";s:11:"indentation";s:4:"desc";s:139:"This option allows specification of the indentation level for indent/outdent buttons in the UI. This defaults to 30px but can be any value.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"30px";s:7:"lexicon";N;s:4:"area";s:0:"";}s:16:"invalid_elements";a:7:{s:4:"name";s:16:"invalid_elements";s:4:"desc";s:163:"This option should contain a comma separated list of element names to exclude from the content. Elements in this list will removed when TinyMCE executes a cleanup.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"nowrap";a:7:{s:4:"name";s:6:"nowrap";s:4:"desc";s:212:"This nowrap option enables you to control how whitespace is to be wordwrapped within the editor. This option is set to false by default, but if you enable it by setting it to true editor contents will never wrap.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"object_resizing";a:7:{s:4:"name";s:15:"object_resizing";s:4:"desc";s:148:"This option gives you the ability to turn on/off the inline resizing controls of tables and images in Firefox/Mozilla. These are enabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"path_options";a:7:{s:4:"name";s:12:"path_options";s:4:"desc";s:119:"Sets a group of options. Note: This will override the relative_urls, document_base_url and remove_script_host settings.";s:4:"type";s:9:"textfield";s:7:"options";a:3:{i:0;a:2:{s:5:"value";s:11:"docrelative";s:4:"text";s:17:"Document Relative";}i:1;a:2:{s:5:"value";s:12:"rootrelative";s:4:"text";s:13:"Root Relative";}i:2;a:2:{s:5:"value";s:11:"fullpathurl";s:4:"text";s:13:"Full Path URL";}}s:5:"value";s:11:"docrelative";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"plugin_insertdate_dateFormat";a:7:{s:4:"name";s:28:"plugin_insertdate_dateFormat";s:4:"desc";s:53:"Formatting of dates when using the InsertDate plugin.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"%Y-%m-%d";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"plugin_insertdate_timeFormat";a:7:{s:4:"name";s:28:"plugin_insertdate_timeFormat";s:4:"desc";s:53:"Formatting of times when using the InsertDate plugin.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"%H:%M:%S";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"preformatted";a:7:{s:4:"name";s:12:"preformatted";s:4:"desc";s:231:"If you enable this feature, whitespace such as tabs and spaces will be preserved. Much like the behavior of a &lt;pre&gt; element. This can be handy when integrating TinyMCE with webmail clients. This option is disabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"relative_urls";a:7:{s:4:"name";s:13:"relative_urls";s:4:"desc";s:231:"If this option is set to true, all URLs returned from the file manager will be relative from the specified document_base_url. If it is set to false all URLs will be converted to absolute URLs. This option is set to true by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:17:"remove_linebreaks";a:7:{s:4:"name";s:17:"remove_linebreaks";s:4:"desc";s:531:"This option controls whether line break characters should be removed from output HTML. This option is enabled by default because there are differences between browser implementations regarding what to do with white space in the DOM. Gecko and Safari place white space in text nodes in the DOM. IE and Opera remove them from the DOM and therefore the line breaks will automatically be removed in those. This option will normalize this behavior when enabled (true) and all browsers will have a white-space-stripped DOM serialization.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:18:"remove_script_host";a:7:{s:4:"name";s:18:"remove_script_host";s:4:"desc";s:221:"If this option is enabled the protocol and host part of the URLs returned from the file manager will be removed. This option is only used if the relative_urls option is set to false. This option is set to true by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:20:"remove_trailing_nbsp";a:7:{s:4:"name";s:20:"remove_trailing_nbsp";s:4:"desc";s:392:"This option enables you to specify that TinyMCE should remove any traling &nbsp; characters in block elements if you start to write inside them. Paragraphs are default padded with a &nbsp; and if you write text into such paragraphs the space will remain. Setting this option to true will remove the space. This option is set to false by default since the cursor jumps a bit in Gecko browsers.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:4:"skin";a:7:{s:4:"name";s:4:"skin";s:4:"desc";s:330:"This option enables you to specify what skin you want to use with your theme. A skin is basically a CSS file that gets loaded from the skins directory inside the theme. The advanced theme that TinyMCE comes with has two skins, these are called "default" and "o2k7". We added another skin named "cirkuit" that is chosen by default.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:7:"cirkuit";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"skin_variant";a:7:{s:4:"name";s:12:"skin_variant";s:4:"desc";s:403:"This option enables you to specify a variant for the skin, for example "silver" or "black". "default" skin does not offer any variant, whereas "o2k7" default offers "silver" or "black" variants to the default one. For the "cirkuit" skin there''s one variant named "silver". When creating a skin, additional variants may also be created, by adding ui_[variant_name].css files alongside the default ui.css.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:20:"table_inline_editing";a:7:{s:4:"name";s:20:"table_inline_editing";s:4:"desc";s:231:"This option gives you the ability to turn on/off the inline table editing controls in Firefox/Mozilla. According to the TinyMCE documentation, these controls are somewhat buggy and not redesignable, so they are disabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"theme_advanced_disable";a:7:{s:4:"name";s:22:"theme_advanced_disable";s:4:"desc";s:111:"This option should contain a comma separated list of controls to disable from any toolbar row/panel in TinyMCE.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:19:"theme_advanced_path";a:7:{s:4:"name";s:19:"theme_advanced_path";s:4:"desc";s:331:"This option gives you the ability to enable/disable the element path. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom". This option is set to "true" by default. Setting this option to "false" will effectively hide the path tool, though it still takes up room in the Status Bar.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:32:"theme_advanced_resize_horizontal";a:7:{s:4:"name";s:32:"theme_advanced_resize_horizontal";s:4:"desc";s:319:"This option gives you the ability to enable/disable the horizontal resizing. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom" and when the theme_advanced_resizing is set to true. This option is set to true by default, allowing both resizing horizontal and vertical.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"theme_advanced_resizing";a:7:{s:4:"name";s:23:"theme_advanced_resizing";s:4:"desc";s:216:"This option gives you the ability to enable/disable the resizing button. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom". This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:33:"theme_advanced_statusbar_location";a:7:{s:4:"name";s:33:"theme_advanced_statusbar_location";s:4:"desc";s:257:"This option enables you to specify where the element statusbar with the path and resize tool should be located. This option can be set to "top" or "bottom". The default value is set to "top". This option can only be used when the theme is set to "advanced".";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"top";s:4:"text";s:3:"Top";}i:1;a:2:{s:5:"value";s:6:"bottom";s:4:"text";s:6:"Bottom";}}s:5:"value";s:6:"bottom";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"theme_advanced_toolbar_align";a:7:{s:4:"name";s:28:"theme_advanced_toolbar_align";s:4:"desc";s:187:"This option enables you to specify the alignment of the toolbar, this value can be "left", "right" or "center" (the default). This option can only be used when theme is set to "advanced".";s:4:"type";s:9:"textfield";s:7:"options";a:3:{i:0;a:2:{s:5:"value";s:6:"center";s:4:"text";s:6:"Center";}i:1;a:2:{s:5:"value";s:4:"left";s:4:"text";s:4:"Left";}i:2;a:2:{s:5:"value";s:5:"right";s:4:"text";s:5:"Right";}}s:5:"value";s:4:"left";s:7:"lexicon";N;s:4:"area";s:0:"";}s:31:"theme_advanced_toolbar_location";a:7:{s:4:"name";s:31:"theme_advanced_toolbar_location";s:4:"desc";s:191:"\nThis option enables you to specify where the toolbar should be located. This option can be set to "top" or "bottom" (the defualt). This option can only be used when theme is set to advanced.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"top";s:4:"text";s:3:"Top";}i:1;a:2:{s:5:"value";s:6:"bottom";s:4:"text";s:6:"Bottom";}}s:5:"value";s:3:"top";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"width";a:7:{s:4:"name";s:5:"width";s:4:"desc";s:32:"The width of the TinyMCE editor.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"95%";s:7:"lexicon";N;s:4:"area";s:0:"";}s:33:"template_selected_content_classes";a:7:{s:4:"name";s:33:"template_selected_content_classes";s:4:"desc";s:234:"Specify a list of CSS class names for the template plugin. They must be separated by spaces. Any template element with one of the specified CSS classes will have its content replaced by the selected editor content when first inserted.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}}', 0, '', 0, ''),
(2, 0, 0, 'CodeMirror', 'CodeMirror 2.2.1-pl plugin for MODx Revolution', 0, 0, 0, '/**\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package codemirror\n */\nif ($modx->event->name == ''OnRichTextEditorRegister'') {\n    $modx->event->output(''CodeMirror'');\n    return;\n}\n\n$eventArray = array(\n    ''element''=>array(\n		''OnSnipFormPrerender'',\n		''OnTempFormPrerender'',\n		''OnChunkFormPrerender'',\n		''OnPluginFormPrerender'',\n		/*''OnTVFormPrerender''*/\n		''OnFileEditFormPrerender'',\n		''OnFileEditFormPrerender'',\n		),\n	''other''=>array(\n		''OnDocFormPrerender'',\n		''OnRichTextEditorInit'',\n		''OnRichTextBrowserInit''\n	)\n);\nif ((in_array($modx->event->name,$eventArray[''element'']) && $modx->getOption(''which_element_editor'',null,''CodeMirror'') != ''CodeMirror'') || (in_array($modx->event->name,$eventArray[''other'']) && $modx->getOption(''which_editor'',null,''CodeMirror'') != ''CodeMirror'')) return;\n\nif (!$modx->getOption(''use_editor'',null,true)) return;\nif (!$modx->getOption(''codemirror.enable'',null,true)) return;\n\n/** @var CodeMirror $codeMirror */\n$codeMirror = $modx->getService(''codemirror'',''CodeMirror'',$modx->getOption(''codemirror.core_path'',null,$modx->getOption(''core_path'').''components/codemirror/'').''model/codemirror/'');\nif (!($codeMirror instanceof CodeMirror)) return '''';\n\n$options = array(\n    ''modx_path'' => $codeMirror->config[''assetsUrl''],\n    ''theme'' => $modx->getOption(''theme'',$scriptProperties,''default''),\n\n    ''indentUnit'' => (int)$modx->getOption(''indentUnit'',$scriptProperties,$modx->getOption(''indent_unit'',$scriptProperties,2)),\n    ''smartIndent'' => (boolean)$modx->getOption(''smartIndent'',$scriptProperties,false),\n    ''tabSize'' => (int)$modx->getOption(''tabSize'',$scriptProperties,4),\n    ''indentWithTabs'' => (boolean)$modx->getOption(''indentWithTabs'',$scriptProperties,true),\n    ''electricChars'' => (boolean)$modx->getOption(''electricChars'',$scriptProperties,true),\n    ''autoClearEmptyLines'' => (boolean)$modx->getOption(''electricChars'',$scriptProperties,false),\n\n    ''lineWrapping'' => (boolean)$modx->getOption(''lineWrapping'',$scriptProperties,true),\n    ''lineNumbers'' => (boolean)$modx->getOption(''lineNumbers'',$scriptProperties,$modx->getOption(''line_numbers'',$scriptProperties,true)),\n    ''firstLineNumber'' => (int)$modx->getOption(''firstLineNumber'',$scriptProperties,1),\n    ''highlightLine'' => (boolean)$modx->getOption(''highlightLine'',$scriptProperties,true),\n    ''matchBrackets'' => (boolean)$modx->getOption(''matchBrackets'',$scriptProperties,true),\n    ''showSearchForm'' => (boolean)$modx->getOption(''showSearchForm'',$scriptProperties,true),\n    ''undoDepth'' => $modx->getOption(''undoDepth'',$scriptProperties,40),\n);\n\n$load = false;\nswitch ($modx->event->name) {\n    case ''OnSnipFormPrerender'':\n        $options[''modx_loader''] = ''onSnippet'';\n        $options[''mode''] = ''php'';\n        $load = true;\n        break;\n    case ''OnTempFormPrerender'':\n        $options[''modx_loader''] = ''onTemplate'';\n        $options[''mode''] = ''htmlmixed'';\n        $load = true;\n        break;\n    case ''OnChunkFormPrerender'':\n        $options[''modx_loader''] = ''onChunk'';\n        $options[''mode''] = ''htmlmixed'';\n        $load = true;\n        break;\n    case ''OnPluginFormPrerender'':\n        $options[''modx_loader''] = ''onPlugin'';\n        $options[''mode''] = ''php'';\n        $load = true;\n        break;\n    /* disabling TVs for now, since it causes problems with newlines\n    case ''OnTVFormPrerender'':\n        $options[''modx_loader''] = ''onTV'';\n        $options[''height''] = ''250px'';\n        $load = true;\n        break;*/\n    case ''OnFileEditFormPrerender'':\n        $options[''modx_loader''] = ''onFile'';\n        $options[''mode''] = ''php'';\n        $load = true;\n        break;\n    case ''OnDocFormPrerender'':\n    	$options[''modx_loader''] = ''onResource'';\n        $options[''mode''] = ''htmlmixed'';\n        $load = true;\n    	break;\n    /* debated whether or not to use */\n    case ''OnRichTextEditorInit'':\n        break;\n    case ''OnRichTextBrowserInit'':\n        break;\n}\n\nif ($load) {\n    $options[''searchTpl''] = $codeMirror->getChunk(''codemirror.search'');\n\n    $modx->regClientStartupHTMLBlock(''<script type="text/javascript">MODx.codem = ''.$modx->toJSON($options).'';</script>'');\n    $modx->regClientCSS($codeMirror->config[''assetsUrl''].''css/codemirror-compressed.css'');\n    $modx->regClientCSS($codeMirror->config[''assetsUrl''].''css/cm.css'');\n    if ($options[''theme''] != ''default'') {\n        $modx->regClientCSS($codeMirror->config[''assetsUrl''].''cm/theme/''.$options[''theme''].''.css'');\n    }\n    $modx->regClientStartupScript($codeMirror->config[''assetsUrl''].''js/codemirror-compressed.js'');\n    $modx->regClientStartupScript($codeMirror->config[''assetsUrl''].''js/cm.js'');\n}\n\nreturn;', 0, 'a:14:{s:5:"theme";a:7:{s:4:"name";s:5:"theme";s:4:"desc";s:18:"prop_cm.theme_desc";s:4:"type";s:4:"list";s:7:"options";a:14:{i:0;a:2:{s:4:"text";s:7:"default";s:5:"value";s:7:"default";}i:1;a:2:{s:4:"text";s:8:"ambiance";s:5:"value";s:8:"ambiance";}i:2;a:2:{s:4:"text";s:10:"blackboard";s:5:"value";s:10:"blackboard";}i:3;a:2:{s:4:"text";s:6:"cobalt";s:5:"value";s:6:"cobalt";}i:4;a:2:{s:4:"text";s:7:"eclipse";s:5:"value";s:7:"eclipse";}i:5;a:2:{s:4:"text";s:7:"elegant";s:5:"value";s:7:"elegant";}i:6;a:2:{s:4:"text";s:11:"erlang-dark";s:5:"value";s:11:"erlang-dark";}i:7;a:2:{s:4:"text";s:11:"lesser-dark";s:5:"value";s:11:"lesser-dark";}i:8;a:2:{s:4:"text";s:7:"monokai";s:5:"value";s:7:"monokai";}i:9;a:2:{s:4:"text";s:4:"neat";s:5:"value";s:4:"near";}i:10;a:2:{s:4:"text";s:5:"night";s:5:"value";s:5:"night";}i:11;a:2:{s:4:"text";s:8:"rubyblue";s:5:"value";s:8:"rubyblue";}i:12;a:2:{s:4:"text";s:11:"vibrant-ink";s:5:"value";s:11:"vibrant-ink";}i:13;a:2:{s:4:"text";s:7:"xq-dark";s:5:"value";s:7:"xq-dark";}}s:5:"value";s:7:"default";s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:10:"indentUnit";a:7:{s:4:"name";s:10:"indentUnit";s:4:"desc";s:23:"prop_cm.indentUnit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:2;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:11:"smartIndent";a:7:{s:4:"name";s:11:"smartIndent";s:4:"desc";s:24:"prop_cm.smartIndent_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:7:"tabSize";a:7:{s:4:"name";s:7:"tabSize";s:4:"desc";s:20:"prop_cm.tabSize_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:4;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:14:"indentWithTabs";a:7:{s:4:"name";s:14:"indentWithTabs";s:4:"desc";s:27:"prop_cm.indentWithTabs_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:13:"electricChars";a:7:{s:4:"name";s:13:"electricChars";s:4:"desc";s:26:"prop_cm.electricChars_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:19:"autoClearEmptyLines";a:7:{s:4:"name";s:19:"autoClearEmptyLines";s:4:"desc";s:32:"prop_cm.autoClearEmptyLines_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:12:"lineWrapping";a:7:{s:4:"name";s:12:"lineWrapping";s:4:"desc";s:25:"prop_cm.lineWrapping_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:11:"lineNumbers";a:7:{s:4:"name";s:11:"lineNumbers";s:4:"desc";s:24:"prop_cm.lineNumbers_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:15:"firstLineNumber";a:7:{s:4:"name";s:15:"firstLineNumber";s:4:"desc";s:28:"prop_cm.firstLineNumber_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:1;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:13:"highlightLine";a:7:{s:4:"name";s:13:"highlightLine";s:4:"desc";s:26:"prop_cm.highlightLine_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:13:"matchBrackets";a:7:{s:4:"name";s:13:"matchBrackets";s:4:"desc";s:26:"prop_cm.matchBrackets_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:14:"showSearchForm";a:7:{s:4:"name";s:14:"showSearchForm";s:4:"desc";s:27:"prop_cm.showSearchForm_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}s:9:"undoDepth";a:7:{s:4:"name";s:9:"undoDepth";s:4:"desc";s:22:"prop_cm.undoDepth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:40;s:7:"lexicon";s:21:"codemirror:properties";s:4:"area";s:0:"";}}', 0, '', 0, ''),
(3, 0, 0, 'FormzTv', 'Formz helper snippet that generates the form.', 0, 0, 0, '/**\n * Handles plugin events for Formz Custom TV\n *\n * @package formz\n */\n$corePath = $modx->getOption(''formz.core_path'', null, $modx->getOption(''core_path'') . ''components/formz/'');\n$modx->lexicon->load(''formz:tv'');\n\nswitch ($modx->event->name) {\n    case ''OnTVInputRenderList'':\n        $modx->event->output($corePath.''processors/mgr/tv/input/'');\n        break;\n    case ''OnTVOutputRenderList'':\n        $modx->event->output($corePath.''processors/mgr/tv/output/'');\n        break;\n    case ''OnTVInputPropertiesList'':\n        //$modx->event->output($corePath.''processors/mgr/tv/input/options/'');\n        break;\n    case ''OnTVOutputRenderPropertiesList'':\n         $modx->event->output($corePath.''processors/mgr/tv/output/options/'');\n        break;\n}\nreturn;', 0, NULL, 0, '', 0, ''),
(4, 0, 0, 'MIGX', '', 0, 5, 0, '$corePath = $modx->getOption(''migx.core_path'',null,$modx->getOption(''core_path'').''components/migx/'');\n$assetsUrl = $modx->getOption(''migx.assets_url'', null, $modx->getOption(''assets_url'') . ''components/migx/'');\nswitch ($modx->event->name) {\n    case ''OnTVInputRenderList'':\n        $modx->event->output($corePath.''elements/tv/input/'');\n        break;\n    case ''OnTVInputPropertiesList'':\n        $modx->event->output($corePath.''elements/tv/inputoptions/'');\n        break;\n\n        case ''OnDocFormPrerender'':\n        $modx->controller->addCss($assetsUrl.''css/mgr.css'');\n        break; \n \n    /*          \n    case ''OnTVOutputRenderList'':\n        $modx->event->output($corePath.''elements/tv/output/'');\n        break;\n    case ''OnTVOutputRenderPropertiesList'':\n        $modx->event->output($corePath.''elements/tv/properties/'');\n        break;\n    \n    case ''OnDocFormPrerender'':\n        $assetsUrl = $modx->getOption(''colorpicker.assets_url'',null,$modx->getOption(''assets_url'').''components/colorpicker/''); \n        $modx->regClientStartupHTMLBlock(''<script type="text/javascript">\n        Ext.onReady(function() {\n            \n        });\n        </script>'');\n        $modx->regClientStartupScript($assetsUrl.''sources/ColorPicker.js'');\n        $modx->regClientStartupScript($assetsUrl.''sources/ColorMenu.js'');\n        $modx->regClientStartupScript($assetsUrl.''sources/ColorPickerField.js'');		\n        $modx->regClientCSS($assetsUrl.''resources/css/colorpicker.css'');\n        break;\n     */\n}\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(5, 0, 0, 'MIGXquip', '', 0, 5, 0, '$quipCorePath = $modx->getOption(''quip.core_path'', null, $modx->getOption(''core_path'') . ''components/quip/'');\n//$assetsUrl = $modx->getOption(''migx.assets_url'', null, $modx->getOption(''assets_url'') . ''components/migx/'');\nswitch ($modx->event->name)\n{\n\n    case ''OnDocFormPrerender'':\n\n        \n        require_once $quipCorePath . ''model/quip/quip.class.php'';\n        $modx->quip = new Quip($modx);\n\n        $modx->lexicon->load(''quip:default'');\n        $quipconfig = $modx->toJson($modx->quip->config);\n        \n        $js = "\n        Quip.config = Ext.util.JSON.decode(''{$quipconfig}'');\n        console.log(Quip);";\n\n        //$modx->controller->addCss($assetsUrl . ''css/mgr.css'');\n        $modx->controller->addJavascript($modx->quip->config[''jsUrl''].''quip.js'');\n        $modx->controller->addHtml(''<script type="text/javascript">'' . $js . ''</script>'');\n        break;\n\n}\nreturn;', 0, 'a:0:{}', 1, '', 0, ''),
(6, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '', 0, NULL, 0, '', 1, 'ace/elements/plugins/ace.plugin.php');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugin_events`
--

CREATE TABLE IF NOT EXISTS `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnRichTextBrowserInit', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(1, 'OnRichTextEditorInit', 0, 0),
(2, 'OnChunkFormPrerender', 0, 0),
(2, 'OnPluginFormPrerender', 0, 0),
(2, 'OnSnipFormPrerender', 0, 0),
(2, 'OnTempFormPrerender', 0, 0),
(2, 'OnFileEditFormPrerender', 0, 0),
(2, 'OnDocFormPrerender', 0, 0),
(2, 'OnRichTextEditorRegister', 0, 0),
(3, 'OnTVInputRenderList', 0, 0),
(3, 'OnTVOutputRenderList', 0, 0),
(3, 'OnTVOutputRenderPropertiesList', 0, 0),
(4, 'OnDocFormPrerender', 0, 0),
(4, 'OnTVInputPropertiesList', 0, 0),
(4, 'OnTVInputRenderList', 0, 0),
(5, 'OnDocFormPrerender', 0, 0),
(6, 'OnChunkFormPrerender', 0, 0),
(6, 'OnPluginFormPrerender', 0, 0),
(6, 'OnSnipFormPrerender', 0, 0),
(6, 'OnTempFormPrerender', 0, 0),
(6, 'OnFileEditFormPrerender', 0, 0),
(6, 'OnFileCreateFormPrerender', 0, 0),
(6, 'OnDocFormPrerender', 0, 0),
(6, 'OnRichTextEditorRegister', 0, 0),
(6, 'OnManagerPageBeforeRender', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_snippets`
--

CREATE TABLE IF NOT EXISTS `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'FormIt', 'A dynamic form processing snippet.', 0, 1, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormIt\n *\n * A dynamic form processing Snippet for MODx Revolution.\n *\n * @package formit\n */\nrequire_once $modx->getOption(''formit.core_path'',null,$modx->getOption(''core_path'',null,MODX_CORE_PATH).''components/formit/'').''model/formit/formit.class.php'';\n$fi = new FormIt($modx,$scriptProperties);\n$fi->initialize($modx->context->get(''key''));\n$fi->loadRequest();\n\n$fields = $fi->request->prepare();\nreturn $fi->request->handle($fields);', 0, 'a:56:{s:5:"hooks";a:7:{s:4:"name";s:5:"hooks";s:4:"desc";s:22:"prop_formit.hooks_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:8:"preHooks";a:7:{s:4:"name";s:8:"preHooks";s:4:"desc";s:25:"prop_formit.prehooks_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:9:"submitVar";a:7:{s:4:"name";s:9:"submitVar";s:4:"desc";s:26:"prop_formit.submitvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:8:"validate";a:7:{s:4:"name";s:8:"validate";s:4:"desc";s:25:"prop_formit.validate_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:6:"errTpl";a:7:{s:4:"name";s:6:"errTpl";s:4:"desc";s:23:"prop_formit.errtpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:37:"<span class="error">[[+error]]</span>";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:22:"validationErrorMessage";a:7:{s:4:"name";s:22:"validationErrorMessage";s:4:"desc";s:39:"prop_formit.validationerrormessage_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:96:"<p class="error">A form validation error occurred. Please check the values you have entered.</p>";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:22:"validationErrorBulkTpl";a:7:{s:4:"name";s:22:"validationErrorBulkTpl";s:4:"desc";s:39:"prop_formit.validationerrorbulktpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:19:"<li>[[+error]]</li>";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:26:"trimValuesBeforeValidation";a:7:{s:4:"name";s:26:"trimValuesBeforeValidation";s:4:"desc";s:43:"prop_formit.trimvaluesdeforevalidation_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:16:"customValidators";a:7:{s:4:"name";s:16:"customValidators";s:4:"desc";s:33:"prop_formit.customvalidators_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:20:"clearFieldsOnSuccess";a:7:{s:4:"name";s:20:"clearFieldsOnSuccess";s:4:"desc";s:37:"prop_formit.clearfieldsonsuccess_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:14:"successMessage";a:7:{s:4:"name";s:14:"successMessage";s:4:"desc";s:31:"prop_formit.successmessage_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:25:"successMessagePlaceholder";a:7:{s:4:"name";s:25:"successMessagePlaceholder";s:4:"desc";s:42:"prop_formit.successmessageplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:17:"fi.successMessage";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:5:"store";a:7:{s:4:"name";s:5:"store";s:4:"desc";s:22:"prop_formit.store_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:17:"placeholderPrefix";a:7:{s:4:"name";s:17:"placeholderPrefix";s:4:"desc";s:34:"prop_formit.placeholderprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"fi.";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:9:"storeTime";a:7:{s:4:"name";s:9:"storeTime";s:4:"desc";s:26:"prop_formit.storetime_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:300;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:10:"allowFiles";a:7:{s:4:"name";s:10:"allowFiles";s:4:"desc";s:27:"prop_formit.allowfiles_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:15:"spamEmailFields";a:7:{s:4:"name";s:15:"spamEmailFields";s:4:"desc";s:32:"prop_formit.spamemailfields_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"email";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"spamCheckIp";a:7:{s:4:"name";s:11:"spamCheckIp";s:4:"desc";s:28:"prop_formit.spamcheckip_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"recaptchaJs";a:7:{s:4:"name";s:11:"recaptchaJs";s:4:"desc";s:28:"prop_formit.recaptchajs_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"{}";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:14:"recaptchaTheme";a:7:{s:4:"name";s:14:"recaptchaTheme";s:4:"desc";s:31:"prop_formit.recaptchatheme_desc";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:4:"text";s:14:"formit.opt_red";s:5:"value";s:3:"red";}i:1;a:2:{s:4:"text";s:16:"formit.opt_white";s:5:"value";s:5:"white";}i:2;a:2:{s:4:"text";s:16:"formit.opt_clean";s:5:"value";s:5:"clean";}i:3;a:2:{s:4:"text";s:21:"formit.opt_blackglass";s:5:"value";s:10:"blackglass";}}s:5:"value";s:5:"clean";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:10:"redirectTo";a:7:{s:4:"name";s:10:"redirectTo";s:4:"desc";s:27:"prop_formit.redirectto_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:14:"redirectParams";a:7:{s:4:"name";s:14:"redirectParams";s:4:"desc";s:31:"prop_formit.redirectparams_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:7:"emailTo";a:7:{s:4:"name";s:7:"emailTo";s:4:"desc";s:24:"prop_formit.emailto_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"emailToName";a:7:{s:4:"name";s:11:"emailToName";s:4:"desc";s:28:"prop_formit.emailtoname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:9:"emailFrom";a:7:{s:4:"name";s:9:"emailFrom";s:4:"desc";s:26:"prop_formit.emailfrom_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:13:"emailFromName";a:7:{s:4:"name";s:13:"emailFromName";s:4:"desc";s:30:"prop_formit.emailfromname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"emailReplyTo";a:7:{s:4:"name";s:12:"emailReplyTo";s:4:"desc";s:29:"prop_formit.emailreplyto_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:16:"emailReplyToName";a:7:{s:4:"name";s:16:"emailReplyToName";s:4:"desc";s:33:"prop_formit.emailreplytoname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:7:"emailCC";a:7:{s:4:"name";s:7:"emailCC";s:4:"desc";s:24:"prop_formit.emailcc_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"emailCCName";a:7:{s:4:"name";s:11:"emailCCName";s:4:"desc";s:28:"prop_formit.emailccname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:8:"emailBCC";a:7:{s:4:"name";s:8:"emailBCC";s:4:"desc";s:25:"prop_formit.emailbcc_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"emailBCCName";a:7:{s:4:"name";s:12:"emailBCCName";s:4:"desc";s:29:"prop_formit.emailbccname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"emailSubject";a:7:{s:4:"name";s:12:"emailSubject";s:4:"desc";s:29:"prop_formit.emailsubject_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:23:"emailUseFieldForSubject";a:7:{s:4:"name";s:23:"emailUseFieldForSubject";s:4:"desc";s:40:"prop_formit.emailusefieldforsubject_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:9:"emailHtml";a:7:{s:4:"name";s:9:"emailHtml";s:4:"desc";s:26:"prop_formit.emailhtml_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:20:"emailConvertNewlines";a:7:{s:4:"name";s:20:"emailConvertNewlines";s:4:"desc";s:37:"prop_formit.emailconvertnewlines_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:17:"emailMultiWrapper";a:7:{s:4:"name";s:17:"emailMultiWrapper";s:4:"desc";s:34:"prop_formit.emailmultiwrapper_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:10:"[[+value]]";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:19:"emailMultiSeparator";a:7:{s:4:"name";s:19:"emailMultiSeparator";s:4:"desc";s:36:"prop_formit.emailmultiseparator_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:7:"fiarTpl";a:7:{s:4:"name";s:7:"fiarTpl";s:4:"desc";s:22:"prop_fiar.fiartpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"fiarToField";a:7:{s:4:"name";s:11:"fiarToField";s:4:"desc";s:26:"prop_fiar.fiartofield_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"email";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"fiarSubject";a:7:{s:4:"name";s:11:"fiarSubject";s:4:"desc";s:26:"prop_fiar.fiarsubject_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:30:"[[++site_name]] Auto-Responder";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:8:"fiarFrom";a:7:{s:4:"name";s:8:"fiarFrom";s:4:"desc";s:23:"prop_fiar.fiarfrom_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"fiarFromName";a:7:{s:4:"name";s:12:"fiarFromName";s:4:"desc";s:27:"prop_fiar.fiarfromname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"fiarReplyTo";a:7:{s:4:"name";s:11:"fiarReplyTo";s:4:"desc";s:26:"prop_fiar.fiarreplyto_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:15:"fiarReplyToName";a:7:{s:4:"name";s:15:"fiarReplyToName";s:4:"desc";s:30:"prop_fiar.fiarreplytoname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:6:"fiarCC";a:7:{s:4:"name";s:6:"fiarCC";s:4:"desc";s:21:"prop_fiar.fiarcc_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:10:"fiarCCName";a:7:{s:4:"name";s:10:"fiarCCName";s:4:"desc";s:25:"prop_fiar.fiarccname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:7:"fiarBCC";a:7:{s:4:"name";s:7:"fiarBCC";s:4:"desc";s:22:"prop_fiar.fiarbcc_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"fiarBCCName";a:7:{s:4:"name";s:11:"fiarBCCName";s:4:"desc";s:26:"prop_fiar.fiarbccname_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:8:"fiarHtml";a:7:{s:4:"name";s:8:"fiarHtml";s:4:"desc";s:23:"prop_fiar.fiarhtml_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"mathMinRange";a:7:{s:4:"name";s:12:"mathMinRange";s:4:"desc";s:27:"prop_math.mathminrange_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:10;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"mathMaxRange";a:7:{s:4:"name";s:12:"mathMaxRange";s:4:"desc";s:27:"prop_math.mathmaxrange_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:100;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:9:"mathField";a:7:{s:4:"name";s:9:"mathField";s:4:"desc";s:24:"prop_math.mathfield_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"math";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"mathOp1Field";a:7:{s:4:"name";s:12:"mathOp1Field";s:4:"desc";s:27:"prop_math.mathop1field_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"op1";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"mathOp2Field";a:7:{s:4:"name";s:12:"mathOp2Field";s:4:"desc";s:27:"prop_math.mathop2field_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"op2";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:17:"mathOperatorField";a:7:{s:4:"name";s:17:"mathOperatorField";s:4:"desc";s:32:"prop_math.mathoperatorfield_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"operator";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(2, 0, 0, 'FormItAutoResponder', 'Custom hook for FormIt to handle Auto-Response emails.', 0, 1, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * A custom FormIt hook for auto-responders.\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var FormIt $formit\n * @var fiHooks $hook\n * \n * @package formit\n */\n/* setup default properties */\n$tpl = $modx->getOption(''fiarTpl'',$scriptProperties,''fiarTpl'');\n$mailFrom = $modx->getOption(''fiarFrom'',$scriptProperties,$modx->getOption(''emailsender''));\n$mailFromName = $modx->getOption(''fiarFromName'',$scriptProperties,$modx->getOption(''site_name''));\n$mailSender = $modx->getOption(''fiarSender'',$scriptProperties,$modx->getOption(''emailsender''));\n$mailSubject = $modx->getOption(''fiarSubject'',$scriptProperties,''[[++site_name]] Auto-Responder'');\n$mailSubject = str_replace(array(''[[++site_name]]'',''[[++emailsender]]''),array($modx->getOption(''site_name''),$modx->getOption(''emailsender'')),$mailSubject);\n$isHtml = $modx->getOption(''fiarHtml'',$scriptProperties,true);\n$toField = $modx->getOption(''fiarToField'',$scriptProperties,''email'');\n$multiSeparator = $modx->getOption(''fiarMultiSeparator'',$formit->config,"\\n");\n$multiWrapper = $modx->getOption(''fiarMultiWrapper'',$formit->config,"[[+value]]");\nif (empty($fields[$toField])) {\n    $modx->log(modX::LOG_LEVEL_ERROR,''[FormIt] Auto-responder could not find field `''.$toField.''` in form submission.'');\n    return false;\n}\n\n/* handle checkbox and array fields */\nforeach ($fields as $k => &$v) {\n    if (is_array($v)) {\n        $vOpts = array();\n        foreach ($v as $vKey => $vValue) {\n            if (is_string($vKey) && !empty($vKey)) {\n                $vKey = $k.''.''.$vKey;\n                $fields[$vKey] = $vValue;\n            } else {\n                $vOpts[] = str_replace(''[[+value]]'',$vValue,$multiWrapper);\n            }\n        }\n        $newValue = implode($multiSeparator,$vOpts);\n        if (!empty($vOpts)) {\n            $fields[$k] = $newValue;\n        }\n    }\n}\n\n/* setup placeholders */\n$placeholders = $fields;\n$mailTo= $fields[$toField];\n\n$message = $formit->getChunk($tpl,$placeholders);\n$modx->parser->processElementTags('''',$message,true,false);\n\n$modx->getService(''mail'', ''mail.modPHPMailer'');\n$modx->mail->reset();\n$modx->mail->set(modMail::MAIL_BODY,$message);\n$modx->mail->set(modMail::MAIL_FROM,$hook->_process($mailFrom,$placeholders));\n$modx->mail->set(modMail::MAIL_FROM_NAME,$hook->_process($mailFromName,$placeholders));\n$modx->mail->set(modMail::MAIL_SENDER,$hook->_process($mailSender,$placeholders));\n$modx->mail->set(modMail::MAIL_SUBJECT,$hook->_process($mailSubject,$placeholders));\n$modx->mail->address(''to'',$mailTo);\n$modx->mail->setHTML($isHtml);\n\n/* reply to */\n$emailReplyTo = $modx->getOption(''fiarReplyTo'',$scriptProperties,$mailFrom);\n$emailReplyTo = $hook->_process($emailReplyTo,$fields);\n$emailReplyToName = $modx->getOption(''fiarReplyToName'',$scriptProperties,$mailFromName);\n$emailReplyToName = $hook->_process($emailReplyToName,$fields);\nif (!empty($emailReplyTo)) {\n    $modx->mail->address(''reply-to'',$emailReplyTo,$emailReplyToName);\n}\n\n/* cc */\n$emailCC = $modx->getOption(''fiarCC'',$scriptProperties,'''');\nif (!empty($emailCC)) {\n    $emailCCName = $modx->getOption(''fiarCCName'',$scriptProperties,'''');\n    $emailCC = explode('','',$emailCC);\n    $emailCCName = explode('','',$emailCCName);\n    $numAddresses = count($emailCC);\n    for ($i=0;$i<$numAddresses;$i++) {\n        $etn = !empty($emailCCName[$i]) ? $emailCCName[$i] : '''';\n        if (!empty($etn)) $etn = $hook->_process($etn,$fields);\n        $emailCC[$i] = $hook->_process($emailCC[$i],$fields);\n        if (!empty($emailCC[$i])) {\n            $modx->mail->address(''cc'',$emailCC[$i],$etn);\n        }\n    }\n}\n\n/* bcc */\n$emailBCC = $modx->getOption(''fiarBCC'',$scriptProperties,'''');\nif (!empty($emailBCC)) {\n    $emailBCCName = $modx->getOption(''fiarBCCName'',$scriptProperties,'''');\n    $emailBCC = explode('','',$emailBCC);\n    $emailBCCName = explode('','',$emailBCCName);\n    $numAddresses = count($emailBCC);\n    for ($i=0;$i<$numAddresses;$i++) {\n        $etn = !empty($emailBCCName[$i]) ? $emailBCCName[$i] : '''';\n        if (!empty($etn)) $etn = $hook->_process($etn,$fields);\n        $emailBCC[$i] = $hook->_process($emailBCC[$i],$fields);\n        if (!empty($emailBCC[$i])) {\n            $modx->mail->address(''bcc'',$emailBCC[$i],$etn);\n        }\n    }\n}\n\nif (!$formit->inTestMode) {\n    if (!$modx->mail->send()) {\n        $modx->log(modX::LOG_LEVEL_ERROR,''[FormIt] An error occurred while trying to send the auto-responder email: ''.$modx->mail->mailer->ErrorInfo);\n        return false;\n    }\n}\n$modx->mail->reset();\nreturn true;', 0, NULL, '', 0, ''),
(3, 0, 0, 'FormItRetriever', 'Fetches a form submission for a user for displaying on a thank you page.', 0, 1, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Retrieves a prior form submission that was stored with the &store property\n * in a FormIt call.\n *\n * @var modX $modx\n * @var array $scriptProperties\n * \n * @package formit\n */\nrequire_once $modx->getOption(''formit.core_path'',null,$modx->getOption(''core_path'').''components/formit/'').''model/formit/formit.class.php'';\n$fi = new FormIt($modx,$scriptProperties);\n\n/* setup properties */\n$placeholderPrefix = $modx->getOption(''placeholderPrefix'',$scriptProperties,''fi.'');\n$eraseOnLoad = $modx->getOption(''eraseOnLoad'',$scriptProperties,false);\n$redirectToOnNotFound = $modx->getOption(''redirectToOnNotFound'',$scriptProperties,false);\n\n/* fetch data from cache and set to placeholders */\n$fi->loadRequest();\n$fi->request->loadDictionary();\n$data = $fi->request->dictionary->retrieve();\nif (!empty($data)) {\n    /* set data to placeholders */\n    foreach ($data as $k=>$v) {\n        /*checkboxes & other multi-values are stored as arrays, must be imploded*/\n        if (is_array($v)) {\n            $data[$k] = implode('','',$v);\n        }\n    }\n    $modx->toPlaceholders($data,$placeholderPrefix,'''');\n    \n    /* if set, erase the data on load, otherwise depend on cache expiry time */\n    if ($eraseOnLoad) {\n        $fi->request->dictionary->erase();\n    }\n/* if the data''s not found, and we want to redirect somewhere if so, do here */\n} else if (!empty($redirectToOnNotFound)) {\n    $url = $modx->makeUrl($redirectToOnNotFound);\n    $modx->sendRedirect($url);\n}\nreturn '''';', 0, 'a:3:{s:17:"placeholderPrefix";a:7:{s:4:"name";s:17:"placeholderPrefix";s:4:"desc";s:31:"prop_fir.placeholderprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"fi.";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:20:"redirectToOnNotFound";a:7:{s:4:"name";s:20:"redirectToOnNotFound";s:4:"desc";s:34:"prop_fir.redirecttoonnotfound_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"eraseOnLoad";a:7:{s:4:"name";s:11:"eraseOnLoad";s:4:"desc";s:25:"prop_fir.eraseonload_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(4, 0, 0, 'FormItIsChecked', 'A custom output filter used with checkboxes/radios for checking checked status.', 0, 1, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Custom output filter that returns checked="checked" if the value is set\n *\n * @var string $input\n * @var string $options\n * @package formit\n */\n$output = '' '';\nif ($input == $options) {\n    $output = '' checked="checked"'';\n}\n$input = $modx->fromJSON($input);\nif (in_array($options,$input)) {\n  $output = '' checked="checked"'';\n}\nreturn $output;', 0, NULL, '', 0, ''),
(5, 0, 0, 'FormItIsSelected', 'A custom output filter used with dropdowns for checking selected status.', 0, 1, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Custom output filter that returns checked="checked" if the value is set\n *\n * @var string $input\n * @var string $options\n * @package formit\n */\n$output = '' '';\nif ($input == $options) {\n    $output = '' selected="selected"'';\n}\n$input = $modx->fromJSON($input);\nif (in_array($options,$input)) {\n  $output = '' selected="selected"'';\n}\nreturn $output;', 0, NULL, '', 0, ''),
(6, 0, 0, 'FormItCountryOptions', 'A utility snippet for generating a dropdown list of countries.', 0, 1, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Automatically generates and outputs a country list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @package formit\n */\nrequire_once $modx->getOption(''formit.core_path'',null,$modx->getOption(''core_path'').''components/formit/'').''model/formit/formit.class.php'';\n$fi = new FormIt($modx,$scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(''fiCountryOptions'',''countryOptions'',$scriptProperties);\n$co->initialize();\n$co->getData();\n$co->loadPrioritized();\n$co->iterate();\nreturn $co->output();', 0, 'a:9:{s:8:"selected";a:7:{s:4:"name";s:8:"selected";s:4:"desc";s:23:"prop_fico.selected_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:18:"prop_fico.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"option";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:10:"useIsoCode";a:7:{s:4:"name";s:10:"useIsoCode";s:4:"desc";s:25:"prop_fico.useisocode_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"prioritized";a:7:{s:4:"name";s:11:"prioritized";s:4:"desc";s:26:"prop_fico.prioritized_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:11:"optGroupTpl";a:7:{s:4:"name";s:11:"optGroupTpl";s:4:"desc";s:26:"prop_fico.optgrouptpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"optgroup";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:20:"prioritizedGroupText";a:7:{s:4:"name";s:20:"prioritizedGroupText";s:4:"desc";s:35:"prop_fico.prioritizedgrouptext_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:12:"allGroupText";a:7:{s:4:"name";s:12:"allGroupText";s:4:"desc";s:27:"prop_fico.allgrouptext_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:17:"selectedAttribute";a:7:{s:4:"name";s:17:"selectedAttribute";s:4:"desc";s:32:"prop_fico.selectedattribute_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:20:" selected="selected"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:28:"prop_fico.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(7, 0, 0, 'FormItStateOptions', 'A utility snippet for generating a dropdown list of U.S. states.', 0, 1, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Automatically generates and outputs a U.S. state list for usage in forms\n * \n * @package formit\n */\nrequire_once $modx->getOption(''formit.core_path'',null,$modx->getOption(''core_path'').''components/formit/'').''model/formit/formit.class.php'';\n$fi = new FormIt($modx,$scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(''fiStateOptions'',''stateOptions'',$scriptProperties);\n$co->initialize();\n$co->getData();\n$co->iterate();\nreturn $co->output();', 0, 'a:6:{s:8:"selected";a:7:{s:4:"name";s:8:"selected";s:4:"desc";s:23:"prop_fiso.selected_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:18:"prop_fiso.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"option";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:7:"useAbbr";a:7:{s:4:"name";s:7:"useAbbr";s:4:"desc";s:22:"prop_fiso.useabbr_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:17:"selectedAttribute";a:7:{s:4:"name";s:17:"selectedAttribute";s:4:"desc";s:32:"prop_fiso.selectedattribute_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:20:" selected="selected"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:7:"country";a:7:{s:4:"name";s:7:"country";s:4:"desc";s:22:"prop_fiso.country_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"us";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:28:"prop_fiso.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:17:"formit:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(8, 0, 0, 'field', 'A form-field generator compatible with FormIt.', 0, 3, 0, '/**\n * FormitFastPack\n *\n * Copyright 2010-11 by Oleg Pryadko <oleg@websitezen.com>\n *\n * This file is part of FormitFastPack, a FormIt helper package for MODx Revolution.\n *\n * FormitFastPack is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * FormitFastPack is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormitFastPack; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n */\n/**\n * @package FormitFastPack\n */\n/**\n * Each form field field is one snippet call.\n *\n * Example Usage:\n * [[!formIt? &prefix=`myprefix.` &submitVar=`submitForm`]]\n * [[!fieldSetDefaults? &prefix=`myprefix.` &resetDefaults=`1`]]\n * [[!field &name=`full_name` &type=`text` &class=`required`]]\n * [[!field &name=`favorite_color` &type=`checkbox` &options=`Blue||Red||Yellow`]]\n * [[!field &name=`location` &type=`select` &label=`Where are you from?` &options=`United States==US||New Zealand==NZ||Never Never Land==NNL`]]\n * [[!field &name=`message` &type=`textarea`]]\n * [[!field &name=`submitForm` &type=`submit` &label=`&nbsp;` &message=`Submit Form`]]\n *\n * Chunks:\n * You can override the chunk templates by creating two chunks called fieldTypesTpl and fieldWrapTpl.\n * The template chunks use SPECIAL DELIMITERS. See the example chunks in core/components/formitfastpack/elements/chunks/\n * You can use different chunk names by changing the &tpl and &outer_tpl parameters, respectively.\n *\n * Parameters.\n * All parameters passed to the snippet (including custom ones) will be set as placeholders for processing the template chunks.\n * See property set in the fieldPropSetExample snippet for up-to-date defaults and descriptions.\n *\n * &cache_desc: Whether to enable smart caching for the field, which tries to cache as much as possible without caching the current_value, error, error_class, or selected/ checked status. Set to empty or zero to disable, or leave at auto for future compatibility.\n * &custom_ph_desc: (OPTIONAL) Speed improvement. Listing your custom placeholders here or in a fieldSetDefaults call speeds up chunk processing by setting a blank default value. You do not need to list placeholders here that already have a value set somewhere else.\n * &debug_desc: Turn on debugging.\n * &default_delimiter_desc: If no outer_type or type is specified, this will be used as the type for the purposes of processing the template chunk.\n * &default_value_desc: The default value to use if no value is found.\n * &error_class_desc: The name of the class to use for the [[+error_class]] placeholder. This placeholder is generated along with [[+error]] if a FormIt error is found for this field.\n * &error_prefix_desc: Usually automatically determined, you can override the prefix that is prepended to the field name for the purpose of getting the field errors from the MODX placeholders.\n * &inner_element_class_desc: The element class (modSnippet or modChunk).\n * &inner_element_desc: Similar to inner_override, but accepts the name of an element (a chunk or snippet for example). All of the placeholders and parameters are passed to the chunk. You can also specify an optional chunks_path parameter that allows file-based chunks in the form name.chunk.tpl\n * &inner_element_properties_desc: A JSON array of additional parameters to pass. Example: {"tpl" : "myChunk"}\n * &inner_html_desc: Specify your own HTML instead of using the field template. Useful if you want to use the outer_tpl and smart caching but specify your own HTML for the field.\n * &key_prefix_desc: To use the same field names for different forms on the same page, specify a key prefix.\n * &mark_selected_desc: If left blank or set to zero, disables option marking. You can also use this to specify a string to use for the marker (such as \\''checked="checked"\\''. By default if "options" or an options override is specified, the field snippet will add a marker such as \\'' checked="checked"\\'' or (if the field type is "select") \\'' selected="selected"\\'' in the right place, assuming you are using HTML syntax for value (value="X"). This is a lot faster than using FormItIsSelected or FormItIsChecked.\n * &name_desc: The name of the field.\n * &options_delimiter_inner_desc: The delimiter used to separate the label from the value in the options parameter.\n * &options_delimiter_outer_desc: The delimiter used to separate each option in the options parameter.\n * &options_desc: If your field is a nested or group type, such as checkbox, radio, or select, specify the options in tv-style format like so: Label One==value1||Label Two==value2||Label Three==value3 or Value1||Value2||Value3. The field snippet uses a sub-type (specified by option_type) to template the options. Setting this parameter causes smart caching to be enabled by default and "selected" or "checked" to be added to the currently selected option, as appropriate. See "mark_slected" and "cache" parameters.\n * &options_element_class_desc: The element class (modSnippet or modChunk).\n * &options_element_desc: Similar to options_override, but accepts the name of an element (a chunk or snippet for example). All of the placeholders and parameters are passed to the chunk. You can also specify an optional chunks_path parameter that allows file-based chunks in the form name.chunk.tpl\n * &options_element_properties_desc: A JSON array of additional parameters to pass. Example: {"tpl" : "myChunk"}\n * &options_html_desc: You can specify your own HTML instead of using the &options parameter to generate options. For example, you might decide to pass in option value="something" data="something" if the type is set to "select". It otherwise acts exactly as if you had specified the options parameter for marking and caching purposes.\n * &option_type_desc: Specify the field type used for each option. Usually automatically determined.\n * &outer_tpl_desc: The outer template chunk, which can be used for any HTML that stays consistent between fields. This is a good place to put your label tags and any wrapping li or div elements that wrap each field in your form.\n * &outer_type_desc: The outer type. The outer template chunk can divided just like the fieldTypesTpl, but with names unrelated to field types.\n * &prefix_desc: The prefix used by the FormIt call this field is for - may also work with EditProfile, Register, etc... snippet calls. The prefix is also used for other purposes, such as getting and setting the value in the session.\n * &selected_text_desc: The text to use for marking options as selected, checked, or whatnot. Usually automatically determined based on the type, but this can be useful if you have a custom type or want something else.\n * &set_type_ph_desc: Sets these placeholders to either true or false depending on whether they match this field type. So, if the field type is text and text is listed here, the placeholder "text" will be set to 1, and the other types listed will be set to an empty string.\n * &to_placeholders_desc: If set, will set all of the placeholders as global MODx placeholders as well.\n * &tpl_desc: The template chunk to use for templating all of the various fields. Each field is separated from the others by wrapping it - both above and below - with the following HTML comment: !-- fieldtype --, where fieldtype is the field type. For example, for a text field: !-- text -- input type="[[+type]]" name="[[+name]]" value="[[+current_value]]" / !-- text -- Use the fieldTypesTpl.chunk.tpl in the chunks directory as the starting point.\n * &type_desc: The field type. Used to decide which subset of the tpl chunk to use.\n * &use_cookies_desc: If no value is found, get the value from the $_COOKIES global array. The array key is use_cookies_prefix+prefix+name.\n * &use_cookies_prefix_desc: The prefix to use for cookie storage.\n * &use_formit_desc: Get the value from MODX placeholders such as those set by formit. The placeholder key is PREFIX+NAME (so you can make this compatible with Login and similar snippets by changing the prefix).\n * &use_get_desc: If no value is found, get the value from the $_GET global array. The array key is the name of the field.\n * &use_request_desc: If no value is found, get the value from the $_REQUEST global array. The array key is the name of the field.\n * &use_session_desc: If no value is found, get the value from the $_SESSION global array. The array key is use_session_prefix+prefix+name.\n * &use_session_prefix_desc: The prefix to use for session storage. *\n *\n * Custom Parameters\n *\n * You can add an infinite number of custom parameters, all of which will be set as placeholders in the template chunks.\n * Example parameters: class, req (required), note, help\n * Example parameter usage: \n *  - class="[[+type]] [[+class]][[+error_class]][[+req:notempty=` required`]]"\n *  - label="[[+label:default=`[[+name:replace=`_== `:ucwords]]`]][[+req:notempty=` *`]]"\n *  - [[+note:notempty=`<span class="notice">[[+note]]</span>`]]\n * \n * Placeholders:\n * \n * The values of all the parameters listed above and any other parameters you pass to the snippet are automatically set as placeholders. \n * This allows you to add custom placeholders such as "required", "class", etc.... (see custom parameters above)\n * In addition, the following special placeholders are generated:\n *\n * inner_html - Used in the outer_tpl to position the generated content, which will vary by field type. Simple example: <li>[[+inner_html]]</li>\n * options_html - Used in the tpl to position the options html (only when using &options or an options override). Example: <select name="[[+name]]">[[+options_html]]</select>\n * current_value - The value of the FormIt value for the field name. Exactly the same as writing [[!fi.fieldname]] for each fieldname (if the prefix is fi.). Never gets cached.\n * error - The value of the FormIt error message for the field name, if one is found. Exactly the same as writing [[!fi.error.fieldname]] for each fieldname (if the prefix is fi.). Never gets cached.\n * error_class - set to the value of the error_class parameter (default is " error") ONLY if a FormIt error for the field name is found. Exactly the same as using [[+error:notempty=` error`]].\n * key - A unique but human-friendly identifier for each field or sub-field (useful for HTML id attributes). Generated from the key_prefix, prefix, field name, and (only if using an option field) value.\n *\n */\n/**\n * @var MODx $modx\n * @var array $scriptProperties\n */\n\n$debug = $modx->getOption(''debug'',$scriptProperties,false);\n/** @var $ffp FormitFastPack */\n$ffp_core_path = $modx->getOption(''formitfastpack.core_path'', null, $modx->getOption(''core_path'') . ''components/formitfastpack/'');\n/** @define "$ffp_core_path" "../../" */\nrequire_once $ffp_core_path.''model/formitfastpack/ffpfield.class.php'';\n\n// load ffp service\n$ffp = $modx->getService(''formitfastpack'',''FormitFastPack'', $ffp_core_path .''model/formitfastpack/'',$scriptProperties);\nif (!($ffp instanceof FormitFastPack)) return ''Package not found.'';\n\n// load defaults\n$defaults = $ffp->getConfig();\n$config = array_merge($defaults,$scriptProperties);\n\n$disable_cache = false;\nif ($disable_cache) $config[''cache''] = 0;\n\n// create ffpField\n$field = new ffpField($ffp);\n\n// todo: move defaults to snippet?\n$field->setSettings($config);\n$output = $field->process();\n\nreturn $output;', 0, NULL, '', 0, ''),
(9, 0, 0, 'fieldSetDefaults', 'Sets default options for any field snippets called after.', 0, 3, 0, '/**\n * @var MODx $modx\n * @var formitFastPack $ffp\n * @var array $scriptProperties\n */\n$ffp = $modx->getService(''formitfastpack'',''FormitFastPack'',$modx->getOption(''ffp.core_path'',null,$modx->getOption(''core_path'').''components/formitfastpack/'').''model/formitfastpack/'',$scriptProperties);\nif (!($ffp instanceof FormitFastPack)) return ''Package not found.'';\n$ffp->setConfig($scriptProperties);\nreturn '''';', 0, NULL, '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(10, 0, 0, 'fieldPropSetExample', 'Property sets dont work well with fieldSetDefaults. Here is a set to make your own out of if you want to use them, however.', 0, 3, 0, '/**\n * FormitFastPack\n *\n * Copyright 2010-11 by Oleg Pryadko <oleg@websitezen.com>\n *\n * This file is part of FormitFastPack, a FormIt helper package for MODx Revolution.\n *\n * FormitFastPack is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * FormitFastPack is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormitFastPack; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n */\n/**\n * @package FormitFastPack\n */\n/*\n *\n */\n$message = "Property sets don''t work well with fieldSetDefaults, so I have not included them with the default snippets. If you need property sets, just create some custom property sets based off of this template and attach the field or fieldSetDefault snippets to it in the Property Set manager page.";\nreturn $message;', 0, 'a:38:{s:5:"debug";a:7:{s:4:"name";s:5:"debug";s:4:"desc";s:20:"ffp_field_debug_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:5:"cache";a:7:{s:4:"name";s:5:"cache";s:4:"desc";s:20:"ffp_field_cache_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"auto";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:13:"default_value";a:7:{s:4:"name";s:13:"default_value";s:4:"desc";s:28:"ffp_field_default_value_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:4:"name";a:7:{s:4:"name";s:4:"name";s:4:"desc";s:19:"ffp_field_name_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:4:"type";a:7:{s:4:"name";s:4:"type";s:4:"desc";s:19:"ffp_field_type_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"text";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:10:"outer_type";a:7:{s:4:"name";s:10:"outer_type";s:4:"desc";s:25:"ffp_field_outer_type_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:6:"prefix";a:7:{s:4:"name";s:6:"prefix";s:4:"desc";s:21:"ffp_field_prefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"fi.";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:12:"error_prefix";a:7:{s:4:"name";s:12:"error_prefix";s:4:"desc";s:27:"ffp_field_error_prefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:10:"key_prefix";a:7:{s:4:"name";s:10:"key_prefix";s:4:"desc";s:25:"ffp_field_key_prefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:18:"delimiter_template";a:7:{s:4:"name";s:18:"delimiter_template";s:4:"desc";s:33:"ffp_field_delimiter_template_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:18:"<!-- [[+type]] -->";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:17:"default_delimiter";a:7:{s:4:"name";s:17:"default_delimiter";s:4:"desc";s:32:"ffp_field_default_delimiter_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:7:"default";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:9:"outer_tpl";a:7:{s:4:"name";s:9:"outer_tpl";s:4:"desc";s:24:"ffp_field_outer_tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:12:"fieldWrapTpl";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:18:"ffp_field_tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:13:"fieldTypesTpl";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:7:"options";a:7:{s:4:"name";s:7:"options";s:4:"desc";s:22:"ffp_field_options_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:23:"options_delimiter_outer";a:7:{s:4:"name";s:23:"options_delimiter_outer";s:4:"desc";s:38:"ffp_field_options_delimiter_outer_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"||";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:23:"options_delimiter_inner";a:7:{s:4:"name";s:23:"options_delimiter_inner";s:4:"desc";s:38:"ffp_field_options_delimiter_inner_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"==";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:11:"option_type";a:7:{s:4:"name";s:11:"option_type";s:4:"desc";s:26:"ffp_field_option_type_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:13:"selected_text";a:7:{s:4:"name";s:13:"selected_text";s:4:"desc";s:28:"ffp_field_selected_text_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:9:"custom_ph";a:7:{s:4:"name";s:9:"custom_ph";s:4:"desc";s:24:"ffp_field_custom_ph_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:112:"class,multiple,array,header,default,class,outer_class,label,note,note_class,size,title,req,message,clear_message";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:11:"set_type_ph";a:7:{s:4:"name";s:11:"set_type_ph";s:4:"desc";s:26:"ffp_field_set_type_ph_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:35:"text,textarea,checkbox,radio,select";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:12:"options_html";a:7:{s:4:"name";s:12:"options_html";s:4:"desc";s:27:"ffp_field_options_html_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:15:"options_element";a:7:{s:4:"name";s:15:"options_element";s:4:"desc";s:30:"ffp_field_options_element_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:21:"options_element_class";a:7:{s:4:"name";s:21:"options_element_class";s:4:"desc";s:36:"ffp_field_options_element_class_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"modChunk";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:26:"options_element_properties";a:7:{s:4:"name";s:26:"options_element_properties";s:4:"desc";s:41:"ffp_field_options_element_properties_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"[]";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:10:"inner_html";a:7:{s:4:"name";s:10:"inner_html";s:4:"desc";s:25:"ffp_field_inner_html_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:13:"inner_element";a:7:{s:4:"name";s:13:"inner_element";s:4:"desc";s:28:"ffp_field_inner_element_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:19:"inner_element_class";a:7:{s:4:"name";s:19:"inner_element_class";s:4:"desc";s:34:"ffp_field_inner_element_class_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"modChunk";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:24:"inner_element_properties";a:7:{s:4:"name";s:24:"inner_element_properties";s:4:"desc";s:39:"ffp_field_inner_element_properties_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"[]";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:10:"use_formit";a:7:{s:4:"name";s:10:"use_formit";s:4:"desc";s:25:"ffp_field_use_formit_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:7:"use_get";a:7:{s:4:"name";s:7:"use_get";s:4:"desc";s:22:"ffp_field_use_get_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:11:"use_request";a:7:{s:4:"name";s:11:"use_request";s:4:"desc";s:26:"ffp_field_use_request_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:11:"use_session";a:7:{s:4:"name";s:11:"use_session";s:4:"desc";s:26:"ffp_field_use_session_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:11:"use_cookies";a:7:{s:4:"name";s:11:"use_cookies";s:4:"desc";s:26:"ffp_field_use_cookies_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:11:"error_class";a:7:{s:4:"name";s:11:"error_class";s:4:"desc";s:26:"ffp_field_error_class_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"error";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:13:"mark_selected";a:7:{s:4:"name";s:13:"mark_selected";s:4:"desc";s:28:"ffp_field_mark_selected_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:15:"to_placeholders";a:7:{s:4:"name";s:15:"to_placeholders";s:4:"desc";s:30:"ffp_field_to_placeholders_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:18:"use_session_prefix";a:7:{s:4:"name";s:18:"use_session_prefix";s:4:"desc";s:33:"ffp_field_use_session_prefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"field.";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}s:18:"use_cookies_prefix";a:7:{s:4:"name";s:18:"use_cookies_prefix";s:4:"desc";s:33:"ffp_field_use_cookies_prefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"field.";s:7:"lexicon";s:25:"formitfastpack:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(11, 0, 0, 'fiProcessArrays', 'A FormIt hook which transforms array values into concatenated strings.', 0, 3, 0, '/*\n * fiProcessArrays formit hook. Processes all values stored as arrays and implodes them.\n * \n * options: \n * &fipaFieldSuffix - the suffix to add to the array name - default: "_values" - example resulting placeholder: [[+colors_values]]\n * &fipaValueSeparator - the separator to use between the values - default: ", "\n * &fipaExcludedFields - a comma-separated list of field names to exclude\n * \n * Copyright Oleg Pryadko (websitezen.com) 2011\n * License GPL v.3 or later \n*/\n/**\n * @var MODx $modx\n * @var array $scriptProperties\n */\n$field_suffix = $modx->getOption(''fipaFieldSuffix'',$scriptProperties,''_values'');\n$separator = $modx->getOption(''fipaValueSeparator'',$scriptProperties,'', '');\n$list = $modx->getOption(''fipaList'',$scriptProperties,false);\n$excluded_fields = explode('','',$modx->getOption(''fipaExcludedFields'',$scriptProperties,''''));\n$allFormFields = $hook->getValues();\nforeach ($allFormFields as $fieldName => $fieldValue) {\n  if (is_array($fieldValue) && !in_array($fieldName,$excluded_fields)) {\n    $imploded = '''';\n    $count=0;\n    foreach ($fieldValue as $value) {\n      if (!empty($value)) {\n        if ($list) {$imploded .= ''<li>'';}\n        else if ($count) {$imploded .= $separator;}\n        $imploded .= $value;\n        if ($list) {$imploded .= ''</li>'';}\n        $count++;\n      }\n    }\n    if ($list) {$imploded = ''<ul>''.$imploded.''</ul>'';}\n    $hook->setValue($fieldName.$field_suffix,$imploded);\n  }\n}\nreturn true;', 0, NULL, '', 0, ''),
(12, 0, 0, 'fiGenerateReport', 'A FormIt hook which generates an email report by iterating all field names and values through a row template.', 0, 3, 0, '/* \n * fiGenerateReport formit hook. Creates a single placeholder with a complete email report for all non-array fields that have not otherwise been excluded. \n * \n * IMPORTANT: if you use array values, call the fiProcessArrays hook BEFORE the fiGenerateReport hook OR use another method to process the arrays\n *\n * Please see forum post: http://modxcms.com/forums/index.php?topic=64656.0\n * \n * Parameter\n * &figrTpl    - the row template    - default: formReportRow\n * &figrAllValuesLabel    - the name of the placeholder generated for the complete report    - default: figr_values\n * &figrExcludedFields    - a list of all fields to be excluded from the report\n * &figrDefaultExcludedFields - also override the default excluded fields. Unless this option is set, the following additional fields are always excluded: nospam,blank,recaptcha_challenge_field,recaptcha_response_field.\n * \n * Copyright 2011 Oleg Pryadko (websitezen.com)\n * License GPL v.3 or later\n*/ \n$fieldTpl = $modx->getOption(''figrTpl'',$scriptProperties,''formReportRow'');\n$allValuesLabel = $modx->getOption(''figrAllValuesLabel'',$scriptProperties,''figr_values'');\n$default_excluded_fields = explode('','',$modx->getOption(''figrDefaultExcludedFields'',$scriptProperties,''nospam,blank,recaptcha_challenge_field,recaptcha_response_field''));\n$excluded_fields = explode('','',$modx->getOption(''figrExcludedFields'',$scriptProperties,''''));\n$excluded_fields = array_merge($default_excluded_fields,$excluded_fields);\n// Unless the default excluded fields have been overriden, also exclude the submitVar\nif ($modx->getOption(''submitVar'',$scriptProperties,'''') && !$modx->getOption(''figrDefaultExcludedFields'',$scriptProperties,'''')) {\n    $excluded_fields[] = $modx->getOption(''submitVar'',$scriptProperties,''submit'');\n}\n\n// Get the FormitFastPack as a service - used to process the template chunk\n$ffp = $modx->getService(''formitfastpack'',''FormitFastPack'',$modx->getOption(''ffp.core_path'',null,$modx->getOption(''core_path'').''components/formitfastpack/'').''model/formitfastpack/'',$scriptProperties);\nif (!($ffp instanceof FormitFastPack)) return ''FFP Package not found.'';\n\n// implode fields\n$imploded = '''';\n$allFormFields = $hook->getValues();\nforeach ($allFormFields as $fieldName => $fieldValue) {\n  if ((!in_array($fieldName,$excluded_fields)) && (!is_array($fieldValue))) {\n    $imploded .= $ffp->getChunk($fieldTpl,array(\n      ''field'' => $fieldName,\n      ''value'' => $fieldValue\n    ));\n  }\n}\n  \n//  generate placeholder\n$hook->setValue($allValuesLabel,$imploded);\nreturn true;', 0, NULL, '', 0, ''),
(13, 0, 0, 'fmzForms', 'Formz helper snippet that generates the form.', 0, 4, 0, '/**\n * The base formz snippet.\n *\n * @package formz\n */\n$fmz = $modx->getService(''formz'', ''Formz'', $modx->getOption(''formz.core_path'', null, $modx->getOption(''core_path'') . ''components/formz/'') . ''model/formz/'', $scriptProperties);\nif (!($fmz instanceof Formz)) return '''';\n\n/**\n * Snippet Config\n */\n$tpl = $modx->getOption(''tpl'', $scriptProperties, ''formTpl'');\n$id = $modx->getOption(''id'', $scriptProperties, null);\n$hookPrefix = $modx->getOption(''hookPrefix'', $scriptProperties, ''fmzForm_'');\n$fieldTpl = $modx->getOption(''fieldTpl'', $scriptProperties, ''fieldTpl'');\n$fieldNaming = ''field'';\n$sortBy = ''Fields.order,Fields.id'';\n$sortDir = ''ASC'';\n\n/* build query */\n$c = $modx->newQuery(''fmzForms'');\n$c->where(array(\n    ''id'' => $id\n));\n\nif (!empty($sortBy)) {\n    $sortBy = explode('','', $sortBy);\n    foreach ($sortBy as $sortField) {\n        $sortMix = explode('':'', $sortField);\n        $sortDirection = !empty($sortMix[1]) ? $sortMix[1] : $sortDir;\n        $sortField = $sortMix[0];\n        $c->sortby($sortField, $sortDirection);\n    }\n}\n\n$form = $modx->getObjectGraph(''fmzForms'', array(\n    ''Fields'' => array(\n        ''Validation'' => array()\n    ),\n), $c);\n\nif (empty($form)) {\n    return false;\n}\n/* iterate through items */\n$formArray = $form->toArray();\n\n$formArray[''action''] = $hookPrefix . $formArray[''method''];\n\n/* store form inside Formz class into variable $form */\n$formIdentifier = ''form'' . $formArray[''id''] . ''-'' . session_id();\n\n$formArrayStore = array(\n    ''formName'' => $formArray[''name''],\n);\n\n/* Add in Empty field for bug that processes snippet calls in chunk */\n$blankField = array(\n    ''id'' => '''',\n    ''form_id'' => '''',\n    ''settings'' => ''{"label":"blank"}'',\n    ''type'' => ''blank'',\n    ''order'' => ''99999'',\n);\n$fmz->getChunk($fieldTpl, $blankField);\n\n$formField = '''';\n$formFieldRaw = array();\n$formFieldValidate = '''';\n$formFieldValidateText = '''';\nforeach ($form->Fields as $field) {\n    // Defaults\n    $validate = array(\n        ''required'' => '''',\n    );\n\n    $fieldArray = $field->toArray();\n    $settings = $modx->fromJSON($fieldArray[''settings'']);\n    $alias = $fieldNaming . $fieldArray[''id''];\n    $settings[''id''] = $alias;\n    $fieldArray = array_merge($fieldArray, $settings);\n    unset($fieldArray[''settings'']);\n\n    // Get Validation type based on field\n    $c = $modx->newQuery(''fmzFormsValidation'');\n    $c->where(array(''field_id'' => $field->id));\n    $c->sortby(''field_id'', ''ASC'');\n    $validation = $modx->getCollection(''fmzFormsValidation'', $c);\n    foreach ($validation as $val) {\n        $valArray = $val->toArray();\n        $valType = $valArray[''type''];\n        $validate[$valType] = !empty($valType) && $valType === ''required'' ? 1 : 0;\n\n        /**\n         * Check and see if this field has a Validation type\n         * If yes then append the alias to the type and if multiple\n         * append them to the same field.\n         */\n        if (!empty($valType)) {\n            if (isset($prevAlias) && $prevAlias === $alias) {\n                $formFieldValidate = substr($formFieldValidate, 0, -1);\n                $formFieldValidate .= '':'' . $valType . '','';\n            } else {\n                $formFieldValidate .= $alias . '':'' . $valType . '','';\n            }\n            $prevAlias = $alias;\n\n            switch ($valType) {\n                case ''email'':\n                    $vType = ''vTextEmailInvalid'';\n                    break;\n                case ''isNumber'':\n                    $vType = ''vTextIsNumber'';\n                    break;\n                default:\n                    $vType = ''vTextRequired'';\n                    break;\n            }\n        }\n\n        if (!empty($valArray[''error_message''])) {\n            $formFieldValidateText .= ''&'' . $alias . ''.'' . $vType . ''=`'' . $valArray[''error_message''] . ''` '';\n        }\n    }\n\n    /* Save copy of Form and field in form variable */\n    $field = array($alias => $fieldArray);\n    $formArrayStore = array_merge($formArrayStore, $field);\n\n    $fieldArray = array_merge($fieldArray, $validate);\n    $fieldId = $fieldArray[''id''];\n    $formFieldRaw[$fieldId] = $fieldId;\n    $formField .= $fmz->getChunk($fieldTpl, $fieldArray);\n}\n$_SESSION[$formIdentifier] = $formArrayStore;\n\n/* Convert Properties to String */\n$formProperties = ! empty($formArray[''properties'']) ? implode('' '', explode(''||'', $formArray[''properties''])) : '''';\n$formArray[''properties''] = $formProperties;\n\n$formArray[''validation''] = $formFieldValidate;\n$formArray[''validationText''] = $formFieldValidateText;\n$formArray[''fields''] = $formField;\n$formArray[''field''] = $formFieldRaw;\n\n/* by default just return output */\nreturn $fmz->getChunk($tpl, $formArray);', 0, NULL, '', 0, ''),
(14, 0, 0, 'fmzForm_database', 'Formz hook to save form to database.', 0, 4, 0, '/**\n * @package formz\n * @var Formz $fmz\n */\n$corePath = $modx->getOption(''formz.core_path'', null, $modx->getOption(''core_path'') . ''components/formz/'');\nrequire_once $corePath . ''/model/formz/formzhooks.class.php'';\n\n$fmz = $modx->getService(''formz'', ''formz'', $corePath . ''model/formz/'');\nif (!($fmz instanceof Formz)) return '''';\n\n$fmzHook = new formzHooks($fmz, $hook);\n$fmzHook->dbSave();\nreturn true;', 0, NULL, '', 0, ''),
(15, 0, 0, 'fmzForm_database_email', 'Formz hook to save form to database and email to recipients address.', 0, 4, 0, '/**\n * @package formz\n * @var Formz $fmz\n */\n$corePath = $modx->getOption(''formz.core_path'', null, $modx->getOption(''core_path'') . ''components/formz/'');\nrequire_once $corePath . ''/model/formz/formzhooks.class.php'';\n\n$fmz = $modx->getService(''formz'', ''formz'', $corePath . ''model/formz/'');\nif (!($fmz instanceof Formz)) return '''';\n\n$fmzHook = new formzHooks($fmz, $hook);\n$fmzHook->dbSaveAndEmail();\nreturn true;', 0, NULL, '', 0, ''),
(16, 0, 0, 'getImageList', '', 0, 5, 0, '/**\n * getImageList\n *\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\n *\n * getImageList is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getImageList is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getImageList; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getImageList\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.4\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2009-2011\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: <ul>[[!getImageList? &tvname=`myTV`&tpl=`@CODE:<li>[[+idx]]<img src="[[+imageURL]]"/><p>[[+imageAlt]]</p></li>`]]</ul>*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(''tvname'', $scriptProperties, '''');\n$tpl = $modx->getOption(''tpl'', $scriptProperties, '''');\n$wrapperTpl = $modx->getOption(''wrapperTpl'', $scriptProperties, '''');\n$limit = $modx->getOption(''limit'', $scriptProperties, ''0'');\n$offset = $modx->getOption(''offset'', $scriptProperties, 0);\n$totalVar = $modx->getOption(''totalVar'', $scriptProperties, ''total'');\n$randomize = $modx->getOption(''randomize'', $scriptProperties, false);\n$preselectLimit = $modx->getOption(''preselectLimit'', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(''where'', $scriptProperties, '''');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(''sort'', $scriptProperties, '''');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toSeparatePlaceholders = $modx->getOption(''toSeparatePlaceholders'', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(''toPlaceholder'', $scriptProperties, false);\n$outputSeparator = $modx->getOption(''outputSeparator'', $scriptProperties, '''');\n$splitSeparator = $modx->getOption(''splitSeparator'', $scriptProperties, '''');\n$placeholdersKeyField = $modx->getOption(''placeholdersKeyField'', $scriptProperties, ''MIGX_id'');\n$toJsonPlaceholder = $modx->getOption(''toJsonPlaceholder'', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(''jsonVarKey'', $scriptProperties, ''migx_outputvalue'');\n$outputvalue = $modx->getOption(''value'', $scriptProperties, '''');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(''docidVarKey'', $scriptProperties, ''migx_docid'');\n$docid = $modx->getOption(''docid'', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(''id'') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(''processTVs'', $scriptProperties, ''1'');\n$reverse = $modx->getOption(''reverse'', $scriptProperties, ''0'');\n$sumFields = $modx->getOption(''sumFields'', $scriptProperties, '''');\n$sumPrefix = $modx->getOption(''sumPrefix'', $scriptProperties, ''summary_'');\n$addfields = $modx->getOption(''addfields'', $scriptProperties, '''');\n$addfields = !empty($addfields) ? explode('','', $addfields) : null;\n//split json into parts\n$splits = $modx->fromJson($modx->getOption(''splits'', $scriptProperties, 0));\n$splitTpl = $modx->getOption(''splitTpl'', $scriptProperties, '''');\n$splitSeparator = $modx->getOption(''splitSeparator'', $scriptProperties, '''');\n\n$modx->setPlaceholder(''docid'', $docid);\n\n$base_path = $modx->getOption(''base_path'', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(''base_url'', null, MODX_BASE_URL);\n\n$migx = $modx->getService(''migx'', ''Migx'', $modx->getOption(''migx.core_path'', null, $modx->getOption(''core_path'') . ''components/migx/'') . ''model/migx/'', $scriptProperties);\nif (!($migx instanceof Migx))\n    return '''';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(''context_key'') : ''web'';\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(''modTemplateVar'', array(''name'' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(''input_properties'');\n        $properties = isset($properties[''formtabs'']) ? $properties : $tv->getProperties();\n\n        $migx->config[''configs''] = $modx->getOption(''configs'', $properties, '''');\n        if (!empty($migx->config[''configs''])) {\n            $migx->loadConfigs();\n            // get tabs from file or migx-config-table\n            $formtabs = $migx->getTabs();\n        }\n        if (empty($formtabs) && isset($properties[''formtabs''])) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[''formtabs'']);\n        }\n\n        if (!empty($properties[''basePath''])) {\n            if ($properties[''autoResourceFolders''] == ''true'') {\n                $scriptProperties[''base_path''] = $base_path . $properties[''basePath''] . $docid . ''/'';\n                $scriptProperties[''base_url''] = $base_url . $properties[''basePath''] . $docid . ''/'';\n            } else {\n                $scriptProperties[''base_path''] = $base_path . $properties[''base_path''];\n                $scriptProperties[''base_url''] = $base_url . $properties[''basePath''];\n            }\n        }\n        if ($jsonVarKey == ''migx_outputvalue'' && !empty($properties[''jsonvarkey''])) {\n            $jsonVarKey = $properties[''jsonvarkey''];\n            $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n        }\n        $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        $migx->source = $tv->getSource($migx->working_context, false);\n    }\n\n\n}\n\nif (empty($outputvalue)) {\n    return '''';\n}\n\n//echo $outputvalue.''<br/><br/>'';\n\n\n$items = $modx->fromJSON($outputvalue);\n\n// where filter\nif (is_array($where) && count($where) > 0) {\n    $items = $migx->filterItems($where, $items);\n}\n$modx->setPlaceholder($totalVar, count($items));\n\n\nif (!empty($reverse)) {\n    $items = array_reverse($items);\n}\n\n\n// sort items\nif (is_array($sort) && count($sort) > 0) {\n    $items = $migx->sortDbResult($items, $sort);\n}\n\n$summaries = array();\n$output = '''';\n$count = count($items);\n\nif ($count > 0) {\n    $items = $offset > 0 ? array_slice($items, $offset) : $items;\n\n    $limit = $limit == 0 || $limit > $count ? $count : $limit;\n    $preselectLimit = $preselectLimit > $count ? $count : $preselectLimit;\n    //preselect important items\n    $preitems = array();\n    if ($randomize && $preselectLimit > 0) {\n        for ($i = 0; $i < $preselectLimit; $i++) {\n            $preitems[] = $items[$i];\n            unset($items[$i]);\n        }\n        $limit = $limit - count($preitems);\n    }\n\n    //shuffle items\n    if ($randomize) {\n        shuffle($items);\n    }\n\n    //limit items\n    $tempitems = array();\n    for ($i = 0; $i < $limit; $i++) {\n        $tempitems[] = $items[$i];\n    }\n    $items = $tempitems;\n\n    //add preselected items and schuffle again\n    if ($randomize && $preselectLimit > 0) {\n        $items = array_merge($preitems, $items);\n        shuffle($items);\n    }\n\n    $properties = array();\n    foreach ($scriptProperties as $property => $value) {\n        $properties[''property.'' . $property] = $value;\n    }\n\n    $idx = 0;\n    $output = array();\n    $template = array();\n    $count = count($items);\n\n    foreach ($items as $key => $item) {\n        $formname = isset($item[''MIGX_formname'']) ? $item[''MIGX_formname''] . ''_'' : '''';\n        $fields = array();\n        foreach ($item as $field => $value) {\n            if (is_array($value)) {\n                if (is_array($value[0])) {\n                    //nested array - convert to json\n                    $value = $modx->toJson($value);\n                } else {\n                    $value = implode(''||'', $value); //handle arrays (checkboxes, multiselects)\n                }\n            }\n\n\n            $inputTVkey = $formname . $field;\n            if ($processTVs && isset($inputTvs[$inputTVkey])) {\n                if (isset($inputTvs[$inputTVkey][''inputTV'']) && $tv = $modx->getObject(''modTemplateVar'', array(''name'' => $inputTvs[$inputTVkey][''inputTV'']))) {\n\n                } else {\n                    $tv = $modx->newObject(''modTemplateVar'');\n                    $tv->set(''type'', $inputTvs[$inputTVkey][''inputTVtype'']);\n                }\n                $inputTV = $inputTvs[$inputTVkey];\n\n                $mTypes = $modx->getOption(''manipulatable_url_tv_output_types'', null, ''image,file'');\n                //don''t manipulate any urls here\n                $modx->setOption(''manipulatable_url_tv_output_types'', '''');\n                $tv->set(''default_text'', $value);\n                $value = $tv->renderOutput($docid);\n                //set option back\n                $modx->setOption(''manipulatable_url_tv_output_types'', $mTypes);\n                //now manipulate urls\n                if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                    $mTypes = explode('','', $mTypes);\n                    if (!empty($value) && in_array($tv->get(''type''), $mTypes)) {\n                        //$value = $mediasource->prepareOutputUrl($value);\n                        $value = str_replace(''/./'', ''/'', $mediasource->prepareOutputUrl($value));\n                    }\n                }\n\n            }\n            $fields[$field] = $value;\n\n        }\n\n        if (!empty($addfields)) {\n            foreach ($addfields as $addfield) {\n                $addfield = explode('':'', $addfield);\n                $addname = $addfield[0];\n                $adddefault = isset($addfield[1]) ? $addfield[1] : '''';\n                $fields[$addname] = $adddefault;\n            }\n        }\n\n        if (!empty($sumFields)) {\n            $sumFields = is_array($sumFields) ? $sumFields : explode('','', $sumFields);\n            foreach ($sumFields as $sumField) {\n                if (isset($fields[$sumField])) {\n                    $summaries[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField] + $fields[$sumField];\n                    $fields[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField];\n                }\n            }\n        }\n\n\n        if ($toJsonPlaceholder) {\n            $output[] = $fields;\n        } else {\n            $fields[''_alt''] = $idx % 2;\n            $idx++;\n            $fields[''_first''] = $idx == 1 ? true : '''';\n            $fields[''_last''] = $idx == $limit ? true : '''';\n            $fields[''idx''] = $idx;\n            $rowtpl = '''';\n            //get changing tpls from field\n            if (substr($tpl, 0, 7) == "@FIELD:") {\n                $tplField = substr($tpl, 7);\n                $rowtpl = $fields[$tplField];\n            }\n\n            if ($fields[''_first''] && !empty($tplFirst)) {\n                $rowtpl = $tplFirst;\n            }\n            if ($fields[''_last''] && empty($rowtpl) && !empty($tplLast)) {\n                $rowtpl = $tplLast;\n            }\n            $tplidx = ''tpl_'' . $idx;\n            if (empty($rowtpl) && !empty($$tplidx)) {\n                $rowtpl = $$tplidx;\n            }\n            if ($idx > 1 && empty($rowtpl)) {\n                $divisors = $migx->getDivisors($idx);\n                if (!empty($divisors)) {\n                    foreach ($divisors as $divisor) {\n                        $tplnth = ''tpl_n'' . $divisor;\n                        if (!empty($$tplnth)) {\n                            $rowtpl = $$tplnth;\n                            if (!empty($rowtpl)) {\n                                break;\n                            }\n                        }\n                    }\n                }\n            }\n\n            if ($count == 1 && isset($tpl_oneresult)) {\n                $rowtpl = $tpl_oneresult;\n            }\n\n            $fields = array_merge($fields, $properties);\n\n            if (!empty($rowtpl)) {\n                $template = $migx->getTemplate($tpl, $template);\n                $fields[''_tpl''] = $template[$tpl];\n            } else {\n                $rowtpl = $tpl;\n\n            }\n            $template = $migx->getTemplate($rowtpl, $template);\n\n\n            if ($template[$rowtpl]) {\n                $chunk = $modx->newObject(''modChunk'');\n                $chunk->setCacheable(false);\n                $chunk->setContent($template[$rowtpl]);\n\n\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n                } else {\n                    $output[] = $chunk->process($fields);\n                }\n            } else {\n                if (!empty($placeholdersKeyField)) {\n                    $output[$fields[$placeholdersKeyField]] = ''<pre>'' . print_r($fields, 1) . ''</pre>'';\n                } else {\n                    $output[] = ''<pre>'' . print_r($fields, 1) . ''</pre>'';\n                }\n            }\n        }\n\n\n    }\n}\n\nif (count($summaries) > 0) {\n    $modx->toPlaceholders($summaries);\n}\n\n\nif ($toJsonPlaceholder) {\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return '''';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return '''';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(''output''=>implode($outputSeparator, $output)));\nelse \n*/\n\nif ($count > 0 && $splits > 0) {\n    $size = ceil($count / $splits);\n    $chunks = array_chunk($output, $size);\n    $output = array();\n    foreach ($chunks as $chunk) {\n        $o = implode($outputSeparator, $chunk);\n        $output[] = $modx->getChunk($splitTpl, array(''output'' => $o));\n    }\n    $outputSeparator = $splitSeparator;\n}\n\nif (is_array($output)) {\n    $o = implode($outputSeparator, $output);\n} else {\n    $o = $output;\n}\n\nif (!empty($o) && !empty($wrapperTpl)) {\n    $template = $migx->getTemplate($wrapperTpl);\n    if ($template[$wrapperTpl]) {\n        $chunk = $modx->newObject(''modChunk'');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$wrapperTpl]);\n        $properties[''output''] = $o;\n        $o = $chunk->process($properties);        \n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return '''';\n}\n\nreturn $o;', 0, 'a:0:{}', '', 0, ''),
(17, 0, 0, 'migxGetRelations', '', 0, 5, 0, '$id = $modx->getOption(''id'', $scriptProperties, $modx->resource->get(''id''));\n$toPlaceholder = $modx->getOption(''toPlaceholder'', $scriptProperties, '''');\n$element = $modx->getOption(''element'', $scriptProperties, ''getResources'');\n$outputSeparator = $modx->getOption(''outputSeparator'', $scriptProperties, '','');\n$sourceWhere = $modx->getOption(''sourceWhere'', $scriptProperties, '''');\n$ignoreRelationIfEmpty = $modx->getOption(''ignoreRelationIfEmpty'', $scriptProperties, false);\n$inheritFromParents = $modx->getOption(''inheritFromParents'', $scriptProperties, false);\n$parentIDs = $inheritFromParents ? array_merge(array($id), $modx->getParentIds($id)) : array($id);\n\n$packageName = ''resourcerelations'';\n\n$packagepath = $modx->getOption(''core_path'') . ''components/'' . $packageName . ''/'';\n$modelpath = $packagepath . ''model/'';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$classname = ''rrResourceRelation'';\n$output = '''';\n\nforeach ($parentIDs as $id) {\n    if (!empty($id)) {\n        $output = '''';\n                \n        $c = $modx->newQuery($classname, array(''target_id'' => $id, ''published'' => ''1''));\n        $c->select($modx->getSelectColumns($classname, $classname));\n\n        if (!empty($sourceWhere)) {\n            $sourceWhere_ar = $modx->fromJson($sourceWhere);\n            if (is_array($sourceWhere_ar)) {\n                $where = array();\n                foreach ($sourceWhere_ar as $key => $value) {\n                    $where[''Source.'' . $key] = $value;\n                }\n                $joinclass = ''modResource'';\n                $joinalias = ''Source'';\n                $selectfields = ''id'';\n                $selectfields = !empty($selectfields) ? explode('','', $selectfields) : null;\n                $c->leftjoin($joinclass, $joinalias);\n                $c->select($modx->getSelectColumns($joinclass, $joinalias, $joinalias . ''_'', $selectfields));\n                $c->where($where);\n            }\n        }\n\n        //$c->prepare(); echo $c->toSql();\n        if ($c->prepare() && $c->stmt->execute()) {\n            $collection = $c->stmt->fetchAll(PDO::FETCH_ASSOC);\n        }\n        \n        foreach ($collection as $row) {\n            $ids[] = $row[''source_id''];\n        }\n        $output = implode($outputSeparator, $ids);\n    }\n    if (!empty($output)){\n        break;\n    }\n}\n\n\nif (!empty($element)) {\n    if (empty($output) && $ignoreRelationIfEmpty) {\n        return $modx->runSnippet($element, $scriptProperties);\n    } else {\n        $scriptProperties[''resources''] = $output;\n        $scriptProperties[''parents''] = ''9999999'';\n        return $modx->runSnippet($element, $scriptProperties);\n    }\n\n\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return '''';\n}\n\nreturn $output;', 0, '', '', 0, ''),
(18, 0, 0, 'migx', '', 0, 5, 0, '$tvname = $modx->getOption(''tvname'', $scriptProperties, '''');\n$tpl = $modx->getOption(''tpl'', $scriptProperties, '''');\n$limit = $modx->getOption(''limit'', $scriptProperties, ''0'');\n$offset = $modx->getOption(''offset'', $scriptProperties, 0);\n$totalVar = $modx->getOption(''totalVar'', $scriptProperties, ''total'');\n$randomize = $modx->getOption(''randomize'', $scriptProperties, false);\n$preselectLimit = $modx->getOption(''preselectLimit'', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(''where'', $scriptProperties, '''');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sortConfig = $modx->getOption(''sortConfig'', $scriptProperties, '''');\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\n$configs = $modx->getOption(''configs'', $scriptProperties, '''');\n$configs = !empty($configs) ? explode('','',$configs):array();\n$toSeparatePlaceholders = $modx->getOption(''toSeparatePlaceholders'', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(''toPlaceholder'', $scriptProperties, false);\n$outputSeparator = $modx->getOption(''outputSeparator'', $scriptProperties, '''');\n//$placeholdersKeyField = $modx->getOption(''placeholdersKeyField'', $scriptProperties, ''MIGX_id'');\n$placeholdersKeyField = $modx->getOption(''placeholdersKeyField'', $scriptProperties, ''id'');\n$toJsonPlaceholder = $modx->getOption(''toJsonPlaceholder'', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(''jsonVarKey'', $scriptProperties, ''migx_outputvalue'');\n$outputvalue = $modx->getOption(''value'', $scriptProperties, '''');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(''docidVarKey'', $scriptProperties, ''migx_docid'');\n$docid = $modx->getOption(''docid'', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(''id'') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(''processTVs'', $scriptProperties, ''1'');\n\n$base_path = $modx->getOption(''base_path'', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(''base_url'', null, MODX_BASE_URL);\n\n$migx = $modx->getService(''migx'', ''Migx'', $modx->getOption(''migx.core_path'', null, $modx->getOption(''core_path'') . ''components/migx/'') . ''model/migx/'', $scriptProperties);\nif (!($migx instanceof Migx))\n    return '''';\n//$modx->migx = &$migx;\n$defaultcontext = ''web'';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(''context_key'') : $defaultcontext;\n\nif (!empty($tvname))\n{\n    if ($tv = $modx->getObject(''modTemplateVar'', array(''name'' => $tvname)))\n    {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(''input_properties'');\n        $properties = isset($properties[''configs'']) ? $properties : $tv->getProperties();\n        $cfgs = $modx->getOption(''configs'',$properties,'''');\n        if (!empty($cfgs)){\n            $cfgs = explode('','',$cfgs);\n            $configs = array_merge($configs,$cfgs);\n           \n        }\n        \n    }\n}\n\n\n\n//$migx->config[''configs''] = implode('','',$configs);\n$migx->loadConfigs(false,true,array(''configs''=>implode('','',$configs)));\n$migx->customconfigs = array_merge($migx->customconfigs,$scriptProperties);\n\n\n\n// get tabs from file or migx-config-table\n$formtabs = $migx->getTabs();\nif (empty($formtabs))\n{\n    //try to get formtabs and its fields from properties\n    $formtabs = $modx->fromJSON($properties[''formtabs'']);\n}\n\nif ($jsonVarKey == ''migx_outputvalue'' && !empty($properties[''jsonvarkey'']))\n{\n    $jsonVarKey = $properties[''jsonvarkey''];\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n}\n\n$outputvalue = $tv && empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n/*\n*   get inputTvs \n*/\n$inputTvs = array();\nif (is_array($formtabs))\n{\n\n    //multiple different Forms\n    // Note: use same field-names and inputTVs in all forms\n    $inputTvs = $migx->extractInputTvs($formtabs);\n}\n\nif ($tv)\n{\n    $migx->source = $tv->getSource($migx->working_context, false);\n}\n\n//$task = $modx->migx->getTask();\n$filename = ''getlist.php'';\n$processorspath = $migx->config[''processorsPath''] . ''mgr/'';\n$filenames = array();\n$scriptProperties[''start''] = $modx->getOption(''offset'', $scriptProperties, 0);\nif ($processor_file = $migx->findProcessor($processorspath, $filename, $filenames))\n{\n    include ($processor_file);\n    //todo: add getlist-processor for default-MIGX-TV\n}\n\n$items = isset($rows) && is_array($rows) ? $rows : array();\n$modx->setPlaceholder($totalVar, isset($count) ? $count : 0);\n\n$properties = array();\nforeach ($scriptProperties as $property => $value)\n{\n    $properties[''property.'' . $property] = $value;\n}\n\n$idx = 0;\n$output = array();\nforeach ($items as $key => $item)\n{\n\n    $fields = array();\n    foreach ($item as $field => $value)\n    {\n        $value = is_array($value) ? implode(''||'', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field]))\n        {\n            if ($tv = $modx->getObject(''modTemplateVar'', array(''name'' => $inputTvs[$field][''inputTV''])))\n            {\n\n            } else\n            {\n                $tv = $modx->newObject(''modTemplateVar'');\n                $tv->set(''type'', $inputTvs[$field][''inputTVtype'']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(''manipulatable_url_tv_output_types'', null, ''image,file'');\n            //don''t manipulate any urls here\n            $modx->setOption(''manipulatable_url_tv_output_types'', '''');\n            $tv->set(''default_text'', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(''manipulatable_url_tv_output_types'', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv))\n            {\n                $mTypes = explode('','', $mTypes);\n                if (!empty($value) && in_array($tv->get(''type''), $mTypes))\n                {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(''/./'', ''/'', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n    if ($toJsonPlaceholder)\n    {\n        $output[] = $fields;\n    } else\n    {\n        $fields[''_alt''] = $idx % 2;\n        $idx++;\n        $fields[''_first''] = $idx == 1 ? true : '''';\n        $fields[''_last''] = $idx == $limit ? true : '''';\n        $fields[''idx''] = $idx;\n        $rowtpl = $tpl;\n        //get changing tpls from field\n        if (substr($tpl, 0, 7) == "@FIELD:")\n        {\n            $tplField = substr($tpl, 7);\n            $rowtpl = $fields[$tplField];\n        }\n\n        if (!isset($template[$rowtpl]))\n        {\n            if (substr($rowtpl, 0, 6) == "@FILE:")\n            {\n                $template[$rowtpl] = file_get_contents($modx->config[''base_path''] . substr($rowtpl, 6));\n            } elseif (substr($rowtpl, 0, 6) == "@CODE:")\n            {\n                $template[$rowtpl] = substr($tpl, 6);\n            } elseif ($chunk = $modx->getObject(''modChunk'', array(''name'' => $rowtpl), true))\n            {\n                $template[$rowtpl] = $chunk->getContent();\n            } else\n            {\n                $template[$rowtpl] = false;\n            }\n        }\n\n        $fields = array_merge($fields, $properties);\n\n        if ($template[$rowtpl])\n        {\n            $chunk = $modx->newObject(''modChunk'');\n            $chunk->setCacheable(false);\n            $chunk->setContent($template[$rowtpl]);\n            if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField]))\n            {\n                $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n            } else\n            {\n                $output[] = $chunk->process($fields);\n            }\n        } else\n        {\n            if (!empty($placeholdersKeyField))\n            {\n                $output[$fields[$placeholdersKeyField]] = ''<pre>'' . print_r($fields, 1) . ''</pre>'';\n            } else\n            {\n                $output[] = ''<pre>'' . print_r($fields, 1) . ''</pre>'';\n            }\n        }\n    }\n\n\n}\n\n\nif ($toJsonPlaceholder)\n{\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return '''';\n}\n\nif (!empty($toSeparatePlaceholders))\n{\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return '''';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(''output''=>implode($outputSeparator, $output)));\nelse \n*/\nif (is_array($output))\n{\n    $o = implode($outputSeparator, $output);\n} else\n{\n    $o = $output;\n}\n\nif (!empty($toPlaceholder))\n{\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return '''';\n}\n\nreturn $o;', 0, '', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(19, 0, 0, 'migxLoopCollection', '', 0, 5, 0, '$tpl = $modx->getOption(''tpl'', $scriptProperties, '''');\n$wrapperTpl = $modx->getOption(''wrapperTpl'', $scriptProperties, '''');\n$limit = $modx->getOption(''limit'', $scriptProperties, ''0'');\n$offset = $modx->getOption(''offset'', $scriptProperties, 0);\n$totalVar = $modx->getOption(''totalVar'', $scriptProperties, ''total'');\n\n$where = $modx->getOption(''where'', $scriptProperties, '''');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$queries = $modx->getOption(''queries'', $scriptProperties, '''');\n$queries = !empty($queries) ? $modx->fromJSON($queries) : array();\n$sortConfig = $modx->getOption(''sortConfig'', $scriptProperties, '''');\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\n$configs = $modx->getOption(''configs'', $scriptProperties, '''');\n$configs = explode('','', $configs);\n$toSeparatePlaceholders = $modx->getOption(''toSeparatePlaceholders'', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(''toPlaceholder'', $scriptProperties, false);\n$outputSeparator = $modx->getOption(''outputSeparator'', $scriptProperties, '''');\n//$placeholdersKeyField = $modx->getOption(''placeholdersKeyField'', $scriptProperties, ''MIGX_id'');\n$placeholdersKeyField = $modx->getOption(''placeholdersKeyField'', $scriptProperties, ''id'');\n$toJsonPlaceholder = $modx->getOption(''toJsonPlaceholder'', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(''jsonVarKey'', $scriptProperties, ''migx_outputvalue'');\n$prefix = isset($scriptProperties[''prefix'']) ? $scriptProperties[''prefix''] : null;\n\n$packageName = $modx->getOption(''packageName'', $scriptProperties, ''''); \n$joins = $modx->getOption(''joins'', $scriptProperties, '''');\n$joins = !empty($joins) ? $modx->fromJson($joins) : false;\n\n$selectfields = $modx->getOption(''selectfields'', $scriptProperties, '''');\n$selectfields = !empty($selectfields) ? explode('','', $selectfields) : null;\n\n$addfields = $modx->getOption(''addfields'', $scriptProperties, '''');\n$addfields = !empty($addfields) ? explode('','', $addfields) : null;\n\n$debug = $modx->getOption(''debug'', $scriptProperties, false);\n\n$packagepath = $modx->getOption(''core_path'') . ''components/'' . $packageName . ''/'';\n$modelpath = $packagepath . ''model/'';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$classname = $scriptProperties[''classname''];\n\n$base_path = $modx->getOption(''base_path'', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(''base_url'', null, MODX_BASE_URL);\n\n$migx = $modx->getService(''migx'', ''Migx'', $modx->getOption(''migx.core_path'', null, $modx->getOption(''core_path'') . ''components/migx/'') . ''model/migx/'', $scriptProperties);\nif (!($migx instanceof Migx))\n    return '''';\n//$modx->migx = &$migx;\n$defaultcontext = ''web'';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(''context_key'') : $defaultcontext;\n\n$properties = array();\nforeach ($scriptProperties as $property => $value) {\n    $properties[''property.'' . $property] = $value;\n}\n\n$idx = 0;\n$output = array();\n$c = $modx->newQuery($classname);\n$c->select($modx->getSelectColumns($classname, $classname, '''', $selectfields));\n\nif ($joins) {\n    $migx->prepareJoins($classname, $joins, $c);\n}\n\nif (!empty($where)) {\n    $c->where($where);\n}\n\nif (!empty($queries)) {\n    foreach ($queries as $key => $query) {\n        $c->where($query, $key);\n    }\n\n}\n\nif (!empty($groupby)) {\n    $c->groupby($groupby);\n}\n\n//set "total" placeholder for getPage\n$total = $modx->getCount($classname, $c);\n$modx->setPlaceholder($totalVar, $total);\n\nif (is_array($sortConfig)) {\n    foreach ($sortConfig as $sort) {\n        $sortby = $sort[''sortby''];\n        $sortdir = isset($sort[''sortdir'']) ? $sort[''sortdir''] : ''ASC'';\n        $c->sortby($sortby, $sortdir);\n    }\n}\n\n//&limit, &offset\nif (!empty($limit)) {\n    $c->limit($limit, $offset);\n}\n\nif ($debug){\n  $c->prepare();echo $c->toSql();\n}\n\n$template = array();\n\nif ($collection = $modx->getCollection($classname, $c)) {\n    foreach ($collection as $object) {\n        $fields = $object->toArray('''', false, true);\n        \n        if (!empty($addfields)){\n            foreach ($addfields as $addfield){\n                $addfield = explode('':'',$addfield);\n                $addname = $addfield[0];\n                $adddefault = isset($addfield[1]) ? $addfield[1] : '''';\n                $fields[$addname] = $adddefault; \n            }\n        }\n        \n        if ($toJsonPlaceholder) {\n            $output[] = $fields;\n        } else {\n            $fields[''_alt''] = $idx % 2;\n            $idx++;\n            $fields[''_first''] = $idx == 1 ? true : '''';\n            $fields[''_last''] = $idx == $limit ? true : '''';\n            $fields[''idx''] = $idx;\n            $rowtpl = '''';\n            //get changing tpls from field\n            if (substr($tpl, 0, 7) == "@FIELD:") {\n                $tplField = substr($tpl, 7);\n                $rowtpl = $fields[$tplField];\n            }\n\n            if ($fields[''_first''] && !empty($tplFirst)) {\n                $rowtpl = $tplFirst;\n            }\n            if ($fields[''_last''] && empty($rowtpl) && !empty($tplLast)) {\n                $rowtpl = $tplLast;\n            }\n            $tplidx = ''tpl_'' . $idx;\n            if (empty($rowtpl) && !empty($$tplidx)) {\n                $rowtpl = $$tplidx;\n            }\n            if ($idx > 1 && empty($rowtpl)) {\n                $divisors = $migx->getDivisors($idx);\n                if (!empty($divisors)) {\n                    foreach ($divisors as $divisor) {\n                        $tplnth = ''tpl_n'' . $divisor;\n                        if (!empty($$tplnth)) {\n                            $rowtpl = $$tplnth;\n                            if (!empty($rowtpl)) {\n                                break;\n                            }\n                        }\n                    }\n                }\n            }\n\n            $fields = array_merge($fields, $properties);\n\n            if (!empty($rowtpl)) {\n                $template = $migx->getTemplate($tpl, $template);\n                $fields[''_tpl''] = $template[$tpl];\n            } else {\n                $rowtpl = $tpl;\n\n            }\n            $template = $migx->getTemplate($rowtpl, $template);\n\n\n            if ($template[$rowtpl]) {\n                $chunk = $modx->newObject(''modChunk'');\n                $chunk->setCacheable(false);\n                $chunk->setContent($template[$rowtpl]);\n\n\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n                } else {\n                    $output[] = $chunk->process($fields);\n                }\n            } else {\n                if (!empty($placeholdersKeyField)) {\n                    $output[$fields[$placeholdersKeyField]] = ''<pre>'' . print_r($fields, 1) . ''</pre>'';\n                } else {\n                    $output[] = ''<pre>'' . print_r($fields, 1) . ''</pre>'';\n                }\n            }\n        }\n\n\n    }\n}\n\nif ($toJsonPlaceholder) {\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return '''';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return '''';\n}\n\nif (is_array($output)) {\n    $o = implode($outputSeparator, $output);\n} else {\n    $o = $output;\n}\n\nif (!empty($o) && !empty($wrapperTpl)) {\n    $template = $migx->getTemplate($wrapperTpl);\n    if ($template[$wrapperTpl]) {\n        $chunk = $modx->newObject(''modChunk'');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$wrapperTpl]);\n        $properties[''output''] = $o;\n        $o = $chunk->process($properties);\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return '''';\n}\n\nreturn $o;', 0, '', '', 0, ''),
(20, 0, 0, 'migxResourceMediaPath', '', 0, 5, 0, '/**\n * @name migxResourceMediaPath\n * @description Dynamically calculates the upload path for a given resource\n * \n * This Snippet is meant to dynamically calculate your baseBath attribute\n * for custom Media Sources.  This is useful if you wish to shepard uploaded\n * images to a folder dedicated to a given resource.  E.g. page 123 would \n * have its own images that page 456 could not reference.\n *\n * USAGE:\n * [[migxResourceMediaPath? &pathTpl=`assets/businesses/{id}/`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}` &breadcrumbdepth=`2`]]\n *\n * PARAMETERS\n * &pathTpl string formatting string specifying the file path. \n *		Relative to MODX base_path\n *		Available placeholders: {id}, {pagetitle}, {parent}\n * &docid (optional) integer page id\n * &createfolder (optional) boolean whether or not to create\n */\n$pathTpl = $modx->getOption(''pathTpl'', $scriptProperties, '''');\n$docid = $modx->getOption(''docid'', $scriptProperties, '''');\n$createfolder = $modx->getOption(''createFolder'', $scriptProperties, false);\n$path = '''';\n$createpath = false;\n\nif (empty($pathTpl)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, ''[migxResourceMediaPath]: pathTpl not specified.'');\n    return;\n}\n\nif (empty($docid) && $modx->getPlaceholder(''docid'')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(''docid'');\n}\nif (empty($docid)) {\n\n    //on frontend\n    if (is_object($modx->resource)) {\n        $docid = $modx->resource->get(''id'');\n    }\n    //on backend\n    else {\n        $createpath = $createfolder;\n        // We do this to read the &id param from an Ajax request\n        $parsedUrl = parse_url($_SERVER[''HTTP_REFERER'']);\n        parse_str($parsedUrl[''query''], $parsedQuery);\n\n        if (isset($parsedQuery[''amp;id''])) {\n            $docid = (int)$parsedQuery[''amp;id''];\n        } elseif (isset($parsedQuery[''id''])) {\n            $docid = (int)$parsedQuery[''id''];\n        }\n    }\n}\n\nif (empty($docid)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, ''[migxResourceMediaPath]: docid could not be determined.'');\n    return;\n}\n\nif ($resource = $modx->getObject(''modResource'', $docid)) {\n    $path = $pathTpl;\n    $ultimateParent = '''';\n    if (strstr($path, ''{breadcrumb}'') || strstr($path, ''{ultimateparent}'')) {\n        $parentids = $modx->getParentIds($docid);\n        $breadcrumbdepth = $modx->getOption(''breadcrumbdepth'', $scriptProperties, count($parentids));\n        $breadcrumbdepth = $breadcrumbdepth > count($parentids) ? count($parentids) : $breadcrumbdepth;\n        if (count($parentids) > 1) {\n            $parentids = array_reverse($parentids);\n            $parentids[] = $docid;\n            $ultimateParent = $parentids[1];\n        } else {\n            $ultimateParent = $docid;\n            $parentids = array();\n            $parentids[] = $docid;\n        }\n    }\n\n    if (strstr($path, ''{breadcrumb}'')) {\n        $breadcrumbpath = '''';\n        for ($i = 1; $i <= $breadcrumbdepth; $i++) {\n            $breadcrumbpath .= $parentids[$i] . ''/'';\n        }\n        $path = str_replace(''{breadcrumb}'', $breadcrumbpath, $path);\n\n    } else {\n        $path = str_replace(''{id}'', $docid, $path);\n        $path = str_replace(''{pagetitle}'', $resource->get(''pagetitle''), $path);\n        $path = str_replace(''{alias}'', $resource->get(''alias''), $path);\n        $path = str_replace(''{parent}'', $resource->get(''parent''), $path);\n        $path = str_replace(''{ultimateparent}'', $ultimateParent, $path);\n        if ($template = $resource->getOne(''Template'')){\n            $path = str_replace(''{templatename}'', $template->get(''templatename''), $path);\n        }\n    }\n\n    $fullpath = $modx->getOption(''base_path'') . $path;\n\n    if ($createpath && !file_exists($fullpath)) {\n        if (!@mkdir($fullpath, 0755, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(''[migxResourceMediaPath]: could not create directory %s).'', $fullpath));\n        }\n    }\n\n    return $path;\n} else {\n    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(''[migxResourceMediaPath]: resource not found (page id %s).'', $docid));\n    return;\n}\n\n/*EOF*/', 0, '', '', 0, ''),
(21, 0, 0, 'migxImageUpload', '', 0, 5, 0, 'return include $modx->getOption(''core_path'').''components/migx/model/imageupload/imageupload.php'';', 0, '', '', 0, ''),
(22, 0, 0, 'migxChunklistToJson', '', 0, 5, 0, '$category = $modx->getOption(''category'', $scriptProperties, '''');\n$format = $modx->getOption(''format'', $scriptProperties, ''json'');\n\n$classname = ''modChunk'';\n$rows = array();\n$output = '''';\n\n$c = $modx->newQuery($classname);\n$c->select($modx->getSelectColumns($classname, $classname, '''', array(''id'', ''name'')));\n$c->sortby(''name'');\n\nif (!empty($category)) {\n    $c->where(array(''category'' => $category));\n}\n//$c->prepare();echo $c->toSql();\nif ($collection = $modx->getCollection($classname, $c)) {\n    $i = 0;\n\n    switch ($format) {\n        case ''json'':\n            foreach ($collection as $object) {\n                $row[''MIGX_id''] = (string )$i;\n                $row[''name''] = $object->get(''name'');\n                $row[''selected''] = ''0'';\n                $rows[] = $row;\n                $i++;\n            }\n            $output = $modx->toJson($rows);\n            break;\n        \n        case ''optionlist'':\n            foreach ($collection as $object) {\n                $rows[] = $object->get(''name'');\n                $i++;\n            }\n            $output = implode(''||'',$rows);      \n        break;\n            \n    }\n\n\n}\n\nreturn $output;', 0, '', '', 0, ''),
(23, 0, 0, 'migxSwitchDetailChunk', '', 0, 5, 0, '//[[migxSwitchDetailChunk? &detailChunk=`detailChunk` &listingChunk=`listingChunk`]]\n\n\n$properties[''migx_id''] = $modx->getOption(''migx_id'',$_GET,'''');\n\nif (!empty($properties[''migx_id''])){\n    $output = $modx->getChunk($detailChunk,$properties);\n}\nelse{\n    $output = $modx->getChunk($listingChunk);\n}\n\nreturn $output;', 0, '', '', 0, ''),
(24, 0, 0, 'getSwitchColumnCol', '', 0, 5, 0, '$scriptProperties = $_REQUEST;\n$col = '''';\n// special actions, for example the showSelector - action\n$tempParams = $modx->getOption(''tempParams'', $scriptProperties, '''');\n\nif (!empty($tempParams)) {\n    $tempParams = $modx->fromJson($tempParams);\n    $col = $modx->getOption(''col'', $tempParams, '''');\n}\n\nreturn $col;', 0, '', '', 0, ''),
(25, 0, 0, 'getDayliMIGXrecord', '', 0, 5, 0, '/**\n * getDayliMIGXrecord\n *\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\n *\n * getDayliMIGXrecord is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getDayliMIGXrecord is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getDayliMIGXrecord; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getDayliMIGXrecord\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2012\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: [[!getDayliMIGXrecord? &tvname=`myTV`&tpl=`@CODE:<img src="[[+image]]"/>` &randomize=`1`]]*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(''tvname'', $scriptProperties, '''');\n$tpl = $modx->getOption(''tpl'', $scriptProperties, '''');\n$randomize = $modx->getOption(''randomize'', $scriptProperties, false);\n$where = $modx->getOption(''where'', $scriptProperties, '''');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(''sort'', $scriptProperties, '''');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toPlaceholder = $modx->getOption(''toPlaceholder'', $scriptProperties, false);\n$docid = $modx->getOption(''docid'', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(''id'') : 1));\n$processTVs = $modx->getOption(''processTVs'', $scriptProperties, ''1'');\n\n$migx = $modx->getService(''migx'', ''Migx'', $modx->getOption(''migx.core_path'', null, $modx->getOption(''core_path'') . ''components/migx/'') . ''model/migx/'', $scriptProperties);\nif (!($migx instanceof Migx))\n    return '''';\n$migx->working_context = $modx->resource->get(''context_key'');\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(''modTemplateVar'', array(''name'' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(''input_properties'');\n        $properties = isset($properties[''formtabs'']) ? $properties : $tv->getProperties();\n\n        $migx->config[''configs''] = $properties[''configs''];\n        $migx->loadConfigs();\n        // get tabs from file or migx-config-table\n        $formtabs = $migx->getTabs();\n        if (empty($formtabs)) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[''formtabs'']);\n        }\n\n        //$tv->setCacheable(false);\n        //$outputvalue = $tv->renderOutput($docid);\n        \n        $tvresource = $modx->getObject(''modTemplateVarResource'', array(\n            ''tmplvarid'' => $tv->get(''id''),\n            ''contentid'' => $docid,\n            ));\n\n\n        $outputvalue = $tvresource->get(''value'');\n        \n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        $migx->source = $tv->getSource($migx->working_context, false);\n\n        if (empty($outputvalue)) {\n            return '''';\n        }\n\n        $items = $modx->fromJSON($outputvalue);\n\n\n        //is there an active item for the current date?\n        $activedate = $modx->getOption(''activedate'', $scriptProperties, strftime(''%Y/%m/%d''));\n        //$activedate = $modx->getOption(''activedate'', $_GET, strftime(''%Y/%m/%d''));\n        $activewhere = array();\n        $activewhere[''activedate''] = $activedate;\n        $activewhere[''activated''] = ''1'';\n        $activeitems = $migx->filterItems($activewhere, $items);\n\n        if (count($activeitems) == 0) {\n\n            $activeitems = array();\n            // where filter\n            if (is_array($where) && count($where) > 0) {\n                $items = $migx->filterItems($where, $items);\n            }\n\n            $tempitems = array();\n            $count = count($items);\n            $emptycount = 0;\n            $latestdate = $activedate;\n            $nextdate = strtotime($latestdate);\n            foreach ($items as $item) {\n                //empty all dates and active-states which are older than today\n                if (!empty($item[''activedate'']) && $item[''activedate''] < $activedate) {\n                    $item[''activated''] = ''0'';\n                    $item[''activedate''] = '''';\n                }\n                if (empty($item[''activedate''])) {\n                    $emptycount++;\n                }\n                if ($item[''activedate''] > $latestdate) {\n                    $latestdate = $item[''activedate''];\n                    $nextdate = strtotime($latestdate) + (24 * 60 * 60);\n                }\n                if ($item[''activedate''] == $activedate) {\n                    $item[''activated''] = ''1'';\n                    $activeitems[] = $item;\n                }\n                $tempitems[] = $item;\n            }\n\n            //echo ''<pre>'' . print_r($tempitems, 1) . ''</pre>'';\n\n            $items = $tempitems;\n\n\n            //are there more than half of all items with empty activedates\n\n            if ($emptycount >= $count / 2) {\n\n                // sort items\n                if (is_array($sort) && count($sort) > 0) {\n                    $items = $migx->sortDbResult($items, $sort);\n                }\n                if (count($items) > 0) {\n                    //shuffle items\n                    if ($randomize) {\n                        shuffle($items);\n                    }\n                }\n\n                $tempitems = array();\n                foreach ($items as $item) {\n                    if (empty($item[''activedate''])) {\n                        $item[''activedate''] = strftime(''%Y/%m/%d'', $nextdate);\n                        $nextdate = $nextdate + (24 * 60 * 60);\n                        if ($item[''activedate''] == $activedate) {\n                            $item[''activated''] = ''1'';\n                            $activeitems[] = $item;\n                        }\n                    }\n\n                    $tempitems[] = $item;\n                }\n\n                $items = $tempitems;\n            }\n\n            //$resource = $modx->getObject(''modResource'', $docid);\n            //echo $modx->toJson($items);\n            $sort = ''[{"sortby":"activedate"}]'';\n            $items = $migx->sortDbResult($items, $modx->fromJson($sort));\n\n            //echo ''<pre>'' . print_r($items, 1) . ''</pre>'';\n\n            $tv->setValue($docid, $modx->toJson($items));\n            $tv->save();\n\n        }\n    }\n\n}\n\n\n$properties = array();\nforeach ($scriptProperties as $property => $value) {\n    $properties[''property.'' . $property] = $value;\n}\n\n$output = '''';\n\nforeach ($activeitems as $key => $item) {\n\n    $fields = array();\n    foreach ($item as $field => $value) {\n        $value = is_array($value) ? implode(''||'', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field])) {\n            if ($tv = $modx->getObject(''modTemplateVar'', array(''name'' => $inputTvs[$field][''inputTV'']))) {\n\n            } else {\n                $tv = $modx->newObject(''modTemplateVar'');\n                $tv->set(''type'', $inputTvs[$field][''inputTVtype'']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(''manipulatable_url_tv_output_types'', null, ''image,file'');\n            //don''t manipulate any urls here\n            $modx->setOption(''manipulatable_url_tv_output_types'', '''');\n            $tv->set(''default_text'', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(''manipulatable_url_tv_output_types'', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                $mTypes = explode('','', $mTypes);\n                if (!empty($value) && in_array($tv->get(''type''), $mTypes)) {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(''/./'', ''/'', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n\n    $rowtpl = $tpl;\n    //get changing tpls from field\n    if (substr($tpl, 0, 7) == "@FIELD:") {\n        $tplField = substr($tpl, 7);\n        $rowtpl = $fields[$tplField];\n    }\n\n    if (!isset($template[$rowtpl])) {\n        if (substr($rowtpl, 0, 6) == "@FILE:") {\n            $template[$rowtpl] = file_get_contents($modx->config[''base_path''] . substr($rowtpl, 6));\n        } elseif (substr($rowtpl, 0, 6) == "@CODE:") {\n            $template[$rowtpl] = substr($tpl, 6);\n        } elseif ($chunk = $modx->getObject(''modChunk'', array(''name'' => $rowtpl), true)) {\n            $template[$rowtpl] = $chunk->getContent();\n        } else {\n            $template[$rowtpl] = false;\n        }\n    }\n\n    $fields = array_merge($fields, $properties);\n\n    if ($template[$rowtpl]) {\n        $chunk = $modx->newObject(''modChunk'');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$rowtpl]);\n        $output .= $chunk->process($fields);\n\n    } else {\n        $output .= ''<pre>'' . print_r($fields, 1) . ''</pre>'';\n\n    }\n\n\n}\n\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return '''';\n}\n\nreturn $output;', 0, '', '', 0, ''),
(26, 0, 0, 'filterbytag', '', 0, 5, 0, 'if (!is_array($subject)) {\n    $subject = explode('','',str_replace(array(''||'','' ''),array('','',''''),$subject));\n}\n\nreturn (in_array($operand,$subject));', 0, '', '', 0, ''),
(27, 0, 0, 'migxObjectMediaPath', '', 0, 5, 0, '$pathTpl = $modx->getOption(''pathTpl'', $scriptProperties, '''');\n$objectid = $modx->getOption(''objectid'', $scriptProperties, '''');\n$createfolder = $modx->getOption(''createFolder'', $scriptProperties, ''1'');\n$path = '''';\n$createpath = false;\nif (empty($objectid) && $modx->getPlaceholder(''objectid'')) {\n    // placeholder was set by some script on frontend for example\n    $objectid = $modx->getPlaceholder(''objectid'');\n}\nif (empty($objectid) && isset($_REQUEST[''object_id''])) {\n    $objectid = $_REQUEST[''object_id''];\n}\n\n\n\nif (empty($objectid)) {\n\n    //set Session - var in fields.php - processor\n    if (isset($_SESSION[''migxWorkingObjectid''])) {\n        $objectid = $_SESSION[''migxWorkingObjectid''];\n        $createpath = !empty($createfolder);\n    }\n\n}\n\n\n$path = str_replace(''{id}'', $objectid, $pathTpl);\n\n$fullpath = $modx->getOption(''base_path'') . $path;\n\nif ($createpath && !file_exists($fullpath)) {\n    mkdir($fullpath, 0755, true);\n}\n\nreturn $path;', 0, '', '', 0, ''),
(28, 0, 0, 'exportMIGX2db', '', 0, 5, 0, '/**\n * exportMIGX2db\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n * \n * Sponsored by Simon Wurster <info@wurster-medien.de>\n *\n * exportMIGX2db is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * exportMIGX2db is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * exportMIGX2db; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * exportMIGX2db\n *\n * export Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string to db-table \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*\n[[!exportMIGX2db? \n&tvname=`references` \n&resources=`25` \n&packageName=`projekte`\n&classname=`Projekt` \n&migx_id_field=`migx_id` \n&renamed_fields=`{"Firmen-URL":"Firmen_url","Projekt-URL":"Projekt_URL","main-image":"main_image"}`\n]]\n*/\n\n\n$tvname = $modx->getOption(''tvname'', $scriptProperties, '''');\n$resources = $modx->getOption(''resources'', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(''id'') : ''''));\n$resources = explode('','', $resources);\n$prefix = isset($scriptProperties[''prefix'']) ? $scriptProperties[''prefix''] : null;\n$packageName = $modx->getOption(''packageName'', $scriptProperties, '''');\n$classname = $modx->getOption(''classname'', $scriptProperties, '''');\n$value = $modx->getOption(''value'', $scriptProperties, '''');\n$migx_id_field = $modx->getOption(''migx_id_field'', $scriptProperties, '''');\n$pos_field = $modx->getOption(''pos_field'', $scriptProperties, '''');\n$renamed_fields = $modx->getOption(''renamed_fields'', $scriptProperties, '''');\n\n$packagepath = $modx->getOption(''core_path'') . ''components/'' . $packageName .\n    ''/'';\n$modelpath = $packagepath . ''model/'';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$added = 0;\n$modified = 0;\n\nforeach ($resources as $docid) {\n    \n    $outputvalue = '''';\n    if (count($resources)==1){\n        $outputvalue = $value;    \n    }\n    \n    if (!empty($tvname)) {\n        if ($tv = $modx->getObject(''modTemplateVar'', array(''name'' => $tvname))) {\n\n            $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n        }\n    }\n\n    if (!empty($outputvalue)) {\n        $renamed = !empty($renamed_fields) ? $modx->fromJson($renamed_fields) : array();\n\n        $items = $modx->fromJSON($outputvalue);\n        $pos = 1;\n        $searchfields = array();\n        if (is_array($items)) {\n            foreach ($items as $fields) {\n                $search = array();\n                if (!empty($migx_id_field)) {\n                    $search[$migx_id_field] = $fields[''MIGX_id''];\n                }\n                if (!empty($resource_id_field)) {\n                    $search[$resource_id_field] = $docid;\n                }\n                if (!empty($migx_id_field) && $object = $modx->getObject($classname, $search)) {\n                    $mode = ''mod'';\n                } else {\n                    $object = $modx->newObject($classname);\n                    $object->fromArray($search);\n                    $mode = ''add'';\n                }\n                foreach ($fields as $field => $value) {\n                    $fieldname = array_key_exists($field, $renamed) ? $renamed[$field] : $field;\n                    $object->set($fieldname, $value);\n                }\n                if (!empty($pos_field)) {\n                    $object->set($pos_field,$pos) ;\n                }                \n                if ($object->save()) {\n                    if ($mode == ''add'') {\n                        $added++;\n                    } else {\n                        $modified++;\n                    }\n                }\n                $pos++;\n            }\n            \n        }\n    }\n}\n\n\nreturn $added . '' rows added to db, '' . $modified . '' existing rows actualized'';', 0, '', '', 0, ''),
(29, 0, 0, 'preparedatewhere', '', 0, 5, 0, '$name = $modx->getOption(''name'', $scriptProperties, '''');\n$date = $modx->getOption($name . ''_date'', $_REQUEST, '''');\n$dir = str_replace(''T'', '' '', $modx->getOption($name . ''_dir'', $_REQUEST, ''''));\n\nif (!empty($date) && !empty($dir) && $dir != ''all'') {\n    switch ($dir) {\n        case ''='':\n            $where = array(\n            ''enddate:>='' => strftime(''%Y-%m-%d 00:00:00'',strtotime($date)),\n            ''startdate:<='' => strftime(''%Y-%m-%d 23:59:59'',strtotime($date))\n            );\n            break;\n        case ''>='':\n            $where = array(\n            ''enddate:>='' => strftime(''%Y-%m-%d 00:00:00'',strtotime($date))\n            );\n            break;\n        case ''<='':\n            $where = array(\n            ''startdate:<='' => strftime(''%Y-%m-%d 23:59:59'',strtotime($date))\n            );            \n            break;\n\n    }\n\n    return $modx->toJson($where);\n}', 0, '', '', 0, ''),
(30, 0, 0, 'migxJsonToPlaceholders', '', 0, 5, 0, '$value = $modx->getOption(''value'',$scriptProperties,'''');\n$prefix = $modx->getOption(''prefix'',$scriptProperties,'''');\n\n//$modx->setPlaceholders($modx->fromJson($value),$prefix,'''',true);\n\n$values = $modx->fromJson($value);\nif (is_array($values)){\n    foreach ($values as $key => $value){\n        $value = $value == null ? '''' : $value;\n        $modx->setPlaceholder($prefix . $key, $value);\n    }\n}', 0, '', '', 0, ''),
(31, 0, 0, 'DoodlesSnippet', '', 0, 6, 0, 'return include $file;', 0, 'a:0:{}', '', 0, '/www/doodles/core/components/doodles/elements/snippets/snippet.doodles.php'),
(32, 1, 0, 'NcFormsSnippet', '', 0, 7, 0, 'return include $file;', 0, 'a:0:{}', '', 0, ''),
(33, 1, 0, 'addDB', '', 0, 0, 0, '$allFormFields = $hook->getValues();\n$formId = $allFormFields[''FORM_ID''];\nunset($allFormFields[''FORM_ID'']);\n$json = $modx->toJSON($allFormFields);\n//file_put_contents(''log.txt'',"---\\n".var_export($json,true)."\\n---\\n\\n", FILE_APPEND);\n$ncformssentdata = $modx->newObject(''NcformsSentData'');\n\n$arrayVal = array(''form_id'' => $formId, ''sent_on'' => time(), ''data'' => $json);\n\n$ncformssentdata->fromArray($arrayVal);\n\nif ($ncformssentdata->save()){\n    return true;\n}else{\n    return false;\n}', 0, 'a:0:{}', '', 0, ''),
(34, 1, 0, 'loadCustomValues', '', 0, 0, 0, 'if(isset($_POST)) {\n    foreach($_POST as $key => $val) {\n        if(!empty($val)) {\n            $hook->setValue($key,$val);\n        }\n    }\n}\n/*$id = $_POST[''FORM_ID''];\n$c = $modx->newQuery(''NcForm''); \n\n$c->where(array( ''id'' => $id )); \n\n$ncforms = $modx->getObjectGraph(''NcForm'', array(\n	''NcFormField'' => array()\n), $c);\n\n\n\nforeach ($ncforms->Fields as $ncform) {\n	$ncformArray = $ncform->toArray();\n	file_put_contents(''log.txt'',"---\\n".var_export(1,true)."\\n---\\n\\n", FILE_APPEND);\n    \n};*/\n\n//$save_method = $hook->getValue(''fieldsDefaultValuesArray'');\n\nreturn true;', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_templates`
--

CREATE TABLE IF NOT EXISTS `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'Базовый шаблон', 'Template', 0, 0, '', 0, '<html>\n<head>\n<title>[[++site_name]] - [[*pagetitle]]</title>\n<base href="[[++site_url]]" />\n</head>\n<body>\n<h1>[[*pagetitle]]</h1>\n[[*content]]\n</body>\n</html>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvars`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_access`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`),
  KEY `tv_cnt` (`tmplvarid`,`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_templates`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_eventnames`
--

CREATE TABLE IF NOT EXISTS `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnTempFormDelete', 1, 'Templates'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnEmptyTrash', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnBeforeWebLogin', 3, 'Security'),
('OnWebAuthentication', 3, 'Security'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnPageUnauthorized', 1, 'Security'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserNotFound', 1, 'Users'),
('OnBeforeUserActivate', 1, 'Users'),
('OnUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserSave', 1, 'Users'),
('OnUserRemove', 1, 'Users'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnWebPagePrerender', 5, 'System'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnCacheUpdate', 4, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnSiteRefresh', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageAfterRender', 2, 'System'),
('OnWebPageInit', 5, 'System'),
('OnLoadWebDocument', 5, 'System'),
('OnParseDocument', 5, 'System'),
('OnWebPageComplete', 5, 'System'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnPageNotFound', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnMODXInit', 5, 'System'),
('OnElementNotFound', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnInitCulture', 3, 'Internationalization'),
('OnCategorySave', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnChunkSave', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnContextSave', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnPluginSave', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources');

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_settings`
--

CREATE TABLE IF NOT EXISTS `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('archive_with', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('base_help_url', 'http://rtfm.modx.com/display/revolution20/', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_format', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('compress_css', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js_groups', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('container_suffix', '/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('context_tree_sort', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('cultureKey', 'en', 'modx-combo-language', 'core', 'language', '2014-08-04 11:16:35'),
('date_timezone', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('debug', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', '0000-00-00 00:00:00'),
('default_per_page', '20', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_context', 'web', 'modx-combo-context', 'core', 'site', '0000-00-00 00:00:00'),
('default_template', '1', 'modx-combo-template', 'core', 'site', '0000-00-00 00:00:00'),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', '0000-00-00 00:00:00'),
('editor_css_path', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('editor_css_selectors', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('emailsender', 'admin@mail.ru', 'textfield', 'core', 'authentication', '2014-07-29 12:10:55'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('error_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00'),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security', 'http://feeds.feedburner.com/modxsecurity', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('filemanager_path', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>"~:`@\\?\\[\\]\\{\\}\\|\\^''\\\\]/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit', 'russian', 'textfield', 'core', 'furls', '2014-07-29 12:21:54'),
('friendly_alias_translit_class', 'modx.translit.modTransliterate', 'textfield', 'core', 'furls', '2014-07-29 12:20:39'),
('friendly_alias_translit_class_path', '{core_path}components/translit/model/', 'textfield', 'core', 'furls', '2014-07-29 12:20:39'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2014-07-29 12:22:10'),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('inline_help', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('locale', '', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('log_level', '1', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('log_target', 'FILE', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('lock_ttl', '360', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', '2014-08-22 11:58:39'),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_user', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_favicon_url', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_html5_cache', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_document_root', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_direction', 'ltr', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2014-07-29 12:10:55'),
('manager_language', 'en', 'modx-combo-language', 'core', 'language', '2014-08-04 11:16:01'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_week_start', '0', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', '0000-00-00 00:00:00'),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_host', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_password', '', 'text-password', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_port', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_username', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('password_generated_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('password_min_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('publish_default', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('rb_base_dir', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('rb_base_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_id', 'id', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('search_default', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('server_offset_time', '0', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('server_protocol', 'http', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('session_cookie_domain', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_path', '/', 'textfield', 'core', 'session', '2014-08-21 11:55:49'),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_name', 'modxlocaldevsession', 'textfield', 'core', 'session', '2014-08-21 11:57:54'),
('set_header', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_start', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_status', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_page', '0', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_root_id', '0', 'numberfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('unauthorized_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_maxsize', '2097152', 'textfield', 'core', 'file', '2014-07-29 12:10:55'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2014-07-29 12:22:06'),
('use_browser', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('use_editor', '1', 'combo-boolean', 'core', 'editor', '0000-00-00 00:00:00'),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2014-07-29 12:10:55'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2014-07-29 12:15:04'),
('welcome_screen_url', 'http://misc.modx.com/revolution/welcome.22.html', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('which_editor', 'TinyMCE', 'modx-combo-rte', 'core', 'editor', '2014-07-29 12:16:13'),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2014-07-29 13:24:32'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('settings_version', '2.3.0-pl', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('settings_distro', 'traditional', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('tiny.base_url', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.convert_fonts_to_spans', '1', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.convert_newlines_to_brs', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.css_selectors', '', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.custom_buttons1', 'undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,modxlink,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons2', 'bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons3', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons4', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons5', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_plugins', 'style,advimage,advlink,modxlink,searchreplace,print,contextmenu,paste,fullscreen,noneditable,nonbreaking,xhtmlxtras,visualchars,media', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.editor_theme', 'advanced', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.element_format', 'xhtml', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.entity_encoding', 'named', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.fix_nesting', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.fix_table_elements', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.font_size_classes', '', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.font_size_style_values', 'xx-small,x-small,small,medium,large,x-large,xx-large', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.forced_root_block', 'p', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.indentation', '30px', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.invalid_elements', '', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.nowrap', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.object_resizing', '1', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.path_options', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.remove_linebreaks', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.remove_redundant_brs', '1', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.removeformat_selector', 'b,strong,em,i,span,ins', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.skin', 'cirkuit', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.skin_variant', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.table_inline_editing', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_list', '', 'textarea', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_list_snippet', '', 'textarea', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_selected_content_classes', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.theme_advanced_blockformats', 'p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre,address', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.theme_advanced_font_sizes', '80%,90%,100%,120%,140%,160%,180%,220%,260%,320%,400%,500%,700%', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.use_uncompressed_library', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('formit.recaptcha_public_key', '6Lev-PgSAAAAAM37cuwpxUfkNCOsC_NnVs6OkcBl', 'textfield', 'formit', 'reCaptcha', '2014-08-21 08:38:34'),
('formit.recaptcha_private_key', '6Lev-PgSAAAAAEcqzv6H9np7GWG_YwQnEGCqgv2b', 'textfield', 'formit', 'reCaptcha', '2014-08-21 08:38:44'),
('formit.recaptcha_use_ssl', '', 'combo-boolean', 'formit', 'reCaptcha', '0000-00-00 00:00:00'),
('doodles.core_path', 'Z:/home/localhost/www/doodles/core/components/doodles/', 'textfield', 'doodles', '', '2014-08-04 08:40:43'),
('doodles.assets_url', '/doodles/assets/components/doodles/', 'textfield', 'doodles', '', '2014-08-04 11:14:44'),
('ace.theme', 'chrome', 'textfield', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.font_size', '13px', 'textfield', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.word_wrap', '', 'combo-boolean', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.soft_tabs', '1', 'combo-boolean', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.tab_size', '4', 'textfield', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.snippets', '', 'textarea', 'ace', 'general', '0000-00-00 00:00:00'),
('ace.height', '', 'textfield', 'ace', 'general', '0000-00-00 00:00:00'),
('ncforms.assets_url', '/ncforms/assets/components/ncforms/', 'textfield', 'ncforms', '', '0000-00-00 00:00:00'),
('ncforms.core_path', 'Z:/home/localhost/www/ncforms/core/components/ncforms/', 'textfield', 'ncforms', '', '0000-00-00 00:00:00'),
('extension_packages', '[{"ncformssentdata":{"path":"Z:/home/localhost/www/modx-delete/core/components/ncformssentdata/model/"}}]', 'textfield', 'core', 'system', '2014-08-20 14:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_packages`
--

CREATE TABLE IF NOT EXISTS `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workspace` int(10) unsigned NOT NULL DEFAULT '0',
  `provider` int(10) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_minor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_patch` smallint(5) unsigned NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('tinymce-4.3.3-pl', '2014-07-29 04:15:54', '2014-07-29 12:16:13', '2014-07-29 16:16:13', 0, 1, 1, 0, 'tinymce-4.3.3-pl.transport.zip', NULL, 'a:31:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:9:"signature";s:16:"tinymce-4.3.3-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:579:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''workspace/packages/install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connector_url,params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:44:"/workspace/package/install/tinymce-4.3.3-pl/";s:14:"package_action";i:0;}', 'TinyMCE', 'a:38:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4ff84cc3f245544fc100000a";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556bc5b2b083396d0007e9";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:16:"tinymce-4.3.3-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:7:"TinyMCE";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"4.3.3";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"4";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"3";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"3";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:102:"<p>TinyMCE version 3.4.7 for MODx Revolution. Works with Revolution 2.2.x or later only.</p><ul>\n</ul>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:225:"<p>Install via Package Management.</p>\n<p>If you''re having issues installing, make sure you have the latest ZipArchive extension for PHP, and that it''s properly configured, or set the "archive_with" System Setting to Yes.</p>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:2332:"<p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.3</b></p><ul><li>Change popup windows to more convenient modals</li><li>Have TinyMCE respect context settings of Resource being edited</li><li>Update TinyMCE to 3.5.4.1</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.2</b></p><ul><li>Update Czech/German translation</li><li>&#91;#74&#93; Fix inclusion of english as fallback for language</li><li>&#91;#80&#93; Make context menu use MODxLink plugin</li><li>Upgrade TinyMCE to 3.4.7</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.1</b></p><ul><li>Optimizations for MODX 2.2</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.0</b></p><ul><li>&#91;#71&#93; Update TinyMCE to v3.4.5</li><li>&#91;#70&#93; Fixes to cirkuit skin with missing CSS styles</li><li>&#91;#64&#93; Add tiny.template_list_snippet setting for grabbing template list from a Snippet</li><li>&#91;#66&#93; Fix issues with Revolution 2.2.0 code</li><li>&#91;#63&#93; Add tiny.base_url setting for managing the document_base_url tinymce setting</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.4</b></p><ul><li>Updated TinyMCE to 3.4.2</li><li>Fix issue where recursion detected xPDO error was showing in logs on chunk editing</li><li>&#91;#55&#93; Fix help for element_format and preformatted descriptions in plugin properties</li><li>&#91;#53&#93; Languages added/update: German, English, French, Indonesian, Japanese, Dutch, Russian, Ukrainian</li></ul><b>New in 4.2.3</b><p></p><ul><li>Fix issue that inserted wrong URL when using TinyMCE in Revolution 2.1 and later</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.2</b></p><ul><li>&#91;#49&#93; Added spellchecker files</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.1</b></p><ul><li>&#91;#45&#93; &#91;#47&#93; Fixes for front-end usage and compatibility with NewsPublisher</li><li>Add compressed JS for faster loading</li></ul>";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2012-07-07T14:50:43+0000";s:8:"children";a:0:{}}i:16;a:4:{s:4:"name";s:9:"createdby";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-29T12:10:14+0000";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2012-07-07T14:50:43+0000";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:6:"215906";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:24;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:25;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4ff84cc6f245544fc100000c";s:8:"children";a:0:{}}i:29;a:4:{s:4:"name";s:9:"signature";s:10:"attributes";a:0:{}s:4:"text";s:16:"tinymce-4.3.3-pl";s:8:"children";a:0:{}}i:30;a:4:{s:4:"name";s:11:"supports_db";s:10:"attributes";a:0:{}s:4:"text";s:12:"mysql,sqlsrv";s:8:"children";a:0:{}}i:31;a:4:{s:4:"name";s:16:"minimum_supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:32;a:4:{s:4:"name";s:9:"breaks_at";s:10:"attributes";a:0:{}s:4:"text";s:8:"10000000";s:8:"children";a:0:{}}i:33;a:4:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:4:"text";s:54:"http://modx.s3.amazonaws.com/extras/459/tinymce-ss.png";s:8:"children";a:0:{}}i:34;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4ff84cc6f245544fc100000c";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"4ff84cc3f245544fc100000a";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:30:"tinymce-4.3.3-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"90396";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:14:"128.199.150.17";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4ff84cc6f245544fc100000c";s:8:"children";a:0:{}}}}i:35;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:16:"tinymce-4.3.3-pl";s:8:"children";a:0:{}}i:36;a:4:{s:4:"name";s:10:"categories";s:10:"attributes";a:0:{}s:4:"text";s:23:"content,richtexteditors";s:8:"children";a:0:{}}i:37;a:4:{s:4:"name";s:4:"tags";s:10:"attributes";a:0:{}s:4:"text";s:51:"rte,richtext,wysiwyg,richtext editor,editor,content";s:8:"children";a:0:{}}}', 4, 3, 3, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('formit-2.2.0-pl', '2014-07-29 04:17:11', '2014-07-29 12:17:24', '2014-07-29 16:17:24', 0, 1, 1, 0, 'formit-2.2.0-pl.transport.zip', NULL, 'a:33:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:213:"--------------------\nSnippet: FormIt\n--------------------\nAuthor: Shaun McCormick <shaun@modx.com>\n\nA form processing Snippet for MODx Revolution.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/FormIt";s:9:"changelog";s:10330:"Changelog for FormIt.\n\nFormIt 2.2.0\n====================================\n- [#8382] Prevent issue with checkboxes/radios causing text-parsing problems with required validator\n- Fixed issue with custom error message for vTextPasswordConfirm not respected\n- [#9457] Fixed issue with commas in values causing errors with FormItIsChecked & FormItIsSelected\n- [#9576] Add ability to translate country options\n- Add check for preHook errors before processing postHooks\n- Add option, defaulting true, to trim spaces from sides of values before validation\n- [#8785] Fix E_STRICT error in fiDictionary\n\nFormIt 2.1.2\n====================================\n- Various language updates\n- [#7250] Fix issue with 0 not passing :required filter\n\nFormIt 2.1.1\n====================================\n- [#8204] Fix issue with FormItAutoResponder and processing of MODX tags\n\nFormIt 2.1.0\n====================================\n- [#7620] Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl\n- [#7502] Add ability to find type of hook by using $hook->type\n- [#8151] More sanity checking for FormItAutoResponder and replyTo addresses\n- Fix useIsoCode issue in FormItCountryOptions\n- Update German translation\n- Enhance validation templating for validationErrorBulkTpl\n- Add &country option to FormItStateOptions to allow loading of non-US states (currently us/de)\n\nFormIt 2.0.3\n====================================\n- Update Czech translation\n- Fix issue with French accents in translation\n- [#6021] Refactor Russian reCaptcha translations\n- [#6618] Standardize XHTML in reCaptcha usage\n\nFormIt 2.0.2\n====================================\n- [#4864] Fix issue with isNumber not allowing blank fields\n- [#5404] Fix issues with checkboxes and array fields in FormItAutoResponder\n- [#5269] Fix issues with checkboxes in various forms in emails\n- [#5792] Update reCaptcha URLs\n\nFormIt 2.0.1\n====================================\n- [#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form\n- [#5484] Fix issue with double validation error spans\n- Fix issue where config was not passed to hooks\n- Update German translation\n\nFormIt 2.0.0\n====================================\n- [#3514] Add ability to customize validator error messages per FormIt form and per field\n- [#4705] Add regexp validator\n- [#5454] Fix issue with customValidators property in 2.0.0-rc2\n- Major reworking of main FormIt script to be OOP\n- Add over 150 unit tests to prevent regression\n- [#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode\n- Fix issue with FormItStateOptions and &useAbbr\n- [#5267] Fix issue with FormItRetriever and array fields\n\nFormIt 1.7.0\n====================================\n- Add ability to have "Frequent Visitors" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup\n- Add missing property translations for FormItStateOptions snippet\n- Fix small issue with stored values after validation of fields\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added ''errors'' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless ''allowTags'' hook is passed'') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added ''spam'' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields \n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified \n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn''t set it as email subject\n- Added changelog";s:9:"signature";s:15:"formit-2.2.0-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:579:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''workspace/packages/install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connector_url,params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:43:"/workspace/package/install/formit-2.2.0-pl/";s:14:"package_action";i:0;}', 'FormIt', 'a:38:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"51472969f245540556000081";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556c62b2b083396d000b9c";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:15:"formit-2.2.0-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:6:"FormIt";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"2.2.0";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:400:"<p>Automatically validate, parse and email forms. Redirect to thank you pages. Add your own hooks as Snippets to handle forms dynamically. Validate with custom Snippets. Spam protection. Auto-response options. Dynamic country/state dropdown lists.</p>\n<p>See the Official Documentation here:</p>\n<p><a href="http://rtfm.modx.com/display/ADDON/FormIt">http://rtfm.modx.com/display/ADDON/FormIt</a></p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:38:"<p>Install via Package Management.</p>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:6161:"<p></p><p><b>New in 2.2.0</b></p><p></p><ul><li>&#91;#8382&#93; Prevent issue with checkboxes/radios causing text-parsing problems with required validator</li><li>Fixed issue with custom error message for vTextPasswordConfirm not respected</li><li>&#91;#9457&#93; Fixed issue with commas in values causing errors with FormItIsChecked &amp; FormItIsSelected</li><li>&#91;#9576&#93; Add ability to translate country options</li><li>Add check for preHook errors before processing postHooks</li><li>Add option, defaulting true, to trim spaces from sides of values before validation</li><li>&#91;#8785&#93; Fix E_STRICT error in fiDictionary</li></ul><p></p><p><b>New in 2.1.2</b></p><p></p><ul><li>Various language updates</li><li>&#91;#7250&#93; Fix issue with 0 not passing :required filter</li></ul><p></p><p><b>New in 2.1.1</b></p><p></p><ul><li>&#91;#8204&#93; Fix issue with FormItAutoResponder and processing of MODX tags</li></ul><p></p><p><b>New in 2.1.0</b></p><p></p><ul><li>&#91;#7620&#93; Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl</li><li>&#91;#7502&#93; Add ability to find type of hook by using $hook-&gt;type</li><li>&#91;#8151&#93; More sanity checking for FormItAutoResponder and replyTo addresses</li><li>Fix useIsoCode issue in FormItCountryOptions</li><li>Update German translation</li><li>Enhance validation templating for validationErrorBulkTpl</li><li>Add &amp;country option to FormItStateOptions to allow loading of non-US states (currently us/de)</li></ul><p></p><p><b>New in 2.0.3</b></p><p></p><ul><li>Update Czech translation</li><li>Fix issue with French accents in translation</li><li>&#91;#6021&#93; Refactor Russian reCaptcha translations</li><li>&#91;#6618&#93; Standardize XHTML in reCaptcha usage</li></ul><p></p><p><b>New in 2.0.2</b></p><p></p><ul><li>&#91;#4864&#93; Fix issue with isNumber not allowing blank fields</li><li>&#91;#5404&#93; Fix issues with checkboxes and array fields in FormItAutoResponder</li><li>&#91;#5269&#93; Fix issues with checkboxes in various forms in emails</li><li>&#91;#5792&#93; Update reCaptcha URLs</li></ul><p></p><p><b>New in 2.0.1</b></p><ul><li>&#91;#5525&#93; Add &amp;allowFiles property, that when set to 0, prevents file submissions on form</li><li>&#91;#5484&#93; Fix issue with double validation error spans</li><li>Fix issue where config was not passed to hooks</li><li>Update German translation</li></ul><p></p><p><b>New in 2.0.0</b></p><p></p><ul><li>&#91;#3514&#93; Add ability to customize validator error messages per FormIt form and per field</li><li>&#91;#4705&#93; Add regexp validator</li><li>&#91;#5454&#93; Fix issue with customValidators property in 2.0.0-rc2</li><li>Fix issue with reCaptcha loading in 2.0.0-rc1</li><li>Major reworking of main FormIt script to be OOP</li><li>Add over 150 unit tests to prevent regression</li><li>&#91;#5388&#93;, &#91;#5240&#93; Fix issue with FormItCountryOptions and &amp;useIsoCode</li><li>Fix issue with FormItStateOptions and &amp;useAbbr</li><li>&#91;#5267&#93; Fix issue with FormItRetriever and array fields</li></ul><p></p><p><b>New in 1.7.0</b></p><p></p><ul><li>Add ability to have "Frequent Visitors" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup</li><li>Add missing property translations for FormItStateOptions snippet</li><li>Fix small issue with stored values after validation of fields</li><li>Add FormItStateOptions snippet for easy U.S. state dropdowns</li><li>Add FormItCountryOptions snippet for easy country dropdowns</li><li>&#91;#5101&#93; Fix issue with emailMultiSeparator and emailMultiWrapper default values</li><li>Fix issue with bracketed field names being added as extra fields post-validation with . prefix</li></ul><p></p><p><b>New in 1.6.0</b></p><p></p><ul><li>&#91;#4708&#93; Add support for bracketed fields, such as contact&#91;name&#93;</li><li>&#91;#5038&#93; Fix uninitialized variable warnings in reCaptcha service</li><li>&#91;#4993&#93; Add Italian translation and fix recaptcha links</li><li>Fix issue where fields could be removed via DOM from form and be bypassed</li><li>Add &amp;emailMultiSeparator and &amp;emailMultiWrapper properties for handling display of checkboxes/multi-selects in email hook</li></ul><p></p><p><b>New in 1.5.6</b></p><p></p><ul><li>&#91;#4564&#93; Fix redirectTo with non-web contexts</li></ul><p></p><p><b>New in 1.5.5</b></p><ul><li>&#91;#4168&#93; Add emailConvertNewlines property for handling newlines in HTML emails</li><li>&#91;#4057&#93; Prevent math hook from generating similar numbers</li><li>&#91;#4302&#93; Cleanups to FormItAutoResponder snippet</li><li>&#91;#3991&#93; Fix issue with checkbox values in emails</li></ul><p></p><p><b>New in 1.5.4</b></p><p></p>\n<ul>\n<li>Fix issue with math hook where error placeholders were incorrect</li><li>Fix issue where emailHtml property was not respected in email hook</li><li>Fix issue where hooks were not passed customProperties array</li><li>&#91;#51&#93; Allow blank fields to be passed with :email validator</li>\n<li>&#91;#55&#93; Allow all fields to be accessed in custom validators</li>\n</ul>\n<p><b>New in 1.5.3</b></p>\n<ul>\n<li>&#91;#40&#93; Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one</li>\n<li>&#91;#52&#93; Add a general validation error message property, validationErrorMessage, that shows when validation fails</li>\n<li>&#91;#53&#93; Fix bug that prevented recaptcha options from working</li>\n<li>Add a generic validation error placeholder in FormIt to allow for general messages</li>\n<li>&#91;#50&#93; Trim each hook specification in hooks calls</li>\n<li>&#91;#49&#93; Ensure reCaptcha service instance is unique for each FormIt instance</li>\n<li>&#91;#47&#93; Ensure email validator checks for empty string</li>\n<li>&#91;#42&#93; Can now include field names in error strings via `field` placeholder</li>\n<li>&#91;#39&#93; Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked</li>\n<li>&#91;#37&#93; Fix allowTags validator to work, and work with parameters encapsulated by ^</li>\n</ul>";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2013-03-18T14:49:13+0000";s:8:"children";a:0:{}}i:16;a:4:{s:4:"name";s:9:"createdby";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-29T12:15:09+0000";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2013-03-18T14:49:13+0000";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:6:"121483";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:24;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:25;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=5147296ff245540556000083";s:8:"children";a:0:{}}i:29;a:4:{s:4:"name";s:9:"signature";s:10:"attributes";a:0:{}s:4:"text";s:15:"formit-2.2.0-pl";s:8:"children";a:0:{}}i:30;a:4:{s:4:"name";s:11:"supports_db";s:10:"attributes";a:0:{}s:4:"text";s:12:"mysql,sqlsrv";s:8:"children";a:0:{}}i:31;a:4:{s:4:"name";s:16:"minimum_supports";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:32;a:4:{s:4:"name";s:9:"breaks_at";s:10:"attributes";a:0:{}s:4:"text";s:8:"10000000";s:8:"children";a:0:{}}i:33;a:3:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:34;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"5147296ff245540556000083";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"51472969f245540556000081";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:29:"formit-2.2.0-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"40151";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:14:"128.199.150.17";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=5147296ff245540556000083";s:8:"children";a:0:{}}}}i:35;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:15:"formit-2.2.0-pl";s:8:"children";a:0:{}}i:36;a:4:{s:4:"name";s:10:"categories";s:10:"attributes";a:0:{}s:4:"text";s:5:"forms";s:8:"children";a:0:{}}i:37;a:3:{s:4:"name";s:4:"tags";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}}', 2, 2, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('cmpgenerator-1.1.3-pl', '2014-08-20 17:06:54', '2014-08-20 13:07:03', '2014-08-20 17:07:02', 0, 1, 0, 0, 'cmpgenerator-1.1.3-pl.transport.zip', NULL, 'a:4:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:2255:"--------------------\r\nCMPGenerator\r\n--------------------\r\nVersion: 1.1.3 pl\r\nDate: January 3, 2013\r\nAuthor: Joshua Gulledge (jgulledge19@hotmail.com)\r\nLicense: GNU GPLv2 (or later at your option)\r\n\r\nDescription\r\n    CMPGenerator is intended to be used by PHP developers that want to create custom \r\n    database tables to be used via a snippet, plugin or CMP. CMPGenerator will create \r\n    the xpdo scheme files and xpdo classes for your custom database tables with just a \r\n    click of a button.  This allows you to quickly start using xpdo in your custom projects. \r\n\r\nInstall\r\n - Install via the package manager\r\n\r\nHow to use\r\n1. Create your database tables(s) via your preferred method - phpmyadmin, SQLYog, ect..\r\n    Note your auto increment primary key should be named id\r\n2. Now create a new Package\r\n    A. Choose a unique name, it is a good idea to create a prefix for your packages.  \r\n        Example you could use your initials like First Middle Last: fmlMyCustomPackage\r\n        Also make sure you only use alpanumberic values \r\n    B. List the tables that you just created via a comma separated list\r\n    C. Put in the prefix for the table if any.  It is best practice to use the same prefix as your MODX install does.\r\n    D. Select if you want to build the schema.  If you don''t do this you can''t use your tables.\r\n    E. Select build Package and this will generate all nessicary files.\r\n3. Once the files are created and if you are using tables that have a relationship you will want to manually add that \r\n    code in the file:  core/components/YOUR-CMP/model/YOUR-CMP/YOUR-CMP.mysql.custom.schema.xml\r\n    See Docs for more info: http://rtfm.modx.com/display/revolution20/Using+Custom+Database+Tables+in+your+3rd+Party+Components\r\n    Once you have updated this file to show the relastionships you can now regenerate the package.  Set the Build Scheme to No\r\n    and set Build Package to Yes and save.\r\n\r\n\r\nExample of schema and foreign DB:\r\n- http://devtrench.com/posts/first-impressions-of-xpdo-wordpress-to-modx-migration-tool\r\n- http://devtrench.com/posts/wordpress-to-modx-migration-part-2-schema-relationships-and-comments\r\n- http://devtrench.com/posts/wordpress-to-modx-migration-part-3-templates-categories-and-postmeta\r\n\r\n\r\n";s:9:"changelog";s:632:"Changelog for CMPGenerator\r\n\r\nCMPGenerator 1.1.3pl - 1/3/2013\r\n============================\r\nUploaded the changed file for 1.1.2pl!\r\n\r\nCMPGenerator 1.1.2pl - 1/2/2013\r\n============================\r\nFixed #5 removed white space form tablename input \r\n\r\nCMPGenerator 1.1.1pl\r\n============================\r\nFixed #3 of possible minor error in foreach \r\n\r\nCMPGenerator 1.1.0pl\r\n============================\r\nadded #2 Support for Foreign Databases\r\n\r\nCMPGenerator 1.0pl\r\n============================\r\n[#1] Fix Yes/No options to understand foreign languages\r\n\r\nCMPGenerator 1.0rc1\r\n============================\r\n- Initial public release\r\n";s:13:"setup-options";s:39:"cmpgenerator-1.1.3-pl/setup-options.php";}', 'cmpgenerator', NULL, 1, 1, 3, 'pl', 0),
('console-2.0.1-beta', '2014-07-29 04:18:45', '2014-07-29 12:20:15', '2014-07-29 16:20:15', 0, 1, 1, 0, 'console-2.0.1-beta.transport.zip', NULL, 'a:33:{s:7:"license";s:0:"";s:6:"readme";s:134:"Console\r\n=====================================================\r\n\r\nConsole allow to execute php-code at back-end by simple interface.\r\n";s:9:"changelog";s:484:"Console-2.0.1-beta\r\n=============================================================\r\n- Saving code in $_SESSION;\r\n\r\nConsole-2.0.0-rc\r\n=============================================================\r\n- Ace integration fix;\r\n\r\nConsole-1.2.0-rc\r\n=============================================================\r\n- Set default LogTarget(''HTML'');\r\n- Set default LogLevel(xPDO::LOG_LEVEL_DEBUG);\r\n\r\nConsole-1.1.0-rc\r\n=============================================================\r\n\r\n- First release";s:9:"signature";s:18:"console-2.0.1-beta";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:579:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''workspace/packages/install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connector_url,params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:46:"/workspace/package/install/console-2.0.1-beta/";s:14:"package_action";i:0;}', 'Console', 'a:38:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"50f2c1d4f2455468e400004a";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"50f2c1d3f2455468e4000049";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:18:"console-2.0.1-beta";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:7:"Console";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"2.0.1";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:4:"beta";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:4:"beta";s:8:"children";a:0:{}}i:10;a:3:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:7:"Fi1osof";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:189:"Console allow to execute php-code at back-end by simple interface.<p>GitHub project: <a href="https://github.com/Fi1osof/modx-console">https://github.com/Fi1osof/modx-console</a></p><p></p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:22:"<p>Initial content</p>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:543:"<p>Console-2.0.1-beta</p><p>=============================================================</p><p>- Saving code in $_SESSION;</p><p>Console-2.0.0-rc</p><p>=============================================================</p><p>- Ace integration fix;</p><p>Console-1.2.0-rc</p><p>=============================================================</p><p>- Set default LogTarget(''HTML'');</p><p>- Set default LogLevel(xPDO::LOG_LEVEL_DEBUG);</p><p>Console-1.1.0-rc</p><p>=============================================================</p><p>- First release</p>";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2013-01-13T14:16:52+0000";s:8:"children";a:0:{}}i:16;a:4:{s:4:"name";s:9:"createdby";s:10:"attributes";a:0:{}s:4:"text";s:7:"Fi1osof";s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-29T12:13:18+0000";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2013-01-13T14:16:52+0000";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:4:"2688";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:24;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:25;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=539755fb62cf24225b003524";s:8:"children";a:0:{}}i:29;a:4:{s:4:"name";s:9:"signature";s:10:"attributes";a:0:{}s:4:"text";s:18:"console-2.0.1-beta";s:8:"children";a:0:{}}i:30;a:4:{s:4:"name";s:11:"supports_db";s:10:"attributes";a:0:{}s:4:"text";s:12:"mysql,sqlsrv";s:8:"children";a:0:{}}i:31;a:4:{s:4:"name";s:16:"minimum_supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:32;a:4:{s:4:"name";s:9:"breaks_at";s:10:"attributes";a:0:{}s:4:"text";s:8:"10000000";s:8:"children";a:0:{}}i:33;a:4:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:4:"text";s:67:"http://modx.s3.amazonaws.com/extras/50f2c1d3f2455468e4000049/14.jpg";s:8:"children";a:0:{}}i:34;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"539755fb62cf24225b003524";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"50f2c1d4f2455468e400004a";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:32:"console-2.0.1-beta.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:3:"390";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:14:"108.168.250.10";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=539755fb62cf24225b003524";s:8:"children";a:0:{}}}}i:35;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:18:"console-2.0.1-beta";s:8:"children";a:0:{}}i:36;a:4:{s:4:"name";s:10:"categories";s:10:"attributes";a:0:{}s:4:"text";s:29:"administration,administration";s:8:"children";a:0:{}}i:37;a:3:{s:4:"name";s:4:"tags";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}}', 2, 0, 1, 'beta', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('formz-1.1.0-pl', '2014-07-29 04:19:26', '2014-07-29 12:20:23', '2014-07-29 16:20:23', 0, 1, 1, 0, 'formz-1.1.0-pl.transport.zip', NULL, 'a:33:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:793:"--------------------\nFormz\n--------------------\nVersion: 1.1.0\nMaintainer: Mark Willis <mark.willis@adi.do>\nOriginal Author: Andrew Smith\n--------------------\n\nA Form Builder for MODx Revolution.\n\nThis Extra allows you to create Forms from a UI that interfaces with FormIt through FormItFastPack. You can store\nforms in database and also send forms via email also.\n\nFormz has two dependencies which need to be installed first. The dependencies are both\navailable through the MODX Package Management tool.\n\nDependencies as now installed:\n	FormIt (v2.2.0-pl)\n	FormitFastPack (1.1.0-pl)\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/Adido/formz/issues\n\n---------------------\nContributors\n---------------------\nRomain (French Translation)\nJoakim (Swedish Translation)\n";s:9:"changelog";s:1527:"Changelog for Formz.\n\nFormz 1.1.0\n======================\n- [Issue: #3] Now supporting MODx 2.3\n- [Issue: #2] Added dependencies as sub packages\n- [PR: #1] Added German translation\n- Added index on senton column allow for quicker exports\n- Removed sender name\n\nFormz 1.0.0 rc2\n======================\n- UI Enhancements added in\n- [#18] fiar\n- [#27] Adjusting the email\n- [#28] Specify redirect page\n- [#30] Export Submissions\n- [#35] Submission export limited to 20 rows\n\nFormz 1.0.0 rc1\n======================\n- [#23] Multiple Forms on 1 page - How To (thanks to Grey Sky Media for fix)\n- [#25] Required Bug\n\nFormz 1.0.0 Beta3\n======================\n- [#14] Default upon Form creation\n- [#13] Passing over field tags to emailTpl\n- [#10] TV to have options to set emailTpl, emailFrom, emailTo, formTpl, fieldTpl etc\n- [#9] Bug when a user has multiple form, data was not persistent\n\nFormz 1.0.0 Beta2\n======================\n- Fixed issue with installer throwing error for plugin installation\n\nFormz 1.0.0 Beta1\n======================\n- Fixed single instance of view submission window\n- Fixed field name to be based on field naming rather than label\n- Fix manager grid scaling with browser\n- Snippets and Plugins are now referenced as static files\n- Removed modResource call in snippet to use clean function\n- Added in Translations for French and Swedish (thanks to Romain and Joakim)\n- Added in Export to CSV the results\n- Added email and number validation type\n\n\nFormz 1.0.0 Alpha1/2/3\n======================\n- Initial release.\n";s:9:"signature";s:14:"formz-1.1.0-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:579:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''workspace/packages/install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connector_url,params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:42:"/workspace/package/install/formz-1.1.0-pl/";s:14:"package_action";i:0;}', 'Formz', 'a:38:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"53c936fa62cf246c130025a8";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"53c936fa62cf246c130025a7";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:14:"formz-1.1.0-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:5:"Formz";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"1.1.0";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:3:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:12:"markwillis82";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:804:"<p>--------------------Formz--------------------Version: 1.1.0Maintainer: Mark Willis &lt;mark.willis@adi.do&gt;Original Author: Andrew Smith--------------------A Form Builder for MODx Revolution.This Extra allows you to create Forms from a UI that interfaces with FormIt through FormItFastPack. You can store&nbsp;forms in database and also send forms via email also.Formz has two dependencies which need to be installed first. The dependencies are both&nbsp;available through the MODX Package Management tool.</p><p>Dependencies as now installed:	FormIt (v2.2.0-pl)	FormitFastPack (1.1.0-pl)Feel free to suggest ideas/improvements/bugs on GitHub:http://github.com/Adido/formz/issues</p><p>---------------------Contributors---------------------Romain (French Translation)Joakim (Swedish Translation)</p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:7:"<p></p>";s:8:"children";a:0:{}}i:14;a:3:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-18T15:02:18+0000";s:8:"children";a:0:{}}i:16;a:4:{s:4:"name";s:9:"createdby";s:10:"attributes";a:0:{}s:4:"text";s:12:"markwillis82";s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-21T12:30:48+0000";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-21T12:28:15+0000";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:24;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:25;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=53c936fa62cf246c130025a9";s:8:"children";a:0:{}}i:29;a:4:{s:4:"name";s:9:"signature";s:10:"attributes";a:0:{}s:4:"text";s:14:"formz-1.1.0-pl";s:8:"children";a:0:{}}i:30;a:4:{s:4:"name";s:11:"supports_db";s:10:"attributes";a:0:{}s:4:"text";s:12:"mysql,sqlsrv";s:8:"children";a:0:{}}i:31;a:4:{s:4:"name";s:16:"minimum_supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:32;a:4:{s:4:"name";s:9:"breaks_at";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.3";s:8:"children";a:0:{}}i:33;a:4:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:4:"text";s:85:"http://modx.s3.amazonaws.com/extras%2F53c936fa62cf246c130025a7%2Fformbuilder_main.jpg";s:8:"children";a:0:{}}i:34;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"53c936fa62cf246c130025a9";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"53c936fa62cf246c130025a8";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:28:"formz-1.1.0-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:4;a:3:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=53c936fa62cf246c130025a9";s:8:"children";a:0:{}}}}i:35;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:14:"formz-1.1.0-pl";s:8:"children";a:0:{}}i:36;a:4:{s:4:"name";s:10:"categories";s:10:"attributes";a:0:{}s:4:"text";s:11:"email,forms";s:8:"children";a:0:{}}i:37;a:3:{s:4:"name";s:4:"tags";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}}', 1, 1, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('migx-2.8.1-pl', '2014-07-29 04:19:40', '2014-07-29 12:20:32', '2014-07-29 16:20:32', 0, 1, 1, 0, 'migx-2.8.1-pl.transport.zip', NULL, 'a:34:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:1392:"--------------------\nMIGX\n--------------------\nVersion: 2.1.0\nAuthor: Bruno Perner <b.perner@gmx.de>\n--------------------\n\n* MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.\n* It has a configurable grid and a configurable tabbed editor-window to add and edit items.\n* Each item can have multiple fields. For each field you can use another tv-input-type.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/Bruno17/multiItemsGridTV/issues\n\nInstallation:\n\ninstall by package-management.\nCreate a new menu:\nSystem -> Actions \n\nActions-tree:\nmigx -> right-click -> create Acton here\ncontroller: index\nnamespace: migx\nlanguage-topics: migx:default,file\n\nmenu-tree:\nComponents -> right-click -> place action here\nlexicon-key: migx\naction: migx - index\nparameters: &configs=migxconfigs||packagemanager||setup\n\nclear cache\ngo to components -> migx -> setup-tab -> setup\n\nIf you are upgrading from MIGX - versions before 2.0\ngo to tab upgrade. click upgrade.\nThis will add a new autoincrementing field MIGX_id to all your MIGX-TV-items\nThe getImageList-snippet needs this field to work correctly.\n\n\nAllways after upgrading MIGX of any Version:\ngo to components -> migx -> setup-tab -> setup\n\nthis will upgrade the migx-configs-table and add new fields, if necessary.\n\n\n";s:9:"changelog";s:7928:"Changelog for MIGX.\n\nMIGX 2.8.0\n==============\nresolve tables on install\nrender cross, also when empty string\nreusable activaterelations - processors\n[migxLoopCollection] tpl_nN\n[#154] clean TV-value, if no MIGX-items \nadditional db-storage of formtabs and fields\nget menue working in MODX 2.3\nimprove description_is_code \n\n\nMIGX 2.6.8\n==============\nsome other small fixes\nrestrictive condition by processed MIGX-tags for formfields\nFilter-Button for Reset all filters to default-value\nextend date-filter\nmake cmp main caption translatable \nMigx::prepareJoins - optional rightjoin \n\nMIGX 2.6.7\n==============\nadd date - filter \nadd handlepositionselector - processor \nadd snippet exportmigx2db\n\nMIGX 2.6.6\n==============\nfixes only\n\nMIGX 2.6.5\n==============\nfixes only\n\nMIGX 2.6.4\n==============\n[redactor-field] get and use file-properties from a redactor-inputTV\nadd renderImageFromHtml - renderer\n\nMIGX 2.6.3\n==============\nconfigurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP\n\nMIGX 2.6.2\n==============\nfix issue with imported configs-field, if not an array \n\nMIGX 2.6.1\n==============\nMake Formfields translatable\n\nMIGX 2.6\n==============\n[getImageList] output inner arrays as json-string\nadded polish translation\n[getImageList] splits, build summaries\n make grid-columns translatable, let user add custom-lexicons from custom php-config-files \n\n\nMIGX 2.5.11\n==============\nadd simple MIGXdb - validation (only required for now)\nsome fixes\n\n\nMIGX 2.5.9\n==============\nlet us create new indexes, with altered field-def from schema \noptimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240\n\n\nMIGX 2.5.8\n\n==============\nAdded ''showScreenshot'' (big image in popup) \nAdded template-field for direct template-input for renderChunk\nAdded position - selector for new MIGX - items\nFix for not removed rte-editors when using formswitcher\nsend current store-params to iframe-window\n\n\nMIGX 2.5.6\n\n==============\n\nAdd support for the modmore.com Redactor editor \nsome work on multiuploader for MIGXdb\nmore eNotice - fixes\n\n\nMIGX 2.5.2\n\n==============\nread input-options into MIGX-TV\nrespect filter in default - export.php\nfix for empty value in TV - configs not loading renderers etc.\nfix changed processaction-param after export2csv \nstopEvent() by onClick - event\n\nMIGX 2.5.1\n\n==============\nfix bug with renderChunk - renderer\n\nMIGX 2.5\n\n==============\nget different rtes working - support for tinymce, ckeditor \nsome settings for MIGXfe\ncs - lexicons, \nsome eNotice - fixes\nfix with to big integers on TV-id (set phptype to string)\nlimit MIGX-record-count\n\n\nMIGX 2.4.2\n\n==============\ncolumnButtons for the migx - grid \nlittle form-layout-mods\nadded the option to have the first formtab outside the other tabs above of them.\n\nadded the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - \nsnippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.\n\nmigxupdate for MIGXfe\ndefault-values for MIGXdb-filters\nupdate co_id in iframe-window\nadd a searchbox to MIGX-Configurator\nread configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs\n\n\nMIGX 2.4.1\n\n==============\nsome new snippets:\ngetDayliMIGXrecord\nmigxgetrelations\n\nadded beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree\nadd window-title configuration, make window-caption dynamic (its possible to use placeholders now)\nhide tabs in form, when only one tab\nadded selectposition - renderer\n\n\nMIGX 2.4.0\n\n==============\nnew renderer - switchStatusOptions\nnew renderer - renderChunk\ngetImageList - added ''contains'' and ''snippet'' - where-filters\nadd duplicate-contextmenue to MIGXdb \nnew property for getImageList: &reverse\ngive TVs in each CMP-tab a unique id\nrefresh grid after closing iframe-window\nadded tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList\nexport jsonarray-fields as separate fields in csv-export\nalias, breadcrumb and ultimateparent for migxREsourceMediaPath\nAdded TV - description - field to configuration\n\n\nMIGX 2.3.1\n\n==============\nsome eNotice - error - fixes\nadd type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41\n\nMIGX 2.3.0\n\n==============\nadd multifile - uploader, upload to MIGX - mediasource\nadd load from mediasource - button to MIGX\nadd migxResourcePath - snippet\nadd iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.\n\n\nMIGX 2.2.3\n\n==============\nconfirmation before overriding schema-files\nsome additions for childresources-management by MIGXdb\nswitch between multiple forms - configurations\nadd renderDate - renderer , thanks to Jako\nadditional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.\nadd parent-property for dynamic filter-comboboxes\nadd getliste-where for default getlist-processor\nexport formtabs as clean json in editraw-mode\n\n\nMIGX 2.2.2\n\n==============\nadd migxLoopCollection-snippet\nmove prepareJoins into a migx-method\nconfirmation before remove db-record, getcombo did not use idfield \nallow empty prefix \nadd possibility to use tables without ''deleted'' - field and default-getlist-processor\nfix Call-time pass-by-reference errors\nget tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs \nfix prefix not sended to writeSchema\ngrid add cls ''main-wrapper'' to give it a bit padding, thanks to jako\n\n\nMIGX 2.2.0\n\n==============\n\nexport/import configuration-objects as json to/from files in custom-package-directories \nnew configs: getlist - defaultsort, joins, gridload_mode (by button, auto) \ngrid-smarty-template now can be also in custom-package-directories\nreworked handling of joined objects in default update-php \nadd connected_object_id baseparam to migx-grid\nadded snippet migxLoopCollection\n\n\nMIGX 2.1.1\n\n==============\n\n  fix for migx-snippet not working with multiple calls on one page\n  resource_id as script-property for getlist-processor when used with migx-snippet\n\nMIGX 2.1.0\n\n==============\n\n  add &sort to the getImageList - snippet\n  add new snippet ''migx'' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager\n  make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages\n  more MIGXdb - configurations\n\n\nMIGX 2.0.1\n\n==============\n\n  more E_NOTICE - Error - fixes\n  Fix Missing Add - Item - Replacement - String \n\nMIGX 2.0.0\n\n==============\n\n- pl\n\n  fix for Revo 2.2.2\n  fix some E_NOTICE - errors\n\n- new in beta5\n\n  Configure multiple CMP - tabs\n  packagemanager ported to extjs - tab\n  added MIGX-setup/upgrade - tab\n  added configurable text and combo - filterboxes\n\n- new in beta3\n\n  This is a preview-version of MIGXdb\n  MIGXdb can now also be used as configurable CMP\n  MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP\n  Package-manager, create and edit schemas and package-tables\n\n- new:\n  better compatibility with revo 2.2\n  working with mediasources\n  introduced MIGXdb\n\n\nMIGX 1.2.0\n==============\n- new:\n  merge scriptProperties to Placeholders \n  basic compatibility for modx 2.2 \n  autoinc-field: MIGX_id\n  autoResourceFolders - functionality, autoCreate directory for each resource\n  \n  \n- fixed:\n  url-TV support\n  context-based base_path issues\n  remove remaining []\n  remove Tiny-instances when switching form\n  enter on textarea closes window\n  fireResourceFormChange for drag,remove,duplicate \n\nMIGX 1.1.0\n==============\n- new:\n  &docidVarKey\n  &processTVs\n  \n- fixed:\n  context-filepath-issue\n\nMIGX 1.0.0\n==============\n- Initial release.";s:13:"setup-options";a:0:{}s:9:"signature";s:13:"migx-2.8.1-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:579:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''workspace/packages/install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connector_url,params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:41:"/workspace/package/install/migx-2.8.1-pl/";s:14:"package_action";i:0;}', 'MIGX', 'a:38:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"53a9140662cf246b75001aec";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4db018def24554690c000005";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:13:"migx-2.8.1-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:4:"MIGX";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"2.8.1";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"8";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:3:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:7:"Bruno17";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:676:"<p>MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.</p><p>It has a cofigurable grid and a configurable tabbed editor-window to add and edit items.</p><p>Each item can have multiple fields. For each field you can use another tv-input-type.</p><p>MIGXdb can manage (resource-related) custom-db-table-items in a TV and can help to create CMPs for custom-db-tables</p><p>See the official documentation here:&nbsp;<a href="http://rtfm.modx.com/display/addon/MIGX" style="color: rgb(15, 112, 150); " title="" target="">http://rtfm.modx.com/display/addon/MIGX</a></p><p></p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:5876:"<p></p><p style="margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;">Installation:Install via Package Management.</p><p style="margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;">For MIGX and MIGXdb - Configuration - Management:</p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; ">Create a new menu:System -&gt; Actions Actions-tree:migx -&gt; right-click -&gt; create Acton herecontroller: indexnamespace: migxlanguage-topics: migx:default,filemenu-tree:Components -&gt; right-click -&gt; place action herelexicon-key: migxaction: migx - indexparameters: &amp;configs=migxconfigs||packagemanager||setupclear cachego to components -&gt; migx -&gt; setup-tab -&gt; setupIf you are upgrading from MIGX - versions before 2.0go to tab upgrade. click upgrade.This will add a new autoincrementing field MIGX_id to all your MIGX-TV-itemsThe getImageList-snippet needs this field to work correctly.</p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; "><b style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; ">Note:</b>&nbsp;Make sure to remove older versions of multiItemsGridTv and the multiitemsgridTv-namespace, if you had them tried from Github.</p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; "><b style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; ">Note</b>: Input Options for the MIGX only work for Revolution 2.1.0-rc2 and later.</p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; "></p><p style="margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; "></p>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:9641:"<p>Changelog for MIGX.</p><p>MIGX 2.8.1==============</p><ul><li>lets disable the ''Add Item'' - button</li><li>new configs gridperpage and sortconfig</li><li>wrapperTpl for getImageList and migxLoopCollection</li></ul><p>MIGX 2.8.0==============</p><ul><li>resolve tables on install</li><li>render cross, also when empty string</li><li>reusable activaterelations - processors</li><li>&#91;migxLoopCollection&#93; tpl_nN</li><li>&#91;#154&#93; clean TV-value, if no MIGX-items </li><li>additional db-storage of formtabs and fields</li><li>get menue working in MODX 2.3</li><li>improve description_is_code </li></ul><p></p><p>MIGX 2.6.8==============</p><ul><li>some other small fixes</li><li>restrictive condition by processed MIGX-tags for formfields</li><li>Filter-Button for Reset all filters to default-value</li><li>extend date-filter</li><li>make cmp main caption translatable </li><li>Migx::prepareJoins - optional rightjoin </li></ul><p></p><p>MIGX 2.6.7==============</p><ul><li>add date - filter </li><li>add handlepositionselector - processor </li><li>add snippet exportmigx2db</li></ul><p>MIGX 2.6.6==============</p><ul><li>fixes only</li></ul><p></p><p>MIGX 2.6.5==============</p><ul><li>fix bug with migxResourceMediaPath</li></ul><p>MIGX 2.6.5==============</p><ul><li>fix not working richtext-editors in MIGXdb</li><li>add emptyThrash - process to MIGXdb</li></ul><p>MIGX 2.6.4==============</p><ul><li>&#91;redactor-field&#93; get and use file-properties from a redactor-inputTV</li><li>add renderImageFromHtml - renderer</li></ul><p>MIGX 2.6.3==============</p><ul><li>configurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP</li></ul><p></p><p>MIGX 2.6.2</p><p>==============</p><ul><li>fix issue with imported configs-field, if not an array\n      </li></ul><p></p><p>MIGX 2.6.1</p><p>==============</p><ul><li>Make Formfields translatable</li></ul><p></p><p>MIGX 2.6</p><p>==============</p><ul><li>&#91;getImageList&#93; output inner arrays as json-string</li><li>added polish translation</li><li>&#91;getImageList&#93; splits, build summaries</li><li>&nbsp;make grid-columns translatable, let user add custom-lexicons from custom php-config-files </li></ul><p>MIGX 2.5.11</p><p>==============</p><ul><li>add simple MIGXdb - validation (only required for now)</li><li>some fixes</li></ul><p></p><p>MIGX 2.5.9</p><p>==============</p><ul><li>let us create new indexes, with altered field-def from schema </li><li>optimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240</li></ul><p></p><p>MIGX 2.5.8</p><p>==============</p><ul><li>Added ''showScreenshot'' (big image in popup) </li><li>Added template-field for direct template-input for renderChunk</li><li>Added position - selector for new MIGX - items</li><li>Fix for not removed rte-editors when using formswitcher</li><li>send current store-params to iframe-window</li></ul><p></p><p>MIGX 2.5.6</p><p>==============</p><ul><li>Add support for the modmore.com Redactor editor\n</li><li>some work on multiuploader for MIGXdb</li><li>more eNotice - fixes</li></ul><p></p><p>MIGX 2.5.2</p><p>==============</p><ul><li>read input-options into MIGX-TV</li><li>respect filter in default - export.php</li><li>fix for empty value in TV - configs not loading renderers etc.</li><li>fix changed processaction-param after export2csv </li><li>stopEvent() by onClick - event</li></ul><p></p><p>MIGX 2.5.1</p><p>==============</p><ul><li>fix bug with renderChunk - renderer</li></ul><p></p><p>MIGX 2.5</p><p>==============</p><ul><li>get different rtes working - support for tinymce, ckeditor </li><li>some settings for MIGXfe</li><li>cs - lexicons, </li><li>some eNotice - fixes</li><li>fix with to big integers on TV-id (set phptype to string)</li><li>limit MIGX-record-count</li></ul><p></p><p>MIGX 2.4.2</p><p>==============</p><ul><li>columnButtons for the migx - grid </li><li>little form-layout-mods</li><li>added the option to have the first formtab outside the other tabs above of them.</li><li>added the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - </li><li>snippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.</li><li>migxupdate for MIGXfe</li><li>default-values for MIGXdb-filters</li><li>update co_id in iframe-window</li><li>add a searchbox to MIGX-Configurator</li><li>read configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs</li></ul><p>MIGX 2.4.1</p><p>==============</p><p>some new snippets:</p><ul><li>getDayliMIGXrecord</li><li>migxgetrelations</li></ul><p></p><ul><li>added beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree</li><li>add window-title configuration, make window-caption dynamic (its possible to use placeholders now)</li><li>hide tabs in form, when only one tab</li><li>added selectposition - renderer</li></ul><p>MIGX 2.4.0</p><p>==============</p><ul><li>new renderer - switchStatusOptions</li><li>new renderer - renderChunk</li><li>getImageList - added ''contains'' and ''snippet'' - where-filters</li><li>add duplicate-contextmenue to MIGXdb </li><li>new property for getImageList: &amp;reverse</li><li>give TVs in each CMP-tab a unique id</li><li>refresh grid after closing iframe-window</li><li>added tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList</li><li>export jsonarray-fields as separate fields in csv-export</li><li>alias, breadcrumb and ultimateparent for migxREsourceMediaPath</li><li>Added TV - description - field to configuration</li></ul><p></p><p>MIGX 2.3.1</p><p>==============</p><ul><li>some eNotice - error - fixes</li><li>add type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41</li></ul><p></p><p>MIGX 2.3.0</p><p>==============</p><ul><li>add multifile - uploader, upload to MIGX - mediasource</li><li>add load from mediasource - button to MIGX</li><li>add migxResourcePath - snippet</li><li>add iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.</li></ul><p></p><p>MIGX 2.2.3</p><p>==============</p><ul><li>confirmation before overriding schema-files</li><li>some additions for childresources-management by MIGXdb</li><li>switch between multiple forms - configurations</li><li>add renderDate - renderer , thanks to Jako</li><li>additional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.</li><li>add parent-property for dynamic filter-comboboxes</li><li>add getliste-where for default getlist-processor</li><li>export formtabs as clean json in editraw-mode</li></ul><p></p><p>MIGX 2.2.2</p><p>==============</p><ul><li>add migxLoopCollection-snippet</li><li>move prepareJoins into a migx-method</li><li>confirmation before remove db-record, getcombo did not use idfield </li><li>allow empty prefix </li><li>add possibility to use tables without ''deleted'' - field and default-getlist-processor</li><li>fix Call-time pass-by-reference errors</li><li>get tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs </li><li>fix prefix not sended to writeSchema</li><li>grid add cls ''main-wrapper'' to give it a bit padding, thanks to jako</li></ul><p></p><p>MIGX 2.2.0</p><p>==============</p><ul><li>export/import configuration-objects as json to/from files in custom-package-directories </li><li>new configs: getlist - defaultsort, joins, gridload_mode (by button, auto) </li><li>grid-smarty-template now can be also in custom-package-directories</li><li>reworked handling of joined objects in default update-php </li><li>add connected_object_id baseparam to migx-grid</li><li>added snippet migxLoopCollection</li></ul><p></p><p>MIGX 2.1.1</p>\n<p>==============</p>\n<ul><li>fix for migx-snippet not working with multiple calls on one page\n      </li><li>resource_id as script-property for getlist-processor when used with migx-snippet</li></ul>\n\n      <p>MIGX 2.1.0</p><p>==============</p><ul><li>&nbsp; add &amp;sort to the getImageList - snippet</li><li>&nbsp; add new snippet ''migx'' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager</li><li>&nbsp; make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages</li><li>&nbsp; more MIGXdb - configurations</li></ul><p>MIGX 2.0.1</p><p>==============</p><ul><li>more E_NOTICE - Error - fixes</li><li>Fix Missing Add - Item - Replacement - String </li></ul><p></p><p>MIGX 2.0.0</p><p>==============</p><p>- pl</p><ul><li>&nbsp; fix for Revo 2.2.2</li><li>&nbsp; fix some E_NOTICE - errors</li></ul><p></p><p>- new in beta5</p><ul><li>&nbsp; Configure multiple CMP - tabs</li><li>&nbsp; packagemanager ported to extjs - tab</li><li>&nbsp; added MIGX-setup/upgrade - tab</li><li>&nbsp; added configurable text and combo - filterboxes</li></ul><p></p><p>- new in beta3</p><ul><li>&nbsp; This is a preview-version of MIGXdb</li><li>&nbsp; MIGXdb can now also be used as configurable CMP</li><li>&nbsp; MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP</li><li>&nbsp; Package-manager, create and edit schemas and package-tables</li></ul><p></p><p>- new:</p><ul><li>&nbsp; better compatibility with revo 2.2</li></ul><ul><li>&nbsp; working with mediasources</li></ul><ul><li>&nbsp; starting with MIGXdb (very dev)</li></ul>";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-06-24T06:00:38+0000";s:8:"children";a:0:{}}i:16;a:4:{s:4:"name";s:9:"createdby";s:10:"attributes";a:0:{}s:4:"text";s:7:"Bruno17";s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-29T12:14:13+0000";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-06-24T06:00:38+0000";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"34382";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:24;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:25;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=53a9140762cf246b75001aee";s:8:"children";a:0:{}}i:29;a:4:{s:4:"name";s:9:"signature";s:10:"attributes";a:0:{}s:4:"text";s:13:"migx-2.8.1-pl";s:8:"children";a:0:{}}i:30;a:4:{s:4:"name";s:11:"supports_db";s:10:"attributes";a:0:{}s:4:"text";s:5:"mysql";s:8:"children";a:0:{}}i:31;a:4:{s:4:"name";s:16:"minimum_supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:32;a:4:{s:4:"name";s:9:"breaks_at";s:10:"attributes";a:0:{}s:4:"text";s:8:"10000000";s:8:"children";a:0:{}}i:33;a:4:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:4:"text";s:70:"http://modx.s3.amazonaws.com/extras/4db018def24554690c000005/migx1.JPG";s:8:"children";a:0:{}}i:34;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"53a9140762cf246b75001aee";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"53a9140662cf246b75001aec";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:27:"migx-2.8.1-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:4:"2613";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:11:"84.47.142.3";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=53a9140762cf246b75001aee";s:8:"children";a:0:{}}}}i:35;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:13:"migx-2.8.1-pl";s:8:"children";a:0:{}}i:36;a:4:{s:4:"name";s:10:"categories";s:10:"attributes";a:0:{}s:4:"text";s:15:"content,gallery";s:8:"children";a:0:{}}i:37;a:4:{s:4:"name";s:4:"tags";s:10:"attributes";a:0:{}s:4:"text";s:46:"migx,multiitems,multitv,migxdb,CMP,MIGX,MIGXdb";s:8:"children";a:0:{}}}', 2, 8, 1, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('translit-1.0.0-beta', '2014-07-29 04:20:00', '2014-07-29 12:20:39', '2014-07-29 16:20:39', 0, 1, 1, 0, 'translit-1.0.0-beta.transport.zip', NULL, 'a:32:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:453:"--------------------\nExtension: translit\n--------------------\nVersion: 1.0.0-beta\nReleased: October 20, 2010\nSince: October 20, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA MODx Revolution Core Extension, the translit package provides a custom transliteration service class. When installed,\nthis is automatically available for the core Friendly URL alias transliteration process for Resources. You can also use\nthe service in your plugins and snippets.";s:9:"signature";s:19:"translit-1.0.0-beta";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:579:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''workspace/packages/install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connector_url,params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:47:"/workspace/package/install/translit-1.0.0-beta/";s:14:"package_action";i:0;}', 'translit', 'a:38:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556cf0b2b083396d000eeb";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556cf0b2b083396d000eea";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:19:"translit-1.0.0-beta";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:8:"translit";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"1.0.0";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:4:"beta";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:4:"beta";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:8:"opengeek";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:585:"<p>A service class that allows custom transliteration tables to be used when auto-creating or sanitizing friendly URL aliases in MODx Revolution. This initial beta release includes three tables that can be specified as the friendly_alias_translit System Setting:</p>\n<p><ol>\n<li>noaccents</li>\n<li>russian</li>\n<li>german</li>\n</ol>\nCustom named transliteration tables can be manually added to the {core_path}components/translit/model/modx/translit/tables/ directory and configured. Additional contributed transliteration tables will be included in future releases of the package.\n</p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:37:"<p>Install via Package Management</p>";s:8:"children";a:0:{}}i:14;a:3:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2010-10-20T11:53:35+0000";s:8:"children";a:0:{}}i:16;a:4:{s:4:"name";s:9:"createdby";s:10:"attributes";a:0:{}s:4:"text";s:8:"opengeek";s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-29T12:14:44+0000";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2010-10-20T11:57:11+0000";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"36013";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:24;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:25;a:4:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:4:"text";s:47:"http://modxcms.com/forums/index.php?topic=56059";s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4d556cf1b2b083396d000eec";s:8:"children";a:0:{}}i:29;a:4:{s:4:"name";s:9:"signature";s:10:"attributes";a:0:{}s:4:"text";s:19:"translit-1.0.0-beta";s:8:"children";a:0:{}}i:30;a:4:{s:4:"name";s:11:"supports_db";s:10:"attributes";a:0:{}s:4:"text";s:5:"mysql";s:8:"children";a:0:{}}i:31;a:4:{s:4:"name";s:16:"minimum_supports";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:32;a:4:{s:4:"name";s:9:"breaks_at";s:10:"attributes";a:0:{}s:4:"text";s:8:"10000000";s:8:"children";a:0:{}}i:33;a:3:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:34;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556cf1b2b083396d000eec";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556cf0b2b083396d000eeb";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:33:"translit-1.0.0-beta.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"36092";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:11:"84.47.142.3";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4d556cf1b2b083396d000eec";s:8:"children";a:0:{}}}}i:35;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:19:"translit-1.0.0-beta";s:8:"children";a:0:{}}i:36;a:4:{s:4:"name";s:10:"categories";s:10:"attributes";a:0:{}s:4:"text";s:36:"internationalization,core-extensions";s:8:"children";a:0:{}}i:37;a:4:{s:4:"name";s:4:"tags";s:10:"attributes";a:0:{}s:4:"text";s:15:"transliteration";s:8:"children";a:0:{}}}', 1, 0, 0, 'beta', 0),
('formitfastpack-1.1.0-pl', '2014-07-29 04:20:22', '2014-07-29 12:20:24', '2014-07-29 16:20:22', 0, 1, 1, 0, 'formz-1.1.0-pl/xPDOTransportVehicle/0f099e01b0bb7721568642077e7125e6/formitfastpack-1.1.0-pl.transport.zip', NULL, 'a:3:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:393:"--------------------\nSnippet: FormitFastPack\n--------------------\nVersion: 1.0.0 alpha\nStarted: June 2011\nAuthor: Oleg Pryadko (websitezen.com)\nLicense: GNU GPLv3 (or later at your option)\n\n# Help and Docs:\n* Documentation: https://github.com/yoleg/FormitFastPack/wiki\n* Issue Tracker: https://github.com/yoleg/FormitFastPack/issues\n* Forum: http://forums.modx.com/index.php/topic,65244.0.html";s:9:"changelog";s:791:"Changelog for FormitFastPack.\n\nFormitFastPack 1.1.0 pl\n======================================\n- Various bug fixes\n- Added several field parameters, including &default_value\n- Updated example property set in the fieldPropSetExample snippet.\n\nFormitFastPack 1.0.0 alpha\n======================================\n- Fixed value refresh bug (Revo 2.2?)\n- Speed optimization\n- Refactoring for OOP\n- Various options tweaked, not all options fully tested yet\n\nFormitFastPack 0.1.1 beta - 0.1.4 beta\n======================================\n- added support for options and field_html generated from any element\n- added error prefix override (for better compatibility with EditProfile)\n- changed the default chunk names\n\n\nFormitFastPack 0.1.0 beta\n======================================\n- starting version\n";}', 'formitfastpack', NULL, 1, 1, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('ace-1.5.0-pl', '2014-07-29 05:24:21', '2014-07-29 13:24:32', '2014-07-29 17:24:32', 0, 1, 1, 0, 'ace-1.5.0-pl.transport.zip', NULL, 'a:33:{s:7:"license";s:15504:"GNU GENERAL PUBLIC LICENSE\r\n   Version 2, June 1991\r\n--------------------------\r\n\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\r\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\r\n\r\nEveryone is permitted to copy and distribute verbatim copies\r\nof this license document, but changing it is not allowed.\r\n\r\nPreamble\r\n--------\r\n\r\n  The licenses for most software are designed to take away your\r\nfreedom to share and change it.  By contrast, the GNU General Public\r\nLicense is intended to guarantee your freedom to share and change free\r\nsoftware--to make sure the software is free for all its users.  This\r\nGeneral Public License applies to most of the Free Software\r\nFoundation''s software and to any other program whose authors commit to\r\nusing it.  (Some other Free Software Foundation software is covered by\r\nthe GNU Library General Public License instead.)  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthis service if you wish), that you receive source code or can get it\r\nif you want it, that you can change the software or use pieces of it\r\nin new free programs; and that you know you can do these things.\r\n\r\n  To protect your rights, we need to make restrictions that forbid\r\nanyone to deny you these rights or to ask you to surrender the rights.\r\nThese restrictions translate to certain responsibilities for you if you\r\ndistribute copies of the software, or if you modify it.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must give the recipients all the rights that\r\nyou have.  You must make sure that they, too, receive or can get the\r\nsource code.  And you must show them these terms so they know their\r\nrights.\r\n\r\n  We protect your rights with two steps: (1) copyright the software, and\r\n(2) offer you this license which gives you legal permission to copy,\r\ndistribute and/or modify the software.\r\n\r\n  Also, for each author''s protection and ours, we want to make certain\r\nthat everyone understands that there is no warranty for this free\r\nsoftware.  If the software is modified by someone else and passed on, we\r\nwant its recipients to know that what they have is not the original, so\r\nthat any problems introduced by others will not reflect on the original\r\nauthors'' reputations.\r\n\r\n  Finally, any free program is threatened constantly by software\r\npatents.  We wish to avoid the danger that redistributors of a free\r\nprogram will individually obtain patent licenses, in effect making the\r\nprogram proprietary.  To prevent this, we have made it clear that any\r\npatent must be licensed for everyone''s free use or not licensed at all.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n\r\nGNU GENERAL PUBLIC LICENSE\r\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\r\n---------------------------------------------------------------\r\n\r\n  0. This License applies to any program or other work which contains\r\na notice placed by the copyright holder saying it may be distributed\r\nunder the terms of this General Public License.  The "Program", below,\r\nrefers to any such program or work, and a "work based on the Program"\r\nmeans either the Program or any derivative work under copyright law:\r\nthat is to say, a work containing the Program or a portion of it,\r\neither verbatim or with modifications and/or translated into another\r\nlanguage.  (Hereinafter, translation is included without limitation in\r\nthe term "modification".)  Each licensee is addressed as "you".\r\n\r\nActivities other than copying, distribution and modification are not\r\ncovered by this License; they are outside its scope.  The act of\r\nrunning the Program is not restricted, and the output from the Program\r\nis covered only if its contents constitute a work based on the\r\nProgram (independent of having been made by running the Program).\r\nWhether that is true depends on what the Program does.\r\n\r\n  1. You may copy and distribute verbatim copies of the Program''s\r\nsource code as you receive it, in any medium, provided that you\r\nconspicuously and appropriately publish on each copy an appropriate\r\ncopyright notice and disclaimer of warranty; keep intact all the\r\nnotices that refer to this License and to the absence of any warranty;\r\nand give any other recipients of the Program a copy of this License\r\nalong with the Program.\r\n\r\nYou may charge a fee for the physical act of transferring a copy, and\r\nyou may at your option offer warranty protection in exchange for a fee.\r\n\r\n  2. You may modify your copy or copies of the Program or any portion\r\nof it, thus forming a work based on the Program, and copy and\r\ndistribute such modifications or work under the terms of Section 1\r\nabove, provided that you also meet all of these conditions:\r\n\r\n    a) You must cause the modified files to carry prominent notices\r\n    stating that you changed the files and the date of any change.\r\n\r\n    b) You must cause any work that you distribute or publish, that in\r\n    whole or in part contains or is derived from the Program or any\r\n    part thereof, to be licensed as a whole at no charge to all third\r\n    parties under the terms of this License.\r\n\r\n    c) If the modified program normally reads commands interactively\r\n    when run, you must cause it, when started running for such\r\n    interactive use in the most ordinary way, to print or display an\r\n    announcement including an appropriate copyright notice and a\r\n    notice that there is no warranty (or else, saying that you provide\r\n    a warranty) and that users may redistribute the program under\r\n    these conditions, and telling the user how to view a copy of this\r\n    License.  (Exception: if the Program itself is interactive but\r\n    does not normally print such an announcement, your work based on\r\n    the Program is not required to print an announcement.)\r\n\r\nThese requirements apply to the modified work as a whole.  If\r\nidentifiable sections of that work are not derived from the Program,\r\nand can be reasonably considered independent and separate works in\r\nthemselves, then this License, and its terms, do not apply to those\r\nsections when you distribute them as separate works.  But when you\r\ndistribute the same sections as part of a whole which is a work based\r\non the Program, the distribution of the whole must be on the terms of\r\nthis License, whose permissions for other licensees extend to the\r\nentire whole, and thus to each and every part regardless of who wrote it.\r\n\r\nThus, it is not the intent of this section to claim rights or contest\r\nyour rights to work written entirely by you; rather, the intent is to\r\nexercise the right to control the distribution of derivative or\r\ncollective works based on the Program.\r\n\r\nIn addition, mere aggregation of another work not based on the Program\r\nwith the Program (or with a work based on the Program) on a volume of\r\na storage or distribution medium does not bring the other work under\r\nthe scope of this License.\r\n\r\n  3. You may copy and distribute the Program (or a work based on it,\r\nunder Section 2) in object code or executable form under the terms of\r\nSections 1 and 2 above provided that you also do one of the following:\r\n\r\n    a) Accompany it with the complete corresponding machine-readable\r\n    source code, which must be distributed under the terms of Sections\r\n    1 and 2 above on a medium customarily used for software interchange; or,\r\n\r\n    b) Accompany it with a written offer, valid for at least three\r\n    years, to give any third party, for a charge no more than your\r\n    cost of physically performing source distribution, a complete\r\n    machine-readable copy of the corresponding source code, to be\r\n    distributed under the terms of Sections 1 and 2 above on a medium\r\n    customarily used for software interchange; or,\r\n\r\n    c) Accompany it with the information you received as to the offer\r\n    to distribute corresponding source code.  (This alternative is\r\n    allowed only for noncommercial distribution and only if you\r\n    received the program in object code or executable form with such\r\n    an offer, in accord with Subsection b above.)\r\n\r\nThe source code for a work means the preferred form of the work for\r\nmaking modifications to it.  For an executable work, complete source\r\ncode means all the source code for all modules it contains, plus any\r\nassociated interface definition files, plus the scripts used to\r\ncontrol compilation and installation of the executable.  However, as a\r\nspecial exception, the source code distributed need not include\r\nanything that is normally distributed (in either source or binary\r\nform) with the major components (compiler, kernel, and so on) of the\r\noperating system on which the executable runs, unless that component\r\nitself accompanies the executable.\r\n\r\nIf distribution of executable or object code is made by offering\r\naccess to copy from a designated place, then offering equivalent\r\naccess to copy the source code from the same place counts as\r\ndistribution of the source code, even though third parties are not\r\ncompelled to copy the source along with the object code.\r\n\r\n  4. You may not copy, modify, sublicense, or distribute the Program\r\nexcept as expressly provided under this License.  Any attempt\r\notherwise to copy, modify, sublicense or distribute the Program is\r\nvoid, and will automatically terminate your rights under this License.\r\nHowever, parties who have received copies, or rights, from you under\r\nthis License will not have their licenses terminated so long as such\r\nparties remain in full compliance.\r\n\r\n  5. You are not required to accept this License, since you have not\r\nsigned it.  However, nothing else grants you permission to modify or\r\ndistribute the Program or its derivative works.  These actions are\r\nprohibited by law if you do not accept this License.  Therefore, by\r\nmodifying or distributing the Program (or any work based on the\r\nProgram), you indicate your acceptance of this License to do so, and\r\nall its terms and conditions for copying, distributing or modifying\r\nthe Program or works based on it.\r\n\r\n  6. Each time you redistribute the Program (or any work based on the\r\nProgram), the recipient automatically receives a license from the\r\noriginal licensor to copy, distribute or modify the Program subject to\r\nthese terms and conditions.  You may not impose any further\r\nrestrictions on the recipients'' exercise of the rights granted herein.\r\nYou are not responsible for enforcing compliance by third parties to\r\nthis License.\r\n\r\n  7. If, as a consequence of a court judgment or allegation of patent\r\ninfringement or for any other reason (not limited to patent issues),\r\nconditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot\r\ndistribute so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you\r\nmay not distribute the Program at all.  For example, if a patent\r\nlicense would not permit royalty-free redistribution of the Program by\r\nall those who receive copies directly or indirectly through you, then\r\nthe only way you could satisfy both it and this License would be to\r\nrefrain entirely from distribution of the Program.\r\n\r\nIf any portion of this section is held invalid or unenforceable under\r\nany particular circumstance, the balance of the section is intended to\r\napply and the section as a whole is intended to apply in other\r\ncircumstances.\r\n\r\nIt is not the purpose of this section to induce you to infringe any\r\npatents or other property right claims or to contest validity of any\r\nsuch claims; this section has the sole purpose of protecting the\r\nintegrity of the free software distribution system, which is\r\nimplemented by public license practices.  Many people have made\r\ngenerous contributions to the wide range of software distributed\r\nthrough that system in reliance on consistent application of that\r\nsystem; it is up to the author/donor to decide if he or she is willing\r\nto distribute software through any other system and a licensee cannot\r\nimpose that choice.\r\n\r\nThis section is intended to make thoroughly clear what is believed to\r\nbe a consequence of the rest of this License.\r\n\r\n  8. If the distribution and/or use of the Program is restricted in\r\ncertain countries either by patents or by copyrighted interfaces, the\r\noriginal copyright holder who places the Program under this License\r\nmay add an explicit geographical distribution limitation excluding\r\nthose countries, so that distribution is permitted only in or among\r\ncountries not thus excluded.  In such case, this License incorporates\r\nthe limitation as if written in the body of this License.\r\n\r\n  9. The Free Software Foundation may publish revised and/or new versions\r\nof the General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\nEach version is given a distinguishing version number.  If the Program\r\nspecifies a version number of this License which applies to it and "any\r\nlater version", you have the option of following the terms and conditions\r\neither of that version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number of\r\nthis License, you may choose any version ever published by the Free Software\r\nFoundation.\r\n\r\n  10. If you wish to incorporate parts of the Program into other free\r\nprograms whose distribution conditions are different, write to the author\r\nto ask for permission.  For software which is copyrighted by the Free\r\nSoftware Foundation, write to the Free Software Foundation; we sometimes\r\nmake exceptions for this.  Our decision will be guided by the two goals\r\nof preserving the free status of all derivatives of our free software and\r\nof promoting the sharing and reuse of software generally.\r\n\r\nNO WARRANTY\r\n-----------\r\n\r\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\r\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\r\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\r\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\r\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\r\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\r\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\r\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\r\nREPAIR OR CORRECTION.\r\n\r\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\r\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\r\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\r\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\r\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\r\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\r\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\r\nPOSSIBILITY OF SUCH DAMAGES.\r\n\r\n---------------------------\r\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:323:"--------------------\r\nExtra: Ace\r\n--------------------\r\nVersion: 1.5.0\r\nCreated: March 26th, 2014\r\nSince: March 29th, 2012\r\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\r\nLicense: GNU GPLv2 (or later at your option)\r\n\r\nIntegrates Ace Code Editor into MODx Revolution.\r\n\r\nPress Ctrl+Alt+H to see all available shortcuts.";s:9:"changelog";s:3059:"Changelog for Ace integration into MODx Revolution.\r\n\r\nAce 1.5.0\r\n====================================\r\n- Changed: Assets are moved back to /assets/\r\n- Fixed: MODx tag completions (was completely broken)\r\n- Added: Editor height setting\r\n\r\nAce 1.4.3\r\n====================================\r\n- Added: MODx tag completions (Ctrl+Space)\r\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag''n''drop bug\r\n\r\nAce 1.4.2\r\n====================================\r\n- Added: Undo coalescing\r\n- Changed: Mac fullscreen command is bound to Command+F12\r\n- Added: Drag delay (allow to start new selection inside current one) for Mac\r\n- Fixed: Use file extension of static chunks to detect code syntax\r\n\r\n\r\nAce 1.4.1\r\n====================================\r\n- Fixed: Tab handling\r\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\r\n- Added: Expandable snippets support (see ace.snippets setting)\r\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\r\n\r\nAce 1.4.0\r\n====================================\r\n- Added: Emmet (aka Zen Coding) support\r\n- Added: Terminal dark theme\r\n- Added: Hotkey table (Ctrl+Alt+H)\r\n- Fixed: Resource overview fatal error\r\n- Changed: Assets are moved to /manager/assets/components/\r\n\r\nAce 1.3.3\r\n====================================\r\n- Added: PHP live syntax check\r\n- Added: Chaos dark theme\r\n- Added: Setting show_invisibles\r\n\r\n\r\nAce 1.3.2\r\n====================================\r\n- Fixed: The bug while installing the Ace\r\n- Fixed: Broken word_wrap setting\r\n- Added: Tab settings (tab size, soft tab)\r\n- Added: Now completele compatible with AjaxManager extra\r\n\r\n\r\nAce 1.3.1\r\n====================================\r\n- Changed: Plugin content now is stored in static file\r\n\r\n\r\nAce 1.3.0\r\n====================================\r\n- Added: German translation\r\n- Added: MODx tags highlighting\r\n- Added: Ambiance and xcode themes\r\n- Added: less/scss syntax highlighting\r\n- Added: Fullwindow mode (Ctrl + F11)\r\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\r\n\r\n\r\nAce 1.2.1\r\n====================================\r\n- Changed: Assets are moved to manager folder\r\n- Added: Font size setting\r\n- Added: "GitHub" theme\r\n- Added: Support of html5 drag''n''drop (accepting of dropped text)\r\n- Added: XML / HTML tag autoclosing\r\n- Fixed: broken en lexicon and php 5.3 incompatibility\r\n\r\n\r\nAce 1.2.0\r\n====================================\r\n- Removed: Some unnecessary options\r\n- Changed: Editor options are moved to system settings\r\n- Fixed: Multiple little editor bugs\r\n- Added: Add missing "OnFileEditFormPrerender" event to MODx\r\n- Added: Multiline editing\r\n- Added: Advanced find/replace window\r\n\r\n\r\nAce 1.1.0\r\n====================================\r\n- Fixed: Fatal error on document create event\r\n- Fixed: Changing of properties has no effect\r\n- Added: File edition support\r\n- Added: MODx tree elements drag''n''drop support\r\n- Added: Auto-assigning which_element_editor to Ace\r\n\r\n\r\nAce 1.0.0\r\n====================================\r\n- Added: Plugin properties to adjust how Ace behaves\r\n- Initial commit";s:9:"signature";s:12:"ace-1.5.0-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:20:"Продолжить";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:579:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''workspace/packages/install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connector_url,params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:26:"workspace/packages/install";s:8:"register";s:3:"mgr";s:5:"topic";s:40:"/workspace/package/install/ace-1.5.0-pl/";s:14:"package_action";i:0;}', 'Ace', 'a:38:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"5332963462cf244397001878";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4f6e2782f245544fe8000014";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:12:"ace-1.5.0-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:3:"Ace";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"1.5.0";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"5";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:3:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:16:"danya_postfactum";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:376:"<p>New feature: modx tag code autocompletion! Press Ctrl+Space to get code suggestions with descriptions.</p><p>Works for snippets, chunks, system settings, tvs and resource fields, filters and properties.</p><p>Property sets, lexicon entries are not supported. Unfortunately, I have no idea how to retrieve chunk-specific placeholders, so there is no placeholder support.</p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:353:"<p></p><p>Install via Package Management.</p><p>Set editor theme you wish in system settings (change namespace to "ace").</p><p>If you want to use this editor for resources, just set system option <i>use_editor</i> to <b>false</b>&nbsp;(global usage), or&nbsp;<i>richtext</i>&nbsp;setting of certain resource to <b>false</b> (specific usage).</p><p></p>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:3491:"<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Ace 1.5.0</p><p>====================================</p><p>- Changed: Assets are moved back to /assets/</p><p>- Fixed: MODx tag completions (was completely broken)</p><p>- Added: Editor height setting</p><p>Ace 1.4.3</p><p>====================================</p><p>- Added: MODx tag completions (Ctrl+Space)</p><p>- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag''n''drop bug</p><p>Ace 1.4.2</p><p>====================================</p><p>- Added: Undo coalescing</p><p>- Changed: Mac fullscreen command is bound to Command+F12</p><p>- Added: Drag delay (allow to start new selection inside current one) for Mac</p><p>- Fixed: Use file extension of static chunks to detect code syntax</p><p>Ace 1.4.1</p><p>====================================</p><p>- Fixed: Tab handling</p><p>- Fixed: Emmet shortcut listing by Ctr+Alt+H</p><p>- Added: Expandable snippets support (see ace.snippets setting)</p><p>- Added: Emmet wrap_with_abbreviation command (Alt+W)</p><p></p><p>Ace 1.4.0</p><p>====================================</p><p>- Added: Emmet (aka Zen Coding) support</p><p>- Added: Terminal dark theme</p><p>- Added: Hotkey table (Ctrl+Alt+H)</p><p>- Fixed: Resource overview fatal error</p><p>- Changed: Assets are moved to /manager/assets/components/</p><p></p><p>Ace 1.3.3</p><p>====================================</p><p>- Added: PHP live syntax check</p><p>- Added: Chaos dark theme</p><p>- Added: Setting show_invisibles</p><p></p><p>Ace 1.3.2</p><p>====================================</p><p>- Fixed: The bug while installing the Ace</p><p>- Fixed: Broken word_wrap setting</p><p>- Added: Tab settings (tab size, soft tab)</p><p>- Added: Now completele compatible with AjaxManager extra</p><p>Ace 1.3.1</p><p>====================================</p><p>- Changed: Plugin content now is stored in static file</p><p></p><p>Ace 1.3.0</p><p>====================================</p><p>- Added: German translation</p><p>- Added: MODx tags highlighting</p><p>- Added: Ambiance and xcode themes</p><p>- Added: less/scss syntax highlighting</p><p>- Added: Fullwindow mode (Ctrl + F11)</p><p>- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.</p><p></p><p>Ace 1.2.1</p><p>====================================</p><p>- Changed: Assets are moved to manager folder</p><p>- Added: Font size setting</p><p>- Added: "GitHub" theme</p><p>- Added: Support of html5 drag''n''drop (accepting of dropped text)</p><p>- Added: XML / HTML tag autoclosing</p><p>- Fixed: broken en lexicon and php 5.3 incompatibility</p><p></p><p>Ace 1.2.0</p><p>====================================</p><p>- Removed: Some unnecessary options</p><p>- Changed: Editor options are moved to system settings</p><p>- Fixed: Multiple little editor bugs</p><p>- Added: Add missing "OnFileEditFormPrerender" event to MODx</p><p>- Added: Multiline editing</p><p>- Added: Advanced find/replace window</p><p></p><p></p><p>Ace 1.1.0</p><p>====================================</p><p>- Fixed: Fatal error on document create event</p><p>- Fixed: Changing of properties has no effect</p><p>- Added: File edition support</p><p>- Added: MODx tree elements drag''n''drop support</p><p>- Added: Auto-assigning which_element_editor to Ace</p><p></p><p></p><p>Ace 1.0.0</p><p>====================================</p><p>- Added: Plugin properties to adjust how Ace behaves</p><p>- Initial commit</p><p></p><p></p>";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-03-26T08:56:20+0000";s:8:"children";a:0:{}}i:16;a:4:{s:4:"name";s:9:"createdby";s:10:"attributes";a:0:{}s:4:"text";s:16:"danya_postfactum";s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-07-29T13:13:45+0000";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:24:"2014-03-26T08:56:20+0000";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"41239";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:24;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:25;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=5332963462cf24439700187a";s:8:"children";a:0:{}}i:29;a:4:{s:4:"name";s:9:"signature";s:10:"attributes";a:0:{}s:4:"text";s:12:"ace-1.5.0-pl";s:8:"children";a:0:{}}i:30;a:4:{s:4:"name";s:11:"supports_db";s:10:"attributes";a:0:{}s:4:"text";s:12:"mysql,sqlsrv";s:8:"children";a:0:{}}i:31;a:4:{s:4:"name";s:16:"minimum_supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:32;a:4:{s:4:"name";s:9:"breaks_at";s:10:"attributes";a:0:{}s:4:"text";s:8:"10000000";s:8:"children";a:0:{}}i:33;a:4:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:4:"text";s:68:"http://modx.s3.amazonaws.com/extras/4f6e2782f245544fe8000014/ace.png";s:8:"children";a:0:{}}i:34;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"5332963462cf24439700187a";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"5332963462cf244397001878";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:26:"ace-1.5.0-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"11574";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:12:"46.119.238.7";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=5332963462cf24439700187a";s:8:"children";a:0:{}}}}i:35;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:12:"ace-1.5.0-pl";s:8:"children";a:0:{}}i:36;a:4:{s:4:"name";s:10:"categories";s:10:"attributes";a:0:{}s:4:"text";s:15:"richtexteditors";s:8:"children";a:0:{}}i:37;a:3:{s:4:"name";s:4:"tags";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}}', 1, 5, 0, 'pl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_providers`
--

CREATE TABLE IF NOT EXISTS `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`) VALUES
(1, 'modx.com', 'The official MODX transport facility for 3rd party components.', 'http://rest.modx.com/extras/', '', '', '2014-07-15 16:47:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_users`
--

CREATE TABLE IF NOT EXISTS `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) unsigned NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`) VALUES
(1, 'admin', 'NiHqbcC2IvH2Oefje5TurPXvfj4q+HGiXSpwBbVeNoE=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '048594108902010df678a48e5fb02224', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_attributes`
--

CREATE TABLE IF NOT EXISTS `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Учётная запись администратора по умолчанию', 'admin@mail.ru', '', '', 0, 0, 0, 110, 1408622292, 1408622349, 0, 'hv05m7c1fv1vn4kvunhtq5f3s7', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_roles`
--

CREATE TABLE IF NOT EXISTS `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_settings`
--

CREATE TABLE IF NOT EXISTS `modx_user_group_settings` (
  `group` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_messages`
--

CREATE TABLE IF NOT EXISTS `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_settings`
--

CREATE TABLE IF NOT EXISTS `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_workspaces`
--

CREATE TABLE IF NOT EXISTS `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attributes` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2014-07-29 16:10:52', 1, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
