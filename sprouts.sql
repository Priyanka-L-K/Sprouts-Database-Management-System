-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 11:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sprouts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `ctId` int(11) NOT NULL,
  `vId` int(11) NOT NULL,
  `Sdate` date NOT NULL,
  `Ctime` time NOT NULL,
  `Cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`ctId`, `vId`, `Sdate`, `Ctime`, `Cname`) VALUES
(2, 1, '2024-06-24', '13:00:00', 'Sprout Buddies'),
(2, 2, '2024-07-01', '13:00:00', 'Sprout Buddies'),
(2, 3, '2024-07-07', '13:00:00', 'Sprout Buddies'),
(2, 4, '2024-07-14', '14:00:00', 'Sprout Sandwiches'),
(3, 1, '2024-06-25', '15:00:00', 'Sprout Greens'),
(4, 1, '2024-06-25', '16:00:00', 'Sprout Certifications'),
(4, 2, '2024-06-26', '16:00:00', 'Sprout Certifications'),
(5, 1, '2024-07-26', '13:00:00', 'Sprout Certifications'),
(5, 2, '2024-07-26', '14:00:00', 'Sprout Buddies'),
(5, 3, '2024-07-26', '15:00:00', 'Sprout Sandwiches'),
(5, 4, '2024-07-26', '16:00:00', 'Sprout Sandwiches'),
(5, 5, '2024-07-26', '17:00:00', 'Microgreens');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cId` int(11) NOT NULL,
  `Cname` varchar(255) NOT NULL,
  `Street` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `StateAb` char(2) NOT NULL,
  `Zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cId`, `Cname`, `Street`, `City`, `StateAb`, `Zipcode`) VALUES
