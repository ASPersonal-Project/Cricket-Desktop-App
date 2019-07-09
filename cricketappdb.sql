-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2019 at 11:20 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricketappdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `batsman`
--

CREATE TABLE `batsman` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `runs` int(100) NOT NULL,
  `balls` int(100) NOT NULL,
  `fours` int(100) NOT NULL,
  `sixes` int(100) NOT NULL,
  `scorecard_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batsman`
--

INSERT INTO `batsman` (`id`, `name`, `runs`, `balls`, `fours`, `sixes`, `scorecard_id`) VALUES
(1, 'Kusal', 18, 14, 3, 0, 1),
(2, 'Avishka', 20, 21, 4, 0, 1),
(3, 'Lahiru', 53, 68, 4, 0, 1),
(4, 'Dimuth', 10, 17, 2, 0, 1),
(5, 'Kudsal Mendis', 3, 13, 0, 0, 1),
(6, 'Dananjaya', 29, 36, 1, 0, 1),
(7, 'Thisara', 2, 3, 0, 0, 1),
(8, 'Isuru', 1, 1, 0, 0, 1),
(9, 'Lokesh', 100, 118, 11, 1, 2),
(10, 'Rohith', 103, 94, 14, 2, 2),
(11, 'Koli', 34, 41, 3, 0, 2),
(12, 'Pandiya', 4, 4, 1, 0, 2),
(13, 'Harthik', 7, 4, 1, 0, 2),
(14, 'Dimuth', 18, 14, 3, 0, 3),
(15, 'Kusl', 10, 17, 2, 0, 3),
(16, 'Avishka', 3, 13, 0, 0, 3),
(17, 'Kusal', 20, 20, 4, 0, 3),
(18, 'Lahiru', 113, 128, 10, 2, 3),
(19, '\r\nAnjalo', 53, 68, 4, 0, 3),
(20, 'Thisrs', 29, 36, 1, 0, 3),
(21, 'Dananjaya', 3, 2, 0, 0, 3),
(22, 'Isuru', 1, 1, 0, 0, 3),
(23, 'Imamul', 19, 19, 3, 0, 4),
(24, 'Patas', 9, 10, 2, 0, 4),
(25, 'Babar', 101, 127, 11, 0, 4),
(26, 'Mohomad', 32, 15, 5, 0, 4),
(27, 'Haris', 56, 78, 5, 2, 4),
(28, 'Safras', 5, 3, 1, 1, 4),
(29, 'Upul Tharanga', 120, 52, 5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bowlers`
--

CREATE TABLE `bowlers` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `runs` int(11) NOT NULL,
  `balls` int(11) NOT NULL,
  `wickets` int(11) NOT NULL,
  `maidens` int(11) NOT NULL,
  `scorecard_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bowlers`
--

INSERT INTO `bowlers` (`id`, `name`, `runs`, `balls`, `wickets`, `maidens`, `scorecard_id`) VALUES
(1, 'Dimuth', 20, 18, 1, 2, 1),
(2, 'Dimuth', 20, 18, 1, 2, 1),
(3, 'Bumrah', 37, 60, 2, 2, 2),
(4, 'Bumrah', 37, 60, 2, 2, 2),
(5, 'Lasith Malinga', 82, 10, 1, 1, 1),
(6, 'Kasun rajitha', 47, 8, 1, 0, 1),
(7, 'Isuru Udana', 54, 9, 1, 0, 1),
(8, 'Thisara Perera', 34, 10, 0, 0, 1),
(9, 'Dananjayada Silva', 56, 6, 0, 0, 1),
(10, 'Buwanshwar', 75, 10, 1, 0, 2),
(11, 'Harthik', 50, 10, 1, 0, 2),
(12, 'Ravindra', 40, 10, 1, 0, 2),
(13, 'Kuljith', 58, 10, 1, 0, 2),
(14, 'Lasith', 47, 10, 1, 1, 3),
(15, 'Kasun', 18, 8, 0, 0, 3),
(16, 'Dananjaya', 31, 10, 0, 0, 3),
(17, 'Thisara', 51, 6, 0, 0, 3),
(18, 'HAfees', 22, 7, 0, 0, 4),
(19, 'Mohomad', 67, 10, 1, 0, 4),
(20, 'Saheem', 28, 10, 3, 3, 4),
(21, 'Sadaf', 43, 10, 1, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `scorecard_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `scorecard_id`) VALUES
(1, 'Sri Lanka', 1),
(2, 'India', 2),
(5, 'Sri Lanka', 3),
(6, 'Pakistan', 4);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) NOT NULL,
  `country1_id` int(10) NOT NULL,
  `country2_id` int(10) NOT NULL,
  `toss` varchar(100) NOT NULL,
  `winner` varchar(100) NOT NULL,
  `ground` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `country1_id`, `country2_id`, `toss`, `winner`, `ground`) VALUES
(1, 1, 2, 'Sri Lanka', 'India', 'Headingly'),
(2, 5, 6, 'Pakistan', 'Sri Lanka', 'Palekale');

-- --------------------------------------------------------

--
-- Table structure for table `scorecard`
--

CREATE TABLE `scorecard` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scorecard`
--

INSERT INTO `scorecard` (`id`) VALUES
(1),
(2),
(3),
(4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batsman`
--
ALTER TABLE `batsman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batsman_scorecard_fk` (`scorecard_id`);

--
-- Indexes for table `bowlers`
--
ALTER TABLE `bowlers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bowler_scorecard_fk` (`scorecard_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_scorecard_fk` (`scorecard_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_country1_fk` (`country1_id`),
  ADD KEY `match_country2_fk` (`country2_id`);

--
-- Indexes for table `scorecard`
--
ALTER TABLE `scorecard`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batsman`
--
ALTER TABLE `batsman`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `bowlers`
--
ALTER TABLE `bowlers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scorecard`
--
ALTER TABLE `scorecard`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batsman`
--
ALTER TABLE `batsman`
  ADD CONSTRAINT `batsman_scorecard_fk` FOREIGN KEY (`scorecard_id`) REFERENCES `scorecard` (`id`);

--
-- Constraints for table `bowlers`
--
ALTER TABLE `bowlers`
  ADD CONSTRAINT `bowler_scorecard_fk` FOREIGN KEY (`scorecard_id`) REFERENCES `scorecard` (`id`);

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `country_scorecard_fk` FOREIGN KEY (`scorecard_id`) REFERENCES `scorecard` (`id`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `match_country1_fk` FOREIGN KEY (`country1_id`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `match_country2_fk` FOREIGN KEY (`country2_id`) REFERENCES `country` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
