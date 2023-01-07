-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 07:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `admin_id` int(30) NOT NULL,
  `admin_uname` varchar(300) NOT NULL,
  `admin_fname` varchar(300) NOT NULL,
  `admin_lname` varchar(300) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL,
  `admin_tp_no` int(20) NOT NULL,
  `admin_address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`admin_id`, `admin_uname`, `admin_fname`, `admin_lname`, `admin_email`, `admin_password`, `admin_tp_no`, `admin_address`) VALUES
(1, 'admin@gmail.com', 'fg', 'fdg', 'admin@gmail.com', '123', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_tbl`
--

CREATE TABLE `booking_tbl` (
  `id` int(30) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `nic` varchar(30) DEFAULT NULL,
  `hotelname` varchar(50) DEFAULT NULL,
  `packagename` varchar(50) DEFAULT NULL,
  `roomcount` int(5) DEFAULT NULL,
  `facilities` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tpno` int(20) DEFAULT NULL,
  `checkin` varchar(10) DEFAULT NULL,
  `checkout` varchar(10) DEFAULT NULL,
  `totalprice` varchar(50) DEFAULT NULL,
  `paymenttype` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_tbl`
--

INSERT INTO `booking_tbl` (`id`, `fullname`, `nic`, `hotelname`, `packagename`, `roomcount`, `facilities`, `email`, `tpno`, `checkin`, `checkout`, `totalprice`, `paymenttype`, `status`) VALUES
(34, 'Nakarasan', '200033402854', 'Jetwing Colombo', 'Package B', 6, 'Swimming Pool', 'krishzkara29@gmail.com', 765705081, '2023-01-06', '2023-01-18', '300000', 'Credit Card', 'Cancel'),
(35, 'Arulpiragasamjansan', '992590653v', 'Village Hotel', 'Package B', 5, NULL, 'jansanarulpiragasam99@gmail.com', 763350902, '2023-02-07', '2023-02-11', '300000', 'Credit Card', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_tbl`
--

CREATE TABLE `cancellation_tbl` (
  `cancellation_id` int(30) NOT NULL,
  `canceller_uname` varchar(200) NOT NULL,
  `cancel_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `confirmation_tbl`
--

CREATE TABLE `confirmation_tbl` (
  `receipt_id` int(30) NOT NULL,
  `confirmer_uname` varchar(200) NOT NULL,
  `confirmation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tbl`
--

CREATE TABLE `feedback_tbl` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `hotel` varchar(100) DEFAULT NULL,
  `package` varchar(100) DEFAULT NULL,
  `message` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_tbl`
--

INSERT INTO `feedback_tbl` (`id`, `name`, `email`, `hotel`, `package`, `message`) VALUES
(1, 'Nakarasan', 'krishzkara29@gmail.com', 'Jetwing Colombo', 'Package B', 'First time at the cinnamon lakeside.Stayed with my husband and two grown up boys.Great room allocated.Thank you.'),
(2, 'Thushigha', 'thushigha@gmail.com', '	Cinnamon Lakeside', 'Package A', 'Rooms were large and well equipped. good facilities, delicious breakfast and rooftop pool'),
(4, 'Jansan', 'jansanarulpiragasam99@gmail.com', 'jedvin', 'A', 'All good');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_tbl`
--

CREATE TABLE `hotel_tbl` (
  `id` int(10) NOT NULL,
  `hotel_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_tbl`
--

INSERT INTO `hotel_tbl` (`id`, `hotel_name`, `email`, `mobile_no`, `district`) VALUES
(62, 'jedvin', 'jansanarulpiragasam99@gmail.com', '0763350902', 'Jaffna');

-- --------------------------------------------------------

--
-- Table structure for table `package_tbl`
--

CREATE TABLE `package_tbl` (
  `id` int(30) NOT NULL,
  `hotel_name` varchar(100) DEFAULT NULL,
  `package_name` varchar(200) NOT NULL,
  `cancel_policy` varchar(50) NOT NULL,
  `room_facility` varchar(200) NOT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `fun_things` varchar(100) NOT NULL,
  `price` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_tbl`
--

INSERT INTO `package_tbl` (`id`, `hotel_name`, `package_name`, `cancel_policy`, `room_facility`, `destination`, `fun_things`, `price`) VALUES
(4, 'Fairway colombo', 'Package C', 'Free Cancellation', 'Air Conditioning', 'Malaysia', 'Live Music/Performance', '18000'),
(7, 'Granbay Hotel Colombo', 'wdwqd', 'Free Cancellation', 'Air Conditioning', 'Malaysia', 'Theemed Dinner Nights', '25000');

-- --------------------------------------------------------

--
-- Table structure for table `payment_tbl`
--

CREATE TABLE `payment_tbl` (
  `payment_id` int(11) NOT NULL,
  `exp_date` date NOT NULL,
  `cvv` int(3) NOT NULL,
  `card_no` int(30) NOT NULL,
  `pay_date` date NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `card_type` enum('Credit Card','Debit Card','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tourist_tbl`
--

CREATE TABLE `tourist_tbl` (
  `id` int(30) NOT NULL,
  `tourist_uname` varchar(200) NOT NULL,
  `tourist_nic_passport` varchar(200) NOT NULL,
  `tourist_email` varchar(200) NOT NULL,
  `tourist_password` varchar(200) NOT NULL,
  `tourist_tp_no` int(20) NOT NULL,
  `tourist_country` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourist_tbl`
--

INSERT INTO `tourist_tbl` (`id`, `tourist_uname`, `tourist_nic_passport`, `tourist_email`, `tourist_password`, `tourist_tp_no`, `tourist_country`) VALUES
(2, 'Nakarasan', '200033402854', 'krishzkara29@gmail.com', '123', 765705081, 'Sri Lanka'),
(12, 'Thushigha', '997313518V', 'thushigha@gmail.com', '123', 775678832, 'Sri Lanka'),
(25, 'Suwishana', '886385275V', 'suwishana@gmail.com', '123', 762549724, 'Sri Lanka'),
(26, 'Jansan', '996874123V', 'jansan@gmail.com', '123', 760306900, 'Sri Lanka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancellation_tbl`
--
ALTER TABLE `cancellation_tbl`
  ADD PRIMARY KEY (`cancellation_id`);

--
-- Indexes for table `confirmation_tbl`
--
ALTER TABLE `confirmation_tbl`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `feedback_tbl`
--
ALTER TABLE `feedback_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_tbl`
--
ALTER TABLE `hotel_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_tbl`
--
ALTER TABLE `package_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_tbl`
--
ALTER TABLE `payment_tbl`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tourist_tbl`
--
ALTER TABLE `tourist_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `admin_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `cancellation_tbl`
--
ALTER TABLE `cancellation_tbl`
  MODIFY `cancellation_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confirmation_tbl`
--
ALTER TABLE `confirmation_tbl`
  MODIFY `receipt_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_tbl`
--
ALTER TABLE `feedback_tbl`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hotel_tbl`
--
ALTER TABLE `hotel_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `package_tbl`
--
ALTER TABLE `package_tbl`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_tbl`
--
ALTER TABLE `payment_tbl`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourist_tbl`
--
ALTER TABLE `tourist_tbl`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
