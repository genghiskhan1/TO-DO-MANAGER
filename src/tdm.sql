-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2017 at 09:04 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `minutesmaker`
--

CREATE TABLE `minutesmaker` (
  `Name` varchar(20) DEFAULT NULL,
  `Task` text,
  `Time` time(4) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minutesmaker`
--

INSERT INTO `minutesmaker` (`Name`, `Task`, `Time`, `Date`) VALUES
('Eshwar', '', '13:40:00.0000', '2017-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Name` varchar(20) NOT NULL,
  `Password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Name`, `Password`) VALUES
('Eshwar', '789456'),
('Himanshu', '123456'),
('Kartik', '456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `minutesmaker`
--
ALTER TABLE `minutesmaker`
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `minutesmaker`
--
ALTER TABLE `minutesmaker`
  ADD CONSTRAINT `minutesmaker_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `users` (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
