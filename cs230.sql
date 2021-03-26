-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 25, 2021 at 08:47 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(2, '1', '1', '../gallery/604910e8b57954.32281190.jpg', '2021-03-10 13:33:12', NULL),
(3, '2', '2', '../gallery/604910f2c5fb36.62013881.jpeg', '2021-03-10 13:33:22', NULL),
(4, '3', '3', '../gallery/604910fece8d70.71006896.jpg', '2021-03-10 13:33:34', NULL),
(5, '123456', '234567', '../gallery/604bf0acbf4f80.80133681.jpeg', '2021-03-12 17:52:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(1, 'Cal', 'calz', '../images/default.jpg'),
(2, 'abc', 'ghi', '../images/default.jpg'),
(3, 'Alex', 'al', '../images/default.jpg'),
(4, 'A', 'abc', '../images/default.jpg'),
(5, '123', '123', '../images/default.jpg'),
(6, 'Tom', 'tom', '../profiles/6039760cf185d4.96357998.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 5, 'tom', 'sdfg', 'dfgh', '2021-03-18 21:33:01', 4, 1),
(2, 5, 'tom', 'dfghjk', 'dfghjk', '2021-03-18 21:34:11', 2, 1),
(3, 5, 'tom', 'dfghyjukjhgv', 'edcvhj', '2021-03-18 21:34:19', 5, 1),
(4, 5, 'tom', 'dfghjk', 'cvbn', '2021-03-18 23:05:30', 5, 1),
(5, 5, 'tom', 'dfghjk', 'vbnm', '2021-03-18 23:05:38', 1, 1),
(6, 5, 'tom', 'cvbnm', 'cvbnm', '2021-03-18 23:05:47', 4, 1),
(7, 5, 'tom', 'cfvghjkl', 'sdfghjk', '2021-03-20 01:05:21', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user database for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, 'Cal', 'Zeig', 'calz', '$2y$10$f/XLRJ7XjRpq6g4wJ0g23edEP4V1TqlueHbeLPDuuYiVRa3khaK76', 'cal@mz.com'),
(2, 'abc', 'def', 'ghi', '$2y$10$r30mW4rhUl.US1V8c87gc.I8eUOTBOl9SfmhFU4.c6z8FvGDjQd4S', 'jk@lm.com'),
(3, 'Alex', 'Dickey', 'al', '$2y$10$9Vz./3qL6gJNCClvtG553uF0Jtpio6U4iWzJHnZDW8q4x3usyiejK', 'al@dick.com'),
(4, 'A', 'B', 'abc', '$2y$10$R2hCoWueLvqkNHx6wjPnd.FPjSNYGV3G8s7uOqNwbEQQz8NBTNefC', 'abc@c.com'),
(5, '123', '456', '123', '$2y$10$nXYk0youuRdpGpOLYYtRg.dE6q.Vi4An4tR82tbK3HfSiDIFmCuoK', 'z@z.com'),
(6, 'Tom', 'Zig', 'tom', '$2y$10$3eCRd9PqupPU8T5xe2Ifh.RO5QBCX3EMwkdMQKE2aoM1.y41xcdYC', 'tom@aol.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
