-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 01:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodemcu_rfidrc522_mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$89uX3LBy4mlU/DcBveQ1l.32nSianDP/E1MfUh.Z.6B4Z0ql3y7PK');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `idattendance` int(11) NOT NULL,
  `idstudent` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time(5) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_nodemcu_rfidrc522_mysql`
--

CREATE TABLE `table_nodemcu_rfidrc522_mysql` (
  `idstudent` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `username`, `password`, `name`, `class`, `phone`) VALUES
(1, 'aerina@gmail.com', '880225045174', 'Aerina Fazlin Binti Arjunaidi', '3 Wawasan', '0174367892'),
(2, 'rizal@gmail.com', '860820095081', 'Ahmad Rizal Bin Hamid', '3 Pintar', '0174367888'),
(3, 'aishah@gmail.com', '890424075373', 'Aishah Binti Sari', '3 Bijaksana', '0174367876'),
(4, 'azmiah@gmail.com', '$2y$10$89uX3LBy4mlU/DcBveQ1l.32nSianDP/E1MfUh.Z.6B4Z0ql3y7PK', 'Azmiah Binti Aziz', '3 Ungul', '0129580072');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`idattendance`);

--
-- Indexes for table `table_nodemcu_rfidrc522_mysql`
--
ALTER TABLE `table_nodemcu_rfidrc522_mysql`
  ADD PRIMARY KEY (`idstudent`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `idattendance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_nodemcu_rfidrc522_mysql`
--
ALTER TABLE `table_nodemcu_rfidrc522_mysql`
  MODIFY `idstudent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
