-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2020 at 02:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conlang`
--

-- --------------------------------------------------------

--
-- Table structure for table `conlangs`
--

CREATE TABLE `conlangs` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `name_romanised` text DEFAULT NULL,
  `script_id` int(11) DEFAULT NULL,
  `pronunciation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conlangs`
--

INSERT INTO `conlangs` (`id`, `name`, `name_romanised`, `script_id`, `pronunciation`) VALUES
(1, 'dossin', 'Dossïn', 1, 'dossyn'),
(2, 'heizi', 'Heizi', 1, NULL),
(3, 'Proto-Tineba', NULL, NULL, NULL),
(4, 'ᚾᛟᚱᛖᚾᛋ', 'Norens', NULL, NULL),
(19, 'The Homophonic Language', '', NULL, ''),
(20, 'scroll test', '', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conlangs`
--
ALTER TABLE `conlangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `script_id` (`script_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conlangs`
--
ALTER TABLE `conlangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conlangs`
--
ALTER TABLE `conlangs`
  ADD CONSTRAINT `conlangs_ibfk_1` FOREIGN KEY (`script_id`) REFERENCES `scripts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
