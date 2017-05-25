-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2017 at 07:23 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_isbn` int(11) NOT NULL,
  `book_title` varchar(50) NOT NULL,
  `book_author` varchar(50) NOT NULL,
  `book_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_isbn`, `book_title`, `book_author`, `book_category`) VALUES
(2, 7893, 'Laravel Tiger', 'Mutafaf', 'Programming'),
(3, 8934, 'Android Programming', 'Farrukh', 'Programming'),
(6, 8902, 'Intro to Psychology', 'Ayesha', 'Psychology'),
(7, 2345, 'Calculus-1', 'John doe', 'Math'),
(8, 8927, 'Chemistry Part-1', 'Aliza Mam', 'Chemistry'),
(9, 6723, 'Math Part-1', 'Sir Sohail Amanat', 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `role`, `dept`) VALUES
(1, 'payal', 'mulik', 'payal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(2, 'deepa', 'mgf', 'deepa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(3, 'shruti', 'upari', 'shrutiupari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(4, 'test', 'test', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(5, 'shruti', 'gebise', 'shrutigebise@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(6, 'nikhil', 'raichur', 'nikhil@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', ''),
(7, 'xyz', 'sgh', 'xyz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'manager', 'cse'),
(8, 'Sheetal', 'Mane', 'sheetal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'employee', 'mech'),
(9, 'deg', 'dew', 'deg@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'ec'),
(10, 'doremon', 'suzuki', 'doremon@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'mech'),
(11, 'geera', 'deol', 'geera@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'employee', 'cse'),
(12, 'geera', 'deol', 'geera123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'employee', 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `usr_id`, `likes`, `dislike`) VALUES
(28, 3, 1, 0),
(31, 3, 1, 0),
(35, 1, 0, 1),
(36, 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
