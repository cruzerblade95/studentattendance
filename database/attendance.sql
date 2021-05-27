-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 07:59 PM
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
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) DEFAULT NULL,
  `admin_password` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `attendance_status` enum('Present','Absent') DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 7, 'Present', '2021-05-01', 3),
(2, 8, 'Present', '2021-05-01', 3),
(3, 9, 'Absent', '2021-05-01', 3),
(4, 10, 'Present', '2021-05-01', 3),
(5, 11, 'Present', '2021-05-01', 3),
(6, 7, 'Absent', '2021-05-02', 3),
(7, 8, 'Present', '2021-05-02', 3),
(8, 9, 'Present', '2021-05-02', 3),
(9, 10, 'Present', '2021-05-02', 3),
(10, 11, 'Absent', '2021-05-02', 3),
(11, 1, 'Present', '2021-05-01', 2),
(12, 3, 'Present', '2021-05-01', 2),
(13, 4, 'Present', '2021-05-01', 2),
(14, 5, 'Present', '2021-05-01', 2),
(15, 6, 'Present', '2021-05-01', 2),
(16, 1, 'Present', '2021-05-02', 2),
(17, 3, 'Absent', '2021-05-02', 2),
(18, 4, 'Present', '2021-05-02', 2),
(19, 5, 'Absent', '2021-05-02', 2),
(20, 6, 'Present', '2021-05-02', 2),
(21, 1, 'Present', '2021-05-03', 2),
(22, 3, 'Present', '2021-05-03', 2),
(23, 4, 'Absent', '2021-05-03', 2),
(24, 5, 'Present', '2021-05-03', 2),
(25, 6, 'Present', '2021-05-03', 2),
(26, 1, 'Absent', '2019-05-04', 2),
(27, 3, 'Present', '2019-05-04', 2),
(28, 4, 'Present', '2019-05-04', 2),
(29, 5, 'Present', '2019-05-04', 2),
(30, 6, 'Present', '2019-05-04', 2),
(31, 1, 'Present', '2019-05-06', 2),
(32, 3, 'Present', '2019-05-06', 2),
(33, 4, 'Present', '2019-05-06', 2),
(34, 5, 'Present', '2019-05-06', 2),
(35, 6, 'Present', '2019-05-06', 2),
(36, 1, 'Present', '2019-05-07', 2),
(37, 3, 'Present', '2019-05-07', 2),
(38, 4, 'Present', '2019-05-07', 2),
(39, 5, 'Present', '2019-05-07', 2),
(40, 6, 'Absent', '2019-05-07', 2),
(41, 1, 'Present', '2019-05-08', 2),
(42, 3, 'Present', '2019-05-08', 2),
(43, 4, 'Present', '2019-05-08', 2),
(44, 5, 'Absent', '2019-05-08', 2),
(45, 6, 'Present', '2019-05-08', 2),
(46, 1, 'Present', '2019-05-09', 2),
(47, 3, 'Present', '2019-05-09', 2),
(48, 4, 'Present', '2019-05-09', 2),
(49, 5, 'Present', '2019-05-09', 2),
(50, 6, 'Present', '2019-05-09', 2),
(51, 1, 'Present', '2019-05-10', 2),
(52, 3, 'Absent', '2019-05-10', 2),
(53, 4, 'Absent', '2019-05-10', 2),
(54, 5, 'Present', '2019-05-10', 2),
(55, 6, 'Absent', '2019-05-10', 2),
(56, 1, 'Present', '2019-05-11', 2),
(57, 3, 'Present', '2019-05-11', 2),
(58, 4, 'Absent', '2019-05-11', 2),
(59, 5, 'Present', '2019-05-11', 2),
(60, 6, 'Absent', '2019-05-11', 2),
(61, 7, 'Present', '2019-05-03', 3),
(62, 8, 'Present', '2019-05-03', 3),
(63, 9, 'Present', '2019-05-03', 3),
(64, 10, 'Present', '2019-05-03', 3),
(65, 11, 'Present', '2019-05-03', 3),
(66, 7, 'Absent', '2019-05-04', 3),
(67, 8, 'Present', '2019-05-04', 3),
(68, 9, 'Absent', '2019-05-04', 3),
(69, 10, 'Present', '2019-05-04', 3),
(70, 11, 'Absent', '2019-05-04', 3),
(71, 7, 'Present', '2019-05-06', 3),
(72, 8, 'Present', '2019-05-06', 3),
(73, 9, 'Absent', '2019-05-06', 3),
(74, 10, 'Present', '2019-05-06', 3),
(75, 11, 'Present', '2019-05-06', 3),
(76, 7, 'Present', '2019-05-07', 3),
(77, 8, 'Present', '2019-05-07', 3),
(78, 9, 'Present', '2019-05-07', 3),
(79, 10, 'Present', '2019-05-07', 3),
(80, 11, 'Present', '2019-05-07', 3),
(81, 7, 'Present', '2019-05-08', 3),
(82, 8, 'Present', '2019-05-08', 3),
(83, 9, 'Present', '2019-05-08', 3),
(84, 10, 'Absent', '2019-05-08', 3),
(85, 11, 'Absent', '2019-05-08', 3),
(86, 7, 'Present', '2019-05-09', 3),
(87, 8, 'Present', '2019-05-09', 3),
(88, 9, 'Absent', '2019-05-09', 3),
(89, 10, 'Present', '2019-05-09', 3),
(90, 11, 'Present', '2019-05-09', 3),
(91, 7, 'Absent', '2019-05-10', 3),
(92, 8, 'Present', '2019-05-10', 3),
(93, 9, 'Present', '2019-05-10', 3),
(94, 10, 'Present', '2019-05-10', 3),
(95, 11, 'Absent', '2019-05-10', 3),
(96, 7, 'Present', '2019-05-11', 3),
(97, 8, 'Present', '2019-05-11', 3),
(98, 9, 'Present', '2019-05-11', 3),
(99, 10, 'Absent', '2019-05-11', 3),
(100, 11, 'Present', '2019-05-11', 3),
(101, 12, 'Present', '2019-05-01', 4),
(102, 13, 'Present', '2019-05-01', 4),
(103, 14, 'Present', '2019-05-01', 4),
(104, 15, 'Present', '2019-05-01', 4),
(105, 16, 'Present', '2019-05-01', 4),
(106, 12, 'Present', '2019-05-02', 4),
(107, 13, 'Absent', '2019-05-02', 4),
(108, 14, 'Present', '2019-05-02', 4),
(109, 15, 'Absent', '2019-05-02', 4),
(110, 16, 'Present', '2019-05-02', 4),
(111, 12, 'Present', '2019-05-03', 4),
(112, 13, 'Present', '2019-05-03', 4),
(113, 14, 'Present', '2019-05-03', 4),
(114, 15, 'Absent', '2019-05-03', 4),
(115, 16, 'Present', '2019-05-03', 4),
(116, 12, 'Present', '2019-05-04', 4),
(117, 13, 'Present', '2019-05-04', 4),
(118, 14, 'Present', '2019-05-04', 4),
(119, 15, 'Present', '2019-05-04', 4),
(120, 16, 'Present', '2019-05-04', 4),
(121, 12, 'Present', '2019-05-06', 4),
(122, 13, 'Absent', '2019-05-06', 4),
(123, 14, 'Absent', '2019-05-06', 4),
(124, 15, 'Present', '2019-05-06', 4),
(125, 16, 'Present', '2019-05-06', 4),
(126, 12, 'Absent', '2019-05-07', 4),
(127, 13, 'Present', '2019-05-07', 4),
(128, 14, 'Present', '2019-05-07', 4),
(129, 15, 'Present', '2019-05-07', 4),
(130, 16, 'Absent', '2019-05-07', 4),
(131, 12, 'Present', '2019-05-08', 4),
(132, 13, 'Absent', '2019-05-08', 4),
(133, 14, 'Present', '2019-05-08', 4),
(134, 15, 'Present', '2019-05-08', 4),
(135, 16, 'Present', '2019-05-08', 4),
(136, 12, 'Present', '2019-05-09', 4),
(137, 13, 'Present', '2019-05-09', 4),
(138, 14, 'Present', '2019-05-09', 4),
(139, 15, 'Present', '2019-05-09', 4),
(140, 16, 'Absent', '2019-05-09', 4),
(141, 12, 'Present', '2019-05-10', 4),
(142, 13, 'Absent', '2019-05-10', 4),
(143, 14, 'Present', '2019-05-10', 4),
(144, 15, 'Present', '2019-05-10', 4),
(145, 16, 'Absent', '2019-05-10', 4),
(146, 12, 'Present', '2019-05-11', 4),
(147, 13, 'Present', '2019-05-11', 4),
(148, 14, 'Present', '2019-05-11', 4),
(149, 15, 'Present', '2019-05-11', 4),
(150, 16, 'Present', '2019-05-11', 4),
(151, 17, 'Present', '2019-05-01', 5),
(152, 18, 'Present', '2019-05-01', 5),
(153, 19, 'Present', '2019-05-01', 5),
(154, 20, 'Absent', '2019-05-01', 5),
(155, 21, 'Absent', '2019-05-01', 5),
(156, 17, 'Present', '2019-05-02', 5),
(157, 18, 'Present', '2019-05-02', 5),
(158, 19, 'Present', '2019-05-02', 5),
(159, 20, 'Present', '2019-05-02', 5),
(160, 21, 'Present', '2019-05-02', 5),
(161, 17, 'Present', '2019-05-03', 5),
(162, 18, 'Present', '2019-05-03', 5),
(163, 19, 'Present', '2019-05-03', 5),
(164, 20, 'Present', '2019-05-03', 5),
(165, 21, 'Absent', '2019-05-03', 5),
(166, 17, 'Present', '2019-05-04', 5),
(167, 18, 'Present', '2019-05-04', 5),
(168, 19, 'Absent', '2019-05-04', 5),
(169, 20, 'Present', '2019-05-04', 5),
(170, 21, 'Present', '2019-05-04', 5),
(171, 17, 'Present', '2019-05-06', 5),
(172, 18, 'Present', '2019-05-06', 5),
(173, 19, 'Present', '2019-05-06', 5),
(174, 20, 'Present', '2019-05-06', 5),
(175, 21, 'Present', '2019-05-06', 5),
(176, 17, 'Present', '2019-05-07', 5),
(177, 18, 'Present', '2019-05-07', 5),
(178, 19, 'Present', '2019-05-07', 5),
(179, 20, 'Present', '2019-05-07', 5),
(180, 21, 'Absent', '2019-05-07', 5),
(181, 17, 'Present', '2019-05-08', 5),
(182, 18, 'Present', '2019-05-08', 5),
(183, 19, 'Present', '2019-05-08', 5),
(184, 20, 'Absent', '2019-05-08', 5),
(185, 21, 'Present', '2019-05-08', 5),
(186, 17, 'Present', '2019-05-09', 5),
(187, 18, 'Present', '2019-05-09', 5),
(188, 19, 'Absent', '2019-05-09', 5),
(189, 20, 'Absent', '2019-05-09', 5),
(190, 21, 'Present', '2019-05-09', 5),
(191, 17, 'Absent', '2019-05-10', 5),
(192, 18, 'Present', '2021-05-10', 5),
(193, 19, 'Present', '2021-05-10', 5),
(194, 20, 'Present', '2021-05-10', 5),
(195, 21, 'Present', '2021-05-10', 5),
(196, 17, 'Present', '2021-05-11', 5),
(197, 18, 'Present', '2021-05-11', 5),
(198, 19, 'Present', '2021-05-11', 5),
(199, 20, 'Absent', '2021-05-11', 5),
(200, 21, 'Present', '2021-05-11', 5),
(201, 7, 'Present', '2021-05-13', 3),
(202, 8, 'Present', '2021-05-13', 3),
(203, 9, 'Present', '2021-05-13', 3),
(204, 10, 'Absent', '2021-05-13', 3),
(205, 11, 'Present', '2021-05-13', 3),
(206, 7, 'Present', '2021-05-14', 3),
(207, 8, 'Present', '2021-05-14', 3),
(208, 9, 'Absent', '2021-05-14', 3),
(209, 10, 'Present', '2021-05-14', 3),
(210, 11, 'Present', '2021-05-14', 3),
(211, 22, 'Present', '2021-05-19', 6),
(212, 1, 'Present', '2021-05-19', 2),
(213, 3, 'Present', '2021-05-19', 2),
(214, 4, 'Present', '2021-05-19', 2),
(215, 5, 'Present', '2021-05-19', 2),
(216, 6, 'Present', '2021-05-19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`class_id`, `class_name`) VALUES
(1, '1 Aktif'),
(2, '1 Dedikasi'),
(3, '1 Ilham'),
(4, '1 Tekun'),
(5, '1 Wawasan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) DEFAULT NULL,
  `student_dob` date DEFAULT NULL,
  `student_class_id` int(11) DEFAULT NULL,
  `student_emailid` varchar(100) DEFAULT NULL,
  `student_password` varchar(100) DEFAULT NULL,
  `student_address` text DEFAULT NULL,
  `student_parentNo` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_dob`, `student_class_id`, `student_emailid`, `student_password`, `student_address`, `student_parentNo`) VALUES
(1, 'Amanyna Jyzan Binti Johar', '2014-03-04', 1, 'student@gmail.com', 'student', 'No 25, Daerah Masjid,01000 Kangar,Perlis.', '01160574814'),
(3, 'Ain Atikah Binti Mohd Ruzuki', '2014-04-19', 1, 'atikah@gmail.com', 'atikah', 'No 56,Taman Berangan Seri,Taman Beragan,01000 Kangar,Perlis.', NULL),
(4, 'Alia Afiqah Binti Danial', '2014-01-15', 1, 'afiqah@gmail.com', 'afiqah', '1/2,Bandar Amanjaya Bukit,01000 Kangar,Perlis.', NULL),
(5, 'Nur Syafiqah Binti Saruji Affendi', '2014-12-14', 1, 'syafiqah@gmail.com', 'syafiqah', 'No 455,Taman Murni,01000 Kangar,Perlis.', NULL),
(6, 'Nur Farizatul Binti Jaafar', '2014-07-12', 1, 'farizatul@gmail.com', '123', 'No 72,Taman Mutiara,01000 Kangar,Perlis.', NULL),
(7, 'Nur Qalesya Binti Aqil', '2014-12-19', 2, 'qalesya@gmail.com', '1234', 'No 911,Taman Norma,01000 Kangar,Perlis.', NULL),
(8, 'Muhammad Aqil Bin Nik Affendi', '2014-12-19', 2, 'aqil@gmail.com', '2222', 'No 204,Taman Murni,01000 Kangar,Perlis.', NULL),
(9, 'Adriana Qalesya Binti Anif Hasim', '2014-04-01', 2, 'adriana@gmail.com', '7272', '2/4,Taman Pengakalan Indah,01000 Kangar,Perlis.', NULL),
(10, 'Muhammad Hafiy Bin Mohd Ruzuki', '2014-08-15', 2, 'hafiy@gmail.com', '444', 'No 110,Taman Paduka,01000 Kangar,Perlis.', NULL),
(11, 'Auni Sumayyah Binti Affendi', '2014-06-18', 2, 'sumayyah@gmail.com', '2121', 'No 35,Daerah Masjid,01000 Kangar,Perlis.', NULL),
(12, 'Lisa Surihani Binti Khan', '2014-05-01', 3, 'lisa@gmail.com', 'lisa', '2/2,Taman Pengkalan Indah,01000 Kangar,Perlis.', NULL),
(13, 'Muhammad Farhan Bin Hilal', '2014-04-12', 3, 'paan@gmail.com', '332', 'No 1980,Taman Norma,01000 Kangar,Perlis.', NULL),
(14, 'Muhammad Alif Farhan Bin Ariff', '2014-10-12', 3, 'aliff@gmail.com', 'farhan', 'No 21,Taman Norma,01000 Kangar,Perlis.', NULL),
(15, 'Muhammad Harris Bin Ghazali', '2014-02-27', 3, 'harris@gmail.com', 'harris', '3/2,Taman Pengakalan Indah,01000 Kangar,Perlis.', NULL),
(16, 'Mohd Ruzuki Bin Awang Hamat', '2014-06-12', 3, 'zuki@gmail.com', '1010', '4/3,Taman Pengkalan Indah,01000 kangar,Perlis.', NULL),
(17, 'Nur Afiqah Binti Shafie', '2014-08-17', 4, 'fiqa@gmail.com', 'pikah', 'No 10,Taman Norma,01000 Kangar,Perlis.', NULL),
(18, 'Aidil Zaquan Bin Nik Redzuan', '2014-09-18', 4, 'aidil@gmail.com', 'zaquan', 'No 399,Taman Murni,01000 Kangar,Perlis.', NULL),
(19, 'Maria Binti Ali', '2014-07-15', 4, 'maria@gmail.com', '0002', 'No 20,Taman Permai,01000 Kangar,Perlis.', NULL),
(20, 'Ainur Zuhairah Binti Redzuan', '2014-01-14', 4, 'azuhairah@gmail.com', 'ainur', '2/2,Taman Pengkalan Indah,01000 Kangar,Perlis.', NULL),
(21, 'Rafael Bin Razali', '2014-12-05', 4, 'fael@gmail.com', 'rafael', 'No 345,Taman Paduka,01000 Kangar,Perlis.', NULL),
(22, 'Zaquan Adha Bin Khalish', '2014-04-11', 5, 'adha@gmail.com', 'adha', 'No 101,Taman Mutiara,01000 Kangar,Perlis.', NULL),
(23, 'Ain Ruziana Binti Mohd Ruzuki', '2014-07-06', 5, 'ain@gmail.com', '0009', 'No 229,Taman Norma,01000 Kangar,Perlis.', NULL),
(24, 'Muhammad Faris Bin Adnan', '2014-05-07', 5, 'faris@gmail.com', 'faris2', '1/4,Taman Pengkalan Assam,01000 Kangar,Perlis.', NULL),
(25, 'Nursyuhana Binti Abdul Rashid', '2014-05-15', 5, 'hana@gmail.com', 'hanaa', 'No 72,Taman Paduka,01000 Kangar,Perlis.', NULL),
(26, 'Nur Syazwani Binti Abdul Halim', '2014-02-25', 5, 'wanie@gmail.com', 'syazwani', '1/5,Taman Pengkalan Indah,01000 Kangar,Perlis.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) DEFAULT NULL,
  `teacher_address` text DEFAULT NULL,
  `teacher_emailid` varchar(100) DEFAULT NULL,
  `teacher_password` varchar(100) DEFAULT NULL,
  `teacher_doj` date DEFAULT NULL,
  `teacher_image` varchar(100) DEFAULT NULL,
  `teacher_class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_doj`, `teacher_image`, `teacher_class_id`) VALUES
(2, 'Ain Suraya Binti Mohd Ruzuki', '911,Lorong Angsana 26,Taman Keladi,08000 Sungai Petani,Kedah.', 'suraya@gmail.com', 'teacher', '2019-05-01', '5cdd2ed638edc.jpg', 1),
(3, 'Umairah Uzma Binti Md Noor', '1/2,Bandar Arkid,Bandar Laguna Merbok,08000 Sungai Petani,Kedah.', 'umairahuzma@gmail.com', 'teacher1', '2017-12-31', '5ce53488d50ec.jpg', 2),
(4, 'Muhammad Amirul Bin Azhar', 'No 1990,Bandar Perdana1,Bandar Perdana,08000 Sungai Petani,Kedah.', 'amirulazhar@gmail.com', 'teacher2', '2019-05-01', '5cdd2f35be8fa.jpg', 3),
(5, 'Nur Medina Binti Azlan', '2/3,Bandar Baru,Lagenda Height,08000 Sungai Petani,Kedah.', 'medinaanuarr@gmail.com', 'teacher3', '2020-05-02', '5cdd2f767568c.jpg', 4),
(6, 'Kamarulzaman Bin Harun', '1790,Taman Sutera,Bandar Indah,08000 Sungai Petani,Kedah.', 'kamarulzaman@gmail.com', 'teacher4', '2002-05-17', '60a4002ca0163.jpg', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
