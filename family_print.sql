-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 11:19 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `family_print`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_artwork`
--

CREATE TABLE `fp_artwork` (
  `artwork_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `artwork_image` varchar(150) NOT NULL DEFAULT '',
  `artwork_image_extension` varchar(50) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_artwork`
--

INSERT INTO `fp_artwork` (`artwork_id`, `gallery_id`, `title`, `artwork_image`, `artwork_image_extension`, `created_by`, `created_date`, `is_active`) VALUES
(1, 1, 'Artwork 1', 'gallery/1/clipArt/pngtree-lovely-bat-clipart-vector-png-element-png-image_1749074.jpg', 'jpg', 1, '2021-02-18 12:09:13', 1),
(2, 1, 'Artwork 2', 'gallery/1/clipArt/cb0cacfe6909654f077e0423a3c227ab.jpg', 'jpg', 1, '2021-02-18 12:22:01', 1),
(3, 1, 'Artwork 3', 'gallery/1/clipArt/images.jpg', 'jpg', 1, '2021-02-18 12:23:44', 0),
(4, 1, 'Artwork 4', 'gallery/1/clipArt/pngtree-happy-halloween-scary-pumpkin-png-image_2136606.jpg', 'jpg', 1, '2021-02-18 12:24:26', 0),
(5, 2, 'Artwork 1', 'gallery/2/clipArt/pngtree-happy-halloween-scary-pumpkin-png-image_2136606.jpg', 'jpg', 1, '2021-02-18 12:25:31', 1),
(6, 3, 'Pumpkin', 'gallery/3/clipArt/pngtree-happy-halloween-scary-pumpkin-png-image_2136606.jpg', 'jpg', 1, '2021-02-18 17:51:23', 1),
(7, 3, 'Artwork 2', 'gallery/3/clipArt/cb0cacfe6909654f077e0423a3c227ab.jpg', 'jpg', 1, '2021-02-18 17:51:54', 0),
(17, 3, 'cb0cacfe6909654f077e0423a3c227ab.jpg', 'gallery/3/clipArt/cb0cacfe6909654f077e0423a3c227ab.jpg', 'jpg', 1, '2021-02-22 09:10:46', 1),
(18, 3, 'Holloween.jpg', 'gallery/3/clipArt/Holloween.jpg', 'jpg', 1, '2021-02-22 09:10:46', 1),
(19, 3, 'mug.jpg', 'gallery/3/clipArt/mug.jpg', 'jpg', 1, '2021-02-22 09:10:46', 0),
(20, 3, 'jersey8.jpg', 'gallery/3/clipArt/jersey8.jpg', 'jpg', 1, '2021-02-22 09:13:42', 1),
(21, 3, 'jersey666.jpg', 'gallery/3/clipArt/jersey666.jpg', 'jpg', 1, '2021-02-22 09:13:42', 1),
(22, 3, 'tees-large.png', 'gallery/3/clipArt/tees-large.png', 'png', 1, '2021-02-22 09:13:42', 0),
(29, 2, 'cb0cacfe6909654f077e0423a3c227ab.jpg', 'gallery/2/clipArt/cb0cacfe6909654f077e0423a3c227ab.jpg', 'jpg', 1, '2021-02-23 17:42:17', 1),
(30, 2, 'Holloween.jpg', 'gallery/2/clipArt/Holloween.jpg', 'jpg', 1, '2021-02-23 17:42:17', 1),
(31, 2, 'images.jpg', 'gallery/2/clipArt/images.jpg', 'jpg', 1, '2021-02-23 17:42:17', 1),
(32, 2, 'cap.jpg', 'gallery/2/clipArt/cap.jpg', 'jpg', 1, '2021-02-23 17:42:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_event`
--

