-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 07:17 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_record`
--

CREATE TABLE IF NOT EXISTS `attendance_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Reg_no` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Attendance_Status` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `batch` int(100) NOT NULL,
  `Faculty_Name` varchar(256) NOT NULL,
  `semestar` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

--
-- Dumping data for table `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `Reg_no`, `Name`, `Attendance_Status`, `course`, `batch`, `Faculty_Name`, `semestar`, `subject`, `Date`) VALUES
(1, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(2, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(3, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(4, '191173', 'NISHANTH', 'absent', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(5, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(6, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(7, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(8, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(9, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(10, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(11, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(12, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(13, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(14, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(15, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(16, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(17, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(18, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(19, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(20, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(21, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(22, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(23, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(24, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(25, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(26, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(27, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(28, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(29, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(30, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(31, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(32, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(33, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(34, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(35, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(36, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(37, '191191', 'YASHASWI B M ', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(38, '191192', 'YASHASWINI', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(39, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(40, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(41, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(42, '191173', 'NISHANTH', 'absent', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(43, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(44, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(45, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(46, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(47, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(48, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(49, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(50, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(51, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(52, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(53, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(54, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(55, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(56, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(57, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(58, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(59, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(60, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(61, '191173', 'NISHANTH', 'absent', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(62, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(63, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(64, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(65, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(66, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(67, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(68, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(69, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(70, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(71, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(72, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(73, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(74, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(75, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(76, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(77, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(78, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(79, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(80, '191173', 'NISHANTH', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(81, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(82, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(83, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(84, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(85, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(86, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(87, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(88, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(89, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(90, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(91, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(92, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(93, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(94, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(95, '191192', 'YASHASWINI', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(96, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(97, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(98, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(99, '191173', 'NISHANTH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(100, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(101, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(102, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(103, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(104, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(105, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(106, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(107, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(108, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(109, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(110, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(111, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(112, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(113, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(114, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(115, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(116, '191171', 'HARSHITHA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(117, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(118, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(119, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(120, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(121, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(122, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(123, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(124, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(125, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(126, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(127, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(128, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(129, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(130, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(131, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(132, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(133, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(134, '121', 'xmen', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(135, '122', 'thor', 'absent', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(136, '123', 'batman', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(137, '124', 'hulk', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(138, '125', 'black widow', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(139, '126', 'thanos', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(140, '127', 'doctor stange', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(141, '128', 'black panter', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(142, '129', 'groot', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20'),
(143, '130', 'star lord', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`) VALUES
(1, 'App and Software Development'),
(2, 'Retail and Supply Chain Management'),
(3, 'Digital Media and Film Making'),
(4, 'DMF');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(256) NOT NULL,
  `faculty_email` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_name`, `faculty_email`, `course`) VALUES
(1, 'sammed', 'sammed@gmail.com', 'App and Software Development'),
(6, 'ashwin', 'ashwin@gmail.com', 'Retail and Supply Chain Management'),
(8, 'ashwini jain', 'ashwini@gmail.com', 'DMF'),
(9, 'madhava holla', 'a@gmail.com', 'DMF'),
(10, 'shivaraj B G', 'shivaraj@gmail.com', 'App and Software Development ');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_attendence`
--

CREATE TABLE IF NOT EXISTS `faculty_attendence` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(256) NOT NULL,
  `course` varchar(250) NOT NULL,
  `batch` int(100) NOT NULL,
  `sem` int(100) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `filedetails`
--

CREATE TABLE IF NOT EXISTS `filedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(256) NOT NULL,
  `filename` varchar(256) NOT NULL,
  `comments` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL,
  `batch` int(100) NOT NULL,
  `Faculty_Name` varchar(256) NOT NULL,
  `semestar` int(100) NOT NULL,
  `sub` varchar(256) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `filedetails`
--

INSERT INTO `filedetails` (`id`, `filepath`, `filename`, `comments`, `course`, `batch`, `Faculty_Name`, `semestar`, `sub`, `date`) VALUES
(1, 'files/Screenshot (42).png', 'Screenshot (42).png', 'wwe', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(2, 'files/a.png', 'a.png', 'ww', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(3, 'files/Screenshot (231).png', 'Screenshot (231).png', 'brooo', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19'),
(4, 'files/Screenshot (229).png', 'Screenshot (229).png', 'wrt', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19'),
(5, 'files/Screenshot (28).png', 'Screenshot (28).png', 'sam', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(6, 'files/Screenshot (14).png', 'Screenshot (14).png', ' ', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19'),
(7, 'files/Screenshot (47).png', 'Screenshot (47).png', 'jj', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19'),
(8, 'files/Screenshot (9).png', 'Screenshot (9).png', 'o', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE IF NOT EXISTS `management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `management_name` varchar(256) NOT NULL,
  `management_email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id`, `management_name`, `management_email`, `password`) VALUES
