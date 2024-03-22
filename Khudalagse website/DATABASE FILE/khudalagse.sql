-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 05:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `khudalagse`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_admin`
--
CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
--
-- Dumping data for table `tbl_admin`
--
INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(20, 'Md Ishtiak Hosain Khan', 'Ishtiak', 'c20ad4d76fe97759aa27a0c99bff6710'),
(21, 'Duroy Gain', 'Durjoy', 'c20ad4d76fe97759aa27a0c99bff6710'),
(22, 'Walid Been Shahid', 'Yeamin', 'c20ad4d76fe97759aa27a0c99bff6710'),
(23, 'Fariya Hossain', 'Fariya', 'c20ad4d76fe97759aa27a0c99bff6710'),
(24, 'Anika Fareen', 'Sara', 'c20ad4d76fe97759aa27a0c99bff6710'),
(25, 'Hasibul Islam Niloy', 'Niloy', 'c20ad4d76fe97759aa27a0c99bff6710');
-- --------------------------------------------------------
--
-- Table structure for table `tbl_category`
--
CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
--
-- Dumping data for table `tbl_category`
--
INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizzaaa', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(9, 'Wraps', 'Food_Category_374.jpg', 'Yes', 'Yes'),
(10, 'Pasta', 'Food_Category_948.jpg', 'Yes', 'Yes'),
(11, 'Sandwich', 'Food_Category_536.jpg', 'Yes', 'Yes'),
(15, 'Kacchi', 'Food_Category_59.jpg', 'Yes', 'Yes');
-- --------------------------------------------------------
--
-- Table structure for table `tbl_food`
--
CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
--
-- Dumping data for table `tbl_food`
--
INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Ham Burger', 'Burger with Ham, Pineapple and lots of Cheese.', 80.00, 'Food-Name-6340.jpg', 5, 'Yes', 'Yes'),
(10, 'Cheese Burger', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty.', 120.00, 'Food-Name-433.jpeg', 5, 'Yes', 'Yes'),
(25, 'BBQ Pizza', 'toppings, chesse, chilly', 150.00, 'Food-Name-7351.jpg', 4, 'Yes', 'Yes'),
(26, 'Mutton Kacchi', 'Yummy Tasty', 220.00, 'Food-Name-5843.jpg', 15, 'Yes', 'Yes');
-- --------------------------------------------------------
--
-- Table structure for table `tbl_order`
--
CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
--
-- Dumping data for table `tbl_order`
--
INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(17, 'BBQ Pizza', 150.00, 1, 150.00, '2024-02-27 07:28:52', 'Delivered', 'hfgh', 'tyui', 'fghjfg@gmail.com', 'ghj'),
(18, 'Ham Burger', 80.00, 1, 80.00, '2024-02-27 07:54:02', 'Ordered', 'gjhf', '543', 'abdullahhasan413@gmail.com', 'fgh'),
(20, 'Kacchi', 220.00, 2, 440.00, '2024-02-28 03:11:34', 'Delivered', 'gjhf', '543', 'abdullahhasan413@gmail.com', 'tyre');
--
-- Indexes for dumped tables
--
--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;