-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 12:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'admin', 'admin@gmail.com', '00000000', '08989976755');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `question_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `date`, `time`, `question_id`, `student_id`) VALUES
(2, '2022-04-22', '20:51:31', 3, 112),
(3, '2022-04-22', '20:57:38', 13, 112),
(4, '2022-04-22', '20:59:41', 11, 112),
(5, '2022-04-24', '03:19:21', 4, 112);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `professor_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'waiting',
  `vision` text NOT NULL,
  `letter` text NOT NULL,
  `short_goals` text NOT NULL,
  `long_goals` text NOT NULL,
  `target_group` text NOT NULL,
  `topic` text NOT NULL,
  `place` text NOT NULL,
  `addition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`id`, `name`, `description`, `professor_id`, `status`, `vision`, `letter`, `short_goals`, `long_goals`, `target_group`, `topic`, `place`, `addition`) VALUES
(1, 'name', 'details', 231321, 'accept', '', '', '', '', '0', '', '', NULL),
(2, 'name', 'description', 231321, 'accept', '', '', '', '', '0', '', '', NULL),
(3, 'name', 'description\r\n          ', 231321, 'accept', 'vision\r\n          ', 'letter\r\n          ', '1- goal 1\r\n2- goal 2\r\n3- goal 3          ', '1- goal 1\r\n2- goal 2\r\n3- goal 3        ', 'target          ', '1- topic 1\r\n2- topic 2          ', 'place', 'addition'),
(5, 'name', 'description\r\n          ', 231321, 'accept', 'vision\r\n          ', 'letter\r\n          ', '1- goal 1\r\n2- goal 2\r\n3- goal 3          ', '1- goal 1\r\n2- goal 2\r\n3- goal 3        ', 'target          ', '1- topic 1\r\n2- topic 2          ', 'place', 'addition'),
(6, 'last club', '\r\nd          ', 231321, 'waiting', 'v\r\n          ', 'm\r\n          ', 'short', 'long     ', '          t', '      axes    ', '          place', '          additions'),
(7, 'last club', '\r\ndescription\r\n', 231321, 'accept', 'v\r\n          ', 'm\r\n          ', 'short', 'long     ', '          t', '      axes    ', '          place', '          additions');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date NOT NULL,
  `place` text NOT NULL,
  `capacity` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'waiting',
  `club_id` int(11) DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 3,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `description`, `s_date`, `e_date`, `place`, `capacity`, `type`, `status`, `club_id`, `number`, `date`) VALUES
(1, 'course', 'details', '2022-03-16', '2022-03-23', '0', 20, '', 'accept', 1, 3, '2022-05-04'),
(3, 'course 2', 'description\r\n          ', '2022-10-31', '2022-12-30', 'place', 24, 'lecture', 'accept', 1, 3, '2022-05-04'),
(5, 'course 3', 'd\r\n          ', '2022-12-31', '2023-12-31', 'p', 22, 'lecture', 'accept', 1, 3, '2022-05-05'),
(8, 's', '\r\n          s', '2022-10-10', '2022-10-10', 'place', 22, 'workshop', 'accept', 1, 1, '2022-05-10'),
(9, 't', 'd\r\n          ', '2022-05-22', '2022-06-09', '2', 10, 'workshop', 'accept', 1, 1, '2022-05-10'),
(10, 'title', 'description\r\n          ', '2022-06-22', '2022-07-22', 'place', 30, 'lecture', 'accept', 1, 20, '2022-05-28'),
(11, 'title', 'description\r\n          ', '2022-06-22', '2022-07-22', 'place', 30, 'lecture', 'waiting', 1, 20, '2022-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link` text NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`id`, `title`, `description`, `link`, `type`, `date`, `time`, `course_id`) VALUES
(1, 'title', 'description', 'place', 'place', '2022-02-21', '23:00:00', 1),
(2, 'title', 'description', 'place', 'place', '2022-04-28', '23:00:00', 1),
(3, 'title', 'description', 'place', 'place', '2022-05-12', '23:00:00', 1),
(4, 'k', 'description', 'place', 'place', '2022-05-22', '10:00:00', 9);

-- --------------------------------------------------------

--
-- Table structure for table `present`
--

