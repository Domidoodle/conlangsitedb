-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2020 at 08:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

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
(1, 'dossin', 'Dossyn', 1, ''),
(2, 'heizi', 'Heizi', 1, NULL),
(3, 'Proto-Tineba', NULL, NULL, NULL),
(4, 'ᚾᛟᚱᛖᚾᛋ', 'Norens', NULL, NULL),
(15, 'Toki Pona', '', NULL, 'toki pona '),
(19, 'newlanguage', '', 11, '');

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE `editors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `conlang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `editors`
--

INSERT INTO `editors` (`id`, `user_id`, `conlang_id`) VALUES
(1, 6, 1),
(2, 7, 4),
(3, 8, 2),
(4, 6, 2),
(18, 6, 3),
(19, 48, 15),
(23, 49, 19);

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
(1, 1, 'noun', 'writing', 'any form of writing but usually referring to the specific dossï script', 'Tevin kaspan posonnë. Te rad «kjave» ne.  \nI saw writing on the ground. It said \"fish\".  ', ''),
(4, 2, 'verb', 'think', NULL, NULL, NULL),
(27, 14, 'noun', 'water', 'yeah its water', 'Eiski vosï.\nI drink water', NULL),
(32, 15, 'verb', 'eat, eating', NULL, NULL, NULL),
(33, 16, 'noun', 'snow', '', NULL, NULL),
(45, 40, 'adjective', 'red', 'fdsfdsf', 'efsdf', 'aaaa'),
(46, 41, 'verb', 'drink, drinking', NULL, NULL, NULL),
(58, 51, 'adjective', 'blue', NULL, NULL, NULL),
(59, 52, 'noun', 'house', 'building to live in', '', NULL),
(60, 53, 'adjective', 'beautiful', 'good-looking or attractive', NULL, NULL),
(61, 54, 'noun', 'person', NULL, NULL, NULL),
(62, 55, 'noun', 'nation', 'as in nationality', NULL, NULL),
(63, 55, 'noun', 'country', 'usually used for a nationstate', NULL, NULL),
(64, 56, 'noun', 'blood', '', NULL, NULL),
(65, 57, 'noun', 'air', NULL, NULL, NULL),
(67, 58, 'pronoun', 'I', '1SG first person singular pronoun - jaz in some dialects', '', NULL),
(68, 59, 'affix', 'diminunitive ', NULL, 'Az tevi namaucin!\nI see tiny cats!', NULL),
(69, 60, 'noun', 'woman', NULL, NULL, NULL),
(70, 61, 'noun', 'nature', '', NULL, NULL),
(71, 62, 'verb', 'believe', NULL, NULL, NULL),
(72, 66, 'verb', 'speak', '', 'Jaz jovy Dossyn\nI speak Dossyn', NULL),
(73, 2, 'verb', 'imagine', NULL, NULL, NULL),
(74, 68, 'noun', 'lizard', NULL, NULL, NULL),
(75, 69, NULL, 'no', NULL, NULL, NULL),
(76, 70, 'verb', 'hunt', NULL, NULL, NULL),
(77, 71, 'pronoun', NULL, NULL, NULL, NULL),
(78, 72, 'adjective', 'low', '', NULL, NULL),
(79, 73, NULL, NULL, NULL, NULL, NULL),
(80, 74, 'noun', 'fire', NULL, NULL, NULL),
(81, 75, 'adjective', 'happy', NULL, NULL, NULL),
(82, 76, 'noun', 'ground', NULL, NULL, NULL),
(83, 77, 'verb', 'labour', NULL, NULL, NULL),
(84, 78, 'verb', 'see', NULL, NULL, NULL),
(85, 79, 'noun', 'language', NULL, NULL, NULL),
(86, 80, 'noun', 'neword', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scripts`
--

CREATE TABLE `scripts` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scripts`
--

INSERT INTO `scripts` (`id`, `name`, `user_id`) VALUES
(1, 'kaspak', 6),
(11, 'The Standard Galactic Alphabet', 49);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `pwd` tinytext NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `pwd`, `email`) VALUES
(6, 'domidoodle', '$2y$10$JbpABWC38lmx4sGzatcijONCUPHJTshiq9lmkDmZiqhobTqWr1iNy', 'c1ae51d2958b05e0c0681c7e6416c64c07cc0bcd36697a115c0955ca33c2977e'),
(7, 'cawlo', '$2y$10$ukZ/bSWn12jYhBmEspjE/OcVPcDFS2Q0iNZzemoOdFbTJTnGXGc3S', '3fdc2628afd5c1494ff3080de4e98b757689e108c3504bcd16fbf84e0a9b7bda'),
(8, 'Jim Saladears', '$2y$10$nm7e93WbtSPKxxXsm15m/.hMCher8jMCcRYBA97bXFNPe24J7d1US', '8fc1ba7ae25e86e9936f664850be6b7315c7403274444b7f12bbd994ca5f3b7e'),
(48, 'misali', '$2y$10$pRpV77P8M7G48OcndTmFn.uH6kowVIPjZWl/9xevGbezTTGI7kqF2', '72bfc6ac2affc80e05fd1737906ccb21b660638f2ecb05dff5535bacac4c065b'),
(49, 'newuser', '$2y$10$fcK84yyMH4D9kkr1uE87LOrRnev/Xrg8GP5i/35NJcG6Wi9gfRlUO', '3e43b8d310657a395a4a6e27d47424ce712468aa040944f952ae2a1bc2a2b1ae');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `conlang_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `name_romanised` text DEFAULT NULL,
  `pronunciation` text DEFAULT NULL,
  `script_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `conlang_id`, `name`, `name_romanised`, `pronunciation`, `script_id`) VALUES
