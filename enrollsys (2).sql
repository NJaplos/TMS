-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2026 at 04:09 AM
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
-- Database: `enrollsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_no` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nationality_id` bigint(20) UNSIGNED DEFAULT NULL,
  `civil_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile_no` varchar(30) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_account`
--

CREATE TABLE `applicant_account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `failed_login_count` int(11) NOT NULL DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_activity_log`
--

CREATE TABLE `applicant_activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `metadata_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata_json`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_notification`
--

CREATE TABLE `applicant_notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `notification_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_profile`
--

CREATE TABLE `applicant_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `place_of_birth` varchar(150) DEFAULT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `emergency_contact_name` varchar(150) DEFAULT NULL,
  `emergency_contact_no` varchar(50) DEFAULT NULL,
  `relationship_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seafarer_id_no` varchar(100) DEFAULT NULL,
  `sirb_no` varchar(100) DEFAULT NULL,
  `cdc_no` varchar(100) DEFAULT NULL,
  `passport_no` varchar(100) DEFAULT NULL,
  `passport_expiry` date DEFAULT NULL,
  `medical_certificate_no` varchar(100) DEFAULT NULL,
  `medical_expiry` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_session`
--

CREATE TABLE `applicant_session` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_account_id` bigint(20) UNSIGNED NOT NULL,
  `session_token_hash` char(64) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_no` varchar(50) NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_course`
--

CREATE TABLE `application_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `preferred_start_date` date DEFAULT NULL,
  `priority_order` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_requirement`
--

CREATE TABLE `application_requirement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `document_upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `is_submitted` tinyint(1) NOT NULL DEFAULT 0,
  `verified_at` datetime DEFAULT NULL,
  `verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_review`
--

CREATE TABLE `application_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `reviewer_id` bigint(20) UNSIGNED NOT NULL,
  `decision` enum('pending','approved','rejected','for_compliance') NOT NULL DEFAULT 'pending',
  `remarks` text DEFAULT NULL,
  `reviewed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_status_history`
--

CREATE TABLE `application_status_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `old_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `new_status_id` bigint(20) UNSIGNED NOT NULL,
  `changed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `actor_type` enum('user','applicant','system') NOT NULL,
  `actor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `record_id` bigint(20) UNSIGNED DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `certificate_no` varchar(100) NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `issued_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `qr_code_value` varchar(255) DEFAULT NULL,
  `verification_url` varchar(500) DEFAULT NULL,
  `issued_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('draft','issued','void','expired','reissued') NOT NULL DEFAULT 'draft',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `communication_log`
--

CREATE TABLE `communication_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inquiry_id` bigint(20) UNSIGNED DEFAULT NULL,
  `channel` enum('email','sms','call','walkin','messenger','system') NOT NULL,
  `direction` enum('inbound','outbound') NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `handled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communication_log`
--

INSERT INTO `communication_log` (`id`, `applicant_id`, `inquiry_id`, `channel`, `direction`, `subject`, `message`, `handled_by`, `created_at`) VALUES
(1, NULL, 1, 'email', 'inbound', 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-20\n\ntest 101', NULL, '2026-07-08 15:53:42'),
(2, NULL, 2, 'email', 'inbound', 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: No Preference\nPreferred Date: 2026-07-27\n\nhow much the BT', NULL, '2026-07-08 20:29:18'),
(3, NULL, 3, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Ship Security Awareness\nPreferred Schedule: Morning\nPreferred Date: 2026-08-03\n\nhi', NULL, '2026-07-09 12:20:07'),
(4, NULL, 4, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-07-22\n\nhi', NULL, '2026-07-09 12:31:23'),
(5, NULL, 5, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-17\n\nhi', NULL, '2026-07-09 17:08:26'),
(6, NULL, 6, 'email', 'inbound', 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-30\n\nhi', NULL, '2026-07-09 17:14:14'),
(7, NULL, 7, 'email', 'inbound', 's', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-08-06\n\ns', NULL, '2026-07-09 22:40:23'),
(8, NULL, 8, 'email', 'inbound', 'How much?', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-31\n\nlo', NULL, '2026-07-10 08:21:48'),
(9, NULL, 9, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-28\n\nfr', NULL, '2026-07-11 15:54:13'),
(10, NULL, 10, 'email', 'inbound', 'How much?', 'Preferred Contact: Phone Call\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-23\n\ntest', NULL, '2026-07-11 16:37:49'),
(11, NULL, 11, 'email', 'inbound', 'How much?', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-16\n\nhi', NULL, '2026-07-15 06:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_no` varchar(50) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_type` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_contact`
--

CREATE TABLE `company_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(150) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_prerequisite`
--

CREATE TABLE `course_prerequisite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `prerequisite_course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `required_document_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `required_min_age` int(11) DEFAULT NULL,
  `requires_medical` tinyint(1) NOT NULL DEFAULT 0,
  `requires_sea_service_months` decimal(6,2) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_type` enum('applicant','application','enrollment','payment','medical','company') NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` enum('pending','submitted','verified','rejected','expired') NOT NULL DEFAULT 'pending',
  `issued_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_upload`
--

CREATE TABLE `document_upload` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_size` bigint(20) UNSIGNED DEFAULT NULL,
  `checksum_sha256` char(64) DEFAULT NULL,
  `uploaded_by` bigint(20) UNSIGNED DEFAULT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_verification`
--

CREATE TABLE `document_verification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `verified_by` bigint(20) UNSIGNED NOT NULL,
  `verification_status` enum('verified','rejected','for_resubmission') NOT NULL,
  `remarks` text DEFAULT NULL,
  `verified_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_version`
--

