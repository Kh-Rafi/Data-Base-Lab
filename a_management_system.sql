-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2026 at 04:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a_management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`) VALUES
(1, 'Mehedi Hasan', 'mehedi.hasan@example.com', 'pass123'),
(2, 'Ayesha Akter', 'ayesha.akter@example.com', 'pass456'),
(3, 'Md. Rakibul Islam', 'rakibul.islam@example.com', 'pass789'),
(4, 'Shafiqul Alam', 'shafiqul.alam@example.com', 'pass321'),
(5, 'Nusrat Jahan', 'nusrat.jahan@example.com', 'pass654');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date_posted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `manager_id`, `title`, `message`, `date_posted`) VALUES
(1, 1, 'Water Supply Maintenance', 'Water supply will be shut down for 4 hours on 15th August for maintenance.', '2025-08-10'),
(2, 2, 'Electricity Bill Due', 'Please pay your electricity bills by 20th August to avoid disconnection.', '2025-08-05'),
(3, 3, 'Parking Rules Update', 'New parking rules have been implemented. Please park only in designated areas.', '2025-07-30'),
(4, 4, 'Community Meeting', 'Community meeting scheduled on 25th August at the community hall.', '2025-08-01'),
(5, 5, 'Pest Control', 'Pest control services will be conducted on 18th August. Please keep your apartments accessible.', '2025-08-12'),
(6, 1, 'Security Alert', 'Please report any suspicious activity immediately to security staff.', '2025-08-08'),
(7, 2, 'Internet Downtime', 'Internet services will be down for maintenance on 22nd August from 10 AM to 2 PM.', '2025-08-15'),
(8, 3, 'Garbage Disposal', 'Garbage collection schedule has been updated. Please dispose of waste accordingly.', '2025-07-28'),
(9, 4, 'Elevator Maintenance', 'Elevator in block B will be under maintenance on 19th August.', '2025-08-14'),
(10, 5, 'New Staff Introduction', 'Introducing new housekeeping staff starting from 20th August.', '2025-08-16'),
(11, 1, 'COVID-19 Guidelines', 'Please follow COVID-19 safety protocols in all common areas.', '2025-08-03'),
(12, 2, 'Fire Drill', 'Fire drill scheduled on 23rd August. Cooperation is appreciated.', '2025-08-07'),
(13, 3, 'Swimming Pool Closure', 'Swimming pool will be closed for cleaning on 21st August.', '2025-08-09'),
(14, 4, 'Noise Control', 'Please keep noise levels down after 10 PM as per community rules.', '2025-08-04'),
(15, 5, 'Gym Timings Change', 'Gym timings have been extended till 11 PM starting from 15th August.', '2025-08-11'),
(16, 1, 'Roof Repair', 'Roof repairs will start from 24th August and continue for 3 days.', '2025-08-13');

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `apartment_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `apartment_number` varchar(20) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `rent_amount` decimal(10,2) DEFAULT NULL,
  `status` enum('Occupied','Vacant') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`apartment_id`, `manager_id`, `apartment_number`, `floor`, `rent_amount`, `status`) VALUES
