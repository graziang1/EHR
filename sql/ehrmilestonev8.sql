-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2020 at 09:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehrmilestone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE DATABASE IF NOT EXISTS `ehrmilestone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ehrmilestone`;

CREATE TABLE `admission` (
  `PAID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `date_of_admission` date NOT NULL,
  `hospital` varchar(150) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`PAID`, `PID`, `date_of_admission`, `hospital`, `reason`, `tov`) VALUES
(1, 1, '2020-09-16', 'Mount Sinai Hospital', 'Shortness of Breath', '00:00:00'),
(2, 2, '2020-02-19', 'Bellevue Hospital', 'Chest Pain', '00:00:00'),
(3, 3, '2019-09-26', 'Bellevue Hospital', 'Allergic Reaction', '00:00:00'),
(4, 4, '2020-01-02', 'NewYork-Presbyterian Lower Manhattan Hospital ', 'Infection', '00:00:00'),
(5, 5, '2019-07-18', 'Lenox Hill Hospital', 'Broken Bone', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `PBID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `adjustment` varchar(5000) NOT NULL,
  `amount_paid` varchar(500) NOT NULL,
  `posted_date` datetime NOT NULL,
  `balance` varchar(500) NOT NULL,
  `billing_status` varchar(500) NOT NULL,
  `payment_method` varchar(500) NOT NULL,
  `verify_payment` varchar(500) NOT NULL,
  `payment_receipt` varchar(500) NOT NULL,
  `notes` varchar(5000) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`PBID`, `PID`, `adjustment`, `amount_paid`, `posted_date`, `balance`, `billing_status`, `payment_method`, `verify_payment`, `payment_receipt`, `notes`, `tov`) VALUES
