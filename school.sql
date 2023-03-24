-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2023 at 08:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_tb`
--

CREATE TABLE `student_tb` (
  `id` int(11) NOT NULL,
  `student_name` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `course` varchar(250) NOT NULL,
  `skill` varchar(250) NOT NULL,
  `language` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_tb`
--

INSERT INTO `student_tb` (`id`, `student_name`, `email_id`, `password`, `phone_number`, `gender`, `course`, `skill`, `language`, `image`) VALUES
(14, 'Revathi p', 'revathipgopi@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 9072879546, 'Female', 'Php', 'HTML-Python', 'Malayalam,Arabic', 'food2.jpg'),
(16, 'vishnu cp', 'sarashiva130@gmail.com', '25f9e794323b453885f5181f1b624d0b', 9072879546, 'Male', 'Python', 'HTML-CSS-Python', 'Malayalam,English,Arabic', 'IMG_20210809_214245 (1).jpg'),
(18, 'adithya', 'adithyapn98@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 9744456912, 'Male', 'Python', 'HTML-Java scripts-pSQL', 'Malayalam,Hindi,Arabic', 'food1.jpg'),
(19, 'vishnu', 'vishnu.chengot@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 9072879546, 'Male', 'Python', 'HTML-Java scripts', 'Malayalam,Arabic', 'food3.jpg'),
(20, 'revathi', 'vishnu.chengot@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 9072879546, 'Male', 'Python', 'HTML-Python', 'Malayalam,Arabic', 'food2.jpg'),
(26, 'Rishan', 'rishankarattiyattil@gmail.com', '3b4da4bcc38b214e6f4601be2843b496', 9072879546, 'Male', 'Python', 'CSS-pSQL', 'Malayalam,Arabic', 'light2.jpg'),
(27, 'sanoop', 'sanoop.ps@codilar.com', '3b4da4bcc38b214e6f4601be2843b496', 9744456913, 'Male', 'Python', 'HTML-CSS', 'Malayalam,English', 'food2.jpg'),
(28, 'vishnu', 'vishnupoonthottathil1729@gmail.com', '5315219ef6c44dce5ab984b661fdc9d9', 9744456913, 'Male', 'Python', 'HTML-CSS', 'Malayalam,Arabic', 'IMG_20210809_214245 (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tb`
--

CREATE TABLE `teacher_tb` (
  `id` int(11) NOT NULL,
  `teacher_name` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_tb`
--

INSERT INTO `teacher_tb` (`id`, `teacher_name`, `email_id`, `phone_number`, `password`) VALUES
(1, 'vishnu', 'vishnu.chengot@gmail.com', 9072879546, '3b4da4bcc38b214e6f4601be2843b496');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_tb`
--
ALTER TABLE `student_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_tb`
--
ALTER TABLE `teacher_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_tb`
--
ALTER TABLE `student_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `teacher_tb`
--
ALTER TABLE `teacher_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