(1, 1, 'kaspak', 'kaspak', 'kaspak', NULL),
(2, 1, 'fess', 'fess', 'fɛsː', NULL),
(14, 1, 'vosï', 'vosy', 'vosy', NULL),
(15, 1, 'eisk', 'eisk', 'eisk', NULL),
(16, 1, 'poc', 'poc', 'poʃ', NULL),
(17, 2, 'oh noo', NULL, 'word', NULL),
(37, 3, 'proto-word', NULL, 'proto-word but how to pronounce it', NULL),
(40, 1, 'cauz', 'cauz', 'cauz', NULL),
(41, 1, 'jouvo', 'jouvo', 'jouvo', NULL),
(51, 1, 'hins', 'hins', 'hɪns', NULL),
(52, 1, 'kaisi', 'kaisi', 'kɐɪsɪ', NULL),
(53, 1, 'karoï', 'karoy', 'kɐɹɔy', NULL),
(54, 1, 'kassi', 'kassi', 'kɐssɪ', NULL),
(55, 1, 'kassifdaus', 'kassifdaus', 'kɐssɪfdɐʊs', NULL),
(56, 1, 'kazt', 'kazt', 'kɐzt', NULL),
(57, 1, 'luha', 'luha', 'lʊhɐ', NULL),
(58, 1, 'az', 'az', 'ɐz', NULL),
(59, 1, 'cin', 'cin', 'ʃɪn', NULL),
(60, 1, 'ecri', 'ecri', 'ɛʃɹɪ', NULL),
(61, 1, 'cvates', 'cvates', 'ʃvɐtɛs', NULL),
(62, 1, 'daizi', 'daizi', 'dɐɪzɪ', NULL),
(63, 1, NULL, NULL, NULL, NULL),
(64, 1, NULL, NULL, NULL, NULL),
(66, 1, 'jov', 'jov', 'jɔv', NULL),
(68, 15, 'akesi', NULL, 'akesi', NULL),
(69, 15, 'ala', NULL, 'ala', NULL),
(70, 15, 'alasa', NULL, 'alasa', NULL),
(71, 15, 'ale', '', 'ale', NULL),
(72, 15, 'anpa', NULL, 'anpa', NULL),
(73, 15, 'ante', '', 'ante', NULL),
(74, 1, 'fjon', 'fjon', 'fʲɔn', NULL),
(75, 1, 'kari', 'kari', 'kɐɹɪ', NULL),
(76, 1, 'poso', 'poso', 'pɔsɔ', NULL),
(77, 1, 'toco', 'toco', 'tɔʃɔ', NULL),
(78, 1, 'tev', 'tev', 'tɛv', NULL),
(79, 1, 'voc', 'voc', 'vɔʃ', NULL),
(80, 19, 'newword', 'neword', NULL, NULL);

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
-- Indexes for table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `conlang_id` (`conlang_id`);

--
-- Indexes for table `meanings`
--
ALTER TABLE `meanings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `word_id` (`word_id`);

--
-- Indexes for table `scripts`
--
ALTER TABLE `scripts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conlang_id` (`conlang_id`),
  ADD KEY `script_id` (`script_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conlangs`
--
ALTER TABLE `conlangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `editors`
--
ALTER TABLE `editors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `meanings`
--
ALTER TABLE `meanings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `scripts`
--
ALTER TABLE `scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conlangs`
--
ALTER TABLE `conlangs`
  ADD CONSTRAINT `conlangs_ibfk_1` FOREIGN KEY (`script_id`) REFERENCES `scripts` (`id`);

--
-- Constraints for table `editors`
--
ALTER TABLE `editors`
  ADD CONSTRAINT `editors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `editors_ibfk_2` FOREIGN KEY (`conlang_id`) REFERENCES `conlangs` (`id`);

--
-- Constraints for table `meanings`
--
ALTER TABLE `meanings`
  ADD CONSTRAINT `meanings_ibfk_1` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`);

--
-- Constraints for table `scripts`
--
ALTER TABLE `scripts`
  ADD CONSTRAINT `scripts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `words`
--
ALTER TABLE `words`
  ADD CONSTRAINT `words_ibfk_1` FOREIGN KEY (`conlang_id`) REFERENCES `conlangs` (`id`),
  ADD CONSTRAINT `words_ibfk_2` FOREIGN KEY (`script_id`) REFERENCES `scripts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
