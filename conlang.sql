-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 06:06 AM
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
  `script` tinytext DEFAULT NULL,
  `editors` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conlangs`
--

INSERT INTO `conlangs` (`id`, `name`, `name_romanised`, `script`, `editors`) VALUES
(1, 'dossin', 'Dossin', 'kaspak', 'domidoodle'),
(2, 'heizi', 'Heizi', 'kaspak', 'domidoodle'),
(3, 'Proto-Tineba', NULL, NULL, 'tineba'),
(4, 'ᚾᛟᚱᛖᚾᛋ', 'Norens', NULL, 'cawlo');

-- --------------------------------------------------------

--
-- Table structure for table `meanings`
--

CREATE TABLE `meanings` (
  `id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  `pos` tinytext DEFAULT NULL,
  `english` text DEFAULT NULL,
  `meaning` text DEFAULT NULL,
  `example` text DEFAULT NULL,
  `example_english` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meanings`
--

INSERT INTO `meanings` (`id`, `word_id`, `pos`, `english`, `meaning`, `example`, `example_english`) VALUES
(1, 1, 'noun', 'writing', 'any form of writing but usually referring to the specific dossï script', 'Tevin kaspan posonnë. Te rad «kjave» ne.      ', 'I saw writing on the ground. It said \"fish\".      '),
(2, 1, 'verb', 'egg', 'egg', 'One day I shot my foot', 'It hurt like hell.'),
(3, 1, 'noun', 'eggs', 'egg', 'We\'re no strangers to love', 'You know the rules and so do I...'),
(4, 2, 'verb', 'think, imagine', 'this is very cool', NULL, NULL),
(15, 2, 'noun', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `conlang_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `name_romanised` text DEFAULT NULL,
  `script` tinytext DEFAULT NULL,
  `pronunciation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `conlang_id`, `name`, `name_romanised`, `script`, `pronunciation`) VALUES
(1, 1, 'kaspak', 'kaspak', 'kaspak', 'kɐspɐk'),
(2, 1, 'fess', 'fess', NULL, 'fɛsː');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conlangs`
--
ALTER TABLE `conlangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meanings`
--
ALTER TABLE `meanings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `word_id` (`word_id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conlang_id` (`conlang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conlangs`
--
ALTER TABLE `conlangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meanings`
--
ALTER TABLE `meanings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meanings`
--
ALTER TABLE `meanings`
  ADD CONSTRAINT `meanings_ibfk_1` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`);

--
-- Constraints for table `words`
--
ALTER TABLE `words`
  ADD CONSTRAINT `words_ibfk_1` FOREIGN KEY (`conlang_id`) REFERENCES `conlangs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