(1, 1, 'A-101', 1, 15000.00, 'Occupied'),
(2, 1, 'A-102', 1, 15500.00, 'Vacant'),
(3, 1, 'A-201', 2, 16000.00, 'Vacant'),
(4, 1, 'A-202', 2, 16500.00, 'Vacant'),
(5, 1, 'A-301', 3, 17000.00, 'Occupied'),
(6, 1, 'A-302', 3, 17500.00, 'Vacant'),
(7, 1, 'A-401', 4, 18000.00, 'Occupied'),
(8, 1, 'A-402', 4, 18500.00, 'Vacant'),
(9, 2, 'B-101', 1, 17000.00, 'Occupied'),
(10, 2, 'B-102', 1, 17200.00, 'Vacant'),
(11, 2, 'B-201', 2, 17400.00, 'Occupied'),
(12, 2, 'B-202', 2, 17600.00, 'Vacant'),
(13, 2, 'B-301', 3, 17800.00, 'Occupied'),
(14, 2, 'B-302', 3, 18000.00, 'Vacant'),
(15, 2, 'B-401', 4, 18200.00, 'Occupied'),
(16, 2, 'B-402', 4, 18400.00, 'Vacant'),
(17, 3, 'C-101', 1, 16000.00, 'Occupied'),
(18, 3, 'C-102', 1, 16200.00, 'Vacant'),
(19, 3, 'C-201', 2, 16400.00, 'Occupied'),
(20, 3, 'C-202', 2, 16600.00, 'Vacant'),
(21, 3, 'C-301', 3, 16800.00, 'Occupied'),
(22, 3, 'C-302', 3, 17000.00, 'Vacant'),
(23, 3, 'C-401', 4, 17200.00, 'Occupied'),
(24, 3, 'C-402', 4, 17400.00, 'Vacant'),
(25, 4, 'D-101', 1, 19000.00, 'Occupied'),
(26, 4, 'D-102', 1, 19200.00, 'Vacant'),
(27, 4, 'D-201', 2, 19400.00, 'Occupied'),
(28, 4, 'D-202', 2, 19600.00, 'Vacant'),
(29, 4, 'D-301', 3, 19800.00, 'Occupied'),
(30, 4, 'D-302', 3, 20000.00, 'Vacant'),
(31, 4, 'D-401', 4, 20200.00, 'Occupied'),
(32, 4, 'D-402', 4, 20400.00, 'Vacant'),
(33, 5, 'E-101', 1, 21000.00, 'Occupied'),
(34, 5, 'E-102', 1, 21200.00, 'Vacant'),
(35, 5, 'E-201', 2, 21400.00, 'Occupied'),
(36, 5, 'E-202', 2, 21600.00, 'Vacant'),
(37, 5, 'E-301', 3, 21800.00, 'Occupied'),
(38, 5, 'E-302', 3, 22000.00, 'Vacant'),
(39, 5, 'E-401', 4, 22200.00, 'Occupied'),
(40, 5, 'E-402', 4, 22400.00, 'Vacant'),
(41, 6, 'F-101', 1, 17500.00, 'Occupied'),
(42, 6, 'F-102', 1, 17700.00, 'Vacant'),
(43, 6, 'F-201', 2, 17900.00, 'Occupied'),
(44, 6, 'F-202', 2, 18100.00, 'Vacant'),
(45, 7, 'G-101', 1, 18500.00, 'Occupied'),
(46, 7, 'G-102', 1, 18700.00, 'Vacant'),
(47, 7, 'G-201', 2, 18900.00, 'Occupied'),
(48, 7, 'G-202', 2, 19100.00, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `admin_id`, `name`, `email`, `phone`, `password`) VALUES
(1, 1, 'Abdul Karim', 'abdul.karim@example.com', '01711223344', 'mng123'),
(2, 2, 'Farzana Akhter', 'farzana.akhter@example.com', '01812345678', 'mng456'),
(3, 3, 'Md. Sohel Rana', 'sohel.rana@example.com', '01987654321', 'mng789'),
(4, 4, 'Sadia Islam', 'sadia.islam@example.com', '01699887766', 'mng321'),
(5, 5, 'Mahmudul Hasan', 'mahmudul.hasan@example.com', '01533445566', 'mng654'),
(6, 1, 'Rokeya Begum', 'rokeya.begum@example.com', '01744556677', 'mng987'),
(7, 2, 'Nazmul Huda', 'nazmul.huda@example.com', '01922334455', 'mng159');

-- --------------------------------------------------------

--
-- Table structure for table `rent_payment`
--

