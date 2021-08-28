-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Aug 28, 2021 at 12:54 PM
-- Server version: 5.7.35
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amity_framework`
--

-- --------------------------------------------------------

--
-- Table structure for table `medical_statuses`
--

CREATE TABLE `medical_statuses` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `damage` float NOT NULL DEFAULT '0',
  `unconscious` tinyint(4) NOT NULL DEFAULT '0',
  `pain` float NOT NULL DEFAULT '0',
  `HitHead` float NOT NULL DEFAULT '0',
  `HitBody` float NOT NULL DEFAULT '0',
  `HitLeftArm` float NOT NULL DEFAULT '0',
  `HitRightArm` float NOT NULL DEFAULT '0',
  `HitLeftLeg` float NOT NULL DEFAULT '0',
  `HitRightLeg` float NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_statuses`
--
--
-- Indexes for dumped tables
--

--
-- Indexes for table `medical_statuses`
--
ALTER TABLE `medical_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_id` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medical_statuses`
--
ALTER TABLE `medical_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medical_statuses`
--
ALTER TABLE `medical_statuses`
  ADD CONSTRAINT `medical_statuses_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `core_profiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
