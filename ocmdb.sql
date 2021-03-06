-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 07:48 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `Avatar` varchar(250) DEFAULT 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png',
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Role` varchar(120) DEFAULT NULL,
  `Faculty` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Avatar`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `Role`, `Faculty`, `AdminRegdate`) VALUES
(1, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Administrator', 'admin', '0143590087', 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Administrator', '-', '2021-01-21 11:48:13'),
(2, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Marketing Manager', 'manager', '0243590088', 'manager@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Manager', '-', '2021-01-21 20:44:53'),
(3, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Coordinator of IT Faculty', 'coordinatorIT', '0243590089', 'coordinatorIT@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Coordinator', 'Information Technology', '2021-01-21 11:28:13'),
(4, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Coordinator of Business Faculty', 'coordinatorBS', '0243590090', 'coordinatorBS@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Coordinator', 'Business', '2021-01-21 11:42:04'),
(5, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Coordinator of GD Faculty', 'coordinatorGD', '0243590091', 'coordinatorGD@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Coordinator', 'Graphic Design', '2021-01-21 21:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(1, 'Information Technology', '2021-01-03 12:29:54'),
(2, 'Business', '2021-01-25 12:13:16'),
(3, 'Graphic Design', '2021-01-25 12:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblmagazine`
--

CREATE TABLE `tblmagazine` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `CategoryID` int(5) DEFAULT NULL,
  `Publisher` varchar(200) DEFAULT NULL,
  `Language` varchar(200) DEFAULT NULL,
  `AcademicYear` int(10) DEFAULT NULL,
  `MagazineDescription` mediumtext DEFAULT NULL,
  `CoverImage` varchar(250) DEFAULT NULL,
  `UploadMagazine` varchar(250) DEFAULT NULL,
  `PostDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `Reviewer` varchar(200) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmagazine`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div class=\"head\" style=\"color: rgb(33, 37, 41); font-family: \" exo=\"\" 2\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h4 style=\"margin-bottom: 15px; line-height: 1.2; color: rgba(0, 0, 0, 0.66); font-size: 36px;\">About us</h4></div><div class=\"content\" style=\"color: rgb(33, 37, 41); font-family: \" exo=\"\" 2\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"row\" style=\"display: flex; flex-wrap: wrap;\"><div class=\"col-12 col-lg-12 col-md-12 col-sm-12\" style=\"width: 870px; -webkit-box-flex: 0; flex: 0 0 100%; max-width: 100%;\"><p style=\"margin-bottom: 1rem; line-height: 1.5; color: rgb(60, 60, 60);\"><span style=\"color: rgb(123, 136, 152); font-family: \" mercury=\"\" ssm=\"\" a\",=\"\" \"mercury=\"\" b\",=\"\" georgia,=\"\" times,=\"\" \"times=\"\" new=\"\" roman\",=\"\" \"microsoft=\"\" yahei=\"\" new\",=\"\" yahei\",=\"\" å¾®è½¯é›…é»‘,=\"\" å®‹ä½“,=\"\" simsun,=\"\" stxihei,=\"\" åŽæ–‡ç»†é»‘,=\"\" serif;=\"\" font-size:=\"\" 26px;=\"\" letter-spacing:=\"\" normal;\"=\"\">The University of Greenwich is a British, United Kingdom-based university. One of the most respected, high quality universities in London and Kent, Greenwich has a proud tradition in education which dates back more than 125 years. It is the academic home to a diverse and talented community of more than 21,000 students in the UK. It also has more than 15,500 students studying with 30 partner academic institutions in 29 countries.<br><br>Being one of the International University Partners of University of Greenwich across the world, the University of Greenwich (Vietnam) in alliance with FPT Education normally called FPT Greenwich offers an unique opportunity for students to have the best of both worlds: a world-class undergraduate education at an affordable cost.<br><br>Tuition fee is of 1/3 equivalent to that of the UK and other developed countries. Students who participate in this program will receive the same degree bestowed by the University of Greenwich as received by students who study on campus at Greenwich, United Kingdom.<br><br>The courses are offered by FPT Education under regular supervision of the University of Greenwich. It provides students the industry-related, up-to-date knowledge, certified by international standards, that is required for entering the highly competitive employment market.<br><br>Graduates from FPT Greenwich have a high chance of finding employment in many areas of business, such as IT Management, Business Computing consultancy, Project Management, Internet and e-Commerce Applications, Marketing Executive, Event Manager, Financial Executive, etc.</span></p></div></div></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '205 Nguyen Xi Street<br>Binh Thanh District<br>Ho Chi Minh City', 'fptgreenwich@fpt.edu.vn', '0933108554', '2021-01-01 10:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `Avatar` varchar(250) DEFAULT 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png',
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Faculty` varchar(200) DEFAULT NULL,
  `Role` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Avatar`, `FullName`, `MobileNumber`, `Email`, `Password`, `Faculty`, `Role`, `RegDate`) VALUES

(6, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Vy Tran', '0343590087', 'vytht@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Information Technology', 'Student', '2021-01-07 06:45:39'),
(7, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Anh Duy', '0343590088', 'anhduy@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Business', 'Student', '2021-01-10 07:04:23'),
(8, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Thanh Trinh', '0343590089', 'hoangthanh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Graphic Design', 'Student', '2021-01-17 07:16:43'),
(9, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Duc Long', '0343590090', 'duclong@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Information Technology', 'Student', '2021-01-28 18:36:21'),

(10, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Guest 01', '0443590087', 'guest01@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Information Technology', 'Guest', '2021-01-27 22:45:39'),
(11, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Guest 02', '0443590088', 'guest02@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Business', 'Guest', '2021-01-10 11:04:23'),
(12, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Guest 03', '0443590089', 'guest03@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Graphic Design', 'Guest', '2021-01-15 17:16:43'),
(13, 'd44e27d97b5d7f0d60b24251e1cef1811614335278.png', 'Guest 04', '0443590090', 'guest04@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Information Technology', 'Guest', '2021-01-12 09:36:21');


-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmagazine`
--
ALTER TABLE `tblmagazine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--

ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblmagazine`
--
ALTER TABLE `tblmagazine`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
