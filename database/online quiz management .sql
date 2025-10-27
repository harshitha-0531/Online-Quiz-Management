-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2025 at 11:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online quiz management`
--

-- --------------------------------------------------------

--
-- Table structure for table `questionbank`
--

CREATE TABLE `questionbank` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  `correctoption` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionbank`
--

INSERT INTO `questionbank` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correctoption`) VALUES
(1, 'What is the capital of India?', 'New Delhi', 'Mumbai', 'Chennai', 'Kolkata', 'New Delhi'),
(2, 'Which keyword is used to inherit a class in Java?', 'this', 'super', 'extends', 'implements', 'extends'),
(3, 'Which data type is used to store text in Java?', 'int', 'String', 'char', 'boolean', 'String'),
(4, 'Which SQL command is used to remove a table?', 'DELETE', 'DROP', 'REMOVE', 'CLEAR', 'DROP'),
(5, 'Which company developed Java?', 'Google', 'Microsoft', 'Sun Microsystems', 'IBM', 'Sun Microsystems'),
(6, 'Which of the following is not a Java feature?', 'Object-oriented', 'Portable', 'Use of pointers', 'Secure', 'Use of pointers'),
(7, 'Which method is the entry point of a Java program?', 'start()', 'main()', 'run()', 'init()', 'main()'),
(8, 'Which of the following is not a valid SQL command?', 'SELECT', 'INSERT', 'FETCH', 'WRITE', 'WRITE'),
(9, 'Which keyword is used to define a constant in Java?', 'static', 'const', 'final', 'constant', 'final'),
(10, 'Which operator is used to compare two values in Java?', '=', '==', 'equals()', '!=', '=='),
(11, 'Which method is used to find the length of a string in Java?', 'length()', 'size()', 'getLength()', 'count()', 'length()'),
(12, 'Which SQL clause is used to filter records?', 'WHERE', 'FROM', 'ORDER BY', 'GROUP BY', 'WHERE'),
(13, 'Which data structure uses FIFO order?', 'Stack', 'Queue', 'Tree', 'Graph', 'Queue'),
(14, 'Which collection class allows duplicate elements in Java?', 'Set', 'Map', 'List', 'None', 'List'),
(15, 'Which of the following is not a type of constructor in Java?', 'Default', 'Parameterized', 'Copy', 'Virtual', 'Virtual'),
(16, 'In SQL, which keyword is used to sort the result-set?', 'GROUP BY', 'ORDER BY', 'SORT BY', 'ALIGN BY', 'ORDER BY'),
(17, 'Which Java package contains the Scanner class?', 'java.util', 'java.io', 'java.lang', 'java.text', 'java.util'),
(18, 'Which symbol is used to denote a comment in Java?', '//', '#', '--', '/*', '//'),
(19, 'What does JVM stand for?', 'Java Virtual Machine', 'Java Variable Machine', 'Java Visual Model', 'Java Version Manager', 'Java Virtual Machine'),
(20, 'Which SQL function is used to count rows in a table?', 'SUM()', 'TOTAL()', 'COUNT()', 'ROWS()', 'COUNT()');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questionbank`
--
ALTER TABLE `questionbank`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
