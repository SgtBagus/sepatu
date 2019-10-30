-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2019 at 10:41 AM
-- Server version: 5.6.43
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gatokoco_sop`
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
(29, '', 'Debug', 'konfig', 'debug/konfig'),
(30, '', 'Debug', 'upload_file', 'debug/upload_file'),
(31, '', 'Debug', 'get_uri', 'debug/get_uri'),
(32, '', 'Debug', 'log_activity', 'debug/log_activity'),
(33, '', 'Debug', 'get_instance', 'debug/get_instance'),
(34, '', 'Fitur', '__construct', 'fitur/__construct'),
(35, '', 'Fitur', 'ekspor', 'fitur/ekspor'),
(36, '', 'Fitur', 'impor', 'fitur/impor'),
(37, '', 'Fitur', 'importdata', 'fitur/importdata'),
(38, '', 'Fitur', 'access', 'fitur/access'),
(39, '', 'Fitur', 'konfig', 'fitur/konfig'),
(40, '', 'Fitur', 'upload_file', 'fitur/upload_file'),
(41, '', 'Fitur', 'get_uri', 'fitur/get_uri'),
(42, '', 'Fitur', 'log_activity', 'fitur/log_activity'),
(43, '', 'Fitur', 'get_instance', 'fitur/get_instance'),
(44, '', 'Home', '__construct', 'home/__construct'),
(45, '', 'Home', 'index', 'home/index'),
(46, '', 'Home', 'chart', 'home/chart'),
(47, '', 'Home', 'get_autocomplete', 'home/get_autocomplete'),
(48, '', 'Home', 'konfig', 'home/konfig'),
(49, '', 'Home', 'upload_file', 'home/upload_file'),
(50, '', 'Home', 'get_uri', 'home/get_uri'),
(51, '', 'Home', 'log_activity', 'home/log_activity'),
(52, '', 'Home', 'get_instance', 'home/get_instance'),
(53, '', 'Login', '__construct', 'login/__construct'),
(54, '', 'Login', 'index', 'login/index'),
(55, '', 'Login', 'logout', 'login/logout'),
(56, '', 'Login', 'act_login', 'login/act_login'),
(57, '', 'Login', 'lockscreen', 'login/lockscreen'),
(58, '', 'Login', 'konfig', 'login/konfig'),
(59, '', 'Login', 'upload_file', 'login/upload_file'),
(60, '', 'Login', 'get_uri', 'login/get_uri'),
(61, '', 'Login', 'log_activity', 'login/log_activity'),
(62, '', 'Login', 'get_instance', 'login/get_instance'),
(63, '', 'Report', '__construct', 'report/__construct'),
(64, '', 'Report', 'portrait', 'report/portrait'),
(65, '', 'Report', 'landscape', 'report/landscape'),
(66, '', 'Report', 'konfig', 'report/konfig'),
(67, '', 'Report', 'upload_file', 'report/upload_file'),
(68, '', 'Report', 'get_uri', 'report/get_uri'),
(69, '', 'Report', 'log_activity', 'report/log_activity'),
(70, '', 'Report', 'get_instance', 'report/get_instance'),
(71, '', 'Rest_server', 'index', 'rest_server/index'),
(72, '', 'Rest_server', '__construct', 'rest_server/__construct'),
(73, '', 'Rest_server', 'get_instance', 'rest_server/get_instance'),
(74, '', 'Tinymce', '__construct', 'tinymce/__construct'),
(75, '', 'Tinymce', 'index', 'tinymce/index'),
(76, '', 'Tinymce', 'konfig', 'tinymce/konfig'),
(77, '', 'Tinymce', 'upload_file', 'tinymce/upload_file'),
(78, '', 'Tinymce', 'get_uri', 'tinymce/get_uri'),
(79, '', 'Tinymce', 'log_activity', 'tinymce/log_activity'),
(80, '', 'Tinymce', 'get_instance', 'tinymce/get_instance'),
(81, '', 'UploadImage', '__construct', 'uploadimage/__construct'),
(82, '', 'UploadImage', 'index', 'uploadimage/index'),
(83, '', 'UploadImage', 'uploadAjax', 'uploadimage/uploadajax'),
(84, '', 'UploadImage', 'ajaxImageUnlink', 'uploadimage/ajaximageunlink'),
(85, '', 'UploadImage', 'konfig', 'uploadimage/konfig'),
(86, '', 'UploadImage', 'upload_file', 'uploadimage/upload_file'),
(87, '', 'UploadImage', 'get_uri', 'uploadimage/get_uri'),
(88, '', 'UploadImage', 'log_activity', 'uploadimage/log_activity'),
(89, '', 'UploadImage', 'get_instance', 'uploadimage/get_instance'),
(90, 'master', 'Image', '__construct', 'master/image/__construct'),
(91, 'master', 'Image', 'index', 'master/image/index'),
(92, 'master', 'Image', 'create', 'master/image/create'),
(93, 'master', 'Image', 'validate', 'master/image/validate'),
(94, 'master', 'Image', 'store', 'master/image/store'),
(95, 'master', 'Image', 'json', 'master/image/json'),
(96, 'master', 'Image', 'edit', 'master/image/edit'),
(97, 'master', 'Image', 'update', 'master/image/update'),
(98, 'master', 'Image', 'delete', 'master/image/delete'),
(99, 'master', 'Image', 'status', 'master/image/status'),
(100, 'master', 'Image', 'konfig', 'master/image/konfig'),
(101, 'master', 'Image', 'upload_file', 'master/image/upload_file'),
(102, 'master', 'Image', 'get_uri', 'master/image/get_uri'),
(103, 'master', 'Image', 'log_activity', 'master/image/log_activity'),
(104, 'master', 'Image', 'get_instance', 'master/image/get_instance'),
(105, 'master', 'Jadwal', '__construct', 'master/jadwal/__construct'),
(106, 'master', 'Jadwal', 'index', 'master/jadwal/index'),
(107, 'master', 'Jadwal', 'create', 'master/jadwal/create'),
(108, 'master', 'Jadwal', 'validate', 'master/jadwal/validate'),
(109, 'master', 'Jadwal', 'store', 'master/jadwal/store'),
(110, 'master', 'Jadwal', 'json', 'master/jadwal/json'),
(111, 'master', 'Jadwal', 'edit', 'master/jadwal/edit'),
(112, 'master', 'Jadwal', 'update', 'master/jadwal/update'),
(113, 'master', 'Jadwal', 'delete', 'master/jadwal/delete'),
(114, 'master', 'Jadwal', 'status', 'master/jadwal/status'),
(115, 'master', 'Jadwal', 'konfig', 'master/jadwal/konfig'),
(116, 'master', 'Jadwal', 'upload_file', 'master/jadwal/upload_file'),
(117, 'master', 'Jadwal', 'get_uri', 'master/jadwal/get_uri'),
(118, 'master', 'Jadwal', 'log_activity', 'master/jadwal/log_activity'),
(119, 'master', 'Jadwal', 'get_instance', 'master/jadwal/get_instance'),
(120, 'master', 'Keys', '__construct', 'master/keys/__construct'),
(121, 'master', 'Keys', 'index', 'master/keys/index'),
(122, 'master', 'Keys', 'create', 'master/keys/create'),
(123, 'master', 'Keys', 'validate', 'master/keys/validate'),
(124, 'master', 'Keys', 'store', 'master/keys/store'),
(125, 'master', 'Keys', 'json', 'master/keys/json'),
(126, 'master', 'Keys', 'edit', 'master/keys/edit'),
(127, 'master', 'Keys', 'update', 'master/keys/update'),
(128, 'master', 'Keys', 'delete', 'master/keys/delete'),
(129, 'master', 'Keys', 'status', 'master/keys/status'),
(130, 'master', 'Keys', 'konfig', 'master/keys/konfig'),
(131, 'master', 'Keys', 'upload_file', 'master/keys/upload_file'),
(132, 'master', 'Keys', 'get_uri', 'master/keys/get_uri'),
(133, 'master', 'Keys', 'log_activity', 'master/keys/log_activity'),
(134, 'master', 'Keys', 'get_instance', 'master/keys/get_instance'),
(135, 'master', 'Konfig', '__construct', 'master/konfig/__construct'),
(136, 'master', 'Konfig', 'index', 'master/konfig/index'),
(137, 'master', 'Konfig', 'create', 'master/konfig/create'),
(138, 'master', 'Konfig', 'validate', 'master/konfig/validate'),
(139, 'master', 'Konfig', 'store', 'master/konfig/store'),
(140, 'master', 'Konfig', 'json', 'master/konfig/json'),
(141, 'master', 'Konfig', 'edit', 'master/konfig/edit'),
(142, 'master', 'Konfig', 'update', 'master/konfig/update'),
(143, 'master', 'Konfig', 'delete', 'master/konfig/delete'),
(144, 'master', 'Konfig', 'status', 'master/konfig/status'),
(145, 'master', 'Konfig', 'konfig', 'master/konfig/konfig'),
(146, 'master', 'Konfig', 'upload_file', 'master/konfig/upload_file'),
(147, 'master', 'Konfig', 'get_uri', 'master/konfig/get_uri'),
(148, 'master', 'Konfig', 'log_activity', 'master/konfig/log_activity'),
(149, 'master', 'Konfig', 'get_instance', 'master/konfig/get_instance'),
(150, 'master', 'Menu_master', '__construct', 'master/menu_master/__construct'),
(151, 'master', 'Menu_master', 'index', 'master/menu_master/index'),
(152, 'master', 'Menu_master', 'create', 'master/menu_master/create'),
(153, 'master', 'Menu_master', 'validate', 'master/menu_master/validate'),
(154, 'master', 'Menu_master', 'store', 'master/menu_master/store'),
(155, 'master', 'Menu_master', 'json', 'master/menu_master/json'),
(156, 'master', 'Menu_master', 'edit', 'master/menu_master/edit'),
(157, 'master', 'Menu_master', 'update', 'master/menu_master/update'),
(158, 'master', 'Menu_master', 'delete', 'master/menu_master/delete'),
(159, 'master', 'Menu_master', 'status', 'master/menu_master/status'),
(160, 'master', 'Menu_master', 'konfig', 'master/menu_master/konfig'),
(161, 'master', 'Menu_master', 'upload_file', 'master/menu_master/upload_file'),
(162, 'master', 'Menu_master', 'get_uri', 'master/menu_master/get_uri'),
(163, 'master', 'Menu_master', 'log_activity', 'master/menu_master/log_activity'),
(164, 'master', 'Menu_master', 'get_instance', 'master/menu_master/get_instance'),
(165, 'master', 'Role', '__construct', 'master/role/__construct'),
(166, 'master', 'Role', 'index', 'master/role/index'),
(167, 'master', 'Role', 'create', 'master/role/create'),
(168, 'master', 'Role', 'validate', 'master/role/validate'),
(169, 'master', 'Role', 'store', 'master/role/store'),
(170, 'master', 'Role', 'json', 'master/role/json'),
(171, 'master', 'Role', 'edit', 'master/role/edit'),
(172, 'master', 'Role', 'update', 'master/role/update'),
(173, 'master', 'Role', 'delete', 'master/role/delete'),
(174, 'master', 'Role', 'status', 'master/role/status'),
(175, 'master', 'Role', 'konfig', 'master/role/konfig'),
(176, 'master', 'Role', 'upload_file', 'master/role/upload_file'),
(177, 'master', 'Role', 'get_uri', 'master/role/get_uri'),
(178, 'master', 'Role', 'log_activity', 'master/role/log_activity'),
(179, 'master', 'Role', 'get_instance', 'master/role/get_instance'),
(180, 'master', 'Site', '__construct', 'master/site/__construct'),
(181, 'master', 'Site', 'index', 'master/site/index'),
(182, 'master', 'Site', 'site_json', 'master/site/site_json'),
(183, 'master', 'Site', 'site_default', 'master/site/site_default'),
(184, 'master', 'Site', 'site_custom', 'master/site/site_custom'),
(185, 'master', 'Site', 'site_data', 'master/site/site_data'),
(186, 'master', 'Site', 'site_store', 'master/site/site_store'),
(187, 'master', 'Site', 'site_edit', 'master/site/site_edit'),
(188, 'master', 'Site', 'site_update', 'master/site/site_update'),
(189, 'master', 'Site', 'site_hidden', 'master/site/site_hidden'),
(190, 'master', 'Site', 'konfig', 'master/site/konfig'),
(191, 'master', 'Site', 'upload_file', 'master/site/upload_file'),
(192, 'master', 'Site', 'get_uri', 'master/site/get_uri'),
(193, 'master', 'Site', 'log_activity', 'master/site/log_activity'),
(194, 'master', 'Site', 'get_instance', 'master/site/get_instance'),
(195, 'master', 'User', 'index', 'master/user/index'),
(196, 'master', 'User', 'json', 'master/user/json'),
(197, 'master', 'User', 'json_activity', 'master/user/json_activity'),
(198, 'master', 'User', 'store', 'master/user/store'),
(199, 'master', 'User', 'edit', 'master/user/edit'),
(200, 'master', 'User', 'editUser', 'master/user/edituser'),
(201, 'master', 'User', 'updateUser', 'master/user/updateuser'),
(202, 'master', 'User', 'update', 'master/user/update'),
(203, 'master', 'User', 'delete', 'master/user/delete'),
(204, 'master', 'User', 'password_check', 'master/user/password_check'),
(205, 'master', 'User', 'editUser_redirect', 'master/user/edituser_redirect'),
(206, 'master', 'User', '__construct', 'master/user/__construct'),
(207, 'master', 'User', 'konfig', 'master/user/konfig'),
(208, 'master', 'User', 'upload_file', 'master/user/upload_file'),
(209, 'master', 'User', 'get_uri', 'master/user/get_uri'),
(210, 'master', 'User', 'log_activity', 'master/user/log_activity'),
(211, 'master', 'User', 'get_instance', 'master/user/get_instance');

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
('182.0.231.125', 'http://gatoko1.com/sop/master/user/json_activity/1', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama`, `email`, `telp`, `alamat`) VALUES
(1, 'Marcell', 'marcell@gmail.com', '023489234234', '-');

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
(6, NULL, NULL, NULL, 'site', 7, 'ENABLE', '2018-02-05 13:48:31', NULL),
(7, NULL, NULL, NULL, 'site', 8, 'ENABLE', '2018-02-05 13:50:04', '2018-02-05 14:30:11'),
(8, NULL, NULL, NULL, 'site', 1, 'ENABLE', '2018-02-05 15:23:50', NULL),
(9, NULL, NULL, NULL, 'site', 9, 'ENABLE', '2018-02-13 17:59:15', NULL),
(10, NULL, NULL, NULL, 'site', 10, 'ENABLE', '2018-02-27 04:51:48', NULL),
(11, NULL, NULL, NULL, 'site', 11, 'ENABLE', '2018-02-27 04:52:11', NULL),
(12, NULL, NULL, NULL, 'site', 12, 'ENABLE', '2018-03-20 06:48:21', NULL),
(13, NULL, NULL, NULL, 'site', 13, 'ENABLE', '2018-03-20 06:48:44', NULL),
(14, NULL, NULL, NULL, 'site', 14, 'ENABLE', '2018-03-20 06:49:06', NULL),
(15, NULL, NULL, NULL, 'site', 15, 'ENABLE', '2018-03-20 06:49:25', NULL),
(16, NULL, NULL, NULL, 'site', 16, 'ENABLE', '2018-03-20 06:49:47', NULL),
(17, NULL, NULL, NULL, 'site', 17, 'ENABLE', '2018-03-20 06:50:02', '2018-04-05 08:09:52'),
(18, NULL, NULL, NULL, 'site', 18, 'ENABLE', '2018-03-20 06:50:26', NULL),
(19, NULL, NULL, NULL, 'site', 19, 'ENABLE', '2018-03-20 06:50:56', NULL),
(20, NULL, NULL, NULL, 'site', 20, 'ENABLE', '2018-03-20 06:51:11', NULL),
(21, NULL, NULL, NULL, 'site', 21, '0', '2018-08-07 13:58:09', NULL),
(22, NULL, NULL, NULL, 'site', 22, '0', '2018-08-11 02:56:50', NULL),
(23, NULL, NULL, NULL, 'site', 23, '0', '2018-08-11 02:59:09', NULL),
(24, NULL, NULL, NULL, 'site', 24, '0', '2018-09-24 06:55:24', NULL),
(25, NULL, NULL, NULL, 'site', 25, '0', '2018-10-12 03:20:28', NULL),
(28, '6950c16c9bcc6995f376b297f163175934330.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175934330.jpg', 'role', 8, 'ENABLE', '2018-10-12 15:12:17', NULL),
(32, '6950c16c9bcc6995f376b297f16317593996.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'webfile/6950c16c9bcc6995f376b297f16317593996.xlsx', 'role', 17, 'ENABLE', '2018-10-12 17:03:59', '2018-10-12 17:04:07'),
(35, '6950c16c9bcc6995f376b297f163175953822.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175953822.jpg', 'post', 1, 'ENABLE', '2018-10-13 13:01:23', NULL),
(36, '6950c16c9bcc6995f376b297f163175990676.pdf', 'application/pdf', 'webfile/6950c16c9bcc6995f376b297f163175990676.pdf', 'post', 2, 'ENABLE', '2018-10-13 13:03:02', '2018-10-13 13:03:46'),
(38, '6950c16c9bcc6995f376b297f16317598786.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f16317598786.jpg', 'siswa', 4, 'ENABLE', '2018-10-13 17:56:43', NULL),
(40, '6950c16c9bcc6995f376b297f16317593930.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f16317593930.png', 'user', 1, NULL, NULL, '2019-02-18 16:07:47'),
(43, '6950c16c9bcc6995f376b297f163175921106.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175921106.jpg', 'user', 12, 'ENABLE', '2018-11-05 11:15:57', NULL),
(45, '6950c16c9bcc6995f376b297f163175988920.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175988920.png', 'user', 11, 'ENABLE', '2018-11-15 16:47:11', '2019-02-18 16:18:34'),
(46, '', '', '', 'user', 24, 'ENABLE', '2019-01-22 13:51:27', NULL),
(47, '', '', '', 'user', 25, 'ENABLE', '2019-02-18 16:14:44', NULL),
(48, '6950c16c9bcc6995f376b297f163175955554.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175955554.png', 'user', 9, NULL, NULL, '2019-02-18 16:18:41');

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
(27, 'af2a4c9d4c4956ec9d6ba62213eed568');

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
(6, 'APPLICATION', 'SMARTSOFT SOP', 'ENABLE', '2019-02-18 15:28:44', '2019-02-18 15:29:07'),
(7, 'LOGO', 'http://gatoko1.com/sop/assets/login/images/logo.png', 'ENABLE', '2019-02-18 15:29:32', '2019-04-23 17:58:26'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'http://gatoko1.com/sop/assets/images/login-background.jpg\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-02-18 15:56:02'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2019 <a href=\"http://smartsoftstudio.com/\" target=\"_blank\">SmartSoft Studio</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-blue', 'ENABLE', '2019-02-18 15:34:01', '2019-02-22 11:47:14'),
(13, 'TITLE_APPLICATION', 'Smartsoft | Standard operation system', 'ENABLE', '2019-02-18 15:39:54', NULL),
(14, 'APPLICATION_SMALL', 'SM', 'ENABLE', '2019-02-18 15:42:41', '2019-02-18 15:43:24'),
(15, 'LOGIN_BOX', 'background : #6f6f6f !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'Smartsoft | Login', 'ENABLE', '2019-02-18 15:47:41', NULL),
(17, 'LOGIN_TITLE', 'LOGIN ADMIN', 'ENABLE', '2019-02-18 15:48:55', NULL),
(24, 'LOGIN', '1', 'ENABLE', '2019-02-21 14:12:14', '2019-02-21 16:33:07');

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
(1, 'Dashboard', 'mdi mdi-monitor-dashboard', '', '1', '0', NULL, 'ENABLE', '2019-01-17 14:33:33', NULL),
(9, 'Tes Butstrep Studio', 'mdi mdi-star', 'master/bss', '2', '0', '', 'ENABLE', '2019-04-26 17:19:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext,
  `header` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `name`, `query`, `header`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'SELECT * FROM user', '[\"nip\",\"name\",\"email\",\"password\",\"role_id\",\"desc\",\"status\",\"created_at\",\"updated_at\"]', 'ENABLE', '2019-03-13 09:57:07', '2019-03-19 17:13:35'),
(2, 'Customer', 'SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= \'customer\'', '[\"name\",\"email\",\"phone\",\"address\",\"status\",\"dir\"]', 'ENABLE', '2019-03-25 10:47:39', '2019-03-25 10:47:57');

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
(17, 'Admin', 'ENABLE', '[\"1\",\"9\"]', '2018-10-12 17:03:59', '2019-04-26 17:19:46'),
(18, 'Operation', 'ENABLE', NULL, '2018-10-24 10:29:54', NULL);

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
(7, '71805050', 'ADARO', 'SIS ADARO', 'DISABLE', '2018-02-05 13:48:30', '2018-08-06 05:40:46'),
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
(1, 'smartsoft', 'Smartsoft Studio', 'smartsoftstudio1@mail.com', '21232f297a57a5a743894a0e4a801fc3', 17, 'asda', '0', '2018-02-23 16:09:49', '2019-02-19 11:02:53'),
(9, 'operator', 'Operator', '', '4b583376b2767b923c3e1da60d10de59', 18, '0', '0', '2018-10-24 10:53:02', '2019-02-18 16:18:41'),
(11, 'oplos', 'Oplos', 'oplos@oplos.com', '0192023a7bbd73250516f069df18b500', 17, '-\r\n', '0', '2018-11-15 16:47:11', '2019-02-18 16:18:34');

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
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `grafik`
--
ALTER TABLE `grafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
