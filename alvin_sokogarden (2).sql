-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 12:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alvin_sokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(25) NOT NULL,
  `product_category` varchar(20) NOT NULL,
  `product_image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_category`, `product_image`) VALUES
(1, 'Oppo F11', '16 gb ram 128 gb storage black color android 12', 20000, 'electronics', 'oppof11.jpg'),
(2, 'redmi note 14', '12 gb ram 128 gb storage black color android 14', 35000, 'electronics', 'redmi note 14.jpeg'),
(3, 'Oraimo bluetooth space buds', 'black color  noise reduction cancellation ', 2000, 'electronics', 'oraimo.jpeg'),
(7, 'Iphone 15 pro', 'blue color 64 gb storage 6 gb ram  ', 54000, 'electronics', 'iphone.jpg'),
(8, 'HP omen 16', 'core 17 32 GB RAM 1TB SSD', 244000, 'electronics', 'hp macbook.jpeg'),
(9, 'nike airmax', 'white pure leather size 42', 2500, 'footwear', 'nike airmax.jpeg'),
(10, 'xiaomi 17 pro', 'white color 128 GB storage 12gb  ram', 30000, 'electronics', 'xiaomi 17 pro.avif'),
(11, 'Lexus lx 600', '3000cc diesel engine 4 wheel drive black color', 3000000, 'cars', 'lexus.jpeg'),
(12, 'Mark x', '2000cc diesel engine 2015 model after custom body paint', 2700000, 'cars', 'mark x.jpeg'),
(13, 'BMW M3 competition ', '2018  model paddle shifterrs 2000cc diesel engine', 4700000, 'cars', 'bmw.jpeg'),
(14, 'LG Screen TV', '55\" inch super screen Hd vision ', 47000, 'electrtonics', 'tv1.jpeg'),
(15, 'Sweatpant', 'Wide leg red color sweatpant unisex', 700, 'clothing', 'sweatpant.jpg'),
(16, 'liverpool jersey', 'Home adidas 2026 cotton jersey', 1000, 'clothing', 'jersey.jpeg'),
(17, 'selfie stick', 'DJI osmo mobile 6 smartphone', 6000, 'electronics', 'selfie stick.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `password`) VALUES
(1, 'Alvin', 'alvinnjiru@gmail.com', '0712345678', 'qwerty123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
