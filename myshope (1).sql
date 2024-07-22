-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 10:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshope`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_email`, `admin_password`, `admin_name`) VALUES
(0, 'herin', 'hh', ''),
(0, 'f', 'dd', 'herin ');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ip_add` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_ID` int(10) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_ID`, `cat_title`) VALUES
(1, 'Jewellery'),
(2, 'clothing'),
(3, 'Food'),
(31, 'Home decore items');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_state` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` int(10) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_ip` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_state`, `customer_city`, `customer_contact`, `customer_address`, `customer_ip`) VALUES
(27, 'user', 'HERINBHAT@GMAIL.COM', '1aabac6d068eef6a7bad3fdf50a05cc8', 'GUJARAT', 'Vadodara', 0, 'OPP-AMBE SCHOOL', 0),
(28, 'dimple', 'dimple@gmail.com', '23af498bbaddfc2589b3958edc7bded6', 'GUJARAT', 'Vadodara', 1234567890, 'crossing', 0),
(29, 'vajeda', 'vajeda01@gmail.com', 'be6c5347746fae91bd02a52a114ee14f', 'GUJARAT', 'bharuch', 2147483647, 'sama park', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `total_products` int(100) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `total_products`, `order_date`, `order_status`, `product_id`) VALUES
(10, 0, 300, 1439581194, 1, '2022-04-10 23:18:09', 'delivered', 80),
(11, 0, 1360, 416066401, 3, '2022-04-11 09:30:38', 'delivered', 92),
(12, 0, 1650, 576203823, 4, '2022-04-11 10:30:58', 'pending', 82),
(14, 0, 600, 682931008, 1, '2022-04-11 10:39:05', 'pending', 100),
(15, 0, 1350, 1865486432, 4, '2022-04-12 09:53:48', 'pending', 92),
(16, 0, 440, 876882368, 3, '2022-04-12 19:33:24', 'pending', 85),
(17, 0, 600, 668082235, 1, '2022-04-12 19:34:57', 'pending', 100);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_email` varchar(100) NOT NULL,
  `employee_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_email`, `employee_pass`) VALUES
