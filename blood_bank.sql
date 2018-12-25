-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 25, 2018 at 08:53 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblblood_group`
--

CREATE TABLE IF NOT EXISTS `tblblood_group` (
  `ID` int(11) NOT NULL,
  `Blood_Group` varchar(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblood_group`
--

INSERT INTO `tblblood_group` (`ID`, `Blood_Group`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'AB+'),
(6, 'AB-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `tblhospital_bloodgroup_mapping`
--

CREATE TABLE IF NOT EXISTS `tblhospital_bloodgroup_mapping` (
  `ID` int(11) NOT NULL,
  `BloodGroup_Id` tinyint(1) DEFAULT NULL,
  `Hospital_Id` int(11) DEFAULT NULL,
  `Is_Deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhospital_bloodgroup_mapping`
--

INSERT INTO `tblhospital_bloodgroup_mapping` (`ID`, `BloodGroup_Id`, `Hospital_Id`, `Is_Deleted`) VALUES
(43, 3, 2, 0),
(44, 4, 3, 0),
(46, 4, 2, 0),
(47, 5, 3, 0),
(48, 1, 3, 0),
(50, 3, 2, 0),
(51, 2, 3, 0),
(60, 1, 6, 0),
(61, 2, 6, 0),
(62, 3, 6, 0),
(63, 4, 6, 0),
(64, 5, 6, 0),
(65, 6, 6, 0),
(66, 7, 6, 0),
(67, 8, 6, 0),
(71, 2, 1, 0),
(72, 3, 1, 0),
(73, 1, 7, 0),
(74, 3, 7, 0),
(75, 5, 7, 0),
(76, 6, 7, 0),
(77, 7, 7, 0),
(78, 1, 8, 0),
(79, 2, 8, 0),
(80, 3, 8, 0),
(81, 6, 8, 0),
(82, 7, 8, 0),
(83, 1, 9, 0),
(84, 2, 9, 0),
(85, 3, 9, 0),
(86, 1, 4, 0),
(87, 2, 4, 0),
(88, 3, 4, 0),
(89, 4, 4, 0),
(90, 5, 4, 0),
(94, 1, 11, 0),
(95, 2, 11, 0),
(96, 3, 11, 0),
(97, 4, 11, 0),
(98, 5, 11, 0),
(99, 6, 11, 0),
(100, 7, 11, 0),
(101, 8, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblhospital_users`
--

CREATE TABLE IF NOT EXISTS `tblhospital_users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `Modified_On` datetime DEFAULT NULL,
  `Is_Deleted` tinyint(1) DEFAULT NULL,
  `Role_Id` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhospital_users`
--

INSERT INTO `tblhospital_users` (`ID`, `Name`, `Email`, `Mobile`, `Password`, `Address`, `Created_On`, `Modified_On`, `Is_Deleted`, `Role_Id`) VALUES
(1, 'apollo', 'apollo@apollo.com', '9511115120', '5f4dcc3b5aa765d61d8327deb882cf99', 'Kanpur, UP', '2018-03-22 17:50:36', '2018-03-24 21:53:03', 0, 2),
(2, 'Cleveland Clinic', 'clinic@clinic.com', '6574125032', '5f4dcc3b5aa765d61d8327deb882cf99', 'UK', '2018-03-22 17:51:42', NULL, 0, 2),
(3, 'U CSF', 'ucsf@ucsf.com', '9541235478', '5f4dcc3b5aa765d61d8327deb882cf99', 'UK', '2018-03-22 17:52:46', NULL, 0, 2),
(4, 'Global', 'global@global.com', '8541254789', '5f4dcc3b5aa765d61d8327deb882cf99', 'Chennai', '2018-03-22 17:53:36', '2018-03-23 11:41:20', 0, 2),
(5, 'scriet ccs university meerut', 'medical@gmail.com', '9874521365', '5f4dcc3b5aa765d61d8327deb882cf99', 'baburihi ka pur(anikapur)\r\nsahaso', '2018-03-23 03:03:09', '2018-03-23 03:07:15', 0, 2),
(6, 'testing', 'testing@testing.com', '9856321455', '5f4dcc3b5aa765d61d8327deb882cf99', 'slakfj', '2018-03-24 11:20:48', NULL, 0, 2),
(7, 'trail', 'trail@trail.com', '8547236910', '5f4dcc3b5aa765d61d8327deb882cf99', 'asfsf', '2018-03-24 22:00:47', NULL, 0, 2),
(8, 'final', 'final@final.com', '4521698745', '5f4dcc3b5aa765d61d8327deb882cf99', 'alskdfjlsfjlj', '2018-03-24 22:32:10', '2018-03-24 22:36:04', 0, 2),
(9, 'hospi', 'hospi@hospi.com', '4123657854', '5f4dcc3b5aa765d61d8327deb882cf99', 'asklfjskdlfj', '2018-03-24 22:52:42', '2018-03-24 22:53:15', 0, 2),
(10, 'first hospital', 'first@email.com', '9889896098', '5f4dcc3b5aa765d61d8327deb882cf99', 'kanpur', '2018-12-25 07:47:02', NULL, 0, 2),
(11, 'mohit kumar sahu', 'mksahu23506@gmail.com', '8882971414', '5f4dcc3b5aa765d61d8327deb882cf99', '339 mughlahi\r\nlanka road', '2018-12-25 08:02:19', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblmstaccess`
--

CREATE TABLE IF NOT EXISTS `tblmstaccess` (
  `ID` int(11) NOT NULL,
  `Controller` varchar(100) DEFAULT NULL,
  `Action` varchar(100) DEFAULT NULL,
  `Is_Home` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotification`
--

CREATE TABLE IF NOT EXISTS `tblnotification` (
  `ID` int(11) NOT NULL,
  `Notify_From` int(11) DEFAULT NULL,
  `Notify_To` int(11) DEFAULT NULL,
  `Message` varchar(200) DEFAULT NULL,
  `Info` varchar(200) DEFAULT NULL,
  `Is_Viewed` tinyint(4) DEFAULT NULL,
  `Is_Deleted` tinyint(1) DEFAULT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=490 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotification`
--

INSERT INTO `tblnotification` (`ID`, `Notify_From`, `Notify_To`, `Message`, `Info`, `Is_Viewed`, `Is_Deleted`, `Created_By`, `Created_On`) VALUES
(1, 3, 1, 'DEEPAK is requesting for <b>A+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested  for A+ on 23-03-2018', 1, 0, 2, '2018-03-23 10:24:04'),
(2, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested U CSF for AB+ on 23-03-2018', 0, 1, 2, '2018-03-23 10:29:52'),
(3, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested apollo for A- on 23-03-2018', 0, 1, 2, '2018-03-23 10:30:21'),
(4, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested U CSF for AB+ on 23-03-2018', 1, 0, 2, '2018-03-23 11:36:33'),
(5, 2, 4, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested Global for A- on 23-03-2018', 1, 0, 2, '2018-03-23 11:36:51'),
(6, 2, 1, 'DEEPAK is requesting for <b>B+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>apollo</b> for <b>B+</b> on 23-03-2018', 1, 0, 2, '2018-03-23 11:38:46'),
(7, 2, 1, 'DEEPAK is requesting for <b>B+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>apollo</b> for <b>B+</b> on 23-03-2018', 1, 0, 2, '2018-03-23 11:39:03'),
(8, 2, 4, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>Global</b> for <b>AB+</b> on 23-03-2018', 1, 0, 2, '2018-03-23 11:40:29'),
(9, 2, 1, 'DEEPAK is requesting for <b>B+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>apollo</b> for <b>B+</b> on 23-03-2018', 1, 0, 2, '2018-03-23 13:53:20'),
(10, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 23-03-2018', 0, 0, 2, '2018-03-23 15:31:10'),
(11, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 23-03-2018', 0, 0, 2, '2018-03-23 16:22:29'),
(12, 2, 1, 'DEEPAK is requesting for <b>B+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 1, 0, 2, '2018-03-24 05:22:38'),
(13, 2, 1, 'DEEPAK is requesting for <b>B+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 05:22:53'),
(14, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 05:30:40'),
(15, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 11:10:09'),
(16, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 11:15:57'),
(17, 2, 1, 'DEEPAK is requesting for <b>B+ </b>blood group. Please contact user on <b>deepak@gmail.com or 8888457845</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 11:16:35'),
(18, 2, 1, 'DEEPAK is requesting for <b>B+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 12:01:33'),
(19, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:43'),
(20, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:43'),
(21, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:43'),
(22, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:43'),
(23, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:44'),
(24, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:44'),
(25, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:44'),
(26, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:44'),
(27, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:44'),
(28, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:41:45'),
(29, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:09'),
(30, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:09'),
(31, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:09'),
(32, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:09'),
(33, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:10'),
(34, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:10'),
(35, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:10'),
(36, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:10'),
(37, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:10'),
(38, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:11'),
(39, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:11'),
(40, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:11'),
(41, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:11'),
(42, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:11'),
(43, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:11'),
(44, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:12'),
(45, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:12'),
(46, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:12'),
(47, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:12'),
(48, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:12'),
(49, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:12'),
(50, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:13'),
(51, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:18'),
(52, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:18'),
(53, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:18'),
(54, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:18'),
(55, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:19'),
(56, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:19'),
(57, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:19'),
(58, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:19'),
(59, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:19'),
(60, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:20'),
(61, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:20'),
(62, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:50'),
(63, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:50'),
(64, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:50'),
(65, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:50'),
(66, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:51'),
(67, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:51'),
(68, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:51'),
(69, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:51'),
(70, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:51'),
(71, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:52'),
(72, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:42:52'),
(73, 5, 4, 'KUSAGRA is requesting for <b>B- </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>Global</b> for <b>B-</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:44:08'),
(74, 5, 6, 'KUSAGRA is requesting for <b>A+ </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>testing</b> for <b>A+</b> on 24-03-2018', 0, 0, 5, '2018-03-24 12:44:46'),
(75, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 12:47:44'),
(76, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 12:59:59'),
(77, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 12:59:59'),
(78, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:00:00'),
(79, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:00:00'),
(80, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:00:00'),
(81, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:00:00'),
(82, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:00:01'),
(83, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:00:01'),
(84, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:00:01'),
(85, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:00:01'),
(86, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:01:44'),
(87, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:51'),
(88, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 1, 0, 3, '2018-03-24 13:03:51'),
(89, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:52'),
(90, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:52'),
(91, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:52'),
(92, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:52'),
(93, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:52'),
(94, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:53'),
(95, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:53'),
(96, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:03:53'),
(97, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:13'),
(98, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:13'),
(99, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:13'),
(100, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:13'),
(101, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:14'),
(102, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:14'),
(103, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:14'),
(104, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:14'),
(105, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:14'),
(106, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:14'),
(107, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:15'),
(108, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:15'),
(109, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:15'),
(110, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:15'),
(111, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:15'),
(112, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:15'),
(113, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:16'),
(114, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:16'),
(115, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:16'),
(116, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:16'),
(117, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:16'),
(118, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:16'),
(119, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:22'),
(120, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:22'),
(121, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:22'),
(122, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:22'),
(123, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:22'),
(124, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:22'),
(125, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:23'),
(126, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:23'),
(127, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:23'),
(128, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:23'),
(129, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:23'),
(130, 3, 2, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:05:43'),
(131, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:44'),
(132, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:44'),
(133, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:44'),
(134, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:44'),
(135, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:45'),
(136, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:45'),
(137, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:45'),
(138, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:45'),
(139, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:45'),
(140, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:45'),
(141, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:46'),
(142, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:46'),
(143, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:46'),
(144, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:46'),
(145, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:46'),
(146, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:46'),
(147, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:47'),
(148, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:47'),
(149, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:47'),
(150, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:47'),
(151, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:48'),
(152, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:48'),
(153, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:53'),
(154, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:53'),
(155, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:53'),
(156, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:53'),
(157, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:54'),
(158, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:54'),
(159, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:54'),
(160, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:54'),
(161, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:54'),
(162, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:54'),
(163, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:10:54'),
(164, 3, 4, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Global</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:13:36'),
(165, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:40'),
(166, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:41'),
(167, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:41'),
(168, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:41'),
(169, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:41'),
(170, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:41'),
(171, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:41'),
(172, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:41'),
(173, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:42'),
(174, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:14:42'),
(175, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:42'),
(176, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:42'),
(177, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:42'),
(178, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:42'),
(179, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:43'),
(180, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:43'),
(181, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:43'),
(182, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:43'),
(183, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:43'),
(184, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:44'),
(185, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:44'),
(186, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:44'),
(187, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:44'),
(188, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:44'),
(189, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:44'),
(190, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:45'),
(191, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:45'),
(192, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:45'),
(193, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:45'),
(194, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:45'),
(195, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:45'),
(196, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:46'),
(197, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:51'),
(198, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:51'),
(199, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:51'),
(200, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:51'),
(201, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:51'),
(202, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:52'),
(203, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:52'),
(204, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:52'),
(205, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:15:53'),
(206, 3, 1, 'ANURAG is requesting for <b>A- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:15'),
(207, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:31'),
(208, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:31'),
(209, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:31'),
(210, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:31'),
(211, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:31'),
(212, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:32'),
(213, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:32'),
(214, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:32'),
(215, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:32'),
(216, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:33'),
(217, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:17:42'),
(218, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:50'),
(219, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:50'),
(220, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:50'),
(221, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:50'),
(222, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:50'),
(223, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:51'),
(224, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:51'),
(225, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:51'),
(226, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:51'),
(227, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:51'),
(228, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:51'),
(229, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:51'),
(230, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:52');
INSERT INTO `tblnotification` (`ID`, `Notify_From`, `Notify_To`, `Message`, `Info`, `Is_Viewed`, `Is_Deleted`, `Created_By`, `Created_On`) VALUES
(231, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:52'),
(232, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:52'),
(233, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:52'),
(234, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:52'),
(235, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:52'),
(236, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:53'),
(237, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:53'),
(238, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:53'),
(239, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:53'),
(240, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:55'),
(241, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:55'),
(242, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:55'),
(243, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:55'),
(244, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:56'),
(245, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:56'),
(246, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:56'),
(247, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:56'),
(248, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:56'),
(249, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:57'),
(250, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:57'),
(251, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:18:59'),
(252, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:00'),
(253, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:00'),
(254, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:00'),
(255, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:00'),
(256, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:00'),
(257, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:00'),
(258, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:01'),
(259, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:01'),
(260, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:01'),
(261, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:01'),
(262, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:04'),
(263, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:05'),
(264, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:05'),
(265, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:05'),
(266, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:05'),
(267, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:05'),
(268, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:05'),
(269, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:06'),
(270, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:06'),
(271, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:06'),
(272, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:06'),
(273, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:09'),
(274, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:09'),
(275, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:09'),
(276, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:10'),
(277, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:10'),
(278, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:10'),
(279, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:10'),
(280, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:10'),
(281, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:10'),
(282, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:11'),
(283, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:11'),
(284, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:16'),
(285, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:16'),
(286, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:16'),
(287, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:16'),
(288, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:17'),
(289, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:17'),
(290, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:17'),
(291, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:17'),
(292, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:17'),
(293, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:17'),
(294, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:18'),
(295, 3, 3, 'ANURAG is requesting for <b>AB+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:19:37'),
(296, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:39'),
(297, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:39'),
(298, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:39'),
(299, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:39'),
(300, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:39'),
(301, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:39'),
(302, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:39'),
(303, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(304, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(305, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(306, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(307, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(308, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(309, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(310, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(311, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(312, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:40'),
(313, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:41'),
(314, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:41'),
(315, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:21:41'),
(316, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:23'),
(317, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:24'),
(318, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:24'),
(319, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:24'),
(320, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:24'),
(321, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:24'),
(322, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:24'),
(323, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:24'),
(324, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:24'),
(325, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(326, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(327, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(328, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(329, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(330, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(331, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(332, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(333, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(334, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:25'),
(335, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:22:26'),
(336, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:35'),
(337, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:40'),
(338, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:40'),
(339, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:40'),
(340, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:41'),
(341, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:41'),
(342, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:41'),
(343, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:41'),
(344, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:41'),
(345, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:41'),
(346, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:41'),
(347, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:41'),
(348, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(349, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(350, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(351, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(352, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(353, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(354, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(355, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(356, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(357, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:42'),
(358, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(359, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(360, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(361, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(362, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(363, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(364, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(365, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(366, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:43'),
(367, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(368, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(369, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(370, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(371, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(372, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(373, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(374, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(375, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:44'),
(376, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:45'),
(377, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:45'),
(378, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:45'),
(379, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:50'),
(380, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:50'),
(381, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:50'),
(382, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:50'),
(383, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:50'),
(384, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:50'),
(385, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(386, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(387, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(388, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(389, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(390, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(391, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(392, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(393, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(394, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:51'),
(395, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:52'),
(396, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:52'),
(397, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:52'),
(398, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:52'),
(399, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:23:52'),
(400, 3, 1, 'ANURAG is requesting for <b>B+ </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 3, '2018-03-24 13:24:02'),
(401, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:24:18'),
(402, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:24:19'),
(403, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:24:19'),
(404, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:24:19'),
(405, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:24:19'),
(406, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:24:20'),
(407, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:24:20'),
(408, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(409, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(410, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(411, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(412, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(413, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(414, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(415, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(416, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:00'),
(417, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(418, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(419, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(420, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(421, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(422, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(423, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(424, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(425, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(426, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:01'),
(427, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:02'),
(428, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:02'),
(429, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:02'),
(430, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:02'),
(431, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:02'),
(432, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:02'),
(433, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:02'),
(434, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:02'),
(435, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(436, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(437, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(438, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(439, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(440, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(441, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(442, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(443, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(444, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:03'),
(445, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:04'),
(446, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:04'),
(447, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:04'),
(448, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:09'),
(449, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:09'),
(450, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:09'),
(451, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:09'),
(452, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:09'),
(453, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:09'),
(454, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(455, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(456, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(457, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(458, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(459, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10');
INSERT INTO `tblnotification` (`ID`, `Notify_From`, `Notify_To`, `Message`, `Info`, `Is_Viewed`, `Is_Deleted`, `Created_By`, `Created_On`) VALUES
(460, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(461, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(462, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(463, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(464, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:26:10'),
(465, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 13:44:17'),
(466, 2, 2, 'DEEPAK is requesting for <b>B- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 14:27:33'),
(467, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 14:35:38'),
(468, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 14:35:51'),
(469, 2, 3, 'DEEPAK is requesting for <b>AB+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>U CSF</b> for <b>AB+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 14:37:15'),
(470, 2, 1, 'DEEPAK is requesting for <b>A- </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 0, 0, 2, '2018-03-24 15:28:09'),
(471, 2, 2, 'DEEPAK is requesting for <b>B+ </b>blood group. Please contact user on <b>deepak@gmail.com or 6541258965</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 24-03-2018', 0, 0, 2, '2018-03-24 21:52:42'),
(472, 11, 1, 'FINAL is requesting for <b>A- </b>blood group. Please contact user on <b>final@final.com or 4512369870</b>', 'You requested <b>apollo</b> for <b>A-</b> on 24-03-2018', 1, 0, 11, '2018-03-24 22:31:29'),
(473, 11, 1, 'FINAL is requesting for <b>B+ </b>blood group. Please contact user on <b>final@final.com or 4512369870</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 11, '2018-03-24 22:37:05'),
(474, 11, 8, 'FINAL is requesting for <b>B+ </b>blood group. Please contact user on <b>final@final.com or 4512369870</b>', 'You requested <b>final</b> for <b>B+</b> on 24-03-2018', 0, 0, 11, '2018-03-24 22:38:38'),
(475, 3, 2, 'ANURAG is requesting for <b>B- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 22:51:53'),
(476, 3, 2, 'ANURAG is requesting for <b>B- </b>blood group. Please contact user on <b>anurag@gmail.com or 9654751254</b>', 'You requested <b>Cleveland Clinic</b> for <b>B-</b> on 24-03-2018', 0, 0, 3, '2018-03-24 22:52:03'),
(477, 5, 1, 'KUSAGRA is requesting for <b>B+ </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 5, '2018-03-24 22:59:15'),
(478, 5, 1, 'KUSAGRA is requesting for <b>B+ </b>blood group. Please contact user on <b>kusagra@gmail.com or 8496587452</b>', 'You requested <b>apollo</b> for <b>B+</b> on 24-03-2018', 0, 0, 5, '2018-03-24 23:10:47'),
(479, 14, 2, 'MOHIT KUMAR SAHU is requesting for <b>B+ </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 25-12-2018', 1, 0, 14, '2018-12-25 08:00:02'),
(480, 14, NULL, 'MOHIT KUMAR SAHU is requesting for <b> </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b></b> for <b></b> on 25-12-2018', 1, 0, 14, '2018-12-25 08:30:27'),
(481, 14, 2, 'MOHIT KUMAR SAHU is requesting for <b>B+ </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>Cleveland Clinic</b> for <b>B+</b> on 25-12-2018', 0, 0, 14, '2018-12-25 08:30:37'),
(482, 14, NULL, 'MOHIT KUMAR SAHU is requesting for <b> </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b></b> for <b></b> on 25-12-2018', 0, 0, 14, '2018-12-25 08:32:29'),
(483, 14, 11, 'MOHIT KUMAR SAHU is requesting for <b>AB- </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>mohit kumar sahu</b> for <b>AB-</b> on 25-12-2018', 1, 0, 14, '2018-12-25 08:42:55'),
(484, 14, 1, 'MOHIT KUMAR SAHU is requesting for <b>A- </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>apollo</b> for <b>A-</b> on 25-12-2018', 0, 0, 14, '2018-12-25 08:43:05'),
(485, 14, 1, 'MOHIT KUMAR SAHU is requesting for <b>A- </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>apollo</b> for <b>A-</b> on 25-12-2018', 0, 0, 14, '2018-12-25 08:43:07'),
(486, 14, 1, 'MOHIT KUMAR SAHU is requesting for <b>A- </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>apollo</b> for <b>A-</b> on 25-12-2018', 0, 0, 14, '2018-12-25 08:43:09'),
(487, 14, 11, 'MOHIT KUMAR SAHU is requesting for <b>AB- </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>mohit kumar sahu</b> for <b>AB-</b> on 25-12-2018', 1, 0, 14, '2018-12-25 08:43:39'),
(488, 14, 11, 'MOHIT KUMAR SAHU is requesting for <b>AB- </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>mohit kumar sahu</b> for <b>AB-</b> on 25-12-2018', 0, 0, 14, '2018-12-25 08:44:09'),
(489, 14, 11, 'MOHIT KUMAR SAHU is requesting for <b>AB- </b>blood group. Please contact user on <b>mksahu23506@gmail.com or 8882971414</b>', 'You requested <b>mohit kumar sahu</b> for <b>AB-</b> on 25-12-2018', 1, 0, 14, '2018-12-25 08:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermissions`
--

CREATE TABLE IF NOT EXISTS `tblpermissions` (
  `ID` int(11) NOT NULL,
  `Role_Id` tinyint(1) DEFAULT NULL COMMENT '1-Admin, 2-Hospitals, 2-Receivers',
  `Controller` varchar(100) DEFAULT NULL,
  `Action` varchar(100) DEFAULT NULL,
  `Is_Home` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpermissions`
--

INSERT INTO `tblpermissions` (`ID`, `Role_Id`, `Controller`, `Action`, `Is_Home`) VALUES
(1, 2, 'Dashboard', 'Index', 1),
(2, 3, 'Dashboard', 'index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Blood_Group` tinyint(1) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `Modified_On` datetime DEFAULT NULL,
  `Is_Deleted` tinyint(1) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Role_Id` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `Name`, `Email`, `Mobile`, `Blood_Group`, `Created_On`, `Modified_On`, `Is_Deleted`, `Password`, `Role_Id`) VALUES
(1, 'mohit', 'mohit@gmail.com', '9654123578', 5, '2018-03-22 17:44:36', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(2, 'deepak', 'deepak@gmail.com', '6541258965', 1, '2018-03-22 17:45:34', '2018-03-24 11:16:45', 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(3, 'anurag', 'anurag@gmail.com', '9654751254', 8, '2018-03-22 17:46:03', '2018-03-24 22:52:06', 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(4, 'saurabh', 'saurabh@gmail.com', '6547854123', 7, '2018-03-22 17:47:26', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(5, 'kusagra', 'kusagra@gmail.com', '8496587452', 2, '2018-03-22 17:47:55', '2018-03-24 22:59:22', 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(6, 'all_inone', 'all@all.com', '5265748542', 2, '2018-03-24 14:08:56', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(7, 'check', 'check@check.com', '5412369874', 2, '2018-03-24 14:17:40', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(8, 'verify', 'verify@verify.com', '6574589712', 3, '2018-03-24 15:28:55', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(9, 'testVal', 'testVal@testVal.com', '4512975412', 5, '2018-03-24 15:32:06', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(10, 'valtest', 'valtest@valtest.com', '1452368745', 5, '2018-03-24 15:32:46', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(11, 'final', 'final@final.com', '4512369870', 5, '2018-03-24 22:30:56', '2018-03-24 22:37:03', 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(12, 'final_test', 'test_final@gmail.com', '8541203210', 2, '2018-03-24 22:51:41', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(13, 'nothing', 'nothisn@gml.klj', '9457984103', 3, '2018-03-24 22:59:00', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3),
(14, 'mohit kumar sahu', 'mksahu23506@gmail.com', '8882971414', 5, '2018-12-25 07:48:57', NULL, 0, '5f4dcc3b5aa765d61d8327deb882cf99', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblblood_group`
--
ALTER TABLE `tblblood_group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblhospital_bloodgroup_mapping`
--
ALTER TABLE `tblhospital_bloodgroup_mapping`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblhospital_users`
--
ALTER TABLE `tblhospital_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmstaccess`
--
ALTER TABLE `tblmstaccess`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotification`
--
ALTER TABLE `tblnotification`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpermissions`
--
ALTER TABLE `tblpermissions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblblood_group`
--
ALTER TABLE `tblblood_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblhospital_bloodgroup_mapping`
--
ALTER TABLE `tblhospital_bloodgroup_mapping`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `tblhospital_users`
--
ALTER TABLE `tblhospital_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tblmstaccess`
--
ALTER TABLE `tblmstaccess`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblnotification`
--
ALTER TABLE `tblnotification`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=490;
--
-- AUTO_INCREMENT for table `tblpermissions`
--
ALTER TABLE `tblpermissions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
