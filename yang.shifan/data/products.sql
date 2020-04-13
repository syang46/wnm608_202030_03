-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2020 at 09:36 PM
-- Server version: 5.6.46-cll-lve
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
-- Database: `aau_wnm608_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(13) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_modify` datetime NOT NULL,
  `title` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `images` varchar(256) NOT NULL,
  `thumbnail` varchar(128) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `date_create`, `date_modify`, `title`, `category`, `images`, `thumbnail`, `price`, `description`, `quantity`) VALUES
(1, '2020-04-12 21:21:39', '2020-04-12 21:21:39', 'Summer', 'Flower', 'summer.jpg', 'flower_summer_m.jpg', '39.00', 'Include  balloon flower, daisy, eucalyptus.', 10),
(2, '2020-04-12 21:23:17', '2020-04-12 21:23:17', 'Sunshine', 'Flower', 'Sunshine.jpg', 'flower_sunshine_m.jpg', '32.00', 'Include  sunflower daisy, eucalyptus, tulip.', 10),
(3, '2020-04-12 21:25:03', '2020-04-12 21:25:03', 'Memory', 'Flower', 'memory.jpg', 'flower_memory_m.jpg', '39.00', 'Include  rose, eucalyptus, tulip.', 10),
(4, '2020-04-12 21:25:52', '2020-04-12 21:25:52', 'Only', 'Flower', 'only.jpg', 'flower_only_m.jpg', '39.00', 'Include red rose.', 10),
(5, '2020-04-12 21:26:39', '2020-04-12 21:26:39', 'Peony', 'Flower', 'peony.jpg', 'flower_peony_m.jpg', '30.00', 'Include peony.', 10),
(6, '2020-04-12 21:28:20', '2020-04-12 21:28:20', 'Daisy', 'Flower', 'daisy.jpg', 'flower_daisy_m.jpg', '20.00', 'Include Daisy', 10),
(7, '2020-04-12 21:29:04', '2020-04-12 21:29:04', 'Tulip', 'Flower', 'tulip.jpg', 'flower_tulip_m.jpg', '28.00', 'Include tulip, eucalyptus.', 10),
(8, '2020-04-12 21:29:47', '2020-04-12 21:29:47', 'Carnation', 'Flower', 'carnation.jpg', 'flower_carnatio_m.jpg', '20.00', 'Include carnation.', 10),
(9, '2020-04-12 21:30:38', '2020-04-12 21:30:38', 'Balloon', 'Flower', 'Balloon.jpg', 'flower_Balloon.jpg', '26.00', 'Include balloon, eucalyptus.', 10),
(10, '2020-04-12 21:31:29', '2020-04-12 21:31:29', 'Hydrangea', 'Flower', 'Hydrangea.jpg', 'flower_Hydrangea_m.jpg', '28.00', 'Include hydrangea.', 10),
(11, '2020-04-12 21:32:09', '2020-04-12 21:32:09', 'Rose', 'Flower', 'rose.jpg', 'flower_rose_m.jpg', '36.00', 'Include pink rose.', 10),
(12, '2020-04-12 21:32:53', '2020-04-12 21:32:53', 'Coreopsis', 'Flower', 'Coreopsis.jpg', 'flower_Coreopsis_m.jpg', '20.00', 'Include Coreopsis.', 10),
(13, '2020-04-12 21:33:37', '2020-04-12 21:33:37', 'Star', 'Flower', 'star.jpg', 'flower_star_m.jpg', '20.00', 'Include star.', 10),
(14, '2020-04-12 21:34:15', '2020-04-12 21:34:15', 'Oriole', 'Flower', 'Oriole.jpg', 'flower_Oriole_m.jpg', '20.00', 'Include oriole.', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
