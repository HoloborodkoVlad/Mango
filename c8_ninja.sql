-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 27 2020 г., 11:27
-- Версия сервера: 10.3.22-MariaDB-0+deb10u1
-- Версия PHP: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `c8_ninja`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bills`
--

CREATE TABLE `bills` (
  `bill_id` int(100) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL,
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `bills`
--

INSERT INTO `bills` (`bill_id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(41, 35, '2018-12-17', 63000, 'ATM', NULL, '2018-12-17 09:00:47', '2018-12-17 09:00:47'),
(40, 30, '2018-12-17', 127000, 'ATM', NULL, '2018-12-17 08:59:29', '2018-12-17 08:59:29'),
(39, 29, '2018-12-17', 235000, 'ATM', NULL, '2018-12-17 08:57:43', '2018-12-17 08:57:43'),
(38, 28, '2018-12-17', 250510, 'COD', NULL, '2018-12-17 08:57:00', '2018-12-17 08:57:00'),
(37, 28, '2018-12-17', 259800, 'ATM', NULL, '2018-12-17 08:56:34', '2018-12-17 08:56:34'),
(48, 39, '2020-05-24', 324000, 'COD', NULL, '2020-05-23 21:28:49', '2020-05-23 21:28:49'),
(49, 39, '2020-05-24', 112000, 'ATM', '1231', '2020-05-23 21:30:17', '2020-05-23 21:30:17'),
(50, 40, '2020-05-24', 146000, 'COD', 'celo', '2020-05-23 21:32:40', '2020-05-23 21:32:40'),
(42, 39, '2020-05-22', 89000, 'COD', NULL, '2020-05-22 19:05:36', '2020-05-22 19:05:36'),
(43, 39, '2020-05-23', 74250, 'COD', NULL, '2020-05-22 22:44:30', '2020-05-22 22:44:30'),
(44, 39, '2020-05-23', 57000, 'COD', NULL, '2020-05-22 22:47:28', '2020-05-22 22:47:28'),
(45, 39, '2020-05-23', 57000, 'COD', NULL, '2020-05-22 22:48:29', '2020-05-22 22:48:29'),
(46, 39, '2020-05-23', 89000, 'COD', NULL, '2020-05-22 23:24:26', '2020-05-22 23:24:26'),
(51, 40, '2020-05-24', 55000, 'COD', 'xfgsdgfdsgdsgdsgds\r\ndsgds\r\ngsda\r\ngsd', '2020-05-23 21:34:19', '2020-05-23 21:34:19'),
(52, 40, '2020-05-24', 144000, 'COD', 'love tou', '2020-05-23 21:37:18', '2020-05-23 21:37:18'),
(53, 40, '2020-05-24', 57000, 'ATM', 'mother', '2020-05-23 21:38:38', '2020-05-23 21:38:38');

-- --------------------------------------------------------

--
-- Структура таблицы `bill_detail`
--

