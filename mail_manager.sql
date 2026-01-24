-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2026 at 04:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mail_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `mail_ids`
--

CREATE TABLE `mail_ids` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dropbox` varchar(50) DEFAULT NULL,
  `google_drive` varchar(50) DEFAULT NULL,
  `one_drive` varchar(50) DEFAULT NULL,
  `mega` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mail_ids`
--

INSERT INTO `mail_ids` (`id`, `email`, `dropbox`, `google_drive`, `one_drive`, `mega`, `created_at`) VALUES
(1, 'arikmukherjee3@gmail.com', '00', '00', '00', '00', '2026-01-24 14:44:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mail_ids`
--
ALTER TABLE `mail_ids`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mail_ids`
--
ALTER TABLE `mail_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
