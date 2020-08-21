-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2020 at 02:48 AM
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
(44, 6, 19),
(45, 6, 20);

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
(4, 2, 'verb', 'think, imagine', 'this is very cool too', NULL, NULL),
(27, 14, 'noun', 'water', 'yeah its water', 'Eiski vosï.\nI drink water', NULL),
(32, 15, 'verb', 'eat', NULL, NULL, NULL),
(33, 16, 'noun', 'snow', '', NULL, NULL),
(37, 1, 'verb', 'test', NULL, NULL, NULL),
(38, 17, 'noun', 'oh no', 'oh no', NULL, NULL),
(45, 41, 'noun', 'red', NULL, NULL, NULL),
(46, 45, 'noun', 'community', '', '<br />', NULL),
(48, 45, 'noun', 'polity', 'Usually referring to small polities such as muncipalities alone', 'hey add affixes you egg', NULL),
(49, 46, 'noun', 'fight', 'could be used to refer to a duel or formal arranged battle', NULL, NULL),
(50, 47, 'verb', 'love', '(romantic)', NULL, NULL),
(51, 48, 'noun', 'iron', NULL, NULL, NULL),
(52, 49, 'noun', 'woman', NULL, NULL, NULL),
(53, 55, 'noun', 'nature', '', NULL, NULL),
(54, 58, 'noun', 'hair', 'commonly refers to facial hair but may be used to refer to animal hair as in fur', NULL, NULL),
(55, 59, 'noun', 'hair', 'especially hair on the head', NULL, NULL),
(56, 60, 'noun', 'eat', NULL, NULL, NULL),
(57, 61, 'noun', 'drink', NULL, NULL, NULL),
(58, 62, 'verb', 'free', '', NULL, NULL),
(59, 63, 'noun', 'ground', NULL, NULL, NULL),
(60, 64, 'verb', 'unite', NULL, NULL, NULL),
(61, 65, 'noun', 'fish', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scripts`
--

CREATE TABLE `scripts` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `editors` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scripts`
--

INSERT INTO `scripts` (`id`, `name`, `editors`) VALUES
(1, 'kaspak', 'domidoodle');

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
(8, 'Jim Saladears', '$2y$10$nm7e93WbtSPKxxXsm15m/.hMCher8jMCcRYBA97bXFNPe24J7d1US', '8fc1ba7ae25e86e9936f664850be6b7315c7403274444b7f12bbd994ca5f3b7e');

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
(41, 1, 'cauz', 'cauz', 'ʃɐʊz', NULL),
(45, 1, 'daus', 'daus', 'dɐʊs', NULL),
(46, 1, 'conta', 'conta', 'ʃɔntɐ', NULL),
(47, 1, 'doït', 'doyt', 'doyt', NULL),
(48, 1, 'dosau', 'dosau', 'dɔsɐʊ', NULL),
(49, 1, 'ecri', 'ecri', 'ɛʃɹɪ', NULL),
(55, 1, 'cvates', 'cvates', 'ʃvates', NULL),
(58, 1, 'patva', 'patva', 'patva', NULL),
(59, 1, 'kase', 'kase', 'kase', NULL),
(60, 19, 'homophone', '', 'a', NULL),
(61, 19, 'homophone', NULL, 'a', NULL),
(62, 1, 'pivi', 'pivi', 'pivi', NULL),
(63, 1, 'poso', 'poso', 'poso', NULL),
(64, 1, 'ruc', 'ruc', 'ruʃ', NULL),
(65, 1, 'kjave', 'kjave', 'kjave', NULL),
(66, 20, NULL, NULL, NULL, NULL),
(67, 20, NULL, NULL, NULL, NULL),
(68, 20, NULL, NULL, NULL, NULL),
(69, 20, NULL, NULL, NULL, NULL),
(70, 20, NULL, NULL, NULL, NULL),
(71, 20, NULL, NULL, NULL, NULL),
(72, 20, NULL, NULL, NULL, NULL),
(73, 20, NULL, NULL, NULL, NULL),
(74, 20, NULL, NULL, NULL, NULL),
(75, 20, NULL, NULL, NULL, NULL),
(76, 20, NULL, NULL, NULL, NULL),
(77, 20, NULL, NULL, NULL, NULL),
(78, 20, NULL, NULL, NULL, NULL),
(79, 20, NULL, NULL, NULL, NULL),
(80, 20, NULL, NULL, NULL, NULL),
(81, 20, NULL, NULL, NULL, NULL),
(82, 20, NULL, NULL, NULL, NULL),
(83, 20, NULL, NULL, NULL, NULL),
(84, 20, NULL, NULL, NULL, NULL),
(85, 20, NULL, NULL, NULL, NULL),
(86, 20, NULL, NULL, NULL, NULL),
(87, 20, NULL, NULL, NULL, NULL),
(88, 20, NULL, NULL, NULL, NULL),
(89, 20, NULL, NULL, NULL, NULL),
(90, 20, NULL, NULL, NULL, NULL),
(91, 20, NULL, NULL, NULL, NULL),
(92, 20, NULL, NULL, NULL, NULL),
(93, 20, NULL, NULL, NULL, NULL),
(94, 20, NULL, NULL, NULL, NULL),
(95, 20, NULL, NULL, NULL, NULL),
(96, 20, NULL, NULL, NULL, NULL),
(97, 20, NULL, NULL, NULL, NULL),
(98, 20, NULL, NULL, NULL, NULL),
(99, 20, NULL, NULL, NULL, NULL),
(100, 20, NULL, NULL, NULL, NULL),
(101, 20, NULL, NULL, NULL, NULL),
(102, 20, NULL, NULL, NULL, NULL),
(103, 20, NULL, NULL, NULL, NULL),
(104, 20, NULL, NULL, NULL, NULL),
(105, 20, NULL, NULL, NULL, NULL),
(106, 20, NULL, NULL, NULL, NULL),
(107, 20, NULL, NULL, NULL, NULL),
(108, 20, NULL, NULL, NULL, NULL),
(109, 20, NULL, NULL, NULL, NULL),
(110, 20, NULL, NULL, NULL, NULL),
(111, 20, NULL, NULL, NULL, NULL),
(112, 20, NULL, NULL, NULL, NULL),
(113, 20, NULL, NULL, NULL, NULL),
(114, 20, NULL, NULL, NULL, NULL),
(115, 20, NULL, NULL, NULL, NULL),
(116, 20, NULL, NULL, NULL, NULL),
(117, 20, NULL, NULL, NULL, NULL),
(118, 20, NULL, NULL, NULL, NULL),
(119, 20, NULL, NULL, NULL, NULL),
(120, 20, NULL, NULL, NULL, NULL),
(121, 20, NULL, NULL, NULL, NULL),
(122, 20, NULL, NULL, NULL, NULL),
(123, 20, NULL, NULL, NULL, NULL),
(124, 20, NULL, NULL, NULL, NULL),
(125, 20, NULL, NULL, NULL, NULL),
(126, 20, NULL, NULL, NULL, NULL),
(127, 20, NULL, NULL, NULL, NULL),
(128, 20, NULL, NULL, NULL, NULL),
(129, 20, NULL, NULL, NULL, NULL),
(130, 20, NULL, NULL, NULL, NULL),
(131, 20, NULL, NULL, NULL, NULL),
(132, 20, NULL, NULL, NULL, NULL),
(133, 20, NULL, NULL, NULL, NULL),
(134, 20, NULL, NULL, NULL, NULL),
(135, 20, NULL, NULL, NULL, NULL),
(136, 20, NULL, NULL, NULL, NULL),
(137, 20, NULL, NULL, NULL, NULL),
(138, 20, NULL, NULL, NULL, NULL),
(139, 20, NULL, NULL, NULL, NULL),
(140, 20, NULL, NULL, NULL, NULL),
(141, 20, NULL, NULL, NULL, NULL),
(142, 20, NULL, NULL, NULL, NULL),
(143, 20, NULL, NULL, NULL, NULL),
(144, 20, NULL, NULL, NULL, NULL),
(145, 20, NULL, NULL, NULL, NULL),
(146, 20, NULL, NULL, NULL, NULL),
(147, 20, NULL, NULL, NULL, NULL),
(148, 20, NULL, NULL, NULL, NULL),
(149, 20, NULL, NULL, NULL, NULL),
(150, 20, NULL, NULL, NULL, NULL),
(151, 20, NULL, NULL, NULL, NULL),
(152, 20, NULL, NULL, NULL, NULL);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `editors`
--
ALTER TABLE `editors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `meanings`
--
ALTER TABLE `meanings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `scripts`
--
ALTER TABLE `scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

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
-- Constraints for table `words`
--
ALTER TABLE `words`
  ADD CONSTRAINT `words_ibfk_1` FOREIGN KEY (`conlang_id`) REFERENCES `conlangs` (`id`),
  ADD CONSTRAINT `words_ibfk_2` FOREIGN KEY (`script_id`) REFERENCES `scripts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
