-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 01:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--
CREATE DATABASE IF NOT EXISTS `university` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `university`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseNo` varchar(5) NOT NULL,
  `AcademicStaff_ID` varchar(9) NOT NULL,
  `CourseName` varchar(25) NOT NULL,
  `CourseDuration` varchar(3) DEFAULT NULL,
  `Department_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseNo`, `AcademicStaff_ID`, `CourseName`, `CourseDuration`, `Department_Name`) VALUES
('CCP85', 'S08183759', 'Music', '4', 'Music'),
('CDC89', 'S08183759', 'Music with History', '4', 'Music'),
('CDT15', 'S08950652', 'Animation', '4', 'Games Design'),
('CEI69', 'S00226344', 'Architecture', '4', 'Architecture and the built Environment'),
('CEL68', 'S08636626', 'Law with Criminology', '5', 'Law'),
('CGO32', 'S00767648', 'Business Economics', '4', 'Business Engagement'),
('CHK25', 'S07614340', 'Art Psychotherapy', '5', 'Art'),
('CHT69', 'S08950652', 'Interactive Media', '4', 'Games Design'),
('CJN62', 'S04568247', 'Software Engineering', '6', 'Computing, Engineering and Intelligent Systems'),
('CMI66', 'S09044624', 'PGCE Primary Education', '6', 'Education'),
('CMM39', 'S03464701', 'Social Sciences', '6', 'Applied Social and Policy Sciences'),
('CMS62', 'S01054611', 'Accounting', '4', 'Accounting'),
('CND00', 'S01282224', 'Environmental Science', '5', 'Geography & Environmental Sciences'),
('CPJ99', 'S08636626', 'Law', '4', 'Law'),
('CRZ50', 'S08644132', 'Biomedical Science', '5', 'Biomedical Sciences'),
('CSU61', 'S01614330', 'Fine Art', '5', 'Art'),
('CTK81', 'S08644132', 'Dietetics', '6', 'Biomedical Sciences'),
('CTX06', 'S01634269', 'Nursing Science', '4', 'Nursing'),
('CUU61', 'S04568247', 'Information Technologies', '5', 'Computing, Engineering and Intelligent Systems'),
('CVD52', 'S00101974', 'Health Physiology', '4', 'Health Sciences'),
('CVK09', 'S09044624', 'PGCE History', '4', 'Education'),
('CVS63', 'S01137535', 'Health and Wellbeing', '5', 'Medicine'),
('CXU77', 'S08950652', 'Games Design', '5', 'Games Design'),
('CYN99', 'S01518247', 'Artificial Intelligence', '4', 'Computing, Engineering and Intelligent Systems'),
('CZM95', 'S01054611', 'Strategic Accounting', '6', 'Accounting'),
('CZS35', 'S01518247', 'Computer Science', '6', 'Computing, Engineering and Intelligent Systems');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DName` varchar(50) NOT NULL,
  `Phone_Number` varchar(11) NOT NULL,
  `Fax_Number` varchar(12) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DName`, `Phone_Number`, `Fax_Number`, `Location`) VALUES
('Accounting', '07332301725', '040-233-3551', 'MG71'),
('Applied Social and Policy Sciences', '07464322074', '872-923-5098', 'MP12'),
('Architecture and the built Environment', '07166035588', '569-973-6405', 'MZ99'),
('Art', '07342933101', '308-113-4165', 'MC44'),
('Arts & Humanities', '07399338774', '959-916-8423', 'MS71'),
('Biomedical Sciences', '07851262362', '762-569-7073', 'MZ04'),
('Business Engagement', '07976718292', '207-770-8961', 'MK80'),
('Business Enterprise', '07726147750', '291-259-8676', 'MA14'),
('Communication and Media', '07308420551', '161-945-8357', 'MO85'),
('Computing, Engineering and Intelligent Systems', '07166545781', '246-077-4980', 'MF31'),
('Construction', '07637675285', '674-086-5874', 'MR36'),
('Economics', '07470557049', '477-915-7766', 'MX17'),
('Education', '07080093720', '155-184-1632', 'MZ34'),
('Games Design', '07545473480', '245-463-3905', 'MC64'),
('Geography & Environmental Sciences', '07214252728', '356-291-9598', 'MJ09'),
('Health Sciences', '07307451884', '290-552-4256', 'MK58'),
('Hospitality & Tourism', '07771932145', '296-342-2016', 'MD66'),
('Law', '07558108945', '154-807-6893', 'MA82'),
('Marketing', '07373307104', '836-523-0087', 'MB94'),
('Medicine', '07379275256', '839-864-5126', 'MD41'),
('Music', '07216735567', '572-991-9349', 'MZ83'),
('Nursing', '07027089881', '542-326-1255', 'MR80'),
('Pharmacy & Pharmaceutical Sciences', '07360303916', '980-657-2251', 'MZ07'),
('Psychology', '07316462612', '301-871-9795', 'MP84'),
('Sport', '07908044233', '204-595-2405', 'MO00');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `CourseNo` varchar(5) NOT NULL,
  `ModuleNo` varchar(6) NOT NULL,
  `moduleTitle` varchar(40) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `TextbookTitle` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`CourseNo`, `ModuleNo`, `moduleTitle`, `StartDate`, `EndDate`, `TextbookTitle`) VALUES
('CJN62', 'COM033', 'Engineering 101', '2022-03-08', '2023-06-08', 'Computing, Engineering and Intelligent Systems year 3 vol 3'),
('CYN99', 'COM123', 'Mathematics for Computing', '2022-06-03', '2023-08-09', 'Computing, Engineering and Intelligent Systems Year 2 Vol 2'),
('CUU61', 'COM162', 'Software Development 2', '2022-04-09', '2023-08-22', 'Pseudo Programming'),
('CND00', 'COM163', 'Geography & Environmental Sciences', '2022-06-01', '2023-04-08', 'Geography & Environmental Sciences'),
('CEL68', 'COM218', 'Beginners Law', '2022-10-08', '2023-04-02', 'International Law'),
('CYN99', 'COM244', 'Software Development', '2022-03-09', '2023-08-04', 'Computing, Engineering and Intelligent Systems a Masterclass'),
('CVD52', 'COM267', 'Health Sciences 101', '2022-02-08', '2023-05-06', 'Theories of Health Sciences'),
('CZM95', 'COM294', 'Strategic Accounting 3', '2022-07-04', '2023-03-02', 'Advanced Accounting'),
('CDC89', 'COM319', 'Music - The Classical Period', '2022-01-07', '2023-01-02', 'Classical Music Theory'),
('CRZ50', 'COM397', 'Biomedical Sciences 101', '2022-01-09', '2023-02-04', 'Holistic Biomedical Sciences'),
('CPJ99', 'COM454', 'Naval Law', '2022-05-01', '2023-01-06', 'Basic Law'),
('CSU61', 'COM463', 'Advanced Art', '2022-03-10', '2023-09-09', 'Advanced Art'),
('CHT69', 'COM591', 'Virtual Games Design', '2022-09-06', '2023-08-08', 'Theoretical Games Design'),
('CSU61', 'COM613', 'Beginner Art', '2022-06-02', '2023-04-01', 'Fundamentals of Art'),
('CVK09', 'COM663', 'Dealing with Teaching', '2022-02-02', '2023-04-04', 'Theories on modern Education'),
('CTX06', 'COM687', 'Nursing Mechanics', '2022-02-07', '2023-07-05', 'Nursing'),
('CCP85', 'COM764', 'Music Harmony', '2022-06-08', '2023-01-12', 'Percussion Music'),
('CMS62', 'COM802', 'Accounting 101', '2022-07-08', '2023-03-02', 'Basic Accounting'),
('CGO32', 'COM815', 'Business Engagement and Leadership', '2022-08-01', '2023-08-06', 'Business Engagement'),
('CMI66', 'COM830', 'Primary Education Basics', '2022-08-04', '2023-09-06', 'Primary Education'),
('CMM39', 'COM832', 'Social and Political Standards', '2022-04-09', '2023-08-22', 'Getting Political Ver4'),
('CXU77', 'COM842', 'Interior Games Design', '2022-06-02', '2023-01-04', 'Beginners Games Design'),
('CEI69', 'COM882', 'Architecture and the built Environment', '2022-09-09', '2023-04-06', 'Theories of Architecture and the built Environment'),
('CVD52', 'COM894', 'Understanding our Health', '2022-03-09', '2023-03-07', 'Human Health Sciences'),
('CZS35', 'COM902', 'Database Systems', '2022-05-07', '2023-06-07', 'Computing, Engineering and Intelligent Systems year 1 Vol 2'),
('CDT15', 'COM942', 'Sandbox Games Design', '2022-07-01', '2023-03-04', 'Advanced Games Design'),
('CTK81', 'COM994', 'Junior Dietetics', '2022-01-03', '2023-09-04', 'Modern Biomedical Sciences');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` varchar(9) NOT NULL,
  `AcademicStaff_ID` varchar(6) DEFAULT NULL,
  `ComputerNetwork_ID` varchar(8) NOT NULL,
  `FName` varchar(10) NOT NULL,
  `SName` varchar(10) NOT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `NI_Number` varchar(10) NOT NULL,
  `OfficeNo` varchar(4) DEFAULT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `Salary` double NOT NULL,
  `Post` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Qualifications` varchar(20) NOT NULL,
  `Department_Name` varchar(50) NOT NULL,
  `Phone_Number` varchar(11) DEFAULT NULL,
  `Fax_Number` varchar(12) DEFAULT NULL,
  `Roles` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `AcademicStaff_ID`, `ComputerNetwork_ID`, `FName`, `SName`, `Address`, `NI_Number`, `OfficeNo`, `Sex`, `Salary`, `Post`, `Email`, `Qualifications`, `Department_Name`, `Phone_Number`, `Fax_Number`, `Roles`) VALUES
('S00101974', 'AC1174', 'vmn753q1', 'Rollins', 'Stronghill', '48314 Lighthouse Bay Alley', 'ZX556382M', NULL, 'M', 14339, 'Lecturer', 'Stronghill63Rollins@ulster.ac.uk', 'D.H.S.', 'Health Sciences', '07854547162', '878-401-4865', 'course leader'),
('S00226344', 'AC3222', 'sad072e6', 'Norina', 'Delves', '1 Nelson Street', 'SB713284V', 'OW95', 'F', 87330, 'Lecturer', 'Delves41Norina@ulster.ac.uk', 'M.Arch', 'Architecture and the built Environment', '07222793181', '025-600-8238', 'coordinator'),
('S00767648', 'AC4567', 'kuu51ci0', 'Granger', 'Golsby', '22 Birchwood Road', 'CV014387U', 'OZ13', 'M', 69716, 'Senior Lecturer', 'Golsby67Granger@ulster.ac.uk', 'M.Bus.', 'Business Engagement', '07148881477', '036-434-2178', 'course leader'),
('S01054611', 'AC7899', 'qwc988l1', 'Hakim', 'Flounders', '872 Eastlawn Parkway', 'OU497602P', 'OL20', 'O', 78321, 'Lecturer', 'Flounders82Hakim@ulster.ac.uk', 'M.Acc', 'Accounting', '07193803851', '965-271-7141', 'coordinator'),
('S01137535', 'AC8888', 'qcx81nn1', 'Jere', 'Hillum', '667 Vera Place', 'EG613835O', 'OS28', 'F', 93899, 'Lecturer', 'Hillum53Jere@ulster.ac.uk', 'M.M.', 'Medicine', '07032679262', '906-460-2460', 'coordinator'),
('S01282224', 'AC1234', 'gws112i4', 'Tiffany', 'Dendle', '15281 Nelson Alley', 'WA020315D', 'OB92', 'F', 63059, 'Senior Lecturer', 'Dendle11Tiffany@ulster.ac.uk', 'D.G.S.', 'Geography & Environmental Sciences', '07156169767', '549-871-4349', 'coordinator'),
('S01518247', 'AC3333', 'yvj213g2', 'Kenyon', 'Lowen', '12536 Pennsylvania Street', 'CF347000W', 'OE21', 'O', 64970, 'Senior Lecturer', 'Lowen90Kenyon@ulster.ac.uk', 'M.C.A. ', 'Computing, Engineering and Intelligent Systems', '07560589744', '155-503-7796', 'coordinator'),
('S01614330', 'AC9715', 'epp05ax7', 'Alvy', 'Chatelain', '5 Bowman Alley', 'LC129783Z', 'OA07', 'M', 34793, 'Lecturer', 'Chatelain01Alvy@ulster.ac.uk', 'M.A', 'Art', '07678487582', '144-316-6259', 'coordinator'),
('S01634269', 'AC9926', 'snt10oa6', 'Thorsten', 'Impy', '52 6th Circle', 'VT054574Z', 'OT17', 'M', 56426, 'Professor', 'Impy45Thorsten@ulster.ac.uk', 'D.N.Sc', 'Nursing', '07337868795', '006-287-1113', 'course leader'),
('S01729084', 'AC2764', 'lif81qg7', 'Beau', 'Hulburd', '4 Jenifer Alley', 'JS581884I', 'OO26', 'M', 58545, 'Senior Lecturer', 'Hulburd51Beau@ulster.ac.uk', 'B.A.Com.', 'Communication and Media', '07867250069', '081-837-9076', 'course leader'),
('S02070030', NULL, 'rln17mu7', 'Omero', 'Heinecke', '35 Schurz Trail', 'QK348327X', '0F22', 'M', 60658, 'Assistant', 'Heinecke33Omero@ulster.ac.uk', 'B.T.S', 'Hospitality & Tourism', '07698256774', '153-009-4634', NULL),
('S02785705', NULL, 'dp853bi6', 'Chloris', 'Bidewel', '402 Lillian Drive', 'JA541166J', '0D55', 'F', 86213, 'Senior Assistant', 'Bidewel14Chloris@ulster.ac.uk', 'B.A.Sc', 'Economics', '07749543890', '868-672-9624', NULL),
('S03272128', 'AC2233', 'obt24gc9', 'Skippie', 'Martinets', '139 Northland Drive', 'VR424997I', 'OA61', 'M', 27634, 'Lecturer', 'Martinets39Skippie@ulster.ac.uk', 'M.Con.', 'Construction', '07507214773', '299-171-3338', 'coordinator'),
('S03464701', 'AC7434', 'xj133sb0', 'Shep', 'Besemer', '235 Memorial Drive', 'PK611855K', 'OA33', 'O', 38569, 'Lecturer', 'Besemer63Shep@ulster.ac.uk', 'M.S.Sc.', 'Applied Social and Policy Sciences', '07284229139', '479-462-7577', 'course leader)'),
('S03783398', 'AC0590', 'fuf67jp3', 'Lester', 'Sidry', '05529 Swallow Court', 'LS470540N', 'OE72', 'M', 80021, 'Professor', 'Sidry02Lester@ulster.ac.uk', 'M.Bus', 'Business Enterprise', '07734798409', '899-776-4058', 'coordinator'),
('S04568247', 'AC3693', 'ypj245g2', 'Erin', 'Wilson', '5647 Pennsylvania Street', 'CF1470110W', 'OE24', 'F', 65000, 'Lecturer', 'Erin56Wilson@ulster.ac.uk', 'M.C.A. ', 'Computing, Engineering and Intelligent Systems', '07567589734', '155-543-7796', 'course leader'),
('S05649030', 'AC4641', 'iro88to7', 'Lorianna', 'Yantsurev', '78893 Fuller Pass', 'QY109414B', '0C76', 'F', 36669, 'Senior Lecturer', 'Yantsurev09Lorianna@ulster.ac.uk', 'M.H.', 'Arts & Humanities', '07353347393', '203-596-9104', 'coordinator'),
('S06404153', 'AC6829', 'jrj86fu6', 'Nevsa', 'Calcraft', '5 Holy Cross Park', 'VF791525V', 'OM19', 'F', 69408, 'Lecturer', 'Calcraft34Nevsa@ulster.ac.uk', 'Pharm.D', 'Pharmacy & Pharmaceutical Sciences', '07282594507', '516-184-5131', 'coordinator'),
('S06704783', NULL, 'zzz38ew5', 'Gwynne', 'McFarlane', '24348 Schurz Park', 'FL463533Z', NULL, 'F', 55768, 'Assistant', 'McFarlane41Gwynne@ulster.ac.uk', 'B.A', 'Marketing', '07074590172', '050-175-9283', NULL),
('S07074624', 'AC9822', 'ty394ea1', 'Hannah', 'Samson', '6 Magherboy Road', 'QV914838N', 'OE35', 'F', 88880, 'Lecturer', 'Samson34Hannah@ulster.ac.uk', 'B.A.E.', 'Education', '07513486528', '751-157-5428', 'course leader'),
('S07614340', 'AC8725', 'ppp44ax7', 'Matt', 'OHare', '67 Bowman  Alley', 'LC339783Z', 'OA69', 'M', 40000, 'Lecturer', 'OHare88Matt@ulster.ac.uk', 'M.A', 'Art', '07688488582', '166-316-6559', 'coordinator'),
('S07721443', NULL, 'lc913yu6', 'Shayna', 'Merriott', '3433 Morningstar Trail', 'SY723048T', 'OS57', 'F', 82784, 'Assistant', 'Merriott23Shayna@ulster.ac.uk', 'B.Sc(Psych)', 'Psychology', '07682407028', '576-782-3066', NULL),
('S08006343', NULL, 'lpk344w4', 'Maryellen', 'Dewes', '754 Veith Point', 'MN602526X', 'OO86', 'F', 38717, 'Assistant', 'Dewes84Maryellen@ulster.ac.uk', 'M.H.S.', 'Sport', '07166463831', '770-862-6420', NULL),
('S08183759', 'AC2206', 'nhw64ge7', 'Claiborn', 'Lanktree', '42919 Milwaukee Pass', 'KF399255R', 'OJ85', 'M', 73227, 'Lecturer', 'Lanktree43Claiborn@ulster.ac.uk', 'M.A, M.Acc', 'Music', '07091139372', '144-298-8304', 'coordinator'),
('S08636626', 'AC4484', 'ya1793i1', 'Storm', 'Longhi', '2 Monterey Street', 'SJ523753U', 'OU60', 'F', 44577, 'Professor', 'Longhi73Storm@ulster.ac.uk', 'M.S.L', 'Law', '07563620847', '431-429-9948', 'course leader'),
('S08644132', 'AC7256', 'dqj079r1', 'Margaretta', 'Hair', '4 Valley Edge Alley', 'QD988824V', 'OY48', 'F', 70383, 'Professor', 'Hair30Margaretta@ulster.ac.uk', 'M.Biomed', 'Biomedical Sciences', '07759145911', '036-431-0190', 'coordinator'),
('S08950652', 'AC3451', 'ksz243m2', 'Madelle', 'Whitewood', '414 Gulseth Plaza', 'PH242755N', 'OG70', 'F', 38301, 'Lecturer', 'Whitewood58Madelle@ulster.ac.uk', 'M.Des.', 'Game Design', '07728325208', '789-019-6485', 'coordinator'),
('S09044624', 'AC1122', 'by395ea9', 'Vicky', 'Chicchetto', '0 Helena Center', 'VV414838N', 'OE35', 'F', 83880, 'Lecturer', 'Chicchetto34Vicky@ulster.ac.uk', 'B.A.E.', 'Education', '07413886528', '750-157-6428', 'course leader');

-- --------------------------------------------------------

--
-- Table structure for table `staffmodule`
--

CREATE TABLE `staffmodule` (
  `Staff_ID` varchar(9) NOT NULL,
  `ModuleNo` varchar(6) NOT NULL,
  `StaffTeachingHours` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffmodule`