CREATE TABLE `fp_event` (
  `event_id` int(11) NOT NULL,
  `event_type` enum('Virtual','On Site','E-Com','') NOT NULL DEFAULT '',
  `app_type` enum('Single Gallery','Multiple Gallery','','') NOT NULL DEFAULT '',
  `app_name` varchar(100) NOT NULL DEFAULT '',
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `orientation` enum('Landscape','Portrait') NOT NULL,
  `event_place` varchar(200) NOT NULL DEFAULT '',
  `client` varchar(100) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_event`
--

INSERT INTO `fp_event` (`event_id`, `event_type`, `app_type`, `app_name`, `start_datetime`, `end_datetime`, `orientation`, `event_place`, `client`, `created_by`, `created_date`, `modified_date`, `is_active`) VALUES
(1, 'On Site', 'Single Gallery', 'Christmas Eve', '2021-02-10 12:32:00', '2021-02-12 01:34:00', 'Portrait', 'Los Vegas', 'Microsoft', 1, '2021-02-10 07:03:17', '2021-02-10 07:03:17', 1),
(2, 'Virtual', 'Multiple Gallery', 'Football Club', '2021-02-16 02:35:00', '2021-02-22 02:33:00', 'Landscape', 'San Jose', 'Red Bull', 1, '2021-02-10 07:04:01', '2021-02-10 07:04:01', 1),
(3, 'E-Com', 'Single Gallery', 'T-20 Cricket', '2021-02-03 12:15:00', '2021-02-24 12:16:00', 'Portrait', 'California', 'Nectar', 1, '2021-02-14 06:46:14', '2021-02-14 06:46:14', 1),
(4, 'Virtual', 'Single Gallery', 'Moto GP Race 21', '2021-02-24 22:20:00', '2021-02-27 13:22:00', 'Landscape', 'New York', 'Red Bull', 1, '2021-02-16 16:51:04', '2021-02-16 16:51:04', 1),
(5, 'Virtual', 'Multiple Gallery', 'Event 5', '2021-02-18 13:08:00', '2021-02-26 14:08:00', 'Landscape', 'San Jose', 'Red Bull', 1, '2021-02-16 17:38:56', '2021-02-16 17:38:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_executive`
--

CREATE TABLE `fp_event_executive` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_event_executive`
--

INSERT INTO `fp_event_executive` (`id`, `user_id`, `event_id`, `is_active`) VALUES
(1, 2, 1, 1),
(2, 3, 2, 1),
(3, 2, 3, 1),
(4, 3, 4, 1),
(5, 3, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_type`
--

CREATE TABLE `fp_event_type` (
  `type_id` int(11) NOT NULL,
  `event_type` int(11) NOT NULL DEFAULT '0' COMMENT '(Default:0,virual:1,OnSite:2,ECom:3)',
  `event_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_gallery`
--

CREATE TABLE `fp_gallery` (
  `gallery_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `gallery_image` varchar(150) NOT NULL DEFAULT '',
  `gallery_image_extension` varchar(50) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_gallery`
--

INSERT INTO `fp_gallery` (`gallery_id`, `title`, `gallery_image`, `gallery_image_extension`, `created_by`, `created_date`, `is_active`) VALUES
(1, 'My Collection 1', 'gallery/1/annie-spratt-VDXtVYJVj7A-unsplash.jpg', 'jpg', 1, '2021-02-18 05:34:45', 1),
(2, 'My Collection 2', 'gallery/2/chad-madden-SUTfFCAHV_A-unsplash.jpg', 'jpg', 1, '2021-02-18 06:38:45', 1),
(3, 'My Collection 3', 'gallery/3/Holloween.jpg', 'jpg', 1, '2021-02-18 17:50:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_preview_app`
--

CREATE TABLE `fp_preview_app` (
  `app_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `preview` varchar(200) NOT NULL DEFAULT '',
  `preview_file` varchar(250) NOT NULL DEFAULT '',
  `preview_file_ext` varchar(50) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_preview_app`
--

INSERT INTO `fp_preview_app` (`app_id`, `event_id`, `preview`, `preview_file`, `preview_file_ext`, `created_by`, `created_date`, `is_active`) VALUES
(1, 4, 'Check Out!', 'preview/1/annie-spratt-VDXtVYJVj7A-unsplash.jpg', 'jpg', 1, '2021-03-03 09:46:12', 1),
(2, 2, 'Check Out!', 'preview/2/annie-spratt-VDXtVYJVj7A-unsplash.jpg', 'jpg', 1, '2021-03-03 09:59:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_product`
--

CREATE TABLE `fp_product` (
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(100) NOT NULL DEFAULT '',
  `canvas_front_width` float NOT NULL DEFAULT '0',
  `canvas_front_height` float NOT NULL DEFAULT '0',
  `canvas_back_width` float NOT NULL DEFAULT '0',
  `canvas_back_height` float NOT NULL DEFAULT '0',
  `frontview_file` varchar(200) NOT NULL DEFAULT '',
  `frontview_file_ext` varchar(50) NOT NULL DEFAULT '',
  `backview_file` varchar(200) NOT NULL DEFAULT '',
  `backview_file_ext` varchar(50) NOT NULL DEFAULT '',
  `frontview_svg` varchar(250) NOT NULL DEFAULT '',
  `backview_svg` varchar(250) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_product`
--

INSERT INTO `fp_product` (`product_id`, `type_id`, `name`, `color`, `canvas_front_width`, `canvas_front_height`, `canvas_back_width`, `canvas_back_height`, `frontview_file`, `frontview_file_ext`, `backview_file`, `backview_file_ext`, `frontview_svg`, `backview_svg`, `created_by`, `created_date`, `is_active`) VALUES
(1, 1, 'Pepe Jeans T Shirt', '#ec1818', 510, 520, 530, 540, 'product/1/front_jersey2.jpg', 'jpg', 'product/1/back_jersey5.jpg', 'jpg', '', '', 1, '2021-02-15 07:33:44', 1),
(2, 3, 'Gucci Cap', '#b41e43', 514, 528, 534, 543, 'product/2/front_cap.jpg', 'jpg', 'product/2/back_cap.jpg', 'jpg', '', '', 1, '2021-02-15 11:41:06', 0),
(3, 1, 'Polo Sport T', '#3a98de', 514, 652, 145, 265, 'product/3/front_jersey2.jpg', 'jpg', 'product/3/back_jersey5.jpg', 'jpg', '', '', 1, '2021-02-15 12:01:57', 0),
(4, 1, 'Zara West Side', '#08242f', 514, 528, 145, 543, 'product/4/front_jersey7.jpg', 'jpg', 'product/4/back_jersey8.jpg', 'jpg', '', '', 1, '2021-02-15 12:03:49', 1),
(5, 1, 'Product Family Bussiness', '#90003d', 514, 524, 985, 895, 'product/5/front_jersey8.jpg', 'jpg', 'product/5/back_jersey3.jpg', 'jpg', '', '', 1, '2021-02-16 17:47:26', 1),
(6, 1, 'Custom T-Shirt 1', '#6c1414', 180, 370, 145, 543, 'product/6/front_jersey3.jpg', 'jpg', 'product/6/back_jersey5.jpg', 'jpg', 'product/6/front_svg_34481.svg', 'product/6/back_svg_161966.svg', 1, '2021-02-26 04:25:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_product_app`
--

CREATE TABLE `fp_product_app` (
  `app_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `bg_file_path` varchar(200) NOT NULL DEFAULT '',
  `bg_file_extention` varchar(100) NOT NULL DEFAULT '',
  `header_text` varchar(150) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_product_app`
--

INSERT INTO `fp_product_app` (`app_id`, `event_id`, `bg_file_path`, `bg_file_extention`, `header_text`, `created_by`, `created_date`, `is_active`) VALUES
(1, 1, 'productApp/1/annie-spratt-VDXtVYJVj7A-unsplash.jpg', 'jpg', 'Create Your Own T-Shirts', 1, '2021-02-16 09:45:35', 1),
(2, 2, 'productApp/2/chad-madden-SUTfFCAHV_A-unsplash.jpg', 'jpg', 'Create Your Own T-Shirts', 1, '2021-02-16 17:48:32', 1),
(3, 3, 'productApp/3/Holloween.jpg', 'jpg', 'Chose New Product', 1, '2021-02-22 09:17:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_product_design`
--

CREATE TABLE `fp_product_design` (
  `app_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `print_location` varchar(100) DEFAULT '',
  `product_option` varchar(100) DEFAULT '',
  `gallery_type` varchar(100) DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_product_design`
--

INSERT INTO `fp_product_design` (`app_id`, `event_id`, `product_id`, `print_location`, `product_option`, `gallery_type`, `created_by`, `created_date`, `is_active`) VALUES
(1, 3, 1, 'front_only', 'scalable', 'single_gallery', 1, '2021-02-23 12:58:56', 1),
(2, 3, 4, 'back_only', 'non_scalable', 'multiple_gallery', 1, '2021-02-23 12:59:13', 1),
(3, 3, 5, 'both', 'scalable', 'multiple_gallery', 1, '2021-02-23 12:59:28', 1),
(5, 1, 1, 'front_only', 'non_scalable', 'multiple_gallery', 1, '2021-02-23 17:44:57', 1),
(6, 1, 4, 'both', 'scalable', 'single_gallery', 1, '2021-02-23 17:46:49', 1),
(7, 2, 6, 'front_only', 'scalable', 'multiple_gallery', 1, '2021-02-26 04:29:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_product_gallery`
--

CREATE TABLE `fp_product_gallery` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `gallery_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_product_gallery`
--

INSERT INTO `fp_product_gallery` (`id`, `event_id`, `product_id`, `gallery_id`, `created_by`, `created_date`, `is_active`) VALUES
(1, 3, 1, 3, 1, '2021-02-23 12:59:06', 1),
(3, 3, 5, 1, 1, '2021-02-23 12:59:34', 1),
(4, 3, 4, 1, 1, '2021-02-23 15:43:42', 1),
(5, 3, 4, 2, 1, '2021-02-23 15:43:42', 1),
(7, 1, 1, 3, 1, '2021-02-23 17:46:28', 1),
(8, 1, 1, 1, 1, '2021-02-23 17:46:28', 1),
(9, 1, 1, 2, 1, '2021-02-23 17:46:28', 1),
(10, 1, 4, 3, 1, '2021-02-23 17:47:03', 1),
(11, 1, 4, 1, 1, '2021-02-23 17:47:03', 1),
(12, 1, 4, 3, 1, '2021-02-23 17:47:04', 1),
(13, 2, 6, 3, 1, '2021-02-26 04:29:29', 1),
(14, 2, 6, 1, 1, '2021-02-26 04:29:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_product_selected_app`
--

CREATE TABLE `fp_product_selected_app` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `app_id` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_product_selected_app`
--

INSERT INTO `fp_product_selected_app` (`id`, `product_id`, `app_id`, `is_active`) VALUES
(1, 1, 1, 1),
(2, 4, 1, 1),
(3, 1, 2, 1),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 1, 3, 1),
(7, 4, 3, 1),
(8, 5, 3, 1),
(9, 6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_product_size`
--

CREATE TABLE `fp_product_size` (
  `size_id` int(11) NOT NULL,
  `size` varchar(50) NOT NULL DEFAULT '',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_product_type`
--

CREATE TABLE `fp_product_type` (
  `type_id` int(11) NOT NULL,
  `product` varchar(150) NOT NULL DEFAULT '',
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_product_type`
--

INSERT INTO `fp_product_type` (`type_id`, `product`, `is_active`) VALUES
(1, 'T-Shirt', 1),
(2, 'Coffee Mug', 1),
(3, 'Cap', 1),
(4, 'Shirts', 1),
(5, 'Jeans', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_registration`
--

CREATE TABLE `fp_registration` (
  `reg_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(150) NOT NULL DEFAULT '',
  `contact` double NOT NULL DEFAULT '0',
  `address_1` varchar(250) NOT NULL DEFAULT '',
  `address_2` varchar(250) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `zip` varchar(50) NOT NULL DEFAULT '',
  `is_active` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_registration`
--

INSERT INTO `fp_registration` (`reg_id`, `event_id`, `first_name`, `last_name`, `email`, `contact`, `address_1`, `address_2`, `city`, `zip`, `is_active`) VALUES
(1, 1, 'Nilesh', 'Vishwakarma', 'nilesh@gmail.com', 8954574512, 'Pune Hadpsar', '', 'Pune', '411058', 1),
(2, 2, 'Nilesh', 'Vishwakarma', 'nilesh@gmail.com', 8954574512, 'Pune Hadpsar', '', 'Pune', '', 1),
(3, 0, 'Nilesh', 'Vishwakarma', 'nilesh@gmail.com', 8954574512, 'Pune Hadpsar', '', 'Pune', '411058', 1),
(4, 0, 'Nilesh', 'Vishwakarma', 'nilesh@gmail.com', 8954574512, 'Pune Hadpsar', '', 'Pune', '411058', 1),
(5, 0, 'Nilesh', 'Vishwakarma', 'nilesh@gmail.com', 8954574512, 'Pune Hadpsar', '', 'Pune', '411058', 1),
(6, 0, 'Nilesh', 'Vishwakarma', 'nilesh@gmail.com', 8954574512, 'Pune Hadpsar', '', 'Pune', '411058', 1),
(7, 0, 'Nilesh', 'Vishwakarma', 'nilesh@gmail.com', 8954574512, 'Pune Hadpsar', '', 'Pune', '', 1),
(8, 0, 'Nilesh', 'Vishwakarma', 'nilesh@gmail.com', 8954574512, 'Pune Hadpsar', '', 'Pune', '411058', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_registration_app`
--

CREATE TABLE `fp_registration_app` (
  `app_id` int(11) NOT NULL,
  `bg_file_path` varchar(150) NOT NULL DEFAULT '',
  `bg_file_extention` text,
  `is_terms_conditions` tinyint(1) NOT NULL DEFAULT '0',
  `terms_conditions` varchar(2000) NOT NULL DEFAULT '',
  `data_collected` tinyint(1) NOT NULL DEFAULT '0',
  `is_first_name` tinyint(1) NOT NULL DEFAULT '0',
  `is_last_name` tinyint(1) NOT NULL DEFAULT '0',
  `is_phone` tinyint(1) NOT NULL DEFAULT '0',
  `is_email` tinyint(1) NOT NULL DEFAULT '0',
  `is_address_1` tinyint(1) NOT NULL DEFAULT '0',
  `is_address_2` tinyint(1) NOT NULL DEFAULT '0',
  `is_city` tinyint(1) NOT NULL DEFAULT '0',
  `is_zip` tinyint(1) NOT NULL DEFAULT '0',
  `button_color` varchar(100) NOT NULL DEFAULT '',
  `button_text` varchar(100) NOT NULL DEFAULT '',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `modified_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_registration_app`
--

INSERT INTO `fp_registration_app` (`app_id`, `bg_file_path`, `bg_file_extention`, `is_terms_conditions`, `terms_conditions`, `data_collected`, `is_first_name`, `is_last_name`, `is_phone`, `is_email`, `is_address_1`, `is_address_2`, `is_city`, `is_zip`, `button_color`, `button_text`, `event_id`, `created_by`, `created_date`, `modified_by`, `modified_date`, `is_active`) VALUES
(1, 'registration/1/annie-spratt-VDXtVYJVj7A-unsplash.jpg', 'jpg', 0, '', 0, 1, 1, 1, 1, 1, 0, 1, 1, '#b11b1b', 'Add Now', 1, 1, '2021-02-09 17:03:25', 1, '2021-02-09 17:03:25', 1),
(2, 'registration/2/chad-madden-SUTfFCAHV_A-unsplash.jpg', 'jpg', 0, '', 0, 1, 1, 1, 1, 1, 0, 1, 0, '#e31c1c', 'Register Now', 2, 1, '2021-02-09 17:44:19', 1, '2021-02-09 17:44:19', 1),
(3, 'registration/3/chad-madden-SUTfFCAHV_A-unsplash.jpg', 'jpg', 0, '', 1, 1, 0, 1, 1, 1, 0, 0, 1, '#28e66b', 'Get Started', 3, 1, '2021-02-16 09:36:47', 1, '2021-02-16 09:36:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fp_welcome_app`
--

CREATE TABLE `fp_welcome_app` (
  `app_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `welcome_title` varchar(150) NOT NULL DEFAULT '',
  `welcome_desc` varchar(500) NOT NULL DEFAULT '',
  `button_text` varchar(100) NOT NULL DEFAULT '',
  `bg_file_path` varchar(150) NOT NULL DEFAULT '',
  `bg_file_extention` varchar(50) NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fp_welcome_app`
--

INSERT INTO `fp_welcome_app` (`app_id`, `event_id`, `welcome_title`, `welcome_desc`, `button_text`, `bg_file_path`, `bg_file_extention`, `created_by`, `created_date`, `is_active`) VALUES
(1, 1, 'Merry Christmas', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Get Started', 'welcome/1/annie-spratt-VDXtVYJVj7A-unsplash.jpg', 'jpg', 1, '2021-02-09 17:02:14', 1),
(3, 2, 'Welcome Friends', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Get Started', 'welcome/3/video.mp4', 'mp4', 1, '2021-02-09 17:41:37', 1),
(5, 3, 'Welcome', 'Desc', 'Get Started', 'welcome/5/annie-spratt-VDXtVYJVj7A-unsplash.jpg', 'jpg', 1, '2021-02-14 12:25:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('03a391c2339f73b24e420fe5449663936e371f2cbb44b468cb5167fd86ddd394acadcbbe49537c83', 1, 1, 'MyApp', '[]', 0, '2021-02-02 00:11:25', '2021-02-02 00:11:25', '2022-02-02 05:41:25'),
('05cabbc9a60143076527764d7f5c10c19c87e984a12525115d17619e7e37f0a7750ba8ad1f6c8cba', 1, 1, 'MyApp', '[]', 0, '2021-01-25 05:48:28', '2021-01-25 05:48:28', '2022-01-25 11:18:28'),
('118aa47612889508637bc70f9f32a553be469e5df16ea98393a20e41a47bb256f96bdf4b6930a332', 1, 1, 'MyApp', '[]', 0, '2021-02-02 00:11:07', '2021-02-02 00:11:07', '2022-02-02 05:41:07'),
('1564d0a4caf296c4abf35b0b47d14f9a3520ca0c4f2eae0ca3a2759acb466aaa99f4af9d85c5553e', 4, 1, 'MyApp', '[]', 0, '2021-02-04 06:19:55', '2021-02-04 06:19:55', '2022-02-04 11:49:55'),
('1595c95fb8d000bb4ec0d47d79584430b62552c08fcee9b53e5c27e4498b8404092720d65d37d043', 1, 1, 'MyApp', '[]', 0, '2021-02-02 02:11:49', '2021-02-02 02:11:49', '2022-02-02 07:41:49'),
('174dc4c780dd0e04b63f38775bedb76e21a24985b827e95b0c6ef48839ff77f2b99f0d5c4b95d119', 1, 1, 'MyApp', '[]', 0, '2021-01-26 00:36:27', '2021-01-26 00:36:27', '2022-01-26 06:06:27'),
('17d7d35f56bb0fd24f11d534dd11f15bee41e7ce3e63b0143c92f9876cb32a93ae54702fff12e5ea', 1, 1, 'MyApp', '[]', 0, '2021-02-02 11:19:25', '2021-02-02 11:19:25', '2022-02-02 16:49:25'),
('1bec48ab1a7dbd90e17a9f18df691a666a898fc2b88eca362e27b8e8c08ae6062b28c9813bcf82fd', 1, 1, 'MyApp', '[]', 0, '2021-02-10 23:49:17', '2021-02-10 23:49:17', '2022-02-11 05:19:17'),
('22d26a70fa5c572a2e9767f5a5dfa3eca675f579342fcd164c6ca75f5a28889593e5fac31bdc99bb', 1, 1, 'MyApp', '[]', 0, '2021-02-08 19:52:10', '2021-02-08 19:52:10', '2022-02-09 01:22:10'),
('237a034f88479f0439027ec57d9cc947e58a5746b12eab650d621ee53ac466c5d74675ac2c688952', 1, 1, 'MyApp', '[]', 0, '2021-03-03 00:55:55', '2021-03-03 00:55:55', '2022-03-03 06:25:55'),
('2693d380d802b7407be649e16cba43474735669466087e97324e02ea6369c196fe5424c15ea935ce', 1, 1, 'MyApp', '[]', 0, '2021-02-23 00:50:47', '2021-02-23 00:50:47', '2022-02-23 06:20:47'),
('27b5dea52faf9f82f2d3019d2f90326e5a1c367f9d64a46f9fb41b56b706e54f730f6cf9028f454d', 1, 1, 'MyApp', '[]', 0, '2021-02-08 07:46:02', '2021-02-08 07:46:02', '2022-02-08 13:16:02'),
('2a013b8ac3504e1d22864da1909a2c90f244a0aa6812c6b2664371fcc5fd0d3389cbafe7fe217976', 1, 1, 'MyApp', '[]', 0, '2021-02-02 03:35:03', '2021-02-02 03:35:03', '2022-02-02 09:05:03'),
('2ac18dce848719994b866f2ea779c597d01f5ab17a3be2f0e6303c371c55a05c961242bf24a3fea0', 1, 1, 'MyApp', '[]', 0, '2021-01-31 06:26:14', '2021-01-31 06:26:14', '2022-01-31 11:56:14'),
('2b98576f7efe07a9ac08f135ec19bc2dfc0412fcc4cfec7b57e6c6851878b9e3834502b43aed64dc', 1, 1, 'MyApp', '[]', 0, '2021-02-02 03:36:28', '2021-02-02 03:36:28', '2022-02-02 09:06:28'),
('2c455bc9089a6746df53f354383b308d28fb5d217303f48e9b2742272585390340d061a403d685ed', 1, 1, 'MyApp', '[]', 0, '2021-01-25 06:45:42', '2021-01-25 06:45:42', '2022-01-25 12:15:42'),
('315d5a51f36911d351f888ecf328c767ad7decdf341fbd901d650766ab5b56d58d62d73bfd04f2ab', 1, 1, 'MyApp', '[]', 0, '2021-02-06 23:37:13', '2021-02-06 23:37:13', '2022-02-07 05:07:13'),
('37ab445ca4bc6ce877f6d9cce77f0910dbec975cbcbd2e58a7a5309fb4d7c0c8d7991a72eddd28d6', 1, 1, 'MyApp', '[]', 0, '2021-01-25 06:10:43', '2021-01-25 06:10:43', '2022-01-25 11:40:43'),
('37c816b5fea5a54e8563646c86ef534cac25be4174c3ee9f3da7de62847dbbe4b085b0f9bc0633d7', 1, 1, 'MyApp', '[]', 0, '2021-02-05 03:26:19', '2021-02-05 03:26:19', '2022-02-05 08:56:19'),
('37d102f7acd679d896ccc26188a94f5ff212ad3e300389203113234636cb5d027118380f22324011', 1, 1, 'MyApp', '[]', 0, '2021-02-06 23:14:34', '2021-02-06 23:14:34', '2022-02-07 04:44:34'),
('3ae40e9508af9d75038daca475f186aa7c2b5dbe0cb74666d204863b069db12559c6d7a805350636', 1, 1, 'MyApp', '[]', 0, '2021-01-27 03:47:51', '2021-01-27 03:47:51', '2022-01-27 09:17:51'),
('3e2584b6021f94c7e1a54652ac75fd866ca9a6b581752ab8d3b43932f8af0a0a51ea60fb3263823b', 1, 1, 'MyApp', '[]', 0, '2021-02-04 11:15:42', '2021-02-04 11:15:42', '2022-02-04 16:45:42'),
('400667ab9c7a733368a4ff4483de00bb6ea4402fc72d6ef22cd69e5bc46dd7e6773b1c6a573d32d5', 1, 1, 'MyApp', '[]', 0, '2021-01-25 04:12:41', '2021-01-25 04:12:41', '2022-01-25 09:42:41'),
('41b27e70ae0da6aba0e3a5f6d5dd39cb02cfb21cfb5592fe374a9808ae364aceff4d3494549d9cff', 1, 1, 'MyApp', '[]', 0, '2021-01-25 06:41:12', '2021-01-25 06:41:12', '2022-01-25 12:11:12'),
('439bc6e7ab1d4ac87635d190b4fabfeb0366a92d3f04936f14309714daab3729f681796d6fad8cc6', 1, 1, 'MyApp', '[]', 0, '2021-01-28 12:08:11', '2021-01-28 12:08:11', '2022-01-28 17:38:11'),
('4a275fbbd0aa11bc44eb83d0ccb563afb80852b6779269c754a3376d5cee81c6f45ebd14e5be8fc9', 1, 1, 'MyApp', '[]', 0, '2021-01-25 06:35:13', '2021-01-25 06:35:13', '2022-01-25 12:05:13'),
('538ba3c6279c44eb2e29915d2998b105b490b0a6c5c75553d52570b142b53a309af6aa1993c625f4', 1, 1, 'MyApp', '[]', 0, '2021-01-26 00:35:32', '2021-01-26 00:35:32', '2022-01-26 06:05:32'),
('583fce17861f6245251e039f3ec0b523f7c3cc765a986574a07bb6aea84a5b03596eee7492b871ce', 1, 1, 'MyApp', '[]', 0, '2021-01-25 05:28:43', '2021-01-25 05:28:43', '2022-01-25 10:58:43'),
('5877666e2a64c3e9ca8d0bf3299c06aa48a3fd673517f7c8f48206e56b8f9d95c96865dc70b464f3', 1, 1, 'MyApp', '[]', 0, '2021-02-23 00:50:46', '2021-02-23 00:50:46', '2022-02-23 06:20:46'),
('5aa56da7e15385e3a5bb21da911eb3af421304e46946c6b10dc086d98bf1a879516e0f889be56126', 1, 1, 'MyApp', '[]', 0, '2021-01-25 06:42:13', '2021-01-25 06:42:13', '2022-01-25 12:12:13'),
('6600a823f79ce5508f5e41aa8357db344d53bce70c72edf8d57c35414eb4197b6e0fcc1c33c33e7a', 1, 1, 'MyApp', '[]', 0, '2021-02-04 06:20:10', '2021-02-04 06:20:10', '2022-02-04 11:50:10'),
('6a0cf00dcba14966ec68d9155a229799a76000033acc976d2683004e24125dde3318082e109ffc28', 1, 1, 'MyApp', '[]', 0, '2021-02-02 11:10:11', '2021-02-02 11:10:11', '2022-02-02 16:40:11'),
('6cee20ef4b055b30abaccadb9a4220e10758d09cfab86ee696f5329be0835d68787a56ede7b19fe8', 1, 1, 'MyApp', '[]', 0, '2021-02-04 06:18:18', '2021-02-04 06:18:18', '2022-02-04 11:48:18'),
('7577442da98ffe151dfcbf2c5e9dcfb2a453c72462130c45bb5e5da7b7e8cc46243cc79e632d1112', 1, 1, 'MyApp', '[]', 0, '2021-02-02 07:51:29', '2021-02-02 07:51:29', '2022-02-02 13:21:29'),
('76a5d8f129eb008de3478518b43370b0eaff4e78ab6a4379afdf73e0b4d7e9ffa4664efb408fe84c', 1, 1, 'MyApp', '[]', 0, '2021-01-27 23:06:43', '2021-01-27 23:06:43', '2022-01-28 04:36:43'),
('78e9e4bc1c91df6c86c498cba3bcd4cf62ef7be4d92375a86ffc0fe5a50dad32793c1829b27f7b21', 1, 1, 'MyApp', '[]', 0, '2021-01-26 00:35:33', '2021-01-26 00:35:33', '2022-01-26 06:05:33'),
('832f8a2d36143b685ce9c0e3e20fdab809e770150c8c675457cc9f68457423d19d84870480601622', 1, 1, 'MyApp', '[]', 0, '2021-01-26 01:14:37', '2021-01-26 01:14:37', '2022-01-26 06:44:37'),
('87196cc43c528e45da2e12b9e717beb791a67eafab78f420ff3bbb6b8a2de7e732728695f95d899d', 1, 1, 'MyApp', '[]', 0, '2021-01-27 02:55:19', '2021-01-27 02:55:19', '2022-01-27 08:25:19'),
('88b24057b3a48c4ed9aea638042f3d008189e603d4ab71e3d16ed1193589478ac7fc9c014ec589d5', 1, 1, 'MyApp', '[]', 0, '2021-02-11 00:08:06', '2021-02-11 00:08:06', '2022-02-11 05:38:06'),
('8b2d54e4fadc995dd4b561c2553347655d7a6f255902599ff671b98359ebbc0f11b9005ceda96fd6', 1, 1, 'MyApp', '[]', 0, '2021-02-04 12:08:34', '2021-02-04 12:08:34', '2022-02-04 17:38:34'),
('8c7054635c1cd7d49d67918096c9d01e3ce1d701031ea53d290811d7650d7b796838e52a27c56178', 1, 1, 'MyApp', '[]', 0, '2021-01-26 22:58:50', '2021-01-26 22:58:50', '2022-01-27 04:28:50'),
('8d9f7cb5314fe0159b4ad56fa24fcafdcc178bff9100594df3150fbad213f9e1db77b1682699e4e9', 4, 1, 'MyApp', '[]', 0, '2021-02-04 12:07:59', '2021-02-04 12:07:59', '2022-02-04 17:37:59'),
('8eaf4bbce4a49b217f82401e7e4346706704a2b894b6ad27d1f30ece101b531d3c30a8e5921bd3c9', 1, 1, 'MyApp', '[]', 0, '2021-02-04 05:09:20', '2021-02-04 05:09:20', '2022-02-04 10:39:20'),
('90566ec2bd78d33ee6d3439336085a7390bbeef8b3727c1b55b84390800e9a11756de54eee2635d0', 1, 1, 'MyApp', '[]', 0, '2021-01-28 00:33:16', '2021-01-28 00:33:16', '2022-01-28 06:03:16'),
('927d663cbac9b39ef2a7ee9049e46d9bada232af64bd318cde99a9453022e10d3ea4d631cce7af04', 1, 1, 'MyApp', '[]', 0, '2021-02-08 19:52:08', '2021-02-08 19:52:08', '2022-02-09 01:22:08'),
('93e147bf7b82090d5e89deda91a10965a460981f8be41960ec39a0237c07546a96a1f9ab12f21914', 1, 1, 'MyApp', '[]', 0, '2021-01-26 00:35:28', '2021-01-26 00:35:28', '2022-01-26 06:05:28'),
('966e462c89b792e25a355d2c1721b32d8760aba744ff6fb4b3faafb6de4bb6c84d9a7d54f766805d', 1, 1, 'MyApp', '[]', 0, '2021-01-28 00:33:38', '2021-01-28 00:33:38', '2022-01-28 06:03:38'),
('97c57071ec3539f519891385e68b8f5f4530e76df25b89c5e9b5e5d00d179c1d0492cfa4e19cd3a9', 1, 1, 'MyApp', '[]', 0, '2021-01-26 00:52:50', '2021-01-26 00:52:50', '2022-01-26 06:22:50'),
('9cfc3b035ac7cfa06bcaab5e0dd0b83ac5785ceafff8af66a6bf26a6e09892d0dc1a3ca300d277c0', 1, 1, 'MyApp', '[]', 0, '2021-02-02 03:32:57', '2021-02-02 03:32:57', '2022-02-02 09:02:57'),
('9ee8eba86832465c351329bdf5f1104243a3d5c65b94c9bd34358c5553cc8aad3e8563c2bb55f34f', 1, 1, 'MyApp', '[]', 0, '2021-02-23 00:50:43', '2021-02-23 00:50:43', '2022-02-23 06:20:43'),
('a7f501f9fbd15af2755589050b8dfe3028873286ece2fa0345900e9fa5fbc8ff50bf9bf8875e8ad9', 1, 1, 'MyApp', '[]', 0, '2021-01-25 06:32:39', '2021-01-25 06:32:39', '2022-01-25 12:02:39'),
('ad7604f3b96b5fb4485d960722d7e43f9090208df3665831c8a41560eef32fa4b21bc36bc0ef58c9', 1, 1, 'MyApp', '[]', 0, '2021-01-25 05:29:17', '2021-01-25 05:29:17', '2022-01-25 10:59:17'),
('b3075604ea4d906f7bf2b57e124f2bbfdd0e6279dc52c75b288177cfef07c5850ac76e4c2eed057f', 8, 1, 'MyApp', '[]', 0, '2021-02-02 12:16:17', '2021-02-02 12:16:17', '2022-02-02 17:46:17'),
('b5074d48afa9dd4e81b793a92733f8e1023f8086b4093bcd1818531d2e18c95639e1b446b4504d91', 2, 1, 'MyApp', '[]', 0, '2021-02-02 07:51:09', '2021-02-02 07:51:09', '2022-02-02 13:21:09'),
('c288162c767c9ea4e36399680a9663904499cbbce057e37691c038443bde93ed860734837f5be165', 1, 1, 'MyApp', '[]', 0, '2021-01-28 04:28:38', '2021-01-28 04:28:38', '2022-01-28 09:58:38'),
('c359f4416334ebc24b7b2abb9ab9326299009a26efcfd9549a8cca9acea242162c5bb8f2b3989c2c', 1, 1, 'MyApp', '[]', 0, '2021-01-28 22:27:43', '2021-01-28 22:27:43', '2022-01-29 03:57:43'),
('cbd46c15a085a09fce4f1c1b9df4008c9fcd3a2a10819c2ab16f2705a9dcb2280b43373e85ef3942', 1, 1, 'MyApp', '[]', 0, '2021-01-25 05:29:50', '2021-01-25 05:29:50', '2022-01-25 10:59:50'),
('cd32a5acd4484ee44d9192d4cc8095242b9b964e8d8202bc2e9ab171f899f375d333f39f7ed20d24', 1, 1, 'MyApp', '[]', 0, '2021-02-04 02:02:59', '2021-02-04 02:02:59', '2022-02-04 07:32:59'),
('ceb558420a3cec39421cb57224782dd8dbb6749ca2aeca30f57d256418464d0ff3070439c35a4b98', 1, 1, 'MyApp', '[]', 0, '2021-02-05 03:26:21', '2021-02-05 03:26:21', '2022-02-05 08:56:21'),
('d4ecaa4415bb2db1cf50ec7b625413e2744f944b2f137d0c41a1b0459ed8b4eba3ef52fdae9b53b3', 1, 1, 'MyApp', '[]', 0, '2021-01-27 03:46:59', '2021-01-27 03:46:59', '2022-01-27 09:16:59'),
('de6dcc0c079389b85aa53cc001ab97ec8353cd6632827a30306ed5cc3196cbeb505194a276c76494', 1, 1, 'MyApp', '[]', 0, '2021-01-28 00:40:42', '2021-01-28 00:40:42', '2022-01-28 06:10:42'),
('e335075cfd2bcb57297d69cbc6a867931febf07db1d70bfc5b9e89e6a11006421cc56dfe580fdec8', 1, 1, 'MyApp', '[]', 0, '2021-01-26 01:09:57', '2021-01-26 01:09:57', '2022-01-26 06:39:57'),
('e4936be8c5e62ceb55b9a8c78357110145a1daa1f0ba397d186d15472caa3f111fb3235c6d725dd4', 1, 1, 'MyApp', '[]', 0, '2021-01-31 06:26:17', '2021-01-31 06:26:17', '2022-01-31 11:56:17'),
('e563378ef501b2ceffd90fdc4b587f7a71644335145a2aee91de1c2e158af7c02a7ed5012861089c', 1, 1, 'MyApp', '[]', 0, '2021-01-28 11:22:43', '2021-01-28 11:22:43', '2022-01-28 16:52:43'),
('e6128792d16e83484cb468c5cdcb526ae755f235eecaddfa977c860b9b8f6e2d5fa52a1f4080d49f', 1, 1, 'MyApp', '[]', 0, '2021-02-02 02:08:49', '2021-02-02 02:08:49', '2022-02-02 07:38:49'),
('e6e456bccc1e7371baf813cf9d18433ec818ecc564adeda386e8c368bb81883e5bce308afb7680cf', 1, 1, 'MyApp', '[]', 0, '2021-01-25 06:37:44', '2021-01-25 06:37:44', '2022-01-25 12:07:44'),
('e797fc4593a66323f2741ec513cd0b3cd3babed8db801752ba87b645b5ca894829856318c78b5949', 1, 1, 'MyApp', '[]', 0, '2021-01-26 00:35:56', '2021-01-26 00:35:56', '2022-01-26 06:05:56'),
('e94db090722ea5c81c3e4d5924ae253a7b7c3f1f08486700231342154a69a53baeeee7ff4f3ac590', 4, 1, 'MyApp', '[]', 0, '2021-02-04 11:15:21', '2021-02-04 11:15:21', '2022-02-04 16:45:21'),
('ef2ef3e3a41fb4c45b0784f56244b9c353ac2dde5bcd22602773a24e093ec26fb9128340b24c5c0b', 1, 1, 'MyApp', '[]', 0, '2021-02-02 03:33:31', '2021-02-02 03:33:31', '2022-02-02 09:03:31'),
('f9be79db002662fa125134eddf9311428beb14a3ae9dbebdb7590ba5277761cfbc9c95770087ce51', 4, 1, 'MyApp', '[]', 0, '2021-02-04 06:18:03', '2021-02-04 06:18:03', '2022-02-04 11:48:03'),
('fb9c085cf6fd588ad7738867fac759a15e478da99db07e24b8d17c570464d2f439405154af2d2d81', 1, 1, 'MyApp', '[]', 0, '2021-02-02 12:03:28', '2021-02-02 12:03:28', '2022-02-02 17:33:28'),
('fca8068424551e969388f6c604a073eb0c880e8e209af634f44633a27a519ffceaa22621a27cb728', 1, 1, 'MyApp', '[]', 0, '2021-01-26 00:53:52', '2021-01-26 00:53:52', '2022-01-26 06:23:52'),
('fef1eb1e691a2fd36eccf372b539a8e834e290a17b0c0aa868a173fa9b5ba2a7c0d54b47bfe3fd65', 1, 1, 'MyApp', '[]', 0, '2021-01-29 06:29:38', '2021-01-29 06:29:38', '2022-01-29 11:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'W8FpEO0H51QKDLXXLwtQL8OJA8S6BpfdMgBpcSOK', NULL, 'http://localhost', 1, 0, 0, '2021-01-25 04:07:15', '2021-01-25 04:07:15'),
(2, NULL, 'Laravel Password Grant Client', 'g6mPVDaSguY6IXx1LnlbtBxMNo7qGKfEMowCxEiD', 'users', 'http://localhost', 0, 1, 0, '2021-01-25 04:07:15', '2021-01-25 04:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-25 04:07:15', '2021-01-25 04:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT '0' COMMENT '(Default:0,admin:1,Executive:2, Manager:3,Staff:4)',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` double DEFAULT '0',
  `location` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_type`, `username`, `contact`, `location`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `created_by`, `is_active`) VALUES
(1, 'admin', 'admin@demo.com', 1, 'admin', 88547541, 'California', NULL, '$2y$12$pQGex4/SiHgAoOusS0bBI.6Fi16RfMnz4j4fo3B8EPUf2fdgNasum', NULL, NULL, NULL, 0, 1),
(2, 'Bill Gates', 'nilesh.vishwakarma@nectarinfotel.com', 2, 'executive1', 32544588, 'Berlin', NULL, '$2y$12$pQGex4/SiHgAoOusS0bBI.6Fi16RfMnz4j4fo3B8EPUf2fdgNasum', NULL, NULL, '2021-02-02 11:46:43', 0, 0),
(3, 'Dietrich Mateschitz\r\n', 'nilesh.vishwakarma@nectarinfotel.com', 2, 'executive2', 36554787, 'California', NULL, '$2y$12$pQGex4/SiHgAoOusS0bBI.6Fi16RfMnz4j4fo3B8EPUf2fdgNasum', NULL, NULL, NULL, 0, 0),
(4, 'nilesh', 'nilesh@gmail.com', 3, 'nilesh', 250014512, 'Pune', NULL, '$2y$12$pQGex4/SiHgAoOusS0bBI.6Fi16RfMnz4j4fo3B8EPUf2fdgNasum', NULL, '2021-01-31 06:47:30', '2021-01-31 06:47:30', 1, 1),
(5, 'John', 'john.brasco@demo.com', 3, 'John', 83213131312, 'Los Vegas', NULL, '$2y$10$7HLewGXcbgv6tsqCcm8A4u2BQWoVkfwekVzxKQZHP.CTTSERJeMHO', NULL, '2021-01-31 06:55:20', '2021-01-31 06:55:20', 1, 1),
(6, 'Donie', 'donie@gmail.com', 1, 'donie', 64676464644, 'New York', NULL, '$2y$10$.zCybOo.p7kogSdwmPDhOuK7Yb5S2iBK0e8B16STgqWxQvjzTQ0yK', NULL, '2021-01-31 07:03:28', '2021-02-02 01:36:11', 1, 0),
(7, 'adam', 'adam@outlook.com', 4, 'adam', 20124557, 'san jose', NULL, '$2y$10$ZEjNePJsavjyMBTRKfy3l.NM4N2HTxCaSZOYClXsSEajTGM.QItDG', NULL, '2021-02-02 01:48:09', '2021-02-02 12:15:34', 1, 0),
(8, 'alex', 'alex@gmail.com', 1, 'alex', 85475455842, 'new york', NULL, '$2y$10$ZuBrn8ey5vO.WiZrirW1JeZMNGpzILHN5YnOXRAd.PqbpmehYoiw2', NULL, '2021-02-02 12:14:54', '2021-02-04 06:22:59', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_artwork`
--
ALTER TABLE `fp_artwork`
  ADD PRIMARY KEY (`artwork_id`);

--
-- Indexes for table `fp_event`
--
ALTER TABLE `fp_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `fp_event_executive`
--
ALTER TABLE `fp_event_executive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_type`
--
ALTER TABLE `fp_event_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `fp_gallery`
--
ALTER TABLE `fp_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `fp_preview_app`
--
ALTER TABLE `fp_preview_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `fp_product`
--
ALTER TABLE `fp_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `fp_product_app`
--
ALTER TABLE `fp_product_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `fp_product_design`
--
ALTER TABLE `fp_product_design`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `fp_product_gallery`
--
ALTER TABLE `fp_product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_product_selected_app`
--
ALTER TABLE `fp_product_selected_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_product_size`
--
ALTER TABLE `fp_product_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `fp_product_type`
--
ALTER TABLE `fp_product_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `fp_registration`
--
ALTER TABLE `fp_registration`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `fp_registration_app`
--
ALTER TABLE `fp_registration_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `fp_welcome_app`
--
ALTER TABLE `fp_welcome_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fp_artwork`
--
ALTER TABLE `fp_artwork`
  MODIFY `artwork_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `fp_event`
--
ALTER TABLE `fp_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fp_event_executive`
--
ALTER TABLE `fp_event_executive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fp_event_type`
--
ALTER TABLE `fp_event_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fp_gallery`
--
ALTER TABLE `fp_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fp_preview_app`
--
ALTER TABLE `fp_preview_app`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fp_product`
--
ALTER TABLE `fp_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fp_product_app`
--
ALTER TABLE `fp_product_app`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fp_product_design`
--
ALTER TABLE `fp_product_design`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fp_product_gallery`
--
ALTER TABLE `fp_product_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fp_product_selected_app`
--
ALTER TABLE `fp_product_selected_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fp_product_size`
--
ALTER TABLE `fp_product_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fp_product_type`
--
ALTER TABLE `fp_product_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fp_registration`
--
ALTER TABLE `fp_registration`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fp_registration_app`
--
ALTER TABLE `fp_registration_app`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fp_welcome_app`
--
ALTER TABLE `fp_welcome_app`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