(1, 'management', 'm@gmail.com', 'manage');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sem_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `sem_name`) VALUES
(1, 'sem1'),
(2, 'sem2\r\n'),
(3, 'sem3\r\n'),
(4, 'sem4'),
(5, 'sem5'),
(6, 'sem6');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Reg_no` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `batch` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `Reg_no`, `Name`, `course`, `batch`) VALUES
(4, 191168, 'BHAGYASHREE K S', 'App and Software Development', 2019),
(7, 191171, 'HARSHITHA SHETTY', 'App and Software Development', 2019),
(8, 191172, 'NIKHIL M C GOWDA', 'App and Software Development', 2019),
(9, 191173, 'NISHANTH', 'App and Software Development', 2019),
(10, 191174, 'NIYATHI GOWDA', 'App and Software Development', 2019),
(12, 191176, 'POORNESH', 'App and Software Development', 2019),
(13, 191177, 'PRADEEP G', 'App and Software Development', 2019),
(15, 191179, 'SHAMITH KUMAR JAIN K P', 'App and Software Development', 2019),
(16, 191180, 'SHILPA SHETTY', 'App and Software Development', 2019),
(19, 191183, 'SUDHEEKSHA', 'App and Software Development', 2019),
(20, 191184, 'SUJITH KUMAR', 'App and Software Development', 2019),
(21, 191185, 'SUKSHMA B S', 'App and Software Development', 2019),
(22, 191186, 'SUMANTH', 'App and Software Development', 2019),
(23, 191187, 'SUPRIYA', 'App and Software Development', 2019),
(24, 191188, 'TEJASWINI S', 'App and Software Development', 2019),
(25, 191189, 'VISHNU M', 'App and Software Development', 2019),
(26, 191190, 'VISHWITHA', 'App and Software Development', 2019),
(27, 191191, 'YASHASWI B M ', 'App and Software Development', 2019),
(28, 191192, 'YASHASWINI', 'App and Software Development', 2019),
(29, 191131, 'A G DEEKSHA', 'Retail and Supply Chain Management', 2019),
(30, 191132, 'AKHIL HR', 'Retail and Supply Chain Management', 2019),
(31, 191133, 'ANJALI', 'Retail and Supply Chain Management', 2019),
(32, 191134, 'ANUJITH S', 'Retail and Supply Chain Management', 2019),
(33, 191135, 'APOORVA A', 'Retail and Supply Chain Management', 2019),
(34, 191136, 'BLESSON THOMAS', 'Retail and Supply Chain Management', 2019),
(35, 191137, 'DEEKSHA', 'Retail and Supply Chain Management', 2019),
(36, 191138, 'GOWTHAMI MV', 'Retail and Supply Chain Management', 2019),
(37, 191139, 'HARSHITHA', 'Retail and Supply Chain Management', 2019),
(38, 191140, 'HOSBEED RAGHU AMRUTH', 'Retail and Supply Chain Management', 2019),
(39, 191141, 'ISTARTH SS', 'Retail and Supply Chain Management', 2019),
(40, 191142, 'JEEVAN AS', 'Retail and Supply Chain Management', 2019),
(41, 191143, 'NAGARJUNA BT', 'Retail and Supply Chain Management', 2019),
(42, 191144, 'NITHESH', 'Retail and Supply Chain Management', 2019),
(43, 191145, 'PRATHIKA K Y', 'Retail and Supply Chain Management', 2019),
(44, 191146, 'PRIYAMKA', 'Retail and Supply Chain Management', 2019),
(45, 191147, 'RAHUL SHETTY', 'Retail and Supply Chain Management', 2019),
(46, 191148, 'ROHAN KUMAR JAIN', 'Retail and Supply Chain Management', 2019),
(47, 191149, 'ROHITH R', 'Retail and Supply Chain Management', 2019),
(48, 191150, 'SADHAN T S', 'Retail and Supply Chain Management', 2019),
(49, 191151, 'SAHIL AHMED', 'Retail and Supply Chain Management', 2019),
(50, 191152, 'SANJANA B K', 'Retail and Supply Chain Management', 2019),
(51, 191153, 'SANJAY KUMAR V C', 'Retail and Supply Chain Management', 2019),
(52, 191154, 'SHILJIO VARGHESE', 'Retail and Supply Chain Management', 2019),
(53, 191155, 'SHREESHA NARAYANA G HEGDE', 'Retail and Supply Chain Management', 2019),
(54, 191156, 'SINCHANA K B', 'Retail and Supply Chain Management', 2019),
(55, 191157, 'SINU', 'Retail and Supply Chain Management', 2019),
(56, 191158, 'SWASTIK  S HEGDE', 'Retail and Supply Chain Management', 2019),
(57, 191159, 'SWATHI B R', 'Retail and Supply Chain Management', 2019),
(66, 191160, 'VIDHISHA H S', 'Retail and Supply Chain Management', 2019),
(147, 1, 'a', 'App and Software Development', 2019),
(148, 2, 'b', 'Retail and Supply Chain Management', 2020),
(149, 3, 'c', 'Digital Media and Film Making', 2021),
(150, 4, 'd', 'App and Software Development', 2022),
(151, 5, 'e', 'Retail and Supply Chain Management', 2023),
(152, 121, 'xmen', 'App and Software Development', 2020),
(153, 122, 'thor', 'App and Software Development', 2020),
(154, 123, 'batman', 'App and Software Development', 2020),
(155, 124, 'hulk', 'App and Software Development', 2020),
(156, 125, 'black widow', 'App and Software Development', 2020),
(157, 126, 'thanos', 'App and Software Development', 2020),
(158, 127, 'doctor stange', 'App and Software Development', 2020),
(159, 128, 'black panter', 'App and Software Development', 2020),
(160, 129, 'groot', 'App and Software Development', 2020),
(161, 130, 'star lord', 'App and Software Development', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `sem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `sem`) VALUES
(1, 'CSS', 1),
(2, 'HTML', 1),
(3, 'PYTHON', 1),
(4, 'SQL', 2),
(5, 'JS', 2),
(6, 'XML', 2),
(7, 'PHP', 2),
(8, 'JAVA', 3),
(9, 'PYTHON FOR DATA SCIENCE', 3),
(10, 'KOTLIN', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `Teacher_Name`, `Email`, `Password`) VALUES
(1, 'sammed', 'sammed@gmail.com', '9c1a3e8b436eaaf0c13e809aeeff98cf'),
(2, 'shivaraj B G', 'shivaraj@gmail.com', 'b343ef440fded01538c145094a034cea'),
(3, 'ashwin\r\n\r\n', 'ashwin@gmail.com', '7cb6fa91c124913f7a75e3153339234f');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
