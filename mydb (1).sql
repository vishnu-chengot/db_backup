-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2023 at 08:20 AM
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `id` int(11) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `mobileno` bigint(20) NOT NULL,
  `username` varchar(250) NOT NULL,
  `cpassword` varchar(50) NOT NULL,
  `email_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`id`, `fname`, `lname`, `mobileno`, `username`, `cpassword`, `email_id`) VALUES
(1, 'vishnu', 'cp', 1234567890, 'achu', '1234567890', 'angha.chengot@gmail.com'),
(6, 'vishnu', 'cp', 1234567890, 'achu', '3b4da4bcc38b214e6f4601be2843b496', 'vishnu.chengot@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `department_tb`
--

CREATE TABLE `department_tb` (
  `id` int(11) NOT NULL,
  `dpartment_name` varchar(250) NOT NULL,
  `hod` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_tb`
--

INSERT INTO `department_tb` (`id`, `dpartment_name`, `hod`) VALUES
(1, 'computer science', 'lekha'),
(3, 'Electronics', 'biju'),
(4, 'Mechanical', 'Haridevan'),
(5, 'civil', 'Ragavan'),
(6, 'mechatronics', 'sheeja'),
(7, 'Electrical', 'sajeevan'),
(8, 'Automobile', 'Mathew josaph');

-- --------------------------------------------------------

--
-- Table structure for table `employee_tb`
--

CREATE TABLE `employee_tb` (
  `emp_id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `emp_password` varchar(250) NOT NULL,
  `phone_number` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_tb`
--

INSERT INTO `employee_tb` (`emp_id`, `first_name`, `last_name`, `email_id`, `emp_password`, `phone_number`) VALUES
(8, 'vishnu', 'cp', 'vishnu.chengot@gmail.com', 'Electronics', 9072879546),
(12, 'anagha', 'cp', 'angha.chengot@gmail.com', 'web developer', 9744456913);

-- --------------------------------------------------------

--
-- Table structure for table `seller_tb`
--

CREATE TABLE `seller_tb` (
  `id` int(11) NOT NULL,
  `seller_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` bigint(20) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `course` varchar(250) NOT NULL,
  `skill` varchar(250) NOT NULL,
  `language` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_tb`
--

INSERT INTO `seller_tb` (`id`, `seller_name`, `email_id`, `password`, `phone_number`, `gender`, `course`, `skill`, `language`) VALUES
(28, 'vishnu  cp   ', 'vishnu.chengot@gmail.com', 1234567822, 9072879546, 'Female', 'Java', 'HTML-Java scripts-Python', 'Hindi,Arabic'),
(29, 'revathi  ', 'revathipgopi@gmail.com', 123456789, 7306148554, 'Female', 'Php', 'HTML-CSS-pSQL', 'Malayalam,English'),
(30, 'malayalam', 'vishnu.chengot@gmail.com', 1234567890, 1234567890, 'Male', 'Python', 'HTML-Java scripts', 'Hindi');

-- --------------------------------------------------------

--
-- Table structure for table `student_tb`
--

CREATE TABLE `student_tb` (
  `id` int(11) NOT NULL,
  `s_name` varchar(250) NOT NULL,
  `s_email` varchar(250) NOT NULL,
  `subject1` float NOT NULL,
  `subject2` float NOT NULL,
  `subject3` float NOT NULL,
  `department_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_tb`
--

INSERT INTO `student_tb` (`id`, `s_name`, `s_email`, `subject1`, `subject2`, `subject3`, `department_fk`) VALUES
(5, 'vishnu', 'vishnu.chengot@gmail.com', 32, 33, 43, 3),
(6, 'revathi p', 'revathipgopi@gmail.com', 48, 49, 45, 3),
(7, 'kananrajendran', 'kanan@gmail.com', 22, 44, 39, 1),
(8, 'mushraf', 'musraf@gmail.com', 46, 33, 48, 4),
(9, 'aparana', 'aparana@gmail.com', 48, 33, 46, 1),
(10, 'shalu', 'shalu@gmail.com', 144, 46, 48, 1),
(11, 'ajithsuresh', 'ajith@gmail.com', 46, 44, 45, 4),
(12, 'amrutha', 'amrutha@gmail.com', 48, 44, 46, 4),
(15, 'muneesh kumar', 'muneeshkumar@gmail.com', 32, 33, 46, 3),
(16, 'ryan ajk', 'ryan@gmail.com', 32, 33, 45, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_tb`
--
ALTER TABLE `department_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_tb`
--
ALTER TABLE `employee_tb`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `seller_tb`
--
ALTER TABLE `seller_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_tb`
--
ALTER TABLE `student_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_fk` (`department_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `department_tb`
--
ALTER TABLE `department_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_tb`
--
ALTER TABLE `employee_tb`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seller_tb`
--
ALTER TABLE `seller_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `student_tb`
--
ALTER TABLE `student_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_tb`
--
ALTER TABLE `student_tb`
  ADD CONSTRAINT `student_tb_ibfk_1` FOREIGN KEY (`department_fk`) REFERENCES `department_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