CREATE TABLE `bill_detail` (
  `billde_id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `bill_detail`
--

INSERT INTO `bill_detail` (`billde_id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(62, 41, 77, 1, 63000, '2018-12-17 09:00:47', '2018-12-17 09:00:47'),
(61, 40, 131, 1, 64000, '2018-12-17 08:59:29', '2018-12-17 08:59:29'),
(60, 40, 128, 1, 63000, '2018-12-17 08:59:29', '2018-12-17 08:59:29'),
(59, 39, 128, 1, 63000, '2018-12-17 08:57:43', '2018-12-17 08:57:43'),
(47, 34, 71, 1, 89000, '2018-12-12 12:22:12', '2018-12-12 12:22:12'),
(58, 39, 112, 1, 62000, '2018-12-17 08:57:43', '2018-12-17 08:57:43'),
(57, 39, 100, 2, 55000, '2018-12-17 08:57:43', '2018-12-17 08:57:43'),
(56, 38, 180, 2, 52000, '2018-12-17 08:57:00', '2018-12-17 08:57:00'),
(55, 38, 188, 1, 73000, '2018-12-17 08:57:00', '2018-12-17 08:57:00'),
(54, 38, 190, 1, 73510, '2018-12-17 08:57:00', '2018-12-17 08:57:00'),
(53, 37, 187, 1, 61800, '2018-12-17 08:56:34', '2018-12-17 08:56:34'),
(52, 37, 76, 2, 68000, '2018-12-17 08:56:34', '2018-12-17 08:56:34'),
(51, 37, 112, 1, 62000, '2018-12-17 08:56:34', '2018-12-17 08:56:34'),
(50, 36, 128, 2, 63000, '2018-12-15 06:07:38', '2018-12-15 06:07:38'),
(48, 35, 76, 1, 68000, '2018-12-13 13:49:39', '2018-12-13 13:49:39'),
(63, 42, 71, 1, 89000, '2020-05-22 19:05:36', '2020-05-22 19:05:36'),
(64, 43, 181, 1, 74250, '2020-05-22 22:44:30', '2020-05-22 22:44:30'),
(65, 44, 72, 1, 57000, '2020-05-22 22:47:28', '2020-05-22 22:47:28'),
(66, 45, 72, 1, 57000, '2020-05-22 22:48:29', '2020-05-22 22:48:29'),
(67, 46, 71, 1, 89000, '2020-05-22 23:24:26', '2020-05-22 23:24:26'),
(68, 47, 71, 1, 89000, '2020-05-22 23:25:32', '2020-05-22 23:25:32'),
(69, 48, 71, 3, 89000, '2020-05-23 21:28:49', '2020-05-23 21:28:49'),
(70, 48, 72, 1, 57000, '2020-05-23 21:28:49', '2020-05-23 21:28:49'),
(71, 49, 73, 1, 55000, '2020-05-23 21:30:17', '2020-05-23 21:30:17'),
(72, 49, 72, 1, 57000, '2020-05-23 21:30:17', '2020-05-23 21:30:17'),
(73, 50, 72, 1, 57000, '2020-05-23 21:32:40', '2020-05-23 21:32:40'),
(74, 50, 71, 1, 89000, '2020-05-23 21:32:40', '2020-05-23 21:32:40'),
(75, 51, 73, 1, 55000, '2020-05-23 21:34:19', '2020-05-23 21:34:19'),
(76, 52, 73, 1, 55000, '2020-05-23 21:37:18', '2020-05-23 21:37:18'),
(77, 52, 71, 1, 89000, '2020-05-23 21:37:18', '2020-05-23 21:37:18'),
(78, 53, 72, 1, 57000, '2020-05-23 21:38:38', '2020-05-23 21:38:38');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `com_id` int(100) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `name_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_product` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(100) UNSIGNED NOT NULL,
  `cus_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `gender`, `email`, `password`, `address`, `phone_number`, `note`, `remember_token`, `created_at`, `updated_at`) VALUES
(40, 'Влад', 'Male', 'goloborodko15@gmail.com', '$2y$10$ErApkNtbOkBAnJcbpN0juOnDCchN.Umwd/Ofef5NnAqJAbLETqPui', 'гора', '380680734902', 'mother', NULL, '2020-05-23 17:38:38', '2020-05-23 21:38:38'),
(26, '1', 'Male', '1@gmail.com', '$2y$10$a.puWUa2c3a.fq6.Zu96O.iVNLRP7lu5q31mVe5sdEli9yGTULhfS', '1', '1', '1', NULL, '2018-12-17 08:54:46', '2018-11-25 08:31:23'),
(27, '3', 'Female', '3@gmail.com', '$2y$10$a.puWUa2c3a.fq6.Zu96O.iVNLRP7lu5q31mVe5sdEli9yGTULhfS', '3', '3jlkjlkjlkjlk', '3', '4G3b7VW3frTwabSgUbtHnL18CexoNzkExi375rV591yTTpZDIQPXzG04f7nn', '2018-12-18 16:48:26', '2018-12-13 07:43:29'),
(39, 'vlad', 'Male', 'waraebmawinaua@gmail.com', '$2y$10$HmJekZrT9pu4K52v8Wcwce/bqzK1qtpwspgm3HihLnivOcws.hAjm', 'вав', '380680734902', '1231', 'O3boFnd1BXJzpvDL673YitG4pnkFMhbUg3eRNFePzkmYCSjXa5itump25uUf', '2020-05-23 17:31:01', '2020-05-23 21:30:17');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `new_id` int(100) UNSIGNED NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `new_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`new_id`, `title`, `content`, `new_image`, `created_at`, `updated_at`) VALUES
(1, 'Як ви почули про Світлий роман?', '<p><strong>Серія в’єтнамських видавництв за останні 2 роки почала стрибати на ринку на ринку. </strong>\r\n</p>', '14124a.gif', '2020-05-22 15:47:20', '2018-12-13 20:29:06'),
(2, 'Легкі романи були опубліковані у Японії', '<p><strong>Вийшов новий трейлер \"Влад Любов\", представляючи нову героїню. Нто Намі Унтен, озвучивши кого Юу Кобаясі (Ю. Кобаяші) - Саша Браун в \"Шінгекі ні Кіоджин\".</strong></p>', '397106-blackangel.jpg', '2020-05-22 15:47:13', '2018-12-13 04:18:31'),
(3, 'Другий сезон \"Enen no Shouboutai\" вийдуть у липні', '<p><strong>Каліть, на другий сезон \"Enen no Shouboutai\" нікто не покушується - сиквел виходить у липні під назвою \"Enen no Shouboutai: Ni no Shou\". Представлений новий постер і трейлер </strong></p>\r\n', 'Trains_daitoSchoolgirls_440648.jpg', '2020-05-22 15:47:06', '2018-12-13 04:19:23'),
(4, 'Відкрита прем\'єра другої частини \"Haikyuu !!: На початок\"', '<p><strong>На жаль і ах, на сайті серіалу \"Haikyuu !!: To the Top\" сьогодні було опубліковано повідомлення, що друга частина четвертого сезону, яка повинна була вийти в липні, відкладена.</strong></p>\r\n', 'aHKaXIf.jpg', '2020-05-22 15:46:55', '2018-12-13 07:45:44'),
(5, 'Подробиці аніме \"Kyojinzoku no Hanayome\"', '<p><strong>Сьогодні відкрили сайт аніме \"Kyojinzoku no Hanayome\" за одноіменною манге (ITKZ). Манга - чорна комедія в жанрі BL. Премьера 5 июля.</strong></p>\r\n', 'Vocaloid_Hatsune_Miku_466771.jpg', '2020-05-22 15:49:02', '2018-12-13 04:16:29');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(100) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prod_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `prod_slug`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(71, 'Республіка Сан-Магнолія', 'Республіка Сан-Магнолія', 14, '<h3>Республіка Сан-Магнолія</h3\r\n<p>Опис книги.</p>\r\n\r\n', 99000, 89000, 'aK41Dp2.png', 'Book', 1, '2018-12-12 05:19:53', '2018-12-12 05:19:53'),
(72, 'Ця дівчина(Частина1)', 'Ця дівчина(Частина1)', 29, '<h3>Ця дівчина(Частина1)</h3>\r\n\r\n\r\n\r\n<p>Опис книги.</p>\r\n', 79000, 57000, 'image_180164_1_43_1_57_1_4_1_2_1_166.jpg', 'Book', 1, '2018-12-12 20:29:10', '2018-12-13 01:06:10'),
(73, 'Ця дівчина(Частина2)', 'Ця дівчина(Частина2)', 29, '<h3>Ця дівчина(Частина2)</h3>\r\n<p>Опис книги.</p>\r\n', 79000, 55000, 'IMG_20170803_0001.gif', 'Book', 1, '2018-12-12 20:32:07', '2018-12-12 20:32:07'),
(74, 'Ця дівчина(Частина3)', 'Ця дівчина(Частина3)', 29, '<h3>Ця дівчина(Частина3)</h3> \r\n<p>Опис книги.</p>\r\n\r\n', 69000, 55000, 'img689.gif', 'Book', 1, '2018-12-12 20:33:45', '2018-12-12 20:33:45'),
(75, 'Ця дівчина(Частина4)', 'Ця дівчина(Частина4)', 29, '<h3>Ця дівчина(Частина4)<h3>\r\n<p>Опис книги.</p>', 69000, 48000, 'img648.gif', 'Book', 1, '2018-12-12 20:34:55', '2018-12-12 20:34:55'),
(76, 'Ця дівчина(Частина5)', 'Ця дівчина(Частина5)', 29, '<h3>Ця дівчина(Частина5)</h3>\r\n<p>Опис книги.</p>\r\n\r\n\r\n', 85000, 68000, '78aed6d735d54b60a21b8cb49fa2dd0f.jpg', 'Book', 1, '2018-12-12 20:48:17', '2018-12-12 20:48:17'),
(77, 'Ця дівчина(Частина6)', 'Ця дівчина(Частина6)', 29, '<h3>Ця дівчина(Частина6)</h3>\r\n<p>Опис книги.</p>\r\n\r\n', 79000, 63000, 'img854.gif', 'Book', 1, '2018-12-12 20:49:47', '2018-12-12 20:49:47'),
(123, 'Фокусник з Токіо', 'Фокусник з Токіо', 36, '<h3>Фокусник з Токіо</h3>\r\n<p>Опис книги.</p>\r\n', 266000, 226000, '15203342_1094965087269015_2297793450664197260_n.png', 'Bookset', 1, '2018-12-13 02:07:15', '2018-12-13 02:07:15'),
(125, 'Морозиво', 'Морозиво', 34, '<h3>Морозиво</h3>\r\n<p>Опис книги.</p>\r\n', 65000, 39000, 'IMG_20170925_0022.gif', 'Book', 1, '2018-12-13 02:20:43', '2018-12-13 02:20:43'),
(126, 'Морозиво(Частина 2)', 'Морозиво(Частина 2)', 34, '<h3>Морозиво(Частина 2)</h3>\r\n<p>Опис книги.</p>\r\n', 75000, 45000, 'img248.gif', 'Book', 1, '2018-12-13 02:21:38', '2018-12-13 02:21:38'),
(127, 'Бувай,велосипед', 'Бувай,велосипед', 34, '<h3>Бувай,велосипед</h3>\r\n<p>Опис книги.</p>\r\n\r\n\r\n', 99000, 50000, 'img088.gif', 'Book', 1, '2018-12-13 02:22:37', '2018-12-13 02:22:37'),
(133, 'Життя з нуля', 'Життя з нуля', 24, '<h3>Життя з нуля</h3>\r\n<p>Опис книги.</p>\r\n\r\n', 655000, 249000, '01ab5b5c413389e7373e7f4e24136531.jpg', 'Book', 1, '2018-12-13 02:30:17', '2018-12-13 02:30:17'),
(137, 'Перерождення монстр (Частина 1)', 'Перерождення монстр (Частина 1)', 33, '<h3>Перерождення монстр (Частина 1)</h3>\r\n<p>Опис книги.</p>\r\n', 115000, 86000, 'img847.gif', 'Book', 1, '2018-12-13 02:35:18', '2018-12-13 02:35:18'),
(138, 'Перерождення монстр (Частина 2)', 'Перерождення монстр (Частина 2)', 33, '<h3>Перерождення монстр (Частина 2)</h3>\r\n<p>Опис книги.</p>\r\n', 115000, 84000, '1ce0f1c26e7d8641779c4877812af05f.jpg', 'Book', 1, '2018-12-13 02:35:56', '2018-12-13 02:35:56'),
(143, 'Я вже вбивав шлейфи протягом 300 років і відмічав свій рівень', 'Я вже вбивав шлейфи протягом 300 років і відмічав свій рівень', 24, '<h3>Я вже вбивав шлейфи протягом 300 років і відмічав свій рівень</h3>\r\n<p>Опис книги.</p>\r\n\r\n<p>?</p>\r\n', 103000, 62000, 'ac279e3b5b95c76353fa8da5bcd02546.jpg', 'Book', 1, '2018-12-13 02:40:39', '2018-12-13 02:40:39'),
(144, 'Не записуйте зустріч на завтра', 'Не записуйте зустріч на завтра', 32, '<h3>Не записуйте зустріч на завтра</h3>\r\n<p>Опис книги.</p>\r\n\r\n', 110000, 55000, '6243eac6fceccb30956153be48d43b4d.jpg', 'Book', 1, '2018-12-13 02:43:16', '2018-12-13 02:43:16'),
(145, 'Непереможений вершник драконів(Частина 1)', 'Непереможений вершник драконів(Частина 1)', 25, '<h3>Непереможений вершник драконів</h3>\r\n<p>Опис книги.</p>\r\n\r\n', 99000, 0, 'img741.gif', 'Book', 1, '2018-12-13 02:44:27', '2018-12-13 02:44:27'),
(146, 'Непереможений вершник драконів(Частина 2)', 'Непереможений вершник драконів(Частина 2)', 25, '<h3>Непереможений вершник драконів(Частина 2)</h3>\r\n<p>Опис книги.</p>\r\n\r\n\r\n\r\n', 99000, 67999, 'd2fcf44cccd0983e95da614b3a10cfea.jpg', 'Book', 1, '2018-12-13 02:45:07', '2018-12-13 02:45:07'),
(147, 'КОЛИ ХІКАРУ В цьому світі(Частина 1 2)', 'КОЛИ ХІКАРУ В цьому світі(Частина 1 2)', 32, '<h3>КОЛИ ХІКАРУ В цьому світі(Частина 1 2)</h3>\r\n<p>Опис книги.</p>\r\n\r\n', 198000, 147000, 'untitled-3_11.jpg', 'Book', 1, '2018-12-13 02:47:12', '2018-12-13 02:47:12'),
(148, 'КОЛИ ХІКАРУ В цьому світі(Частина 3)', 'КОЛИ ХІКАРУ В цьому світі(Частина 3)', 32, '<h3>КОЛИ ХІКАРУ В цьому світі(Частина 3)</h3>\r\n<p>Опис книги.</p>\r\n', 109000, 80000, 'b_a_hikaru_3_1_1.jpg', 'Book', 1, '2018-12-13 02:48:08', '2018-12-13 02:48:08'),
(149, 'Індекс забороненої магії(Частина 1)', 'Індекс забороненої магії(Частина 1)', 35, '<h3>Індекс забороненої магії(Частина 1)</h3>\r\n<p>Опис книги.</p>\r\n', 105000, 32000, 'd67dc01ee60c20537e4d0f09c081f0d9.jpg', 'Book', 1, '2018-12-13 02:49:51', '2018-12-13 02:49:51'),
(150, 'Індекс забороненої магії(Частина 2)', 'Індекс забороненої магії(Частина 2)', 14, '<h3>Індекс забороненої магії(Частина 2)</h3>\r\n<p>Опис книги.</p>\r\n', 105000, 73500, 'b919dd1c0f699e8abc8c9f61ebe2dd62.jpg', 'Book', 1, '2018-12-13 02:50:28', '2018-12-13 02:50:28'),
(151, 'Щоденник самотності', 'Щоденник самотності', 14, '<h3>Щоденник самотності</h3>\r\n<p>Опис книги.</p>\r\n', 79000, 59000, 'img661.gif', 'Book', 1, '2018-12-13 02:51:19', '2018-12-13 02:51:19'),
(152, 'Подорож Кіно на Захід (Частина 1)', 'Подорож Кіно на Захід (Частина 1)', 17, '<h3>Подорож Кіно на Захід (Частина 1)</h3>\r\n<p>Опис книги.</p>\r\n', 55000, 0, '6426c61659a56c4558b8b3217afe1e0b.jpg', 'Bookset', 1, '2018-12-13 02:52:19', '2018-12-13 21:27:42'),
(153, 'Подорож Кіно на Захід(Частина 2)', 'Подорож Кіно на Захід(Частина 2)', 17, '<h3>Подорож Кіно на Захід(Частина 2)</h3>\r\n<p>Опис книги.</p>\r\n', 55000, 0, '90971df321e9aa99784a49820c240a45.jpg', 'Bookset', 1, '2018-12-13 02:52:43', '2018-12-13 21:27:59'),
(154, 'Подорож Кіно на Захід(Частина 3)', 'Подорож Кіно на Захід(Частина 3)', 17, '<h3>Подорож Кіно на Захід(Частина 3)</h3>\r\n<p>Опис книги.</p>\r\n', 55000, 0, 'e56a18324bca31e208fdbc1eca9598cd.jpg', 'Bookset', 1, '2018-12-13 02:53:06', '2018-12-13 21:28:13'),
(155, 'Комбіновані літописи імперії Алексіса - зарозумілі струшування землі(Частина 1-3)', 'Комбіновані літописи імперії Алексіса - зарозумілі струшування землі(Частина 1-3)', 33, '<h3>Комбіновані літописи імперії Алексіса - зарозумілі струшування землі(Частина 1-3)</h3>\r\n<p>Опис книги.</p>\r\n\r\n', 233000, 0, 'untitled-2_9_27.jpg', 'Book', 1, '2018-12-13 02:55:32', '2018-12-13 02:55:32'),
(156, 'Комбіновані літописи імперії Алексіса - зарозумілі струшування землі(Частина 4)', 'Комбіновані літописи імперії Алексіса - зарозумілі струшування землі(Частина 4)', 33, '<h3>Комбіновані літописи імперії Алексіса - зарозумілі струшування землі(Частина 4)</h3>\r\n<p>Опис книги.</p>\r\n', 108000, 79000, 'untitled-10_40.jpg', 'Book', 1, '2018-12-13 02:56:29', '2018-12-13 02:56:29'),
(157, 'Кіотська команда безпеки', 'Кіотська команда безпеки', 29, '<h3>Кіотська команда безпеки</h3>\r\n<p>Опис книги.</p>\r\n', 98000, 63700, 'cc90f6fa46bfd74cbb48985b775088db.jpg', 'Book', 1, '2018-12-13 02:57:29', '2018-12-13 02:57:29'),
(158, 'Подорож до кінця світу', 'Подорож до кінця світу', 17, '<h3>Подорож до кінця світу</h3>\r\n<p>Опис книги.</p>\r\n', 95000, 38000, '8003786dcd15e174210511d370eb86cf.jpg', 'Book', 1, '2018-12-13 02:58:29', '2018-12-13 02:58:29'),
(159, 'Щоденник снів - у вашому сні я не говорю', 'Щоденник снів - у вашому сні я не говорю', 23, '<h3>Щоденник снів - у вашому сні я не говорю</h3>\r\n<p>Опис книги.</p>\r\n', 79000, 59250, '7fdb8678cca07227ae4164b4d3884911.jpg', 'Book', 1, '2018-12-13 02:59:26', '2018-12-13 02:59:26'),
(160, 'Доля нуля 1 - Четверта війна з граалем', 'Доля нуля 1 - Четверта війна з граалем', 21, '<h3>Доля нуля 1 - Четверта війна з граалем</h3>\r\n<p>Опис книги.</p>\r\n', 85000, 59500, 'cover-1---fate-zero-1--1-.u3059.d20170817.t145215.544072.jpg', 'Book', 1, '2018-12-13 03:00:45', '2018-12-13 03:00:45'),
(161, 'Доля / Нуль 2 - Героїчне возз’єднання духу', 'Доля / Нуль 2 - Героїчне возз’єднання духу', 21, '<h3>Доля / Нуль 2 - Героїчне возз’єднання духу</h3>\r\n<p>Опис книги.</p>\r\n', 90000, 63000, '42793_10_03_18_fate-zero-tap-2-anh-linh-tu-hoi.jpg', 'Book', 1, '2018-12-13 03:01:38', '2018-12-13 03:01:38'),
(162, 'Доля / Нуль 3 Вечірка жахів ', 'Доля / Нуль 3 Вечірка жахів ', 21, '<h3>Доля / Нуль 3 Вечірка жахів </h3>\r\n<p>Опис книги.</p>\r\n', 90000, 63000, 'IMG_20181102_0003.gif', 'Book', 1, '2018-12-13 03:02:06', '2018-12-13 03:02:06'),
(163, 'Тому що моя дочка може перемогти диявола', 'Тому що моя дочка може перемогти диявола', 29, '<h3>Тому що моя дочка може перемогти диявола</h3>\r\n<p>Опис книги.</p>\r\n', 98000, 73000, '601d9ccb18c66ef4f2edb2a32efd7560.jpg', 'Book', 1, '2018-12-13 03:03:06', '2018-12-13 03:03:06'),
(166, 'Боротьба 1 - Відступ від любові', 'Боротьба 1 - Відступ від любові', 26, '<h3>Боротьба 1 - Відступ від любові</h3>\r\n<p>Опис книги.</p>\r\n', 80000, 48000, 'b478aa6f0627877672395ab4d1dfbd20.jpg', 'Book', 1, '2018-12-13 03:06:34', '2018-12-13 03:06:34'),
(167, 'Дух боротьби 2 - Геніальна суха ручка', 'Дух боротьби 2 - Геніальна суха ручка', 26, '<h3>Дух боротьби 2 - Геніальна суха ручка</h3>\r\n<p>Опис книги.</p>\r\n', 80000, 48000, '6317e78c23dc6b9e68f74d11d66b67ee.jpg', 'Book', 1, '2018-12-13 03:07:20', '2018-12-13 03:07:20'),
(168, 'Тільки друзі', 'Тільки друзі', 32, '<h3>Тільки друзі</h3>\r\n<p>Опис книги.</p>\r\n', 79000, 51000, '9a73eb139224c3f14826485aae3550a0.jpg', 'Book', 1, '2018-12-13 03:08:05', '2018-12-13 03:08:05'),
(169, 'Вона та її кіт', 'Вона та її кіт', 34, '<h3>Вона та її кіт</h3>\r\n<p>Опис книги.</p>\r\n', 25000, 0, '4713cf089c2e8a37d54cd626ab0e32b8.jpg', 'Book', 1, '2018-12-13 03:09:24', '2018-12-13 03:09:24'),
(176, 'Ресторан Xuyen Khong', 'Ресторан Xuyen Khong', 34, '<h3>Ресторан Xuyen Khong</h3>\r\n<p>Опис книги.</p>\r\n', 98000, 73500, 'a0fe58db56004bc4afcae6e0ff99db51.jpg', 'Book', 1, '2018-12-13 03:15:50', '2018-12-13 03:15:50'),
(177, 'Парк Амагі блискучий', 'Парк Амагі блискучий', 14, '<h3>Парк Амагі блискучий</h3>\r\n<p>Опис книги.</p>\r\n\r\n', 125000, 92500, '1cc30efd58119f175bff9ab99dac1a93.jpg', 'Book', 1, '2018-12-13 03:17:35', '2018-12-13 03:17:35'),
(178, 'Завтра я зникаю, ти оживеш', 'Завтра я зникаю, ти оживеш', 18, '<h3>Завтра я зникаю, ти оживеш</h3>\r\n<p>Опис книги.</p>\r\n', 109000, 79570, '46a9b91b47b818e9e4a1ee92b6512879.jpg', 'Book', 1, '2018-12-13 03:18:53', '2018-12-13 03:18:53'),
(179, 'Я павук чи все в порядку?', 'Я павук чи все в порядку?', 24, '<h3>Я павук чи все в порядку?</h3>\r\n<p>Опис книги.</p>\r\n', 109000, 81750, '846114e78861cc189591a3272f418053.jpg', 'Book', 1, '2018-12-13 03:20:16', '2018-12-13 03:20:16'),
(180, 'Життя та перші сім днів', 'Життя та перші сім днів', 21, '<h3>Життя та перші сім днів</h3>\r\n<p>Опис книги.</p>\r\n', 69000, 52000, '0f8f252c5d3b75fdba9357e01f413fa9.jpg', 'Book', 1, '2018-12-13 03:21:12', '2018-12-13 03:21:12'),
(181, 'Подруга Vs. Друг дитинства', 'Подруга Vs. Друг дитинства', 30, '<h3>Подруга Vs. Друг дитинства</h3>\r\n<p>Опис книги.</p>\r\n', 99000, 74250, '2acc8f0518909cf838ee47a8a964d310.jpg', 'Book', 1, '2018-12-13 03:22:15', '2018-12-13 03:22:15'),
(182, 'Галактика Татамі - легенда про камерні чотири з половиною екранізації', 'Галактика Татамі - легенда про камерні чотири з половиною екранізації', 14, '<h3>Галактика Татамі - легенда про камерні чотири з половиною екранізації</h3>\r\n<p>Опис книги.</p>\r\n', 119000, 89000, 'IMG_20181114_0001.gif', 'Book', 1, '2018-12-13 03:23:12', '2018-12-13 03:23:12'),
(183, 'Іди, синій', 'Іди, синій', 32, '<h3>Іди, синій</h3>\r\n<p>Опис книги.</p>\r\n', 98000, 71540, 'acd7ebba06b187d08dce7864883dee8b.jpg', 'Bookset', 1, '2018-12-13 03:23:58', '2018-12-13 21:14:23'),
(184, 'Злодійська мрія', 'Злодійська мрія', 23, '<h3>Злодійська мрія</h3>\r\n<p>Опис книги.</p>\r\n', 109000, 81750, 'e31fe49af60e5710870922362fb13363.jpg', 'Book', 1, '2018-12-13 03:24:46', '2018-12-13 03:24:46');

