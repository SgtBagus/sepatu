-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2019 at 08:31 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoekashoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `access_control_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `access_control_id`, `role_id`, `status`) VALUES
(2, 94, 17, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `access_control`
--

CREATE TABLE `access_control` (
  `id` int(11) NOT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_control`
--

INSERT INTO `access_control` (`id`, `folder`, `class`, `method`, `val`) VALUES
(1, '', 'Access', '__construct', 'access/__construct'),
(2, '', 'Access', 'index', 'access/index'),
(3, '', 'Access', 'json', 'access/json'),
(4, '', 'Access', 'control', 'access/control'),
(5, '', 'Access', 'store', 'access/store'),
(6, '', 'Access', 'konfig', 'access/konfig'),
(7, '', 'Access', 'upload_file', 'access/upload_file'),
(8, '', 'Access', 'get_uri', 'access/get_uri'),
(9, '', 'Access', 'log_activity', 'access/log_activity'),
(10, '', 'Access', 'get_instance', 'access/get_instance'),
(11, '', 'Crud', '__construct', 'crud/__construct'),
(12, '', 'Crud', 'index', 'crud/index'),
(13, '', 'Crud', 'viewcode', 'crud/viewcode'),
(14, '', 'Crud', 'generate', 'crud/generate'),
(15, '', 'Crud', 'get_kolom', 'crud/get_kolom'),
(16, '', 'Crud', 'save_generate', 'crud/save_generate'),
(17, '', 'Crud', 'api', 'crud/api'),
(18, '', 'Crud', 'api_generate', 'crud/api_generate'),
(19, '', 'Crud', 'services', 'crud/services'),
(20, '', 'Crud', 'konfig', 'crud/konfig'),
(21, '', 'Crud', 'upload_file', 'crud/upload_file'),
(22, '', 'Crud', 'get_uri', 'crud/get_uri'),
(23, '', 'Crud', 'log_activity', 'crud/log_activity'),
(24, '', 'Crud', 'get_instance', 'crud/get_instance'),
(25, '', 'Debug', '__construct', 'debug/__construct'),
(26, '', 'Debug', 'index', 'debug/index'),
(27, '', 'Debug', 'exportexcell', 'debug/exportexcell'),
(28, '', 'Debug', 'ecryprdecrypt', 'debug/ecryprdecrypt'),
(29, '', 'Debug', 'validation_form', 'debug/validation_form'),
(30, '', 'Debug', 'konfig', 'debug/konfig'),
(31, '', 'Debug', 'upload_file', 'debug/upload_file'),
(32, '', 'Debug', 'get_uri', 'debug/get_uri'),
(33, '', 'Debug', 'log_activity', 'debug/log_activity'),
(34, '', 'Debug', 'get_instance', 'debug/get_instance'),
(35, '', 'Fitur', '__construct', 'fitur/__construct'),
(36, '', 'Fitur', 'ekspor', 'fitur/ekspor'),
(37, '', 'Fitur', 'impor', 'fitur/impor'),
(38, '', 'Fitur', 'importdata', 'fitur/importdata'),
(39, '', 'Fitur', 'access', 'fitur/access'),
(40, '', 'Fitur', 'exportreport', 'fitur/exportreport'),
(41, '', 'Fitur', 'toPdf', 'fitur/topdf'),
(42, '', 'Fitur', 'konfig', 'fitur/konfig'),
(43, '', 'Fitur', 'upload_file', 'fitur/upload_file'),
(44, '', 'Fitur', 'get_uri', 'fitur/get_uri'),
(45, '', 'Fitur', 'log_activity', 'fitur/log_activity'),
(46, '', 'Fitur', 'get_instance', 'fitur/get_instance'),
(47, '', 'Home', '__construct', 'home/__construct'),
(48, '', 'Home', 'index', 'home/index'),
(49, '', 'Home', 'chart', 'home/chart'),
(50, '', 'Home', 'get_autocomplete', 'home/get_autocomplete'),
(51, '', 'Home', 'konfig', 'home/konfig'),
(52, '', 'Home', 'upload_file', 'home/upload_file'),
(53, '', 'Home', 'get_uri', 'home/get_uri'),
(54, '', 'Home', 'log_activity', 'home/log_activity'),
(55, '', 'Home', 'get_instance', 'home/get_instance'),
(56, '', 'Login', '__construct', 'login/__construct'),
(57, '', 'Login', 'index', 'login/index'),
(58, '', 'Login', 'logout', 'login/logout'),
(59, '', 'Login', 'act_login', 'login/act_login'),
(60, '', 'Login', 'lockscreen', 'login/lockscreen'),
(61, '', 'Login', 'konfig', 'login/konfig'),
(62, '', 'Login', 'upload_file', 'login/upload_file'),
(63, '', 'Login', 'get_uri', 'login/get_uri'),
(64, '', 'Login', 'log_activity', 'login/log_activity'),
(65, '', 'Login', 'get_instance', 'login/get_instance'),
(66, '', 'Page', '__construct', 'page/__construct'),
(67, '', 'Page', 'portrait', 'page/portrait'),
(68, '', 'Page', 'landscape', 'page/landscape'),
(69, '', 'Page', 'konfig', 'page/konfig'),
(70, '', 'Page', 'upload_file', 'page/upload_file'),
(71, '', 'Page', 'get_uri', 'page/get_uri'),
(72, '', 'Page', 'log_activity', 'page/log_activity'),
(73, '', 'Page', 'get_instance', 'page/get_instance'),
(74, '', 'Rest_server', 'index', 'rest_server/index'),
(75, '', 'Rest_server', '__construct', 'rest_server/__construct'),
(76, '', 'Rest_server', 'get_instance', 'rest_server/get_instance'),
(77, '', 'Tinymce', '__construct', 'tinymce/__construct'),
(78, '', 'Tinymce', 'index', 'tinymce/index'),
(79, '', 'Tinymce', 'konfig', 'tinymce/konfig'),
(80, '', 'Tinymce', 'upload_file', 'tinymce/upload_file'),
(81, '', 'Tinymce', 'get_uri', 'tinymce/get_uri'),
(82, '', 'Tinymce', 'log_activity', 'tinymce/log_activity'),
(83, '', 'Tinymce', 'get_instance', 'tinymce/get_instance'),
(84, '', 'UploadImage', '__construct', 'uploadimage/__construct'),
(85, '', 'UploadImage', 'index', 'uploadimage/index'),
(86, '', 'UploadImage', 'uploadAjax', 'uploadimage/uploadajax'),
(87, '', 'UploadImage', 'ajaxImageUnlink', 'uploadimage/ajaximageunlink'),
(88, '', 'UploadImage', 'konfig', 'uploadimage/konfig'),
(89, '', 'UploadImage', 'upload_file', 'uploadimage/upload_file'),
(90, '', 'UploadImage', 'get_uri', 'uploadimage/get_uri'),
(91, '', 'UploadImage', 'log_activity', 'uploadimage/log_activity'),
(92, '', 'UploadImage', 'get_instance', 'uploadimage/get_instance'),
(93, 'master', 'Bss', 'index', 'master/bss/index'),
(94, 'master', 'Bss', '__construct', 'master/bss/__construct'),
(95, 'master', 'Bss', 'konfig', 'master/bss/konfig'),
(96, 'master', 'Bss', 'upload_file', 'master/bss/upload_file'),
(97, 'master', 'Bss', 'get_uri', 'master/bss/get_uri'),
(98, 'master', 'Bss', 'log_activity', 'master/bss/log_activity'),
(99, 'master', 'Bss', 'get_instance', 'master/bss/get_instance'),
(100, 'master', 'Customer', '__construct', 'master/customer/__construct'),
(101, 'master', 'Customer', 'index', 'master/customer/index'),
(102, 'master', 'Customer', 'create', 'master/customer/create'),
(103, 'master', 'Customer', 'validate', 'master/customer/validate'),
(104, 'master', 'Customer', 'store', 'master/customer/store'),
(105, 'master', 'Customer', 'json', 'master/customer/json'),
(106, 'master', 'Customer', 'edit', 'master/customer/edit'),
(107, 'master', 'Customer', 'update', 'master/customer/update'),
(108, 'master', 'Customer', 'delete', 'master/customer/delete'),
(109, 'master', 'Customer', 'status', 'master/customer/status'),
(110, 'master', 'Customer', 'konfig', 'master/customer/konfig'),
(111, 'master', 'Customer', 'upload_file', 'master/customer/upload_file'),
(112, 'master', 'Customer', 'get_uri', 'master/customer/get_uri'),
(113, 'master', 'Customer', 'log_activity', 'master/customer/log_activity'),
(114, 'master', 'Customer', 'get_instance', 'master/customer/get_instance'),
(115, 'master', 'Image', '__construct', 'master/image/__construct'),
(116, 'master', 'Image', 'index', 'master/image/index'),
(117, 'master', 'Image', 'create', 'master/image/create'),
(118, 'master', 'Image', 'validate', 'master/image/validate'),
(119, 'master', 'Image', 'store', 'master/image/store'),
(120, 'master', 'Image', 'json', 'master/image/json'),
(121, 'master', 'Image', 'edit', 'master/image/edit'),
(122, 'master', 'Image', 'update', 'master/image/update'),
(123, 'master', 'Image', 'delete', 'master/image/delete'),
(124, 'master', 'Image', 'status', 'master/image/status'),
(125, 'master', 'Image', 'konfig', 'master/image/konfig'),
(126, 'master', 'Image', 'upload_file', 'master/image/upload_file'),
(127, 'master', 'Image', 'get_uri', 'master/image/get_uri'),
(128, 'master', 'Image', 'log_activity', 'master/image/log_activity'),
(129, 'master', 'Image', 'get_instance', 'master/image/get_instance'),
(130, 'master', 'Jadwal', '__construct', 'master/jadwal/__construct'),
(131, 'master', 'Jadwal', 'index', 'master/jadwal/index'),
(132, 'master', 'Jadwal', 'create', 'master/jadwal/create'),
(133, 'master', 'Jadwal', 'validate', 'master/jadwal/validate'),
(134, 'master', 'Jadwal', 'store', 'master/jadwal/store'),
(135, 'master', 'Jadwal', 'json', 'master/jadwal/json'),
(136, 'master', 'Jadwal', 'edit', 'master/jadwal/edit'),
(137, 'master', 'Jadwal', 'update', 'master/jadwal/update'),
(138, 'master', 'Jadwal', 'delete', 'master/jadwal/delete'),
(139, 'master', 'Jadwal', 'status', 'master/jadwal/status'),
(140, 'master', 'Jadwal', 'konfig', 'master/jadwal/konfig'),
(141, 'master', 'Jadwal', 'upload_file', 'master/jadwal/upload_file'),
(142, 'master', 'Jadwal', 'get_uri', 'master/jadwal/get_uri'),
(143, 'master', 'Jadwal', 'log_activity', 'master/jadwal/log_activity'),
(144, 'master', 'Jadwal', 'get_instance', 'master/jadwal/get_instance'),
(145, 'master', 'Keys', '__construct', 'master/keys/__construct'),
(146, 'master', 'Keys', 'index', 'master/keys/index'),
(147, 'master', 'Keys', 'create', 'master/keys/create'),
(148, 'master', 'Keys', 'validate', 'master/keys/validate'),
(149, 'master', 'Keys', 'store', 'master/keys/store'),
(150, 'master', 'Keys', 'json', 'master/keys/json'),
(151, 'master', 'Keys', 'edit', 'master/keys/edit'),
(152, 'master', 'Keys', 'update', 'master/keys/update'),
(153, 'master', 'Keys', 'delete', 'master/keys/delete'),
(154, 'master', 'Keys', 'status', 'master/keys/status'),
(155, 'master', 'Keys', 'konfig', 'master/keys/konfig'),
(156, 'master', 'Keys', 'upload_file', 'master/keys/upload_file'),
(157, 'master', 'Keys', 'get_uri', 'master/keys/get_uri'),
(158, 'master', 'Keys', 'log_activity', 'master/keys/log_activity'),
(159, 'master', 'Keys', 'get_instance', 'master/keys/get_instance'),
(160, 'master', 'Konfig', '__construct', 'master/konfig/__construct'),
(161, 'master', 'Konfig', 'index', 'master/konfig/index'),
(162, 'master', 'Konfig', 'create', 'master/konfig/create'),
(163, 'master', 'Konfig', 'validate', 'master/konfig/validate'),
(164, 'master', 'Konfig', 'store', 'master/konfig/store'),
(165, 'master', 'Konfig', 'json', 'master/konfig/json'),
(166, 'master', 'Konfig', 'edit', 'master/konfig/edit'),
(167, 'master', 'Konfig', 'update', 'master/konfig/update'),
(168, 'master', 'Konfig', 'delete', 'master/konfig/delete'),
(169, 'master', 'Konfig', 'status', 'master/konfig/status'),
(170, 'master', 'Konfig', 'konfig', 'master/konfig/konfig'),
(171, 'master', 'Konfig', 'upload_file', 'master/konfig/upload_file'),
(172, 'master', 'Konfig', 'get_uri', 'master/konfig/get_uri'),
(173, 'master', 'Konfig', 'log_activity', 'master/konfig/log_activity'),
(174, 'master', 'Konfig', 'get_instance', 'master/konfig/get_instance'),
(175, 'master', 'Menu_master', '__construct', 'master/menu_master/__construct'),
(176, 'master', 'Menu_master', 'index', 'master/menu_master/index'),
(177, 'master', 'Menu_master', 'create', 'master/menu_master/create'),
(178, 'master', 'Menu_master', 'validate', 'master/menu_master/validate'),
(179, 'master', 'Menu_master', 'store', 'master/menu_master/store'),
(180, 'master', 'Menu_master', 'json', 'master/menu_master/json'),
(181, 'master', 'Menu_master', 'edit', 'master/menu_master/edit'),
(182, 'master', 'Menu_master', 'update', 'master/menu_master/update'),
(183, 'master', 'Menu_master', 'delete', 'master/menu_master/delete'),
(184, 'master', 'Menu_master', 'status', 'master/menu_master/status'),
(185, 'master', 'Menu_master', 'konfig', 'master/menu_master/konfig'),
(186, 'master', 'Menu_master', 'upload_file', 'master/menu_master/upload_file'),
(187, 'master', 'Menu_master', 'get_uri', 'master/menu_master/get_uri'),
(188, 'master', 'Menu_master', 'log_activity', 'master/menu_master/log_activity'),
(189, 'master', 'Menu_master', 'get_instance', 'master/menu_master/get_instance'),
(190, 'master', 'Report', '__construct', 'master/report/__construct'),
(191, 'master', 'Report', 'index', 'master/report/index'),
(192, 'master', 'Report', 'create', 'master/report/create'),
(193, 'master', 'Report', 'validate', 'master/report/validate'),
(194, 'master', 'Report', 'store', 'master/report/store'),
(195, 'master', 'Report', 'json', 'master/report/json'),
(196, 'master', 'Report', 'edit', 'master/report/edit'),
(197, 'master', 'Report', 'update', 'master/report/update'),
(198, 'master', 'Report', 'delete', 'master/report/delete'),
(199, 'master', 'Report', 'status', 'master/report/status'),
(200, 'master', 'Report', 'generate', 'master/report/generate'),
(201, 'master', 'Report', 'konfig', 'master/report/konfig'),
(202, 'master', 'Report', 'upload_file', 'master/report/upload_file'),
(203, 'master', 'Report', 'get_uri', 'master/report/get_uri'),
(204, 'master', 'Report', 'log_activity', 'master/report/log_activity'),
(205, 'master', 'Report', 'get_instance', 'master/report/get_instance'),
(206, 'master', 'Role', '__construct', 'master/role/__construct'),
(207, 'master', 'Role', 'index', 'master/role/index'),
(208, 'master', 'Role', 'create', 'master/role/create'),
(209, 'master', 'Role', 'validate', 'master/role/validate'),
(210, 'master', 'Role', 'store', 'master/role/store'),
(211, 'master', 'Role', 'json', 'master/role/json'),
(212, 'master', 'Role', 'edit', 'master/role/edit'),
(213, 'master', 'Role', 'update', 'master/role/update'),
(214, 'master', 'Role', 'delete', 'master/role/delete'),
(215, 'master', 'Role', 'status', 'master/role/status'),
(216, 'master', 'Role', 'konfig', 'master/role/konfig'),
(217, 'master', 'Role', 'upload_file', 'master/role/upload_file'),
(218, 'master', 'Role', 'get_uri', 'master/role/get_uri'),
(219, 'master', 'Role', 'log_activity', 'master/role/log_activity'),
(220, 'master', 'Role', 'get_instance', 'master/role/get_instance'),
(221, 'master', 'Service', '__construct', 'master/service/__construct'),
(222, 'master', 'Service', 'index', 'master/service/index'),
(223, 'master', 'Service', 'create', 'master/service/create'),
(224, 'master', 'Service', 'validate', 'master/service/validate'),
(225, 'master', 'Service', 'store', 'master/service/store'),
(226, 'master', 'Service', 'json', 'master/service/json'),
(227, 'master', 'Service', 'edit', 'master/service/edit'),
(228, 'master', 'Service', 'update', 'master/service/update'),
(229, 'master', 'Service', 'delete', 'master/service/delete'),
(230, 'master', 'Service', 'status', 'master/service/status'),
(231, 'master', 'Service', 'konfig', 'master/service/konfig'),
(232, 'master', 'Service', 'upload_file', 'master/service/upload_file'),
(233, 'master', 'Service', 'get_uri', 'master/service/get_uri'),
(234, 'master', 'Service', 'log_activity', 'master/service/log_activity'),
(235, 'master', 'Service', 'get_instance', 'master/service/get_instance'),
(236, 'master', 'Site', '__construct', 'master/site/__construct'),
(237, 'master', 'Site', 'index', 'master/site/index'),
(238, 'master', 'Site', 'site_json', 'master/site/site_json'),
(239, 'master', 'Site', 'site_default', 'master/site/site_default'),
(240, 'master', 'Site', 'site_custom', 'master/site/site_custom'),
(241, 'master', 'Site', 'site_data', 'master/site/site_data'),
(242, 'master', 'Site', 'site_store', 'master/site/site_store'),
(243, 'master', 'Site', 'site_edit', 'master/site/site_edit'),
(244, 'master', 'Site', 'site_update', 'master/site/site_update'),
(245, 'master', 'Site', 'site_hidden', 'master/site/site_hidden'),
(246, 'master', 'Site', 'konfig', 'master/site/konfig'),
(247, 'master', 'Site', 'upload_file', 'master/site/upload_file'),
(248, 'master', 'Site', 'get_uri', 'master/site/get_uri'),
(249, 'master', 'Site', 'log_activity', 'master/site/log_activity'),
(250, 'master', 'Site', 'get_instance', 'master/site/get_instance'),
(251, 'master', 'User', 'index', 'master/user/index'),
(252, 'master', 'User', 'json', 'master/user/json'),
(253, 'master', 'User', 'json_activity', 'master/user/json_activity'),
(254, 'master', 'User', 'store', 'master/user/store'),
(255, 'master', 'User', 'edit', 'master/user/edit'),
(256, 'master', 'User', 'editUser', 'master/user/edituser'),
(257, 'master', 'User', 'updateUser', 'master/user/updateuser'),
(258, 'master', 'User', 'update', 'master/user/update'),
(259, 'master', 'User', 'delete', 'master/user/delete'),
(260, 'master', 'User', 'password_check', 'master/user/password_check'),
(261, 'master', 'User', 'editUser_redirect', 'master/user/edituser_redirect'),
(262, 'master', 'User', '__construct', 'master/user/__construct'),
(263, 'master', 'User', 'konfig', 'master/user/konfig'),
(264, 'master', 'User', 'upload_file', 'master/user/upload_file'),
(265, 'master', 'User', 'get_uri', 'master/user/get_uri'),
(266, 'master', 'User', 'log_activity', 'master/user/log_activity'),
(267, 'master', 'User', 'get_instance', 'master/user/get_instance');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `ip` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `get` longtext,
  `post` longtext,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`ip`, `link`, `get`, `post`, `user_id`, `created_at`) VALUES
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('182.0.231.50', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:10'),
('182.0.231.50', 'http://gatoko1.com/sop/report/users', '[]', '[]', 1, '2019-03-25 11:32:12'),
('182.0.231.50', 'http://gatoko1.com/sop/report/Users/ajaxall/', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"0\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"1\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"2\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"3\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"4\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"5\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"6\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"7\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"8\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"9\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"10\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:13'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:58'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:59'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:32:00'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:01'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=ke', '{\"term\":\"ke\"}', '[]', 1, '2019-03-25 11:32:21'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:22'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:23'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:24'),
('182.0.197.180', 'http://gatoko1.com/sop/login/logout', '[]', '[]', 1, '2019-03-25 11:32:31'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/login', '[]', '[]', NULL, '2019-03-25 11:32:31'),
('182.0.231.125', 'http://gatoko1.com/sop/login/lockscreen?user=smartsoft', '{\"user\":\"smartsoft\"}', '[]', NULL, '2019-03-25 11:32:38'),
('182.0.231.125', 'http://gatoko1.com/sop/login/act_login', '[]', '{\"username\":\"smartsoft\",\"password\":\"admin\"}', NULL, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-03-25 11:32:45'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/json_activity/1', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:46'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('182.0.231.50', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:10'),
('182.0.231.50', 'http://gatoko1.com/sop/report/users', '[]', '[]', 1, '2019-03-25 11:32:12'),
('182.0.231.50', 'http://gatoko1.com/sop/report/Users/ajaxall/', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"0\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"1\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"2\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"3\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"4\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"5\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"6\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"7\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"8\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"9\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"10\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:13'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:58'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:59'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:32:00'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:01'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=ke', '{\"term\":\"ke\"}', '[]', 1, '2019-03-25 11:32:21'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:22'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:23'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:24'),
('182.0.197.180', 'http://gatoko1.com/sop/login/logout', '[]', '[]', 1, '2019-03-25 11:32:31'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/login', '[]', '[]', NULL, '2019-03-25 11:32:31'),
('182.0.231.125', 'http://gatoko1.com/sop/login/lockscreen?user=smartsoft', '{\"user\":\"smartsoft\"}', '[]', NULL, '2019-03-25 11:32:38'),
('182.0.231.125', 'http://gatoko1.com/sop/login/act_login', '[]', '{\"username\":\"smartsoft\",\"password\":\"admin\"}', NULL, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-03-25 11:32:45'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/json_activity/1', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:46'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `alamat_customer` varchar(255) NOT NULL,
  `hp_customer` varchar(255) NOT NULL,
  `email_customer` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama_customer`, `alamat_customer`, `hp_customer`, `email_customer`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Devi nuroniah', 'Kp nanggela RT 20 RW 09 , SUMBERJAYA, CIHAURBEUTI, KABUPATEN CIAMIS, JAWA BARAT, 46262', '082216741513', 'Ajengkarisma1996@gmail.com', 'ENABLE', '2019-10-28 17:45:46', '0000-00-00 00:00:00', 19),
(2, 'Debby Rosalina Chandra', 'Jl Pluit Karang Sari X Blok K 7 Selatan No. 26 - Muara Karang , PLUIT, PENJARINGAN, KOTA JAKARTA UTARA, DKI JAKARTA, 14450', '085810263838', 'debby_rosalina91@yahoo.co.id', 'ENABLE', '2019-10-28 17:46:24', '0000-00-00 00:00:00', 19),
(3, 'lintang wahyu mukti', 'Jl. Burangrang No.58, Perumahan Pagadungan , PURWASARI, PURWASARI, KABUPATEN KARAWANG, JAWA BARAT, 41373', '081287479399', 'tressando@gmail.com', 'ENABLE', '2019-10-28 17:47:01', '0000-00-00 00:00:00', 19);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `table`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '6950c16c9bcc6995f376b297f163175940451.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175940451.jpg', 'm_produk', 1, NULL, NULL, '2019-10-01 15:29:10'),
(2, '6950c16c9bcc6995f376b297f16317594151.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f16317594151.jpg', 'master_layanan', 3, 'ENABLE', '2019-10-01 15:29:31', NULL),
(3, '6950c16c9bcc6995f376b297f16317599658.gif', 'image/gif', 'webfile/6950c16c9bcc6995f376b297f16317599658.gif', 'user', 21, NULL, NULL, '2019-10-30 09:08:04'),
(4, '6950c16c9bcc6995f376b297f163175938345.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175938345.png', 'user', 19, NULL, NULL, '2019-10-01 16:16:18'),
(5, '6950c16c9bcc6995f376b297f163175997916.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175997916.jpg', 'customer', 1, NULL, NULL, '2019-10-01 16:16:56'),
(6, '6950c16c9bcc6995f376b297f163175975238.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175975238.jpg', 'master_layanan', 1, NULL, NULL, '2019-10-02 09:53:31'),
(7, '6950c16c9bcc6995f376b297f163175967918.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175967918.jpg', 'master_layanan', 2, NULL, NULL, '2019-10-02 09:53:39'),
(8, '6950c16c9bcc6995f376b297f163175910939.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175910939.jpg', 'customer', 2, 'ENABLE', '2019-10-02 09:57:06', NULL),
(9, '', '', '', 'terapis', 2, 'ENABLE', '2019-10-02 10:05:56', NULL),
(10, '6950c16c9bcc6995f376b297f163175986643.webp', 'image/webp', 'webfile/6950c16c9bcc6995f376b297f163175986643.webp', 'm_produk', 2, 'ENABLE', '2019-10-02 13:45:08', NULL),
(11, '', '', '', 'produk_stok', 3, 'ENABLE', '2019-10-02 13:45:27', NULL),
(12, '', '', '', 'm_kategori', 7, 'ENABLE', '2019-10-11 08:45:24', NULL),
(13, '', '', '', 'm_kategori', 8, 'ENABLE', '2019-10-11 08:45:38', NULL),
(14, '', '', '', 'm_kategori', 9, 'ENABLE', '2019-10-11 08:45:47', NULL),
(15, '', '', '', 'm_kategori', 10, 'ENABLE', '2019-10-11 08:46:05', NULL),
(16, '', '', '', 'm_kategori', 11, 'ENABLE', '2019-10-11 08:46:15', NULL),
(17, '', '', '', 'm_kategori', 12, 'ENABLE', '2019-10-11 08:46:26', NULL),
(18, '', '', '', 'm_kategori', 13, 'ENABLE', '2019-10-11 08:46:34', NULL),
(19, '', '', '', 'm_kategori', 14, 'ENABLE', '2019-10-11 08:46:44', NULL),
(20, '6950c16c9bcc6995f376b297f163175978731.PNG', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175978731.PNG', 'm_produk', 1, 'ENABLE', '2019-10-11 08:56:48', NULL),
(21, '6950c16c9bcc6995f376b297f163175995919.PNG', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175995919.PNG', 'm_produk', 2, 'ENABLE', '2019-10-11 08:57:50', NULL),
(22, '6950c16c9bcc6995f376b297f163175962096.PNG', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175962096.PNG', 'm_produk', 3, 'ENABLE', '2019-10-11 08:58:18', NULL),
(23, '6950c16c9bcc6995f376b297f163175930040.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175930040.jpg', 'm_produk', 1, 'ENABLE', '2019-10-22 12:09:23', NULL),
(24, '', '', '', 'master_kategori_suplier', 1, 'ENABLE', '2019-10-28 15:13:31', NULL),
(25, '', '', '', 'suplier', 1, 'ENABLE', '2019-10-28 16:20:07', NULL),
(26, '', '', '', 'suplier', 2, 'ENABLE', '2019-10-28 16:20:40', NULL),
(27, '', '', '', 'suplier', 3, 'ENABLE', '2019-10-28 16:21:01', NULL),
(28, '', '', '', 'master_kategori_produk', 1, 'ENABLE', '2019-10-28 16:21:43', NULL),
(29, '', '', '', 'master_kategori_produk', 2, 'ENABLE', '2019-10-28 16:21:58', NULL),
(30, '', '', '', 'master_kategori_produk', 3, 'ENABLE', '2019-10-28 16:22:07', NULL),
(31, '', '', '', 'master_kategori_produk', 4, 'ENABLE', '2019-10-28 16:22:23', NULL),
(32, '', '', '', 'master_kategori_produk', 5, 'ENABLE', '2019-10-28 16:22:33', NULL),
(33, '', '', '', 'master_kategori_produk', 6, 'ENABLE', '2019-10-28 16:22:43', NULL),
(34, '', '', '', 'master_kategori_produk', 7, 'ENABLE', '2019-10-28 16:22:52', NULL),
(35, '', '', '', 'master_bahanbaku', 1, 'ENABLE', '2019-10-28 16:23:12', NULL),
(36, '', '', '', 'master_bahanbaku', 2, 'ENABLE', '2019-10-28 16:23:21', NULL),
(37, '', '', '', 'master_bahanbaku', 3, 'ENABLE', '2019-10-28 16:23:47', NULL),
(38, '6950c16c9bcc6995f376b297f163175967018.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175967018.jpg', 'produk_ready', 1, 'ENABLE', '2019-10-28 16:30:38', '2019-10-30 10:15:39'),
(39, '6950c16c9bcc6995f376b297f163175936094.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175936094.jpg', 'produk_ready', 2, 'ENABLE', '2019-10-28 16:31:01', '2019-10-30 10:15:45'),
(40, '6950c16c9bcc6995f376b297f163175937450.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175937450.jpg', 'produk_ready', 3, 'ENABLE', '2019-10-28 16:31:08', '2019-10-30 10:15:52'),
(41, '6950c16c9bcc6995f376b297f163175918039.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175918039.jpg', 'produk_preorder', 1, 'ENABLE', '2019-10-28 16:32:53', '2019-10-30 00:25:36'),
(42, '', '', '', 'customer', 1, 'ENABLE', '2019-10-28 17:45:46', NULL),
(43, '', '', '', 'customer', 2, 'ENABLE', '2019-10-28 17:46:24', NULL),
(44, '', '', '', 'customer', 3, 'ENABLE', '2019-10-28 17:47:01', NULL),
(45, '6950c16c9bcc6995f376b297f163175976845.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175976845.jpg', 'produk_preorder', 2, 'ENABLE', '2019-10-30 01:36:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grafik`
--

CREATE TABLE `grafik` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grafik`
--

INSERT INTO `grafik` (`id`, `name`, `value`) VALUES
(1, 'Testing', '-30'),
(2, 'Testing 2', '20'),
(3, 'Testing 2', '30'),
(4, 'testing2', '40'),
(5, 'testing 2', '50'),
(6, 'testing 2', '20'),
(7, 'testing 2', '10'),
(8, 'testing 2', '15'),
(9, 'testing 2', '20'),
(10, 'testing 2', '25'),
(11, 'testing 2', '35'),
(12, 'testing 2', '45');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(12) NOT NULL,
  `path` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `path`) VALUES
(5, 'webfile/6950c16c9bcc6995f376b297f163175977305.jpg'),
(6, 'webfile/6950c16c9bcc6995f376b297f16317598195.png'),
(7, 'webfile/6950c16c9bcc6995f376b297f163175918255.pdf'),
(8, 'webfile/6950c16c9bcc6995f376b297f163175942707.jpg'),
(9, 'webfile/6950c16c9bcc6995f376b297f163175917095.png'),
(10, 'webfile/6950c16c9bcc6995f376b297f163175950229.jpg'),
(11, 'webfile/6950c16c9bcc6995f376b297f163175993341.pdf'),
(12, 'webfile/6950c16c9bcc6995f376b297f163175959701.png'),
(13, 'webfile/6950c16c9bcc6995f376b297f163175996844.jpg'),
(14, 'webfile/6950c16c9bcc6995f376b297f163175942779.jpg'),
(15, '<'),
(16, 'webfile/6950c16c9bcc6995f376b297f163175942654.jpg'),
(17, 'webfile/6950c16c9bcc6995f376b297f163175912658.jpg'),
(18, 'webfile/6950c16c9bcc6995f376b297f163175961249.jpg'),
(19, 'webfile/6950c16c9bcc6995f376b297f16317598585.png'),
(20, 'webfile/6950c16c9bcc6995f376b297f163175965096.docx'),
(21, '<'),
(22, 'webfile/6950c16c9bcc6995f376b297f163175939845.png'),
(23, 'webfile/6950c16c9bcc6995f376b297f163175965468.jpg'),
(24, 'webfile/6950c16c9bcc6995f376b297f163175994781.jpg'),
(25, '<'),
(26, 'webfile/6950c16c9bcc6995f376b297f163175925126.jpg'),
(27, 'af2a4c9d4c4956ec9d6ba62213eed568'),
(28, 'webfile/6950c16c9bcc6995f376b297f163175945616.jpg'),
(29, 'webfile/6950c16c9bcc6995f376b297f163175960129.jpg'),
(30, 'webfile/6950c16c9bcc6995f376b297f163175996636.doc'),
(31, 'webfile/6950c16c9bcc6995f376b297f163175937709.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `ignore_limits` varchar(255) DEFAULT NULL,
  `is_private_key` varchar(255) DEFAULT NULL,
  `ip_addresses` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, '35d3d08c3d7b7f445ceb8e726a87b26c', '0', '0', '0', '123', '2017-10-12 13:34:33', 'ENABLE', NULL, '2019-02-18 17:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `konfig`
--

CREATE TABLE `konfig` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'Shoekashoes', 'ENABLE', '2019-02-18 15:28:44', '2019-10-26 16:40:26'),
(7, 'LOGO', 'http://www.pertanian.go.id/img/logo.png', 'ENABLE', '2019-02-18 15:29:32', '2019-04-29 10:56:09'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'https://coloredbrain.com/wp-content/uploads/2016/07/login-background.jpg\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2019 <a href=\"http://karyastudio.com/\" target=\"_blank\">Karya Studio</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-red-light', 'ENABLE', '2019-02-18 15:34:01', '2019-10-26 16:41:38'),
(13, 'TITLE_APPLICATION', 'Shoekashoes', 'ENABLE', '2019-02-18 15:39:54', '2019-10-26 16:42:09'),
(14, 'APPLICATION_SMALL', 'SS', 'ENABLE', '2019-02-18 15:42:41', '2019-10-26 16:40:48'),
(15, 'LOGIN_BOX', 'background : #fff !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'Shoekashoes | Login', 'ENABLE', '2019-02-18 15:47:41', '2019-10-26 16:42:24'),
(17, 'LOGIN_TITLE', 'LOGIN ADMIN', 'ENABLE', '2019-02-18 15:48:55', NULL),
(24, 'LOGIN', '1', 'ENABLE', '2019-02-21 14:12:14', '2019-08-15 17:59:17'),
(25, 'email-template', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width\" />\r\n\r\n\r\n    <style type=\"text/css\">\r\n        /* Your custom styles go here */\r\n        * {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-size: 100%;\r\n            font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif;\r\n            line-height: 1.65;\r\n        }\r\n\r\n        img {\r\n            max-width: 100%;\r\n            margin: 0 auto;\r\n            display: block;\r\n        }\r\n\r\n        body,\r\n        .body-wrap {\r\n            width: 100% !important;\r\n            height: 100%;\r\n            background: #f8f8f8;\r\n        }\r\n\r\n        a {\r\n            color: #71bc37;\r\n            text-decoration: none;\r\n        }\r\n\r\n        a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n        .text-center {\r\n            text-align: center;\r\n        }\r\n\r\n        .text-right {\r\n            text-align: right;\r\n        }\r\n\r\n        .text-left {\r\n            text-align: left;\r\n        }\r\n\r\n        .button {\r\n            display: inline-block;\r\n            color: white;\r\n            background: #71bc37;\r\n            border: solid #71bc37;\r\n            border-width: 10px 20px 8px;\r\n            font-weight: bold;\r\n            border-radius: 4px;\r\n        }\r\n\r\n        .button:hover {\r\n            text-decoration: none;\r\n        }\r\n\r\n        h1,\r\n        h2,\r\n        h3,\r\n        h4,\r\n        h5,\r\n        h6 {\r\n            margin-bottom: 20px;\r\n            line-height: 1.25;\r\n        }\r\n\r\n        h1 {\r\n            font-size: 32px;\r\n        }\r\n\r\n        h2 {\r\n            font-size: 28px;\r\n        }\r\n\r\n        h3 {\r\n            font-size: 24px;\r\n        }\r\n\r\n        h4 {\r\n            font-size: 20px;\r\n        }\r\n\r\n        h5 {\r\n            font-size: 16px;\r\n        }\r\n\r\n        p,\r\n        ul,\r\n        ol {\r\n            font-size: 16px;\r\n            font-weight: normal;\r\n            margin-bottom: 20px;\r\n        }\r\n\r\n        .container {\r\n            display: block !important;\r\n            clear: both !important;\r\n            margin: 0 auto !important;\r\n            max-width: 580px !important;\r\n        }\r\n\r\n        .container table {\r\n            width: 100% !important;\r\n            border-collapse: collapse;\r\n        }\r\n\r\n        .container .masthead {\r\n            padding: 80px 0;\r\n            background: #71bc37;\r\n            color: white;\r\n        }\r\n\r\n        .container .masthead h1 {\r\n            margin: 0 auto !important;\r\n            max-width: 90%;\r\n            text-transform: uppercase;\r\n        }\r\n\r\n        .container .content {\r\n            background: white;\r\n            padding: 30px 35px;\r\n        }\r\n\r\n        .container .content.footer {\r\n            background: none;\r\n        }\r\n\r\n        .container .content.footer p {\r\n            margin-bottom: 0;\r\n            color: #888;\r\n            text-align: center;\r\n            font-size: 14px;\r\n        }\r\n\r\n        .container .content.footer a {\r\n            color: #888;\r\n            text-decoration: none;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .container .content.footer a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <table class=\"body-wrap\">\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td align=\"center\" class=\"masthead\">\r\n\r\n                            <h1>Something Big...</h1>\r\n\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"content\">\r\n\r\n                            <h2>Hi Stranger,</h2>\r\n\r\n                            <p>Kielbasa venison ball tip shankle. Boudin prosciutto landjaeger, pancetta jowl turkey tri-tip porchetta beef pork loin drumstick. Frankfurter short ribs kevin pig ribeye drumstick bacon kielbasa. Pork loin brisket biltong, pork belly filet mignon ribeye pig ground round porchetta turducken turkey. Pork belly beef ribs sausage ham hock, ham doner frankfurter pork chop tail meatball beef pig meatloaf short ribs shoulder. Filet mignon ham hock kielbasa beef ribs shank. Venison swine beef ribs sausage pastrami shoulder.</p>\r\n\r\n                            <table>\r\n                                <tr>\r\n                                    <td align=\"center\">\r\n                                        <p>\r\n                                            <a href=\"#\" class=\"button\">Share the Awesomeness</a>\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n\r\n                            <p>By the way, if you\'re wondering where you can find more of this fine meaty filler, visit <a href=\"http://baconipsum.com\">Bacon Ipsum</a>.</p>\r\n\r\n                            <p><em>– Mr. Pen</em></p>\r\n\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td class=\"content footer\" align=\"center\">\r\n                            <p>Sent by <a href=\"#\">Company Name</a>, 1234 Yellow Brick Road, OZ, 99999</p>\r\n                            <p><a href=\"mailto:\">hello@company.com</a> | <a href=\"#\">Unsubscribe</a></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n    </table>\r\n</body>\r\n\r\n</html>\r\n', 'ENABLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(12, 'api/example/users/1', 'get', 'a:13:{s:2:\"id\";s:1:\"1\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b95151e2-01cb-48b0-fc71-74788b971014\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426798, 1549430000, '1', 400),
(13, 'api/example/users/1', 'get', 'a:13:{s:2:\"id\";s:1:\"1\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"da6c7ebc-d468-82cd-b107-a43b223e3229\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426847, 1549430000, '1', 400),
(14, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"295384ee-de46-448a-ee33-5da93f0ee6d3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426895, 1549430000, '1', 200),
(15, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"9463f032-7a0c-d92f-b412-4fe3b0e3283d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426900, 1549430000, '1', 400),
(16, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"466fe8da-8fb3-03e6-9281-d0d53ff867b5\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426910, 1549430000, '1', 400),
(17, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"a4353c0f-ae54-9d99-82b9-3952449d6589\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426923, 1549430000, '1', 400),
(18, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4b9ec719-7307-81d5-7700-cc52c1882174\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426931, 1549430000, '1', 400),
(19, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"1a9c3d5a-3eea-1ea0-192d-69d8b0d3bd7e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426934, 1549430000, '1', 400),
(20, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"faf745f8-86a1-6571-45a1-1d5c705857e3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426935, 1549430000, '1', 400),
(21, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d66bf86e-f241-d6bc-59a8-53e219895de5\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426936, 1549430000, '1', 400),
(22, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"8d1e6190-f1ee-732f-0712-9b86f649431a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426958, 1549430000, '1', 400),
(23, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d947680b-21bb-f0d0-cb14-816ffd6557e6\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426959, 1549430000, '1', 400),
(24, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"196ad13d-5766-c800-4cc0-6521f1f0a5fa\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426967, 1549430000, '1', 400),
(25, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"aa627fb0-cd37-f6b7-1353-a00ab4db601f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426968, 1549430000, '1', 400),
(26, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"5cd4e253-2ef5-0abe-87fd-1c70c0b74460\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549426978, 1549430000, '1', 400),
(27, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"313f78a7-c82e-0686-8762-b874535cdcbf\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427000, 1549430000, '1', 400),
(28, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"465eac17-0ecf-a742-60c1-d1bb5aad672c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427018, 1549430000, '1', 400),
(29, 'api/example/users/24', 'get', 'a:13:{s:2:\"id\";s:2:\"24\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b1a5d762-4c11-9bf5-3a0f-c672375a4477\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427058, 1549430000, '1', 200),
(30, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"bc6fbf72-1adf-b4ba-a316-5b75ea6b1cb9\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427061, 1549430000, '1', 200),
(31, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"541c15c3-9e59-a3ec-6a6c-65e6eee16eda\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=kp7ibnsa9pihb2thj3g5ejllg6gvs00e\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427100, 1549430000, '1', 200),
(32, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4ea9e5cc-a4c2-710e-9f72-f921bcd470f7\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427157, 1549430000, '1', 200),
(33, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"c58bbf9d-48fe-4890-0e5a-87c7d21f1bcb\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427166, 1549430000, '1', 200),
(34, 'api/example/users-detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"a864cc0c-2540-09b1-c9e4-15a3c7791f89\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427177, 1549430000, '1', 200),
(35, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"97063f8c-c173-d733-e5b1-eb36b50c6717\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549427200, 1549430000, '1', 200),
(36, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d74b25e0-c53c-1b24-ee1e-a456ca5e754a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=8rtpkm1nfabdkg2pphk15kukku3536p8\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428325, 1549430000, '1', 0),
(37, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"2dcb425a-4947-898b-1c78-91cda05e66a3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428345, 1549430000, '1', 404),
(38, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"ad64360f-e0c5-ec3c-3da3-c50b37fbef7f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428370, 1549430000, '1', 404),
(39, 'api/example/services', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"7c2b7aba-7f85-deed-d309-3d825769427e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428382, 1549430000, '1', 404),
(40, 'api/example/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"337\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"a927b74d-cc4b-7215-9fdd-f3592820fcb0\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundarymV0NNVKnF6IL7z29\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:5:\"title\";s:3:\"tes\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428413, 1549430000, '1', 200),
(41, 'api/example/services', 'put', 'a:18:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"43\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"612f28dc-dc61-b57a-c9c0-69a5a8262b98\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:5:\"title\";s:4:\"tesa\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428448, 1549430000, '1', 200),
(42, 'api/example/services-enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"391bbf12-fd99-4e28-7fc5-6496dc491b0c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428468, 1549430000, '1', 200),
(43, 'api/example/services-disable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d5cbf18b-d9b5-f44d-c232-f84cc4d11db2\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428472, 1549430000, '1', 200),
(44, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"16344db9-d25f-e334-9651-333d7e88314e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428480, 1549430000, '1', 200),
(45, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"caef2b39-8710-18ca-6ce5-4fe6b70992a0\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=h6f32vnji308dtjd5sr71vei0ltn58lq\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428655, 1549430000, '1', 404),
(46, 'api/example/services/1', 'get', 'a:15:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"5c1fc3d5-e1a0-32d4-5577-0da8790112ac\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428659, 1549430000, '1', 404),
(47, 'api/example/services/0', 'get', 'a:15:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b65e8ad4-2781-d95d-de2c-4c8e8aa447fc\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428662, 1549430000, '1', 404),
(48, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b6e9a137-e2d0-9180-a433-6216c066a468\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428677, 1549430000, '1', 404),
(49, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"72518478-f719-4e92-cfe4-bf027a496092\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428680, 1549430000, '1', 404),
(50, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"faff51a0-75b3-9d5f-3b80-ba00e099b484\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428682, 1549430000, '1', 404),
(51, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"f20c8e54-9446-4d38-8a0f-219f1d5a561e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428715, 1549430000, '1', 404),
(52, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"5801b626-9ea3-b456-ae32-9af94267f20c\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428717, 1549430000, '1', 404),
(53, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"43e761b9-d088-5745-33a6-e6e2c77f8e0a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428725, 1549430000, '1', 0),
(54, 'api/example/services/a', 'get', 'a:14:{s:1:\"a\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"dda3a68d-329e-371a-e751-4fd11e3241e7\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428727, 1549430000, '1', 0),
(55, 'api/example/services/aa', 'get', 'a:14:{s:2:\"aa\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"c960faa4-1219-26de-d6fe-b7ddc07ec486\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428729, 1549430000, '1', 0),
(56, 'api/example/services/aa', 'get', 'a:14:{s:2:\"aa\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ab82d302-2290-2edd-eb75-0771e0de4f73\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428730, 1549430000, '1', 0),
(57, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"b5495e5a-91ee-67ca-07fd-505c64ac0685\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428734, 1549430000, '1', 0),
(58, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"9923d27a-b199-e900-361a-1d6b440579a1\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428741, 1549430000, '1', 404),
(59, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"0e4e077d-2103-723e-61fb-c5ec2ee8d025\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428742, 1549430000, '1', 404),
(60, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"f47e693b-addb-43f8-7837-ab0c7793c087\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428748, 1549430000, '1', 404),
(61, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"cbbd6ccb-dc98-f683-b919-c56aa9c0e66d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428749, 1549430000, '1', 404),
(62, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d1976171-7268-0319-2e50-4851a2fd6c22\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428786, 1549430000, '1', 200),
(63, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"fabc78b4-cc98-1a61-3131-0c44475cbcdc\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428800, 1549430000, '1', 404),
(64, 'api/example/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1ea384ac-8306-2f85-88da-49178e8a7f0e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428801, 1549430000, '1', 404),
(65, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ab54ff73-1a8a-cb60-b1b0-870b35536d9d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428805, 1549430000, '1', 404),
(66, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"ea261273-b754-5389-5412-58e6beb47631\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428807, 1549430000, '1', 404);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(67, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"9e35cfeb-4c7c-699b-5643-8470aca0fbcb\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428808, 1549430000, '1', 404),
(68, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"04edaf72-fcb9-e17b-2fc6-2986cbbbf741\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428815, 1549430000, '1', 200),
(69, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"2514eb50-6c21-1356-dfa9-e4eac100bf8a\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428816, 1549430000, '1', 200),
(70, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"be916c7e-09f8-5b25-2c50-d09787853210\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428826, 1549430000, '1', 200),
(71, 'api/example/services/disable', 'get', 'a:14:{s:7:\"disable\";N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"fddcff9d-7292-6c1e-ae51-0e74db0f397e\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549428841, 1549430000, '1', 200),
(72, 'api/services', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"bb1329fc-8f5a-bd41-0f66-d7fe899375b6\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=gfi1v6ub44v9airna31r4vql0d5mq2g2\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434763, 1549430000, '1', 404),
(73, 'api/services/disable', 'get', 'a:13:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1e145c56-5906-ea88-a56e-a6c2bf9ae277\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434776, 1549430000, '1', 200),
(74, 'api/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"340\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"003e2e9a-9dda-4605-9c78-fedc0f0a57be\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:78:\"------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition:_form-data;_name\";s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";i:0;s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";i:1;s:261:\"\"title\"\r\n\r\ntes ah\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"date\"\r\n\r\n2019-01-01\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3\r\nContent-Disposition: form-data; name=\"content\"\r\n\r\nini\r\n------WebKitFormBoundarylrlQsIiHIrwCnJE3--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434796, 1549430000, '1', 200),
(75, 'api/services', 'post', 'a:17:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"340\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"21a992d3-2eab-652c-dd40-fdb1b27632f2\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:12:\"Content-Type\";s:68:\"multipart/form-data; boundary=----WebKitFormBoundaryT4EoJtBkCQ8K6lqn\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:6:\"tes ah\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434803, 1549430000, '1', 200),
(76, 'api/services/detail', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"e91f5cdb-a803-5c82-de2d-af59bdf0072b\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434820, 1549430000, '1', 200),
(77, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"da4fade1-054f-e5bc-7b3d-7bdfd6dc0890\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434823, 1549430000, '1', 200),
(78, 'api/services/detail/2', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"216ef3d2-4d51-94bb-4a48-6947f622e27f\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434825, 1549430000, '1', 200),
(79, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"537a295c-f413-84a0-cf08-67482a6c039d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434830, 1549430000, '1', 200),
(80, 'api/services/detail', 'get', 'a:12:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"4f91ad2b-5a8b-947f-efdd-412572cc6296\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434831, 1549430000, '1', 200),
(81, 'api/services/detail/1', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"15127d88-080d-fb1b-d526-47437f9257d2\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434849, 1549430000, '1', 200),
(82, 'api/services/detail/2', 'get', 'a:14:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b2321b65-d3c7-71b6-c06c-bf8c11305996\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434851, 1549430000, '1', 200),
(83, 'api/services', 'put', 'a:18:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"47\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d74656c0-5e25-a4c6-7237-23ef9a1ce210\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:8:\"tesah uh\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434871, 1549430000, '1', 200),
(84, 'api/services/enable/1', 'put', 'a:19:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"47\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"c2454b7a-dddb-d292-306e-ddc176572eb8\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:5:\"title\";s:8:\"tesah uh\";s:4:\"date\";s:10:\"2019-01-01\";s:7:\"content\";s:3:\"ini\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434936, 1549430000, '1', 200),
(85, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"35291873-7622-cfd6-23b5-c0c943dddcef\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434952, 1549440000, '1', 200),
(86, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"043b2b1f-e7e5-18ca-e0de-b3efa3271808\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434970, 1549440000, '1', 200),
(87, 'api/services/enable/1', 'put', 'a:16:{i:0;N;s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"6b1ddca4-8512-a1b9-382e-ebc1a7796a91\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434971, 1549440000, '1', 200),
(88, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"d41aed32-18b4-96a0-6158-0d008a068ca1\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549434990, 1549440000, '1', 200),
(89, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"bcfb6c42-5e8e-3733-2fe7-bede9320fbd0\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435032, 1549440000, '1', 200),
(90, 'api/services/disable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"8ba1482d-f892-55a3-293d-faadb1ceb153\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435039, 1549440000, '1', 200),
(91, 'api/services/enable', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"7bd0b329-191e-52a9-d139-a2d7c158cd13\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435046, 1549440000, '1', 200),
(92, 'api/services/delete', 'put', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"643bb8b6-7edb-359a-7151-afb177dc0837\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435056, 1549440000, '1', 200),
(93, 'api/services', 'delete', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"041e4196-2eea-aa15-bad9-20df6c9acb1d\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=htg6ga22bj85pmfg8eurnju3pe5i262u\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435078, 1549440000, '1', 200),
(94, 'api/services', 'delete', 'a:15:{s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:6:\"Origin\";s:51:\"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Postman-Token\";s:36:\"1f715e2e-ea3b-d008-56b0-946c4f5f4d53\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:45:\"id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7,fil;q=0.6\";s:6:\"Cookie\";s:43:\"ci_session=nkv3g7akvntgcd18ur7a4k02o5pm9rv6\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.236.122', 1549435084, 1549440000, '1', 200),
(95, 'api/services', 'get', 'a:9:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"9eb3274b-e76d-48c9-8398-904cb2c09d56\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.148.201', 1550041680, 0.046937, '0', 403),
(96, 'api/services', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"fac2440a-8f8a-430b-a974-b987f96839ca\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550041746, 0.03969, '1', 0),
(97, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"d183c396-83d6-46f9-8625-9c7e996b1ee6\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550041890, 0.0436552, '1', 404),
(98, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"58030595-56be-4fbe-888c-be60f7e5563c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=m7h04auf726kni0f1drtlu2i5gsto0lv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550042033, 0.3466, '1', 200),
(99, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7fe9cef8-cbb0-4272-80d3-f9900f4a2297\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=00p5toh62fbnfbrapstu4do5pd2m5k1g\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043293, 0.038852, '1', 200),
(100, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"08d7c7d9-094a-41ea-81ef-e36b64bc9014\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043338, 0.038234, '1', 200),
(101, 'api/customer/detail/3', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7df16ff6-d61f-4187-9c17-c5ce6167b3df\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043341, 0.0393689, '1', 200),
(102, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bd5e8835-e313-43fa-af33-d81fe9524a2b\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043345, 0.0416031, '1', 200),
(103, 'api/customer/detail', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ad35228d-cc4d-49bc-a4bf-8cea06c5e871\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043354, 0.041436, '1', 200),
(104, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e30dc5a1-111a-4df7-9f68-10b8a01b5d2f\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043357, 0.0402689, '1', 200),
(105, 'api/customer/index_detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"378b4b80-ba76-4700-a7f2-90843fe6d12c\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043363, 0.0494442, '1', 200),
(106, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"92d2bfcb-f7c6-4a74-b267-8f7ec2c94079\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043379, 0.045403, '1', 200),
(107, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3319eaf6-e27f-4fc8-9127-e9f085acca16\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043412, 0.040298, '1', 200),
(108, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e5354978-963c-47d5-9011-9df26f790075\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043439, 0.0403781, '1', 404),
(109, 'api/customer/detail/2', 'post', 'a:17:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6f15e59e-9569-43bc-a36b-6e38d2614227\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cebaammcrlfrmo22ob063uu9j99aj3or\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------270277143471167715971007\";s:14:\"Content-Length\";s:3:\"583\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:18:\"Bayu Briyan El Roy\";s:5:\"email\";s:24:\"bayubriyanelroy@gmal.com\";s:5:\"phone\";s:12:\"081230008101\";s:7:\"address\";s:56:\"Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043765, 0.0433841, '1', 200),
(110, 'api/customer/detail/2', 'post', 'a:17:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"021b5b57-e343-4b71-8bd7-9eb0ee56608b\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=ocfa57scutskl15se2kfcquut0c5qcf6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------241408044604135091511042\";s:14:\"Content-Length\";s:3:\"473\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"address\";s:0:\"\";s:5:\"phone\";s:0:\"\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550043819, 0.074012, '1', 200),
(111, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c7c07d35-658f-4bc5-91fe-808d684170b1\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=ocfa57scutskl15se2kfcquut0c5qcf6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:3:\"167\";s:10:\"Connection\";s:10:\"keep-alive\";s:4:\"name\";s:18:\"Bayu Briyan El Roy\";s:5:\"email\";s:24:\"bayubriyanelroy@gmal.com\";s:7:\"address\";s:12:\"081230008101\";s:5:\"phone\";s:56:\"Jl Madasah Azziadah 24 Klender Duren Sawit Jakarta Timur\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048354, 0.0457339, '1', 200),
(112, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"891707bc-ee69-4f66-9f9a-d443df828569\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"33\";s:10:\"Connection\";s:10:\"keep-alive\";s:7:\"address\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:2:\"id\";s:1:\"2\";s:4:\"name\";s:0:\"\";s:5:\"email\";s:0:\"\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048393, 0.0788889, '1', 200),
(113, 'api/customer', 'delete', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"20c22bab-e0ff-4ae7-93e9-1b31a76b80fe\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048516, 0.04495, '1', 400),
(114, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c81411b7-5a9b-412d-bb50-45725d178c11\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"3\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048560, 0.0388892, '1', 200),
(115, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"26396c1a-8e8d-47f3-9602-dc03e8e12fc3\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"3\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048595, 0.0394552, '1', 404),
(116, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ac36bcce-0e42-4a69-8308-4ede1e1f3561\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=37s1q7gk3gn2aeg9ro5ob31up38apt58\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048671, 0.0670228, '1', 200),
(117, 'api/customer', 'delete', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c407981f-055a-4663-96fd-2d9e281bdff5\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"2\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048689, 0.04316, '1', 404),
(118, 'api/customer/enable', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"55701b25-9c14-46aa-ba95-fde151a8281d\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"4\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048728, 0.046968, '1', 200),
(119, 'api/customer/enable', 'put', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"56c42994-6fd9-4291-a637-426d62fa3c6a\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.0\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=8i5f6u5b0nfn5tl1ivgjost2obatfvcv\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.148.201', 1550048810, 0.0421109, '1', 200),
(120, 'api/customer', 'get', 'a:10:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"55658acd-5e8a-420b-ac48-52cd56478e31\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.101.98', 1553486265, 0.043426, '0', 403),
(121, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"580bffef-90d3-49fb-b877-2c5a0b3768f6\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486285, 0.0393262, '1', 200),
(122, 'api/customer', 'post', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"74e8aac9-a514-4fd1-a378-7cb584845d45\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=noffqtdft10n5hslgh4410qv6kk88j9l\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486435, 0.0415149, '1', 200),
(123, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"61ad4f72-a273-4b0c-90d1-776651ee155d\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486456, 0.0401361, '1', 200),
(124, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f48b46f5-ef2c-4ced-828d-d55dcf4741e4\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486464, 0.0408051, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(125, 'api/customer/detail/2', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"25a837ed-9429-4b7b-adf2-f6a4c5a37024\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486468, 0.0408051, '1', 404),
(126, 'api/customer/detail/1', 'get', 'a:13:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"d35dbdaa-e37f-4b92-9b2b-12f285cb0b12\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";i:1;N;}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486471, 0.042562, '1', 200),
(127, 'api/customer/detail/1', 'post', 'a:12:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"914bbbda-2ea7-46f7-b9a4-41e60cbcbfcf\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486475, 0.041795, '1', 200),
(128, 'api/customer/detail/1', 'post', 'a:12:{i:0;N;s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b931dae0-efcf-4311-bad6-6b0281842cf9\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486478, 0.0405412, '1', 200),
(129, 'api/customer', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"776eb3f3-8102-4bd7-b787-1a5c4bcb4795\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486548, 0.0437829, '1', 200),
(130, 'api/customer', 'put', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"28873dba-1b14-4637-916e-8cdb5119f1eb\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486610, 0.0680921, '1', 200),
(131, 'api/customer', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7e1eac1e-faf7-44dd-b734-af0e471a8dea\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------132173021837729928827018\";s:14:\"Content-Length\";s:3:\"601\";s:10:\"Connection\";s:10:\"keep-alive\";s:90:\"----------------------------132173021837729928827018\r\nContent-Disposition:_form-data;_name\";s:510:\"\"id\"\r\n\r\n1\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"name\"\r\n\r\nMarcell\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"email\"\r\n\r\nmarcell@gmail.com\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"phone\"\r\n\r\n0\r\n----------------------------132173021837729928827018\r\nContent-Disposition: form-data; name=\"address\"\r\n\r\n-\r\n----------------------------132173021837729928827018--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486651, 0.0602229, '1', 200),
(132, 'api/customer/index', 'put', 'a:13:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bdc624da-d819-4d43-a638-2841595334cf\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------058076299379341907803355\";s:14:\"Content-Length\";s:3:\"601\";s:10:\"Connection\";s:10:\"keep-alive\";s:90:\"----------------------------058076299379341907803355\r\nContent-Disposition:_form-data;_name\";s:510:\"\"id\"\r\n\r\n1\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"name\"\r\n\r\nMarcell\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"email\"\r\n\r\nmarcell@gmail.com\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"phone\"\r\n\r\n0\r\n----------------------------058076299379341907803355\r\nContent-Disposition: form-data; name=\"address\"\r\n\r\n-\r\n----------------------------058076299379341907803355--\r\n\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486659, 0.0498202, '1', 200),
(133, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"7017eee3-7f68-470d-b48f-cda8a497db21\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"61\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";s:4:\"name\";s:7:\"Marcell\";s:5:\"email\";s:17:\"marcell@gmail.com\";s:5:\"phone\";s:1:\"0\";s:7:\"address\";s:1:\"-\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486677, 0.0547671, '1', 200),
(134, 'api/customer', 'put', 'a:17:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0919d15c-ab2d-4719-905a-294bab410871\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:2:\"72\";s:10:\"Connection\";s:10:\"keep-alive\";s:2:\"id\";s:1:\"1\";s:4:\"name\";s:7:\"Marcell\";s:5:\"email\";s:17:\"marcell@gmail.com\";s:5:\"phone\";s:12:\"023489234234\";s:7:\"address\";s:1:\"-\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486705, 0.067431, '1', 200),
(135, 'api/customer', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"22946704-6ecb-4ae0-818a-984fe1ebb128\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=0ou9naa8qcf17lcnuuh5836h89j9jng2\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:14:\"Content-Length\";s:1:\"0\";s:10:\"Connection\";s:10:\"keep-alive\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553486710, 0.0617602, '1', 200),
(136, 'api/service/1', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36\";s:6:\"Accept\";s:118:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:23:\"en-US,en;q=0.9,id;q=0.8\";s:6:\"Cookie\";s:162:\"__tawkuuid=e::gatoko1.com::OhUiMUccaj8WHrrU9umxSbLztAdgNdRTssI1QjdAzElG8peDYrIMeFEHEJGxhcsK::2; timezone=Asia/Jakarta; ci_session=ikkhl00q5hb0lmtih2p6drde5dd37s1v\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553490057, 0.0625389, '1', 200),
(137, 'api/service/1', 'get', 'a:12:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:4:\"Host\";s:11:\"gatoko1.com\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36\";s:6:\"Accept\";s:118:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:23:\"en-US,en;q=0.9,id;q=0.8\";s:6:\"Cookie\";s:162:\"__tawkuuid=e::gatoko1.com::OhUiMUccaj8WHrrU9umxSbLztAdgNdRTssI1QjdAzElG8peDYrIMeFEHEJGxhcsK::2; timezone=Asia/Jakarta; ci_session=ng0su29jtcb11lv1ee30qq70g9o6j7fs\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1553493660, 0.158972, '1', 200),
(138, 'api/example/users', 'get', 'a:9:{s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0a4c05b5-5bda-4ae6-b446-a56b0f58dd10\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '', '118.136.101.98', 1554794034, 0.0983059, '0', 403),
(139, 'api/example/users', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"10838701-cb4f-4a83-a991-0e05906965ca\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=p051e6s1ql0263n5n3sddmlsk9u8rqs6\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554794302, 0.0760469, '1', 0),
(140, 'api/example/users', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3a770d89-3c5a-426c-8a88-ab7b2ff71a96\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=cb1hqv00que8cpvs70e1d5895usqu7td\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883642, 0.0705218, '1', 0),
(141, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"48c7470c-04ff-47f0-9e30-e464283234f0\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883651, 0.055877, '1', 0),
(142, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f5001237-7200-4352-b3f3-4aef64823792\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883678, 0.0204818, '1', 0),
(143, 'api/example', 'get', 'a:11:{s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"aba6da08-f4f7-4619-99b5-04c6ee8ffc87\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:10:\"User-Agent\";s:20:\"PostmanRuntime/7.6.1\";s:6:\"Accept\";s:3:\"*/*\";s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Cookie\";s:43:\"ci_session=94jbc6nbivmbtahbnm04qncc3pf2585j\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:1:\"0\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '118.136.101.98', 1554883745, 0.136361, '1', 200),
(144, 'api/example', 'get', 'a:9:{s:4:\"Host\";s:11:\"gatoko1.com\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:13:\"deflate, gzip\";s:13:\"Authorization\";s:38:\"Basic c200cnRzMGZ0Oj96d01BeEJuUzlqag==\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"postman-token\";s:36:\"a99bba16-ad49-13bc-4f20-f6991eb24681\";s:8:\"x-sm-key\";s:32:\"35d3d08c3d7b7f445ceb8e726a87b26c\";s:14:\"Content-Length\";s:1:\"0\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";}', '35d3d08c3d7b7f445ceb8e726a87b26c', '103.233.102.8', 1554883924, 0.0799909, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `master_bahanbaku`
--

CREATE TABLE `master_bahanbaku` (
  `id` int(11) NOT NULL,
  `nama_bahanbaku` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bahanbaku`
--

INSERT INTO `master_bahanbaku` (`id`, `nama_bahanbaku`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Pullup Leather', 'ENABLE', '2019-10-28 16:23:12', '0000-00-00 00:00:00', 19),
(2, 'Milled Natural/Finish', 'ENABLE', '2019-10-28 16:23:21', '0000-00-00 00:00:00', 19),
(3, 'Suede', 'ENABLE', '2019-10-28 16:23:47', '2019-10-28 16:23:55', 19);

-- --------------------------------------------------------

--
-- Table structure for table `master_bank`
--

CREATE TABLE `master_bank` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bank`
--

INSERT INTO `master_bank` (`id`, `value`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'BCA Mobile', 'ENABLE', '2019-10-30 10:32:50', '2019-10-30 10:33:01', 21),
(2, 'BRI', 'ENABLE', '2019-10-30 10:32:56', '0000-00-00 00:00:00', 21);

-- --------------------------------------------------------

--
-- Table structure for table `master_kategori_produk`
--

CREATE TABLE `master_kategori_produk` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `ket_kategori` text NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kategori_produk`
--

INSERT INTO `master_kategori_produk` (`id`, `nama_kategori`, `ket_kategori`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Sepatu Heels', 'Sepatu Heels', 'ENABLE', '2019-10-28 16:21:43', '0000-00-00 00:00:00', 19),
(2, 'Sepatu Wedges', 'Sepatu Wedges', 'ENABLE', '2019-10-28 16:21:58', '0000-00-00 00:00:00', 19),
(3, 'Sepatu Sneakers', 'Sepatu Sneakers', 'ENABLE', '2019-10-28 16:22:07', '0000-00-00 00:00:00', 19),
(4, 'Sepatu Flat', 'Sepatu Flat', 'ENABLE', '2019-10-28 16:22:23', '0000-00-00 00:00:00', 19),
(5, 'Sepatu Boots', 'Sepatu Boots', 'ENABLE', '2019-10-28 16:22:33', '0000-00-00 00:00:00', 19),
(6, 'Tali Kulit', 'Tali Kulit', 'ENABLE', '2019-10-28 16:22:43', '0000-00-00 00:00:00', 19),
(7, 'Sole Sepatu', 'Sole Sepatu', 'ENABLE', '2019-10-28 16:22:52', '0000-00-00 00:00:00', 19);

-- --------------------------------------------------------

--
-- Table structure for table `master_kategori_suplier`
--

CREATE TABLE `master_kategori_suplier` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `ket_kategori` text NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kategori_suplier`
--

INSERT INTO `master_kategori_suplier` (`id`, `nama_kategori`, `ket_kategori`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Sepatu Wanita Kulit', 'Kategori Sepatu Wanita', 'ENABLE', '2019-10-28 15:13:31', '0000-00-00 00:00:00', 19);

-- --------------------------------------------------------

--
-- Table structure for table `master_kurir`
--

CREATE TABLE `master_kurir` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kurir`
--

INSERT INTO `master_kurir` (`id`, `value`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'JNE', 'ENABLE', '2019-10-30 10:43:55', '0000-00-00 00:00:00', 21);

-- --------------------------------------------------------

--
-- Table structure for table `master_ukuran`
--

CREATE TABLE `master_ukuran` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_ukuran`
--

INSERT INTO `master_ukuran` (`id`, `value`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, '32 Wanita', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 19),
(2, '33 Wanita', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 19),
(3, '34 Wanita', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 19),
(4, '35 Wanita', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 19),
(5, '36 Wanita', 'ENABLE', '2019-08-16 00:00:00', '0000-00-00 00:00:00', 19),
(6, '64 Laki Laki', 'ENABLE', '2019-10-30 11:19:04', '0000-00-00 00:00:00', 21);

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `urutan` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `notif` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`id`, `name`, `icon`, `link`, `urutan`, `parent`, `notif`, `status`, `created_at`, `updated_at`) VALUES
(16, 'User', 'fa fa-users', 'master/user', '7', '0', '', 'ENABLE', '2019-07-28 08:40:37', '2019-10-30 10:30:35'),
(17, 'Dashboard', 'fa fa-dashboard', '/', '1', '0', '', 'ENABLE', '2019-08-02 13:07:26', '2019-08-02 13:09:12'),
(24, 'Report', 'fa fa-file', '#', '7', '0', '', 'DISABLE', '2019-08-06 14:31:50', NULL),
(27, 'Manajemen Produk', 'fa fa-list', '#', '2', '0', '', 'ENABLE', '2019-08-16 10:55:53', '2019-10-30 10:29:18'),
(41, 'Master Kategori', 'fa fa-circle', 'master/master_kategori_produk', '2', '27', '', 'ENABLE', '2019-10-11 08:23:14', '2019-10-11 08:24:16'),
(39, 'Produk Ready', 'fa fa-circle', 'master/produk_ready', '0', '27', '', 'ENABLE', '2019-10-11 08:20:08', NULL),
(40, 'Produk Preorder', 'fa fa-circle', 'master/produk_preorder', '1', '27', '', 'ENABLE', '2019-10-11 08:21:25', NULL),
(64, 'Master', 'fa fa-database', '#', '8', '0', '', 'ENABLE', '2019-10-30 10:27:56', '2019-10-30 10:30:57'),
(61, 'Pesanan', 'fa fa-circle', 'master/transaksi', '5', '45', '', 'ENABLE', '2019-10-30 09:59:50', '2019-10-30 10:02:25'),
(45, 'Ready Stok', 'fa fa-shopping-cart', '#', '3', '0', '', 'ENABLE', NULL, '2019-10-30 10:29:30'),
(62, 'Proses', 'fa fa-circle', '#', '2', '45', '', 'ENABLE', '2019-10-30 10:00:25', NULL),
(48, 'Pre Order', 'fa fa-shopping-cart', '#', '4', '0', '', 'ENABLE', NULL, '2019-10-30 10:29:48'),
(49, 'Pesanan', 'fa fa-circle', 'master/transaksi_preorder', '1', '48', '', 'ENABLE', NULL, '2019-10-30 00:21:28'),
(50, 'Proses', 'fa fa-circle', '#', '1', '48', NULL, 'ENABLE', NULL, NULL),
(51, 'Selesai', 'fa fa-circle', '#', '1', '48', NULL, 'ENABLE', NULL, NULL),
(52, 'Suplier', 'fa fa-share-square', '#', '5', '0', '', 'ENABLE', NULL, '2019-10-30 10:30:07'),
(53, 'List Suplier', 'fa fa-circle', 'master/suplier', '3', '52', NULL, 'ENABLE', NULL, NULL),
(54, 'Kategori Suplier', 'fa fa-circle', 'master/master_kategori_suplier', '3', '52', NULL, 'ENABLE', NULL, NULL),
(55, 'Pelanggan', 'fa fa-users', 'master/customer', '6', '0', '', 'ENABLE', NULL, '2019-10-30 10:30:24'),
(56, 'Laporan', 'fa fa-file', '#', '5', '0', NULL, 'DISABLE', NULL, NULL),
(57, 'Master Bahan', 'fa fa-circle', 'master/master_bahanbaku', '1', '27', '', 'ENABLE', '2019-10-11 08:21:25', NULL),
(63, 'Selesai', 'fa fa-circle', '#', '3', '45', '', 'ENABLE', '2019-10-30 10:01:09', NULL),
(65, 'Bank', 'fa fa-circle', 'master/Master_bank', '1', '64', '', 'ENABLE', '2019-10-30 10:28:24', NULL),
(66, 'Kurir', 'fa fa-circle', 'master/Master_kurir', '2', '64', '', 'ENABLE', '2019-10-30 10:41:21', NULL),
(67, 'Ukuran', 'fa fa-circle', 'master/Master_ukuran', '3', '64', '', 'ENABLE', '2019-10-30 11:17:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk_preorder`
--

CREATE TABLE `produk_preorder` (
  `id` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_bahanbaku` int(11) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `ket_produk` text NOT NULL,
  `harga_produksi` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_preorder`
--

INSERT INTO `produk_preorder` (`id`, `id_suplier`, `id_kategori`, `id_bahanbaku`, `kode_barang`, `nama_produk`, `ket_produk`, `harga_produksi`, `harga_jual`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 2, 4, 1, 'Anjani heels', 'Anjani heels', '-', '400000', '550000', 'ENABLE', '2019-10-28 16:32:53', '2019-10-30 00:25:36', 19),
(2, 1, 3, 2, 'Mallini Sneakers', 'Mallini Sneakers', '-', '400000', '475000', 'ENABLE', '2019-10-30 01:36:07', '0000-00-00 00:00:00', 19);

-- --------------------------------------------------------

--
-- Table structure for table `produk_ready`
--

CREATE TABLE `produk_ready` (
  `id` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_bahanbaku` int(11) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `jumlah_stok` varchar(255) NOT NULL,
  `ukuran_produk` varchar(255) NOT NULL,
  `warna_produk` varchar(255) NOT NULL,
  `ket_produk` text NOT NULL,
  `harga_produksi` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_ready`
--

INSERT INTO `produk_ready` (`id`, `id_suplier`, `id_kategori`, `id_bahanbaku`, `kode_barang`, `nama_produk`, `jumlah_stok`, `ukuran_produk`, `warna_produk`, `ket_produk`, `harga_produksi`, `harga_jual`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 1, 3, 2, 'malini sneakers', 'malini sneakers', '5', '5', 'Maroon', '-', '300000', '475000', 'ENABLE', '2019-10-28 16:30:38', '2019-10-30 10:15:39', 19),
(2, 1, 3, 2, 'malini sneakers', 'malini sneakers', '5', '5', 'Merah', '-', '300000', '475000', 'ENABLE', '2019-10-28 16:31:01', '2019-10-30 10:15:45', 19),
(3, 1, 3, 2, 'malini sneakers', 'malini sneakers', '5', '5', 'Biru', '-', '300000', '475000', 'ENABLE', '2019-10-28 16:31:08', '2019-10-30 10:15:52', 19);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `country_id`, `name`) VALUES
('11', '62', 'ACEH'),
('12', '62', 'SUMATERA UTARA'),
('13', '62', 'SUMATERA BARAT'),
('14', '62', 'RIAU'),
('15', '62', 'JAMBI'),
('16', '62', 'SUMATERA SELATAN'),
('17', '62', 'BENGKULU'),
('18', '62', 'LAMPUNG'),
('19', '62', 'KEPULAUAN BANGKA BELITUNG'),
('21', '62', 'KEPULAUAN RIAU'),
('31', '62', 'DKI JAKARTA'),
('32', '62', 'JAWA BARAT'),
('33', '62', 'JAWA TENGAH'),
('34', '62', 'DI YOGYAKARTA'),
('35', '62', 'JAWA TIMUR'),
('36', '62', 'BANTEN'),
('51', '62', 'BALI'),
('52', '62', 'NUSA TENGGARA BARAT'),
('53', '62', 'NUSA TENGGARA TIMUR'),
('61', '62', 'KALIMANTAN BARAT'),
('62', '62', 'KALIMANTAN TENGAH'),
('63', '62', 'KALIMANTAN SELATAN'),
('64', '62', 'KALIMANTAN TIMUR'),
('65', '62', 'KALIMANTAN UTARA'),
('71', '62', 'SULAWESI UTARA'),
('72', '62', 'SULAWESI TENGAH'),
('73', '62', 'SULAWESI SELATAN'),
('74', '62', 'SULAWESI TENGGARA'),
('75', '62', 'GORONTALO'),
('76', '62', 'SULAWESI BARAT'),
('81', '62', 'MALUKU'),
('82', '62', 'MALUKU UTARA'),
('91', '62', 'PAPUA BARAT'),
('94', '62', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE'),
('1102', '11', 'KABUPATEN ACEH SINGKIL'),
('1103', '11', 'KABUPATEN ACEH SELATAN'),
('1104', '11', 'KABUPATEN ACEH TENGGARA'),
('1105', '11', 'KABUPATEN ACEH TIMUR'),
('1106', '11', 'KABUPATEN ACEH TENGAH'),
('1107', '11', 'KABUPATEN ACEH BARAT'),
('1108', '11', 'KABUPATEN ACEH BESAR'),
('1109', '11', 'KABUPATEN PIDIE'),
('1110', '11', 'KABUPATEN BIREUEN'),
('1111', '11', 'KABUPATEN ACEH UTARA'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES'),
('1114', '11', 'KABUPATEN ACEH TAMIANG'),
('1115', '11', 'KABUPATEN NAGAN RAYA'),
('1116', '11', 'KABUPATEN ACEH JAYA'),
('1117', '11', 'KABUPATEN BENER MERIAH'),
('1118', '11', 'KABUPATEN PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LANGSA'),
('1174', '11', 'KOTA LHOKSEUMAWE'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KABUPATEN NIAS'),
('1202', '12', 'KABUPATEN MANDAILING NATAL'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR'),
('1207', '12', 'KABUPATEN LABUHAN BATU'),
('1208', '12', 'KABUPATEN ASAHAN'),
('1209', '12', 'KABUPATEN SIMALUNGUN'),
('1210', '12', 'KABUPATEN DAIRI'),
('1211', '12', 'KABUPATEN KARO'),
('1212', '12', 'KABUPATEN DELI SERDANG'),
('1213', '12', 'KABUPATEN LANGKAT'),
('1214', '12', 'KABUPATEN NIAS SELATAN'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT'),
('1217', '12', 'KABUPATEN SAMOSIR'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA'),
('1221', '12', 'KABUPATEN PADANG LAWAS'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA'),
('1224', '12', 'KABUPATEN NIAS UTARA'),
('1225', '12', 'KABUPATEN NIAS BARAT'),
('1271', '12', 'KOTA SIBOLGA'),
('1272', '12', 'KOTA TANJUNG BALAI'),
('1273', '12', 'KOTA PEMATANG SIANTAR'),
('1274', '12', 'KOTA TEBING TINGGI'),
('1275', '12', 'KOTA MEDAN'),
('1276', '12', 'KOTA BINJAI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK'),
('1304', '13', 'KABUPATEN SIJUNJUNG'),
('1305', '13', 'KABUPATEN TANAH DATAR'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN'),
('1310', '13', 'KABUPATEN SOLOK SELATAN'),
('1311', '13', 'KABUPATEN DHARMASRAYA'),
('1312', '13', 'KABUPATEN PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAH LUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN'),
('1405', '14', 'KABUPATEN S I A K'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1407', '14', 'KABUPATEN ROKAN HULU'),
('1408', '14', 'KABUPATEN BENGKALIS'),
('1409', '14', 'KABUPATEN ROKAN HILIR'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1473', '14', 'KOTA D U M A I'),
('1501', '15', 'KABUPATEN KERINCI'),
('1502', '15', 'KABUPATEN MERANGIN'),
('1503', '15', 'KABUPATEN SAROLANGUN'),
('1504', '15', 'KABUPATEN BATANG HARI'),
('1505', '15', 'KABUPATEN MUARO JAMBI'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT'),
('1508', '15', 'KABUPATEN TEBO'),
('1509', '15', 'KABUPATEN BUNGO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR'),
('1603', '16', 'KABUPATEN MUARA ENIM'),
('1604', '16', 'KABUPATEN LAHAT'),
('1605', '16', 'KABUPATEN MUSI RAWAS'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN'),
('1607', '16', 'KABUPATEN BANYU ASIN'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR'),
('1610', '16', 'KABUPATEN OGAN ILIR'),
('1611', '16', 'KABUPATEN EMPAT LAWANG'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PRABUMULIH'),
('1673', '16', 'KOTA PAGAR ALAM'),
('1674', '16', 'KOTA LUBUKLINGGAU'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN'),
('1702', '17', 'KABUPATEN REJANG LEBONG'),
('1703', '17', 'KABUPATEN BENGKULU UTARA'),
('1704', '17', 'KABUPATEN KAUR'),
('1705', '17', 'KABUPATEN SELUMA'),
('1706', '17', 'KABUPATEN MUKOMUKO'),
('1707', '17', 'KABUPATEN LEBONG'),
('1708', '17', 'KABUPATEN KEPAHIANG'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT'),
('1802', '18', 'KABUPATEN TANGGAMUS'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA'),
('1807', '18', 'KABUPATEN WAY KANAN'),
('1808', '18', 'KABUPATEN TULANGBAWANG'),
('1809', '18', 'KABUPATEN PESAWARAN'),
('1810', '18', 'KABUPATEN PRINGSEWU'),
('1811', '18', 'KABUPATEN MESUJI'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT'),
('1813', '18', 'KABUPATEN PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KABUPATEN BANGKA'),
('1902', '19', 'KABUPATEN BELITUNG'),
('1903', '19', 'KABUPATEN BANGKA BARAT'),
('1904', '19', 'KABUPATEN BANGKA TENGAH'),
('1905', '19', 'KABUPATEN BANGKA SELATAN'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KABUPATEN KARIMUN'),
('2102', '21', 'KABUPATEN BINTAN'),
('2103', '21', 'KABUPATEN NATUNA'),
('2104', '21', 'KABUPATEN LINGGA'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA B A T A M'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA'),
('3201', '32', 'KABUPATEN BOGOR'),
('3202', '32', 'KABUPATEN SUKABUMI'),
('3203', '32', 'KABUPATEN CIANJUR'),
('3204', '32', 'KABUPATEN BANDUNG'),
('3205', '32', 'KABUPATEN GARUT'),
('3206', '32', 'KABUPATEN TASIKMALAYA'),
('3207', '32', 'KABUPATEN CIAMIS'),
('3208', '32', 'KABUPATEN KUNINGAN'),
('3209', '32', 'KABUPATEN CIREBON'),
('3210', '32', 'KABUPATEN MAJALENGKA'),
('3211', '32', 'KABUPATEN SUMEDANG'),
('3212', '32', 'KABUPATEN INDRAMAYU'),
('3213', '32', 'KABUPATEN SUBANG'),
('3214', '32', 'KABUPATEN PURWAKARTA'),
('3215', '32', 'KABUPATEN KARAWANG'),
('3216', '32', 'KABUPATEN BEKASI'),
('3217', '32', 'KABUPATEN BANDUNG BARAT'),
('3218', '32', 'KABUPATEN PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KABUPATEN CILACAP'),
('3302', '33', 'KABUPATEN BANYUMAS'),
('3303', '33', 'KABUPATEN PURBALINGGA'),
('3304', '33', 'KABUPATEN BANJARNEGARA'),
('3305', '33', 'KABUPATEN KEBUMEN'),
('3306', '33', 'KABUPATEN PURWOREJO'),
('3307', '33', 'KABUPATEN WONOSOBO'),
('3308', '33', 'KABUPATEN MAGELANG'),
('3309', '33', 'KABUPATEN BOYOLALI'),
('3310', '33', 'KABUPATEN KLATEN'),
('3311', '33', 'KABUPATEN SUKOHARJO'),
('3312', '33', 'KABUPATEN WONOGIRI'),
('3313', '33', 'KABUPATEN KARANGANYAR'),
('3314', '33', 'KABUPATEN SRAGEN'),
('3315', '33', 'KABUPATEN GROBOGAN'),
('3316', '33', 'KABUPATEN BLORA'),
('3317', '33', 'KABUPATEN REMBANG'),
('3318', '33', 'KABUPATEN PATI'),
('3319', '33', 'KABUPATEN KUDUS'),
('3320', '33', 'KABUPATEN JEPARA'),
('3321', '33', 'KABUPATEN DEMAK'),
('3322', '33', 'KABUPATEN SEMARANG'),
('3323', '33', 'KABUPATEN TEMANGGUNG'),
('3324', '33', 'KABUPATEN KENDAL'),
('3325', '33', 'KABUPATEN BATANG'),
('3326', '33', 'KABUPATEN PEKALONGAN'),
('3327', '33', 'KABUPATEN PEMALANG'),
('3328', '33', 'KABUPATEN TEGAL'),
('3329', '33', 'KABUPATEN BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KABUPATEN KULON PROGO'),
('3402', '34', 'KABUPATEN BANTUL'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL'),
('3404', '34', 'KABUPATEN SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KABUPATEN PACITAN'),
('3502', '35', 'KABUPATEN PONOROGO'),
('3503', '35', 'KABUPATEN TRENGGALEK'),
('3504', '35', 'KABUPATEN TULUNGAGUNG'),
('3505', '35', 'KABUPATEN BLITAR'),
('3506', '35', 'KABUPATEN KEDIRI'),
('3507', '35', 'KABUPATEN MALANG'),
('3508', '35', 'KABUPATEN LUMAJANG'),
('3509', '35', 'KABUPATEN JEMBER'),
('3510', '35', 'KABUPATEN BANYUWANGI'),
('3511', '35', 'KABUPATEN BONDOWOSO'),
('3512', '35', 'KABUPATEN SITUBONDO'),
('3513', '35', 'KABUPATEN PROBOLINGGO'),
('3514', '35', 'KABUPATEN PASURUAN'),
('3515', '35', 'KABUPATEN SIDOARJO'),
('3516', '35', 'KABUPATEN MOJOKERTO'),
('3517', '35', 'KABUPATEN JOMBANG'),
('3518', '35', 'KABUPATEN NGANJUK'),
('3519', '35', 'KABUPATEN MADIUN'),
('3520', '35', 'KABUPATEN MAGETAN'),
('3521', '35', 'KABUPATEN NGAWI'),
('3522', '35', 'KABUPATEN BOJONEGORO'),
('3523', '35', 'KABUPATEN TUBAN'),
('3524', '35', 'KABUPATEN LAMONGAN'),
('3525', '35', 'KABUPATEN GRESIK'),
('3526', '35', 'KABUPATEN BANGKALAN'),
('3527', '35', 'KABUPATEN SAMPANG'),
('3528', '35', 'KABUPATEN PAMEKASAN'),
('3529', '35', 'KABUPATEN SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KABUPATEN PANDEGLANG'),
('3602', '36', 'KABUPATEN LEBAK'),
('3603', '36', 'KABUPATEN TANGERANG'),
('3604', '36', 'KABUPATEN SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KABUPATEN JEMBRANA'),
('5102', '51', 'KABUPATEN TABANAN'),
('5103', '51', 'KABUPATEN BADUNG'),
('5104', '51', 'KABUPATEN GIANYAR'),
('5105', '51', 'KABUPATEN KLUNGKUNG'),
('5106', '51', 'KABUPATEN BANGLI'),
('5107', '51', 'KABUPATEN KARANG ASEM'),
('5108', '51', 'KABUPATEN BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5204', '52', 'KABUPATEN SUMBAWA'),
('5205', '52', 'KABUPATEN DOMPU'),
('5206', '52', 'KABUPATEN BIMA'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KABUPATEN SUMBA BARAT'),
('5302', '53', 'KABUPATEN SUMBA TIMUR'),
('5303', '53', 'KABUPATEN KUPANG'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA'),
('5306', '53', 'KABUPATEN BELU'),
('5307', '53', 'KABUPATEN ALOR'),
('5308', '53', 'KABUPATEN LEMBATA'),
('5309', '53', 'KABUPATEN FLORES TIMUR'),
('5310', '53', 'KABUPATEN SIKKA'),
('5311', '53', 'KABUPATEN ENDE'),
('5312', '53', 'KABUPATEN NGADA'),
('5313', '53', 'KABUPATEN MANGGARAI'),
('5314', '53', 'KABUPATEN ROTE NDAO'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA'),
('5318', '53', 'KABUPATEN NAGEKEO'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA'),
('5321', '53', 'KABUPATEN MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KABUPATEN SAMBAS'),
('6102', '61', 'KABUPATEN BENGKAYANG'),
('6103', '61', 'KABUPATEN LANDAK'),
('6104', '61', 'KABUPATEN MEMPAWAH'),
('6105', '61', 'KABUPATEN SANGGAU'),
('6106', '61', 'KABUPATEN KETAPANG'),
('6107', '61', 'KABUPATEN SINTANG'),
('6108', '61', 'KABUPATEN KAPUAS HULU'),
('6109', '61', 'KABUPATEN SEKADAU'),
('6110', '61', 'KABUPATEN MELAWI'),
('6111', '61', 'KABUPATEN KAYONG UTARA'),
('6112', '61', 'KABUPATEN KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR'),
('6203', '62', 'KABUPATEN KAPUAS'),
('6204', '62', 'KABUPATEN BARITO SELATAN'),
('6205', '62', 'KABUPATEN BARITO UTARA'),
('6206', '62', 'KABUPATEN SUKAMARA'),
('6207', '62', 'KABUPATEN LAMANDAU'),
('6208', '62', 'KABUPATEN SERUYAN'),
('6209', '62', 'KABUPATEN KATINGAN'),
('6210', '62', 'KABUPATEN PULANG PISAU'),
('6211', '62', 'KABUPATEN GUNUNG MAS'),
('6212', '62', 'KABUPATEN BARITO TIMUR'),
('6213', '62', 'KABUPATEN MURUNG RAYA'),
('6271', '62', 'KOTA PALANGKA RAYA'),
('6301', '63', 'KABUPATEN TANAH LAUT'),
('6302', '63', 'KABUPATEN KOTA BARU'),
('6303', '63', 'KABUPATEN BANJAR'),
('6304', '63', 'KABUPATEN BARITO KUALA'),
('6305', '63', 'KABUPATEN TAPIN'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA'),
('6309', '63', 'KABUPATEN TABALONG'),
('6310', '63', 'KABUPATEN TANAH BUMBU'),
('6311', '63', 'KABUPATEN BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJAR BARU'),
('6401', '64', 'KABUPATEN PASER'),
('6402', '64', 'KABUPATEN KUTAI BARAT'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR'),
('6405', '64', 'KABUPATEN BERAU'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA'),
('6411', '64', 'KABUPATEN MAHAKAM HULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KABUPATEN MALINAU'),
('6502', '65', 'KABUPATEN BULUNGAN'),
('6503', '65', 'KABUPATEN TANA TIDUNG'),
('6504', '65', 'KABUPATEN NUNUKAN'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW'),
('7102', '71', 'KABUPATEN MINAHASA'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN'),
('7106', '71', 'KABUPATEN MINAHASA UTARA'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN'),
('7202', '72', 'KABUPATEN BANGGAI'),
('7203', '72', 'KABUPATEN MOROWALI'),
('7204', '72', 'KABUPATEN POSO'),
('7205', '72', 'KABUPATEN DONGGALA'),
('7206', '72', 'KABUPATEN TOLI-TOLI'),
('7207', '72', 'KABUPATEN BUOL'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA'),
('7210', '72', 'KABUPATEN SIGI'),
('7211', '72', 'KABUPATEN BANGGAI LAUT'),
('7212', '72', 'KABUPATEN MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR'),
('7302', '73', 'KABUPATEN BULUKUMBA'),
('7303', '73', 'KABUPATEN BANTAENG'),
('7304', '73', 'KABUPATEN JENEPONTO'),
('7305', '73', 'KABUPATEN TAKALAR'),
('7306', '73', 'KABUPATEN GOWA'),
('7307', '73', 'KABUPATEN SINJAI'),
('7308', '73', 'KABUPATEN MAROS'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
('7310', '73', 'KABUPATEN BARRU'),
('7311', '73', 'KABUPATEN BONE'),
('7312', '73', 'KABUPATEN SOPPENG'),
('7313', '73', 'KABUPATEN WAJO'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG'),
('7315', '73', 'KABUPATEN PINRANG'),
('7316', '73', 'KABUPATEN ENREKANG'),
('7317', '73', 'KABUPATEN LUWU'),
('7318', '73', 'KABUPATEN TANA TORAJA'),
('7322', '73', 'KABUPATEN LUWU UTARA'),
('7325', '73', 'KABUPATEN LUWU TIMUR'),
('7326', '73', 'KABUPATEN TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PAREPARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KABUPATEN BUTON'),
('7402', '74', 'KABUPATEN MUNA'),
('7403', '74', 'KABUPATEN KONAWE'),
('7404', '74', 'KABUPATEN KOLAKA'),
('7405', '74', 'KABUPATEN KONAWE SELATAN'),
('7406', '74', 'KABUPATEN BOMBANA'),
('7407', '74', 'KABUPATEN WAKATOBI'),
('7408', '74', 'KABUPATEN KOLAKA UTARA'),
('7409', '74', 'KABUPATEN BUTON UTARA'),
('7410', '74', 'KABUPATEN KONAWE UTARA'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN'),
('7413', '74', 'KABUPATEN MUNA BARAT'),
('7414', '74', 'KABUPATEN BUTON TENGAH'),
('7415', '74', 'KABUPATEN BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAUBAU'),
('7501', '75', 'KABUPATEN BOALEMO'),
('7502', '75', 'KABUPATEN GORONTALO'),
('7503', '75', 'KABUPATEN POHUWATO'),
('7504', '75', 'KABUPATEN BONE BOLANGO'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KABUPATEN MAJENE'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA'),
('7604', '76', 'KABUPATEN MAMUJU'),
('7605', '76', 'KABUPATEN MAMUJU UTARA'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH'),
('8104', '81', 'KABUPATEN BURU'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA'),
('8109', '81', 'KABUPATEN BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI'),
('8208', '82', 'KABUPATEN PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KABUPATEN FAKFAK'),
('9102', '91', 'KABUPATEN KAIMANA'),
('9103', '91', 'KABUPATEN TELUK WONDAMA'),
('9104', '91', 'KABUPATEN TELUK BINTUNI'),
('9105', '91', 'KABUPATEN MANOKWARI'),
('9106', '91', 'KABUPATEN SORONG SELATAN'),
('9107', '91', 'KABUPATEN SORONG'),
('9108', '91', 'KABUPATEN RAJA AMPAT'),
('9109', '91', 'KABUPATEN TAMBRAUW'),
('9110', '91', 'KABUPATEN MAYBRAT'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK'),
('9171', '91', 'KOTA SORONG'),
('9401', '94', 'KABUPATEN MERAUKE'),
('9402', '94', 'KABUPATEN JAYAWIJAYA'),
('9403', '94', 'KABUPATEN JAYAPURA'),
('9404', '94', 'KABUPATEN NABIRE'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR'),
('9410', '94', 'KABUPATEN PANIAI'),
('9411', '94', 'KABUPATEN PUNCAK JAYA'),
('9412', '94', 'KABUPATEN MIMIKA'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL'),
('9414', '94', 'KABUPATEN MAPPI'),
('9415', '94', 'KABUPATEN ASMAT'),
('9416', '94', 'KABUPATEN YAHUKIMO'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG'),
('9418', '94', 'KABUPATEN TOLIKARA'),
('9419', '94', 'KABUPATEN SARMI'),
('9420', '94', 'KABUPATEN KEEROM'),
('9426', '94', 'KABUPATEN WAROPEN'),
('9427', '94', 'KABUPATEN SUPIORI'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA'),
('9429', '94', 'KABUPATEN NDUGA'),
('9430', '94', 'KABUPATEN LANNY JAYA'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH'),
('9432', '94', 'KABUPATEN YALIMO'),
('9433', '94', 'KABUPATEN PUNCAK'),
('9434', '94', 'KABUPATEN DOGIYAI'),
('9435', '94', 'KABUPATEN INTAN JAYA'),
('9436', '94', 'KABUPATEN DEIYAI'),
('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext,
  `header` text,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `name`, `query`, `header`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'SELECT * FROM user', '[\"nip\",\"name\",\"email\",\"password\",\"role_id\",\"desc\",\"status\",\"created_at\",\"updated_at\"]', 'ENABLE', '2019-03-13 09:57:07', '2019-03-19 17:13:35'),
(2, 'Customer', 'SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= \'customer\'', '[\"nama\",\"email\",\"telp\",\"alamat\",\"status\",\"dir\"]', 'ENABLE', '2019-03-25 10:47:39', '2019-07-01 09:01:19'),
(3, 'Report SPM', 'SELECT * FROM surat_pembayaran', '[\"tanggal_register\",\"nomor_register\",\"skpd\",\"tanggal_spm\",\"nomor_spm\",\"kode_rekening_program\",\"kode_rekening_belanja\",\"uraian\",\"jumlah_gu\",\"jumlah_up\",\"jumlah_tu\",\"jumlah_ls\",\"pihak_ketiga\"]', 'ENABLE', '2019-07-28 08:13:14', '2019-07-28 08:25:00'),
(4, 'Report Realisasi Tahap Fisik', 'SELECT a.*, b.*\r\nFROM realisasi_tahap_fisik a\r\nLEFT OUTER JOIN user b\r\nON a.u_id  = b.id', NULL, 'DISABLE', '2019-08-06 13:10:12', NULL),
(5, 'Report Realisasi Tahap Fisik', 'SELECT b.name, a.*\r\nFROM realisasi_tahap_fisik a\r\nLEFT OUTER JOIN user b\r\nON a.u_id  = b.id', '[\"tanggal\",\"penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"keterangan\",\"name\"]', 'ENABLE', '2019-08-06 13:10:46', '2019-08-06 13:11:41'),
(6, 'Report Realisasi Tahap Anggaran', 'SELECT b.name, a.*\r\nFROM realisasi_tahap_anggaran a\r\nLEFT OUTER JOIN user b\r\nON a.u_id  = b.id', '[\"name\",\"tanggal\",\"penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"keterangan\"]', 'ENABLE', '2019-08-06 13:13:22', '2019-08-07 18:21:01'),
(7, 'Tahap Fisik', 'SELECT a.id, YEAR(a.created_at) as tahun, a.target as target, b.name as kab_kota\r\n,SUM(c.penyuluhan) as penyuluhan\r\n,(100*SUM(c.penyuluhan)/a.target) as persentase_penyuluhan\r\n,SUM(c.Inventarisasi_dan_identifikasi_os) as Inventarisasi_dan_identifikasi_os\r\n,(100*SUM(c.Inventarisasi_dan_identifikasi_os)/a.target) as persentase_Inventarisasi_dan_identifikasi_os\r\n,SUM(c.pengukuran_dan_pemetaan) as pengukuran_dan_pemetaan\r\n,(100*SUM(c.pengukuran_dan_pemetaan)/a.target)as persentase_pengukuran_dan_pemetaan\r\n,SUM(c.sidang_ppl) as sidang_ppl\r\n,(100*SUM(c.sidang_ppl)/a.target) as persentase_sidang_ppl\r\n,SUM(c.penetapan_obyek_dan_subyek) as penetapan_obyek_dan_subyek\r\n,(100*SUM(c.penetapan_obyek_dan_subyek)/a.target)as persentase_penetapan_obyek_dan_subyek\r\n,SUM(c.sk_redis) as sk_redis\r\n,(100*SUM(c.sk_redis)/a.target) as persentase_sk_redis\r\n,SUM(c.pembukuan_hak_dan_penerbitan_sertipikat) as pembukuan_hak_dan_penerbitan_sertipikat\r\n,(100*SUM(c.pembukuan_hak_dan_penerbitan_sertipikat)/a.target) as persentase_pembukuan_hak_dan_penerbitan_sertipikat, \r\n\r\n\r\n\r\nCOUNT(c.id) as total_laporan\r\nFROM user x\r\ntarget_bidang a\r\nON x.id = a.u_id\r\nLEFT OUTER JOIN user b\r\nON a.u_id = b.id\r\nLEFT OUTER JOIN realisasi_tahap_fisik c\r\nON a.u_id = c.u_id\r\nWHERE b.role_id=18 AND a.status=\'ENABLE\' AND b.status = \'ENABLE\' AND c.status=\'ENABLE\'\r\nGROUP BY a.id', '[\"tahun\",\"target\",\"kab_kota\",\"penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"total_laporan\"]', 'DISABLE', '2019-08-06 14:45:17', '2019-08-07 18:03:11'),
(8, 'Tahap Anggaran', 'SELECT \r\nx.*, \r\n\r\nCOALESCE(SUM(y.penyuluhan),\'0\') as penyuluhan\r\n,COALESCE((100*SUM(y.penyuluhan)/x.target),\'0\') as persentase_penyuluhan\r\n,COALESCE(SUM(y.Inventarisasi_dan_identifikasi_os),\'0\') as Inventarisasi_dan_identifikasi_os\r\n,COALESCE((100*SUM(y.Inventarisasi_dan_identifikasi_os)/x.target),\'0\') as persentase_Inventarisasi_dan_identifikasi_os\r\n,COALESCE(SUM(y.pengukuran_dan_pemetaan),\'0\') as pengukuran_dan_pemetaan\r\n,COALESCE((100*SUM(y.pengukuran_dan_pemetaan)/x.target),\'0\') as persentase_pengukuran_dan_pemetaan\r\n,COALESCE(SUM(y.sidang_ppl),\'0\') as sidang_ppl\r\n,COALESCE((100*SUM(y.sidang_ppl)/x.target),\'0\') as persentase_sidang_ppl\r\n,COALESCE(SUM(y.penetapan_obyek_dan_subyek),\'0\') as penetapan_obyek_dan_subyek\r\n,COALESCE((100*SUM(y.penetapan_obyek_dan_subyek)/x.target),\'0\') as persentase_penetapan_obyek_dan_subyek\r\n,COALESCE(SUM(y.sk_redis),\'0\') as sk_redis\r\n,COALESCE((100*SUM(y.sk_redis)/x.target),\'0\') as persentase_sk_redis\r\n,COALESCE(SUM(y.pembukuan_hak_dan_penerbitan_sertipikat),\'0\') as pembukuan_hak_dan_penerbitan_sertipikat\r\n,COALESCE((100*SUM(y.pembukuan_hak_dan_penerbitan_sertipikat)/x.target),\'0\') as persentase_pembukuan_hak_dan_penerbitan_sertipikat\r\n,COALESCE(COUNT(y.id),\'0\') as total_laporan\r\nFROM\r\n(\r\n    SELECT CONCAT(a.u_id,\'-\',YEAR(a.tahun)) as id2, YEAR(a.tahun) as tahun, b.name as kota_kab, a.target\r\nFROM target_bidang a\r\nLEFT OUTER JOIN user b\r\nON a.u_id = b.id\r\nORDER BY YEAR(a.tahun) ASC, b.name ASC\r\n) x\r\nLEFT OUTER JOIN\r\n(\r\n   SELECT CONCAT(c.u_id,\'-\',YEAR(c.tanggal)) as id2, c.*\r\nFROM realisasi_tahap_anggaran c\r\nWHERE  c.status=\'ENABLE\'\r\n)y\r\nON x.id2 = y.id2\r\nGROUP BY x.id2', '[\"tahun\",\"kota_kab\",\"target\",\"penyuluhan\",\"persentase_penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"persentase_Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"persentase_pengukuran_dan_pemetaan\",\"sidang_ppl\",\"persentase_sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"persentase_penetapan_obyek_dan_subyek\",\"sk_redis\",\"persentase_sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"persentase_pembukuan_hak_dan_penerbitan_sertipikat\",\"total_laporan\"]', 'ENABLE', '2019-08-06 14:51:20', '2019-08-09 14:33:46'),
(9, 'Tahap FIsik', 'SELECT \r\nx.*, \r\n\r\nCOALESCE(SUM(y.penyuluhan),\'0\') as penyuluhan\r\n,COALESCE((100*SUM(y.penyuluhan)/x.target),\'0\') as persentase_penyuluhan\r\n,COALESCE(SUM(y.Inventarisasi_dan_identifikasi_os),\'0\') as Inventarisasi_dan_identifikasi_os\r\n,COALESCE((100*SUM(y.Inventarisasi_dan_identifikasi_os)/x.target),\'0\') as persentase_Inventarisasi_dan_identifikasi_os\r\n,COALESCE(SUM(y.pengukuran_dan_pemetaan),\'0\') as pengukuran_dan_pemetaan\r\n,COALESCE((100*SUM(y.pengukuran_dan_pemetaan)/x.target),\'0\') as persentase_pengukuran_dan_pemetaan\r\n,COALESCE(SUM(y.sidang_ppl),\'0\') as sidang_ppl\r\n,COALESCE((100*SUM(y.sidang_ppl)/x.target),\'0\') as persentase_sidang_ppl\r\n,COALESCE(SUM(y.penetapan_obyek_dan_subyek),\'0\') as penetapan_obyek_dan_subyek\r\n,COALESCE((100*SUM(y.penetapan_obyek_dan_subyek)/x.target),\'0\') as persentase_penetapan_obyek_dan_subyek\r\n,COALESCE(SUM(y.sk_redis),\'0\') as sk_redis\r\n,COALESCE((100*SUM(y.sk_redis)/x.target),\'0\') as persentase_sk_redis\r\n,COALESCE(SUM(y.pembukuan_hak_dan_penerbitan_sertipikat),\'0\') as pembukuan_hak_dan_penerbitan_sertipikat\r\n,COALESCE((100*SUM(y.pembukuan_hak_dan_penerbitan_sertipikat)/x.target),\'0\') as persentase_pembukuan_hak_dan_penerbitan_sertipikat\r\n,COALESCE(COUNT(y.id),\'0\') as total_laporan\r\nFROM\r\n(\r\n    SELECT CONCAT(a.u_id,\'-\',YEAR(a.tahun)) as id2, YEAR(a.tahun) as tahun, b.name as kota_kab, a.target\r\nFROM target_bidang a\r\nLEFT OUTER JOIN user b\r\nON a.u_id = b.id\r\nORDER BY YEAR(a.tahun) ASC, b.name ASC\r\n) x\r\nLEFT OUTER JOIN\r\n(\r\n   SELECT CONCAT(c.u_id,\'-\',YEAR(c.tanggal)) as id2, c.*\r\nFROM realisasi_tahap_fisik c\r\nWHERE  c.status=\'ENABLE\'\r\n)y\r\nON x.id2 = y.id2\r\nGROUP BY x.id2', '[\"tahun\",\"kota_kab\",\"target\",\"penyuluhan\",\"persentase_penyuluhan\",\"Inventarisasi_dan_identifikasi_os\",\"persentase_Inventarisasi_dan_identifikasi_os\",\"pengukuran_dan_pemetaan\",\"persentase_pengukuran_dan_pemetaan\",\"sidang_ppl\",\"persentase_sidang_ppl\",\"penetapan_obyek_dan_subyek\",\"persentase_penetapan_obyek_dan_subyek\",\"sk_redis\",\"persentase_sk_redis\",\"pembukuan_hak_dan_penerbitan_sertipikat\",\"persentase_pembukuan_hak_dan_penerbitan_sertipikat\",\"total_laporan\"]', 'ENABLE', '2019-08-09 14:34:28', '2019-08-09 14:34:58'),
(10, 'Report Transaksi', 'SELECT date(transaksi.created_at) as tanggal, COUNT(transaksi.idTransaksi) as jumlah, SUM(transaksi.jumlahTransaksi) as qty, SUM(transaksi.totalTransaksi) as totaljual, SUM(transaksi.totalBeliProduk) as totalbeli FROM transaksi WHERE transaksi.idCreator = \'19\' AND date(transaksi.created_at) BETWEEN \'2019-08-18\' AND \'2019-08-18\' GROUP BY date(transaksi.created_at)', '[\"tanggal\",\"jumlah\",\"qty\",\"totaljual\",\"totalbeli\"]', 'ENABLE', '2019-08-19 11:51:23', '2019-08-19 11:51:41'),
(11, 'Report Transaksi Admin', 'SELECT date(transaksi.created_at) as tanggal, COUNT(transaksi.idTransaksi) as jumlah, SUM(transaksi.jumlahTransaksi) as qty, SUM(transaksi.totalTransaksi) as totaljual, SUM(transaksi.totalBeliProduk) as totalbeli FROM transaksi WHERE transaksi.idCreator = \'19\' AND date(transaksi.created_at) BETWEEN \'2019-08-18\' AND \'2019-08-18\' GROUP BY date(transaksi.created_at)', '[\"tanggal\",\"jumlah\",\"qty\",\"totaljual\",\"totalbeli\"]', 'ENABLE', '2019-08-19 12:31:00', '2019-08-19 12:31:46'),
(12, 'Laporan Terapis', 'SELECT *\r\nFROM\r\n(SELECT id_terapis, nama_terapis \r\nFROM terapis) a\r\n\r\nLEFT JOIN \r\n\r\n(SELECT id_terapis, count(rekam_kunjungan.id_kunjungan) as jumlah, created_at\r\nFROM rekam_kunjungan\r\n WHERE date(rekam_kunjungan.created_at) BETWEEN \'2019-10-02\' AND \'2019-10-02\' \r\n GROUP BY date(rekam_kunjungan.created_at)) b\r\n\r\nON a.id_terapis = b.id_terapis', NULL, 'DISABLE', '2019-10-02 10:21:22', NULL),
(13, 'Laporan Terapis', 'SELECT *\r\nFROM\r\n(SELECT terapis.id_terapis, nama_terapis \r\nFROM terapis) a\r\n\r\nLEFT JOIN \r\n\r\n(SELECT rekam_kunjungan.id_terapis, count(rekam_kunjungan.id_kunjungan) as jumlah, created_at\r\nFROM rekam_kunjungan\r\n WHERE date(rekam_kunjungan.created_at) BETWEEN \'2019-10-02\' AND \'2019-10-02\' \r\n GROUP BY date(rekam_kunjungan.created_at)) b\r\n\r\nON a.id_terapis = b.id_terapis', NULL, 'DISABLE', '2019-10-02 10:22:41', NULL),
(14, 'Laporan Terapis', 'SELECT nama_terapis, COALESCE(jumlah, created_at, 0) as jumlah\r\nFROM\r\n(SELECT id_terapis, nama_terapis \r\nFROM terapis) a\r\n\r\nLEFT JOIN \r\n\r\n(SELECT id_terapis, count(rekam_kunjungan.id_kunjungan) as jumlah, created_at\r\nFROM rekam_kunjungan\r\n WHERE date(rekam_kunjungan.created_at) BETWEEN \'2019-10-02\' AND \'2019-10-02\' \r\n GROUP BY date(rekam_kunjungan.created_at)) b\r\n\r\nON a.id_terapis = b.id_terapis', '[\"nama_terapis\",\"jumlah\"]', 'ENABLE', '2019-10-02 10:23:39', '2019-10-02 10:25:26'),
(15, 'Laporan Supplier', 'Select * FROM supplier', NULL, 'DISABLE', '2019-10-28 13:52:37', NULL),
(16, 'Laporan Supplier', 'SELECT * FROM suplier', NULL, 'ENABLE', '2019-10-28 13:53:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') DEFAULT NULL,
  `menu` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(17, 'Super Admin', 'ENABLE', '[\"17\",\"27\",\"41\",\"39\",\"40\",\"57\",\"45\",\"61\",\"62\",\"63\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"16\",\"64\",\"65\",\"66\",\"67\"]', '2018-10-12 17:03:59', '2019-10-30 11:17:22'),
(18, 'Operator', 'ENABLE', '[\"17\",\"27\",\"41\",\"39\",\"40\",\"57\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\"]', '2018-10-24 10:29:54', '2019-10-28 14:24:07'),
(19, 'Pelanggan', 'DISABLE', NULL, '2019-08-18 01:31:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `site` varchar(225) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `code`, `site`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, '725245003', 'JAKARTA', 'JAKARTA', 'ENABLE', '2018-02-05 15:24:09', '2018-10-12 04:20:35'),
(7, '71805050', 'ADARO', 'SIS ADARO', 'ENABLE', '2018-02-05 13:48:30', '2018-08-06 05:40:46'),
(8, '71923055', 'KIDECO', 'BUMA KIDECO', 'ENABLE', '2018-02-05 13:50:04', '2018-10-12 04:20:39'),
(9, '72524510', 'HANDIL', 'HANDIL', 'ENABLE', '2018-02-13 17:59:15', '2018-05-03 09:09:28'),
(10, '71005052', 'LATI', 'BUMA LATI', 'ENABLE', '2018-02-27 04:51:48', '2018-05-03 09:09:36'),
(11, '72005051', 'ARKON', 'ARKON', 'ENABLE', '2018-02-27 04:52:11', '2018-10-12 03:20:21'),
(12, '71605055', 'ADARO', 'BUMA ADARO', 'ENABLE', '2018-03-20 06:48:21', '2018-05-03 09:09:51'),
(13, '71605054', 'BINUNGAN', 'BUMA BINUNGAN', 'ENABLE', '2018-03-20 06:48:44', '2018-05-03 09:09:58'),
(14, '72305050', 'SAMBARATA', 'SIS SAMBARATA', 'ENABLE', '2018-03-20 06:49:06', '2018-05-03 09:10:07'),
(15, '72305052', 'LATI', 'RBA LATI', 'ENABLE', '2018-03-20 06:49:25', '2018-05-03 09:10:17'),
(16, '72305053', 'MARTABE', 'MARTABE', 'ENABLE', '2018-03-20 06:49:47', '2018-05-03 09:10:24'),
(17, '72805053', 'AKT', 'AKT', 'ENABLE', '2018-03-20 06:50:02', '2018-05-03 09:10:33'),
(18, '72905053', 'KIDECO', 'PETROSEA KIDECO', 'ENABLE', '2018-03-20 06:50:26', '2018-05-03 09:10:43'),
(19, '73305053', 'BAKAN', 'BAKAN', 'ENABLE', '2018-03-20 06:50:56', '2018-05-03 09:10:52'),
(20, '73305054', 'BINUNGAN', 'SIS BINUNGAN', 'ENABLE', '2018-03-20 06:51:11', '2018-05-03 09:11:01'),
(21, 'sss', 'asdad', 'sadsa', 'ENABLE', '2018-08-07 13:58:09', NULL),
(22, '725245003', 'BANDUNG', 'BANDUNG', 'ENABLE', '2018-08-11 02:56:50', NULL),
(23, '7879779879', 'BANDUNG', 'BANDUNG', 'ENABLE', '2018-08-11 02:59:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `id` int(11) NOT NULL,
  `nama_suplier` varchar(255) NOT NULL,
  `alamat_suplier` text NOT NULL,
  `hp_suplier` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`id`, `nama_suplier`, `alamat_suplier`, `hp_suplier`, `id_kategori`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Pak Gopar', 'Malang', '081233619791', 1, 'ENABLE', '2019-10-28 16:20:07', '0000-00-00 00:00:00', 19),
(2, 'Pak Ridwan	', 'Malang', '085791343587', 1, 'ENABLE', '2019-10-28 16:20:40', '0000-00-00 00:00:00', 19),
(3, 'Pak Hadek', 'Malang', '081253636363636', 1, 'ENABLE', '2019-10-28 16:21:01', '0000-00-00 00:00:00', 19);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_kurir` int(11) NOT NULL,
  `biaya_kirim` varchar(255) NOT NULL,
  `jumlah_bayar` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `kembalian` varchar(255) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `id_dropshipper` int(11) NOT NULL,
  `resi_pengiriman` varchar(255) NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `id_customer`, `id_kurir`, `biaya_kirim`, `jumlah_bayar`, `sub_total`, `kembalian`, `id_bank`, `id_dropshipper`, `resi_pengiriman`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(10, 'INVL-7ISLV', 1, 1, '50000', '2000000', '1030000', '1020000', 1, 2, '', 'ENABLE', '2019-10-30 13:39:08', '0000-00-00 00:00:00', 21);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_produk`
--

CREATE TABLE `transaksi_produk` (
  `id` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_produk_preorder` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `harga_satuan` varchar(255) NOT NULL,
  `biaya_lain` varchar(255) NOT NULL,
  `diskon` varchar(255) NOT NULL,
  `harga_total` varchar(255) NOT NULL,
  `tipe` enum('Ready Stok','Preorder') NOT NULL,
  `status_order` enum('Pesanan Baru','Diproduksi','Selesai') NOT NULL,
  `tgl_status_order` datetime NOT NULL,
  `status_pengiriman` enum('Belum Dikirim','Sudah Dikirim') NOT NULL,
  `tgl_status_pengiriman` datetime NOT NULL,
  `status_pembayaran` enum('Belum Dibayar','Belum Lunas','Lunas') NOT NULL,
  `tgl_status_pembayaran` datetime NOT NULL,
  `status` enum('ENABLE','DISABLE') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_produk`
--

INSERT INTO `transaksi_produk` (`id`, `kode_transaksi`, `id_produk_preorder`, `qty`, `ukuran`, `warna`, `keterangan`, `harga_satuan`, `biaya_lain`, `diskon`, `harga_total`, `tipe`, `status_order`, `tgl_status_order`, `status_pengiriman`, `tgl_status_pengiriman`, `status_pembayaran`, `tgl_status_pembayaran`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(41, 'INVL-7ISLV', 2, '2', '4', 'Hitam', 'Sepatu ku', '475000', '5000', '50', '480000', 'Preorder', 'Pesanan Baru', '0000-00-00 00:00:00', 'Belum Dikirim', '0000-00-00 00:00:00', 'Belum Dibayar', '0000-00-00 00:00:00', 'ENABLE', '2019-10-30 13:39:08', '2019-10-30 13:39:08', 21),
(42, 'INVL-7ISLV', 1, '1', '3', 'Biru', 'Sepatu ku', '550000', '5000', '10', '500000', 'Preorder', 'Pesanan Baru', '0000-00-00 00:00:00', 'Belum Dikirim', '0000-00-00 00:00:00', 'Belum Dibayar', '0000-00-00 00:00:00', 'ENABLE', '2019-10-30 13:39:08', '2019-10-30 13:39:08', 21);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nip`, `name`, `email`, `password`, `role_id`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(19, 'arvin', 'Arvin', 'arvin.fairuz.af@gmail.com', '89f6432af2e2bcea9489ad02cd27a134', 18, 'Sarinah Malang Ground Floor, Jl. Jenderal Basuki Rahmat No.2A', 'ENABLE', '2019-08-16 00:00:00', '2019-10-01 16:16:18'),
(20, 'adminarvin', 'admin', 'arvin.fairuz.af@gmail.com', '89f6432af2e2bcea9489ad02cd27a134', 17, '-', 'ENABLE', '2019-08-16 00:00:00', '2019-08-16 15:19:52'),
(21, 'admin', 'Bagus Andika', 'procw57@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 17, 'ini Bagus', 'ENABLE', '2019-10-30 00:00:00', '2019-10-30 09:08:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_control`
--
ALTER TABLE `access_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grafik`
--
ALTER TABLE `grafik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bahanbaku`
--
ALTER TABLE `master_bahanbaku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bank`
--
ALTER TABLE `master_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kategori_produk`
--
ALTER TABLE `master_kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kategori_suplier`
--
ALTER TABLE `master_kategori_suplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kurir`
--
ALTER TABLE `master_kurir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_ukuran`
--
ALTER TABLE `master_ukuran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_preorder`
--
ALTER TABLE `produk_preorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_ready`
--
ALTER TABLE `produk_ready`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinces_country_id_index` (`country_id`);

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regencies_province_id_index` (`province_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_produk`
--
ALTER TABLE `transaksi_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `access_control`
--
ALTER TABLE `access_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `grafik`
--
ALTER TABLE `grafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `master_bahanbaku`
--
ALTER TABLE `master_bahanbaku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_bank`
--
ALTER TABLE `master_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_kategori_produk`
--
ALTER TABLE `master_kategori_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `master_kategori_suplier`
--
ALTER TABLE `master_kategori_suplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_kurir`
--
ALTER TABLE `master_kurir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_ukuran`
--
ALTER TABLE `master_ukuran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `produk_preorder`
--
ALTER TABLE `produk_preorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk_ready`
--
ALTER TABLE `produk_ready`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi_produk`
--
ALTER TABLE `transaksi_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
