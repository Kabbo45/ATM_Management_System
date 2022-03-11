-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 04:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `pin` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `pin`) VALUES
('admin', 1234),
('admin2', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `blocked_ac`
--

CREATE TABLE `blocked_ac` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `permanent_ad` varchar(30) NOT NULL,
  `present_ad` varchar(30) NOT NULL,
  `gender` int(30) NOT NULL,
  `nid` int(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `monthly_income` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pin` int(20) NOT NULL,
  `ac_no` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `balance` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blocked_ac`
--

INSERT INTO `blocked_ac` (`name`, `phone`, `permanent_ad`, `present_ad`, `gender`, `nid`, `occupation`, `monthly_income`, `username`, `pin`, `ac_no`, `date`, `balance`) VALUES
('Nayema Khatun', '+8801822055190', 'Dhaka', 'Dhaka', 2, 2147483647, 'Student', '600000', 'nayema', 1234, 'AC68152131', 'Sunday, February 27,', 500),
('Nayeem', '+8801234', 'tongi', 'tongi', 3, 87525767, 'Housewife', '70000', 'nayeem', 1234, 'AC96706010', 'Sunday, February 27,', 500),
('Tanvir Hasan Tomal', '+8801875944791', 'Thanapara,Tangail', 'Mirpur-01, Dhaka', 1, 1958838086, 'Student', '500', 'Tomal', 26321, 'AC73337666', 'Tuesday, March 8, 20', 157),
('Md Imran Nazir', '+8801722204245', 'Rajbari, Comilla', 'Rajbari, Comilla', 1, 2147483647, 'Student', '1600', 'imran', 12345, 'AC20102556', 'Tuesday, March 8, 20', 440);

-- --------------------------------------------------------

--
-- Table structure for table `blocked_card`
--

CREATE TABLE `blocked_card` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `permanent_ad` varchar(30) NOT NULL,
  `present_ad` varchar(30) NOT NULL,
  `gender` int(30) NOT NULL,
  `nid` int(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `monthly_income` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pin` int(30) NOT NULL,
  `card_no` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `balance` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blocked_card`
--

INSERT INTO `blocked_card` (`name`, `phone`, `permanent_ad`, `present_ad`, `gender`, `nid`, `occupation`, `monthly_income`, `username`, `pin`, `card_no`, `date`, `balance`) VALUES
('Md.Zobayer Hasan Nayem', '+8801615257555', 'Tongi', 'Tongi', 1, 2147483647, 'Student', 100000, 'Nayem', 56777, '6761 8723 1674 1912', 'Sunday, February 27, 2022', 500);

-- --------------------------------------------------------

--
-- Table structure for table `crypto_history`
--

CREATE TABLE `crypto_history` (
  `username` varchar(30) NOT NULL,
  `account_type` varchar(30) NOT NULL,
  `wallet_ad` varchar(30) NOT NULL,
  `amount_bought` varchar(30) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crypto_history`
--

INSERT INTO `crypto_history` (`username`, `account_type`, `wallet_ad`, `amount_bought`, `currency`, `transaction_id`, `date`) VALUES
('Kabbo45', 'Bank', 'qwtyeurit', '0.00031709153525922337', 'Ethereum', 'CRYATM6378261019', '03-11-2022'),
('Kabbo45', 'Bank', 'wertfgd', '0.0000030187066230725183', 'Bitcoin', 'CRYATM6378261038', '03-11-2022');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_price`
--

CREATE TABLE `crypto_price` (
  `btc` varchar(30) NOT NULL,
  `eth` varchar(30) NOT NULL,
  `ada` varchar(30) NOT NULL,
  `sol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crypto_price`
--

INSERT INTO `crypto_price` (`btc`, `eth`, `ada`, `sol`) VALUES
('3312677', '220756.4448', '68.259968', '7017.42');

-- --------------------------------------------------------

--
-- Table structure for table `reg_bank`
--

CREATE TABLE `reg_bank` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `permanent_ad` varchar(30) NOT NULL,
  `present_ad` varchar(30) NOT NULL,
  `gender` int(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `monthly_income` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pin` int(20) NOT NULL,
  `ac_no` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `balance` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_bank`
--

INSERT INTO `reg_bank` (`name`, `phone`, `permanent_ad`, `present_ad`, `gender`, `nid`, `occupation`, `monthly_income`, `username`, `pin`, `ac_no`, `date`, `balance`) VALUES
('Tunazzinur Rahman Kabbo', '+8801876787213', 'Tangail', 'Tangail', 1, 12344368, 'Student', 1235, 'Kabbo45', 1234, 'AC65013302', 'Sunday, February 27, 2022', 10);

-- --------------------------------------------------------

--
-- Table structure for table `reg_card`
--

CREATE TABLE `reg_card` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `permanent_ad` varchar(30) NOT NULL,
  `present_ad` varchar(30) NOT NULL,
  `gender` int(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `monthly_income` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pin` int(20) NOT NULL,
  `card_no` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `balance` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_card`
--

INSERT INTO `reg_card` (`name`, `phone`, `permanent_ad`, `present_ad`, `gender`, `nid`, `occupation`, `monthly_income`, `username`, `pin`, `card_no`, `date`, `balance`) VALUES
('Kazi Fazlul Haque', '+8801971949835', 'Thanapara, Tangail', 'Thanapara, Tangail', 1, 12345678, 'Student', 42643, 'Tabib007', 9835, '6842 8099 7116 8504', 'Tuesday, March 1, 2022', 500),
('Anirudha Sayed ', '+8801795841433', 'Thanapara', 'Thanapara', 1, 2147483647, 'Businessman', 1000000, 'arnob007', 2580, '6949 4599 8595 6127', 'Tuesday, March 8, 2022', 250),
('Fahim Al Farid', '+8801683966349', 'Dhaka', 'Dhaka', 1, 12345678, 'Businessman', 98767, 'fahim00', 787898, '6664 3700 9940 6000', 'Tuesday, March 8, 2022', 300);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_history`
--

CREATE TABLE `transfer_history` (
  `transferer_account_type` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `ammount` varchar(30) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `transfer_to` varchar(30) NOT NULL,
  `transfer_type` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer_history`
--

INSERT INTO `transfer_history` (`transferer_account_type`, `username`, `ammount`, `transaction_id`, `transfer_to`, `transfer_type`, `date`) VALUES
('Bank', 'Kabbo45', '30', 'TRASFATM6378213140', '72836648727', 'Card', '03-05-2022'),
('Bank', 'Kabbo45', '10', 'TRASFATM6378217335', '12345678', 'Card', '03-06-2022'),
('Bank', 'Kabbo45', '20', 'TRASFATM6378217498', '1234567', 'Card', '03-06-2022'),
('Bank', 'Kabbo45', '10', 'TRASFATM6378220252', '1234555556', 'Bank', '03-06-2022'),
('Card', 'arnob007', '250', 'TRASFATM6378235959', '12345678', 'Card', '03-08-2022'),
('Bank', 'Kabbo45', '30', 'TRASFATM6378236359', '123456789', 'Bank', '03-08-2022'),
('Bank', 'Tomal', '220', 'TRASFATM6378236479', '345687654', 'Card', '03-08-2022'),
('Bank', 'imran', '50', 'TRASFATM6378236625', '1234567', 'Card', '03-08-2022'),
('Card', 'fahim00', '175', 'TRASFATM6378236783', '1234567', 'Bank', '03-08-2022');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_history`
--

CREATE TABLE `withdraw_history` (
  `account_type` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `ammount` varchar(20) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdraw_history`
--

INSERT INTO `withdraw_history` (`account_type`, `username`, `ammount`, `transaction_id`, `date`) VALUES
('bank', '1', '100', 'TRAATM6378186852', '03-02-2022'),
('bank', 'Kabbo45', '10', 'TRAATM6378236414', '03-08-2022'),
('bank', 'Tomal', '123', 'TRAATM6378236483', '03-08-2022'),
('bank', 'imran', '10', 'TRAATM6378236614', '03-08-2022'),
('card', 'fahim00', '25', 'TRAATM6378236808', '03-08-2022');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
