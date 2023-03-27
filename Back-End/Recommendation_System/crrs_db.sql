-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 04:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crrs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credential`
--

CREATE TABLE `admin_credential` (
  `admin_no` int(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_info`
--

CREATE TABLE `course_info` (
  `CID` int(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Course_name` varchar(255) NOT NULL,
  `Information` varchar(255) NOT NULL,
  `header_pic` int(255) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_info_job`
--

CREATE TABLE `course_info_job` (
  `CPJID` int(255) NOT NULL,
  `Job_name` varchar(255) NOT NULL,
  `Information` varchar(255) NOT NULL,
  `CID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eeq_english`
--

CREATE TABLE `eeq_english` (
  `EEQID` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` int(255) NOT NULL,
  `Choice_B` int(255) NOT NULL,
  `Choice_C` int(255) NOT NULL,
  `Choice_D` int(255) NOT NULL,
  `Choice_E` int(255) NOT NULL,
  `Choice_F` int(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `EEID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eeq_math`
--

CREATE TABLE `eeq_math` (
  `EEQID` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` int(255) NOT NULL,
  `Choice_B` int(255) NOT NULL,
  `Choice_C` int(255) NOT NULL,
  `Choice_D` int(255) NOT NULL,
  `Choice_E` int(255) NOT NULL,
  `ChoiceF` int(255) NOT NULL,
  `Answer` int(255) NOT NULL,
  `EEID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eeq_reading_comp`
--

CREATE TABLE `eeq_reading_comp` (
  `EEQID` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` int(255) NOT NULL,
  `Choice_B` int(255) NOT NULL,
  `Choice_C` int(255) NOT NULL,
  `Choice_D` int(255) NOT NULL,
  `Choice_E` int(255) NOT NULL,
  `Choice_F` int(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `EEID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eeq_science`
--

CREATE TABLE `eeq_science` (
  `EEQID` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` int(255) NOT NULL,
  `Choice_B` int(255) NOT NULL,
  `Choice_C` int(255) NOT NULL,
  `Choice_D` int(255) NOT NULL,
  `Choice_E` int(255) NOT NULL,
  `Choice_F` int(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `EEID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `entrance_exam`
--

CREATE TABLE `entrance_exam` (
  `EEID` int(255) NOT NULL,
  `Math_total_item` int(255) NOT NULL,
  `English_total_item` int(255) NOT NULL,
  `Science_total_item` int(255) NOT NULL,
  `History_total_item` int(255) NOT NULL,
  `Total_item` int(255) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `entrance_exam_result`
--

CREATE TABLE `entrance_exam_result` (
  `EERID` int(255) NOT NULL,
  `Math` int(255) NOT NULL,
  `English` int(255) NOT NULL,
  `Science` int(255) NOT NULL,
  `History` int(255) NOT NULL,
  `Total_score` int(255) NOT NULL,
  `Result` varchar(255) NOT NULL,
  `Student_no` int(255) NOT NULL,
  `Date` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `interest_nfo`
--

CREATE TABLE `interest_nfo` (
  `IID` int(255) NOT NULL,
  `Interest` varchar(255) NOT NULL,
  `Information` varchar(255) NOT NULL,
  `Date` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `interest_result`
--

CREATE TABLE `interest_result` (
  `IID` int(255) NOT NULL,
  `Interest` varchar(255) NOT NULL,
  `Student_num` int(255) NOT NULL,
  `Date` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `overall_result`
--

CREATE TABLE `overall_result` (
  `RID` int(255) NOT NULL,
  `EERID` int(255) NOT NULL,
  `IRID` int(255) NOT NULL,
  `Recommended_course` varchar(255) NOT NULL,
  `Student_number` int(255) NOT NULL,
  `Date` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `Picture_ID` int(255) NOT NULL,
  `Image` int(255) NOT NULL,
  `CPJID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `Student_no` int(255) NOT NULL,
  `Student_name` varchar(255) NOT NULL,
  `LRN` int(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `SHS_track` varchar(255) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Acount_status` varchar(255) NOT NULL,
  `Exam_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `STUDENT_NO` int(11) NOT NULL,
  `STUDENT_FIRSTNAME` varchar(255) NOT NULL,
  `STUDENT_LASTNAME` varchar(255) NOT NULL,
  `LRN` varchar(14) NOT NULL,
  `EMAIL_ADDRESS` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `SHS_TRACK` varchar(255) NOT NULL,
  `EXAM_STATUS` varchar(255) NOT NULL,
  `ACCOUNT_CREATED` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`STUDENT_NO`, `STUDENT_FIRSTNAME`, `STUDENT_LASTNAME`, `LRN`, `EMAIL_ADDRESS`, `PASSWORD`, `SHS_TRACK`, `EXAM_STATUS`, `ACCOUNT_CREATED`) VALUES
(14, 'Francis', 'Antonio', '111111111111', 'Francis.antonio0927@gmail.com', 'Antonio0927', '', 'Not taken yet', '2023-03-26'),
(15, 'Louie', 'Gabriel', '111111111133', 'cccaca@csaca.com', 'caccAAFS14', '', 'Not taken yet', '2023-03-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`Student_no`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`STUDENT_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `STUDENT_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
