-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2016 at 02:09 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busmanagment`
--

-- --------------------------------------------------------

--
-- Table structure for table `businfo`
--

CREATE TABLE `businfo` (
  `seatavailability` varchar(10) NOT NULL,
  `routesno` varchar(15) NOT NULL,
  `supervisorname` varchar(30) NOT NULL,
  `supervisorphone` varchar(11) NOT NULL,
  `busno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `routesno` varchar(15) NOT NULL,
  `journeyfrom` varchar(1) NOT NULL,
  `journeyto` varchar(18) NOT NULL,
  `distance` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seatplan`
--

CREATE TABLE `seatplan` (
  `seat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seatplan`
--

INSERT INTO `seatplan` (`seat`) VALUES
('A1'),
('A'),
(''),
(''),
(''),
('');

-- --------------------------------------------------------

--
-- Table structure for table `ticketdetails`
--

CREATE TABLE `ticketdetails` (
  `sl` int(20) DEFAULT NULL,
  `journeyfrom` varchar(30) NOT NULL,
  `journeyto` varchar(30) NOT NULL,
  `price` int(25) NOT NULL,
  `ticketno` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  `starttime` varchar(6) NOT NULL,
  `busno` varchar(15) NOT NULL,
  `seat` varchar(15) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketdetails`
--

INSERT INTO `ticketdetails` (`sl`, `journeyfrom`, `journeyto`, `price`, `ticketno`, `name`, `phone`, `starttime`, `busno`, `seat`, `date`) VALUES
(NULL, 'Chittagong', 'Dhaka	', 300, '036', 'Alex', 17555555, '10.30', '2036', 'A1, A2', '2016-12-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businfo`
--
ALTER TABLE `businfo`
  ADD PRIMARY KEY (`busno`);

--
-- Indexes for table `ticketdetails`
--
ALTER TABLE `ticketdetails`
  ADD PRIMARY KEY (`busno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