CREATE TABLE `rent_payment` (
  `payment_id` int(11) NOT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `status` enum('Paid','Unpaid') DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent_payment`
--

INSERT INTO `rent_payment` (`payment_id`, `tenant_id`, `apartment_id`, `payment_date`, `amount_paid`, `month`, `status`, `payment_method`) VALUES
(1, 1, 1, '2025-07-05', 15000.00, 'July', 'Paid', 'Bkash'),
(2, 2, 3, '2025-07-06', 16000.00, 'July', 'Paid', 'Nagad'),
(3, 3, 5, '2025-07-07', 17000.00, 'July', 'Paid', 'Rocket'),
(4, 4, 7, '2025-07-08', 18000.00, 'July', 'Paid', 'Bank Transfer (BRAC Bank)'),
(5, 5, 9, '2025-06-05', 17000.00, 'June', 'Paid', 'Bkash'),
(6, 6, 11, '2025-06-06', 17200.00, 'June', 'Paid', 'Nagad'),
(7, 7, 13, '2025-06-07', 17400.00, 'June', 'Paid', 'Rocket'),
(8, 8, 15, '2025-06-08', 17600.00, 'June', 'Paid', 'Bank Transfer (Dutch-Bangla Bank)'),
(9, 9, 17, '2025-05-05', 16800.00, 'May', 'Paid', 'Bkash'),
(10, 10, 19, '2025-05-06', 17000.00, 'May', 'Paid', 'Nagad'),
(11, 11, 21, '2025-05-07', 17500.00, 'May', 'Paid', 'Rocket'),
(12, 12, 23, '2025-05-08', 18000.00, 'May', 'Paid', 'Bank Transfer (Islami Bank)'),
(13, 13, 25, '2025-04-05', 19000.00, 'April', 'Paid', 'Bkash'),
(14, 14, 27, '2025-04-06', 19200.00, 'April', 'Paid', 'Nagad'),
(15, 15, 29, '2025-04-07', 19400.00, 'April', 'Paid', 'Rocket'),
(16, 16, 31, NULL, 19800.00, 'March', 'Unpaid', 'N/A'),
(17, 17, 33, NULL, 21000.00, 'February', 'Unpaid', 'N/A'),
(18, 18, 35, NULL, 21200.00, 'January', 'Unpaid', 'N/A'),
(19, 19, 37, NULL, 21400.00, 'December', 'Unpaid', 'N/A'),
(20, 20, 39, NULL, 21800.00, 'November', 'Unpaid', 'N/A'),
(21, 21, 41, NULL, 17500.00, 'October', 'Unpaid', 'N/A'),
(22, 22, 43, NULL, 17700.00, 'September', 'Unpaid', 'N/A'),
(23, 23, 45, NULL, 18500.00, 'August', 'Unpaid', 'N/A'),
(24, 24, 47, NULL, 18700.00, 'July', 'Unpaid', 'N/A'),
(25, 1, 2, '2025-08-21', 0.00, 'August', NULL, 'Bkash'),
(26, 1, 2, '2025-08-21', 1200.00, 'August', 'Paid', 'Bkash');

--
-- Triggers `rent_payment`
--
DELIMITER $$
CREATE TRIGGER `auto_set_rent_paid` BEFORE INSERT ON `rent_payment` FOR EACH ROW BEGIN
IF NEW.amount_paid > 0 THEN
SET NEW.status = 'Paid';
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validate_rent_payment` BEFORE INSERT ON `rent_payment` FOR EACH ROW BEGIN
IF NEW.amount_paid < 0 THEN
SET NEW.amount_paid = 0;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `staff_id`, `service_type`, `description`, `date`) VALUES
(1, 1, 'Security Patrol', 'Routine security patrol of the apartment premises', '2025-07-01'),
(2, 2, 'Cleaning', 'Daily cleaning of common areas and hallways', '2025-07-02'),
(3, 3, 'Electrical Repair', 'Fixed faulty wiring in apartment B-202', '2025-07-03'),
(4, 4, 'Reception Duty', 'Managed reception desk and visitor log', '2025-07-04'),
(5, 5, 'Plumbing', 'Repaired leaking faucet in apartment C-101', '2025-07-05'),
(6, 6, 'Housekeeping', 'Deep cleaning of lobby and waiting area', '2025-07-06'),
(7, 7, 'Security Patrol', 'Night shift security patrol', '2025-07-07'),
(8, 8, 'Cleaning', 'Sanitization of elevator buttons and handles', '2025-07-08'),
(9, 9, 'Electrical Repair', 'Replaced light bulbs in corridor', '2025-07-09'),
(10, 10, 'Reception Duty', 'Assisted tenants with package deliveries', '2025-07-10'),
(11, 1, 'Security Patrol', 'Regular security patrol of the apartment premises.', '2025-07-01'),
(12, 2, 'Cleaning', 'Cleaning of common areas and corridors.', '2025-07-02'),
(13, 3, 'Electrical Repair', 'Fixed electrical wiring in apartment 3.', '2025-07-03'),
(14, 4, 'Reception Assistance', 'Assisted tenants with visitor registrations.', '2025-07-04'),
(15, 5, 'Plumbing', 'Repaired leaking pipes in apartment 5.', '2025-07-05'),
(16, 6, 'Housekeeping', 'General housekeeping for common lobby.', '2025-07-06'),
(17, 7, 'Security Patrol', 'Night shift security patrol.', '2025-07-07'),
(18, 8, 'Cleaning', 'Deep cleaning of basement parking.', '2025-07-08'),
(19, 9, 'Electrical Inspection', 'Routine electrical safety inspection.', '2025-07-09'),
(20, 10, 'Reception', 'Managed front desk during tenant move-in.', '2025-07-10'),
(21, 1, 'Security Incident', 'Responded to suspicious activity reported.', '2025-07-11'),
(22, 2, 'Garbage Collection', 'Managed garbage disposal area.', '2025-07-12'),
(23, 3, 'Light Fixture Repair', 'Replaced broken light fixtures.', '2025-07-13'),
(24, 4, 'Package Handling', 'Received and logged tenant packages.', '2025-07-14'),
(25, 5, 'Water Supply Maintenance', 'Maintained water supply pumps.', '2025-07-15'),
(26, 6, 'Cleaning', 'Sanitized elevator buttons and rails.', '2025-07-16'),
(27, 7, 'Security Camera Check', 'Checked security camera feeds.', '2025-07-17');