--

INSERT INTO `staffmodule` (`Staff_ID`, `ModuleNo`, `StaffTeachingHours`) VALUES
('S00101974', 'COM894', 13),
('S00226344', 'COM882', 14),
('S00767648', 'COM815', 16),
('S01054611', 'COM802', 28),
('S01137535', 'COM994', 4),
('S01282224', 'COM163', 28),
('S01518247', 'COM033', 26),
('S01518247', 'COM244', 63),
('S01614330', 'COM613', 32),
('S01634269', 'COM687', 41),
('S03464701', 'COM832', 11),
('S04568247', 'COM123', 40),
('S04568247', 'COM902', 44),
('S05649030', 'COM463', 8),
('S07074624', 'COM663', 35),
('S07614340', 'COM463', 59),
('S08183759', 'COM294', 59),
('S08183759', 'COM319', 67),
('S08183759', 'COM764', 37),
('S08636626', 'COM454', 5),
('S08644132', 'COM397', 21),
('S08644132', 'COM994', 41),
('S08950652', 'COM591', 22),
('S09044624', 'COM663', 43),
('S09044624', 'COM830', 69);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` varchar(9) NOT NULL,
  `CourseNo` varchar(10) NOT NULL,
  `ComputerNetwork_ID` varchar(8) NOT NULL,
  `FName` varchar(15) NOT NULL,
  `SName` varchar(15) NOT NULL,
  `Street` varchar(40) DEFAULT NULL,
  `City` varchar(27) DEFAULT NULL,
  `Postcode` varchar(8) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `Sex` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `CourseNo`, `ComputerNetwork_ID`, `FName`, `SName`, `Street`, `City`, `Postcode`, `DateofBirth`, `Sex`) VALUES
('B00020831', 'CZS35', 'csf4ttd1', 'Frankie', 'Yarsy', '22 Parker Lane', 'Portrush', 'BT47 3GO', '2000-05-17', 'O'),
('B00034698', 'CVK09', 'vcv77dq3', 'Estelle', 'Halligan', '9971 Kinsman Pass', 'Belfast', 'BT59 4ZT', '2001-05-02', 'F'),
('B00499941', 'CDT15', 'fwy43qb0', 'Maryl', 'Bitten', '0869 Farwell Drive', 'Londonderry', 'BT82 3BK', '2002-07-11', 'F'),
('B00621528', 'CZS35', 'kvi82db4', 'Edita', 'Lamont', '079 Express Alley', 'Londonderry', 'BT47 7PT', '2000-11-19', 'F'),
('B00704126', 'CMI66', 'idd48uc3', 'Raleigh', 'Feldstern', '78485 Bluestem Avenue', 'Lisburn', 'BT09 3IN', '2002-08-01', 'M'),
('B00799760', 'CSU61', 'bkf75ls0', 'Shelby', 'Radborn', '0880 Utah Junction', 'Newry', 'BT46 1HT', '1991-07-03', 'M'),
('B00911942', 'CVD52', 'rpu92fi0', 'Giustina', 'Mepham', '642 Waywood Road', 'Coleraine', 'BT97 5SC', '1990-03-04', 'F'),
('B01233193', 'CZS35', 'cuc01de5', 'Amye', 'Fihelly', '74793 Rigney Pass', 'Ballymena', 'BT02 0AI', '1998-03-03', 'F'),
('B01240813', 'CZM95', 'lng06zw2', 'Brendon', 'Prevett', '53676 Express Circle', 'Dublin', 'BT58 3CD', '1994-11-22', 'M'),
('B01350518', 'CHK25', 'spg53pk5', 'Maxim', 'Findlater', '8 Sullivan Drive', 'Londonderry', 'BT34 7HQ', '1986-01-19', 'M'),
('B01785431', 'CUU61', 'vlx84br9', 'Korry', 'Barendtsen', '656 Westport Road', 'Dublin', 'BT46 9WT', '1985-11-07', 'F'),
('B01822631', 'CZS35', 'csf88qh7', 'Zach', 'Herald', '84 Crow Avenue', 'Dublin', 'BT11 8FJ', '2002-10-11', 'O'),
('B01997158', 'CGO32', 'evn57js9', 'Edmon', 'Vedenisov', '16 Bunker Hill Crossing', 'Lisburn', 'BT88 5OE', '1987-09-26', 'M'),
('B02458109', 'CSU61', 'uei25qf6', 'Tommy', 'Alaway', '7 Arkansas Alley', 'Newry', 'BT12 0AE', '1998-08-09', 'M'),
('B02522792', 'CPJ99', 'yeh49tr3', 'Hilton', 'Lowson', '804 Forest Street', 'Larne', 'BT96 6LE', '1994-06-28', 'M'),
('B02674672', 'CND00', 'hbz59cg6', 'Nara', 'Fowkes', '60325 Ruskin Avenue', 'Newry', 'BT02 9YX', '1997-01-02', 'F'),
('B03235083', 'CJN62', 'azv69uj3', 'Nyssa', 'Hairon', '513 Thierer Trail', 'Dublin', 'BT39 2VV', '1996-12-08', 'F'),
('B03351536', 'CMM39', 'two33qr3', 'Jasper', 'Eldridge', '24 Nobel Center', 'Lisburn', 'BT17 2AA', '1988-08-17', 'M'),
('B03566804', 'CUU61', 'ksl28ar7', 'Washington', 'Carlin', '1 Dunning Plaza', 'Londonderry', 'BT54 6MI', '1990-03-02', 'M'),
('B03809504', 'CDT15', 'ezx85nx4', 'Devondra', 'Whitmore', '32 Forest Lane', 'Jordanstown', 'BT10 1TR', '2001-09-16', 'F'),
('B03999699', 'CEI69', 'oec45rm6', 'Jojo', 'Edsell', '54156 Prairie Rose Crossing', 'Coleraine', 'BT79 9HN', '2002-07-06', 'F'),
('B04326115', 'CJN62', 'sif34vk7', 'Osgood', 'De Ambrosis', '47300 Sommers Junction', 'Jordanstown', 'BT10 3SX', '2002-02-18', 'M'),
('B04725164', 'CPJ99', 'grr72sw9', 'Gib', 'Sangster', '69 Glacier Hill Circle', 'Coleraine', 'BT11 3RM', '1989-07-14', 'M'),
('B04926951', 'CTK81', 'woo90hg2', 'Gerik', 'Stoyles', '4 Milwaukee Center', 'Coleraine', 'BT70 2OA', '1987-02-10', 'M'),
('B05112632', 'CRZ50', 'cgr41of0', 'Horacio', 'Ellick', '8359 Dovetail Drive', 'Lisburn', 'BT10 9NM', '2001-03-31', 'M'),
('B05485592', 'CRZ50', 'wvh71ar1', 'Woodman', 'Schlag', '87298 Ridgeway Plaza', 'Jordanstown', 'BT87 5NZ', '1991-07-03', 'M'),
('B05554174', 'CXU77', 'aib00rq7', 'Sven', 'Pennoni', '6 Westend Crossing', 'Dublin', 'BT35 6GT', '1997-07-22', 'M'),
('B05763039', 'CHT69', 'woz52qd1', 'Cecilius', 'Bottini', '9 Main Lane', 'Belfast', 'BT99 9LS', '1989-06-13', 'M'),
('B05998930', 'CYN99', 'lod25fi9', 'Christabella', 'Theobold', '2 Sherman Lane', 'Dublin', 'BT64 0DO', '1985-08-03', 'F'),
('B06021905', 'CVS63', 'elm40ud6', 'Brendin', 'Bassil', '39 Buena Vista Place', 'Belfast', 'BT40 4OH', '1985-08-24', 'M'),
('B06214345', 'CVD52', 'ffk91fz3', 'Meredithe', 'Redolfi', '3970 La Follette Pass', 'Ballymena', 'BT99 9MY', '1991-12-17', 'O'),
('B06258566', 'CMS62', 'zpk93ip1', 'Esme', 'Macilhench', '159 Stone Corner Lane', 'Belfast', 'BT14 2LY', '2001-10-02', 'M'),
('B06316960', 'CCP85', 'fzz80ic9', 'Netta', 'Blanshard', '9 Jenna Avenue', 'Londonderry', 'BT25 7NO', '1987-07-21', 'F'),
('B06344968', 'CDC89', 'xel61vm7', 'Jade', 'Coffee', '98 Clarendon Lane', 'Belfast', 'BT18 5CE', '2000-02-28', 'F'),
('B06406351', 'CGO32', 'whr26vt4', 'Vergil', 'McCloud', '68 Blue Bill Park Center', 'Lisburn', 'BT48 3RU', '1993-05-31', 'M'),
('B06623086', 'CVS63', 'qrw78ke3', 'Bondie', 'Barnby', '7 Summerview Place', 'Coleraine', 'BT21 9LY', '1997-10-18', 'M'),
('B06625664', 'CCP85', 'nns64dx5', 'Laurette', 'Toone', '52752 Ryan Terrace', 'Ballymena', 'BT59 9RE', '2001-01-06', 'F'),
('B06662831', 'CZS35', 'csf68qr1', 'Jay', 'Tasker', '80 Coleraine Road', 'Portstewart', 'BT55 7JR', '1999-02-10', 'F'),
('B07048767', 'CEL68', 'iav95bs4', 'Talbot', 'McAllester', '5 Basil Junction', 'Ballymena', 'BT88 5GK', '1995-10-09', 'M'),
('B07318296', 'CZM95', 'phj47uf5', 'Kilian', 'Sertin', '96 Di Loreto Crossing', 'Newry', 'BT26 0ZV', '1987-08-14', 'M'),
('B07322831', 'CMM39', 'cyu45qd1', 'Frankie', 'Hartfield', '8644 2nd Junction', 'Dublin', 'BT97 7PJ', '1988-10-10', 'M'),
('B07380318', 'CVK09', 'fps43tw9', 'Aleksandr', 'Trimnell', '526 Randy Way', 'Dublin', 'BT94 4WS', '1999-01-18', 'M'),
('B07504111', 'CEI69', 'enu60ax9', 'Courtney', 'Biddlecombe', '6383 Memorial Place', 'Jordanstown', 'BT28 6XX', '2003-02-26', 'F'),
('B07522740', 'CMS62', 'dcu98bv1', 'Dalis', 'Perutto', '45 Erie Junction', 'Newry', 'BT64 9OM', '1993-01-10', 'M'),
('B07557758', 'CTX06', 'dda72vd3', 'Annmaria', 'Townrow', '07612 Sunnyside Alley', 'Belfast', 'BT27 3LD', '1995-07-29', 'F'),
('B07637831', 'CZS35', 'csf65qd4', 'Conor', 'Carlisle', '6 Loughview Park', 'Dublin', 'BT95 88J', '1998-10-09', 'M'),
('B07756732', 'CXU77', 'ufe24ob8', 'Ingemar', 'Gyngell', '0448 Duke Plaza', 'Belfast', 'BT20 6BW', '1994-04-05', 'M'),
('B08524046', 'CEL68', 'btr97pe1', 'Vannie', 'Jervis', '6 Ronald Regan Crossing', 'Larne', 'BT57 5JX', '1998-11-24', 'F'),
('B08596449', 'CDC89', 'qmk67fw4', 'Annamarie', 'Slucock', '475 Golf View Hill', 'Londonderry', 'BT53 6UN', '1991-04-29', 'F'),
('B08742367', 'CTX06', 'jgc23ze6', 'Robbi', 'Truswell', '01 Beilfuss Court', 'Dublin', 'BT69 3HD', '1998-02-05', 'F'),
('B08917780', 'CHK25', 'shk58xn2', 'Batsheva', 'Borth', '5 Village Crossing', 'Londonderry', 'BT84 4WO', '1989-01-27', 'F'),
('B08968960', 'CHT69', 'jsg63rq0', 'Mayer', 'Guterson', '7525 Fairview Junction', 'Larne', 'BT22 0NR', '1999-10-31', 'M'),
('B09003768', 'CTK81', 'poz40ny3', 'Giovanni', 'Lineen', '8320 Mandrake Lane', 'Cork', 'BT27 2GI', '2000-03-17', 'M'),
('B09126039', 'CND00', 'wsi81ji1', 'Onida', 'Tardiff', '3167 Del Mar Point', 'Dublin', 'BT38 7OX', '1988-11-01', 'F'),
('B09172957', 'CYN99', 'fuw03cn5', 'Adriano', 'Masdon', '59503 Utah Place', 'Lisburn', 'BT42 7BK', '2001-07-12', 'M'),
('B09601820', 'CMI66', 'nxi95mt1', 'Buddie', 'Jeffryes', '38750 Northridge Point', 'Ballymena', 'BT57 8NO', '1994-05-08', 'M'),
('B09829831', 'CZS35', 'csf90q31', 'Ross', 'Steele', '2 Ballyreagh Cove', 'Portrush', 'BT56 8FS', '1988-01-08', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `studentmodule`
--

CREATE TABLE `studentmodule` (
  `Student_ID` varchar(9) NOT NULL,
  `ModuleNo` varchar(6) NOT NULL,
  `StudentPerformanceMark` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentmodule`