CREATE TABLE `present` (
  `id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `present`
--

INSERT INTO `present` (`id`, `lecture_id`, `student_id`, `status`) VALUES
(1, 1, 112, 'present'),
(2, 1, 112, 'present'),
(3, 1, 112, 'absent'),
(4, 4, 112, 'present');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `specialization` text NOT NULL,
  `accept` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`fname`, `lname`, `password`, `emp_id`, `email`, `specialization`, `accept`) VALUES
('first', 'last', '00000000', 21314, 'prof@gmail.com', 'Business ', 'No'),
('first', 'last', '00000000', 21315, 'prof2@gmail.com', 'Business ', NULL),
('fname', 'lname', '00000000', 231321, 'professor@gmail.com', 'Business ', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `answer`) VALUES
(1, 'Are there certificates of attendance for the courses?', 'Yes, all certificates issued by the student club website are certificates of attendance only, except in some cases they are approved and will be mentioned on the website.'),
(2, 'How can I contribute to the dissemination of digital knowledge?', 'You can participate in the development and presentation of an electronic or direct educational portfolio.'),
(3, 'If I submit a request for a course, how can the Student Club website help me?', 'The student club website provides and manages all logistical services such as (headquarters, internet, trainees, organizers, attendance certificates for the trainee, trainer and organizer).'),
(4, 'Do extra-curricular points count when attending courses?\r\n', 'yes'),
(5, 'is experience required to provide the course?', 'No experience is required to provide courses, you can offer courses for beginner levels.'),
(6, 'How do I register ?', 'You can register through the student club website\r\n'),
(7, 'What courses does the club offer?', 'The site offers online and direct courses in various disciplines.'),
(8, 'Where can I find out about the latest available courses?', 'Through the student club website, and you can browse the courses held '),
(9, 'When will my content be approved?', 'Content is approved within a maximum of 10 days.'),
(10, 'What are the content acceptance criteria?', 'Comprehensiveness (the topic being comprehensive, covering all aspects and being useful) novelty (information and sources being current) copyright (not copying or stealing copyrighted content)'),
(11, 'When will I get the certificate?', 'After completion of the course, certificates will be issued by e-mail with a maximum of 5 days'),
(12, 'When will my application for the course be approved?', 'After uploading the content on the site, it is reviewed by the Scientific Committee, and after approval, the applicant is contacted and the time is agreed upon.'),
(13, 'Are there certain conditions when applying for any course?', 'Yes, there must be no absences in other clubs');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `univ_id` int(11) NOT NULL,
  `password` varchar(25) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `specialization` text NOT NULL,
  `accept_training` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`univ_id`, `password`, `fname`, `lname`, `email`, `phone`, `specialization`, `accept_training`) VALUES
(112, '00000000', 'first', 'student', 'student@gmail.com', '0523453343', 'Business ', 'Yes'),
(323, '00000000', '322', '324sd', 'admin@gmail.com', '052432343127', 'Computing and Information Technology', 'Yes'),
(1321, '00000000', 'first last', 'lname', 'researchekr@gmail.com', '213312231123', 'Computing and Information Technology', NULL),
(4323, '00000000', 'first last', 'lname', 'admin@gmail.com', '052432343127', 'Computing and Information Technology', 'No'),
(9767, '00000000', 'first', 'studenii', 'admin@gmail.com', '0523453343', 'Business ', 'Yes'),
(43252, '00000000', 'first', 'stud', 'stud@gmail.com', '052345331211', 'Business ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_club`
--

CREATE TABLE `student_club` (
  `student_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'waiting'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_club`
--

INSERT INTO `student_club` (`student_id`, `club_id`, `status`) VALUES
(112, 1, 'accept'),
(112, 2, 'accept'),
(112, 3, 'waiting'),
(112, 5, 'waiting'),
(112, 6, 'waiting');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`),
  ADD KEY `professor_id` (`professor_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `present`
--
ALTER TABLE `present`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lecture_id` (`lecture_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`univ_id`);

--
-- Indexes for table `student_club`
--
ALTER TABLE `student_club`
  ADD PRIMARY KEY (`student_id`,`club_id`),
  ADD KEY `club_id` (`club_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `present`
--
ALTER TABLE `present`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD CONSTRAINT `chatbot_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `student` (`univ_id`),
  ADD CONSTRAINT `chatbot_ibfk_4` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Constraints for table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`emp_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`);

--
-- Constraints for table `lecture`
--
ALTER TABLE `lecture`
  ADD CONSTRAINT `lecture_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `present`
--
ALTER TABLE `present`
  ADD CONSTRAINT `present_ibfk_1` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `present_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`univ_id`);

--
-- Constraints for table `student_club`
--
ALTER TABLE `student_club`
  ADD CONSTRAINT `student_club_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `student` (`univ_id`),
  ADD CONSTRAINT `student_club_ibfk_4` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
