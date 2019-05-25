-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2019 at 07:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `bank_code` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_code`, `bank_name`, `created_at`, `updated_at`) VALUES
(2, '423', 'SANPATH', '2019-04-30 10:47:31', '2019-04-30 10:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(6) UNSIGNED NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` int(11) NOT NULL,
  `buyer_code` varchar(255) NOT NULL,
  `buyer_first_name` varchar(255) DEFAULT NULL,
  `buyer_last_name` varchar(255) DEFAULT NULL,
  `buyer_password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `buyer_code`, `buyer_first_name`, `buyer_last_name`, `buyer_password`, `created_at`, `updated_at`, `buyer_email`) VALUES
(142, 'B501', '', '', '112', '2019-05-23 17:13:35', '2019-05-23 17:13:35', ''),
(146, 'B999', 'Videsssdwdushan', 'ssssManamperi', '112111', '2019-05-23 17:40:55', '2019-05-23 17:40:55', 'hjvcshjbj'),
(157, 'B010', 'Kamannl', 'Mnamperinn', 'kabbbmal321', '2019-05-23 18:19:54', '2019-05-23 18:19:54', 'kamannnl123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(162);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_buyer_id` int(11) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `order_description` varchar(255) NOT NULL,
  `order_payment_id` int(11) DEFAULT NULL,
  `order_seller_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `order_buyer_id`, `order_code`, `order_description`, `order_payment_id`, `order_seller_id`, `updated_at`) VALUES
(97, '2019-05-23 14:36:46', 2, 'O001', '79.00', 3, 6, '2019-05-23 14:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `payment_amount` double DEFAULT NULL,
  `payment_buyer_id` int(11) NOT NULL,
  `payment_code` varchar(255) NOT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `created_at`, `payment_amount`, `payment_buyer_id`, `payment_code`, `payment_date`, `updated_at`) VALUES
(158, '2019-05-23 18:25:52', 5550, 5, 'S119', '2018-03-06', '2019-05-23 18:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `product_seller_id` int(11) NOT NULL,
  `product_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `product_category`, `product_code`, `product_description`, `product_image`, `product_name`, `updated_at`, `product_seller_id`, `product_price`) VALUES
(8, '2019-05-04 10:44:56', 'mobile phone', 'P010', 'almost brandnew phone .. used only month', '', 'samsung phone', '2019-05-04 10:44:56', 0, '30'),
(9, '2019-05-04 11:00:07', 'Electronics', 'P011', '55 inch 4K SONY LED tv for sale', '', ' television', '2019-05-04 11:00:07', 0, '200'),
(13, '2019-05-04 16:56:36', 'Computers', 'P013', 'HP core i7 250GB HDD, 16GB RAM', '', ' Computer', '2019-05-04 16:56:36', 4, '5000'),
(22, '2019-05-04 17:28:11', 'Laptop', 'P043', 'toshiba laptop. almost brand new.', '', ' Lapto for sale', '2019-05-04 17:28:11', 8, '54000'),
(24, '2019-05-04 17:28:42', 'Laptop', 'P231', 'toshiba laptop. almost brand new.', '', ' Lapto for sale', '2019-05-04 17:28:42', 8, '70000'),
(25, '2019-05-05 22:33:17', 'Electronics', 'fdsfsd', 'kjnjknkjnk', 'bkjbkjb', 'bkjbk', '2019-05-05 22:33:17', 2, '32000'),
(161, '2019-05-23 18:39:46', 'Ladfdsfp', 'P100', 'fdfsfds.', '', ' Lsfshfs', '2019-05-23 18:39:46', 9, '54fdsds');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `seller_city` varchar(255) DEFAULT NULL,
  `seller_code` varchar(255) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `seller_email` varchar(255) DEFAULT NULL,
  `seller_password` varchar(255) DEFAULT NULL,
  `seller_phone` varchar(255) NOT NULL,
  `seller_product_id` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `created_at`, `seller_city`, `seller_code`, `seller_name`, `seller_email`, `seller_password`, `seller_phone`, `seller_product_id`, `updated_at`) VALUES
(85, '2019-05-14 12:48:35', 'Battaramulla', 'S001', 'Softlogic', 'softlogiccare@gmail.com', '1234', '0715458745', '4', '2019-05-14 12:48:35'),
(86, '2019-05-14 12:49:39', 'Anuradhapura', 'S003', 'Singer Mega', 'singerlife@gmail.com', 'singer123', '0112458745', '46', '2019-05-14 12:49:39'),
(153, '2019-05-23 17:54:26', 'ssAnuradhapura', 'S11003', 'ssSinger Mega', 'si2ngerlife@gmail.com', 's22inger123', '220112458745', '462', '2019-05-23 17:54:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_nm6m58jlhabcc5vo5i14kq90n` (`bank_code`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_tj1v58hsjq1lh53lmpjdib5nr` (`buyer_code`),
  ADD UNIQUE KEY `UK_6cn8itr1t0euwnl3t6ubrd7gr` (`buyer_password`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_dhk2umg8ijjkg4njg6891trit` (`order_code`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_922x4t23nx64422orei4meb2y` (`product_code`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_avtca4n4ftwae4m1jnfpu0bpm` (`seller_email`),
  ADD UNIQUE KEY `UK_o02trghco029thi08d8f1y1vo` (`seller_code`),
  ADD UNIQUE KEY `UK_5wcthcd9ugf0t0sjyll5nuhrx` (`seller_password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