--

INSERT INTO `studentmodule` (`Student_ID`, `ModuleNo`, `StudentPerformanceMark`) VALUES
('B00020831', 'COM224', '63/100'),
('B00034698', 'COM663', '44/100'),
('B00499941', 'COM942', '03/100'),
('B00621528', 'COM902', '18/100'),
('B00704126', 'COM830', '89/100'),
('B00799760', 'COM613', '31/100'),
('B00911942', 'COM894', '55/100'),
('B01233193', 'COM902', '01/100'),
('B01240813', 'COM294', '33/100'),
('B01350518', 'COM463', '16/100'),
('B01785431', 'COM162', '36/100'),
('B01822631', 'COM224', '24/100'),
('B01997158', 'COM815', '04/100'),
('B02458109', 'COM613', '02/100'),
('B02522792', 'COM454', '50/100'),
('B02674672', 'COM163', '67/100'),
('B03235083', 'COM033', '92/100'),
('B03351536', 'COM832', '46/100'),
('B03566804', 'COM244', '95/100'),
('B03809504', 'COM942', '13/100'),
('B03999699', 'COM882', '84/100'),
('B04326115', 'COM033', '26/100'),
('B04725164', 'COM454', '10/100'),
('B04926951', 'COM994', '45/100'),
('B05112632', 'COM397', '98/100'),
('B05485592', 'COM397', '56/100'),
('B05554174', 'COM842', '37/100'),
('B05763039', 'COM591', '27/100'),
('B05998930', 'COM123', '51/100'),
('B06021905', 'COM267', '56/100'),
('B06214345', 'COM894', '58/100'),
('B06258566', 'COM802', '56/100'),
('B06316960', 'COM764', '33/100'),
('B06344968', 'COM319', '83/100'),
('B06406351', 'COM815', '73/100'),
('B06623086', 'COM267', '67/100'),
('B06625664', 'COM764', '44/100'),
('B06662831', 'COM224', '75/100'),
('B07048767', 'COM218', '49/100'),
('B07318296', 'COM294', '79/100'),
('B07322831', 'COM832', '04/100'),
('B07380318', 'COM663', '14/100'),
('B07504111', 'COM882', '87/100'),
('B07522740', 'COM802', '02/100'),
('B07557758', 'COM687', '22/100'),
('B07637831', 'COM224', '99/100'),
('B07756732', 'COM842', '45/100'),
('B08524046', 'COM218', '33/100'),
('B08596449', 'COM319', '69/100'),
('B08742367', 'COM687', '19/100'),
('B08917780', 'COM463', '28/100'),
('B08968960', 'COM591', '21/100'),
('B09003768', 'COM994', '71/100'),
('B09126039', 'COM163', '83/100'),
('B09172957', 'COM123', '09/100'),
('B09601820', 'COM830', '40/100'),
('B09829831', 'COM224', '44/100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseNo`),
  ADD UNIQUE KEY `Course_UN` (`CourseName`),
  ADD KEY `Course_FK2` (`Department_Name`),
  ADD KEY `Course_FK1` (`AcademicStaff_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DName`),
  ADD UNIQUE KEY `Department_UN` (`Phone_Number`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`ModuleNo`),
  ADD UNIQUE KEY `Module_UN` (`moduleTitle`),
  ADD KEY `Module_FK1` (`CourseNo`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD UNIQUE KEY `Staff_UN1` (`ComputerNetwork_ID`),
  ADD UNIQUE KEY `Staff_UN2` (`NI_Number`),
  ADD KEY `Staff_FK1` (`Department_Name`),
  ADD KEY `Staff_FK2` (`AcademicStaff_ID`);

--
-- Indexes for table `staffmodule`
--
ALTER TABLE `staffmodule`
  ADD PRIMARY KEY (`Staff_ID`,`ModuleNo`),
  ADD KEY `StaffModule_FK2` (`ModuleNo`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD UNIQUE KEY `Student_UN` (`ComputerNetwork_ID`),
  ADD KEY `Student_FK1` (`CourseNo`);

--
-- Indexes for table `studentmodule`
--
ALTER TABLE `studentmodule`
  ADD PRIMARY KEY (`Student_ID`,`ModuleNo`),
  ADD KEY `StudentModule_FK2` (`ModuleNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `Course_FK1` FOREIGN KEY (`AcademicStaff_ID`) REFERENCES `staff` (`Staff_ID`),
  ADD CONSTRAINT `Course_FK2` FOREIGN KEY (`Department_Name`) REFERENCES `department` (`DName`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `Module_FK1` FOREIGN KEY (`CourseNo`) REFERENCES `course` (`CourseNo`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `Staff_FK1` FOREIGN KEY (`Department_Name`) REFERENCES `department` (`DName`),
  ADD CONSTRAINT `Staff_FK2` FOREIGN KEY (`AcademicStaff_ID`) REFERENCES `staff` (`Staff_ID`);

--
-- Constraints for table `staffmodule`
--
ALTER TABLE `staffmodule`
  ADD CONSTRAINT `StaffModule_FK1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`),
  ADD CONSTRAINT `StaffModule_FK2` FOREIGN KEY (`ModuleNo`) REFERENCES `module` (`ModuleNo`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_FK1` FOREIGN KEY (`CourseNo`) REFERENCES `course` (`CourseNo`);

--
-- Constraints for table `studentmodule`
--
ALTER TABLE `studentmodule`
  ADD CONSTRAINT `StudentModule_FK1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `StudentModule_FK2` FOREIGN KEY (`ModuleNo`) REFERENCES `module` (`ModuleNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