CREATE TABLE `document_version` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `document_upload_id` bigint(20) UNSIGNED NOT NULL,
  `version_no` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_queue`
--

CREATE TABLE `email_queue` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recipient_email` varchar(150) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body_html` longtext NOT NULL,
  `status` enum('pending','sent','failed') NOT NULL DEFAULT 'pending',
  `attempts` int(11) NOT NULL DEFAULT 0,
  `scheduled_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_queue`
--

INSERT INTO `email_queue` (`id`, `recipient_email`, `subject`, `body_html`, `status`, `attempts`, `scheduled_at`, `sent_at`, `error_message`, `created_at`) VALUES
(1, 'admissions@usmci.test', '[INQ-2026-000001] New Admissions Inquiry: How much?', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000001</p><p><strong>Name:</strong> Juan Dela Cruz</p><p><strong>Email:</strong> n@g.com</p><p><strong>Mobile:</strong> 12345678</p><p><strong>Reply-To:</strong> n@g.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-20\n\ntest 101</pre>', 'pending', 0, '2026-07-08 15:53:42', NULL, NULL, '2026-07-08 15:53:42'),
(2, 'nieljaplos0924@gmail.com', '[INQ-2026-000002] New Admissions Inquiry: How much?', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000002</p><p><strong>Name:</strong> John Doe</p><p><strong>Email:</strong> jd@gmail.com</p><p><strong>Mobile:</strong> 6669993333</p><p><strong>Reply-To:</strong> jd@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: No Preference\nPreferred Date: 2026-07-27\n\nhow much the BT</pre>', 'pending', 0, '2026-07-08 20:29:18', NULL, NULL, '2026-07-08 20:29:18'),
(3, 'nieljaplos0924@gmail.com', '[INQ-2026-000003] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000003</p><p><strong>Name:</strong> Maria Silya</p><p><strong>Email:</strong> MS@gmail.com</p><p><strong>Mobile:</strong> 12345678</p><p><strong>Reply-To:</strong> MS@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Ship Security Awareness\nPreferred Schedule: Morning\nPreferred Date: 2026-08-03\n\nhi</pre>', 'pending', 0, '2026-07-09 12:20:07', NULL, NULL, '2026-07-09 12:20:07'),
(4, 'nieljaplos0924@gmail.com', '[INQ-2026-000004] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000004</p><p><strong>Name:</strong> Lyka</p><p><strong>Email:</strong> l@gmail.com</p><p><strong>Mobile:</strong> 987</p><p><strong>Reply-To:</strong> l@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-07-22\n\nhi</pre>', 'pending', 0, '2026-07-09 12:31:23', NULL, NULL, '2026-07-09 12:31:23'),
(5, 'nieljaplos0924@gmail.com', '[INQ-2026-000005] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000005</p><p><strong>Name:</strong> lhyn</p><p><strong>Email:</strong> l@gmail.com</p><p><strong>Mobile:</strong> 996699</p><p><strong>Reply-To:</strong> l@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-17\n\nhi</pre>', 'pending', 0, '2026-07-09 17:08:26', NULL, NULL, '2026-07-09 17:08:26'),
(6, 'nieljaplos0924@gmail.com', '[INQ-2026-000006] New Admissions Inquiry: How much?', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000006</p><p><strong>Name:</strong> Arnold</p><p><strong>Email:</strong> a@gmail.com</p><p><strong>Mobile:</strong> 55882236</p><p><strong>Reply-To:</strong> a@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-30\n\nhi</pre>', 'pending', 0, '2026-07-09 17:14:14', NULL, NULL, '2026-07-09 17:14:14'),
(7, 'nieljaplos0924@gmail.com', '[INQ-2026-000007] New Admissions Inquiry: s', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000007</p><p><strong>Name:</strong> s</p><p><strong>Email:</strong> s@g.c</p><p><strong>Mobile:</strong> s</p><p><strong>Reply-To:</strong> s@g.c</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-08-06\n\ns</pre>', 'pending', 0, '2026-07-09 22:40:23', NULL, NULL, '2026-07-09 22:40:23'),
(8, 'nieljaplos0924@gmail.com', '[INQ-2026-000008] New Admissions Inquiry: How much?', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000008</p><p><strong>Name:</strong> 710</p><p><strong>Email:</strong> 7@10.c0m</p><p><strong>Mobile:</strong> 369852</p><p><strong>Reply-To:</strong> 7@10.c0m</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-31\n\nlo</pre>', 'pending', 0, '2026-07-10 08:21:48', NULL, NULL, '2026-07-10 08:21:48'),
(9, 'nieljaplos0924@gmail.com', '[INQ-2026-000009] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000009</p><p><strong>Name:</strong> h</p><p><strong>Email:</strong> h@g.com</p><p><strong>Mobile:</strong> 516</p><p><strong>Reply-To:</strong> h@g.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-28\n\nfr</pre>', 'pending', 0, '2026-07-11 15:54:13', NULL, NULL, '2026-07-11 15:54:13'),
(10, 'nieljaplos0924@gmail.com', '[INQ-2026-000010] New Admissions Inquiry: How much?', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000010</p><p><strong>Name:</strong> test</p><p><strong>Email:</strong> g@g.com</p><p><strong>Mobile:</strong> 7777</p><p><strong>Reply-To:</strong> g@g.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Phone Call\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-23\n\ntest</pre>', 'pending', 0, '2026-07-11 16:37:49', NULL, NULL, '2026-07-11 16:37:49'),
(11, 'nieljaplos0924@gmail.com', '[INQ-2026-000011] New Admissions Inquiry: How much?', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000011</p><p><strong>Name:</strong> seven fifteen</p><p><strong>Email:</strong> 715@g.com</p><p><strong>Mobile:</strong> 99886633</p><p><strong>Reply-To:</strong> 715@g.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-16\n\nhi</pre>', 'pending', 0, '2026-07-15 06:40:19', NULL, NULL, '2026-07-15 06:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_no` varchar(50) NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `training_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enrollment_date` date NOT NULL,
  `status` enum('pending','enrolled','cancelled','completed','no_show') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_history`
--

CREATE TABLE `enrollment_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `old_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) NOT NULL,
  `remarks` text DEFAULT NULL,
  `changed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_schedule`
--

CREATE TABLE `enrollment_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `schedule_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `room` varchar(100) DEFAULT NULL,
  `simulator_or_facility` varchar(150) DEFAULT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_subject`
--

CREATE TABLE `enrollment_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','ongoing','passed','failed','dropped') NOT NULL DEFAULT 'pending',
  `final_grade` decimal(5,2) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inquiry_no` varchar(50) NOT NULL,
  `inquiry_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `applicant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `preferred_contact` varchar(50) DEFAULT NULL,
  `course_interest` varchar(150) DEFAULT NULL,
  `preferred_schedule` varchar(50) DEFAULT NULL,
  `preferred_date` date DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `inquiry_no`, `inquiry_type_id`, `applicant_id`, `full_name`, `email`, `mobile_no`, `preferred_contact`, `course_interest`, `preferred_schedule`, `preferred_date`, `subject`, `message`, `source`, `status_id`, `assigned_to`, `created_at`, `updated_at`) VALUES
