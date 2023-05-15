-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 11:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `Id` int(3) NOT NULL,
  `Language` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`Id`, `Language`) VALUES
(1, 'English'),
(2, 'Yoruba'),
(3, 'Hausa'),
(4, 'Efik'),
(5, 'Ibibio'),
(6, 'Esan'),
(7, 'Benin'),
(8, 'Tiv'),
(9, 'Nupe'),
(10, 'Kanuri'),
(11, 'Higgi'),
(12, 'Bura'),
(13, 'Glavda'),
(14, 'Urhobo'),
(15, 'Itsekiri'),
(16, 'Jukun'),
(17, 'Kilba'),
(18, 'Kare Kare'),
(19, 'Bachama'),
(20, 'Waha');

-- --------------------------------------------------------

--
-- Table structure for table `userrecords`
--

CREATE TABLE `userrecords` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Gender` enum('Male','Female','Other') NOT NULL,
  `Language` varchar(20) NOT NULL,
  `ZipCode` int(6) NOT NULL,
  `About` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userrecords`
--

INSERT INTO `userrecords` (`Id`, `Name`, `Email`, `Password`, `PhoneNumber`, `Gender`, `Language`, `ZipCode`, `About`) VALUES
(1, 'Samuel Peter', 'samuelpeter@gmail.com', '66666777', 2147483647, 'Male', 'English', 666666, 'A genius'),
(2, 'Clement Samuel', 'clementgoodness16@gmail.com', '77777779yhijhk', 2147483647, 'Male', 'Hausa', 666667, 'A CS major'),
(3, 'Clement Samuel', 'clementgoodness16@gmail.com', '77777779yhijhk', 2147483647, 'Male', 'Hausa', 666667, 'A CS major'),
(4, 'Clement Samuel', 'clementgoodness16@gmail.com', '77777779yhijhk', 2147483647, 'Male', 'Hausa', 666667, 'A CS major'),
(5, 'Clement Samuel', 'clementgoodness16@gmail.com', '77777779yhijhk', 2147483647, 'Male', 'Hausa', 666667, 'A CS major'),
(6, 'Clement Samuel', 'clementgoodness16@gmail.com', '77777779yhijhk', 2147483647, 'Male', 'Hausa', 666667, 'A CS major'),
(7, 'Clement Samuel', 'clementgoodness16@gmail.com', '77777779yhijhk', 2147483647, 'Male', 'Hausa', 666667, 'A CS major'),
(8, 'Clement Samuel', 'clementgoodness16@gmail.com', '77777779yhijhk', 2147483647, 'Male', 'Hausa', 666667, 'A CS major'),
(9, 'Clement Samuel', 'clementgoodness16@gmail.com', '77777779yhijhk', 2147483647, 'Male', 'Hausa', 666667, 'A CS major'),
(10, 'Cassy James', 'cassyjames@gmail.com', 'cass77766', 2147483647, 'Female', 'Esan', 789654, 'A young lady who enj'),
(11, 'Cassy James', 'cassyjames@gmail.com', 'cass77766', 2147483647, 'Female', 'Esan', 789654, 'A young lady who enj'),
(12, 'Cassy James', 'cassyjames@gmail.com', 'cass77766', 2147483647, 'Female', 'Esan', 789654, 'A young lady who enj'),
(13, 'Philip Simeon', 'philipsimeon44@gmail.com', 'ps4388hh', 2147483647, 'Male', 'Tiv', 555557, 'A data analyst ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userrecords`
--
ALTER TABLE `userrecords`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userrecords`
--
ALTER TABLE `userrecords`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
