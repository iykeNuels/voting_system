-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 03:08 PM
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
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`, `aname`) VALUES
(1, 'ike6331@gmail.com', '247Emmanuel@', 'admin'),
(2, 'ike6331@gmail.com', '247Emmanuel@', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `enrollid` varchar(40) DEFAULT NULL,
  `approve_status` int(11) DEFAULT 0 COMMENT '0 for pending , 1 for approve 2 for reject'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(32, ' Ike blessing', 'iyke@gmail.com', 8163288762, 'Treasurer', 3, '1990', 1),
(33, 'Ike Emmanuel', 'ike6331@gmail.com', 7035573536, 'Class Representative', 1, '12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_2nd`
--

CREATE TABLE `candidate_2nd` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(200) DEFAULT NULL,
  `approve_status` int(20) DEFAULT 0 COMMENT '0 for pending , 1 for approve 2 for reject'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_3rd`
--

CREATE TABLE `candidate_3rd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(40) DEFAULT NULL,
  `approve_status` int(11) DEFAULT 0 COMMENT '	0 for pending , 1 for approve 2 for reject'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidate_3rd`
--

INSERT INTO `candidate_3rd` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(6, 'Ike Emmanuel', 'ike6331@gmail.com', 7035573536, 'Class Representative', 1, '2003', 1),
(7, 'Ike chichebe', 'iyke21@gmail.com', 912345765, 'Deputy Class Representative', 2, '54321', 1),
(8, 'iyke Nuels', 'iyke21@gmail.com', 9143354656, 'D.O.G', 4, '54321', 1),
(9, 'Mitchel Okereke', 'oluoma@gmail.com', 7036107920, 'P.R.O 1', 6, '54321', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_4th`
--

CREATE TABLE `candidate_4th` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(40) DEFAULT NULL,
  `approve_status` int(11) DEFAULT 0 COMMENT '0 for pending, 1 for approve, 2 for reject'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidate_4th`
--

INSERT INTO `candidate_4th` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(0, 'Ike Emmanuel', 'ike6331@gmail.com', 7035573536, 'Class Representative', 1, '2003', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 'nothing'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `suggestion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `name`, `email`, `number`, `rollno`, `suggestion`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 9898, 651, 'Nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` text DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(36, 'Emeka', 'eme@gmail.com', 'treasurer', 9124456566, 'Ike blessing', 3, 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users_2nd`
--

CREATE TABLE `users_2nd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_3rd`
--

CREATE TABLE `users_3rd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(60) DEFAULT NULL,
  `number` bigint(30) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_3rd`
--

INSERT INTO `users_3rd` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(3, ' Ike blessing', 'oluoma@gmail.com', 'Class Representative', 7035573536, '--------Select--------', 1, 'nothing'),
(4, 'nnanna', 'nnana@gmail.com', 'Deputy class rep', 9043552425, 'Ike chichebe', 2, 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users_4th`
--

CREATE TABLE `users_4th` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(60) DEFAULT NULL,
  `number` bigint(30) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_2nd`
--
ALTER TABLE `candidate_2nd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_3rd`
--
ALTER TABLE `candidate_3rd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_2nd`
--
ALTER TABLE `users_2nd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_3rd`
--
ALTER TABLE `users_3rd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `candidate_2nd`
--
ALTER TABLE `candidate_2nd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidate_3rd`
--
ALTER TABLE `candidate_3rd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users_2nd`
--
ALTER TABLE `users_2nd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_3rd`
--
ALTER TABLE `users_3rd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
