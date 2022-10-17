-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2022 at 08:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenixair`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`id`, `email`, `password`) VALUES
(1, 'chathura123@gmail.com', 'chathura123');

-- --------------------------------------------------------

--
-- Table structure for table `bookingtwo`
--

CREATE TABLE `bookingtwo` (
  `id` int(11) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `flyingfrom` varchar(45) NOT NULL,
  `flyingto` varchar(45) NOT NULL,
  `departing` varchar(45) NOT NULL,
  `returnflight` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookingtwo`
--

INSERT INTO `bookingtwo` (`id`, `fullname`, `email`, `flyingfrom`, `flyingto`, `departing`, `returnflight`) VALUES
(1, 'Dewmin Vinuraka', 'dewmin.V@gmail.com', 'katunayaka', 'Mumbhai', '', ''),
(2, 'Dewmin Vinuraka', 'dewmin.V@gmail.com', 'katunayaka', 'Mumbhai', '2022-10-10', ''),
(3, 'Dewmin Vinuraka', 'dewmin.V@gmail.com', 'katunayaka', 'Mumbhai', '2022-10-12', '2022-10-14'),
(4, 'Dissanayake', 'dewmin.vinuraka1@gmail.com', 'katunayaka', 'Mumbhai', '2022-10-22', '2022-10-25'),
(5, 'Dewmin Vinuraka', 'dewminvinuraka2@gmail.com', 'India', 'Japan', '2022-10-12', '2022-10-21'),
(6, 'Dissanayake Liyanage Dewmin Vinuraka', 'dew@gmail.com', 'India', 'Thailand', '2022-10-20', '2022-10-22'),
(7, 'Chathura', 'Chathura24@gmailc.om', 'Kalkata', 'Nawadhilli', '2022-10-12', '2022-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `staffone`
--

CREATE TABLE `staffone` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffone`
--

INSERT INTO `staffone` (`id`, `email`, `password`) VALUES
(1, 'chathura123@gmail.com', 'chathura123');

-- --------------------------------------------------------

--
-- Table structure for table `staffpanel`
--

CREATE TABLE `staffpanel` (
  `id` int(11) NOT NULL,
  `Grade` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `nic` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffpanel`
--

INSERT INTO `staffpanel` (`id`, `Grade`, `fullname`, `dob`, `nic`, `gender`) VALUES
(1001, 'Charuka', 'Chathura', '1999/05/23', '199905235874', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `stafftwo`
--

CREATE TABLE `stafftwo` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stafftwo`
--

INSERT INTO `stafftwo` (`id`, `email`, `password`) VALUES
(1, 'chathura123@gmail.com', 'chathura123');

-- --------------------------------------------------------

--
-- Table structure for table `ticketbook`
--

CREATE TABLE `ticketbook` (
  `id` varchar(45) NOT NULL,
  `flyingfrom` varchar(45) NOT NULL,
  `flyingto` varchar(45) NOT NULL,
  `departing` varchar(45) NOT NULL,
  `returnflight` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketbook`
--

INSERT INTO `ticketbook` (`id`, `flyingfrom`, `flyingto`, `departing`, `returnflight`) VALUES
('Emirate-100121', 'Srilanka', 'Dubai', '2022-10-18', '2022-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Dewmin Vinuraka', 'dewmin.V@gmail.com', 'Dewmin@1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingtwo`
--
ALTER TABLE `bookingtwo`
  ADD PRIMARY KEY (`id`,`email`);

--
-- Indexes for table `staffone`
--
ALTER TABLE `staffone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffpanel`
--
ALTER TABLE `staffpanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stafftwo`
--
ALTER TABLE `stafftwo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketbook`
--
ALTER TABLE `ticketbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookingtwo`
--
ALTER TABLE `bookingtwo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staffone`
--
ALTER TABLE `staffone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staffpanel`
--
ALTER TABLE `staffpanel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `stafftwo`
--
ALTER TABLE `stafftwo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
