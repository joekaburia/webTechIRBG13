-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2016 at 09:28 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irb_application_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `irb_application`
--

CREATE TABLE `irb_application` (
  `APPLICATION_ID` int(11) NOT NULL,
  `APPLICANT_ID` int(11) NOT NULL,
  `TITLE_OF_PROJECT` varchar(300) NOT NULL,
  `PRINCIPAL_INVESTIGATOR` varchar(300) NOT NULL,
  `CO-PRINCIPAL_INVESTIGATOR` text NOT NULL,
  `SOURCES_OF_FINANCE` text NOT NULL,
  `REQUEST_FOR_EXEMPTION` text NOT NULL,
  `CHARACTERISTICS_OF_SUBJECTS` text NOT NULL,
  `SPECIAL_CASES` text NOT NULL,
  `METHOD_OF_RECRUITMENT` text NOT NULL,
  `EXTENT_OF_INFORMATION` text NOT NULL,
  `RESEARCH_METHOD` text NOT NULL,
  `DATA_SOURCES` text NOT NULL,
  `RESEARCH_INVOLVES` set('1','2','3','4','5','6') NOT NULL,
  `PROCEDURE_OF_RESEARCH` text NOT NULL,
  `CONFIDENTIALITY_OF_INFORMATION` text NOT NULL,
  `HANDLING_DATA` text NOT NULL,
  `DISSEMINATION_OF_DATA` text NOT NULL,
  `INFORMING_SUBJECT` text NOT NULL,
  `CONFIDENTIALITY_PROCEDURES` text NOT NULL,
  `PARTICIPANT_REWARD` text NOT NULL,
  `PARTICIPANT_BENEFITS` text NOT NULL,
  `RATIONALE_FOR_EXCLUSION` text NOT NULL,
  `APPLICATION_STATE` enum('SAVE','SUBMITTED') NOT NULL,
  `REVIEWER_STATUS` enum('PENDING_REVIEW','APPROVED','DENIED') NOT NULL,
  `ATTACHMENTS` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `irb_application`
--
ALTER TABLE `irb_application`
  ADD PRIMARY KEY (`APPLICATION_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `irb_application`
--
ALTER TABLE `irb_application`
  MODIFY `APPLICATION_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