(1, 1, '$0.00', '$470.00', '2020-11-11 00:00:00', '$1360.00', 'Balance Due', 'Visa', 'Verified', 'Medical-Bill-Receipt.pdf', 'Appointment Charges', '00:00:00'),
(2, 2, '$0.00', '$75.00', '2020-11-14 00:00:00', '$250.00', 'Bill Insurance', 'Cash', 'Verified', 'Medical-Bill-Receipt.pdf', 'Office Visit Payment via Cash', '00:00:00'),
(3, 3, '$0.00', '$25.00', '2020-11-17 00:00:00', '$100.00', 'Internal Review', 'Mastercard', 'Verified', 'Medical-Bill-Receipt.pdf', 'Appointment Charges', '00:00:00'),
(4, 4, '$0.00', '$210.00', '2020-11-21 00:00:00', '$210.00', 'Settled', 'Credit Card', 'Verified', 'Medical-Bill-Receipt.pdf', 'Office Visit Payment via Credit Card', '00:00:00'),
(5, 5, '$0.00', '$870.00', '2020-11-21 00:00:00', '$2100.00', 'Auto Accident Claim', 'Check', 'Verified', 'Medical-Bill-Receipt.pdf', 'Appointment Charges', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `consent_forms`
--

CREATE TABLE `consent_forms` (
  `CFID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `dov` date NOT NULL,
  `type` varchar(500) NOT NULL,
  `consent_form` varchar(5000) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consent_forms`
--

INSERT INTO `consent_forms` (`CFID`, `PID`, `dov`, `type`, `consent_form`, `tov`) VALUES
(1, 1, '2020-11-03', 'HIPAA Data Use Agreement Fillable Form', 'consentform.pdf', '00:00:00'),
(2, 2, '2020-11-10', '--No Consent Form--', '', '00:00:00'),
(3, 3, '2020-11-21', 'HIPAA Data Use Agreement Fillable Form', 'consentform.pdf', '00:00:00'),
(4, 4, '2020-11-23', '--No Consent Form--', '', '00:00:00'),
(5, 5, '2020-11-17', 'HIPAA Data Use Agreement Sprint Delivery', 'consentform.pdf', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `dep_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DID`, `PID`, `dep_name`) VALUES
(1, 1, 'Teller'),
(2, 2, 'N/A'),
(3, 3, 'Field Operations'),
(4, 4, 'N/A'),
(5, 5, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_codes`
--

CREATE TABLE `diagnostic_codes` (
  `DCID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `icd_code` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `dov` date NOT NULL,
  `notes` varchar(500) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnostic_codes`
--

INSERT INTO `diagnostic_codes` (`DCID`, `PID`, `icd_code`, `description`, `dov`, `notes`, `tov`) VALUES
(1, 1, 'D64.9', 'Anemia, unspecified (Billable)', '2020-11-14', '', '00:00:00'),
(2, 2, 'E011.9', 'Type 2 diabetes mellitus w/o complications (Billable)', '2020-01-28', 'ICD-10_2nd_ed_volume2.pdf', '00:00:00'),
(3, 3, 'R05', 'Cough (Billable)', '2020-08-19', 'ICD-10_2nd_ed_volume2.pdf', '00:00:00'),
(4, 4, 'R51', 'Headache (Billable)', '2020-04-29', '', '00:00:00'),
(5, 5, 'G93.3', 'Postviral fatigue syndrome (Billable)', '2020-01-08', 'ICD-10_2nd_ed_volume2.pdf', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `EID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `DID` int(11) NOT NULL,
  `emp_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`EID`, `PID`, `DID`, `emp_name`) VALUES
(1, 1, 1, 'TD Bank'),
(2, 2, 2, 'unemployed'),
(3, 3, 3, 'Verizon'),
(4, 4, 4, 'Macy\'s'),
(5, 5, 5, 'HT Charter School');

-- --------------------------------------------------------

--
-- Table structure for table `genealogy`
--

CREATE TABLE `genealogy` (
  `GID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `ethnicity` varchar(150) NOT NULL,
  `nationality` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genealogy`
--

INSERT INTO `genealogy` (`GID`, `PID`, `ethnicity`, `nationality`) VALUES
(1, 1, 'Hispanic', 'Dominican'),
(2, 2, 'Japanese American', 'American'),
(3, 3, 'Hispanic', 'American'),
(4, 4, 'European', 'French'),
(5, 5, 'Not Hispanic or Latino', 'Jamaican');

-- --------------------------------------------------------

--
-- Table structure for table `injuries`
--

CREATE TABLE `injuries` (
  `IID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `dov` date NOT NULL,
  `hospital` varchar(200) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `injuries`
--

INSERT INTO `injuries` (`IID`, `PID`, `dov`, `hospital`, `reason`, `tov`) VALUES
(1, 1, '2020-11-08', 'No Previous Injuries', 'No Previous Injuries', '00:00:00'),
(2, 2, '2020-11-08', 'Bellevue Hospital', 'Vehicle Accident', '00:00:00'),
(3, 3, '2020-11-08', 'Bellevue Hospital', 'Fall', '00:00:00'),
(4, 4, '2020-11-08', 'No Previous Injuries', 'No Previous Injuries', '00:00:00'),
(5, 5, '2020-11-08', 'Lenox Hill Hospital', 'Sport Injury', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login_form`
--

CREATE TABLE `login_form` (
  `LFID` int(11) NOT NULL,
  `username` varchar(5000) NOT NULL,
  `password` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PID` int(11) NOT NULL,
  `f_name` varchar(150) NOT NULL,
  `m_name` varchar(150) NOT NULL,
  `l_name` varchar(150) NOT NULL,
  `p_name` varchar(150) NOT NULL,
  `mn_name` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `ss_number` varchar(11) NOT NULL,
  `GID` int(11) NOT NULL,
  `EID` int(11) NOT NULL,
  `address_one` varchar(150) NOT NULL,
  `address_two` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `phone_one` varchar(15) NOT NULL,
  `phone_two` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `ec_name` varchar(150) NOT NULL,
  `ec_number` varchar(150) NOT NULL,
  `ec_relationship` varchar(150) NOT NULL,
  `profile_picture` varchar(500) NOT NULL,
  `dov` datetime NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PID`, `f_name`, `m_name`, `l_name`, `p_name`, `mn_name`, `dob`, `marital_status`, `sex`, `ss_number`, `GID`, `EID`, `address_one`, `address_two`, `city`, `state`, `zip`, `phone_one`, `phone_two`, `email`, `ec_name`, `ec_number`, `ec_relationship`, `profile_picture`, `dov`, `tov`) VALUES
(1, 'Aliyah', 'S', 'Rodriguez', 'Aliyah', 'Rodriguez', '1995-10-13', 'Single', 'Female', '*****3329', 1, 1, '176 W 82nd St', '', 'New York City', 'New York', '10024', '849-339-9720', '995-533-9618', 'aliyahrodriguez1true@gmail.com', 'Mary Rodriguez', '202-555-0129', 'Mother', '', '0000-00-00 00:00:00', '00:00:00'),
(2, 'Allen', 'Stanley', 'Watson', 'Allen', 'Watson', '1984-07-19', 'Married', 'male', '*****5485', 2, 2, '135 Westwood Boulevard', '', 'Valley Stream', 'New York', '11580', '917-446-6631', '917-713-2200', 'allenwatson21@gmail.com', 'Mary Watson', '917-713-2200', 'Wife', '', '0000-00-00 00:00:00', '00:00:00'),
(3, 'Danielle', 'Orman', 'Williams', 'Danielle', 'Taylor', '1992-04-18', 'in_a_relationship', 'Female', '*****6781', 3, 3, '4589  Virginia Street', '', 'Yonkers', 'New York', '10470', '212-201-5478', '845-760-9113', 'danitaylorusa@gmail.com', 'Steve', '717-198-4439', 'Friend', '', '0000-00-00 00:00:00', '00:00:00'),
(4, 'Elena', '', 'Maxime', 'Elena', 'Maxime', '1980-01-16', 'Divorced', 'Female', '*****1417', 4, 4, '3176  Apple Lane', '', 'Wite Plains', 'New York', '11324', '717-443-5121', '', 'applelanejane@gmail.com', 'Jane', '443-487-6616', 'Aunt', '', '0000-00-00 00:00:00', '00:00:00'),
(5, 'Jaden', 'Avery', 'Williams', 'Jay', 'Williams', '1995-08-01', 'in_a_relationship', 'Male', '*****8802', 5, 5, '2202  Glory Road', '', 'New York City', 'New York', '10024', '845-111-9462', '845-617-4400', 'jsmith25@gmail.com', 'Kareem', '919-377-4000', 'Friend', '', '0000-00-00 00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_coverage`
--

CREATE TABLE `patient_coverage` (
  `PCID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `pr_policy_number` varchar(150) NOT NULL,
  `pr_group_number` varchar(150) NOT NULL,
  `pr_insurance_company` varchar(150) NOT NULL,
  `pr_subscriber` varchar(150) NOT NULL,
  `sec_policy_number` varchar(150) NOT NULL,
  `sec_group_number` varchar(150) NOT NULL,
  `sec_insurance_company` varchar(150) NOT NULL,
  `sec_subscriber` varchar(150) NOT NULL,
  `insurance_number` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_coverage`
--

INSERT INTO `patient_coverage` (`PCID`, `PID`, `pr_policy_number`, `pr_group_number`, `pr_insurance_company`, `pr_subscriber`, `sec_policy_number`, `sec_group_number`, `sec_insurance_company`, `sec_subscriber`, `insurance_number`) VALUES
(1, 1, '312-41-656', '7490105', 'Aetna', 'BADC45127834', 'N/A', 'N/A', 'N/A', 'N/A', 'ZGP123456789'),
(2, 2, '000-37-443', '4545221', 'Blue Cross', 'GGQW34000976', 'N/A', 'N/A', 'N/A', 'N/A', 'ZZZ987654032'),
(3, 3, '072-51-255', '5577700', 'Cigna', 'JBFR32000876', 'N/A', 'N/A', 'N/A', 'N/A', 'HYT923412132'),
(4, 4, '671-00-444', '3173127', 'WellCare', 'JFKK12000880', 'N/A', 'N/A', 'N/A', 'N/A', 'TXC192413100'),
(5, 5, '491-13-761', '0909833', 'Fidelis Care', 'TBDS12000070', 'N/A', 'N/A', 'N/A', 'N/A', 'DDG292007991');

-- --------------------------------------------------------

--
-- Table structure for table `patient_diagnosis`
--

CREATE TABLE `patient_diagnosis` (
  `PDID` int(11) NOT NULL,
  `DCID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `symptoms` varchar(1000) NOT NULL,
  `dov` date NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_diagnosis`
--

INSERT INTO `patient_diagnosis` (`PDID`, `DCID`, `PID`, `symptoms`, `dov`, `tov`) VALUES
(1, 1, 1, 'fever/chills', '2020-11-04', '00:00:00'),
(2, 2, 2, 'sorethroat', '2020-10-02', '00:00:00'),
(3, 3, 3, 'difficulty breathing', '2020-09-09', '00:00:00'),
(4, 4, 4, 'headaches', '2020-08-19', '00:00:00'),
(5, 5, 5, 'aching', '2020-07-23', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_history`
--

CREATE TABLE `patient_history` (
  `PHID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `PVID` int(11) NOT NULL,
  `PPID` int(11) NOT NULL,
  `PDID` int(11) NOT NULL,
  `PMID` int(11) NOT NULL,
  `PLID` int(11) NOT NULL,
  `PIID` int(11) NOT NULL,
  `PCID` int(11) NOT NULL,
  `PSID` int(11) NOT NULL,
  `PAID` int(11) NOT NULL,
  `POID` int(11) NOT NULL,
  `IID` int(11) NOT NULL,
  `dov` date NOT NULL,
  `status` varchar(150) NOT NULL,
  `notes` varchar(5000) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`PHID`, `PID`, `PVID`, `PPID`, `PDID`, `PMID`, `PLID`, `PIID`, `PCID`, `PSID`, `PAID`, `POID`, `IID`, `dov`, `status`, `notes`, `tov`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-09-16', 'In good health', 'immune to chicken pox', '00:00:00'),
(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2020-02-19', 'uncertain', 'not immune to chicken pox', '00:00:00'),
(3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, '2019-09-26', 'In good health', 'immune to measles', '00:00:00'),
(4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-11-08', 'Poor health', 'not immune to measles', '00:00:00'),
(5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2020-11-08', 'Excellent Health', 'immune to chicken pox and measles', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_immunization`
--

CREATE TABLE `patient_immunization` (
  `PIID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `dov` date NOT NULL,
  `dose` varchar(150) NOT NULL,
  `administered_by` varchar(150) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_immunization`
--

INSERT INTO `patient_immunization` (`PIID`, `PID`, `type`, `dov`, `dose`, `administered_by`, `tov`) VALUES
(1, 1, 'Influenza (Flu)', '2020-11-03', '1 dose annually', 'Melanie', '00:00:00'),
(2, 2, 'Varicella', '2020-11-03', '2 doses', 'Keisha', '00:00:00'),
(3, 3, 'Hepatitis B', '2020-11-03', '2 doses', 'Rodger', '00:00:00'),
(4, 4, 'HPV', '2020-11-06', '2 doses', 'Saleem', '00:00:00'),
(5, 5, 'PCV13', '2020-11-01', '1 dose', 'Abdul', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_labwork`
--

CREATE TABLE `patient_labwork` (
  `PLID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `dov` date NOT NULL,
  `type` varchar(150) NOT NULL,
  `test_results` varchar(500) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_labwork`
--

INSERT INTO `patient_labwork` (`PLID`, `PID`, `dov`, `type`, `test_results`, `tov`) VALUES
(1, 1, '2020-11-04', 'Blood Test Results', '', '00:00:00'),
(2, 2, '2020-06-26', 'COVID-19 Results', '', '00:00:00'),
(3, 3, '2020-07-09', 'COVID-19 Results', '', '00:00:00'),
(4, 4, '2020-07-29', 'Blood Test Results', '', '00:00:00'),
(5, 5, '2020-08-05', 'Blood Test Results', '', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_medication`
--

CREATE TABLE `patient_medication` (
  `PMID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `medication_name` varchar(150) NOT NULL,
  `dose` varchar(150) NOT NULL,
  `effect` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_medication`
--

INSERT INTO `patient_medication` (`PMID`, `PID`, `medication_name`, `dose`, `effect`) VALUES
(1, 1, 'Sudafed', '~ 8 tablets/day for certified timeframe', 'no issues'),
(2, 2, 'Tylenol Extra Strength', 'No more than 6 caplets in 24 hrs unless directed by a doctor', 'dizziness'),
(3, 3, 'Celexa', '20 mg PO qDay', 'dry mouth'),
(4, 4, 'Drisdol', '15 mcg/day ', 'sleepiness'),
(5, 5, 'Nyquil', '4 doses/day', 'sleepiness');

-- --------------------------------------------------------

--
-- Table structure for table `patient_operations`
--

CREATE TABLE `patient_operations` (
  `POID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `dov` date NOT NULL,
  `hospital` varchar(500) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_operations`
--

INSERT INTO `patient_operations` (`POID`, `PID`, `dov`, `hospital`, `reason`, `tov`) VALUES
(1, 1, '2020-09-10', 'N/A', 'N/A', '00:00:00'),
(2, 2, '2020-09-16', 'Bellevue Hospital', 'Remove tissue', '00:00:00'),
(3, 3, '2020-10-08', 'Bellevue Hospital', 'transplant', '00:00:00'),
(4, 4, '2020-11-03', 'N/A', 'N/A', '00:00:00'),
(5, 5, '2020-11-02', 'N/A', 'N/A', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_recommendation`
--

CREATE TABLE `patient_recommendation` (
  `PRID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `recommendation` varchar(5000) NOT NULL,
  `dov` date NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_recommendation`
--

INSERT INTO `patient_recommendation` (`PRID`, `PID`, `recommendation`, `dov`, `tov`) VALUES
(1, 1, 'try to quit smoking', '2020-11-04', '11:36:00'),
(2, 1, 'must quit smoking', '2020-11-29', '12:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_substance`
--

CREATE TABLE `patient_substance` (
  `PSID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `drugs` varchar(150) NOT NULL,
  `alcohol` varchar(150) NOT NULL,
  `smoking` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_substance`
--

INSERT INTO `patient_substance` (`PSID`, `PID`, `drugs`, `alcohol`, `smoking`) VALUES
(1, 1, 'No', 'Minor Consumption', 'Yes'),
(2, 2, 'No', 'No', 'No'),
(3, 3, 'Yes', 'No', 'Yes'),
(4, 4, 'No', 'Moderate Consumption', 'No'),
(5, 5, 'No', 'Moderate Consumption', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `patient_vitals`
--

CREATE TABLE `patient_vitals` (
  `PVID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `body_temperature` varchar(150) NOT NULL,
  `blood_pressure` varchar(150) NOT NULL,
  `breathing_rate` varchar(150) NOT NULL,
  `pulse_rate` varchar(150) NOT NULL,
  `dov` date NOT NULL,
  `tov` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_vitals`
--

INSERT INTO `patient_vitals` (`PVID`, `PID`, `body_temperature`, `blood_pressure`, `breathing_rate`, `pulse_rate`, `dov`, `tov`) VALUES
(1, 1, '103.1 degrees', '104/60', '12 bpm', '73 bpm', '0000-00-00', '00:00:00'),
(2, 2, '98.7 degrees', '87/59', '14 bpm', '61 bpm', '0000-00-00', '00:00:00'),
(3, 3, '100.2 degrees', '115/72', '13 bpm', '82 bpm', '0000-00-00', '00:00:00'),
(4, 4, '99.1 degrees', '102/58', '16 bpm', '77 bpm', '0000-00-00', '00:00:00'),
(5, 5, '98.4 degrees', '95/61', '12 bpm', '68 bpm', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `primary_physician`
--

CREATE TABLE `primary_physician` (
  `PPID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `dov` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `primary_physician`
--

INSERT INTO `primary_physician` (`PPID`, `PID`, `name`, `phone_number`, `dov`) VALUES
(1, 1, 'Dr Williams', '917-251-2888', '0000-00-00'),
(2, 2, 'Dr Owens', '914-231-8678', '0000-00-00'),
(3, 3, 'Dr Jenkins', '414-531-5648', '0000-00-00'),
(4, 4, 'Dr Harris', '845-131-9900', '0000-00-00'),
(5, 5, 'Dr Ahmed', '845-212-0010', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `User_Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`PAID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`PBID`);

--
-- Indexes for table `consent_forms`
--
ALTER TABLE `consent_forms`
  ADD PRIMARY KEY (`CFID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `diagnostic_codes`
--
ALTER TABLE `diagnostic_codes`
  ADD PRIMARY KEY (`DCID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `DID` (`DID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `genealogy`
--
ALTER TABLE `genealogy`
  ADD PRIMARY KEY (`GID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `injuries`
--
ALTER TABLE `injuries`
  ADD PRIMARY KEY (`IID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `login_form`
--
ALTER TABLE `login_form`
  ADD PRIMARY KEY (`LFID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `GID` (`GID`),
  ADD KEY `EID` (`EID`);

--
-- Indexes for table `patient_coverage`
--
ALTER TABLE `patient_coverage`
  ADD PRIMARY KEY (`PCID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `patient_diagnosis`
--
ALTER TABLE `patient_diagnosis`
  ADD PRIMARY KEY (`PDID`),
  ADD KEY `DCID` (`DCID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD PRIMARY KEY (`PHID`),
  ADD UNIQUE KEY `PSID` (`PSID`),
  ADD KEY `PID` (`PID`),
  ADD KEY `PVID` (`PVID`),
  ADD KEY `PPPID` (`PPID`),
  ADD KEY `PDID` (`PDID`),
  ADD KEY `PMID` (`PMID`),
  ADD KEY `PLID` (`PLID`),
  ADD KEY `PIID` (`PIID`),
  ADD KEY `PCID` (`PCID`),
  ADD KEY `PAID` (`PAID`),
  ADD KEY `POID` (`POID`),
  ADD KEY `PWID` (`IID`);

--
-- Indexes for table `patient_immunization`
--
ALTER TABLE `patient_immunization`
  ADD PRIMARY KEY (`PIID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `patient_labwork`
--
ALTER TABLE `patient_labwork`
  ADD PRIMARY KEY (`PLID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `patient_medication`
--
ALTER TABLE `patient_medication`
  ADD PRIMARY KEY (`PMID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `patient_operations`
--
ALTER TABLE `patient_operations`
  ADD PRIMARY KEY (`POID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `patient_recommendation`
--
ALTER TABLE `patient_recommendation`
  ADD PRIMARY KEY (`PRID`);

--
-- Indexes for table `patient_substance`
--
ALTER TABLE `patient_substance`
  ADD PRIMARY KEY (`PSID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `patient_vitals`
--
ALTER TABLE `patient_vitals`
  ADD PRIMARY KEY (`PVID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `primary_physician`
--
ALTER TABLE `primary_physician`
  ADD PRIMARY KEY (`PPID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Users_Types1_idx` (`User_Type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `PAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `PBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `consent_forms`
--
ALTER TABLE `consent_forms`
  MODIFY `CFID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `diagnostic_codes`
--
ALTER TABLE `diagnostic_codes`
  MODIFY `DCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `genealogy`
--
ALTER TABLE `genealogy`
  MODIFY `GID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `injuries`
--
ALTER TABLE `injuries`
  MODIFY `IID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login_form`
--
ALTER TABLE `login_form`
  MODIFY `LFID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `patient_coverage`
--
ALTER TABLE `patient_coverage`
  MODIFY `PCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient_diagnosis`
--
ALTER TABLE `patient_diagnosis`
  MODIFY `PDID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient_history`
--
ALTER TABLE `patient_history`
  MODIFY `PHID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient_immunization`
--
ALTER TABLE `patient_immunization`
  MODIFY `PIID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient_labwork`
--
ALTER TABLE `patient_labwork`
  MODIFY `PLID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patient_medication`
--
ALTER TABLE `patient_medication`
  MODIFY `PMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient_operations`
--
ALTER TABLE `patient_operations`
  MODIFY `POID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient_recommendation`
--
ALTER TABLE `patient_recommendation`
  MODIFY `PRID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_substance`
--
ALTER TABLE `patient_substance`
  MODIFY `PSID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient_vitals`
--
ALTER TABLE `patient_vitals`
  MODIFY `PVID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `primary_physician`
--
ALTER TABLE `primary_physician`
  MODIFY `PPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `department` (`DID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employer_ibfk_2` FOREIGN KEY (`EID`) REFERENCES `patient` (`EID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `genealogy`
--
ALTER TABLE `genealogy`
  ADD CONSTRAINT `genealogy_ibfk_1` FOREIGN KEY (`GID`) REFERENCES `patient` (`GID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD CONSTRAINT `patient_history_ibfk_10` FOREIGN KEY (`PMID`) REFERENCES `patient_medication` (`PMID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_11` FOREIGN KEY (`PLID`) REFERENCES `patient_labwork` (`PLID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_12` FOREIGN KEY (`PIID`) REFERENCES `patient_immunization` (`PIID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_13` FOREIGN KEY (`PCID`) REFERENCES `patient_coverage` (`PCID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_14` FOREIGN KEY (`POID`) REFERENCES `patient_operations` (`POID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_2` FOREIGN KEY (`PAID`) REFERENCES `admission` (`PAID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_3` FOREIGN KEY (`IID`) REFERENCES `injuries` (`IID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_5` FOREIGN KEY (`PSID`) REFERENCES `patient_substance` (`PSID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_6` FOREIGN KEY (`PID`) REFERENCES `patient` (`PID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_7` FOREIGN KEY (`PPID`) REFERENCES `primary_physician` (`PPID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_8` FOREIGN KEY (`PVID`) REFERENCES `patient_vitals` (`PVID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_history_ibfk_9` FOREIGN KEY (`PDID`) REFERENCES `patient_diagnosis` (`PDID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `fk_EX_Fall_2020_Users_Types1` FOREIGN KEY (`User_Type`) REFERENCES `EX_Fall_2020_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