(1, 'jayesh', 'jalpan', 'rr'),
(2, 'herin', '', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Table structure for table `emp_task`
--

CREATE TABLE `emp_task` (
  `indi_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `product-name` varchar(100) NOT NULL,
  `qty` int(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `customer_address` varchar(200) NOT NULL,
  `customerno` int(10) NOT NULL,
  `delivery_date` datetime NOT NULL,
  `status` text NOT NULL,
  `customer_ip` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_task`
--

INSERT INTO `emp_task` (`indi_id`, `customer_name`, `product-name`, `qty`, `amount`, `customer_address`, `customerno`, `delivery_date`, `status`, `customer_ip`, `pro_id`) VALUES
(6, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(7, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(8, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(9, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(10, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(11, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(12, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(13, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(14, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(15, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(16, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(17, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(18, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(19, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(20, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(21, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(22, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(23, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(24, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(25, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(26, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(27, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(28, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(29, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(30, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(31, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(32, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(33, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(34, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(35, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(36, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(37, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(38, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'pending', 0, 80),
(39, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 01:47:03', 'delivered', 0, 80),
(40, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:46:56', 'pending', 0, 80),
(41, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:46:56', 'pending', 0, 80),
(42, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:46:56', 'pending', 0, 80),
(43, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 80),
(44, 'user ', 'herin', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 80),
(45, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 92),
(46, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 92),
(47, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 14:55:01', 'pending', 0, 92),
(48, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 14:55:01', 'pending', 0, 92),
(49, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 92),
(50, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 92),
(51, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 14:55:01', 'pending', 0, 92),
(52, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 14:55:01', 'pending', 0, 92),
(53, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 92),
(54, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 92),
(55, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 14:55:01', 'pending', 0, 92),
(56, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 14:55:01', 'pending', 0, 92),
(57, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 92),
(58, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 92),
(59, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 14:55:01', 'pending', 0, 92),
(60, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 14:55:01', 'pending', 0, 92),
(61, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 92),
(62, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 92),
(63, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 14:55:01', 'pending', 0, 92),
(64, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 14:55:01', 'pending', 0, 92),
(65, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 92),
(66, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 92),
(67, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 14:55:01', 'pending', 0, 92),
(68, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 14:55:01', 'pending', 0, 92),
(69, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 92),
(70, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 92),
(71, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 14:55:01', 'pending', 0, 92),
(72, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 14:55:01', 'pending', 0, 92),
(73, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(74, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(75, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 14:55:01', 'delivered', 0, 92),
(76, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 14:55:01', 'delivered', 0, 92),
(77, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(78, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(79, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(80, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(81, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(82, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(83, 'vajeda ', 'jhumka set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'delivered', 0, 92),
(84, 'user ', 'hand made wollen wall hanging', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 82),
(85, 'dimple ', 'hand made wollen wall hanging', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 82),
(86, 'vajeda ', 'hand made wollen wall hanging', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 82),
(87, 'user ', 'kurts and plazzo set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 100),
(88, 'dimple ', 'kurts and plazzo set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 100),
(89, 'vajeda ', 'kurts and plazzo set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 100),
(90, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(91, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(92, 'vajeda ', 'jhumka set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'delivered', 0, 92),
(93, 'user ', 'hand made wollen wall hanging', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 82),
(94, 'dimple ', 'hand made wollen wall hanging', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 82),
(95, 'vajeda ', 'hand made wollen wall hanging', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 82),
(96, 'user ', 'kurts and plazzo set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 100),
(97, 'dimple ', 'kurts and plazzo set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 100),
(98, 'vajeda ', 'kurts and plazzo set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 100),
(99, 'user ', 'jhumka set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'delivered', 0, 92),
(100, 'dimple ', 'jhumka set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'delivered', 0, 92),
(101, 'vajeda ', 'jhumka set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'delivered', 0, 92),
(102, 'user ', 'hand made wollen wall hanging', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 82),
(103, 'dimple ', 'hand made wollen wall hanging', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 82),
(104, 'vajeda ', 'hand made wollen wall hanging', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 82),
(105, 'user ', 'kurts and plazzo set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 100),
(106, 'dimple ', 'kurts and plazzo set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 100),
(107, 'vajeda ', 'kurts and plazzo set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 100),
(108, 'user ', 'jhumka set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'delivered', 0, 92),
(109, 'dimple ', 'jhumka set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'delivered', 0, 92),
(110, 'vajeda ', 'jhumka set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'delivered', 0, 92),
(111, 'user ', 'hand made wollen wall hanging', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 82),
(112, 'dimple ', 'hand made wollen wall hanging', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 82),
(113, 'vajeda ', 'hand made wollen wall hanging', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 82),
(114, 'user ', 'kurts and plazzo set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 100),
(115, 'dimple ', 'kurts and plazzo set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 100),
(116, 'vajeda ', 'kurts and plazzo set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 100),
(117, 'user ', 'jhumka set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'delivered', 0, 92),
(118, 'dimple ', 'jhumka set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'delivered', 0, 92),
(119, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(120, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(121, 'vajeda ', 'jhumka set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'delivered', 0, 92),
(122, 'user ', 'hand made wollen wall hanging', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 82),
(123, 'dimple ', 'hand made wollen wall hanging', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 82),
(124, 'vajeda ', 'hand made wollen wall hanging', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 82),
(125, 'user ', 'kurts and plazzo set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 100),
(126, 'dimple ', 'kurts and plazzo set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 100),
(127, 'vajeda ', 'kurts and plazzo set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 100),
(128, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(129, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(130, 'vajeda ', 'jhumka set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'delivered', 0, 92),
(131, 'user ', 'hand made wollen wall hanging', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 82),
(132, 'dimple ', 'hand made wollen wall hanging', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 82),
(133, 'vajeda ', 'hand made wollen wall hanging', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 82),
(134, 'user ', 'kurts and plazzo set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 100),
(135, 'dimple ', 'kurts and plazzo set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 100),
(136, 'vajeda ', 'kurts and plazzo set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 100),
(137, 'user ', 'jhumka set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'delivered', 0, 92),
(138, 'dimple ', 'jhumka set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'delivered', 0, 92),
(139, 'vajeda ', 'jhumka set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'delivered', 0, 92),
(140, 'user ', 'hand made wollen wall hanging', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 82),
(141, 'dimple ', 'hand made wollen wall hanging', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 82),
(142, 'vajeda ', 'hand made wollen wall hanging', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 82),
(143, 'user ', 'kurts and plazzo set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 100),
(144, 'dimple ', 'kurts and plazzo set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 100),
(145, 'vajeda ', 'kurts and plazzo set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 100),
(146, 'user ', 'jhumka set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'delivered', 0, 92),
(147, 'dimple ', 'jhumka set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'delivered', 0, 92),
(148, 'vajeda ', 'jhumka set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'delivered', 0, 92),
(149, 'user ', 'hand made wollen wall hanging', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 82),
(150, 'dimple ', 'hand made wollen wall hanging', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 82),
(151, 'vajeda ', 'hand made wollen wall hanging', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 82),
(152, 'user ', 'kurts and plazzo set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 100),
(153, 'dimple ', 'kurts and plazzo set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 100),
(154, 'vajeda ', 'kurts and plazzo set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 100),
(155, 'user ', 'jhumka set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'delivered', 0, 92),
(156, 'dimple ', 'jhumka set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'delivered', 0, 92),
(157, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(158, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(159, 'vajeda ', 'jhumka set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'delivered', 0, 92),
(160, 'user ', 'hand made wollen wall hanging', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 82),
(161, 'dimple ', 'hand made wollen wall hanging', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 82),
(162, 'vajeda ', 'hand made wollen wall hanging', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 82),
(163, 'user ', 'kurts and plazzo set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 100),
(164, 'dimple ', 'kurts and plazzo set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 100),
(165, 'vajeda ', 'kurts and plazzo set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 100),
(166, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(167, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(168, 'vajeda ', 'jhumka set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'delivered', 0, 92),
(169, 'user ', 'hand made wollen wall hanging', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 82),
(170, 'dimple ', 'hand made wollen wall hanging', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 82),
(171, 'vajeda ', 'hand made wollen wall hanging', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 82),
(172, 'user ', 'kurts and plazzo set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 100),
(173, 'dimple ', 'kurts and plazzo set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 100),
(174, 'vajeda ', 'kurts and plazzo set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 100),
(175, 'user ', 'jhumka set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'delivered', 0, 92),
(176, 'dimple ', 'jhumka set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'delivered', 0, 92),
(177, 'vajeda ', 'jhumka set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'delivered', 0, 92),
(178, 'user ', 'hand made wollen wall hanging', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 82),
(179, 'dimple ', 'hand made wollen wall hanging', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 82),
(180, 'vajeda ', 'hand made wollen wall hanging', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 82),
(181, 'user ', 'kurts and plazzo set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 100),
(182, 'dimple ', 'kurts and plazzo set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 100),
(183, 'vajeda ', 'kurts and plazzo set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 100),
(184, 'user ', 'jhumka set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'delivered', 0, 92),
(185, 'dimple ', 'jhumka set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'delivered', 0, 92),
(186, 'vajeda ', 'jhumka set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'delivered', 0, 92),
(187, 'user ', 'hand made wollen wall hanging', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 82),
(188, 'dimple ', 'hand made wollen wall hanging', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 82),
(189, 'vajeda ', 'hand made wollen wall hanging', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 82),
(190, 'user ', 'kurts and plazzo set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 100),
(191, 'dimple ', 'kurts and plazzo set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 100),
(192, 'vajeda ', 'kurts and plazzo set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 100),
(193, 'user ', 'jhumka set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'delivered', 0, 92),
(194, 'dimple ', 'jhumka set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'delivered', 0, 92),
(195, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(196, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(197, 'vajeda ', 'jhumka set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'delivered', 0, 92),
(198, 'user ', 'hand made wollen wall hanging', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 82),
(199, 'dimple ', 'hand made wollen wall hanging', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 82),
(200, 'vajeda ', 'hand made wollen wall hanging', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 82),
(201, 'user ', 'kurts and plazzo set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 100),
(202, 'dimple ', 'kurts and plazzo set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 100),
(203, 'vajeda ', 'kurts and plazzo set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 100),
(204, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(205, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(206, 'vajeda ', 'jhumka set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'delivered', 0, 92),
(207, 'user ', 'hand made wollen wall hanging', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 82),
(208, 'dimple ', 'hand made wollen wall hanging', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 82),
(209, 'vajeda ', 'hand made wollen wall hanging', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 82),
(210, 'user ', 'kurts and plazzo set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 100),
(211, 'dimple ', 'kurts and plazzo set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 100),
(212, 'vajeda ', 'kurts and plazzo set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 100),
(213, 'user ', 'jhumka set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'delivered', 0, 92),
(214, 'dimple ', 'jhumka set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'delivered', 0, 92),
(215, 'vajeda ', 'jhumka set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'delivered', 0, 92),
(216, 'user ', 'hand made wollen wall hanging', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 82),
(217, 'dimple ', 'hand made wollen wall hanging', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 82),
(218, 'vajeda ', 'hand made wollen wall hanging', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 82),
(219, 'user ', 'kurts and plazzo set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 100),
(220, 'dimple ', 'kurts and plazzo set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 100),
(221, 'vajeda ', 'kurts and plazzo set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 100),
(222, 'user ', 'jhumka set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'delivered', 0, 92),
(223, 'dimple ', 'jhumka set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'delivered', 0, 92),
(224, 'vajeda ', 'jhumka set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'delivered', 0, 92),
(225, 'user ', 'hand made wollen wall hanging', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 82),
(226, 'dimple ', 'hand made wollen wall hanging', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 82),
(227, 'vajeda ', 'hand made wollen wall hanging', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 82),
(228, 'user ', 'kurts and plazzo set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 100),
(229, 'dimple ', 'kurts and plazzo set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 100),
(230, 'vajeda ', 'kurts and plazzo set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 100),
(231, 'user ', 'jhumka set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'delivered', 0, 92),
(232, 'dimple ', 'jhumka set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'delivered', 0, 92),
(233, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(234, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(235, 'vajeda ', 'jhumka set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'delivered', 0, 92),
(236, 'user ', 'hand made wollen wall hanging', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 82),
(237, 'dimple ', 'hand made wollen wall hanging', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 82),
(238, 'vajeda ', 'hand made wollen wall hanging', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 82),
(239, 'user ', 'kurts and plazzo set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 100),
(240, 'dimple ', 'kurts and plazzo set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 100),
(241, 'vajeda ', 'kurts and plazzo set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 100),
(242, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(243, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(244, 'vajeda ', 'jhumka set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'delivered', 0, 92),
(245, 'user ', 'hand made wollen wall hanging', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 82),
(246, 'dimple ', 'hand made wollen wall hanging', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 82),
(247, 'vajeda ', 'hand made wollen wall hanging', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 82),
(248, 'user ', 'kurts and plazzo set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 100),
(249, 'dimple ', 'kurts and plazzo set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 100),
(250, 'vajeda ', 'kurts and plazzo set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 100),
(251, 'user ', 'jhumka set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'delivered', 0, 92),
(252, 'dimple ', 'jhumka set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'delivered', 0, 92),
(253, 'vajeda ', 'jhumka set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'delivered', 0, 92),
(254, 'user ', 'hand made wollen wall hanging', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 82),
(255, 'dimple ', 'hand made wollen wall hanging', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 82),
(256, 'vajeda ', 'hand made wollen wall hanging', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 82),
(257, 'user ', 'kurts and plazzo set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 100),
(258, 'dimple ', 'kurts and plazzo set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 100),
(259, 'vajeda ', 'kurts and plazzo set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 100),
(260, 'user ', 'jhumka set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'delivered', 0, 92),
(261, 'dimple ', 'jhumka set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'delivered', 0, 92),
(262, 'vajeda ', 'jhumka set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'delivered', 0, 92),
(263, 'user ', 'hand made wollen wall hanging', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 82),
(264, 'dimple ', 'hand made wollen wall hanging', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 82),
(265, 'vajeda ', 'hand made wollen wall hanging', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 82),
(266, 'user ', 'kurts and plazzo set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 100),
(267, 'dimple ', 'kurts and plazzo set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 100),
(268, 'vajeda ', 'kurts and plazzo set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 100),
(269, 'user ', 'jhumka set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'delivered', 0, 92),
(270, 'dimple ', 'jhumka set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'delivered', 0, 92),
(271, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(272, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(273, 'vajeda ', 'jhumka set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'delivered', 0, 92),
(274, 'user ', 'hand made wollen wall hanging', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 82),
(275, 'dimple ', 'hand made wollen wall hanging', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 82),
(276, 'vajeda ', 'hand made wollen wall hanging', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 82),
(277, 'user ', 'kurts and plazzo set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 100),
(278, 'dimple ', 'kurts and plazzo set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 100),
(279, 'vajeda ', 'kurts and plazzo set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 100),
(280, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(281, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(282, 'vajeda ', 'jhumka set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'delivered', 0, 92),
(283, 'user ', 'hand made wollen wall hanging', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 82),
(284, 'dimple ', 'hand made wollen wall hanging', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 82),
(285, 'vajeda ', 'hand made wollen wall hanging', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 82),
(286, 'user ', 'kurts and plazzo set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 100),
(287, 'dimple ', 'kurts and plazzo set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 100),
(288, 'vajeda ', 'kurts and plazzo set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 100),
(289, 'user ', 'jhumka set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'delivered', 0, 92),
(290, 'dimple ', 'jhumka set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'delivered', 0, 92),
(291, 'vajeda ', 'jhumka set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'delivered', 0, 92),
(292, 'user ', 'hand made wollen wall hanging', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 82),
(293, 'dimple ', 'hand made wollen wall hanging', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 82),
(294, 'vajeda ', 'hand made wollen wall hanging', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 82),
(295, 'user ', 'kurts and plazzo set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 100),
(296, 'dimple ', 'kurts and plazzo set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 100),
(297, 'vajeda ', 'kurts and plazzo set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 100),
(298, 'user ', 'jhumka set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'delivered', 0, 92),
(299, 'dimple ', 'jhumka set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'delivered', 0, 92),
(300, 'vajeda ', 'jhumka set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'delivered', 0, 92),
(301, 'user ', 'hand made wollen wall hanging', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 82),
(302, 'dimple ', 'hand made wollen wall hanging', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 82),
(303, 'vajeda ', 'hand made wollen wall hanging', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 82),
(304, 'user ', 'kurts and plazzo set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 100),
(305, 'dimple ', 'kurts and plazzo set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 100),
(306, 'vajeda ', 'kurts and plazzo set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 100),
(307, 'user ', 'jhumka set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'delivered', 0, 92),
(308, 'dimple ', 'jhumka set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'delivered', 0, 92),
(309, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(310, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(311, 'vajeda ', 'jhumka set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'delivered', 0, 92),
(312, 'user ', 'hand made wollen wall hanging', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 82),
(313, 'dimple ', 'hand made wollen wall hanging', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 82),
(314, 'vajeda ', 'hand made wollen wall hanging', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 82),
(315, 'user ', 'kurts and plazzo set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 100),
(316, 'dimple ', 'kurts and plazzo set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 100),
(317, 'vajeda ', 'kurts and plazzo set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 100),
(318, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(319, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(320, 'vajeda ', 'jhumka set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'delivered', 0, 92),
(321, 'user ', 'hand made wollen wall hanging', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 82),
(322, 'dimple ', 'hand made wollen wall hanging', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 82),
(323, 'vajeda ', 'hand made wollen wall hanging', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 82),
(324, 'user ', 'kurts and plazzo set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 100),
(325, 'dimple ', 'kurts and plazzo set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 100),
(326, 'vajeda ', 'kurts and plazzo set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 100),
(327, 'user ', 'jhumka set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'delivered', 0, 92),
(328, 'dimple ', 'jhumka set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'delivered', 0, 92),
(329, 'vajeda ', 'jhumka set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'delivered', 0, 92),
(330, 'user ', 'hand made wollen wall hanging', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 82),
(331, 'dimple ', 'hand made wollen wall hanging', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 82),
(332, 'vajeda ', 'hand made wollen wall hanging', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 82),
(333, 'user ', 'kurts and plazzo set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 100),
(334, 'dimple ', 'kurts and plazzo set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 100),
(335, 'vajeda ', 'kurts and plazzo set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 100),
(336, 'user ', 'jhumka set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'delivered', 0, 92),
(337, 'dimple ', 'jhumka set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'delivered', 0, 92),
(338, 'vajeda ', 'jhumka set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'delivered', 0, 92),
(339, 'user ', 'hand made wollen wall hanging', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 82),
(340, 'dimple ', 'hand made wollen wall hanging', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 82),
(341, 'vajeda ', 'hand made wollen wall hanging', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 82),
(342, 'user ', 'kurts and plazzo set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 100),
(343, 'dimple ', 'kurts and plazzo set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 100),
(344, 'vajeda ', 'kurts and plazzo set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 100),
(345, 'user ', 'jhumka set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'delivered', 0, 92),
(346, 'dimple ', 'jhumka set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'delivered', 0, 92),
(347, 'vajeda ', 'jhumka set', 1, 600, 'sama park', 2147483647, '2022-04-13 16:09:05', 'delivered', 0, 92),
(348, 'user ', 'hand made wollen wall hanging', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'pending', 0, 82),
(349, 'dimple ', 'hand made wollen wall hanging', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'pending', 0, 82),
(350, 'vajeda ', 'hand made wollen wall hanging', 1, 600, 'sama park', 2147483647, '2022-04-13 16:09:05', 'pending', 0, 82),
(351, 'user ', 'kurts and plazzo set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'pending', 0, 100),
(352, 'dimple ', 'kurts and plazzo set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'pending', 0, 100),
(353, 'vajeda ', 'kurts and plazzo set', 1, 600, 'sama park', 2147483647, '2022-04-13 16:09:05', 'pending', 0, 100),
(354, 'user ', 'jhumka set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'delivered', 0, 92),
(355, 'dimple ', 'jhumka set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'delivered', 0, 92),
(356, 'vajeda ', 'jhumka set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'delivered', 0, 92),
(357, 'user ', 'hand made wollen wall hanging', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 82),
(358, 'dimple ', 'hand made wollen wall hanging', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 82),
(359, 'vajeda ', 'hand made wollen wall hanging', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 82),
(360, 'user ', 'kurts and plazzo set', 1, 300, 'OPP-AMBE SCHOOL', 0, '2022-04-13 04:48:09', 'pending', 0, 100),
(361, 'dimple ', 'kurts and plazzo set', 1, 300, 'crossing', 1234567890, '2022-04-13 04:48:09', 'pending', 0, 100),
(362, 'vajeda ', 'kurts and plazzo set', 1, 300, 'sama park', 2147483647, '2022-04-13 04:48:09', 'pending', 0, 100),
(363, 'user ', 'jhumka set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'delivered', 0, 92),
(364, 'dimple ', 'jhumka set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'delivered', 0, 92),
(365, 'vajeda ', 'jhumka set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'delivered', 0, 92),
(366, 'user ', 'hand made wollen wall hanging', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 82),
(367, 'dimple ', 'hand made wollen wall hanging', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 82),
(368, 'vajeda ', 'hand made wollen wall hanging', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 82),
(369, 'user ', 'kurts and plazzo set', 1, 1360, 'OPP-AMBE SCHOOL', 0, '2022-04-13 15:00:38', 'pending', 0, 100),
(370, 'dimple ', 'kurts and plazzo set', 1, 1360, 'crossing', 1234567890, '2022-04-13 15:00:38', 'pending', 0, 100),
(371, 'vajeda ', 'kurts and plazzo set', 1, 1360, 'sama park', 2147483647, '2022-04-13 15:00:38', 'pending', 0, 100),
(372, 'user ', 'jhumka set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'delivered', 0, 92),
(373, 'dimple ', 'jhumka set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'delivered', 0, 92),
(374, 'vajeda ', 'jhumka set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'delivered', 0, 92),
(375, 'user ', 'hand made wollen wall hanging', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 82),
(376, 'dimple ', 'hand made wollen wall hanging', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 82),
(377, 'vajeda ', 'hand made wollen wall hanging', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 82),
(378, 'user ', 'kurts and plazzo set', 1, 1650, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:00:58', 'pending', 0, 100),
(379, 'dimple ', 'kurts and plazzo set', 1, 1650, 'crossing', 1234567890, '2022-04-13 16:00:58', 'pending', 0, 100),
(380, 'vajeda ', 'kurts and plazzo set', 1, 1650, 'sama park', 2147483647, '2022-04-13 16:00:58', 'pending', 0, 100),
(381, 'user ', 'jhumka set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'delivered', 0, 92),
(382, 'dimple ', 'jhumka set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'delivered', 0, 92),
(383, 'vajeda ', 'jhumka set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'delivered', 0, 92),
(384, 'user ', 'hand made wollen wall hanging', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 82),
(385, 'dimple ', 'hand made wollen wall hanging', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 82),
(386, 'vajeda ', 'hand made wollen wall hanging', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 82),
(387, 'user ', 'kurts and plazzo set', 1, 0, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:02:35', 'pending', 0, 100),
(388, 'dimple ', 'kurts and plazzo set', 1, 0, 'crossing', 1234567890, '2022-04-13 16:02:35', 'pending', 0, 100),
(389, 'vajeda ', 'kurts and plazzo set', 1, 0, 'sama park', 2147483647, '2022-04-13 16:02:35', 'pending', 0, 100),
(390, 'user ', 'jhumka set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'delivered', 0, 92),
(391, 'dimple ', 'jhumka set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'delivered', 0, 92),
(392, 'vajeda ', 'jhumka set', 1, 600, 'sama park', 2147483647, '2022-04-13 16:09:05', 'delivered', 0, 92),
(393, 'user ', 'hand made wollen wall hanging', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'pending', 0, 82),
(394, 'dimple ', 'hand made wollen wall hanging', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'pending', 0, 82),
(395, 'vajeda ', 'hand made wollen wall hanging', 1, 600, 'sama park', 2147483647, '2022-04-13 16:09:05', 'pending', 0, 82),
(396, 'user ', 'kurts and plazzo set', 1, 600, 'OPP-AMBE SCHOOL', 0, '2022-04-13 16:09:05', 'pending', 0, 100),
(397, 'dimple ', 'kurts and plazzo set', 1, 600, 'crossing', 1234567890, '2022-04-13 16:09:05', 'pending', 0, 100),
(398, 'vajeda ', 'kurts and plazzo set', 1, 600, 'sama park', 2147483647, '2022-04-13 16:09:05', 'pending', 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(100) NOT NULL,
  `order_status` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`customer_id`, `invoice_no`, `product_id`, `qty`, `order_status`, `order_id`) VALUES
(0, 416066401, 92, 1, 'delivered', 11),
(0, 576203823, 82, 1, 'pending', 12),
(0, 1532764757, 0, 1, 'pending', 13),
(0, 682931008, 100, 1, 'pending', 14),
(0, 1865486432, 92, 1, 'pending', 15),
(0, 876882368, 85, 1, 'pending', 16),
(0, 668082235, 100, 1, 'pending', 17);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_ID` int(10) NOT NULL,
  `cat_ID` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_status` text NOT NULL,
  `keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_ID`, `cat_ID`, `date`, `product_title`, `product_img1`, `product_price`, `product_desc`, `product_status`, `keyword`) VALUES
(82, 31, '2022-04-11 03:42:36', 'hand made wollen wall hanging', '41vXNsI+mjL._SY450_.jpg', 200, 'Size : 12x08 inches\r\nIs Framed : Unframed\r\ncolor : Black\r\nMaterial Type : Canvas', '  on', 'handmade ,item, craft, wall hanging '),
(83, 1, '2022-04-11 03:51:18', 'neklace', '71VtcgyBpZL._UY500_.jpg', 150, 'fashion jewellary women neckless artificial neckless set for ladies handmade black pear necklace for women/girlws gold-plated plated alloy,metal neckless and matching earing', '  on', 'neckless set, neckless '),
(85, 2, '2022-04-11 04:01:08', 'kurti', '161-1614745_women-s-cotton-kurti-day-dress-hd-png.png', 350, 'color: red\r\npattern:embroidery\r\ntype:straight\r\nfabric:rayon\r\n', '  on', 'kurti ,embroidery kurti,rayon kurti  '),
(86, 31, '2022-04-11 04:06:33', 'paper wall hanging', 'IMG-20220410-WA0000.jpg', 200, 'handmade paper wall hanging item\r\ncolor: green ,pink,orange', '  on', 'wall hanging item , handmade, paper craft '),
(87, 3, '2022-04-11 04:10:11', 'chakli', 'IMG-20220410-WA0002.jpg', 60, 'ready to eat chakli\r\n60/500g\r\ngram flour chakli\r\n', '  on', 'food  item, chakli, chakri '),
(89, 2, '2022-04-11 04:22:10', 'tshirt for men', 'IMG-20220410-WA0012.jpg', 250, 'color:black\r\nneck type: round neck\r\nfit: regular fit\r\nmaterial: coton', '  on', 'tshirt, tshirt for mens '),
(90, 2, '2022-04-11 04:25:37', 'kurti', 'IMG-20220410-WA0013.jpg', 400, 'color: pink\r\nmaterial:coton\r\ncare instruction: machine wash\r\nlength: ankle length\r\nstyle: straight', '  on', 'kurti, ankle length, pink kurti '),
(92, 1, '2022-04-11 04:30:09', 'jhumka set', 'IMG-20220410-WA0011.jpg', 500, 'base material: german silver\r\nplating: silver\r\ncolor: silver\r\nocassion: religious ,work-wear, everyday wear, wedding, engagement', '  on', 'jhumka , earing, jhumka set, silver earing '),
(93, 3, '2022-04-11 04:32:13', 'bhakarwadi', 'IMG-20220410-WA0010.jpg', 290, '290/ 400g\r\nmarwari taste\r\nhandmade for bikaner\r\npure ingredients\r\ntea snack party', '  on', 'bhakarwadi, team time snack,  '),
(95, 3, '2022-04-11 05:04:44', 'papad', 'IMG-20220410-WA0009.jpg', 80, '80/kg\r\nrice papad\r\n', '  on', 'papad, fryums '),
(96, 3, '2022-04-11 05:07:46', 'garlic sev', 'IMG-20220410-WA0008.jpg', 55, '55/180g \r\ngarlic sev\r\ntea time snack\r\npure indegrients\r\n', '  on', 'sev, tea time snack '),
(97, 1, '2022-04-11 05:37:22', 'earing', '6c3a7636-cd08-4b83-bd5b-99a223eeb9f1.jpg', 30, 'color: gray\r\nbase material: metal\r\nocassion: workwear, everydaywear,wedding, engagement', '  on', 'earing, jhumka '),
(98, 1, '2022-04-11 05:40:29', 'jhumka', '762faab4-e23a-45b1-9bc7-c0184058f98d.jpg', 250, 'base material:silver oxidized\r\nplating: silver\r\ncolour: blue and silver\r\nocaassions: religious, wedding, engagement', '  on', 'jhumka, earing '),
(99, 2, '2022-04-11 05:43:14', 'pant for women', 'b5ec7c79-0b2c-44e6-bf83-b838f5d60283.jpg', 400, 'color: baby pink\r\nrise: high rise\r\nfit: regular fit\r\n', '  on', 'pant, jeans '),
(100, 2, '2022-04-11 05:45:42', 'kurts and plazzo set', 'e85b5626-3253-4caa-ab5d-909944970fa0.jpg', 600, 'color: pink\r\ntype:kurti and plazzo set\r\nfabric: cotton\r\npattern: printed', '  on', 'kurti plazzo set, kurti, plazzo '),
(101, 31, '2022-04-11 05:52:49', 'wooden wall clock', 'd4426a04-22f0-46ee-9ebf-f9a3afa75ebe.jpg', 350, 'colour: brown\r\nframe material: wooden\r\nsize:28*28\r\nclock type:analog\r\nmechanism:quartz ', '  on', 'wall clock, home decore item, clock '),
(102, 2, '2022-04-11 05:55:03', 'tshirt for women', '3c2a89a0-80f8-4219-b09c-80b64d64a904.jpg', 200, 'colour: white\r\ntype: regularfit\r\nneck type: round neck\r\npattern: plain tshirt', '  on', 'white tshirt, womens tshirt.,  '),
(103, 3, '2022-04-11 05:56:43', 'potato chips', '4f1dda2b-d293-4769-844b-010249e48136.jpg', 50, '50/500g\r\npotato chips\r\ntea time snack\r\n', '  on', 'chips, snacks '),
(104, 1, '2022-04-11 06:05:42', 'jhumka', 'c132efcb-adff-459c-9779-7801db2eaaa2.jpg', 60, 'color: grey\r\nmaterial:silk tread tassel earing\r\ntype:earing set', '  on', 'jhumka, earing ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `emp_task`
--
ALTER TABLE `emp_task`
  ADD PRIMARY KEY (`indi_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emp_task`
--
ALTER TABLE `emp_task`
  MODIFY `indi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