(1, 'INQ-2026-000001', 2, NULL, 'Juan Dela Cruz', 'n@g.com', '12345678', NULL, NULL, NULL, NULL, 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-20\n\ntest 101', 'website', NULL, NULL, '2026-07-08 15:53:42', '2026-07-08 15:53:42'),
(2, 'INQ-2026-000002', 2, NULL, 'John Doe', 'jd@gmail.com', '6669993333', 'Email', 'Basic Training', 'No Preference', '2026-07-27', 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: No Preference\nPreferred Date: 2026-07-27\n\nhow much the BT', 'website', NULL, NULL, '2026-07-08 20:29:18', '2026-07-08 20:29:18'),
(3, 'INQ-2026-000003', 2, NULL, 'Maria Silya', 'MS@gmail.com', '12345678', 'Email', 'Ship Security Awareness', 'Morning', '2026-08-03', 'availability', 'Preferred Contact: Email\nPreferred Course: Ship Security Awareness\nPreferred Schedule: Morning\nPreferred Date: 2026-08-03\n\nhi', 'website', NULL, NULL, '2026-07-09 12:20:07', '2026-07-09 12:20:07'),
(4, 'INQ-2026-000004', 2, NULL, 'Lyka', 'l@gmail.com', '987', 'Email', 'Medical First Aid', 'Morning', '2026-07-22', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-07-22\n\nhi', 'website', NULL, NULL, '2026-07-09 12:31:23', '2026-07-09 12:31:23'),
(5, 'INQ-2026-000005', 2, NULL, 'lhyn', 'l@gmail.com', '996699', 'Email', 'Advanced Fire Fighting', 'Morning', '2026-07-17', 'availability', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-17\n\nhi', 'website', NULL, NULL, '2026-07-09 17:08:26', '2026-07-09 17:08:26'),
(6, 'INQ-2026-000006', 2, NULL, 'Arnold', 'a@gmail.com', '55882236', 'Email', 'Basic Training', 'Morning', '2026-07-30', 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-30\n\nhi', 'website', NULL, NULL, '2026-07-09 17:14:14', '2026-07-09 17:14:14'),
(7, 'INQ-2026-000007', 2, NULL, 's', 's@g.c', 's', 'Email', 'Basic Training', 'Morning', '2026-08-06', 's', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-08-06\n\ns', 'website', NULL, NULL, '2026-07-09 22:40:23', '2026-07-09 22:40:23'),
(8, 'INQ-2026-000008', 2, NULL, '710', '7@10.c0m', '369852', 'Email', 'Advanced Fire Fighting', 'Morning', '2026-07-31', 'How much?', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-31\n\nlo', 'website', NULL, NULL, '2026-07-10 08:21:47', '2026-07-10 08:21:47'),
(9, 'INQ-2026-000009', 2, NULL, 'h', 'h@g.com', '516', 'Email', 'Advanced Fire Fighting', 'Morning', '2026-07-28', 'availability', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-28\n\nfr', 'website', NULL, NULL, '2026-07-11 15:54:13', '2026-07-11 15:54:13'),
(10, 'INQ-2026-000010', 2, NULL, 'test', 'g@g.com', '7777', 'Phone Call', 'Basic Training', 'Morning', '2026-07-23', 'How much?', 'Preferred Contact: Phone Call\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-23\n\ntest', 'website', NULL, NULL, '2026-07-11 16:37:49', '2026-07-11 16:37:49'),
(11, 'INQ-2026-000011', 2, NULL, 'seven fifteen', '715@g.com', '99886633', 'Email', 'Advanced Fire Fighting', 'Morning', '2026-07-16', 'How much?', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-16\n\nhi', 'website', NULL, NULL, '2026-07-15 06:40:19', '2026-07-15 06:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_attachment`
--

CREATE TABLE `inquiry_attachment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inquiry_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_size` bigint(20) UNSIGNED DEFAULT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_reply`
--

CREATE TABLE `inquiry_reply` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inquiry_id` bigint(20) UNSIGNED NOT NULL,
  `sender_type` enum('applicant','staff','system') NOT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internal_note`
--

CREATE TABLE `internal_note` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `related_module` varchar(50) NOT NULL,
  `related_id` bigint(20) UNSIGNED NOT NULL,
  `note` text NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `actor_type` enum('user','applicant') NOT NULL,
  `actor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `login_status` enum('success','failed','locked') NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `failure_reason` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `medical_no` varchar(100) DEFAULT NULL,
  `clinic_name` varchar(200) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `fitness_status` enum('fit','unfit','pending','restricted') NOT NULL DEFAULT 'pending',
  `remarks` text DEFAULT NULL,
  `document_upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_requirement`
--

CREATE TABLE `medical_requirement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `requirement_name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_result`
--

CREATE TABLE `medical_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medical_record_id` bigint(20) UNSIGNED NOT NULL,
  `test_name` varchar(150) NOT NULL,
  `result_value` varchar(150) DEFAULT NULL,
  `result_status` enum('normal','abnormal','pending') DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mnt_account_status`
--

CREATE TABLE `mnt_account_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_account_status`
--

INSERT INTO `mnt_account_status` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ACTIVE', 'Active', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'PENDING', 'Pending', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'LOCKED', 'Locked', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'DISABLED', 'Disabled', NULL, 4, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_application_status`
--

CREATE TABLE `mnt_application_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_application_status`
--

INSERT INTO `mnt_application_status` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'DRAFT', 'Draft', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'SUBMITTED', 'Submitted', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'FOR_REVIEW', 'For Review', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'FOR_COMPLIANCE', 'For Compliance', NULL, 4, 1, '2026-07-08 07:22:14', NULL),
(5, 'APPROVED', 'Approved', NULL, 5, 1, '2026-07-08 07:22:14', NULL),
(6, 'REJECTED', 'Rejected', NULL, 6, 1, '2026-07-08 07:22:14', NULL),
(7, 'CANCELLED', 'Cancelled', NULL, 7, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_batch_status`
--

CREATE TABLE `mnt_batch_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_batch_status`
--

INSERT INTO `mnt_batch_status` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PLANNED', 'Planned', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'OPEN', 'Open for Enrollment', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'FULL', 'Full', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'ONGOING', 'Ongoing', NULL, 4, 1, '2026-07-08 07:22:14', NULL),
(5, 'COMPLETED', 'Completed', NULL, 5, 1, '2026-07-08 07:22:14', NULL),
(6, 'CANCELLED', 'Cancelled', NULL, 6, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_city`
--

CREATE TABLE `mnt_city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mnt_civil_status`
--

CREATE TABLE `mnt_civil_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_civil_status`
--

INSERT INTO `mnt_civil_status` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SINGLE', 'Single', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'MARRIED', 'Married', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'WIDOWED', 'Widowed', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'SEPARATED', 'Separated', NULL, 4, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_company`
--

CREATE TABLE `mnt_company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_type` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mnt_country`
--

CREATE TABLE `mnt_country` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_country`
--

INSERT INTO `mnt_country` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PH', 'Philippines', NULL, 1, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_course`
--

CREATE TABLE `mnt_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `program_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `stcw_reference` varchar(100) DEFAULT NULL,
  `marina_reference` varchar(100) DEFAULT NULL,
  `duration_hours` decimal(6,2) DEFAULT NULL,
  `validity_months` int(11) DEFAULT NULL,
  `requires_medical` tinyint(1) NOT NULL DEFAULT 0,
  `requires_sea_service` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mnt_course_category`
--

CREATE TABLE `mnt_course_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_course_category`
--

INSERT INTO `mnt_course_category` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'STCW', 'STCW Training', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'REFRESHER', 'Refresher Training', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'UPGRADING', 'Upgrading Training', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'COMPANY', 'Company Sponsored Training', NULL, 4, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_document_type`
--

CREATE TABLE `mnt_document_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_document_type`
--

INSERT INTO `mnt_document_type` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'VALID_ID', 'Valid ID', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'PASSPORT', 'Passport', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'SIRB', 'SIRB / Seafarer Book', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'CDC', 'Continuous Discharge Certificate', NULL, 4, 1, '2026-07-08 07:22:14', NULL),
(5, 'MEDICAL', 'Medical Certificate', NULL, 5, 1, '2026-07-08 07:22:14', NULL),
(6, 'PHOTO', 'Photo', NULL, 6, 1, '2026-07-08 07:22:14', NULL),
(7, 'CERTIFICATE', 'Previous Training Certificate', NULL, 7, 1, '2026-07-08 07:22:14', NULL),
(8, 'SEA_SERVICE', 'Sea Service Record', NULL, 8, 1, '2026-07-08 07:22:14', NULL),
(9, 'PAYMENT_PROOF', 'Payment Proof', NULL, 9, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_email_template`
--

CREATE TABLE `mnt_email_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body_html` longtext NOT NULL,
  `body_text` longtext DEFAULT NULL,
  `variables_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`variables_json`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mnt_gender`
--

CREATE TABLE `mnt_gender` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_gender`
--

INSERT INTO `mnt_gender` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'MALE', 'Male', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'FEMALE', 'Female', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'OTHER', 'Other', NULL, 3, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_inquiry_type`
--

CREATE TABLE `mnt_inquiry_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_inquiry_type`
--

INSERT INTO `mnt_inquiry_type` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'COURSE', 'Course Inquiry', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'ADMISSION', 'Admission Inquiry', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'PAYMENT', 'Payment Inquiry', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'GENERAL', 'General Inquiry', NULL, 4, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_nationality`
--

CREATE TABLE `mnt_nationality` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_nationality`
--

INSERT INTO `mnt_nationality` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'FILIPINO', 'Filipino', NULL, 1, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_notification_type`
--

CREATE TABLE `mnt_notification_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_notification_type`
--

INSERT INTO `mnt_notification_type` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SYSTEM', 'System', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'ADMISSION', 'Admission', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'ENROLLMENT', 'Enrollment', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'PAYMENT', 'Payment', NULL, 4, 1, '2026-07-08 07:22:14', NULL),
(5, 'TRAINING', 'Training', NULL, 5, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_payment_method`
--

CREATE TABLE `mnt_payment_method` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_payment_method`
--

INSERT INTO `mnt_payment_method` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'CASH', 'Cash', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'BANK_TRANSFER', 'Bank Transfer', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'GCASH', 'GCash', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'CARD', 'Card', NULL, 4, 1, '2026-07-08 07:22:14', NULL),
(5, 'CHECK', 'Check', NULL, 5, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_payment_status`
--

CREATE TABLE `mnt_payment_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_payment_status`
--

INSERT INTO `mnt_payment_status` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'UNPAID', 'Unpaid', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'PARTIAL', 'Partial', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'PAID', 'Paid', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'REFUNDED', 'Refunded', NULL, 4, 1, '2026-07-08 07:22:14', NULL),
(5, 'VOID', 'Void', NULL, 5, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_program`
--

CREATE TABLE `mnt_program` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_program`
--

INSERT INTO `mnt_program` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'MARITIME', 'Maritime Training Program', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'ASSESSMENT', 'Assessment Program', NULL, 2, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_province`
--

CREATE TABLE `mnt_province` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mnt_relationship`
--

CREATE TABLE `mnt_relationship` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_relationship`
--

INSERT INTO `mnt_relationship` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PARENT', 'Parent', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'SPOUSE', 'Spouse', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'SIBLING', 'Sibling', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'GUARDIAN', 'Guardian', NULL, 4, 1, '2026-07-08 07:22:14', NULL),
(5, 'OTHER', 'Other', NULL, 5, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_report_type`
--

CREATE TABLE `mnt_report_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_report_type`
--

INSERT INTO `mnt_report_type` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ADMISSION', 'Admission', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'ENROLLMENT', 'Enrollment', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'TRAINING', 'Training', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'PAYMENT', 'Payment', NULL, 4, 1, '2026-07-08 07:22:14', NULL),
(5, 'AUDIT', 'Audit', NULL, 5, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_role`
--

CREATE TABLE `mnt_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mnt_system_setting`
--

CREATE TABLE `mnt_system_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `data_type` enum('string','number','boolean','json','date') NOT NULL DEFAULT 'string',
  `description` text DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mnt_user_status`
--

CREATE TABLE `mnt_user_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_user_status`
--

INSERT INTO `mnt_user_status` (`id`, `code`, `name`, `description`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ACTIVE', 'Active', NULL, 1, 1, '2026-07-08 07:22:14', NULL),
(2, 'PENDING', 'Pending', NULL, 2, 1, '2026-07-08 07:22:14', NULL),
(3, 'LOCKED', 'Locked', NULL, 3, 1, '2026-07-08 07:22:14', NULL),
(4, 'DISABLED', 'Disabled', NULL, 4, 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `payload_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload_json`)),
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_recipient`
--

CREATE TABLE `notification_recipient` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_type` enum('applicant','user') NOT NULL,
  `recipient_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `official_receipt`
--

CREATE TABLE `official_receipt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_no` varchar(100) NOT NULL,
  `payment_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `issued_date` date NOT NULL,
  `issued_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('issued','void') NOT NULL DEFAULT 'issued',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_no` varchar(50) NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `balance_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `due_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_item`
--

CREATE TABLE `payment_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(12,2) NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_transaction`
--

CREATE TABLE `payment_transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_ref` varchar(150) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reference_number`
--

CREATE TABLE `reference_number` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(20) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `related_table` varchar(100) DEFAULT NULL,
  `related_id` bigint(20) UNSIGNED DEFAULT NULL,
  `generated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `refund_no` varchar(50) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `reason` text NOT NULL,
  `status` enum('pending','approved','rejected','released') NOT NULL DEFAULT 'pending',
  `requested_at` datetime NOT NULL DEFAULT current_timestamp(),
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `released_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_definition`
--

CREATE TABLE `report_definition` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `query_template` longtext DEFAULT NULL,
  `parameters_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`parameters_json`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_execution`
--

CREATE TABLE `report_execution` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_definition_id` bigint(20) UNSIGNED NOT NULL,
  `executed_by` bigint(20) UNSIGNED NOT NULL,
  `parameters_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`parameters_json`)),
  `status` enum('running','completed','failed') NOT NULL DEFAULT 'running',
  `output_file_path` varchar(500) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `started_at` datetime NOT NULL DEFAULT current_timestamp(),
  `completed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seafarer_credential`
--

CREATE TABLE `seafarer_credential` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `credential_type` enum('passport','sirb','cdc','coc','cop','medical','visa','other') NOT NULL,
  `credential_no` varchar(100) NOT NULL,
  `issuing_authority` varchar(150) DEFAULT NULL,
  `issued_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `document_upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sea_service_record`
--

CREATE TABLE `sea_service_record` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `vessel_name` varchar(150) NOT NULL,
  `vessel_type` varchar(100) DEFAULT NULL,
  `flag_state` varchar(100) DEFAULT NULL,
  `rank_position` varchar(100) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `sign_on_date` date DEFAULT NULL,
  `sign_off_date` date DEFAULT NULL,
  `months_service` decimal(6,2) DEFAULT NULL,
  `document_upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_generator`
--

CREATE TABLE `sequence_generator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sequence_code` varchar(20) NOT NULL,
  `sequence_year` year(4) NOT NULL,
  `current_value` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `prefix` varchar(20) NOT NULL,
  `padding_length` int(11) NOT NULL DEFAULT 6,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequence_generator`
--

INSERT INTO `sequence_generator` (`id`, `sequence_code`, `sequence_year`, `current_value`, `prefix`, `padding_length`, `updated_at`) VALUES
(1, 'INQ', '2026', 11, 'INQ', 6, '2026-07-15 06:40:19'),
(2, 'APP', '2026', 0, 'APP', 6, NULL),
(3, 'ENR', '2026', 0, 'ENR', 6, NULL),
(4, 'PAY', '2026', 0, 'PAY', 6, NULL),
(5, 'CRT', '2026', 0, 'CRT', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_assignment`
--

CREATE TABLE `ship_assignment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `vessel_name` varchar(150) DEFAULT NULL,
  `vessel_type` varchar(100) DEFAULT NULL,
  `rank_position` varchar(100) DEFAULT NULL,
  `assignment_status` enum('pending','assigned','onboard','completed','cancelled') NOT NULL DEFAULT 'pending',
  `embarkation_date` date DEFAULT NULL,
  `disembarkation_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_queue`
--

CREATE TABLE `sms_queue` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recipient_mobile` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` enum('pending','sent','failed') NOT NULL DEFAULT 'pending',
  `attempts` int(11) NOT NULL DEFAULT 0,
  `scheduled_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` enum('debug','info','warning','error','critical') NOT NULL,
  `source` varchar(150) DEFAULT NULL,
  `message` text NOT NULL,
  `context_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`context_json`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_permission`
--

CREATE TABLE `sys_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sys_permission`
--

INSERT INTO `sys_permission` (`id`, `code`, `module`, `action`, `description`, `created_at`) VALUES
(1, 'applicant.view', 'applicant', 'view', 'View applicant records', '2026-07-08 07:22:14'),
(2, 'applicant.manage', 'applicant', 'manage', 'Create and update applicant records', '2026-07-08 07:22:14'),
(3, 'inquiry.manage', 'inquiry', 'manage', 'Handle inquiries and replies', '2026-07-08 07:22:14'),
(4, 'application.review', 'application', 'review', 'Review and decide applications', '2026-07-08 07:22:14'),
(5, 'enrollment.manage', 'enrollment', 'manage', 'Manage enrollments', '2026-07-08 07:22:14'),
(6, 'training.manage', 'training', 'manage', 'Manage training batches and schedules', '2026-07-08 07:22:14'),
(7, 'payment.manage', 'payment', 'manage', 'Manage payments and receipts', '2026-07-08 07:22:14'),
(8, 'document.verify', 'document', 'verify', 'Verify uploaded documents', '2026-07-08 07:22:14'),
(9, 'report.view', 'report', 'view', 'View reports', '2026-07-08 07:22:14'),
(10, 'system.admin', 'system', 'admin', 'Manage system settings and users', '2026-07-08 07:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `sys_role`
--

CREATE TABLE `sys_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sys_role`
--

INSERT INTO `sys_role` (`id`, `code`, `name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'Administrator', 'Full system administration access', 1, '2026-07-08 07:22:14', NULL),
(2, 'ADMISSIONS', 'Admissions Officer', 'Handles inquiries and applications', 1, '2026-07-08 07:22:14', NULL),
(3, 'REGISTRAR', 'Registrar', 'Handles enrollment and training records', 1, '2026-07-08 07:22:14', NULL),
(4, 'ACCOUNTING', 'Accounting', 'Handles payments and receipts', 1, '2026-07-08 07:22:14', NULL),
(5, 'INSTRUCTOR', 'Instructor', 'Handles schedules, attendance, and assessment', 1, '2026-07-08 07:22:14', NULL),
(6, 'HR', 'HR', 'Handles staff-related records', 1, '2026-07-08 07:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_role_permission`
--

CREATE TABLE `sys_role_permission` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sys_role_permission`
--

INSERT INTO `sys_role_permission` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sys_user`
--

CREATE TABLE `sys_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `failed_login_count` int(11) NOT NULL DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_user_activity`
--

CREATE TABLE `sys_user_activity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `metadata_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata_json`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `training_no` varchar(50) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `batch_name` varchar(150) NOT NULL,
  `batch_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `max_slots` int(11) NOT NULL DEFAULT 0,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `venue` varchar(200) DEFAULT NULL,
  `lead_instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_attendance`
--

CREATE TABLE `training_attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `training_schedule_id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_status` enum('present','late','absent','excused') NOT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `encoded_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_completion`
--

CREATE TABLE `training_completion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `completion_status` enum('completed','failed','incomplete','withdrawn') NOT NULL,
  `completion_date` date DEFAULT NULL,
  `final_rating` decimal(5,2) DEFAULT NULL,
  `assessed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_schedule`
--

CREATE TABLE `training_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `training_id` bigint(20) UNSIGNED NOT NULL,
  `session_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `facility` varchar(150) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicant_no` (`applicant_no`),
  ADD KEY `fk_applicant_gender` (`gender_id`),
  ADD KEY `fk_applicant_nationality` (`nationality_id`),
  ADD KEY `fk_applicant_civil_status` (`civil_status_id`),
  ADD KEY `fk_applicant_status` (`status_id`),
  ADD KEY `idx_applicant_name` (`last_name`,`first_name`),
  ADD KEY `idx_applicant_email` (`email`);

--
-- Indexes for table `applicant_account`
--
ALTER TABLE `applicant_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicant_id` (`applicant_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_applicant_account_status` (`status_id`);

--
-- Indexes for table `applicant_activity_log`
--
ALTER TABLE `applicant_activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_applicant_activity_applicant` (`applicant_id`),
  ADD KEY `idx_applicant_activity_created` (`created_at`);

--
-- Indexes for table `applicant_notification`
--
ALTER TABLE `applicant_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_applicant_notification_applicant` (`applicant_id`),
  ADD KEY `fk_applicant_notification_type` (`notification_type_id`);

--
-- Indexes for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicant_id` (`applicant_id`),
  ADD KEY `fk_applicant_profile_city` (`city_id`),
  ADD KEY `fk_applicant_profile_province` (`province_id`),
  ADD KEY `fk_applicant_profile_country` (`country_id`),
  ADD KEY `fk_applicant_profile_relationship` (`relationship_id`);

--
-- Indexes for table `applicant_session`
--
ALTER TABLE `applicant_session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_token_hash` (`session_token_hash`),
  ADD KEY `fk_applicant_session_account` (`applicant_account_id`),
  ADD KEY `idx_applicant_session_expiry` (`expires_at`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_no` (`application_no`),
  ADD KEY `fk_application_applicant` (`applicant_id`),
  ADD KEY `fk_application_status` (`status_id`);

--
-- Indexes for table `application_course`
--
ALTER TABLE `application_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_application_course_application` (`application_id`),
  ADD KEY `fk_application_course_course` (`course_id`);

--
-- Indexes for table `application_requirement`
--
ALTER TABLE `application_requirement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_application_requirement_application` (`application_id`),
  ADD KEY `fk_application_requirement_document_type` (`document_type_id`),
  ADD KEY `fk_application_requirement_verified_by` (`verified_by`),
  ADD KEY `fk_application_requirement_document_upload` (`document_upload_id`);

--
-- Indexes for table `application_review`
--
ALTER TABLE `application_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_application_review_application` (`application_id`),
  ADD KEY `fk_application_review_user` (`reviewer_id`);

--
-- Indexes for table `application_status_history`
--
ALTER TABLE `application_status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_application_status_history_application` (`application_id`),
  ADD KEY `fk_application_status_history_old` (`old_status_id`),
  ADD KEY `fk_application_status_history_new` (`new_status_id`),
  ADD KEY `fk_application_status_history_user` (`changed_by`);

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_audit_log_record` (`table_name`,`record_id`),
  ADD KEY `idx_audit_log_actor` (`actor_type`,`actor_id`),
  ADD KEY `idx_audit_log_created` (`created_at`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_no` (`certificate_no`),
  ADD KEY `fk_certificate_enrollment` (`enrollment_id`),
  ADD KEY `fk_certificate_course` (`course_id`),
  ADD KEY `fk_certificate_applicant` (`applicant_id`),
  ADD KEY `fk_certificate_user` (`issued_by`),
  ADD KEY `idx_certificate_expiry` (`expiry_date`);

--
-- Indexes for table `communication_log`
--
ALTER TABLE `communication_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_communication_applicant` (`applicant_id`),
  ADD KEY `fk_communication_inquiry` (`inquiry_id`),
  ADD KEY `fk_communication_user` (`handled_by`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_no` (`company_no`);

--
-- Indexes for table `company_contact`
--
ALTER TABLE `company_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_company_contact_company` (`company_id`);

--
-- Indexes for table `course_prerequisite`
--
ALTER TABLE `course_prerequisite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_course_prerequisite_course` (`course_id`),
  ADD KEY `fk_course_prerequisite_prereq_course` (`prerequisite_course_id`),
  ADD KEY `fk_course_prerequisite_document_type` (`required_document_type_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_document_type` (`document_type_id`),
  ADD KEY `idx_document_owner` (`owner_type`,`owner_id`);

--
-- Indexes for table `document_upload`
--
ALTER TABLE `document_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_document_upload_document` (`document_id`),
  ADD KEY `fk_document_upload_user` (`uploaded_by`);

--
-- Indexes for table `document_verification`
--
ALTER TABLE `document_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_document_verification_document` (`document_id`),
  ADD KEY `fk_document_verification_user` (`verified_by`);

--
-- Indexes for table `document_version`
--
ALTER TABLE `document_version`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_document_version` (`document_id`,`version_no`),
  ADD KEY `fk_document_version_upload` (`document_upload_id`);

--
-- Indexes for table `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_queue_status` (`status`,`scheduled_at`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enrollment_no` (`enrollment_no`),
  ADD KEY `fk_enrollment_application` (`application_id`),
  ADD KEY `fk_enrollment_applicant` (`applicant_id`),
  ADD KEY `fk_enrollment_course` (`course_id`),
  ADD KEY `fk_enrollment_training` (`training_id`);

--
-- Indexes for table `enrollment_history`
--
ALTER TABLE `enrollment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_enrollment_history_enrollment` (`enrollment_id`),
  ADD KEY `fk_enrollment_history_user` (`changed_by`);

--
-- Indexes for table `enrollment_schedule`
--
ALTER TABLE `enrollment_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_enrollment_schedule_enrollment` (`enrollment_id`),
  ADD KEY `fk_enrollment_schedule_instructor` (`instructor_id`);

--
-- Indexes for table `enrollment_subject`
--
ALTER TABLE `enrollment_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_enrollment_subject_enrollment` (`enrollment_id`),
  ADD KEY `fk_enrollment_subject_instructor` (`instructor_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inquiry_no` (`inquiry_no`),
  ADD KEY `fk_inquiry_type` (`inquiry_type_id`),
  ADD KEY `fk_inquiry_applicant` (`applicant_id`),
  ADD KEY `fk_inquiry_assigned_to` (`assigned_to`),
  ADD KEY `idx_inquiry_created` (`created_at`),
  ADD KEY `idx_inquiry_course_interest` (`course_interest`),
  ADD KEY `idx_inquiry_preferred_date` (`preferred_date`);

--
-- Indexes for table `inquiry_attachment`
--
ALTER TABLE `inquiry_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inquiry_attachment_inquiry` (`inquiry_id`);

--
-- Indexes for table `inquiry_reply`
--
ALTER TABLE `inquiry_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inquiry_reply_inquiry` (`inquiry_id`);

--
-- Indexes for table `internal_note`
--
ALTER TABLE `internal_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_internal_note_user` (`created_by`),
  ADD KEY `idx_internal_note_related` (`related_module`,`related_id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_login_history_actor` (`actor_type`,`actor_id`),
  ADD KEY `idx_login_history_created` (`created_at`);

--
-- Indexes for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_medical_record_applicant` (`applicant_id`),
  ADD KEY `fk_medical_record_upload` (`document_upload_id`),
  ADD KEY `idx_medical_record_expiry` (`expiry_date`);

--
-- Indexes for table `medical_requirement`
--
ALTER TABLE `medical_requirement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_medical_requirement_course` (`course_id`);

--
-- Indexes for table `medical_result`
--
ALTER TABLE `medical_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_medical_result_record` (`medical_record_id`);

--
-- Indexes for table `mnt_account_status`
--
ALTER TABLE `mnt_account_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_application_status`
--
ALTER TABLE `mnt_application_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_batch_status`
--
ALTER TABLE `mnt_batch_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_city`
--
ALTER TABLE `mnt_city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_mnt_city_province_code` (`province_id`,`code`);

--
-- Indexes for table `mnt_civil_status`
--
ALTER TABLE `mnt_civil_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_company`
--
ALTER TABLE `mnt_company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_country`
--
ALTER TABLE `mnt_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_course`
--
ALTER TABLE `mnt_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_mnt_course_category` (`course_category_id`),
  ADD KEY `fk_mnt_course_program` (`program_id`);

--
-- Indexes for table `mnt_course_category`
--
ALTER TABLE `mnt_course_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_document_type`
--
ALTER TABLE `mnt_document_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_email_template`
--
ALTER TABLE `mnt_email_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_gender`
--
ALTER TABLE `mnt_gender`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_inquiry_type`
--
ALTER TABLE `mnt_inquiry_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_nationality`
--
ALTER TABLE `mnt_nationality`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_notification_type`
--
ALTER TABLE `mnt_notification_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_payment_method`
--
ALTER TABLE `mnt_payment_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_payment_status`
--
ALTER TABLE `mnt_payment_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_program`
--
ALTER TABLE `mnt_program`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_province`
--
ALTER TABLE `mnt_province`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_mnt_province_country_code` (`country_id`,`code`);

--
-- Indexes for table `mnt_relationship`
--
ALTER TABLE `mnt_relationship`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_report_type`
--
ALTER TABLE `mnt_report_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_role`
--
ALTER TABLE `mnt_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mnt_system_setting`
--
ALTER TABLE `mnt_system_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `mnt_user_status`
--
ALTER TABLE `mnt_user_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notification_type` (`notification_type_id`),
  ADD KEY `fk_notification_user` (`created_by`);

--
-- Indexes for table `notification_recipient`
--
ALTER TABLE `notification_recipient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notification_recipient_notification` (`notification_id`),
  ADD KEY `idx_notification_recipient` (`recipient_type`,`recipient_id`);

--
-- Indexes for table `official_receipt`
--
ALTER TABLE `official_receipt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `receipt_no` (`receipt_no`),
  ADD KEY `fk_official_receipt_transaction` (`payment_transaction_id`),
  ADD KEY `fk_official_receipt_user` (`issued_by`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_no` (`payment_no`),
  ADD KEY `fk_payment_applicant` (`applicant_id`),
  ADD KEY `fk_payment_enrollment` (`enrollment_id`),
  ADD KEY `fk_payment_status` (`payment_status_id`);

--
-- Indexes for table `payment_item`
--
ALTER TABLE `payment_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_item_payment` (`payment_id`);

--
-- Indexes for table `payment_transaction`
--
ALTER TABLE `payment_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payment_transaction_payment` (`payment_id`),
  ADD KEY `fk_payment_transaction_method` (`payment_method_id`),
  ADD KEY `fk_payment_transaction_user` (`received_by`);

--
-- Indexes for table `reference_number`
--
ALTER TABLE `reference_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference_no` (`reference_no`),
  ADD KEY `idx_reference_related` (`related_table`,`related_id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `refund_no` (`refund_no`),
  ADD KEY `fk_refund_payment` (`payment_id`),
  ADD KEY `fk_refund_user` (`approved_by`);

--
-- Indexes for table `report_definition`
--
ALTER TABLE `report_definition`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_report_definition_type` (`report_type_id`);

--
-- Indexes for table `report_execution`
--
ALTER TABLE `report_execution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_report_execution_definition` (`report_definition_id`),
  ADD KEY `fk_report_execution_user` (`executed_by`);

--
-- Indexes for table `seafarer_credential`
--
ALTER TABLE `seafarer_credential`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seafarer_credential_applicant` (`applicant_id`),
  ADD KEY `fk_seafarer_credential_upload` (`document_upload_id`),
  ADD KEY `idx_seafarer_credential_expiry` (`expiry_date`);

--
-- Indexes for table `sea_service_record`
--
ALTER TABLE `sea_service_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sea_service_applicant` (`applicant_id`),
  ADD KEY `fk_sea_service_upload` (`document_upload_id`);

--
-- Indexes for table `sequence_generator`
--
ALTER TABLE `sequence_generator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_sequence_year` (`sequence_code`,`sequence_year`);

--
-- Indexes for table `ship_assignment`
--
ALTER TABLE `ship_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ship_assignment_applicant` (`applicant_id`),
  ADD KEY `fk_ship_assignment_company` (`company_id`);

--
-- Indexes for table `sms_queue`
--
ALTER TABLE `sms_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sms_queue_status` (`status`,`scheduled_at`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_system_log_level_created` (`level`,`created_at`);

--
-- Indexes for table `sys_permission`
--
ALTER TABLE `sys_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `sys_role`
--
ALTER TABLE `sys_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `sys_role_permission`
--
ALTER TABLE `sys_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `fk_sys_role_permission_permission` (`permission_id`);

--
-- Indexes for table `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_sys_user_role` (`role_id`),
  ADD KEY `fk_sys_user_status` (`status_id`);

--
-- Indexes for table `sys_user_activity`
--
ALTER TABLE `sys_user_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sys_user_activity_user` (`user_id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `training_no` (`training_no`),
  ADD KEY `fk_training_course` (`course_id`),
  ADD KEY `fk_training_batch_status` (`batch_status_id`),
  ADD KEY `fk_training_instructor` (`lead_instructor_id`);

--
-- Indexes for table `training_attendance`
--
ALTER TABLE `training_attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_training_attendance` (`training_schedule_id`,`enrollment_id`),
  ADD KEY `fk_training_attendance_enrollment` (`enrollment_id`),
  ADD KEY `fk_training_attendance_user` (`encoded_by`);

--
-- Indexes for table `training_completion`
--
ALTER TABLE `training_completion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enrollment_id` (`enrollment_id`),
  ADD KEY `fk_training_completion_user` (`assessed_by`);

--
-- Indexes for table `training_schedule`
--
ALTER TABLE `training_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_training_schedule_training` (`training_id`),
  ADD KEY `fk_training_schedule_instructor` (`instructor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant_account`
--
ALTER TABLE `applicant_account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant_activity_log`
--
ALTER TABLE `applicant_activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant_notification`
--
ALTER TABLE `applicant_notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant_session`
--
ALTER TABLE `applicant_session`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_course`
--
ALTER TABLE `application_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_requirement`
--
ALTER TABLE `application_requirement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_review`
--
ALTER TABLE `application_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_status_history`
--
ALTER TABLE `application_status_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communication_log`
--
ALTER TABLE `communication_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_contact`
--
ALTER TABLE `company_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_prerequisite`
--
ALTER TABLE `course_prerequisite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_upload`
--
ALTER TABLE `document_upload`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_verification`
--
ALTER TABLE `document_verification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_version`
--
ALTER TABLE `document_version`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollment_history`
--
ALTER TABLE `enrollment_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollment_schedule`
--
ALTER TABLE `enrollment_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollment_subject`
--
ALTER TABLE `enrollment_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inquiry_attachment`
--
ALTER TABLE `inquiry_attachment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiry_reply`
--
ALTER TABLE `inquiry_reply`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `internal_note`
--
ALTER TABLE `internal_note`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_record`
--
ALTER TABLE `medical_record`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_requirement`
--
ALTER TABLE `medical_requirement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_result`
--
ALTER TABLE `medical_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnt_account_status`
--
ALTER TABLE `mnt_account_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mnt_application_status`
--
ALTER TABLE `mnt_application_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mnt_batch_status`
--
ALTER TABLE `mnt_batch_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mnt_city`
--
ALTER TABLE `mnt_city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnt_civil_status`
--
ALTER TABLE `mnt_civil_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mnt_company`
--
ALTER TABLE `mnt_company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnt_country`
--
ALTER TABLE `mnt_country`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mnt_course`
--
ALTER TABLE `mnt_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnt_course_category`
--
ALTER TABLE `mnt_course_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mnt_document_type`
--
ALTER TABLE `mnt_document_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mnt_email_template`
--
ALTER TABLE `mnt_email_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnt_gender`
--
ALTER TABLE `mnt_gender`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mnt_inquiry_type`
--
ALTER TABLE `mnt_inquiry_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mnt_nationality`
--
ALTER TABLE `mnt_nationality`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mnt_notification_type`
--
ALTER TABLE `mnt_notification_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mnt_payment_method`
--
ALTER TABLE `mnt_payment_method`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mnt_payment_status`
--
ALTER TABLE `mnt_payment_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mnt_program`
--
ALTER TABLE `mnt_program`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mnt_province`
--
ALTER TABLE `mnt_province`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnt_relationship`
--
ALTER TABLE `mnt_relationship`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mnt_report_type`
--
ALTER TABLE `mnt_report_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mnt_role`
--
ALTER TABLE `mnt_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnt_system_setting`
--
ALTER TABLE `mnt_system_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mnt_user_status`
--
ALTER TABLE `mnt_user_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_recipient`
--
ALTER TABLE `notification_recipient`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `official_receipt`
--
ALTER TABLE `official_receipt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_item`
--
ALTER TABLE `payment_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_transaction`
--
ALTER TABLE `payment_transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reference_number`
--
ALTER TABLE `reference_number`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_definition`
--
ALTER TABLE `report_definition`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_execution`
--
ALTER TABLE `report_execution`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seafarer_credential`
--
ALTER TABLE `seafarer_credential`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sea_service_record`
--
ALTER TABLE `sea_service_record`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_generator`
--
ALTER TABLE `sequence_generator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ship_assignment`
--
ALTER TABLE `ship_assignment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_queue`
--
ALTER TABLE `sms_queue`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_permission`
--
ALTER TABLE `sys_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sys_role`
--
ALTER TABLE `sys_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_user_activity`
--
ALTER TABLE `sys_user_activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_attendance`
--
ALTER TABLE `training_attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_completion`
--
ALTER TABLE `training_completion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_schedule`
--
ALTER TABLE `training_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant`
--
ALTER TABLE `applicant`
  ADD CONSTRAINT `fk_applicant_civil_status` FOREIGN KEY (`civil_status_id`) REFERENCES `mnt_civil_status` (`id`),
  ADD CONSTRAINT `fk_applicant_gender` FOREIGN KEY (`gender_id`) REFERENCES `mnt_gender` (`id`),
  ADD CONSTRAINT `fk_applicant_nationality` FOREIGN KEY (`nationality_id`) REFERENCES `mnt_nationality` (`id`),
  ADD CONSTRAINT `fk_applicant_status` FOREIGN KEY (`status_id`) REFERENCES `mnt_account_status` (`id`);

--
-- Constraints for table `applicant_account`
--
ALTER TABLE `applicant_account`
  ADD CONSTRAINT `fk_applicant_account_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_applicant_account_status` FOREIGN KEY (`status_id`) REFERENCES `mnt_account_status` (`id`);

--
-- Constraints for table `applicant_activity_log`
--
ALTER TABLE `applicant_activity_log`
  ADD CONSTRAINT `fk_applicant_activity_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`);

--
-- Constraints for table `applicant_notification`
--
ALTER TABLE `applicant_notification`
  ADD CONSTRAINT `fk_applicant_notification_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_applicant_notification_type` FOREIGN KEY (`notification_type_id`) REFERENCES `mnt_notification_type` (`id`);

--
-- Constraints for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  ADD CONSTRAINT `fk_applicant_profile_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_applicant_profile_city` FOREIGN KEY (`city_id`) REFERENCES `mnt_city` (`id`),
  ADD CONSTRAINT `fk_applicant_profile_country` FOREIGN KEY (`country_id`) REFERENCES `mnt_country` (`id`),
  ADD CONSTRAINT `fk_applicant_profile_province` FOREIGN KEY (`province_id`) REFERENCES `mnt_province` (`id`),
  ADD CONSTRAINT `fk_applicant_profile_relationship` FOREIGN KEY (`relationship_id`) REFERENCES `mnt_relationship` (`id`);

--
-- Constraints for table `applicant_session`
--
ALTER TABLE `applicant_session`
  ADD CONSTRAINT `fk_applicant_session_account` FOREIGN KEY (`applicant_account_id`) REFERENCES `applicant_account` (`id`);

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `fk_application_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_application_status` FOREIGN KEY (`status_id`) REFERENCES `mnt_application_status` (`id`);

--
-- Constraints for table `application_course`
--
ALTER TABLE `application_course`
  ADD CONSTRAINT `fk_application_course_application` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `fk_application_course_course` FOREIGN KEY (`course_id`) REFERENCES `mnt_course` (`id`);

--
-- Constraints for table `application_requirement`
--
ALTER TABLE `application_requirement`
  ADD CONSTRAINT `fk_application_requirement_application` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `fk_application_requirement_document_type` FOREIGN KEY (`document_type_id`) REFERENCES `mnt_document_type` (`id`),
  ADD CONSTRAINT `fk_application_requirement_document_upload` FOREIGN KEY (`document_upload_id`) REFERENCES `document_upload` (`id`),
  ADD CONSTRAINT `fk_application_requirement_verified_by` FOREIGN KEY (`verified_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `application_review`
--
ALTER TABLE `application_review`
  ADD CONSTRAINT `fk_application_review_application` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `fk_application_review_user` FOREIGN KEY (`reviewer_id`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `application_status_history`
--
ALTER TABLE `application_status_history`
  ADD CONSTRAINT `fk_application_status_history_application` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `fk_application_status_history_new` FOREIGN KEY (`new_status_id`) REFERENCES `mnt_application_status` (`id`),
  ADD CONSTRAINT `fk_application_status_history_old` FOREIGN KEY (`old_status_id`) REFERENCES `mnt_application_status` (`id`),
  ADD CONSTRAINT `fk_application_status_history_user` FOREIGN KEY (`changed_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `fk_certificate_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_certificate_course` FOREIGN KEY (`course_id`) REFERENCES `mnt_course` (`id`),
  ADD CONSTRAINT `fk_certificate_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  ADD CONSTRAINT `fk_certificate_user` FOREIGN KEY (`issued_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `communication_log`
--
ALTER TABLE `communication_log`
  ADD CONSTRAINT `fk_communication_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_communication_inquiry` FOREIGN KEY (`inquiry_id`) REFERENCES `inquiry` (`id`),
  ADD CONSTRAINT `fk_communication_user` FOREIGN KEY (`handled_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `company_contact`
--
ALTER TABLE `company_contact`
  ADD CONSTRAINT `fk_company_contact_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Constraints for table `course_prerequisite`
--
ALTER TABLE `course_prerequisite`
  ADD CONSTRAINT `fk_course_prerequisite_course` FOREIGN KEY (`course_id`) REFERENCES `mnt_course` (`id`),
  ADD CONSTRAINT `fk_course_prerequisite_document_type` FOREIGN KEY (`required_document_type_id`) REFERENCES `mnt_document_type` (`id`),
  ADD CONSTRAINT `fk_course_prerequisite_prereq_course` FOREIGN KEY (`prerequisite_course_id`) REFERENCES `mnt_course` (`id`);

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `fk_document_type` FOREIGN KEY (`document_type_id`) REFERENCES `mnt_document_type` (`id`);

--
-- Constraints for table `document_upload`
--
ALTER TABLE `document_upload`
  ADD CONSTRAINT `fk_document_upload_document` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`),
  ADD CONSTRAINT `fk_document_upload_user` FOREIGN KEY (`uploaded_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `document_verification`
--
ALTER TABLE `document_verification`
  ADD CONSTRAINT `fk_document_verification_document` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`),
  ADD CONSTRAINT `fk_document_verification_user` FOREIGN KEY (`verified_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `document_version`
--
ALTER TABLE `document_version`
  ADD CONSTRAINT `fk_document_version_document` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`),
  ADD CONSTRAINT `fk_document_version_upload` FOREIGN KEY (`document_upload_id`) REFERENCES `document_upload` (`id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `fk_enrollment_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_enrollment_application` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  ADD CONSTRAINT `fk_enrollment_course` FOREIGN KEY (`course_id`) REFERENCES `mnt_course` (`id`),
  ADD CONSTRAINT `fk_enrollment_training` FOREIGN KEY (`training_id`) REFERENCES `training` (`id`);

--
-- Constraints for table `enrollment_history`
--
ALTER TABLE `enrollment_history`
  ADD CONSTRAINT `fk_enrollment_history_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  ADD CONSTRAINT `fk_enrollment_history_user` FOREIGN KEY (`changed_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `enrollment_schedule`
--
ALTER TABLE `enrollment_schedule`
  ADD CONSTRAINT `fk_enrollment_schedule_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  ADD CONSTRAINT `fk_enrollment_schedule_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `enrollment_subject`
--
ALTER TABLE `enrollment_subject`
  ADD CONSTRAINT `fk_enrollment_subject_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  ADD CONSTRAINT `fk_enrollment_subject_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `fk_inquiry_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_inquiry_assigned_to` FOREIGN KEY (`assigned_to`) REFERENCES `sys_user` (`id`),
  ADD CONSTRAINT `fk_inquiry_type` FOREIGN KEY (`inquiry_type_id`) REFERENCES `mnt_inquiry_type` (`id`);

--
-- Constraints for table `inquiry_attachment`
--
ALTER TABLE `inquiry_attachment`
  ADD CONSTRAINT `fk_inquiry_attachment_inquiry` FOREIGN KEY (`inquiry_id`) REFERENCES `inquiry` (`id`);

--
-- Constraints for table `inquiry_reply`
--
ALTER TABLE `inquiry_reply`
  ADD CONSTRAINT `fk_inquiry_reply_inquiry` FOREIGN KEY (`inquiry_id`) REFERENCES `inquiry` (`id`);

--
-- Constraints for table `internal_note`
--
ALTER TABLE `internal_note`
  ADD CONSTRAINT `fk_internal_note_user` FOREIGN KEY (`created_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD CONSTRAINT `fk_medical_record_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_medical_record_upload` FOREIGN KEY (`document_upload_id`) REFERENCES `document_upload` (`id`);

--
-- Constraints for table `medical_requirement`
--
ALTER TABLE `medical_requirement`
  ADD CONSTRAINT `fk_medical_requirement_course` FOREIGN KEY (`course_id`) REFERENCES `mnt_course` (`id`);

--
-- Constraints for table `medical_result`
--
ALTER TABLE `medical_result`
  ADD CONSTRAINT `fk_medical_result_record` FOREIGN KEY (`medical_record_id`) REFERENCES `medical_record` (`id`);

--
-- Constraints for table `mnt_city`
--
ALTER TABLE `mnt_city`
  ADD CONSTRAINT `fk_mnt_city_province` FOREIGN KEY (`province_id`) REFERENCES `mnt_province` (`id`);

--
-- Constraints for table `mnt_course`
--
ALTER TABLE `mnt_course`
  ADD CONSTRAINT `fk_mnt_course_category` FOREIGN KEY (`course_category_id`) REFERENCES `mnt_course_category` (`id`),
  ADD CONSTRAINT `fk_mnt_course_program` FOREIGN KEY (`program_id`) REFERENCES `mnt_program` (`id`);

--
-- Constraints for table `mnt_province`
--
ALTER TABLE `mnt_province`
  ADD CONSTRAINT `fk_mnt_province_country` FOREIGN KEY (`country_id`) REFERENCES `mnt_country` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `fk_notification_type` FOREIGN KEY (`notification_type_id`) REFERENCES `mnt_notification_type` (`id`),
  ADD CONSTRAINT `fk_notification_user` FOREIGN KEY (`created_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `notification_recipient`
--
ALTER TABLE `notification_recipient`
  ADD CONSTRAINT `fk_notification_recipient_notification` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`);

--
-- Constraints for table `official_receipt`
--
ALTER TABLE `official_receipt`
  ADD CONSTRAINT `fk_official_receipt_transaction` FOREIGN KEY (`payment_transaction_id`) REFERENCES `payment_transaction` (`id`),
  ADD CONSTRAINT `fk_official_receipt_user` FOREIGN KEY (`issued_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_payment_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  ADD CONSTRAINT `fk_payment_status` FOREIGN KEY (`payment_status_id`) REFERENCES `mnt_payment_status` (`id`);

--
-- Constraints for table `payment_item`
--
ALTER TABLE `payment_item`
  ADD CONSTRAINT `fk_payment_item_payment` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`);

--
-- Constraints for table `payment_transaction`
--
ALTER TABLE `payment_transaction`
  ADD CONSTRAINT `fk_payment_transaction_method` FOREIGN KEY (`payment_method_id`) REFERENCES `mnt_payment_method` (`id`),
  ADD CONSTRAINT `fk_payment_transaction_payment` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `fk_payment_transaction_user` FOREIGN KEY (`received_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `fk_refund_payment` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `fk_refund_user` FOREIGN KEY (`approved_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `report_definition`
--
ALTER TABLE `report_definition`
  ADD CONSTRAINT `fk_report_definition_type` FOREIGN KEY (`report_type_id`) REFERENCES `mnt_report_type` (`id`);

--
-- Constraints for table `report_execution`
--
ALTER TABLE `report_execution`
  ADD CONSTRAINT `fk_report_execution_definition` FOREIGN KEY (`report_definition_id`) REFERENCES `report_definition` (`id`),
  ADD CONSTRAINT `fk_report_execution_user` FOREIGN KEY (`executed_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `seafarer_credential`
--
ALTER TABLE `seafarer_credential`
  ADD CONSTRAINT `fk_seafarer_credential_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_seafarer_credential_upload` FOREIGN KEY (`document_upload_id`) REFERENCES `document_upload` (`id`);

--
-- Constraints for table `sea_service_record`
--
ALTER TABLE `sea_service_record`
  ADD CONSTRAINT `fk_sea_service_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_sea_service_upload` FOREIGN KEY (`document_upload_id`) REFERENCES `document_upload` (`id`);

--
-- Constraints for table `ship_assignment`
--
ALTER TABLE `ship_assignment`
  ADD CONSTRAINT `fk_ship_assignment_applicant` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `fk_ship_assignment_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Constraints for table `sys_role_permission`
--
ALTER TABLE `sys_role_permission`
  ADD CONSTRAINT `fk_sys_role_permission_permission` FOREIGN KEY (`permission_id`) REFERENCES `sys_permission` (`id`),
  ADD CONSTRAINT `fk_sys_role_permission_role` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`);

--
-- Constraints for table `sys_user`
--
ALTER TABLE `sys_user`
  ADD CONSTRAINT `fk_sys_user_role` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  ADD CONSTRAINT `fk_sys_user_status` FOREIGN KEY (`status_id`) REFERENCES `mnt_user_status` (`id`);

--
-- Constraints for table `sys_user_activity`
--
ALTER TABLE `sys_user_activity`
  ADD CONSTRAINT `fk_sys_user_activity_user` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `fk_training_batch_status` FOREIGN KEY (`batch_status_id`) REFERENCES `mnt_batch_status` (`id`),
  ADD CONSTRAINT `fk_training_course` FOREIGN KEY (`course_id`) REFERENCES `mnt_course` (`id`),
  ADD CONSTRAINT `fk_training_instructor` FOREIGN KEY (`lead_instructor_id`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `training_attendance`
--
ALTER TABLE `training_attendance`
  ADD CONSTRAINT `fk_training_attendance_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  ADD CONSTRAINT `fk_training_attendance_schedule` FOREIGN KEY (`training_schedule_id`) REFERENCES `training_schedule` (`id`),
  ADD CONSTRAINT `fk_training_attendance_user` FOREIGN KEY (`encoded_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `training_completion`
--
ALTER TABLE `training_completion`
  ADD CONSTRAINT `fk_training_completion_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  ADD CONSTRAINT `fk_training_completion_user` FOREIGN KEY (`assessed_by`) REFERENCES `sys_user` (`id`);

--
-- Constraints for table `training_schedule`
--
ALTER TABLE `training_schedule`
  ADD CONSTRAINT `fk_training_schedule_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `sys_user` (`id`),
  ADD CONSTRAINT `fk_training_schedule_training` FOREIGN KEY (`training_id`) REFERENCES `training` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