-- --------------------------------------------------------

--
-- Table structure for table `service_request`
--

CREATE TABLE `service_request` (
  `request_id` int(11) NOT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `status` enum('Pending','In Progress','Resolved') DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_request`
--

INSERT INTO `service_request` (`request_id`, `tenant_id`, `manager_id`, `request_date`, `status`, `description`) VALUES
(1, 1, 1, '2025-07-02', 'Pending', 'Request for additional security patrol at night.'),
(2, 2, 1, '2025-07-03', 'In Progress', 'Cleaning required urgently in common corridors.'),
(3, 3, 2, '2025-07-04', 'Resolved', 'Electrical wiring issue fixed in my apartment.'),
(4, 4, 2, '2025-07-05', 'Pending', 'Need assistance with visitor registrations.'),
(5, 5, 3, '2025-07-06', 'In Progress', 'Plumbing problem in bathroom sink.'),
(6, 6, 3, '2025-07-07', 'Resolved', 'Request for general housekeeping in lobby completed.'),
(7, 7, 4, '2025-07-08', 'Pending', 'Security patrol needed for night shift.'),
(8, 8, 4, '2025-07-09', 'Resolved', 'Deep cleaning of basement parking done.'),
(9, 9, 5, '2025-07-10', 'In Progress', 'Routine electrical safety inspection requested.'),
(10, 10, 5, '2025-07-11', 'Pending', 'Front desk assistance needed for move-in.'),
(11, 11, 1, '2025-07-12', 'Resolved', 'Security incident responded promptly.'),
(12, 12, 2, '2025-07-13', 'Pending', 'Garbage disposal management issues.'),
(13, 13, 3, '2025-07-14', 'In Progress', 'Broken light fixtures need replacement.'),
(14, 14, 4, '2025-07-15', 'Resolved', 'Package handling service appreciated.'),
(15, 15, 5, '2025-07-16', 'Pending', 'Water supply pumps maintenance required.'),
(16, 16, 1, '2025-07-17', 'In Progress', 'Sanitization of elevator buttons requested.'),
(17, 17, 2, '2025-07-18', 'Resolved', 'Security camera feeds checked and updated.');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `manager_id`, `name`, `role`, `phone`) VALUES
(1, 1, 'Rafiq Uddin', 'Security Guard', '01710001122'),
(2, 1, 'Nazma Begum', 'Cleaner', '01820002233'),
(3, 2, 'Jamal Hossain', 'Electrician', '01930003344'),
(4, 2, 'Shirin Akter', 'Receptionist', '01640004455'),
(5, 3, 'Habib Mia', 'Plumber', '01550005566'),
(6, 3, 'Fatema Khatun', 'Housekeeper', '01760006677'),
(7, 4, 'Kamal Uddin', 'Security Guard', '01870007788'),
(8, 4, 'Laila Begum', 'Cleaner', '01980008899'),
(9, 5, 'Sabbir Rahman', 'Electrician', '01690009900'),
(10, 5, 'Runa Akter', 'Receptionist', '01701001111');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `tenant_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `apartment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`tenant_id`, `manager_id`, `name`, `email`, `phone`, `password`, `entry_date`, `apartment_id`) VALUES
(1, 1, 'Abdur Rahman', 'abdur.rahman@example.com', '01711001122', 'tenant123', '2025-08-11 15:34:58', 1),
(2, 1, 'Tahmina Akter', 'tahmina.akter@example.com', '01822002233', 'tenant456', '2025-08-11 15:34:58', 3),
(3, 1, 'Nasir Uddin', 'nasir.uddin@example.com', '01933004455', 'tenant789', '2025-08-11 15:34:58', 5),
(4, 1, 'Sultana Begum', 'sultana.begum@example.com', '01644005566', 'tenant321', '2025-08-11 15:34:58', 7),
(5, 2, 'Rafiqul Islam', 'rafiqul.islam@example.com', '01755006677', 'tenant654', '2025-08-11 15:34:58', 9),
(6, 2, 'Sharmin Sultana', 'sharmin.sultana@example.com', '01866007788', 'tenant987', '2025-08-11 15:34:58', 11),
(7, 2, 'Kamrul Hasan', 'kamrul.hasan@example.com', '01977008899', 'tenant159', '2025-08-11 15:34:58', 13),
(8, 2, 'Jahanara Begum', 'jahanara.begum@example.com', '01688009900', 'tenant753', '2025-08-11 15:34:58', 15),
(9, 3, 'Imran Hossain', 'imran.hossain@example.com', '01799001111', 'tenant258', '2025-08-11 15:34:58', 17),
(10, 3, 'Mst. Rokeya', 'mst.rokeya@example.com', '01810002222', 'tenant369', '2025-08-11 15:34:58', 19),
(11, 3, 'Anisur Rahman', 'anisur.rahman@example.com', '01920003333', 'tenant147', '2025-08-11 15:34:58', 21),
(12, 3, 'Fahmida Yasmin', 'fahmida.yasmin@example.com', '01630004444', 'tenant258', '2025-08-11 15:34:58', 23),
(13, 4, 'Nurul Amin', 'nurul.amin@example.com', '01740005555', 'tenant369', '2025-08-11 15:34:58', 25),
(14, 4, 'Salma Khatun', 'salma.khatun@example.com', '01850006666', 'tenant147', '2025-08-11 15:34:58', 27),
(15, 4, 'Abul Kalam', 'abul.kalam@example.com', '01960007777', 'tenant258', '2025-08-11 15:34:58', 29),
(16, 4, 'Farida Parvin', 'farida.parvin@example.com', '01670008888', 'tenant369', '2025-08-11 15:34:58', 31),
(17, 5, 'Habib Ullah', 'habib.ullah@example.com', '01780009999', 'tenant147', '2025-08-11 15:34:58', 33),
(18, 5, 'Rina Akter', 'rina.akter@example.com', '01890001111', 'tenant258', '2025-08-11 15:34:58', 35),
(19, 5, 'Shahadat Hossain', 'shahadat.hossain@example.com', '01910002222', 'tenant369', '2025-08-11 15:34:58', 37),
(20, 5, 'Anwara Begum', 'anwara.begum@example.com', '01620003333', 'tenant147', '2025-08-11 15:34:58', 39),
(21, 6, 'Kamal Hossain', 'kamal.hossain@example.com', '01730004444', 'tenant258', '2025-08-11 15:34:58', 41),
(22, 6, 'Nusrat Jahan', 'nusrat.jahan@example.com', '01840005555', 'tenant369', '2025-08-11 15:34:58', 43),
(23, 6, 'Iqbal Ahmed', 'iqbal.ahmed@example.com', '01950006666', 'tenant147', '2025-08-11 15:34:58', 45),
(24, 6, 'Parveen Sultana', 'parveen.sultana@example.com', '01660007777', 'tenant258', '2025-08-11 15:34:58', 47);

--
-- Triggers `tenant`
--
DELIMITER $$
CREATE TRIGGER `backup_tenant_before_delete` BEFORE DELETE ON `tenant` FOR EACH ROW BEGIN
INSERT INTO Tenant_Backup (tenant_id, name, email, phone, apartment_id, entry_date)
VALUES (OLD.tenant_id, OLD.name, OLD.email, OLD.phone, OLD.apartment_id, OLD.entry_date);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `set_apartment_occupied` AFTER INSERT ON `tenant` FOR EACH ROW BEGIN
UPDATE Apartment SET status = 'Occupied' WHERE apartment_id = NEW.apartment_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `set_apartment_vacant` AFTER DELETE ON `tenant` FOR EACH ROW BEGIN
UPDATE Apartment SET status = 'Vacant' WHERE apartment_id = OLD.apartment_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_backup`
--

CREATE TABLE `tenant_backup` (
  `backup_id` int(11) NOT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `leave_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant_backup`
--

INSERT INTO `tenant_backup` (`backup_id`, `tenant_id`, `name`, `email`, `phone`, `apartment_id`, `entry_date`, `leave_date`) VALUES
(1, 25, 'Sabbir Hossain', 'sabbir.hossain@example.com', '01770008888', 48, '2025-08-11 15:34:58', '2025-08-21 16:46:11'),
(5, 26, ' Joy Ahmed', 'joy@example.com', '01987654321', 3, '2025-08-21 16:50:30', '2025-08-21 17:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `utility_bill`
--

CREATE TABLE `utility_bill` (
  `bill_id` int(11) NOT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `bill_type` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `paid_status` enum('Paid','Unpaid') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utility_bill`
--

INSERT INTO `utility_bill` (`bill_id`, `apartment_id`, `bill_type`, `amount`, `due_date`, `paid_status`) VALUES
(1, 1, 'Electricity', 3200.50, '2025-08-10', 'Paid'),
(2, 2, 'Water', 500.00, '2025-08-12', 'Unpaid'),
(3, 3, 'Gas', 1200.75, '2025-08-15', 'Paid'),
(4, 4, 'Internet', 800.00, '2025-08-20', 'Unpaid'),
(5, 5, 'Electricity', 3500.00, '2025-08-10', 'Paid'),
(6, 6, 'Water', 450.00, '2025-08-12', 'Paid'),
(7, 7, 'Gas', 1150.25, '2025-08-15', 'Unpaid'),
(8, 8, 'Internet', 900.00, '2025-08-20', 'Paid'),
(9, 9, 'Electricity', 3100.00, '2025-08-10', 'Unpaid'),
(10, 10, 'Water', 550.00, '2025-08-12', 'Paid'),
(11, 11, 'Gas', 1300.00, '2025-08-15', 'Unpaid'),
(12, 12, 'Internet', 850.00, '2025-08-20', 'Paid'),
(13, 13, 'Electricity', 3400.00, '2025-08-10', 'Paid'),
(14, 14, 'Water', 480.00, '2025-08-12', 'Unpaid'),
(15, 15, 'Gas', 1250.50, '2025-08-15', 'Paid'),
(16, 16, 'Internet', 870.00, '2025-08-20', 'Unpaid'),
(17, 17, 'Electricity', 3000.00, '2025-08-10', 'Paid'),
(18, 18, 'Water', 520.00, '2025-08-12', 'Paid'),
(19, 19, 'Gas', 1180.75, '2025-08-15', 'Unpaid'),
(20, 20, 'Internet', 920.00, '2025-08-20', 'Paid'),
(21, 2, 'Electricity', 2000.00, '2025-09-01', 'Unpaid');

--
-- Triggers `utility_bill`
--
DELIMITER $$
CREATE TRIGGER `default_utility_status` BEFORE INSERT ON `utility_bill` FOR EACH ROW BEGIN
IF NEW.paid_status IS NULL THEN
SET NEW.paid_status = 'Unpaid';
END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`apartment_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `rent_payment`
--
ALTER TABLE `rent_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `tenant_id` (`tenant_id`),
  ADD KEY `apartment_id` (`apartment_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `service_request`
--
ALTER TABLE `service_request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `tenant_id` (`tenant_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`tenant_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `apartment_id` (`apartment_id`);

--
-- Indexes for table `tenant_backup`
--
ALTER TABLE `tenant_backup`
  ADD PRIMARY KEY (`backup_id`);

--
-- Indexes for table `utility_bill`
--
ALTER TABLE `utility_bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `apartment_id` (`apartment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `apartment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rent_payment`
--
ALTER TABLE `rent_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `service_request`
--
ALTER TABLE `service_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `tenant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tenant_backup`
--
ALTER TABLE `tenant_backup`
  MODIFY `backup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `utility_bill`
--
ALTER TABLE `utility_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `announcement_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`);

--
-- Constraints for table `apartment`
--
ALTER TABLE `apartment`
  ADD CONSTRAINT `apartment_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `rent_payment`
--
ALTER TABLE `rent_payment`
  ADD CONSTRAINT `rent_payment_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`tenant_id`),
  ADD CONSTRAINT `rent_payment_ibfk_2` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `service_request`
--
ALTER TABLE `service_request`
  ADD CONSTRAINT `service_request_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`tenant_id`),
  ADD CONSTRAINT `service_request_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`);

--
-- Constraints for table `tenant`
--
ALTER TABLE `tenant`
  ADD CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`),
  ADD CONSTRAINT `tenant_ibfk_2` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`);

--
-- Constraints for table `utility_bill`
--
ALTER TABLE `utility_bill`
  ADD CONSTRAINT `utility_bill_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
