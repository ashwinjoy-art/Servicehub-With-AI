-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2021 at 07:29 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `servicehub`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(20) NOT NULL,
  `bookingdate` date NOT NULL,
  `problem` varchar(300) NOT NULL,
  `status` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL,
  `scid` int(11) NOT NULL,
  `enddate` date NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `company`, `bookingdate`, `problem`, `status`, `userid`, `scid`, `enddate`) VALUES
(3, 'acer', '2021-01-09', 'battery problem', 'delivered', 7, 2, '2021-01-16'),
(4, 'acer', '2021-01-12', 'battery drain\r\n', 'delivered', 7, 2, '2021-01-12'),
(5, 'asus', '2021-01-07', 'battery problem', 'delivered', 5, 1, '2021-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(20) NOT NULL,
  `photo` varchar(300) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `companyname`, `photo`) VALUES
(2, 'asus', '/media/download%20(8)_CPTL7f5.jpg'),
(3, 'acer', '/media/ACER.jpg'),
(4, 'dell', '/media/dell.jpg'),
(5, 'apple', '/media/apple.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(20) NOT NULL,
  `faq` varchar(100) NOT NULL,
  `answer` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `company`, `faq`, `answer`) VALUES
(1, 'asus', 'freequently restarting', 'check software updates');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `scid` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `feedback`, `userid`, `scid`) VALUES
(1, 'very good', 5, 1),
(4, 'very good', 5, 1),
(5, 'feedback..azg', 7, 2),
(6, 'nbad', 7, 2),
(7, 'nbad', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY(`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `password`, `usertype`, `status`) VALUES
('binimol1212@gmail.com', 'binimol', 'user', 'approved'),
('admin@gmail.com', 'admin', 'admin', 'approved'),
('arjun@gmail.com', 'arjun', 'servicecenter', 'approved'),
('merin@gmail.com', 'merin', 'user', 'approved'),
('acertech@gmail.com', 'acer', 'servicecenter', 'approved'),
('shyamsasi94@gmal.com', '123', 'user', 'approved'),
('binimol1212@gmail.com', 'bini', 'user', 'approved'),
('anjana@gmail.com', 'anjana', 'user', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(300) NOT NULL,
  `messenger` varchar(50) NOT NULL,
  `recipient` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `messenger`, `recipient`) VALUES
(7, 'sdftgyui', 'admin@gmail.com', 'acertech@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(30) NOT NULL,
  `product` varchar(30) NOT NULL,
  `questionn` varchar(200) NOT NULL,
  `answer` varchar(250) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qid`, `companyname`, `product`, `questionn`, `answer`) VALUES
(2, 'asus', 'laptop', 'restarting frequently', 'check for software update');

-- --------------------------------------------------------

--
-- Table structure for table `screg`
--

CREATE TABLE IF NOT EXISTS `screg` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `company` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `aid` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `screg`
--

INSERT INTO `screg` (`scid`, `name`, `email`, `address`, `phoneno`, `company`, `product`, `aid`, `password`, `district`) VALUES
(1, 'arjun', 'arjun@gmail.com', 'asdfghjkl', 2147483647, 'asus', 'laptop', 12334556, 'arjun', 'ernakulam'),
(2, 'acer tech solutions', 'acertech@gmail.com', 'asus', 2147483647, 'acer', 'laptop', 123456789, 'acer', 'trivandram');

-- --------------------------------------------------------

--
-- Table structure for table `userreg`
--

CREATE TABLE IF NOT EXISTS `userreg` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phoneno` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`uid`, `name`, `email`, `address`, `phoneno`) VALUES
(5, 'binimol', 'binimol1212@gmail.com', 'sdfghj', 2147483647),
(6, 'merin', 'merin@gmail.com', 'merin', 2147483647),
(7, 'SHYAM', 'shyamsasi94@gmal.com', 'dysfsjljscscsojcsc', 2147483647),
(11, 'anjana', 'anjana@gmail.com', 'anjana home', 1234567890);
