-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 07:18 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_record`
--

CREATE TABLE `attendance_record` (
  `id` int(11) NOT NULL,
  `Reg_no` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Attendance_Status` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `batch` int(100) NOT NULL,
  `Faculty_Name` varchar(256) NOT NULL,
  `semestar` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `Reg_no`, `Name`, `Attendance_Status`, `course`, `batch`, `Faculty_Name`, `semestar`, `subject`, `Date`, `class`) VALUES
(1, '121', 'xmen', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(2, '122', 'thor', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(3, '123', 'batman', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(4, '124', 'hulk', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(5, '125', 'black widow', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(6, '126', 'thanos', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(7, '127', 'doctor stange', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(8, '128', 'black panter', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(9, '129', 'groot', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(10, '130', 'star lord', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(11, '121', 'xmen', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(12, '122', 'thor', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(13, '123', 'batman', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(14, '124', 'hulk', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(15, '125', 'black widow', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(16, '126', 'thanos', 'absent', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(17, '127', 'doctor stange', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(18, '128', 'black panter', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(19, '129', 'groot', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(20, '130', 'star lord', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(21, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(22, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(23, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(24, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(25, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(26, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(27, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(28, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(29, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(30, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(31, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(32, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(33, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(34, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(35, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(36, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(37, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(38, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(39, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(40, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(41, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(42, '191173', 'NISHANTH', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(43, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(44, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(45, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(46, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(47, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(48, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(49, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(50, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(51, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(52, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(53, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(54, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(55, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(56, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(57, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(58, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(59, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(60, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(61, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(62, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(63, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(64, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(65, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(66, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(67, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(68, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(69, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(70, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(71, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(72, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(73, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(74, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(75, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(76, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(77, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(78, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(79, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(80, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(81, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(82, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(83, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(84, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(85, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(86, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(87, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(88, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(89, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(90, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(91, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(92, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(93, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(94, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(95, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(96, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(97, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(98, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(99, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(100, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(101, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(102, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(103, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(104, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(105, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(106, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(107, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(108, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(109, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(110, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(111, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(112, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(113, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(114, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(115, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(116, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(117, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(118, '191173', 'NISHANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(119, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(120, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(121, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(122, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(123, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(124, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(125, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(126, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(127, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(128, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(129, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(130, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(131, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(132, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(133, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(134, '1', 'a', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(135, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(136, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(137, '191173', 'NISHANTH', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(138, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(139, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(140, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(141, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(142, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(143, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(144, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(145, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(146, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(147, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(148, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(149, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(150, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(151, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(152, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(153, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(154, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(155, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(156, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(157, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(158, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(159, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(160, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(161, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(162, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(163, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(164, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(165, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(166, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(167, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(168, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(169, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(170, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(171, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(172, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(173, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(174, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(175, '191173', 'NISHANTH', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(176, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(177, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(178, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(179, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(180, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(181, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(182, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(183, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(184, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(185, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(186, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(187, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(188, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(189, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(190, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(191, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(192, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(193, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(194, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(195, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(196, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(197, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(198, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(199, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(200, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(201, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(202, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(203, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(204, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(205, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(206, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(207, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(208, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(209, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(210, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(211, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(212, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(213, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(214, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(215, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(216, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(217, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(218, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(219, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(220, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(221, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(222, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(223, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(224, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(225, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(226, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(227, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(228, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(229, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(230, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(231, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(232, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(233, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(234, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(235, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(236, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(237, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(238, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(239, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(240, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(241, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(242, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(243, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(244, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(245, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(246, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(247, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(248, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(249, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(250, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(251, '191173', 'NISHANTH', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(252, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(253, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(254, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(255, '191179', 'SHAMITH KUMAR JAIN K P', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(256, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(257, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(258, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(259, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(260, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(261, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(262, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(263, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(264, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(265, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(266, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(267, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(268, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(269, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(270, '191173', 'NISHANTH', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(271, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(272, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(273, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(274, '191179', 'SHAMITH KUMAR JAIN K P', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(275, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(276, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(277, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(278, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(279, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(280, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(281, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(282, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(283, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(284, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(285, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(286, '1', 'a', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(287, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(288, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(289, '191173', 'NISHANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(290, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(291, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(292, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(293, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(294, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(295, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(296, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(297, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(298, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(299, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(300, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(301, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(302, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(303, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(304, '1', 'a', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(305, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(306, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(307, '191173', 'NISHANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(308, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(309, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(310, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(311, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(312, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(313, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(314, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(315, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(316, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(317, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(318, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(319, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(320, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(321, '191192', 'YASHASWINI', 'absent', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(322, '1', 'a', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(323, '191168', 'BHAGYASHREE K S', 'absent', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(324, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(325, '191173', 'NISHANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(326, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(327, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(328, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(329, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(330, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(331, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(332, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(333, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(334, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(335, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(336, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(337, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(338, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(339, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(340, '1', 'a', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(341, '121', 'xmen', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(342, '122', 'thor', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(343, '123', 'batman', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(344, '124', 'hulk', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(345, '125', 'black widow', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(346, '126', 'thanos', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(347, '127', 'doctor stange', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(348, '128', 'black panter', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(349, '129', 'groot', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(350, '130', 'star lord', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(351, '1', 'akash', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(352, '2', 'ananya', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(353, '3', 'anil', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(354, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(355, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(356, '191173', 'NISHANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(357, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(358, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(359, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(360, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(361, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(362, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(363, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(364, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(365, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(366, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(367, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(368, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(369, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(370, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(371, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(372, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(373, '191173', 'NISHANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(374, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(375, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(376, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(377, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(378, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(379, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(380, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(381, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(382, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(383, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(384, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(385, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(386, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(387, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(388, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(389, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(390, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(391, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(392, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(393, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(394, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(395, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(396, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(397, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(398, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(399, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(400, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(401, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(402, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(403, '191191', 'YASHASWI B M ', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(404, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(405, '121', 'xmen', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(406, '122', 'thor', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(407, '123', 'batman', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1);
INSERT INTO `attendance_record` (`id`, `Reg_no`, `Name`, `Attendance_Status`, `course`, `batch`, `Faculty_Name`, `semestar`, `subject`, `Date`, `class`) VALUES
(408, '124', 'hulk', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(409, '125', 'black widow', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(410, '126', 'thanos', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(411, '127', 'doctor stange', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(412, '128', 'black panter', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(413, '129', 'groot', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(414, '130', 'star lord', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(415, '1', 'akash', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(416, '2', 'ananya', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(417, '3', 'anil', 'present', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(418, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(419, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(420, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(421, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(422, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(423, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(424, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(425, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(426, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(427, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(428, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(429, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(430, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(431, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(432, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(433, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(434, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(435, '121', 'xmen', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(436, '122', 'thor', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(437, '123', 'batman', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(438, '124', 'hulk', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(439, '125', 'black widow', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(440, '126', 'thanos', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(441, '127', 'doctor stange', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(442, '128', 'black panter', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(443, '129', 'groot', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(444, '130', 'star lord', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(445, '1', 'akash', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(446, '2', 'ananya', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(447, '3', 'anil', 'present', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(448, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(449, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(450, '191173', 'NISHANTH', 'absent', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(451, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(452, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(453, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(454, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(455, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(456, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(457, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(458, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(459, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(460, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(461, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(462, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(463, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(464, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(465, '191131', 'A G DEEKSHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(466, '191132', 'AKHIL HR', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(467, '191133', 'ANJALI', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(468, '191134', 'ANUJITH S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(469, '191135', 'APOORVA A', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(470, '191136', 'BLESSON THOMAS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(471, '191137', 'DEEKSHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(472, '191138', 'GOWTHAMI MV', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(473, '191139', 'HARSHITHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(474, '191140', 'HOSBEED RAGHU AMRUTH', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(475, '191141', 'ISTARTH SS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(476, '191142', 'JEEVAN AS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(477, '191143', 'NAGARJUNA BT', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(478, '191144', 'NITHESH', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(479, '191145', 'PRATHIKA K Y', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(480, '191146', 'PRIYAMKA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(481, '191147', 'RAHUL SHETTY', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(482, '191148', 'ROHAN KUMAR JAIN', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(483, '191149', 'ROHITH R', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(484, '191150', 'SADHAN T S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(485, '191151', 'SAHIL AHMED', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(486, '191152', 'SANJANA B K', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(487, '191153', 'SANJAY KUMAR V C', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(488, '191154', 'SHILJIO VARGHESE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(489, '191155', 'SHREESHA NARAYANA G HEGDE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(490, '191156', 'SINCHANA K B', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(491, '191157', 'SINU', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(492, '191158', 'SWASTIK  S HEGDE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(493, '191159', 'SWATHI B R', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(494, '191160', 'VIDHISHA H S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(495, '191131', 'A G DEEKSHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(496, '191132', 'AKHIL HR', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(497, '191133', 'ANJALI', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(498, '191134', 'ANUJITH S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(499, '191135', 'APOORVA A', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(500, '191136', 'BLESSON THOMAS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(501, '191137', 'DEEKSHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(502, '191138', 'GOWTHAMI MV', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(503, '191139', 'HARSHITHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(504, '191140', 'HOSBEED RAGHU AMRUTH', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(505, '191141', 'ISTARTH SS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(506, '191142', 'JEEVAN AS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(507, '191143', 'NAGARJUNA BT', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(508, '191144', 'NITHESH', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(509, '191145', 'PRATHIKA K Y', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(510, '191146', 'PRIYAMKA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(511, '191147', 'RAHUL SHETTY', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(512, '191148', 'ROHAN KUMAR JAIN', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(513, '191149', 'ROHITH R', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(514, '191150', 'SADHAN T S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(515, '191151', 'SAHIL AHMED', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(516, '191152', 'SANJANA B K', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(517, '191153', 'SANJAY KUMAR V C', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(518, '191154', 'SHILJIO VARGHESE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(519, '191155', 'SHREESHA NARAYANA G HEGDE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(520, '191156', 'SINCHANA K B', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(521, '191157', 'SINU', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(522, '191158', 'SWASTIK  S HEGDE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(523, '191159', 'SWATHI B R', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(524, '191160', 'VIDHISHA H S', 'absent', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(525, '191131', 'A G DEEKSHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(526, '191132', 'AKHIL HR', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(527, '191133', 'ANJALI', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(528, '191134', 'ANUJITH S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(529, '191135', 'APOORVA A', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(530, '191136', 'BLESSON THOMAS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(531, '191137', 'DEEKSHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(532, '191138', 'GOWTHAMI MV', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(533, '191139', 'HARSHITHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(534, '191140', 'HOSBEED RAGHU AMRUTH', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(535, '191141', 'ISTARTH SS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(536, '191142', 'JEEVAN AS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(537, '191143', 'NAGARJUNA BT', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(538, '191144', 'NITHESH', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(539, '191145', 'PRATHIKA K Y', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(540, '191146', 'PRIYAMKA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(541, '191147', 'RAHUL SHETTY', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(542, '191148', 'ROHAN KUMAR JAIN', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(543, '191149', 'ROHITH R', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(544, '191150', 'SADHAN T S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(545, '191151', 'SAHIL AHMED', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(546, '191152', 'SANJANA B K', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(547, '191153', 'SANJAY KUMAR V C', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(548, '191154', 'SHILJIO VARGHESE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(549, '191155', 'SHREESHA NARAYANA G HEGDE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(550, '191156', 'SINCHANA K B', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(551, '191157', 'SINU', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(552, '191158', 'SWASTIK  S HEGDE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(553, '191159', 'SWATHI B R', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(554, '191160', 'VIDHISHA H S', 'absent', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(555, '121', 'xmen', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(556, '122', 'thor', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(557, '123', 'batman', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(558, '124', 'hulk', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(559, '125', 'black widow', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(560, '126', 'thanos', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(561, '127', 'doctor stange', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(562, '128', 'black panter', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(563, '129', 'groot', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(564, '130', 'star lord', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(565, '1', 'akash', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(566, '2', 'ananya', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(567, '3', 'anil', 'present', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(568, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(569, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(570, '191173', 'NISHANTH', 'absent', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(571, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(572, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(573, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(574, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(575, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(576, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(577, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(578, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(579, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(580, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(581, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(582, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(583, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(584, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(585, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(586, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(587, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(588, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(589, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(590, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(591, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(592, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(593, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(594, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(595, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(596, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(597, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(598, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(599, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(600, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(601, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(602, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(603, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(604, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(605, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(606, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(607, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(608, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(609, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(610, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(611, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(612, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(613, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(614, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(615, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(616, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(617, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(618, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(619, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(620, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(621, '191173', 'NISHANTH', 'absent', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(622, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(623, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(624, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(625, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(626, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(627, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(628, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(629, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(630, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(631, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(632, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(633, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(634, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(635, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(636, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(637, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(638, '191173', 'NISHANTH', 'absent', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(639, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(640, '191176', 'POORNESH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(641, '191177', 'PRADEEP G', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(642, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(643, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(644, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(645, '191185', 'SUKSHMA B S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(646, '191186', 'SUMANTH', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(647, '191187', 'SUPRIYA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(648, '191188', 'TEJASWINI S', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(649, '191189', 'VISHNU M', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(650, '191190', 'VISHWITHA', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(651, '191191', 'YASHASWI B M ', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(652, '191192', 'YASHASWINI', 'present', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(653, '191131', 'A G DEEKSHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(654, '191132', 'AKHIL HR', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(655, '191133', 'ANJALI', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(656, '191134', 'ANUJITH S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(657, '191135', 'APOORVA A', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(658, '191136', 'BLESSON THOMAS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(659, '191137', 'DEEKSHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(660, '191138', 'GOWTHAMI MV', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(661, '191139', 'HARSHITHA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(662, '191140', 'HOSBEED RAGHU AMRUTH', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(663, '191141', 'ISTARTH SS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(664, '191142', 'JEEVAN AS', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(665, '191143', 'NAGARJUNA BT', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(666, '191144', 'NITHESH', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(667, '191145', 'PRATHIKA K Y', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(668, '191146', 'PRIYAMKA', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(669, '191147', 'RAHUL SHETTY', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(670, '191148', 'ROHAN KUMAR JAIN', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(671, '191149', 'ROHITH R', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(672, '191150', 'SADHAN T S', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(673, '191151', 'SAHIL AHMED', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(674, '191152', 'SANJANA B K', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(675, '191153', 'SANJAY KUMAR V C', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(676, '191154', 'SHILJIO VARGHESE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(677, '191155', 'SHREESHA NARAYANA G HEGDE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(678, '191156', 'SINCHANA K B', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(679, '191157', 'SINU', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(680, '191158', 'SWASTIK  S HEGDE', 'present', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(681, '191159', 'SWATHI B R', 'absent', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(682, '191168', 'BHAGYASHREE K S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(683, '191172', 'NIKHIL M C GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(684, '191173', 'NISHANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(685, '191174', 'NIYATHI GOWDA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(686, '191176', 'POORNESH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(687, '191177', 'PRADEEP G', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(688, '191180', 'SHILPA SHETTY', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(689, '191183', 'SUDHEEKSHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(690, '191184', 'SUJITH KUMAR', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(691, '191185', 'SUKSHMA B S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(692, '191186', 'SUMANTH', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(693, '191187', 'SUPRIYA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(694, '191188', 'TEJASWINI S', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(695, '191189', 'VISHNU M', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(696, '191190', 'VISHWITHA', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(697, '191191', 'YASHASWI B M ', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(698, '191192', 'YASHASWINI', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1),
(699, '4', 'selvestar', 'present', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`) VALUES
(1, 'App and Software Development'),
(2, 'Retail and Supply Chain Management'),
(3, 'Digital Media and Film Making');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(256) NOT NULL,
  `faculty_email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_name`, `faculty_email`, `password`, `course`) VALUES
(1, 'sammed', 'sammed@gmail.com', '9c1a3e8b436eaaf0c13e809aeeff98cf', 'App and Software Development'),
(6, 'ashwin', 'ashwin@gmail.com', '7cb6fa91c124913f7a75e3153339234f', 'Retail and Supply Chain Management'),
(8, 'ashwini jain', 'ashwini@gmail.com', 'bf26c1943257c88d3a93f6a589452aa5', 'Digital Media and Film Making'),
(10, 'shivaraj B G', 'shivaraj@gmail.com', 'b343ef440fded01538c145094a034cea', 'App and Software Development ');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_attendence`
--

CREATE TABLE `faculty_attendence` (
  `id` int(100) NOT NULL,
  `faculty_name` varchar(256) NOT NULL,
  `course` varchar(250) NOT NULL,
  `batch` int(100) NOT NULL,
  `sem` int(100) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_attendence`
--

INSERT INTO `faculty_attendence` (`id`, `faculty_name`, `course`, `batch`, `sem`, `subject`, `Date`) VALUES
(1, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'JAVA', '2020-08-31'),
(2, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2020-08-31'),
(3, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'KOTLIN', '2020-08-31'),
(4, 'shivaraj B G', 'App and Software Development ', 2020, 3, 'KOTLIN', '2020-08-31'),
(5, 'ashwin', 'Retail and Supply Chain Management', 2019, 1, 'amazon', '2020-09-01'),
(6, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-01'),
(7, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-01'),
(8, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-01'),
(9, 'shivaraj B G', 'App and Software Development ', 2020, 3, 'PYTHON FOR DATA SCIENCE', '2020-09-02'),
(10, 'shivaraj B G', 'App and Software Development ', 2020, 3, 'PYTHON FOR DATA SCIENCE', '2020-09-02'),
(11, 'ashwin', 'Retail and Supply Chain Management', 2019, 3, 'snapdeal', '2020-09-03'),
(12, 'ashwin', 'Retail and Supply Chain Management', 2019, 3, 'snapdeal', '2020-09-03'),
(13, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-08'),
(14, 'sammed', 'App and Software Development', 2020, 1, 'CSS', '2020-09-14'),
(15, 'sammed', 'App and Software Development', 2020, 1, 'HTML', '2020-09-17'),
(16, 'sammed', 'App and Software Development', 2020, 1, 'CSS', '2020-09-17'),
(17, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-18'),
(18, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-18'),
(19, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-18'),
(20, 'shivaraj B G', 'App and Software Development ', 2019, 1, 'PYTHON', '2020-09-18'),
(21, 'shivaraj B G', 'App and Software Development ', 2020, 1, 'PYTHON', '2020-09-18'),
(22, 'shivaraj B G', 'App and Software Development ', 2019, 2, 'SQL', '2020-09-18'),
(23, 'shivaraj B G', 'App and Software Development ', 2019, 1, 'PYTHON', '2020-09-18'),
(24, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-21'),
(25, 'sammed', 'App and Software Development', 2020, 3, 'JAVA', '2020-09-21'),
(26, 'sammed', 'App and Software Development', 2020, 3, 'JAVA', '2020-09-21'),
(27, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-21'),
(28, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-21'),
(29, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-22'),
(30, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-22'),
(31, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-22'),
(32, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23'),
(33, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-24'),
(34, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-24'),
(35, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-25'),
(36, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-25'),
(37, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-25'),
(38, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-28'),
(39, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-28'),
(40, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-09-28'),
(41, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29'),
(42, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30'),
(43, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30'),
(44, 'sammed', 'App and Software Development', 2020, 3, 'JAVA', '2020-09-30'),
(45, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30'),
(46, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30'),
(47, 'sammed', 'App and Software Development', 2019, 3, 'KOTLIN', '2020-09-30'),
(48, 'sammed', 'App and Software Development', 2020, 3, 'JAVA', '2020-10-03'),
(49, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-10-03'),
(50, 'sammed', 'App and Software Development', 2020, 1, 'CSS', '2020-10-06'),
(51, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2020-10-06'),
(52, 'ashwin', 'Retail and Supply Chain Management', 2019, 3, 'snapdeal', '2020-10-11'),
(53, 'ashwin', 'Retail and Supply Chain Management', 2019, 3, 'snapdeal', '2020-10-11'),
(54, 'ashwin', 'Retail and Supply Chain Management', 2019, 3, 'snapdeal', '2020-10-14'),
(55, 'shivaraj B G', 'App and Software Development ', 2020, 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23'),
(56, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23'),
(57, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2021-02-07'),
(58, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2021-02-07'),
(59, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'KOTLIN', '2021-02-08'),
(60, 'shivaraj B G', 'App and Software Development ', 2019, 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08'),
(61, 'ashwin', 'Retail and Supply Chain Management', 2019, 3, 'snapdeal', '2021-02-08'),
(62, 'sammed', 'App and Software Development', 2019, 3, 'JAVA', '2021-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `filedetails`
--

CREATE TABLE `filedetails` (
  `id` int(11) NOT NULL,
  `filepath` varchar(256) NOT NULL,
  `filename` varchar(256) NOT NULL,
  `comments` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL,
  `batch` int(100) NOT NULL,
  `Faculty_Name` varchar(256) NOT NULL,
  `semestar` int(100) NOT NULL,
  `sub` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filedetails`
--

INSERT INTO `filedetails` (`id`, `filepath`, `filename`, `comments`, `link`, `course`, `batch`, `Faculty_Name`, `semestar`, `sub`, `date`, `class`) VALUES
(1, 'files/Screenshot (42).png', 'Screenshot (42).png', 'wwe', '', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19', 0),
(2, 'files/a.png', 'a.png', 'ww', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19', 0),
(3, 'files/Screenshot (231).png', 'Screenshot (231).png', 'brooo', '', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'KOTLIN', '2020-08-19', 0),
(4, 'files/Screenshot (229).png', 'Screenshot (229).png', 'wrt', '', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'JAVA', '2020-08-19', 0),
(5, 'files/Screenshot (28).png', 'Screenshot (28).png', 'sam', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19', 0),
(6, 'files/Screenshot (14).png', 'Screenshot (14).png', ' ', '', 'App and Software Development ', 2019, 'Shivaraj b g', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-19', 0),
(7, 'files/Screenshot (47).png', 'Screenshot (47).png', 'jj', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-08-19', 0),
(8, 'files/Screenshot (9).png', 'Screenshot (9).png', 'o', '', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-08-20', 0),
(9, 'files/sample - 2020-08-31T221039.363.pdf', 'sample - 2020-08-31T221039.363.pdf', 'g', '', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'JAVA', '2020-08-31', 0),
(10, 'files/sample - 2020-08-31T221212.014.pdf', 'sample - 2020-08-31T221212.014.pdf', '', '', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-08-31', 0),
(11, 'files/fom.html', 'fom.html', 'c', '', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2020-08-31', 0),
(12, 'files/sample - 2020-08-28T104128.581.pdf', 'sample - 2020-08-28T104128.581.pdf', ' ', '', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'KOTLIN', '2020-08-31', 0),
(13, 'files/Classes and Objects-part-1.pdf', 'Classes and Objects-part-1.pdf', 'bro', '', 'Retail and Supply Chain Management', 2019, 'ashwin', 1, 'amazon', '2020-09-01', 0),
(14, 'files/attendance (7).sql', 'attendance (7).sql', 'broh', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-01', 0),
(15, 'files/test (3).html', 'test (3).html', '', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-01', 0),
(16, 'files/sample - 2020-09-01T071521.544.pdf', 'sample - 2020-09-01T071521.544.pdf', 'good class', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-01', 0),
(17, 'files/Guidelines for BSc project documentation(1).pdf', 'Guidelines for BSc project documentation(1).pdf', 'hh', '', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-02', 0),
(18, 'files/SYNOPSIS.pdf', 'SYNOPSIS.pdf', 'l', '', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-02', 0),
(19, 'files/myprofile.html', 'myprofile.html', 'h', '', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-09-03', 0),
(20, 'files/apple-touch-icon.png', 'apple-touch-icon.png', 'jk', '', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-09-03', 0),
(21, 'files/sample (53).csv', 'sample (53).csv', 'kl', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-08', 0),
(22, 'files/sample (55).csv', 'sample (55).csv', 'dfgh', '', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-09-14', 0),
(23, 'files/practical lab manual.pdf', 'practical lab manual.pdf', 'jai', '', 'App and Software Development', 2020, 'sammed', 1, 'HTML', '2020-09-17', 0),
(24, 'files/addtwoarray.o', 'addtwoarray.o', '', '', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-09-17', 0),
(25, 'files/array.exe', 'array.exe', 'k', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-18', 0),
(26, 'files/array2.exe', 'array2.exe', 'knm', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-18', 0),
(27, 'files/stackjoinjs.html', 'stackjoinjs.html', 'klm', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-18', 0),
(28, 'files/sort dicreasing.html', 'sort dicreasing.html', 'jnn', '', 'App and Software Development ', 2019, 'shivaraj B G', 1, 'PYTHON', '2020-09-18', 0),
(29, 'files/array.o', 'array.o', 'x', '', 'App and Software Development ', 2020, 'shivaraj B G', 1, 'PYTHON', '2020-09-18', 0),
(30, 'files/swap function.c', 'swap function.c', '', '', 'App and Software Development ', 2019, 'shivaraj B G', 2, 'SQL', '2020-09-18', 0),
(31, 'files/popstack.html', 'popstack.html', '', '', 'App and Software Development ', 2019, 'shivaraj B G', 1, 'PYTHON', '2020-09-18', 0),
(32, 'files/data (54).csv', 'data (54).csv', 'fgh', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 0),
(33, 'files/data (58).csv', 'data (58).csv', 'james', '', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(34, 'files/sample - 2020-09-21T085713.788.pdf', 'sample - 2020-09-21T085713.788.pdf', 'x', '', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(35, 'files/data (55).csv', 'data (55).csv', 'samm', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 1),
(36, 'files/data (51).csv', 'data (51).csv', 'ww', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-21', 2),
(37, 'files/data (32).csv', 'data (32).csv', 'der', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 1),
(38, 'files/data (45).csv', 'data (45).csv', 'sdmc', '', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-22', 2),
(39, 'files/p1.JPG', 'p1.JPG', 'sd', '', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-23', 1),
(40, 'files/data (60).csv', 'data (60).csv', 'css', 'www.c.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 1),
(41, 'files/sample (59).csv', 'sample (59).csv', 'java string', 'www.sam.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-24', 2),
(42, 'files/sample - 2020-09-24T121902.102.pdf', 'sample - 2020-09-24T121902.102.pdf', 'string buffer', 'www.xc.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 1),
(43, 'files/sample - 2020-09-24T092849.466.pdf', 'sample - 2020-09-24T092849.466.pdf', 'wwe', 'www.nm.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 2),
(44, 'files/data (64).csv', 'data (64).csv', 'java basics', 'ww.e.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-25', 3),
(45, 'files/sdmfooter.html', 'sdmfooter.html', 'css,gh,', 'ww.c.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 1),
(46, 'files/sample (62).csv', 'sample (62).csv', 'javastring,javabuffer', 'ww.yt.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 2),
(47, 'files/data (66).csv', 'data (66).csv', 'java basics', 'www.youtube.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-09-28', 3),
(48, 'files/sample (67).csv', 'sample (67).csv', 'python basics', 'ww.vb.com', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-29', 1),
(49, 'files/sample (72).csv', 'sample (72).csv', 'xxx', 'www,er,com', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 1),
(50, 'files/sample - 2020-09-30T065739.950.pdf', 'sample - 2020-09-30T065739.950.pdf', 'zzz', 'bg', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 2),
(51, 'files/SDM-POLICY-HAND-BOOK (2).docx', 'SDM-POLICY-HAND-BOOK (2).docx', 'x', 'sssksk', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-09-30', 2),
(52, 'files/sample (73).csv', 'sample (73).csv', 'hff', 'ww.c.com', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(53, 'files/attendance (10).sql', 'attendance (10).sql', 'xz', 'ww', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2020-09-30', 3),
(54, 'files/ff.html', 'ff.html', 'jssjs', 'www.fdfds.com', 'App and Software Development', 2019, 'sammed', 3, 'KOTLIN', '2020-09-30', 1),
(55, 'files/data (72).csv', 'data (72).csv', 'zzzzzzzzzzzzzzzz', 'ccc', 'App and Software Development', 2020, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(56, 'files/data (70).csv', 'data (70).csv', 'xx', 'x', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-03', 1),
(57, 'files/SDM-POLICY-HAND-BOOK (4).docx', 'SDM-POLICY-HAND-BOOK (4).docx', 'oo', 'kk', 'App and Software Development', 2020, 'sammed', 1, 'CSS', '2020-10-06', 1),
(58, 'files/data (73).csv', 'data (73).csv', 'cxcxcxc', 'zz', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2020-10-06', 1),
(59, 'files/banner.html', 'banner.html', 'sddfghjiu', 'fd', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 1),
(60, 'files/4d4c0.js.download', '4d4c0.js.download', 'vvvvvvvvvvvvv', '  vv', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-11', 2),
(61, 'files/9bfa7.css', '9bfa7.css', 'zzz', 'z', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2020-10-14', 1),
(62, 'files/lab progam 7.html', 'lab progam 7.html', 'jdf', 'www.sd.com', 'App and Software Development ', 2020, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(63, 'files/sample (82).csv', 'sample (82).csv', 'hh', 'www', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-01-23', 1),
(64, 'files/EXCEL.xlsx', 'EXCEL.xlsx', 'java objects', 'www.sdmc.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 1),
(65, 'files/data (71).csv', 'data (71).csv', 'java string', 'www.a..com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-07', 2),
(66, 'files/data.csv', 'data.csv', 'python', 'www.a.com', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'KOTLIN', '2021-02-08', 1),
(67, 'files/data (1).csv', 'data (1).csv', 'pytohn', 'www.a.com', 'App and Software Development ', 2019, 'shivaraj B G', 3, 'PYTHON FOR DATA SCIENCE', '2021-02-08', 1),
(68, 'files/data (69).csv', 'data (69).csv', 'chain', 'www.a.com', 'Retail and Supply Chain Management', 2019, 'ashwin', 3, 'snapdeal', '2021-02-08', 1),
(69, 'files/attendance.sql', 'attendance.sql', 'java', 'ww.a.com', 'App and Software Development', 2019, 'sammed', 3, 'JAVA', '2021-02-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` int(11) NOT NULL,
  `management_name` varchar(256) NOT NULL,
  `management_email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id`, `management_name`, `management_email`, `password`) VALUES
(1, 'management', 'm@gmail.com', 'manage');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `sem_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `Reg_no` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `batch` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `Reg_no`, `Name`, `course`, `batch`) VALUES
(4, 191168, 'BHAGYASHREE K S', 'App and Software Development', 2019),
(8, 191172, 'NIKHIL M C GOWDA', 'App and Software Development', 2019),
(9, 191173, 'NISHANTH', 'App and Software Development', 2019),
(10, 191174, 'NIYATHI GOWDA', 'App and Software Development', 2019),
(12, 191176, 'POORNESH', 'App and Software Development', 2019),
(13, 191177, 'PRADEEP G', 'App and Software Development', 2019),
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
(161, 130, 'star lord', 'App and Software Development', 2020),
(164, 1, 'akash', 'App and Software Development', 2020),
(165, 2, 'ananya', 'App and Software Development', 2020),
(166, 3, 'anil', 'App and Software Development', 2020),
(167, 1, 'a', 'App and Software Development', 2020),
(168, 2, 'b', 'App and Software Development', 2020),
(170, 8, 'ranjan', 'App and Software Development', 2021),
(171, 1, 'janu', 'App and Software Development', 2021),
(172, 2, 'ramesh', 'App and Software Development', 2021),
(173, 4, 'selvestar', 'App and Software Development', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `sem` int(11) NOT NULL,
  `course` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `sem`, `course`) VALUES
(1, 'CSS', 1, 'App and Software Development'),
(2, 'HTML', 1, 'App and Software Development'),
(3, 'PYTHON', 1, 'App and Software Development'),
(4, 'SQL', 2, 'App and Software Development'),
(5, 'JS', 2, 'App and Software Development'),
(6, 'XML', 2, 'App and Software Development'),
(7, 'PHP', 2, 'App and Software Development'),
(8, 'JAVA', 3, 'App and Software Development'),
(9, 'PYTHON FOR DATA SCIENCE', 3, 'App and Software Development'),
(10, 'KOTLIN', 3, 'App and Software Development'),
(11, 'amazon', 1, 'Retail and Supply Chain Management'),
(12, 'flipcart', 2, 'Retail and Supply Chain Management'),
(13, 'snapdeal', 3, 'Retail and Supply Chain Management');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_attendence`
--
ALTER TABLE `faculty_attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filedetails`
--
ALTER TABLE `filedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_record`
--
ALTER TABLE `attendance_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `faculty_attendence`
--
ALTER TABLE `faculty_attendence`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `filedetails`
--
ALTER TABLE `filedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
