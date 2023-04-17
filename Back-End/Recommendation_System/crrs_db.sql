-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 04:37 PM
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
-- Table structure for table `course_information`
--

CREATE TABLE `course_information` (
  `CID` int(255) NOT NULL,
  `FIELD` varchar(255) NOT NULL,
  `ACRONYM` varchar(255) NOT NULL,
  `COURSE_NAME` varchar(255) NOT NULL,
  `INFORMATION` varchar(255) NOT NULL,
  `HEADER_PICTURE` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_information`
--

INSERT INTO `course_information` (`CID`, `FIELD`, `ACRONYM`, `COURSE_NAME`, `INFORMATION`, `HEADER_PICTURE`, `DATE`) VALUES
(1, 'Formal Sciences ', 'BSIT', 'Bachelor of Science in Computer Science ', 'Focuses on the study of computer systems and the development of computer software and hardware.', '2.jpg', '02/02/02'),
(2, 'Humanities ', 'HUMSS', 'Bachelor of Fine Arts Major in Industrial Design ', 'Explores fundamental questions about knowledge, existence, ethics, and the nature of reality through critical thinking and analysis.', '1.jpg', '02/03/04');

-- --------------------------------------------------------

--
-- Table structure for table `course_information_job`
--

CREATE TABLE `course_information_job` (
  `CIJID` int(11) NOT NULL,
  `JOB_NAME` varchar(255) NOT NULL,
  `INFORMATION` varchar(255) NOT NULL,
  `CID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_information_job`
--

INSERT INTO `course_information_job` (`CIJID`, `JOB_NAME`, `INFORMATION`, `CID`) VALUES
(11, 'Engineer', 'Electricity blabla', '1'),
(12, 'Scientist', 'Icascsacsac', '2');

-- --------------------------------------------------------

--
-- Table structure for table `eq_english`
--

CREATE TABLE `eq_english` (
  `EQEID` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` int(255) NOT NULL,
  `Choice_B` int(255) NOT NULL,
  `Choice_C` int(255) NOT NULL,
  `Choice_D` int(255) NOT NULL,
  `Choice_E` int(255) NOT NULL,
  `Choice_F` int(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `EID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eq_math`
--

CREATE TABLE `eq_math` (
  `EQMID` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` int(255) NOT NULL,
  `Choice_B` int(255) NOT NULL,
  `Choice_C` int(255) NOT NULL,
  `Choice_D` int(255) NOT NULL,
  `Choice_E` int(255) NOT NULL,
  `ChoiceF` int(255) NOT NULL,
  `Answer` int(255) NOT NULL,
  `EID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eq_reading_comprehension`
--

CREATE TABLE `eq_reading_comprehension` (
  `EQRCID` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` int(255) NOT NULL,
  `Choice_B` int(255) NOT NULL,
  `Choice_C` int(255) NOT NULL,
  `Choice_D` int(255) NOT NULL,
  `Choice_E` int(255) NOT NULL,
  `Choice_F` int(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `EID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eq_science`
--

CREATE TABLE `eq_science` (
  `EQSID` int(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Choice_A` int(255) NOT NULL,
  `Choice_B` int(255) NOT NULL,
  `Choice_C` int(255) NOT NULL,
  `Choice_D` int(255) NOT NULL,
  `Choice_E` int(255) NOT NULL,
  `Choice_F` int(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `EID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exams_form`
--

CREATE TABLE `exams_form` (
  `EFID` int(11) NOT NULL,
  `EID` int(255) NOT NULL,
  `IAFID` int(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam_informations`
--

CREATE TABLE `exam_informations` (
  `EID` int(11) NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `MATH_TOTAL_ITEM` varchar(255) NOT NULL,
  `ENGLISH_TOTAL_ITEM` varchar(255) NOT NULL,
  `SCIENCE_TOTAL_ITEM` varchar(255) NOT NULL,
  `READING_COMPREHENSION_TOTAL_ITEM` varchar(255) NOT NULL,
  `TOTAL_ITEM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `ERID` int(11) NOT NULL,
  `MATH_SCORE` int(255) NOT NULL,
  `ENGLISH_SCORE` int(255) NOT NULL,
  `SCIENCE_SCORE` int(255) NOT NULL,
  `READING_COMPREHENSION_SCORE` int(255) NOT NULL,
  `TOTAL_SCORE` int(255) NOT NULL,
  `EXAM_RESULT` varchar(255) NOT NULL,
  `LRN` int(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`ERID`, `MATH_SCORE`, `ENGLISH_SCORE`, `SCIENCE_SCORE`, `READING_COMPREHENSION_SCORE`, `TOTAL_SCORE`, `EXAM_RESULT`, `LRN`, `DATE`) VALUES
(1, 10, 10, 10, 10, 30, 'PASSED', 2147483647, '01/02/03');

-- --------------------------------------------------------

--
-- Table structure for table `ia_informations`
--

CREATE TABLE `ia_informations` (
  `IAFID` int(11) NOT NULL,
  `TOTAL_ITEMS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ia_questions`
--

CREATE TABLE `ia_questions` (
  `IAQID` int(11) NOT NULL,
  `Question` int(11) NOT NULL,
  `IAIID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `IID` int(11) NOT NULL,
  `INTRUCTION` varchar(255) NOT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `EEID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `interest_assessment_result`
--

CREATE TABLE `interest_assessment_result` (
  `IARID` int(11) NOT NULL,
  `REALISTIC_SCORE` int(255) NOT NULL,
  `INVESTIGATIVE_SCORE` int(255) NOT NULL,
  `ARTISTIC_SCORE` int(255) NOT NULL,
  `SOCIAL_SCORE` int(255) NOT NULL,
  `ENTERPRISING_SCORE` int(255) NOT NULL,
  `CONVENTIONAL_SCORE` int(255) NOT NULL,
  `IA_RESULT` varchar(255) NOT NULL,
  `LRN` int(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interest_assessment_result`
--

INSERT INTO `interest_assessment_result` (`IARID`, `REALISTIC_SCORE`, `INVESTIGATIVE_SCORE`, `ARTISTIC_SCORE`, `SOCIAL_SCORE`, `ENTERPRISING_SCORE`, `CONVENTIONAL_SCORE`, `IA_RESULT`, `LRN`, `DATE`) VALUES
(1, 10, 9, 10, 10, 8, 10, 'F AND B', 2147483647, '01/02/2003');

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
-- Table structure for table `overall_result`
--

CREATE TABLE `overall_result` (
  `RID` int(255) NOT NULL,
  `ERID` int(255) NOT NULL,
  `IARID` int(255) NOT NULL,
  `RECOMMENDED_COURSE` varchar(255) NOT NULL,
  `RESULT_STATUS` varchar(255) NOT NULL,
  `LRN` int(255) NOT NULL,
  `DATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `overall_result`
--

INSERT INTO `overall_result` (`RID`, `ERID`, `IARID`, `RECOMMENDED_COURSE`, `RESULT_STATUS`, `LRN`, `DATE`) VALUES
(1, 2, 3, 'BSIT', 'PASSED', 2147483647, '01/01/2003');

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
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `LRN` varchar(14) NOT NULL,
  `STUDENT_FIRSTNAME` varchar(255) NOT NULL,
  `STUDENT_LASTNAME` varchar(255) NOT NULL,
  `EMAIL_ADDRESS` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `SHS_TRACK` varchar(255) NOT NULL,
  `EXAM_STATUS` varchar(255) NOT NULL,
  `ACCOUNT_STATUS` varchar(250) NOT NULL,
  `ACCOUNT_CREATED` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`LRN`, `STUDENT_FIRSTNAME`, `STUDENT_LASTNAME`, `EMAIL_ADDRESS`, `PASSWORD`, `SHS_TRACK`, `EXAM_STATUS`, `ACCOUNT_STATUS`, `ACCOUNT_CREATED`) VALUES
('123456789012', 'Karl', 'James', 'Karl.james09@gmail.com', 'password', '', 'Exam Not Taken', 'Active', '02/23/22'),
('2147483647', 'Francis', 'Antonio', 'francis.antonio@gmail.com', 'kimmyncsc', '', 'Exam Not Taken', 'Active', '01/02/03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_information`
--
ALTER TABLE `course_information`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `course_information_job`
--
ALTER TABLE `course_information_job`
  ADD PRIMARY KEY (`CIJID`);

--
-- Indexes for table `exams_form`
--
ALTER TABLE `exams_form`
  ADD PRIMARY KEY (`EFID`);

--
-- Indexes for table `exam_informations`
--
ALTER TABLE `exam_informations`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`ERID`);

--
-- Indexes for table `ia_informations`
--
ALTER TABLE `ia_informations`
  ADD PRIMARY KEY (`IAFID`);

--
-- Indexes for table `ia_questions`
--
ALTER TABLE `ia_questions`
  ADD PRIMARY KEY (`IAQID`);

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`IID`);

--
-- Indexes for table `interest_assessment_result`
--
ALTER TABLE `interest_assessment_result`
  ADD PRIMARY KEY (`IARID`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`LRN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_information`
--
ALTER TABLE `course_information`
  MODIFY `CID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_information_job`
--
ALTER TABLE `course_information_job`
  MODIFY `CIJID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exam_informations`
--
ALTER TABLE `exam_informations`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_result`
--
ALTER TABLE `exam_result`
  MODIFY `ERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `IID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interest_assessment_result`
--
ALTER TABLE `interest_assessment_result`
  MODIFY `IARID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
