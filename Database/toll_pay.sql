-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2017 at 07:03 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toll_pay`
--

-- --------------------------------------------------------

--
-- Table structure for table `tolls`
--

CREATE TABLE `tolls` (
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `one_way` int(5) NOT NULL,
  `round_trip` int(5) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tolls`
--

INSERT INTO `tolls` (`start`, `end`, `one_way`, `round_trip`, `type`) VALUES
('CST', 'Pune', 230, 345, 'car'),
('CST', 'Pune', 1168, 1752, '3-axle'),
('CST', 'Pune', 1555, 2333, '4-6-axle'),
('CST', 'Pune', 1750, 2625, '7+axle'),
('CST', 'Nag', 452, 839, 'car'),
('CST', 'Nag', 2422, 8488, '3-axle'),
('CST', 'Nag', 2275, 2857, '4-6-axle'),
('CST', 'Nag', 2380, 3022, '7+axle'),
('CST', 'Nas', 229, 443, 'car'),
('CST', 'Nas', 1330, 2550, '3-axle'),
('CST', 'Nas', 1330, 2550, '4-6-axle'),
('CST', 'Nas', 1330, 2550, '7+axle'),
('CST', 'Awb', 229, 443, 'car'),
('CST', 'Awb', 1330, 2550, '3-axle'),
('CST', 'Awb', 1330, 2550, '4-6-axle'),
('CST', 'Awb', 1330, 2550, '7+axle'),
('Pune', 'CST', 230, 345, 'car'),
('Pune', 'CST', 1168, 1752, '3-axle'),
('Pune', 'CST', 1555, 2333, '4-6-axle'),
('Pune', 'CST', 1752, 2625, '7+axle'),
('Pune', 'Nag', 180, 270, 'car'),
('Pune', 'Nag', 945, 1417, '3-axle'),
('Pune', 'Nag', 945, 1417, '4-6-axle'),
('Pune', 'Nag', 1050, 1582, '7+axle'),
('Pune', 'Nas', 50, 74, 'car'),
('Pune', 'Nas', 364, 546, '3-axle'),
('Pune', 'Nak', 364, 546, '4-6-axle'),
('Pune', 'Nak', 364, 546, '7+axle'),
('Pune', 'Awb', 180, 270, 'car'),
('Pune', 'Awb', 945, 1111, '3-axle'),
('Pune', 'Awb', 945, 1111, '4-6-axle'),
('Pune', 'Awb', 1050, 1582, '7+axle');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pincode` int(6) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `license_no` varchar(20) DEFAULT NULL,
  `user_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_name`, `password`, `address`, `pincode`, `state`, `city`, `contact`, `email`, `type`, `license_no`, `user_img`) VALUES
('abcdefgh', 'abcdefgh', 'null', 400789, 'goa', 'goa', 1234567890, 'inamdar@gmail.com', 'user', 'ag1472589630', 'uploads/Z.jpg'),
('abidinamdar', '123456789', 'dxgfdhjfgj', 15421, 'hfdhngf', 'gfhdszg', 123456987, 'amangupta@gmail.com', 'user', 'ms14785236901', 'uploads/back.jpg'),
('amangupta', 'amangupta', 'dsygdfjnfg', 144701, 'goa', 'mumbai', 1478523690, 'aman@gmail.com', 'user', 'df47896325410', ''),
('arvindou', 'arvindou', 'asfdhauklfdg', 400088, 'Goa', 'Panaji', 147952830, 'Arvindo@gmail.com', 'user', 'ms12547896301', ''),
('qwertyui', 'qwertyui', 'fhfdhgh', 400071, 'gcjnhj', 'fdjhfk', 212453698, 'abc@gmail.com', 'user', 'as12457896325', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_journey`
--

CREATE TABLE `user_journey` (
  `date1` varchar(20) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `route` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `way` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_journey`
--

INSERT INTO `user_journey` (`date1`, `source`, `destination`, `route`, `amount`, `way`, `type`) VALUES
('04/22/2017', 'CST', 'Nag', 'Highway 48', 300, 'one_way', 'car'),
('', 'CST', 'Nas', 'Highway 50', 300, 'round_trip', ''),
('04/29/2017', 'CST', 'Pune', 'Highway 48', 300, 'one_way', 'car'),
('04/28/2017', 'CST', 'Pune', 'Highway 48', 300, 'one_way', 'car'),
('04/27/2017', 'CST', 'Pune', 'Highway 50', 300, 'round_trip', ''),
('', 'CST', 'Awb', 'Highway 50', 300, 'round_trip', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE `vehicle_details` (
  `license_no` varchar(13) NOT NULL,
  `plate_no` varchar(10) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_details`
--

INSERT INTO `vehicle_details` (`license_no`, `plate_no`, `vehicle_type`, `state`) VALUES
('ag1472589630', 'mh14sw1478', 'Car', 'maharashtra'),
('as12457896325', 'MH02SD7894', 'Car', 'maharashtra'),
('ms12547896301', 'mh14cd7485', 'Car', 'maharashtra'),
('ms14785236901', 'mh02cd1478', 'Car', 'maharashtra'),
('xcfhbcfgn', 'fchdf', 'Car', 'maharashtra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_name`),
  ADD UNIQUE KEY `contact` (`contact`,`email`);

--
-- Indexes for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  ADD PRIMARY KEY (`license_no`),
  ADD UNIQUE KEY `plate_no` (`plate_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