-- --------------------------------------------------------

--
-- Структура таблицы `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(13, NULL, 'slide2.png', '2018-12-12 17:44:30', '2018-12-12 17:44:30'),
(14, NULL, 'slide3.jpg', '2018-12-12 17:44:36', '2018-12-12 17:44:36'),
(18, NULL, 'Attack_on_Titan_eren_442810.jpg', '2018-12-13 03:35:30', '2018-12-13 03:35:30'),
(19, NULL, 'Sniper_rifle_Grisaia_Phantom_Trigger_Snipers_541434_1280x562.jpg', '2018-12-13 03:35:34', '2018-12-13 03:35:34'),
(20, NULL, 'Tokyo_Ghoul_Ken_Kaneki_449244.jpg', '2018-12-13 03:35:37', '2018-12-13 03:35:37'),
(21, NULL, 'Trains_daitoSchoolgirls_440648.jpg', '2018-12-13 03:35:41', '2018-12-13 03:35:41'),
(22, NULL, 'Violin_kantoku_Shigatsu_494799.jpg', '2018-12-13 03:35:44', '2018-12-13 03:35:44'),
(23, NULL, 'Vocaloid_Hatsune_Miku_466771.jpg', '2018-12-13 03:35:48', '2018-12-13 03:35:48'),
(24, NULL, '397106-blackangel.jpg', '2018-12-13 03:38:25', '2018-12-13 03:38:25'),
(25, NULL, '421811-Kycb.jpg', '2018-12-13 03:38:29', '2018-12-13 03:38:29'),
(26, NULL, '50188-banner-an-tang-thu.jpg', '2018-12-12 05:20:18', '2018-12-12 05:20:18'),
(27, NULL, '55583-banner-ke-di-biet-2.jpg', '2018-12-12 05:20:23', '2018-12-12 05:20:23'),
(28, NULL, 'relife-tap-3.jpg', '2018-12-12 05:20:31', '2018-12-12 05:20:31'),
(29, NULL, 'aHKaXIf.jpg', '2018-12-12 05:20:36', '2018-12-12 05:20:36'),
(30, NULL, 'slide.jpg', '2018-12-12 17:44:19', '2018-12-12 17:44:19'),
(31, NULL, 'slide1.jpg', '2018-12-12 17:44:24', '2018-12-12 17:44:24'),
(32, NULL, 'slide6.jpg', '2018-12-12 17:44:53', '2018-12-12 17:44:53');

-- --------------------------------------------------------

--
-- Структура таблицы `type_products`
--

CREATE TABLE `type_products` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `cate_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `type_products`
--