(1, 'Abed Abdi', '309 Hcounty Road', 'Abbott', 'TX', '76621-0057'),
(2, 'Ismail Gulg', '405 E Mesquite Street', 'Abbott', 'TX', '76621-0057'),
(3, 'Shakir Ali', '5000 Spectrum Street', 'Addison', 'TX', '75001-6880'),
(4, 'Abdur Rahman', '1000 County Road', 'Bradley', 'Ok', '73011-0121'),
(5, 'Kalipada Ghoshal', 'Boundary Road', 'Bradley', 'OK', '73011-9600'),
(6, 'Manishi Dey', '450 Main Street', 'Mound City', 'KS', '66056-0001'),
(7, 'Nandalal Bose', 'S Metcalf Road', 'Louisburg', 'KS', '66053-0541'),
(8, 'Raja Ravi Varma', '2000 Forest Grove blvd', 'Allen', 'TX', '75002-8811'),
(9, 'Sunil Das', '4000 Woodcreek Road', 'Carrollton', 'TX', '75006-1911'),
(10, 'Jasper Johns', '2500 Sunset Ridge Drive', 'Rockwall', 'TX', '75032-0006'),
(11, 'Winslow Homer', '11300 Juniper Lane', 'Irving', 'TX', '75039-0101'),
(12, 'Albert Bierstadt', '400 Spruce Street', 'Leavenworth', 'KS', '66048-0001'),
(13, 'Edward Hopper', '1500 255th Street', 'Hillsdale', 'KS', '66036-0061'),
(14, 'Georgia O\'Keeffe', '3000 Weiss Lane', 'Irving', 'TX', '75039-0006'),
(15, 'Modupeola Fadugba', '1112 18TH Street', 'Plano', 'TX', '75086-0019'),
(16, 'Ekene Maduka', '15TH Street', 'Plano', 'TX', '75086-0015'),
(17, 'Olu Amoda', '200 Travis Street', 'Sherman', 'TX', '75090-0005'),
(18, 'Koki Tanaka', '5000 W Holiday Road', 'Fate', 'TX', '75087-2136'),
(19, 'Tatsuo Miyajima', 'Bella Ranch Drive', 'Choctaw', 'OK', '73020-0017'),
(20, 'Li Chen', '2090 County Road', 'Cement', 'OK', '73017-1100'),
(21, 'Zhan Wang', '1600 N Santa Fe', 'Edmond', 'OK', '73003-3661');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `sId` int(11) DEFAULT NULL,
  `SSN` int(11) NOT NULL,
  `Ename` varchar(255) NOT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `StateAb` varchar(255) DEFAULT NULL,
  `Zipcode` varchar(255) DEFAULT NULL,
  `Etype` varchar(255) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Sdate` date DEFAULT NULL,
  `Edate` date DEFAULT NULL,
  `Level` varchar(255) DEFAULT NULL,
  `Asalary` decimal(10,2) DEFAULT NULL,
  `Agency` varchar(255) DEFAULT NULL,
  `Hsalary` decimal(10,2) DEFAULT NULL,
  `Institute` varchar(255) DEFAULT NULL,
  `Itype` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`sId`, `SSN`, `Ename`, `Street`, `City`, `StateAb`, `Zipcode`, `Etype`, `Bdate`, `Sdate`, `Edate`, `Level`, `Asalary`, `Agency`, `Hsalary`, `Institute`, `Itype`) VALUES
(1, 123456666, 'Olampiosi Pi', '100 Varsity Circle', 'Arlington', 'TX', '76019-1111', 'T', '2005-02-01', '2023-01-20', NULL, NULL, NULL, 'Top Performers', '10.00', NULL, NULL),
(1, 123456777, 'Radha Gupta', '200 Nedderman Dr', 'Arlington', 'TX', '76019-1111', 'T', '2005-01-20', '2023-01-20', NULL, NULL, NULL, 'AR Manpower', '10.00', NULL, NULL),
(1, 123456780, 'Cao Peng', '12 W. Mitchell St.', 'Arlington', 'TX', '76019-1111', 'I', '2008-01-20', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'UTA', 'U'),
(1, 123456781, 'Giun Seong', '12 S. Pecan St.', 'Arlington', 'TX', '76019-1111', 'I', '2007-01-01', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'Arlington High School ', 'S'),
(1, 123456788, 'Christian Cart', '20 Main Street', 'Arlington', 'TX', '76019-1111', 'F', '2001-01-02', '2023-01-20', NULL, 'Associate 1', '25000.00', NULL, NULL, NULL, NULL),
(1, 123456789, 'Mary Durer', '11 Cooper Street', 'Arlington', 'TX', '76019-1111', 'F', '2000-01-20', '2023-01-20', NULL, 'Associate 2', '30000.00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `iId` int(11) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Sprice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`iId`, `Iname`, `Sprice`) VALUES
(1, 'Broccoli Sprouts', '3.00'),
(2, 'Kale Sprouts', '3.00'),
(3, 'Alfalfa Sprouts', '3.00'),
(4, 'Mung Sprouts', '4.00'),
(5, 'Chickpeas Sprouts', '4.00'),
(6, 'Onion Sprouts', '4.00'),
(7, 'Soyabean Sprouts', '5.00'),
(8, 'Clover Sprouts', '3.00'),
(9, 'Kidney Beans Sprouts', '4.00'),
(10, 'Adzuki Bean Sprouts', '4.00'),
(11, 'Beet Sprouts', '5.00'),
(12, 'Green Pea Sprouts', '5.00'),
(13, 'Radish Sprouts', '6.00'),
(14, 'Lentil Sprouts', '4.00'),
(18, 'apples', '1.00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemview`
-- (See below for the actual view)
--
CREATE TABLE `itemview` (
`IId` int(11)
,`ItemName` varchar(255)
,`NoOfBoxes` decimal(32,0)
,`ItemPrice` decimal(10,2)
,`ItemRevenue` decimal(42,2)
,`ItemCustomers` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `oldprice`
--

CREATE TABLE `oldprice` (
  `iId` int(11) NOT NULL,
  `Sprice` decimal(10,2) NOT NULL,
  `Sdate` date NOT NULL,
  `Edate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oldprice`
--

INSERT INTO `oldprice` (`iId`, `Sprice`, `Sdate`, `Edate`) VALUES
(1, '3.00', '2023-01-20', NULL),
(2, '3.00', '2023-01-20', NULL),
(3, '1.00', '2023-01-20', '2023-01-25'),
(3, '2.00', '2023-01-26', '2023-01-28'),
(3, '3.00', '2023-01-29', NULL),
(4, '4.00', '2023-01-20', NULL),
(5, '4.00', '2023-01-20', NULL),
(6, '4.00', '2023-01-20', NULL),
(7, '5.00', '2023-01-20', NULL),
(8, '3.00', '2023-01-20', NULL),
(9, '4.00', '2023-01-20', NULL),
(10, '4.00', '2023-01-20', NULL),
(11, '5.00', '2023-01-20', NULL),
(12, '5.00', '2023-01-20', NULL),
(13, '6.00', '2023-01-20', NULL),
(14, '2.00', '2023-01-20', '2023-01-27'),
(14, '3.00', '2023-01-28', '2023-01-30'),
(14, '4.00', '2023-01-31', '2023-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `oId` int(11) NOT NULL,
  `sId` int(11) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `Odate` date DEFAULT NULL,
  `Ddate` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`oId`, `sId`, `cId`, `Odate`, `Ddate`, `Amount`) VALUES
(1, 1, 1, '2023-01-20', '2023-01-21', '3.00'),
(2, 1, 2, '2023-01-20', '2023-01-21', '3.00'),
(3, 1, 3, '2023-01-20', '2023-01-21', '4.00'),
(4, 1, 4, '2023-01-20', '2023-01-21', '12.00'),
(5, 1, 5, '2023-01-20', '2023-01-21', '4.00'),
(6, 1, 6, '2023-01-20', '2023-01-21', '27.00'),
(7, 1, 7, '2023-01-20', '2023-01-21', '4.00'),
(8, 1, 8, '2023-01-20', '2023-01-21', '5.00'),
(9, 1, 9, '2023-01-20', '2023-01-21', '5.00'),
(10, 1, 10, '2023-01-20', '2023-01-21', '5.00'),
(11, 1, 11, '2023-01-20', '2023-01-21', '3.00'),
(12, 1, 12, '2023-01-25', '2023-01-26', '4.00'),
(13, 1, 13, '2023-01-25', '2023-01-26', '4.00'),
(14, 1, 14, '2023-01-25', '2023-01-26', '4.00'),
(15, 1, 2, '2023-01-25', '2023-01-26', '22.00'),
(16, 1, 5, '2023-01-25', '2023-01-26', '5.00'),
(17, 1, 9, '2023-01-25', '2023-01-26', '6.00'),
(18, 1, 15, '2023-01-30', '2023-01-31', '6.00'),
(19, 1, 16, '2023-01-30', '2023-01-31', '3.00'),
(20, 1, 17, '2023-01-30', '2023-01-31', '3.00'),
(21, 1, 2, '2023-01-30', '2023-01-31', '4.00'),
(22, 1, 9, '2023-01-30', '2023-01-31', '4.00'),
(23, 1, 18, '2023-02-05', '2023-02-06', '4.00'),
(24, 1, 19, '2023-02-05', '2023-02-06', '4.00'),
(25, 1, 20, '2023-02-05', '2023-02-06', '4.00'),
(26, 1, 21, '2023-02-10', '2023-02-11', '4.00'),
(27, 1, 21, '2023-02-12', '2023-02-13', '4.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `oId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `iId` int(11) NOT NULL,
  `Icount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oId`, `sId`, `iId`, `Icount`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 4, 1),
(4, 1, 5, 1),
(4, 1, 6, 2),
(5, 1, 5, 1),
(6, 1, 5, 1),
(6, 1, 6, 2),
(6, 1, 7, 3),
(7, 1, 6, 1),
(8, 1, 7, 1),
(9, 1, 7, 1),
(10, 1, 7, 1),
(11, 1, 8, 1),
(12, 1, 9, 1),
(13, 1, 10, 1),
(14, 1, 10, 1),
(15, 1, 4, 1),
(15, 1, 5, 1),
(15, 1, 6, 1),
(15, 1, 7, 2),
(16, 1, 12, 1),
(17, 1, 13, 1),
(18, 1, 13, 1),
(19, 1, 1, 1),
(20, 1, 2, 1),
(21, 1, 4, 1),
(22, 1, 4, 1),
(23, 1, 4, 1),
(24, 1, 4, 1),
(25, 1, 5, 1),
(26, 1, 5, 1),
(27, 1, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `sId` int(11) NOT NULL,
  `Sname` varchar(255) NOT NULL,
  `Street` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `StateAb` char(2) NOT NULL,
  `ZipCode` varchar(10) NOT NULL,
  `Sdate` date NOT NULL,
  `Telno` varchar(20) NOT NULL,
  `URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`sId`, `Sname`, `Street`, `City`, `StateAb`, `ZipCode`, `Sdate`, `Telno`, `URL`) VALUES
(1, 'Arlington Sprouts-1', '1 Cooper Street', 'Arlington', 'TX', '76019-0012', '2023-01-10', '8172721111', 'www.ArlingtonSprouts-1.com');

-- --------------------------------------------------------

--
-- Table structure for table `store_customer`
--

CREATE TABLE `store_customer` (
  `sId` int(11) NOT NULL,
  `cId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_customer`
--

INSERT INTO `store_customer` (`sId`, `cId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `store_item`
--

CREATE TABLE `store_item` (
  `sId` int(11) NOT NULL,
  `iId` int(11) NOT NULL,
  `Scount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_item`
--

INSERT INTO `store_item` (`sId`, `iId`, `Scount`) VALUES
(1, 1, 10),
(1, 2, 10),
(1, 3, 10),
(1, 4, 10),
(1, 5, 10),
(1, 6, 10),
(1, 7, 10),
(1, 8, 10),
(1, 9, 10),
(1, 10, 12),
(1, 11, 13),
(1, 12, 10),
(1, 13, 16),
(1, 14, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vId` int(11) NOT NULL,
  `Vname` varchar(255) NOT NULL,
  `Street` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `StateAb` char(2) NOT NULL,
  `Zipcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vId`, `Vname`, `Street`, `City`, `StateAb`, `Zipcode`) VALUES
(1, 'Organic Nature', '1500 E Exchange Road', 'Allen', 'TX', '75002-4504'),
(2, 'Green Valley', '1405 Julian Street', 'Addison', 'TX', '75001-4633'),
(3, 'Green Mountains', '800 Preston Road', 'Gunter', 'TX', '75058-0001'),
(4, 'Whole Foods', '1010 Spicewood Drive', 'Garland', 'TX', '75044-2569'),
(5, 'LA Queen', '500 Angi Road', 'Minden', 'LA', '71055-1004'),
(6, 'Castor Sprouts', '100 New Ramah Road', 'Castor', 'LA', '71016-2402');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_item`
--

CREATE TABLE `vendor_item` (
  `vId` int(11) NOT NULL,
  `iId` int(11) NOT NULL,
  `Vprice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_item`
--

INSERT INTO `vendor_item` (`vId`, `iId`, `Vprice`) VALUES
(1, 1, '2.00'),
(1, 2, '2.00'),
(1, 3, '1.00'),
(1, 14, '1.00'),
(2, 4, '3.00'),
(2, 5, '2.00'),
(2, 6, '2.00'),
(2, 13, '4.00'),
(3, 7, '3.00'),
(3, 8, '2.00'),
(3, 9, '2.00'),
(3, 10, '2.00'),
(4, 11, '3.00'),
(4, 12, '3.00'),
(4, 13, '2.00'),
(4, 14, '2.00'),
(5, 7, '3.00'),
(5, 11, '2.00'),
(5, 13, '5.00'),
(5, 14, '3.00'),
(6, 7, '2.00'),
(6, 8, '1.00'),
(6, 9, '3.00'),
(6, 10, '4.00');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_store`
--

CREATE TABLE `vendor_store` (
  `vId` int(11) NOT NULL,
  `sId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_store`
--

INSERT INTO `vendor_store` (`vId`, `sId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Structure for view `itemview`
--
DROP TABLE IF EXISTS `itemview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemview`  AS SELECT `i`.`iId` AS `IId`, `i`.`Iname` AS `ItemName`, sum(`oi`.`Icount`) AS `NoOfBoxes`, `i`.`Sprice` AS `ItemPrice`, sum(`oi`.`Icount` * `i`.`Sprice`) AS `ItemRevenue`, count(distinct `o`.`cId`) AS `ItemCustomers` FROM (((`item` `i` join `order_item` `oi` on(`i`.`iId` = `oi`.`iId`)) join `store_item` `si` on(`i`.`iId` = `si`.`iId`)) join `order` `o` on(`oi`.`oId` = `o`.`oId` and `si`.`sId` = `o`.`sId`)) GROUP BY `i`.`iId`, `i`.`Iname`, `i`.`Sprice``Sprice`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`ctId`,`vId`),
  ADD KEY `vId` (`vId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `sId` (`sId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`iId`),
  ADD UNIQUE KEY `Iname` (`Iname`);

--
-- Indexes for table `oldprice`
--
ALTER TABLE `oldprice`
  ADD PRIMARY KEY (`iId`,`Sdate`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`oId`),
  ADD KEY `sId` (`sId`),
  ADD KEY `cId` (`cId`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oId`,`sId`,`iId`),
  ADD KEY `sId` (`sId`),
  ADD KEY `iId` (`iId`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD PRIMARY KEY (`sId`,`cId`),
  ADD KEY `cId` (`cId`);

--
-- Indexes for table `store_item`
--
ALTER TABLE `store_item`
  ADD PRIMARY KEY (`sId`,`iId`),
  ADD KEY `iId` (`iId`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vId`);

--
-- Indexes for table `vendor_item`
--
ALTER TABLE `vendor_item`
  ADD PRIMARY KEY (`vId`,`iId`),
  ADD KEY `iId` (`iId`);

--
-- Indexes for table `vendor_store`
--
ALTER TABLE `vendor_store`
  ADD PRIMARY KEY (`vId`,`sId`),
  ADD KEY `sId` (`sId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `iId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `sId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`vId`) REFERENCES `vendor` (`vId`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `store` (`sId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
