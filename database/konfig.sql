-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Nov 2019 pada 05.15
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

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
-- Struktur dari tabel `konfig`
--

CREATE TABLE `konfig` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'SHOEKASHOES.COM', 'ENABLE', '2019-02-18 15:28:44', '2019-10-26 16:40:26'),
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