INSERT INTO `type_products` (`cate_id`, `cate_name`, `cate_slug`, `description`, `cate_image`, `created_at`, `updated_at`) VALUES
(14, 'ЭКШЕН', 'action', 'один из самых популярных жанров современной манги и аниме', '8mieruD.png', '2018-12-12 05:17:57', '2018-12-12 19:19:34'),
(17, 'ПРИГОДИ', 'adventure', 'один из самых популярных жанров современной манги и аниме', '30fe00bb43f6c836a78754b8484db01003caa9c3v2_hq.jpg', '2018-12-12 05:19:17', '2018-12-12 19:19:08'),
(18, 'КОМЕДІЯ', 'comedy', 'один из самых популярных жанров современной манги и аниме', '300px-Boku_wa_Tomodachi_ga_Sukunai_DVD_boxset.jpg', '2018-12-12 17:42:06', '2018-12-12 19:18:42'),
(19, 'ДРАМА', 'drama', 'поджанр в аниме, манге и в научной фантастике,', 'GNCA-1410.jpg', '2018-12-12 18:33:26', '2018-12-12 19:18:05'),
(20, 'ЭТТИ', 'ecchi', 'Ecchi (エッチ etchi, pronounced [et.tɕi]) is an often used slang term in the Japanese language for playfully sexual actions. As an adjective, it is used with the meaning of \"sexy\", \"dirty\" or \"naughty\"; as a verb, ecchi wo suru (エッチをする)', 'default.jpg', '2018-12-12 18:38:42', '2018-12-12 19:17:56'),
(21, 'ФЄНТЕЗІ', 'fantasy', 'поджанр в аниме, манге и в научной фантастике,', 'default (1).jpg', '2018-12-12 18:43:01', '2018-12-12 18:43:01'),
(22, 'ГАРЕМ', 'harem', 'жанр аниме и манги.', '300px-Accel_World_DVD_cover.jpg', '2018-12-12 18:45:10', '2018-12-13 07:48:36'),
(23, 'ХОРОР', 'horror', 'жанр в кино и литературе', 'series_74.jpg', '2018-12-12 18:47:06', '2018-12-12 18:47:06'),
(24, 'IСЕКЕЙ', 'isekai', 'один из самых популярных жанров современной манги и аниме', 'default (2).jpg', '2018-12-12 18:47:42', '2018-12-12 18:47:42'),
(25, 'МЕХА', 'mecha', ' поджанр в аниме, манге и в научной фантастике,', '2100000051786.jpg', '2018-12-12 18:52:20', '2018-12-12 18:52:20'),
(26, 'МІСТИКА', 'mystery', ' Містика', 'Pygmalion.png', '2018-12-12 18:53:51', '2018-12-12 18:53:51'),
(27, 'МІРБЕ', 'netorare', 'поджанр в аниме, манге и в научной фантастике,', 'a238e63699fefe8c88346e17c64ea8c5.jpg', '2018-12-12 18:57:49', '2018-12-12 18:57:49'),
(28, 'ПСИХОЛОГІЯ', 'psychological', 'поджанр в аниме, манге и в научной фантастике,', 'default (3).jpg', '2018-12-12 19:00:05', '2018-12-12 19:00:05'),
(29, 'РОМАНС', 'romance', 'поджанр в аниме, манге и в научной фантастике,', 'series_14.jpg', '2018-12-12 19:01:27', '2018-12-12 19:01:27'),
(30, 'ШКІЛЬНЕ ЖИТТЯ', 'school-life', 'поджанр в аниме, манге и в научной фантастике,', 'default (4).jpg', '2018-12-12 19:03:45', '2018-12-12 19:03:45'),
(31, 'ФІКЦІЯ НАУКИ', 'science-fiction', 'ФІКЦІЯ НАУКИ', 'sword-art-online-rank-gioi-hu-ao-2.jpg', '2018-12-12 19:06:55', '2018-12-12 19:06:55'),
(32, 'СЕДЗЕ', 'shoujo', 'аниме и манга, рассчитанные на особую целевую аудиторию — девушек в возрасте от 12 до 18 лет.', 'Max_level_witch_cover.jpg', '2018-12-12 19:08:29', '2018-12-12 19:08:29'),
(33, 'ШОУН', 'shounen', 'аниме, манга и ранобэ, рассчитанные на особую целевую аудиторию — мальчиков и юношей в возрасте от 12 до 18 лет. Манга этого типа публикуется в специализированных журналах, занимающих 38,4 % рынка', 'Kami-tachi ni Hirowareta Otoko.jpg', '2018-12-12 19:09:50', '2018-12-12 19:09:50'),
(34, 'ПОВСЯДКЕНІСТЬ', 'slice-of-life', 'термин, который относится к натуралистическому театру и обозначает натуралистичное описание реальной жизни героев.', 'class-ga-isekai-shoukan-sareta-naka-ore-dake-nokotta-n-desu-ga.jpg', '2018-12-12 19:11:23', '2018-12-12 19:11:23'),
(35, 'СУПЕР СИЛА', 'super-power', 'СУПУР СИЛА', '48ef5735dcdcca933eaaf1cd43096f09.jpg', '2018-12-12 19:13:27', '2018-12-12 19:13:27'),
(36, 'НАДПРИРОДНЕ', 'supernatural', 'Надприродне', 'MV5BNjZjMjcyYjAtOTE5Yi00YmUwLWIzZDctZTg2YjQ3NGM4ZmFlXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_.jpg', '2018-12-12 19:15:04', '2018-12-12 19:15:04'),
(37, 'СУСПЕНСЕ', 'suspense', 'СУСПЕНСЕ', 'series_241.jpg', '2018-12-12 19:16:12', '2018-12-12 19:16:12'),
(38, 'ТРАГЕДІЯ', 'tragedy', 'трагндія', 'series_330.jpg', '2018-12-12 19:17:10', '2018-12-12 19:17:10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'vlad', 'sasha@gmail.com', '$2y$10$37zLEC6JtM/GjcvimPCHH.7A2z3Vfil03u1Urk8acH/lRUOhRsf.C', '0123456789', '123 ', 'Dr9NLpXAwpcpiOGPwYL9dsSnv6MYqVjdOrpyjB88mjDBkAMgCIdavqjIpj8L', '2018-11-29 04:33:54', '2018-11-29 04:33:54'),
(9, 'dima', 'goloborodaui@gmail.com', '$2y$10$bRpdcMXgqxbZolRaxsMHNuwDBWuV9rUAs0VrL4r4g/mBv4va6txkK', '0947784467', 'xxxx', 'S0Nv1slOUaMmg0SPsKsc02WZBHlxSgC0t4Uw3aO3Q98cVivmXt6QWeC75aS2', '2018-12-10 19:49:11', '2018-12-18 07:56:35');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Индексы таблицы `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`billde_id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`new_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Индексы таблицы `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`cate_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bills`
--
ALTER TABLE `bills`
  MODIFY `bill_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `billde_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `com_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `new_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT для таблицы `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `type_products`
--
ALTER TABLE `type_products`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`cate_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
