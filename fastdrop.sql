-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 12:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastdrop`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `source_location` varchar(255) NOT NULL,
  `destination_location` varchar(255) NOT NULL,
  `order_details` text DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `source_lat` double NOT NULL,
  `source_lng` double NOT NULL,
  `destination_lat` double NOT NULL,
  `destination_lng` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `source_location`, `destination_location`, `order_details`, `phone_number`, `source_lat`, `source_lng`, `destination_lat`, `destination_lng`, `created_at`) VALUES
(1, 'Hadi Rida', 'beirut', 'south', NULL, '76 043 244', 0, 0, 0, 0, '2024-07-30 22:26:14'),
(2, 'Hadi Rida', 'Beirut', 'South Lebanon', NULL, '76 043 244', 33.8886, 35.4955, 33.5633, 35.3619, '2024-07-30 22:28:49'),
(3, 'Hadi Rida', 'Beirut', 'South Lebanon', NULL, '76 043 244', 33.8886, 35.4955, 33.5633, 35.3619, '2024-07-30 22:28:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
