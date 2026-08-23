-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2026 at 07:00 AM
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

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `applicant_no`, `first_name`, `middle_name`, `last_name`, `suffix`, `birth_date`, `gender_id`, `nationality_id`, `civil_status_id`, `mobile_no`, `email`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'APP-2026-000001', 'Jane', NULL, 'Doe', NULL, NULL, 2, 1, 1, NULL, 'nieljaplos0924@gmail.com', NULL, '2026-08-04 19:53:03', '2026-08-16 23:50:08'),
(2, 'APP-2026-000002', 'Niel', NULL, 'J', NULL, NULL, NULL, NULL, NULL, NULL, 'nielrjaplos@gmail.com', NULL, '2026-08-05 18:28:21', NULL),
(3, 'APP-2026-000003', 'John', NULL, 'Doe', NULL, NULL, NULL, NULL, NULL, NULL, 'jd@gmail.com', NULL, '2026-08-05 20:36:41', NULL),
(4, 'APP-2026-000004', 'JJ', NULL, 'Japs', NULL, NULL, NULL, NULL, NULL, NULL, 'nieljaplos0924@gmail.com', NULL, '2026-08-05 21:50:41', NULL),
(5, 'APP-2026-000005', 'Jessica', NULL, 'Simpson', NULL, '1986-02-05', 2, 1, 1, '09178059911', 'jsimpson@g.com', 1, '2026-08-15 00:11:52', NULL),
(6, 'APP-2026-000006', 'Jane', NULL, 'Doe', NULL, NULL, NULL, NULL, NULL, NULL, 'nieljaplos0924@gmail.com', NULL, '2026-08-15 00:23:16', NULL),
(7, 'APP-2026-000007', 'Juan', NULL, 'Dela Cruz', NULL, NULL, NULL, NULL, NULL, NULL, 'n@g.com', NULL, '2026-08-15 18:37:06', NULL),
(8, 'APP-2026-000008', 'Jessica', NULL, 'Lacsamana', NULL, '2000-02-05', NULL, 1, 1, '09178059911', 'jlacsamana@g.com', 1, '2026-08-16 16:30:30', NULL),
(9, 'APP-2026-000009', 'Jenny', NULL, 'Simpon', NULL, NULL, NULL, NULL, NULL, '09178059911', 'manilahousesoundtech@gmail.com', 1, '2026-08-16 19:03:56', NULL),
(13, 'APP-2026-000010', 'Jessica', NULL, 'Last', NULL, NULL, NULL, NULL, NULL, NULL, 'manilahouse1111@gmail.com', 1, '2026-08-16 23:57:24', NULL),
(14, 'APP-2026-000011', 'Celia', NULL, 'Dela Cruz', NULL, NULL, NULL, NULL, NULL, NULL, 'cdc@g.com', 1, '2026-08-17 00:24:09', '2026-08-17 13:30:59'),
(18, 'APP-2026-000012', 'Jacob', NULL, 'Sotto', NULL, NULL, NULL, NULL, NULL, NULL, 'jsotto@gmail.com', 1, '2026-08-17 14:42:57', '2026-08-17 20:56:36'),
(19, 'APP-2026-000013', 'Grace', NULL, 'Lacsoc', NULL, NULL, NULL, NULL, NULL, NULL, 'glacson@g.com', 1, '2026-08-17 15:24:23', '2026-08-17 20:55:51');

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

--
-- Dumping data for table `applicant_account`
--

INSERT INTO `applicant_account` (`id`, `applicant_id`, `username`, `email`, `password_hash`, `email_verified_at`, `last_login_at`, `failed_login_count`, `locked_until`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'nieljaplos0924@gmail.com', 'nieljaplos0924@gmail.com', '$2y$10$H1kXt0M7hCyO.tJNTnCSVOiejaNfn8zspYlx18yfb30II6ecbnDgO', '2026-08-04 19:59:44', '2026-08-18 19:40:35', 0, NULL, 1, '2026-08-04 19:59:44', '2026-08-18 19:40:35'),
(2, 8, 'jlacsamana@g.com', 'jlacsamana@g.com', '$2y$10$lqWDP0u9SZXPWMFS6RWOa.jIt14jH89gvIX5/XoHjrLH8t2mfxAdm', '2026-08-16 16:30:30', NULL, 0, NULL, 1, '2026-08-16 16:30:30', NULL),
(3, 9, 'manilahousesoundtech@gmail.com', 'manilahousesoundtech@gmail.com', '$2y$10$gXeY9CCjBJhO8BbIAXoomeWzdNy5.a9GhNhN9OHwb1XjgJmJN2faG', '2026-08-16 19:03:56', NULL, 0, NULL, 1, '2026-08-16 19:03:56', NULL),
(7, 13, 'manilahouse1111@gmail.com', 'manilahouse1111@gmail.com', '$2y$10$kyrxAg/cp75Qw47jRcGk9u7yJd3R3jA6pWGWefcKw7JgzhGCPalS6', '2026-08-16 23:57:25', NULL, 0, NULL, 1, '2026-08-16 23:57:25', NULL),
(8, 14, 'cdc@g.com', 'cdc@g.com', '$2y$10$fbOISSs3K.apIZVLstlp8OeFvrB1N4Ou.0N6VvtjNKlVYr3EZazX2', '2026-08-17 00:24:09', '2026-08-17 00:25:59', 0, NULL, 1, '2026-08-17 00:24:09', '2026-08-17 00:25:59'),
(12, 18, 'jsotto@gmail.com', 'jsotto@gmail.com', '$2y$10$eHYRXr0zYwbgPc8gvy7aY.K1p9Ndm.plukpPNegJOpZY2EjNdgsPG', '2026-08-17 14:42:57', NULL, 0, NULL, 1, '2026-08-17 14:42:57', NULL),
(13, 19, 'glacson@g.com', 'glacson@g.com', '$2y$10$EYDEcY29aM03ejGzG3Pig.47wVL.g9XLNYMdaCXvzbovht2BfpVCm', '2026-08-17 15:24:23', '2026-08-18 17:39:19', 0, NULL, 1, '2026-08-17 15:24:23', '2026-08-18 17:39:19');

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
-- Table structure for table `applicant_invitation`
--

CREATE TABLE `applicant_invitation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inquiry_id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `token_hash` char(64) NOT NULL,
  `registration_code` varchar(40) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicant_invitation`
--

INSERT INTO `applicant_invitation` (`id`, `inquiry_id`, `applicant_id`, `token_hash`, `registration_code`, `email`, `expires_at`, `used_at`, `created_by`, `created_at`) VALUES
(1, 22, 1, '26236ac2d539153dc2100d09d21075b159044832fcd5c72d1966725226a1f871', 'USMCI-INQ2026000022-C049', 'nieljaplos0924@gmail.com', '2026-08-11 19:53:03', '2026-08-04 19:59:44', 1, '2026-08-04 19:53:03'),
(2, 12, 2, 'b8389bf79a279bc941b359d7dfba4917121f9e70f7979066b907944cfd954e1c', 'USMCI-INQ2026000012-5915', 'nielrjaplos@gmail.com', '2026-08-12 18:28:21', '2026-08-05 18:28:48', 1, '2026-08-05 18:28:21'),
(3, 12, 2, '9ec8cb5217c20f493cc380bd943605aae644da017d3682fa4019845a96bb4372', 'USMCI-INQ2026000012-5A68', 'nielrjaplos@gmail.com', '2026-08-12 18:28:48', NULL, 1, '2026-08-05 18:28:48'),
(4, 2, 3, '86dfacda3b63387685998297eba88f673660cee634bdf077e9035746e837505c', 'USMCI-INQ2026000002-518E', 'jd@gmail.com', '2026-08-12 20:36:41', NULL, 1, '2026-08-05 20:36:41'),
(5, 22, 1, '7dec0274ad55cb017c4f60deb06fb21206c62f26b815ac6493e7bb7fd8da7108', 'USMCI-INQ2026000022-DEA1', 'nieljaplos0924@gmail.com', '2026-08-12 21:09:46', NULL, 1, '2026-08-05 21:09:46'),
(6, 24, 4, 'c9be1be4cf09084c6e75852809339005d07b121df506d9b49001f8fcabd63e44', 'USMCI-INQ2026000024-F0DD', 'nieljaplos0924@gmail.com', '2026-08-12 21:50:41', NULL, 1, '2026-08-05 21:50:41'),
(7, 21, 6, 'fc5ca3c4dc08fcb9ff03dfb15aadc6a46840a1eda083eff36ebea59762a11aaa', 'USMCI-INQ2026000021-8B4E', 'nieljaplos0924@gmail.com', '2026-08-22 00:23:16', NULL, 1, '2026-08-15 00:23:16'),
(8, 1, 7, 'f5bf65a761e98cb3ece3007186b4f8c6492c15129d6f5dcb4dc0857a8f0ab972', 'USMCI-INQ2026000001-2D91', 'n@g.com', '2026-08-22 18:37:06', NULL, 1, '2026-08-15 18:37:06');

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

--
-- Dumping data for table `applicant_notification`
--

INSERT INTO `applicant_notification` (`id`, `applicant_id`, `title`, `message`, `notification_type_id`, `read_at`, `created_at`) VALUES
(1, 9, 'Certificate Issued — CRT-2026-000010', 'Your certificate for Basic Training has been issued. You can view and download it from the Certificates tab.', 5, NULL, '2026-08-17 23:34:24'),
(2, 14, 'Certificate Issued — CRT-2026-000011', 'Your certificate for Basic Training has been issued. You can view and download it from the Certificates tab.', 5, NULL, '2026-08-18 00:09:22'),
(3, 8, 'Certificate Issued — CRT-2026-000012', 'Your certificate for Basic Training has been issued. You can view and download it from the Certificates tab.', 5, NULL, '2026-08-18 00:37:38'),
(4, 3, 'Certificate Issued — CRT-2026-000013', 'Your certificate for Basic Training has been issued. You can view and download it from the Certificates tab.', 5, NULL, '2026-08-18 00:45:55'),
(5, 1, 'Certificate Issued — CRT-2026-000014', 'Your certificate for Safety Training has been issued. You can view and download it from the Certificates tab.', 5, '2026-08-18 17:58:07', '2026-08-18 17:57:58');

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
  `photo_path` varchar(255) DEFAULT NULL,
  `seafarer_id_no` varchar(100) DEFAULT NULL,
  `rank_position` varchar(100) DEFAULT NULL,
  `sirb_no` varchar(100) DEFAULT NULL,
  `cdc_no` varchar(100) DEFAULT NULL,
  `passport_no` varchar(100) DEFAULT NULL,
  `passport_expiry` date DEFAULT NULL,
  `medical_certificate_no` varchar(100) DEFAULT NULL,
  `medical_expiry` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicant_profile`
--

INSERT INTO `applicant_profile` (`id`, `applicant_id`, `place_of_birth`, `address_line1`, `address_line2`, `city_id`, `province_id`, `country_id`, `postal_code`, `emergency_contact_name`, `emergency_contact_no`, `relationship_id`, `photo_path`, `seafarer_id_no`, `rank_position`, `sirb_no`, `cdc_no`, `passport_no`, `passport_expiry`, `medical_certificate_no`, `medical_expiry`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'uploads/trainee-photos/trainee-1-1785937459.jpeg', NULL, 'Able Seaman', NULL, NULL, NULL, '2027-07-05', NULL, NULL, '2026-08-04 20:39:05', '2026-08-16 23:50:08'),
(10, 5, NULL, 'BGC', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Engine', NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-15 00:11:52', NULL),
(11, 8, NULL, 'BGC', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Chief Engineer', NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-16 16:30:30', NULL),
(12, 9, NULL, NULL, 'BGC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026050923', 'Chief Cook', '2026 - 029', NULL, NULL, NULL, NULL, NULL, '2026-08-16 19:03:56', NULL),
(15, 13, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'uploads/trainee-photos/trainee-13-1786895845.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-16 23:57:24', '2026-08-16 23:57:25'),
(16, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/trainee-photos/trainee-14-1786897449.png', NULL, 'Messman', NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-17 00:24:09', '2026-08-17 13:30:59'),
(17, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/trainee-photos/trainee-18-1786971396.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-17 14:42:57', '2026-08-17 20:56:36'),
(18, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/trainee-photos/trainee-19-1786971318.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-08-17 15:24:23', '2026-08-17 20:55:18');

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

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `application_no`, `applicant_id`, `status_id`, `submitted_at`, `reviewed_at`, `approved_at`, `rejected_at`, `created_at`, `updated_at`) VALUES
(1, 'APP-2026-422809', 1, 2, '2026-08-11 22:10:39', NULL, NULL, NULL, '2026-08-11 22:10:39', NULL),
(2, 'APP-2026-921470', 2, 2, '2026-08-13 23:23:13', NULL, NULL, NULL, '2026-08-13 23:23:13', NULL),
(3, 'APP-2026-802086', 3, 2, '2026-08-14 21:16:08', NULL, NULL, NULL, '2026-08-14 21:16:08', NULL),
(4, 'APP-2026-041182', 4, 2, '2026-08-14 23:16:01', NULL, NULL, NULL, '2026-08-14 23:16:01', NULL),
(5, 'APP-2026-288471', 5, 2, '2026-08-15 00:11:52', NULL, NULL, NULL, '2026-08-15 00:11:52', NULL),
(6, 'APP-2026-169128', 8, 2, '2026-08-16 16:30:30', NULL, NULL, NULL, '2026-08-16 16:30:30', NULL),
(7, 'APP-2026-082124', 9, 2, '2026-08-16 19:03:56', NULL, NULL, NULL, '2026-08-16 19:03:56', NULL),
(8, 'APP-2026-302469', 13, 2, '2026-08-16 23:57:25', NULL, NULL, NULL, '2026-08-16 23:57:25', NULL),
(9, 'APP-2026-785153', 14, 2, '2026-08-17 00:24:09', NULL, NULL, NULL, '2026-08-17 00:24:09', NULL),
(10, 'APP-2026-280562', 18, 2, '2026-08-17 14:42:57', NULL, NULL, NULL, '2026-08-17 14:42:57', NULL),
(11, 'APP-2026-384269', 19, 2, '2026-08-17 15:24:23', NULL, NULL, NULL, '2026-08-17 15:24:23', NULL);

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

--
-- Dumping data for table `application_requirement`
--

INSERT INTO `application_requirement` (`id`, `application_id`, `document_type_id`, `document_upload_id`, `is_required`, `is_submitted`, `verified_at`, `verified_by`, `remarks`, `created_at`) VALUES
(1, 11, 1, NULL, 1, 1, '2026-08-17 20:46:51', 1, NULL, '2026-08-17 20:46:46'),
(3, 11, 6, NULL, 1, 1, '2026-08-17 23:18:13', 1, NULL, '2026-08-17 20:46:58'),
(4, 10, 1, NULL, 1, 1, '2026-08-17 20:57:22', 1, NULL, '2026-08-17 20:57:22'),
(5, 10, 5, NULL, 1, 1, '2026-08-17 23:15:15', 1, NULL, '2026-08-17 23:15:15'),
(7, 7, 1, NULL, 1, 1, '2026-08-18 00:13:20', 1, NULL, '2026-08-18 00:13:20');

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

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`id`, `actor_type`, `actor_id`, `action`, `table_name`, `record_id`, `old_values`, `new_values`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 'user', 1, 'staff.create', 'staff', 11, NULL, '{\"detail\":\"Staff account \'jean@gmail.com\' created (role id 7)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-16 20:51:09'),
(2, 'user', 1, 'companies.create', 'companies', 1, NULL, '{\"detail\":\"Company \'Global web icon Facebook https:\\/\\/www.facebook.com \\u203a OfficialMMMSI Mindoro Merchant Marine School, Inc. | Calapan Jan 29, 2026 \\u00b7 For eight meaningful years, MMMSI has remained committed to \\u2026  Ratings: 1 Followers: 1.5K 330 likes Location: Brgy. Sto. Ni\\u00f1o, Nacoco, Oriental Mindoro, Calapan, Philippines, 5200, Mimaropa   Global web icon MARINA STCW Administration Office https:\\/\\/stcw.marina.gov.ph \\u203a wp-content \\u203a uploads  \\u00b7 PDF file LIST OF MARITIME HIGHER EDUCATION INSTITUTIONS O\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-16 20:57:41'),
(3, 'user', 1, 'companies.update', 'companies', 1, NULL, '{\"detail\":\"Company \'Mindoro Merchant Marine School\' updated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-16 21:00:05'),
(4, 'user', 1, 'settings.role_access', 'settings', 4, NULL, '{\"detail\":\"Role access updated (6 pages)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-16 21:07:30'),
(5, 'user', 1, 'staff.reset_password', 'staff', 5, NULL, '{\"detail\":\"Password reset for staff #5\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-16 21:08:57'),
(6, 'user', 1, 'payments.record_payment', 'payments', 8, NULL, '{\"detail\":\"\\u20b1 15,000.00 recorded on PAY-2026-000008 \\u2014 receipt OR-2026-000007 issued\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-16 21:47:38'),
(7, 'user', 1, 'payments.record_payment', 'payments', 9, NULL, '{\"detail\":\"\\u20b1 15,000.00 recorded on PAY-2026-000009 \\u2014 receipt OR-2026-000008 issued\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-16 22:36:23'),
(8, 'user', 1, 'payments.record_payment', 'payments', 10, NULL, '{\"detail\":\"\\u20b1 1,500.00 recorded on PAY-2026-000010 \\u2014 receipt OR-2026-000009 issued\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-16 23:54:48'),
(9, 'user', 5, 'payments.record_payment', 'payments', 11, NULL, '{\"detail\":\"\\u20b1 1,500.00 recorded on PAY-2026-000011 \\u2014 receipt OR-2026-000010 issued\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 00:05:24'),
(10, 'user', 1, 'payments.record_payment', 'payments', 12, NULL, '{\"detail\":\"\\u20b1 15,000.00 recorded on PAY-2026-000012 \\u2014 receipt OR-2026-000011 issued\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 13:34:22'),
(11, 'user', 1, 'staff.toggle', 'staff', 9, NULL, '{\"detail\":\"Account disabled (staff #9)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 14:41:03'),
(12, 'user', 1, 'staff.toggle', 'staff', 9, NULL, '{\"detail\":\"Account enabled (staff #9)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 14:41:06'),
(13, 'user', 1, 'payments.record_payment', 'payments', 13, NULL, '{\"detail\":\"\\u20b1 1,500.00 recorded on PAY-2026-000013 \\u2014 receipt OR-2026-000012 issued \\u2014 enrollment auto-updated to Enrolled\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 15:29:51'),
(14, 'user', 1, 'requirements.matrix_update', 'requirements', NULL, NULL, '{\"detail\":\"Requirements matrix saved (4 required-doc rows)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:07:18'),
(15, 'user', 1, 'enrollments.create', 'enrollments', 18, NULL, '{\"detail\":\"Enrollment ENR-2026-000018 created for Grace Lacsoc (course id 2, status: pending, endorser: marketing)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:08:19'),
(16, 'user', 1, 'requirements.mark_received', 'requirements', 18, NULL, '{\"detail\":\"Enrollment ENR-2026-000018 \\u2014 document type #1 marked received\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:46:46'),
(17, 'user', 1, 'requirements.mark_received', 'requirements', 18, NULL, '{\"detail\":\"Enrollment ENR-2026-000018 \\u2014 document type #1 marked received\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:46:51'),
(18, 'user', 1, 'requirements.mark_received', 'requirements', 18, NULL, '{\"detail\":\"Enrollment ENR-2026-000018 \\u2014 document type #6 marked received\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:46:58'),
(19, 'user', 1, 'enrollments.create', 'enrollments', 19, NULL, '{\"detail\":\"Enrollment ENR-2026-000019 created for Grace Lacsoc (course id 1, status: pending, endorser: marketing)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:55:51'),
(20, 'user', 1, 'enrollments.create', 'enrollments', 20, NULL, '{\"detail\":\"Enrollment ENR-2026-000020 created for Jacob Sotto (course id 2, status: pending, endorser: company)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:56:36'),
(21, 'user', 1, 'certificates.issue', 'certificates', 20, NULL, '{\"detail\":\"Certificate CRT-2026-000009 issued to Jacob Sotto (enrollment ENR-2026-000020)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:57:11'),
(22, 'user', 1, 'requirements.mark_received', 'requirements', 20, NULL, '{\"detail\":\"Enrollment ENR-2026-000020 \\u2014 document type #1 marked received\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 20:57:22'),
(23, 'user', 1, 'requirements.mark_received', 'requirements', 20, NULL, '{\"detail\":\"Enrollment ENR-2026-000020 \\u2014 document type #5 marked received\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 23:15:15'),
(24, 'user', 1, 'requirements.mark_received', 'requirements', 18, NULL, '{\"detail\":\"Enrollment ENR-2026-000018 \\u2014 document type #6 marked received\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 23:18:13'),
(25, 'user', 1, 'certificates.issue', 'certificates', 10, NULL, '{\"detail\":\"Certificate CRT-2026-000010 issued to Jenny Simpon (enrollment ENR-2026-000010)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 23:34:24'),
(26, 'user', 1, 'certificates.void', 'certificates', 5, NULL, '{\"detail\":\"Certificate CRT-2026-000004 voided \\u2014 renewal\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-17 23:41:28'),
(27, 'user', 1, 'certificates.issue', 'certificates', 14, NULL, '{\"detail\":\"Certificate CRT-2026-000011 issued to Celia Dela Cruz (enrollment ENR-2026-000014)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 00:09:22'),
(28, 'user', 1, 'requirements.mark_received', 'requirements', 10, NULL, '{\"detail\":\"Enrollment ENR-2026-000010 \\u2014 document type #1 marked received\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 00:13:20'),
(29, 'user', 1, 'certificates.issue', 'certificates', 9, NULL, '{\"detail\":\"Certificate CRT-2026-000012 issued to Jessica Lacsamana (enrollment ENR-2026-000009)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 00:37:38'),
(30, 'user', 1, 'payments.record_payment', 'payments', 14, NULL, '{\"detail\":\"\\u20b1 15,000.00 recorded on PAY-2026-000014 \\u2014 receipt OR-2026-000013 issued \\u2014 enrollment auto-updated to Enrolled\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 00:42:44'),
(31, 'user', 1, 'payments.record_payment', 'payments', 15, NULL, '{\"detail\":\"\\u20b1 1,500.00 recorded on PAY-2026-000015 \\u2014 receipt OR-2026-000014 issued \\u2014 enrollment auto-updated to Enrolled\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 00:43:08'),
(32, 'user', 1, 'payments.record_payment', 'payments', 16, NULL, '{\"detail\":\"\\u20b1 10,000.00 recorded on PAY-2026-000016 \\u2014 receipt OR-2026-000015 issued\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 00:43:47'),
(33, 'user', 1, 'certificates.issue', 'certificates', 6, NULL, '{\"detail\":\"Certificate CRT-2026-000013 issued to John Doe (enrollment ENR-2026-000006)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 00:45:55'),
(34, 'user', 1, 'certificates.issue', 'certificates', 11, NULL, '{\"detail\":\"Certificate CRT-2026-000014 issued to Jane Doe (enrollment ENR-2026-000011)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 17:57:58'),
(35, 'user', 1, 'requirements.doc_type_update', 'requirements', 1, NULL, '{\"detail\":\"Document type \'Valid ID\' (VALID_ID) updated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 19:34:11'),
(36, 'user', 1, 'requirements.doc_type_update', 'requirements', 1, NULL, '{\"detail\":\"Document type \'Valid ID\' (VALID_ID) updated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 19:34:22'),
(37, 'user', 1, 'settings.website_content_update', 'settings', NULL, NULL, '{\"detail\":\"Website content saved (10 fields)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-19 15:28:18'),
(38, 'user', 1, 'settings.website_content_update', 'settings', NULL, NULL, '{\"detail\":\"Website content saved (13 fields)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-19 17:08:01'),
(39, 'user', 1, 'settings.website_content_update', 'settings', NULL, NULL, '{\"detail\":\"Website content saved (13 fields)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-19 17:11:29'),
(40, 'user', 1, 'settings.website_content_update', 'settings', NULL, NULL, '{\"detail\":\"Website content saved (14 fields)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-19 23:49:53'),
(41, 'user', 1, 'settings.announcement_deactivate', 'settings', 1, NULL, '{\"detail\":\"Announcement \'Class Suspension \\u2014 Friday Afternoon Batch\' deactivated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-20 21:10:09'),
(42, 'user', 1, 'settings.announcement_create', 'settings', 4, NULL, '{\"detail\":\"Announcement \'Fumigation  Schedule\' created\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-20 21:11:56'),
(43, 'user', 1, 'settings.website_content_update', 'settings', NULL, NULL, '{\"detail\":\"Website content saved (25 fields)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 00:16:35'),
(44, 'user', 1, 'settings.affiliate_update', 'settings', 1, NULL, '{\"detail\":\"Affiliate \'MARINA \\u2014 Maritime Industry Authority\' updated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 10:06:37'),
(45, 'user', 1, 'settings.affiliate_update', 'settings', 5, NULL, '{\"detail\":\"Affiliate \'Sample Manning Agency (Partner)\' updated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 10:09:05'),
(46, 'user', 1, 'settings.website_content_update', 'settings', NULL, NULL, '{\"detail\":\"Website content saved (30 fields)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 10:29:45'),
(47, 'user', 1, 'settings.website_content_update', 'settings', NULL, NULL, '{\"detail\":\"Website content saved (30 fields)\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 10:31:21'),
(48, 'user', 1, 'settings.affiliate_update', 'settings', 1, NULL, '{\"detail\":\"Affiliate \'MARINA \\u2014 Maritime Industry Authority\' updated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 10:52:29'),
(49, 'user', 1, 'settings.affiliate_deactivate', 'settings', 4, NULL, '{\"detail\":\"Affiliate \'ISO \\u2014 International Organization for Standardization\' deactivated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 10:53:53'),
(50, 'user', 1, 'settings.contact_info_update', 'settings', 3, NULL, '{\"detail\":\"Contact card \'Facebook\' updated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 11:58:51'),
(51, 'user', 1, 'settings.contact_info_update', 'settings', 2, NULL, '{\"detail\":\"Contact card \'Training Site\' updated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-21 12:02:22'),
(52, 'user', 1, 'settings.contact_info_deactivate', 'settings', 2, NULL, '{\"detail\":\"Contact card \'Training Site\' deactivated\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-22 12:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `certificate_no` varchar(100) NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_name_override` varchar(200) DEFAULT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `issued_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `qr_code_value` varchar(255) DEFAULT NULL,
  `verification_url` varchar(500) DEFAULT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `issued_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('draft','issued','void','expired','reissued') NOT NULL DEFAULT 'draft',
  `void_remarks` varchar(500) DEFAULT NULL,
  `is_self_recorded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `certificate_no`, `enrollment_id`, `course_id`, `course_name_override`, `applicant_id`, `issued_date`, `expiry_date`, `qr_code_value`, `verification_url`, `file_path`, `file_name`, `issued_by`, `status`, `void_remarks`, `is_self_recorded`, `created_at`, `updated_at`) VALUES
(1, 'BT-2026-14', NULL, NULL, 'Basic Training', 1, '2026-07-31', '2029-07-31', NULL, NULL, NULL, NULL, NULL, 'void', NULL, 1, '2026-08-05 23:25:11', '2026-08-13 22:29:31'),
(2, 'CRT-2026-000001', 2, 3, NULL, 1, '2026-08-13', '2026-10-13', 'c6e476fbb75691831db6177409691ba1', '/USMCI-TMS/verify.php?ref=CRT-2026-000001&t=c6e476fbb75691831db6177409691ba1', NULL, NULL, 1, 'void', NULL, 0, '2026-08-13 22:08:42', '2026-08-14 19:47:02'),
(3, 'CRT-2026-000002', 4, 2, NULL, 2, '2026-08-13', '2028-10-13', 'fcc32b743444ee61d7ee5a7656c8b433', '/USMCI-TMS/verify.php?ref=CRT-2026-000002&t=fcc32b743444ee61d7ee5a7656c8b433', 'uploads/certificates/cert-1786634804-766094255_28330718479854625_4517776454575917052_n.jpg', '766094255_28330718479854625_4517776454575917052_n.jpg', 1, 'issued', NULL, 0, '2026-08-13 23:26:44', NULL),
(4, 'CRT-2026-000003', 5, 2, NULL, 1, '2026-08-14', '2028-11-14', '616c26ad61eaf143ee4f2f40e1f16dd5', '/USMCI-TMS/verify.php?ref=CRT-2026-000003&t=616c26ad61eaf143ee4f2f40e1f16dd5', 'uploads/certificates/cert-1786707916-COMPANY_PROFILE.pdf', 'COMPANY PROFILE.pdf', 1, 'void', 'Not Paid', 0, '2026-08-14 19:45:16', '2026-08-14 21:00:16'),
(5, 'CRT-2026-000004', 6, 2, NULL, 3, '2026-08-14', '2028-10-14', 'f10c859ec7ee1309a4c6b84a32891f4d', '/USMCI-TMS/verify.php?ref=CRT-2026-000004&t=f10c859ec7ee1309a4c6b84a32891f4d', 'uploads/certificates/cert-1786713870-images.png', 'images.png', 1, 'void', 'renewal', 0, '2026-08-14 21:24:30', '2026-08-17 23:41:28'),
(6, 'CRT-2026-000005', 13, 1, NULL, 14, '2026-08-17', '2026-09-17', 'baed1c4b46295f29488d114456659064', '/USMCI-TMS/verify.php?ref=CRT-2026-000005&t=baed1c4b46295f29488d114456659064', 'uploads/certificates/cert-1786944725-COMPANY_PROFILE.pdf', 'COMPANY PROFILE.pdf', 1, 'issued', NULL, 0, '2026-08-17 13:32:05', NULL),
(7, 'CRT-2026-000006', 5, 2, NULL, 1, '2026-08-17', '2026-10-17', '1ad11346e623e5e67a98ded1f962781c', '/USMCI-TMS/verify.php?ref=CRT-2026-000006&t=1ad11346e623e5e67a98ded1f962781c', NULL, NULL, 1, 'issued', NULL, 0, '2026-08-17 13:34:13', NULL),
(8, 'CRT-2026-000007', 17, 1, NULL, 19, '2026-08-17', '2027-08-17', '4f1ae0f597588bfb5c32393bfec07d76', '/USMCI-TMS/verify.php?ref=CRT-2026-000007&t=4f1ae0f597588bfb5c32393bfec07d76', NULL, NULL, 1, 'issued', NULL, 0, '2026-08-17 17:04:55', NULL),
(9, 'CRT-2026-000008', 16, 2, NULL, 19, '2026-08-17', '2028-10-17', '1d795529bd48ffb67eb0ce00927eb0f6', '/USMCI-TMS/verify.php?ref=CRT-2026-000008&t=1d795529bd48ffb67eb0ce00927eb0f6', 'uploads/certificates/cert-1786959680-Registration_Form.pdf', 'Registration Form.pdf', 1, 'issued', NULL, 0, '2026-08-17 17:41:20', NULL),
(10, 'CRT-2026-000009', 20, 2, NULL, 18, '2026-08-17', '2028-10-17', 'dc016e216979ab29e2b686bf0e3fe6cf', '/USMCI-TMS/verify.php?ref=CRT-2026-000009&t=dc016e216979ab29e2b686bf0e3fe6cf', 'uploads/certificates/cert-1786971431-Registration_Form.pdf', 'Registration Form.pdf', 1, 'issued', NULL, 0, '2026-08-17 20:57:11', NULL),
(11, 'CRT-2026-000010', 10, 2, NULL, 9, '2026-08-17', '2028-10-17', 'd3ddd625d5ef8dbab98b9be97e019f5d', '/USMCI-TMS/verify.php?ref=CRT-2026-000010&t=d3ddd625d5ef8dbab98b9be97e019f5d', 'uploads/certificates/cert-1786980864-Registration_Form.pdf', 'Registration Form.pdf', 1, 'issued', NULL, 0, '2026-08-17 23:34:24', NULL),
(12, 'CRT-2026-000011', 14, 2, NULL, 14, '2026-08-18', '2028-10-18', 'de462bfa33c56ad7a1980f10c4ab45fa', '/USMCI-TMS/verify.php?ref=CRT-2026-000011&t=de462bfa33c56ad7a1980f10c4ab45fa', 'uploads/certificates/cert-1786982962-Registration_Form.pdf', 'Registration Form.pdf', 1, 'issued', NULL, 0, '2026-08-18 00:09:22', NULL),
(13, 'CRT-2026-000012', 9, 2, NULL, 8, '2026-08-18', '2028-10-18', '961979c979ee17b9b43349e5c6d00a18', '/USMCI-TMS/verify.php?ref=CRT-2026-000012&t=961979c979ee17b9b43349e5c6d00a18', 'uploads/certificates/cert-1786984658-Registration_Form.pdf', 'Registration Form.pdf', 1, 'issued', NULL, 0, '2026-08-18 00:37:38', NULL),
(14, 'CRT-2026-000013', 6, 2, NULL, 3, '2026-08-18', '2028-10-18', '7f2314f9b1a925dee0a2093c8a083d3a', '/USMCI-TMS/verify.php?ref=CRT-2026-000013&t=7f2314f9b1a925dee0a2093c8a083d3a', 'uploads/certificates/cert-1786985155-Registration_Form.pdf', 'Registration Form.pdf', 1, 'issued', NULL, 0, '2026-08-18 00:45:55', NULL),
(15, 'CRT-2026-000014', 11, 1, NULL, 1, '2026-08-18', '2027-08-18', '8d56a6f32e4490f47380e43f3b9aefb3', '/USMCI-TMS/verify.php?ref=CRT-2026-000014&t=8d56a6f32e4490f47380e43f3b9aefb3', 'uploads/certificates/cert-1787047078-Registration_Form.pdf', 'Registration Form.pdf', 1, 'issued', NULL, 0, '2026-08-18 17:57:58', NULL);

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
(11, NULL, 11, 'email', 'inbound', 'How much?', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-16\n\nhi', NULL, '2026-07-15 06:40:19'),
(12, NULL, 12, 'email', 'inbound', 'How much?', 'Preferred Contact: Email\nPreferred Course: Proficiency in Survival Craft and Rescue Boats\nPreferred Schedule: Morning\nPreferred Date: 2026-08-10\n\nHow much and is there a slot left?', NULL, '2026-08-02 15:40:21'),
(13, NULL, 13, 'email', 'inbound', 'Test Mail', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nsending test 1 email', NULL, '2026-08-02 20:53:19'),
(14, NULL, 14, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:01:46'),
(15, NULL, 15, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:01:58'),
(16, NULL, 16, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:02:10'),
(17, NULL, 17, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:02:22'),
(18, NULL, 18, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:02:33'),
(19, NULL, 19, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:02:43'),
(20, NULL, 20, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:02:54'),
(21, NULL, 21, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:03:05'),
(22, NULL, 22, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:03:16'),
(23, NULL, 23, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', NULL, '2026-08-04 19:03:26'),
(24, NULL, 24, 'email', 'inbound', 'availability', 'Preferred Contact: Email\nPreferred Course: Ship Security Awareness\nPreferred Schedule: No Preference\nPreferred Date: 2026-08-24\n\ntset', NULL, '2026-08-05 21:35:12');

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

--
-- Dumping data for table `course_prerequisite`
--

INSERT INTO `course_prerequisite` (`id`, `course_id`, `prerequisite_course_id`, `required_document_type_id`, `required_min_age`, `requires_medical`, `requires_sea_service_months`, `created_at`) VALUES
(1, 2, NULL, 1, NULL, 0, NULL, '2026-08-17 20:07:18'),
(2, 2, NULL, 5, NULL, 0, NULL, '2026-08-17 20:07:18'),
(3, 2, NULL, 6, NULL, 0, NULL, '2026-08-17 20:07:18'),
(4, 2, NULL, 9, NULL, 0, NULL, '2026-08-17 20:07:18');

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

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `owner_type`, `owner_id`, `document_type_id`, `title`, `status`, `issued_date`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 'applicant', 1, 1, 'Golf_Scorecard_Whistlebury.pdf', 'submitted', NULL, NULL, '2026-08-05 18:11:59', NULL),
(2, 'applicant', 1, 1, 'BT-2026-14', 'submitted', NULL, NULL, '2026-08-05 23:25:35', NULL),
(4, 'applicant', 1, 2, 'images.jpg', 'submitted', NULL, NULL, '2026-08-14 20:03:24', NULL);

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

--
-- Dumping data for table `document_upload`
--

INSERT INTO `document_upload` (`id`, `document_id`, `file_name`, `file_path`, `mime_type`, `file_size`, `checksum_sha256`, `uploaded_by`, `uploaded_at`) VALUES
(1, 1, 'Golf_Scorecard_Whistlebury.pdf', 'uploads/trainee-docs/trainee-1-1785924719-Golf_Scorecard_Whistlebury.pdf', 'application/pdf', 30920, NULL, NULL, '2026-08-05 18:11:59'),
(2, 2, 'Golf_Scorecard_Whistlebury.pdf', 'uploads/trainee-docs/trainee-1-1785943535-Golf_Scorecard_Whistlebury.pdf', 'application/pdf', 30920, NULL, NULL, '2026-08-05 23:25:35'),
(4, 4, 'images.jpg', 'uploads/trainee-docs/trainee-1-1786709004-images.jpg', 'image/jpeg', 15233, NULL, NULL, '2026-08-14 20:03:24');

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
(11, 'nieljaplos0924@gmail.com', '[INQ-2026-000011] New Admissions Inquiry: How much?', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000011</p><p><strong>Name:</strong> seven fifteen</p><p><strong>Email:</strong> 715@g.com</p><p><strong>Mobile:</strong> 99886633</p><p><strong>Reply-To:</strong> 715@g.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-16\n\nhi</pre>', 'pending', 0, '2026-07-15 06:40:19', NULL, NULL, '2026-07-15 06:40:19'),
(12, '715@g.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi seven fifteen,</p>\n    <p>its still available, code to create ur accountis 2355</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000011<br>\n        — USMCI Admissions Office\n    </p>', 'pending', 0, '2026-08-02 08:38:26', NULL, NULL, '2026-08-02 08:38:26'),
(13, '715@g.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi seven fifteen,</p>\n    <p>test send email from Zen</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000011<br>\n        — USMCI Admissions Office\n    </p>', 'pending', 0, '2026-08-02 15:14:23', NULL, NULL, '2026-08-02 15:14:23'),
(14, 'nieljaplos0924@gmail.com', '[INQ-2026-000012] New Admissions Inquiry: How much?', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000012</p><p><strong>Name:</strong> Niel J</p><p><strong>Email:</strong> nielrjaplos@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nielrjaplos@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Proficiency in Survival Craft and Rescue Boats\nPreferred Schedule: Morning\nPreferred Date: 2026-08-10\n\nHow much and is there a slot left?</pre>', 'pending', 0, '2026-08-02 15:40:21', NULL, NULL, '2026-08-02 15:40:21'),
(15, 'nielrjaplos@gmail.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi Niel J,</p>\n    <p>yes there a lot of slot available</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000012<br>\n        — USMCI Admissions Office\n    </p>', 'pending', 0, '2026-08-02 15:40:56', NULL, NULL, '2026-08-02 15:40:56'),
(16, 'nielrjaplos@gmail.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi Niel J,</p>\n    <p>send from Zen from TMS</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000012<br>\n        — USMCI Admissions Office\n    </p>', 'pending', 0, '2026-08-02 19:10:24', NULL, NULL, '2026-08-02 19:10:24'),
(17, 'nielrjaplos@gmail.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi Niel J,</p>\n    <p>Test 3 for sending email</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000012<br>\n        — USMCI Admissions Office\n    </p>', 'pending', 0, '2026-08-02 20:51:00', NULL, NULL, '2026-08-02 20:51:00'),
(18, 'nieljaplos0924@gmail.com', '[INQ-2026-000013] New Admissions Inquiry: Test Mail', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000013</p><p><strong>Name:</strong> August</p><p><strong>Email:</strong> nielrjaplos@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nielrjaplos@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nsending test 1 email</pre>', 'pending', 0, '2026-08-02 20:53:19', NULL, NULL, '2026-08-02 20:53:19'),
(19, 'nielrjaplos@gmail.com', 'Re: Test Mail', '    <h2>Re: Test Mail</h2>\n    <p>Hi August,</p>\n    <p>Test 1 email from zen</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000013<br>\n        — USMCI Admissions Office\n    </p>', 'failed', 1, '2026-08-02 21:22:00', NULL, 'PHP mail() returned false — check your php.ini sendmail/SMTP settings.', '2026-08-02 21:22:00'),
(20, 'nielrjaplos@gmail.com', 'Re: Test Mail', '    <h2>Re: Test Mail</h2>\n    <p>Hi August,</p>\n    <p>Test sending to trainee</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000013<br>\n        — USMCI Admissions Office\n    </p>', 'failed', 1, '2026-08-02 21:54:23', NULL, 'PHP mail() returned false — check your php.ini sendmail/SMTP settings.', '2026-08-02 21:54:23'),
(21, 'nielrjaplos@gmail.com', 'Re: Test Mail', '    <h2>Re: Test Mail</h2>\n    <p>Hi August,</p>\n    <p>Test email reply from Zem to niel</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000013<br>\n        — USMCI Admissions Office\n    </p>', 'failed', 1, '2026-08-02 22:10:55', NULL, 'PHP mail() returned false — check your php.ini sendmail/SMTP settings.', '2026-08-02 22:10:55'),
(22, 'nielrjaplos@gmail.com', 'Re: Test Mail', '    <h2>Re: Test Mail</h2>\n    <p>Hi August,</p>\n    <p>email from USMCi Zen</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000013<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-02 22:49:15', '2026-08-02 22:49:20', NULL, '2026-08-02 22:49:15'),
(23, 'zenramboanga@gmail.com', '[INQ-2026-000014] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000014</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:01:46', '2026-08-04 19:01:52', NULL, '2026-08-04 19:01:46'),
(24, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000014)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000014</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:01:46', '2026-08-04 19:01:58', NULL, '2026-08-04 19:01:46'),
(25, 'zenramboanga@gmail.com', '[INQ-2026-000015] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000015</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:01:58', '2026-08-04 19:02:03', NULL, '2026-08-04 19:01:58'),
(26, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000015)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000015</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:01:58', '2026-08-04 19:02:10', NULL, '2026-08-04 19:01:58'),
(27, 'zenramboanga@gmail.com', '[INQ-2026-000016] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000016</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:02:10', '2026-08-04 19:02:17', NULL, '2026-08-04 19:02:10'),
(28, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000016)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000016</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:02:10', '2026-08-04 19:02:22', NULL, '2026-08-04 19:02:10'),
(29, 'zenramboanga@gmail.com', '[INQ-2026-000017] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000017</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:02:22', '2026-08-04 19:02:28', NULL, '2026-08-04 19:02:22'),
(30, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000017)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000017</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:02:22', '2026-08-04 19:02:33', NULL, '2026-08-04 19:02:22'),
(31, 'zenramboanga@gmail.com', '[INQ-2026-000018] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000018</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:02:33', '2026-08-04 19:02:38', NULL, '2026-08-04 19:02:33'),
(32, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000018)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000018</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:02:33', '2026-08-04 19:02:43', NULL, '2026-08-04 19:02:33'),
(33, 'zenramboanga@gmail.com', '[INQ-2026-000019] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000019</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:02:43', '2026-08-04 19:02:49', NULL, '2026-08-04 19:02:43'),
(34, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000019)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000019</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:02:43', '2026-08-04 19:02:54', NULL, '2026-08-04 19:02:43'),
(35, 'zenramboanga@gmail.com', '[INQ-2026-000020] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000020</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:02:54', '2026-08-04 19:03:00', NULL, '2026-08-04 19:02:54'),
(36, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000020)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000020</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:02:54', '2026-08-04 19:03:05', NULL, '2026-08-04 19:02:54'),
(37, 'zenramboanga@gmail.com', '[INQ-2026-000021] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000021</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:03:05', '2026-08-04 19:03:10', NULL, '2026-08-04 19:03:05'),
(38, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000021)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000021</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:03:05', '2026-08-04 19:03:16', NULL, '2026-08-04 19:03:05'),
(39, 'zenramboanga@gmail.com', '[INQ-2026-000022] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000022</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:03:16', '2026-08-04 19:03:21', NULL, '2026-08-04 19:03:16'),
(40, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000022)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000022</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:03:16', '2026-08-04 19:03:26', NULL, '2026-08-04 19:03:16'),
(41, 'zenramboanga@gmail.com', '[INQ-2026-000023] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000023</p><p><strong>Name:</strong> Jane Doe</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available</pre>', 'sent', 1, '2026-08-04 19:03:26', '2026-08-04 19:03:31', NULL, '2026-08-04 19:03:26'),
(42, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000023)', '    <h2>Thank you, Jane Doe!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000023</p>\n    <p><strong>Course of interest:</strong> Medical First Aid<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'sent', 1, '2026-08-04 19:03:26', '2026-08-04 19:03:37', NULL, '2026-08-04 19:03:26'),
(43, 'nieljaplos0924@gmail.com', 'Re: availability', '    <h2>Re: availability</h2>\n    <p>Hi Jane Doe,</p>\n    <p>test</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000023<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-04 19:37:48', '2026-08-04 19:37:54', NULL, '2026-08-04 19:37:48'),
(44, 'nieljaplos0924@gmail.com', 'You\'re invited to create your USMCI Admissions account', '    <h2>You\'re invited to continue your application</h2>\n    <p>Hi Jane Doe,</p>\n    <p>Thank you for your interest in USMCI\'s maritime training programs. You\'re invited to\n    create your Admissions Portal account to continue your application online.</p>\n\n    <p><strong>Your registration code:</strong></p>\n    <p style=\"font-size:1.25rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;background:#EAF6F2;\n    display:inline-block;padding:10px 20px;border-radius:10px;\">USMCI-INQ2026000022-C049</p>\n\n    <p>Enter this code on the login page under <strong>Create Account</strong>, or use this direct link:</p>\n    <p><a href=\"http://localhost/USMCI-TMS/sections/admissions/register.php?token=15ca284efc2abf6212f20b37b96863c7ebddb27f572123b944f308388a59e9eb\" style=\"display:inline-block;padding:12px 24px;background:#0D8A72;color:#fff;\n    text-decoration:none;border-radius:8px;\">Create My Account</a></p>\n\n    <p style=\"color:#6B7280;font-size:.85rem;\">The code and link are valid for 7 days and can\n    only be used once. If you didn\'t request this, you can safely ignore this email.</p>', 'sent', 1, '2026-08-04 19:53:03', '2026-08-04 19:53:09', NULL, '2026-08-04 19:53:03'),
(45, 'nieljaplos0924@gmail.com', 'Re: availability', '    <h2>Re: availability</h2>\n    <p>Hi Jane Doe,</p>\n    <p>Hi Jane Doe,<br />\n<br />\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:<br />\n<br />\nUSMCI-INQ2026000022-C049<br />\n<br />\nEnter it on our login page under &quot;Create Account&quot;. This code is valid for 7 days.<br />\n<br />\n— USMCI Admissions Office</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000022-C049</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000022<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-04 19:54:55', '2026-08-04 19:55:01', NULL, '2026-08-04 19:54:55'),
(46, 'nielrjaplos@gmail.com', 'You\'re invited to create your USMCI Admissions account', '    <h2>You\'re invited to continue your application</h2>\n    <p>Hi Niel J,</p>\n    <p>Thank you for your interest in USMCI\'s maritime training programs. You\'re invited to\n    create your Admissions Portal account to continue your application online.</p>\n\n    <p><strong>Your registration code:</strong></p>\n    <p style=\"font-size:1.25rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;background:#EAF6F2;\n    display:inline-block;padding:10px 20px;border-radius:10px;\">USMCI-INQ2026000012-5915</p>\n\n    <p>Enter this code on the login page under <strong>Create Account</strong>, or use this direct link:</p>\n    <p><a href=\"http://localhost/USMCI-TMS/sections/admissions/register.php?token=65c19e165198161ac17cdbea4150c169282093f90cc3f5036f9a1b6b5f8a5516\" style=\"display:inline-block;padding:12px 24px;background:#0D8A72;color:#fff;\n    text-decoration:none;border-radius:8px;\">Create My Account</a></p>\n\n    <p style=\"color:#6B7280;font-size:.85rem;\">The code and link are valid for 7 days and can\n    only be used once. If you didn\'t request this, you can safely ignore this email.</p>', 'sent', 1, '2026-08-05 18:28:21', '2026-08-05 18:28:26', NULL, '2026-08-05 18:28:21'),
(47, 'nielrjaplos@gmail.com', 'You\'re invited to create your USMCI Admissions account', '    <h2>You\'re invited to continue your application</h2>\n    <p>Hi Niel J,</p>\n    <p>Thank you for your interest in USMCI\'s maritime training programs. You\'re invited to\n    create your Admissions Portal account to continue your application online.</p>\n\n    <p><strong>Your registration code:</strong></p>\n    <p style=\"font-size:1.25rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;background:#EAF6F2;\n    display:inline-block;padding:10px 20px;border-radius:10px;\">USMCI-INQ2026000012-5A68</p>\n\n    <p>Enter this code on the login page under <strong>Create Account</strong>, or use this direct link:</p>\n    <p><a href=\"http://localhost/USMCI-TMS/sections/admissions/register.php?token=e5e45f616cacdcb7d4fc384755d4b4b65ebd9252a8a834754d67caaec4183044\" style=\"display:inline-block;padding:12px 24px;background:#0D8A72;color:#fff;\n    text-decoration:none;border-radius:8px;\">Create My Account</a></p>\n\n    <p style=\"color:#6B7280;font-size:.85rem;\">The code and link are valid for 7 days and can\n    only be used once. If you didn\'t request this, you can safely ignore this email.</p>', 'sent', 1, '2026-08-05 18:28:48', '2026-08-05 18:28:53', NULL, '2026-08-05 18:28:48'),
(48, 'nielrjaplos@gmail.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi Niel J,</p>\n    <p>Hi Niel J,<br />\n<br />\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:<br />\n<br />\nUSMCI-INQ2026000012-5A68<br />\n<br />\nEnter it on our login page under &quot;Create Account&quot;. This code is valid for 7 days.<br />\n<br />\n— USMCI Admissions Office</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000012-5A68</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000012<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-05 18:30:22', '2026-08-05 18:30:26', NULL, '2026-08-05 18:30:22'),
(49, 'nielrjaplos@gmail.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi Niel J,</p>\n    <p>need to create account</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000012-5A68</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000012<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-05 19:24:33', '2026-08-05 19:24:38', NULL, '2026-08-05 19:24:33'),
(50, 'jd@gmail.com', 'You\'re invited to create your USMCI Admissions account', '    <h2>You\'re invited to continue your application</h2>\n    <p>Hi John Doe,</p>\n    <p>Thank you for your interest in USMCI\'s maritime training programs. You\'re invited to\n    create your Admissions Portal account to continue your application online.</p>\n\n    <p><strong>Your registration code:</strong></p>\n    <p style=\"font-size:1.25rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;background:#EAF6F2;\n    display:inline-block;padding:10px 20px;border-radius:10px;\">USMCI-INQ2026000002-518E</p>\n\n    <p>Enter this code on the login page under <strong>Create Account</strong>, or use this direct link:</p>\n    <p><a href=\"http://localhost/USMCI-TMS/sections/admissions/register.php?token=9b57b0843b7a3289f9a32a44f3a98a2f8f2e6856201e8bb5a5a39489ca86515e\" style=\"display:inline-block;padding:12px 24px;background:#0D8A72;color:#fff;\n    text-decoration:none;border-radius:8px;\">Create My Account</a></p>\n\n    <p style=\"color:#6B7280;font-size:.85rem;\">The code and link are valid for 7 days and can\n    only be used once. If you didn\'t request this, you can safely ignore this email.</p>', 'sent', 1, '2026-08-05 20:36:41', '2026-08-05 20:36:45', NULL, '2026-08-05 20:36:41'),
(51, 'jd@gmail.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi John Doe,</p>\n    <p>Hi John Doe,<br />\n<br />\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:<br />\n<br />\nUSMCI-INQ2026000002-518E<br />\n<br />\nEnter it on our login page under &quot;Create Account&quot;. This code is valid for 7 days.<br />\n<br />\n— USMCI Admissions Office</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000002-518E</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000002<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-05 20:36:49', '2026-08-05 20:36:54', NULL, '2026-08-05 20:36:49'),
(52, 'nieljaplos0924@gmail.com', 'You\'re invited to create your USMCI Admissions account', '    <h2>You\'re invited to continue your application</h2>\n    <p>Hi Jane Doe,</p>\n    <p>Thank you for your interest in USMCI\'s maritime training programs. You\'re invited to\n    create your Admissions Portal account to continue your application online.</p>\n\n    <p><strong>Your registration code:</strong></p>\n    <p style=\"font-size:1.25rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;background:#EAF6F2;\n    display:inline-block;padding:10px 20px;border-radius:10px;\">USMCI-INQ2026000022-DEA1</p>\n\n    <p>Enter this code on the login page under <strong>Create Account</strong>, or use this direct link:</p>\n    <p><a href=\"http://localhost/USMCI-TMS/sections/admissions/register.php?token=7374215e8646ead6392534b0a9cf5b92e5b46eed8a547b803d5105de00ee3b31\" style=\"display:inline-block;padding:12px 24px;background:#0D8A72;color:#fff;\n    text-decoration:none;border-radius:8px;\">Create My Account</a></p>\n\n    <p style=\"color:#6B7280;font-size:.85rem;\">The code and link are valid for 7 days and can\n    only be used once. If you didn\'t request this, you can safely ignore this email.</p>', 'sent', 1, '2026-08-05 21:09:46', '2026-08-05 21:09:51', NULL, '2026-08-05 21:09:46'),
(53, 'nieljaplos0924@gmail.com', 'Re: availability', '    <h2>Re: availability</h2>\n    <p>Hi Jane Doe,</p>\n    <p>Hi Jane Doe,<br />\n<br />\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:<br />\n<br />\nUSMCI-INQ2026000022-DEA1<br />\n<br />\nEnter it on our login page under &quot;Create Account&quot;. This code is valid for 7 days.<br />\n<br />\n— USMCI Admissions Office</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000022-DEA1</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000022<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-05 21:09:56', '2026-08-05 21:10:01', NULL, '2026-08-05 21:09:56'),
(54, 'zenramboanga@gmail.com', '[INQ-2026-000024] New Admissions Inquiry: availability', '<h2>New Admissions Inquiry</h2><p><strong>Inquiry No:</strong> INQ-2026-000024</p><p><strong>Name:</strong> JJ Japs</p><p><strong>Email:</strong> nieljaplos0924@gmail.com</p><p><strong>Mobile:</strong> 09053567243</p><p><strong>Reply-To:</strong> nieljaplos0924@gmail.com</p><hr><pre style=\"font-family:Arial,sans-serif;white-space:pre-wrap;\">Preferred Contact: Email\nPreferred Course: Ship Security Awareness\nPreferred Schedule: No Preference\nPreferred Date: 2026-08-24\n\ntset</pre>', 'pending', 0, '2026-08-05 21:35:12', NULL, NULL, '2026-08-05 21:35:12'),
(55, 'nieljaplos0924@gmail.com', 'We received your inquiry (INQ-2026-000024)', '    <h2>Thank you, JJ Japs!</h2>\n    <p>We have received your admissions inquiry and our team will get back to you\n    within one (1) business day.</p>\n    <p><strong>Your reference number:</strong> INQ-2026-000024</p>\n    <p><strong>Course of interest:</strong> Ship Security Awareness<br>\n       <strong>Subject:</strong> availability</p>\n    <p>Please keep your reference number — you may be asked for it when you\n    follow up with the Admissions Office.</p>\n    <p style=\"color:#6B7280;font-size:.85rem;\">— USMCI Admissions Office</p>', 'pending', 0, '2026-08-05 21:35:12', NULL, NULL, '2026-08-05 21:35:12'),
(56, 'nieljaplos0924@gmail.com', 'You\'re invited to create your USMCI Admissions account', '    <h2>You\'re invited to continue your application</h2>\n    <p>Hi JJ Japs,</p>\n    <p>Thank you for your interest in USMCI\'s maritime training programs. You\'re invited to\n    create your Admissions Portal account to continue your application online.</p>\n\n    <p><strong>Your registration code:</strong></p>\n    <p style=\"font-size:1.25rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;background:#EAF6F2;\n    display:inline-block;padding:10px 20px;border-radius:10px;\">USMCI-INQ2026000024-F0DD</p>\n\n    <p>Enter this code on the login page under <strong>Create Account</strong>, or use this direct link:</p>\n    <p><a href=\"http://localhost/USMCI-TMS/sections/admissions/register.php?token=2eefe6964972b6943ebc7edc5fddc064870143ba59122d3bb9894708cc7569dd\" style=\"display:inline-block;padding:12px 24px;background:#0D8A72;color:#fff;\n    text-decoration:none;border-radius:8px;\">Create My Account</a></p>\n\n    <p style=\"color:#6B7280;font-size:.85rem;\">The code and link are valid for 7 days and can\n    only be used once. If you didn\'t request this, you can safely ignore this email.</p>', 'sent', 1, '2026-08-05 21:50:41', '2026-08-05 21:50:47', NULL, '2026-08-05 21:50:41'),
(57, 'nieljaplos0924@gmail.com', 'Re: availability', '    <h2>Re: availability</h2>\n    <p>Hi JJ Japs,</p>\n    <p>Hi JJ Japs,<br />\n<br />\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:<br />\n<br />\nUSMCI-INQ2026000024-F0DD<br />\n<br />\nEnter it on our login page under &quot;Create Account&quot;. This code is valid for 7 days.<br />\n<br />\n— USMCI Admissions Office</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000024-F0DD</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000024<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-05 21:50:55', '2026-08-05 21:51:01', NULL, '2026-08-05 21:50:55'),
(58, 'nieljaplos0924@gmail.com', 'Re: availability', '    <h2>Re: availability</h2>\n    <p>Hi JJ Japs,</p>\n    <p>test reply</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000024-F0DD</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000024<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-05 22:49:51', '2026-08-05 22:49:56', NULL, '2026-08-05 22:49:51'),
(59, 'nieljaplos0924@gmail.com', 'Re: availability', '    <h2>Re: availability</h2>\n    <p>Hi JJ Japs,</p>\n    <p>test toast</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000024-F0DD</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000024<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-05 23:27:40', '2026-08-05 23:27:45', NULL, '2026-08-05 23:27:40'),
(60, 'nieljaplos0924@gmail.com', 'Re: availability', '    <h2>Re: availability</h2>\n    <p>Hi JJ Japs,</p>\n    <p>test toast</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000024-F0DD</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000024<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-05 23:59:38', '2026-08-05 23:59:43', NULL, '2026-08-05 23:59:38'),
(61, 'nieljaplos0924@gmail.com', 'You\'re invited to create your USMCI Admissions account', '    <h2>You\'re invited to continue your application</h2>\n    <p>Hi Jane Doe,</p>\n    <p>Thank you for your interest in USMCI\'s maritime training programs. You\'re invited to\n    create your Admissions Portal account to continue your application online.</p>\n\n    <p><strong>Your registration code:</strong></p>\n    <p style=\"font-size:1.25rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;background:#EAF6F2;\n    display:inline-block;padding:10px 20px;border-radius:10px;\">USMCI-INQ2026000021-8B4E</p>\n\n    <p>Enter this code on the login page under <strong>Create Account</strong>, or use this direct link:</p>\n    <p><a href=\"http://localhost/USMCI-TMS/sections/admissions/register.php?token=2e515ca0716e6d2770e6988311b65059c8f6f66ab6b4ad4b74f683e3fa3fd7de\" style=\"display:inline-block;padding:12px 24px;background:#0D8A72;color:#fff;\n    text-decoration:none;border-radius:8px;\">Create My Account</a></p>\n\n    <p style=\"color:#6B7280;font-size:.85rem;\">The code and link are valid for 7 days and can\n    only be used once. If you didn\'t request this, you can safely ignore this email.</p>', 'sent', 1, '2026-08-15 00:23:16', '2026-08-15 00:23:22', NULL, '2026-08-15 00:23:16'),
(62, 'n@g.com', 'You\'re invited to create your USMCI Admissions account', '    <h2>You\'re invited to continue your application</h2>\n    <p>Hi Juan Dela Cruz,</p>\n    <p>Thank you for your interest in USMCI\'s maritime training programs. You\'re invited to\n    create your Admissions Portal account to continue your application online.</p>\n\n    <p><strong>Your registration code:</strong></p>\n    <p style=\"font-size:1.25rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;background:#EAF6F2;\n    display:inline-block;padding:10px 20px;border-radius:10px;\">USMCI-INQ2026000001-2D91</p>\n\n    <p>Enter this code on the login page under <strong>Create Account</strong>, or use this direct link:</p>\n    <p><a href=\"http://localhost/USMCI-TMS/sections/admissions/register.php?token=ac126175382da7a2fa306083897869a7795ca376ab75c74cc8245d80251eb74a\" style=\"display:inline-block;padding:12px 24px;background:#0D8A72;color:#fff;\n    text-decoration:none;border-radius:8px;\">Create My Account</a></p>\n\n    <p style=\"color:#6B7280;font-size:.85rem;\">The code and link are valid for 7 days and can\n    only be used once. If you didn\'t request this, you can safely ignore this email.</p>', 'sent', 1, '2026-08-15 18:37:06', '2026-08-15 18:37:12', NULL, '2026-08-15 18:37:06'),
(63, 'n@g.com', 'Re: How much?', '    <h2>Re: How much?</h2>\n    <p>Hi Juan Dela Cruz,</p>\n    <p>Hi Juan Dela Cruz,<br />\n<br />\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:<br />\n<br />\nUSMCI-INQ2026000001-2D91<br />\n<br />\nEnter it on our login page under &quot;Create Account&quot;. This code is valid for 7 days.<br />\n<br />\nNo Slot Avialble for your inquiry<br />\n<br />\n— USMCI Admissions Office</p>\n        <div style=\"margin:18px 0;padding:16px 18px;background:#EAF6F2;border:2px dashed #0D8A72;border-radius:10px;\">\n        <p style=\"margin:0 0 6px;font-size:.78rem;font-weight:700;text-transform:uppercase;letter-spacing:.06em;color:#0B7A64;\">Your one-time registration code</p>\n        <p style=\"margin:0;font-size:1.3rem;font-weight:800;letter-spacing:.08em;color:#0B3C5D;\">USMCI-INQ2026000001-2D91</p>\n        <p style=\"margin:8px 0 0;font-size:.8rem;color:#64748B;\">Enter this code on our login page under <strong>Create Account</strong> to set your password and access your dashboard. Single-use · valid 7 days.</p>\n    </div>\n    <p style=\"color:#6B7280;font-size:.85rem;\">\n        Reference: INQ-2026-000001<br>\n        — USMCI Admissions Office\n    </p>', 'sent', 1, '2026-08-15 18:37:43', '2026-08-15 18:37:52', NULL, '2026-08-15 18:37:43');
INSERT INTO `email_queue` (`id`, `recipient_email`, `subject`, `body_html`, `status`, `attempts`, `scheduled_at`, `sent_at`, `error_message`, `created_at`) VALUES
(64, 'manilahousesoundtech@gmail.com', 'Your USMCI Trainee Portal Account', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jenny Simpon</strong>,</p><p>Your enrollment as a <strong>walk-in</strong> trainee is complete. Here are your Trainee Portal credentials:</p><p style=\"background:#F8FAFC;border:1px dashed #0D8A72;border-radius:8px;padding:12px 16px;\"><strong>Username:</strong> manilahousesoundtech@gmail.com<br><strong>Temporary password:</strong> Walk-EDDC7706</p><p>Please log in at <a href=\"http://localhost/USMCI-TMS/login.php\">the Trainee Portal</a> and change your password.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'pending', 0, '2026-08-16 19:03:56', NULL, NULL, '2026-08-16 19:03:56'),
(65, 'manilahousesoundtech@gmail.com', 'Enrollment Confirmation — ENR-2026-000010', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jenny Simpon</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Basic Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000010</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026 - 030 · BT - Cavite</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 12, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Simulation Room</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 15,000.00 (Payment PAY-2026-000008)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-12</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 22:33:58', '2026-08-16 22:34:07', NULL, '2026-08-16 22:33:58'),
(66, 'manilahousesoundtech@gmail.com', 'Enrollment Confirmation — ENR-2026-000010', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jenny Simpon</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Basic Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000010</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026 - 030 · BT - Cavite</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 12, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Simulation Room</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 15,000.00 (Payment PAY-2026-000008)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-12</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 22:34:07', '2026-08-16 22:34:14', NULL, '2026-08-16 22:34:07'),
(67, 'manilahousesoundtech@gmail.com', 'Enrollment Confirmation — ENR-2026-000010', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jenny Simpon</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Basic Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000010</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026 - 030 · BT - Cavite</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 12, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Simulation Room</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 15,000.00 (Payment PAY-2026-000008)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-12</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 22:34:14', '2026-08-16 22:34:22', NULL, '2026-08-16 22:34:14'),
(68, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:01', '2026-08-16 23:55:07', NULL, '2026-08-16 23:55:01'),
(69, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:07', '2026-08-16 23:55:14', NULL, '2026-08-16 23:55:07'),
(70, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:14', '2026-08-16 23:55:20', NULL, '2026-08-16 23:55:14'),
(71, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:20', '2026-08-16 23:55:26', NULL, '2026-08-16 23:55:20'),
(72, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:26', '2026-08-16 23:55:32', NULL, '2026-08-16 23:55:26'),
(73, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:32', '2026-08-16 23:55:37', NULL, '2026-08-16 23:55:32'),
(74, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:37', '2026-08-16 23:55:43', NULL, '2026-08-16 23:55:37'),
(75, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:43', '2026-08-16 23:55:49', NULL, '2026-08-16 23:55:43'),
(76, 'nieljaplos0924@gmail.com', 'Enrollment Confirmation — ENR-2026-000011', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jane Doe</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000011</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000010)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:55:49', '2026-08-16 23:55:54', NULL, '2026-08-16 23:55:49'),
(77, 'manilahouse1111@gmail.com', 'Your USMCI Trainee Portal Account', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jessica Last</strong>,</p><p>Your enrollment as a <strong>walk-in</strong> trainee is complete. Here are your Trainee Portal credentials:</p><p style=\"background:#F8FAFC;border:1px dashed #0D8A72;border-radius:8px;padding:12px 16px;\"><strong>Username:</strong> manilahouse1111@gmail.com<br><strong>Temporary password:</strong> Walk-A04DE360</p><p>Please log in at <a href=\"http://localhost/USMCI-TMS/login.php\">the Trainee Portal</a> and change your password.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-16 23:57:25', '2026-08-16 23:57:32', NULL, '2026-08-16 23:57:25'),
(78, 'cdc@g.com', 'Your USMCI Trainee Portal Account', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Celia Dela Cruz</strong>,</p><p>Your enrollment as a <strong>walk-in</strong> trainee is complete. Here are your Trainee Portal credentials:</p><p style=\"background:#F8FAFC;border:1px dashed #0D8A72;border-radius:8px;padding:12px 16px;\"><strong>Username:</strong> cdc@g.com<br><strong>Temporary password:</strong> Walk-0B1B90F5</p><p>Please log in at <a href=\"http://localhost/USMCI-TMS/login.php\">the Trainee Portal</a> and change your password.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:24:09', '2026-08-17 00:24:19', NULL, '2026-08-17 00:24:09'),
(79, 'cdc@g.com', 'Enrollment Confirmation — ENR-2026-000013', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Celia Dela Cruz</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000013</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:27:05', '2026-08-17 00:27:13', NULL, '2026-08-17 00:27:05'),
(80, 'cdc@g.com', 'Enrollment Confirmation — ENR-2026-000013', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Celia Dela Cruz</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000013</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:27:13', '2026-08-17 00:27:19', NULL, '2026-08-17 00:27:13'),
(81, 'cdc@g.com', 'Enrollment Confirmation — ENR-2026-000013', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Celia Dela Cruz</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000013</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:27:19', '2026-08-17 00:27:26', NULL, '2026-08-17 00:27:19'),
(82, 'cdc@g.com', 'Enrollment Confirmation — ENR-2026-000013', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Celia Dela Cruz</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000013</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:27:26', '2026-08-17 00:27:33', NULL, '2026-08-17 00:27:26'),
(83, 'cdc@g.com', 'Enrollment Confirmation — ENR-2026-000013', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Celia Dela Cruz</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000013</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:27:33', '2026-08-17 00:27:41', NULL, '2026-08-17 00:27:33'),
(84, 'manilahouse1111@gmail.com', 'Enrollment Confirmation — ENR-2026-000012', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jessica Last</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000012</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000011)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:27:41', '2026-08-17 00:27:48', NULL, '2026-08-17 00:27:41'),
(85, 'manilahouse1111@gmail.com', 'Enrollment Confirmation — ENR-2026-000012', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jessica Last</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000012</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000011)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:27:48', '2026-08-17 00:27:55', NULL, '2026-08-17 00:27:48'),
(86, 'manilahouse1111@gmail.com', 'Enrollment Confirmation — ENR-2026-000012', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jessica Last</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000012</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000011)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 00:27:55', '2026-08-17 00:28:02', NULL, '2026-08-17 00:27:55'),
(87, 'cdc@g.com', 'Enrollment Confirmation — ENR-2026-000014', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Celia Dela Cruz</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Basic Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000014</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026 - 030 · BT - Cavite</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 12, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Simulation Room</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 15,000.00 (Payment PAY-2026-000012)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-12</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 13:34:48', '2026-08-17 13:34:55', NULL, '2026-08-17 13:34:48');
INSERT INTO `email_queue` (`id`, `recipient_email`, `subject`, `body_html`, `status`, `attempts`, `scheduled_at`, `sent_at`, `error_message`, `created_at`) VALUES
(88, 'jsotto@gmail.com', 'Your USMCI Trainee Portal Account', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jacob Sotto</strong>,</p><p>Your enrollment as a <strong>walk-in</strong> trainee is complete. Here are your Trainee Portal credentials:</p><p style=\"background:#F8FAFC;border:1px dashed #0D8A72;border-radius:8px;padding:12px 16px;\"><strong>Username:</strong> jsotto@gmail.com<br><strong>Temporary password:</strong> 12345678</p><p>Please log in at <a href=\"http://localhost/USMCI-TMS/login.php\">the Trainee Portal</a> and change your password.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 14:42:57', '2026-08-17 14:43:03', NULL, '2026-08-17 14:42:57'),
(89, 'jsotto@gmail.com', 'Enrollment Confirmation — ENR-2026-000015', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Jacob Sotto</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000015</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 14:45:44', '2026-08-17 14:45:51', NULL, '2026-08-17 14:45:44'),
(90, 'glacson@g.com', 'Your USMCI Trainee Portal Account', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Grace Lacsoc</strong>,</p><p>Your enrollment as a <strong>walk-in</strong> trainee is complete. Here are your Trainee Portal credentials:</p><p style=\"background:#F8FAFC;border:1px dashed #0D8A72;border-radius:8px;padding:12px 16px;\"><strong>Username:</strong> glacson@g.com<br><strong>Temporary password:</strong> 12345678</p><p>Please log in at <a href=\"http://localhost/USMCI-TMS/login.php\">the Trainee Portal</a> and change your password.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 15:24:23', '2026-08-17 15:24:31', NULL, '2026-08-17 15:24:23'),
(91, 'glacson@g.com', 'Enrollment Confirmation — ENR-2026-000017', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Grace Lacsoc</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000017</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000013)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 15:29:44', '2026-08-17 15:29:51', NULL, '2026-08-17 15:29:44'),
(92, 'glacson@g.com', 'Enrollment Confirmation — ENR-2026-000016', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Grace Lacsoc</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Basic Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000016</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026 - 030 · BT - Cavite</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 12, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Simulation Room</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-17 15:31:40', '2026-08-17 15:31:47', NULL, '2026-08-17 15:31:40'),
(93, 'glacson@g.com', 'Enrollment Confirmation — ENR-2026-000018', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Grace Lacsoc</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Basic Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000018</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026 - 030 · BT - Cavite</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 12, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Simulation Room</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 15,000.00 (Payment PAY-2026-000014)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-12</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-18 00:42:37', '2026-08-18 00:42:44', NULL, '2026-08-18 00:42:37'),
(94, 'glacson@g.com', 'Enrollment Confirmation — ENR-2026-000019', '<div style=\"font-family:Arial,Helvetica,sans-serif;max-width:600px;margin:0 auto;border:1px solid #E2E8F0;border-radius:12px;overflow:hidden;\"><div style=\"background:linear-gradient(135deg,#0B3C5D,#114B73);color:#fff;padding:18px 24px;\"><div style=\"font-weight:800;font-size:16px;\">USMCI — Training Management System</div><div style=\"font-size:12px;opacity:.85;\">United Seafarers Maritime Center, Inc.</div></div><div style=\"padding:22px 24px;color:#334155;font-size:14px;line-height:1.6;\"><p>Dear <strong>Grace Lacsoc</strong>,</p><p>You are now <strong>enrolled</strong> in <strong>Safety Training</strong>.</p><table style=\"border-collapse:collapse;width:100%;font-size:13px;\"><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Registration No.</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">ENR-2026-000019</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Batch</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">SFT - 009 · Mindoro Batch 12</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Schedule</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">Aug 31, 2026 → Sep 04, 2026</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Location</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">USMCI Main Campus — Hall B</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Course Fee</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">₱ 1,500.00 (Payment PAY-2026-000015)</td></tr><tr><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\"><strong>Due Date</strong></td><td style=\"padding:6px 10px;border:1px solid #E2E8F0;\">2026-09-04</td></tr></table><p>Kindly come on time. Training is forfeited if you miss the schedule; a 15-minute grace period is allowed.</p></div><div style=\"background:#F8FAFC;padding:14px 24px;font-size:11px;color:#94A3B8;border-top:1px solid #E2E8F0;\">USMCI Admissions · zenramboanga@gmail.com</div></div>', 'sent', 1, '2026-08-18 00:43:02', '2026-08-18 00:43:08', NULL, '2026-08-18 00:43:02');

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
  `endorsed_by` varchar(200) DEFAULT NULL,
  `endorser_type` enum('company','marketing') NOT NULL DEFAULT 'marketing',
  `charge_to` enum('company','trainee') NOT NULL DEFAULT 'trainee',
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `enrollment_date` date NOT NULL,
  `status` enum('pending','enrolled','cancelled','completed','no_show') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `enrollment_no`, `application_id`, `applicant_id`, `course_id`, `training_id`, `endorsed_by`, `endorser_type`, `charge_to`, `company_id`, `remarks`, `enrollment_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ENR-2026-000001', 1, 1, 2, NULL, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-11', 'enrolled', '2026-08-11 22:10:39', '2026-08-13 21:26:36'),
(2, 'ENR-2026-000002', 1, 1, 3, NULL, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-11', 'enrolled', '2026-08-11 22:11:00', '2026-08-13 20:38:50'),
(3, 'ENR-2026-000003', 1, 1, 3, NULL, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-11', 'enrolled', '2026-08-11 22:47:10', '2026-08-13 00:45:29'),
(4, 'ENR-2026-000004', 2, 2, 2, 4, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-13', 'enrolled', '2026-08-13 23:23:13', '2026-08-13 23:23:27'),
(5, 'ENR-2026-000005', 1, 1, 2, 4, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-14', 'completed', '2026-08-14 19:43:49', '2026-08-17 13:34:13'),
(6, 'ENR-2026-000006', 3, 3, 2, 4, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-14', 'completed', '2026-08-14 21:16:08', '2026-08-14 21:24:30'),
(7, 'ENR-2026-000007', 4, 4, 2, 6, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-14', 'pending', '2026-08-14 23:16:01', NULL),
(8, 'ENR-2026-000008', 5, 5, 2, 4, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-15', 'pending', '2026-08-15 00:11:52', NULL),
(9, 'ENR-2026-000009', 6, 8, 2, 4, NULL, 'marketing', 'trainee', NULL, NULL, '2026-08-16', 'completed', '2026-08-16 16:30:30', '2026-08-18 00:37:38'),
(10, 'ENR-2026-000010', 7, 9, 2, 4, 'gambit', 'marketing', 'trainee', NULL, 'payment thru bank', '2026-08-16', 'completed', '2026-08-16 19:03:56', '2026-08-17 23:34:24'),
(11, 'ENR-2026-000011', 1, 1, 1, 7, 'Jean', 'marketing', 'trainee', NULL, NULL, '2026-08-16', 'completed', '2026-08-16 23:50:08', '2026-08-18 17:57:58'),
(12, 'ENR-2026-000012', 8, 13, 1, 7, 'Jean', 'marketing', 'trainee', NULL, NULL, '2026-08-16', 'enrolled', '2026-08-16 23:57:25', '2026-08-17 00:27:55'),
(13, 'ENR-2026-000013', 9, 14, 1, 7, 'Jean', 'company', 'company', 1, NULL, '2026-08-17', 'completed', '2026-08-17 00:24:09', '2026-08-17 13:32:05'),
(14, 'ENR-2026-000014', 9, 14, 2, 4, 'Jean', 'marketing', 'trainee', NULL, NULL, '2026-08-17', 'completed', '2026-08-17 13:31:00', '2026-08-18 00:09:22'),
(15, 'ENR-2026-000015', 10, 18, 1, 7, 'Scotch', 'company', 'company', 1, NULL, '2026-08-17', 'enrolled', '2026-08-17 14:42:57', '2026-08-17 14:45:44'),
(16, 'ENR-2026-000016', 11, 19, 2, 4, 'Scotch', 'company', 'company', 1, NULL, '2026-08-17', 'completed', '2026-08-17 15:24:23', '2026-08-17 17:41:20'),
(17, 'ENR-2026-000017', 11, 19, 1, 7, 'Jean', 'marketing', 'trainee', NULL, NULL, '2026-08-17', 'completed', '2026-08-17 15:29:13', '2026-08-17 17:04:55'),
(18, 'ENR-2026-000018', 11, 19, 2, 4, 'Jean', 'marketing', 'trainee', NULL, NULL, '2026-08-17', 'enrolled', '2026-08-17 20:08:19', '2026-08-18 00:42:37'),
(19, 'ENR-2026-000019', 11, 19, 1, 7, 'Jean', 'marketing', 'trainee', NULL, NULL, '2026-08-17', 'enrolled', '2026-08-17 20:55:51', '2026-08-18 00:43:02'),
(20, 'ENR-2026-000020', 10, 18, 2, 4, 'Scotch', 'company', 'company', 1, NULL, '2026-08-17', 'completed', '2026-08-17 20:56:36', '2026-08-18 18:03:13');

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

--
-- Dumping data for table `enrollment_history`
--

INSERT INTO `enrollment_history` (`id`, `enrollment_id`, `old_status`, `new_status`, `remarks`, `changed_by`, `created_at`) VALUES
(1, 1, NULL, 'pending', NULL, 1, '2026-08-11 22:10:39'),
(2, 2, NULL, 'pending', NULL, 1, '2026-08-11 22:11:00'),
(3, 3, NULL, 'pending', NULL, 1, '2026-08-11 22:47:10'),
(4, 3, 'pending', 'enrolled', NULL, 1, '2026-08-13 00:45:29'),
(5, 2, 'pending', 'enrolled', NULL, 1, '2026-08-13 20:38:50'),
(6, 1, 'pending', 'enrolled', NULL, 1, '2026-08-13 21:26:36'),
(7, 4, NULL, 'pending', NULL, 1, '2026-08-13 23:23:13'),
(8, 4, 'pending', 'enrolled', NULL, 1, '2026-08-13 23:23:27'),
(9, 5, NULL, 'enrolled', NULL, 1, '2026-08-14 19:43:49'),
(10, 6, NULL, 'enrolled', NULL, 1, '2026-08-14 21:16:08'),
(11, 6, 'enrolled', 'completed', NULL, 1, '2026-08-14 21:24:30'),
(12, 7, NULL, 'pending', NULL, 1, '2026-08-14 23:16:01'),
(13, 8, NULL, 'pending', NULL, 1, '2026-08-15 00:11:52'),
(14, 9, NULL, 'pending', NULL, 1, '2026-08-16 16:30:30'),
(15, 10, NULL, 'pending', NULL, 1, '2026-08-16 19:03:56'),
(16, 9, 'pending', 'enrolled', NULL, 1, '2026-08-16 19:38:32'),
(17, 10, 'pending', 'enrolled', NULL, 1, '2026-08-16 19:38:47'),
(18, 10, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 20:46:45'),
(19, 10, 'enrolled', 'cancelled', NULL, 1, '2026-08-16 21:44:14'),
(20, 10, 'cancelled', 'enrolled', NULL, 1, '2026-08-16 22:33:58'),
(21, 10, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 22:34:07'),
(22, 10, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 22:34:14'),
(23, 11, NULL, 'pending', NULL, 1, '2026-08-16 23:50:08'),
(24, 11, 'pending', 'enrolled', NULL, 1, '2026-08-16 23:55:01'),
(25, 11, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 23:55:07'),
(26, 11, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 23:55:14'),
(27, 11, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 23:55:20'),
(28, 11, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 23:55:26'),
(29, 11, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 23:55:32'),
(30, 11, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 23:55:37'),
(31, 11, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 23:55:43'),
(32, 11, 'enrolled', 'enrolled', NULL, 1, '2026-08-16 23:55:49'),
(33, 12, NULL, 'pending', NULL, 1, '2026-08-16 23:57:25'),
(34, 13, NULL, 'pending', NULL, 1, '2026-08-17 00:24:09'),
(35, 13, 'pending', 'enrolled', NULL, 1, '2026-08-17 00:27:05'),
(36, 13, 'enrolled', 'enrolled', NULL, 1, '2026-08-17 00:27:13'),
(37, 13, 'enrolled', 'enrolled', NULL, 1, '2026-08-17 00:27:19'),
(38, 13, 'enrolled', 'enrolled', NULL, 1, '2026-08-17 00:27:26'),
(39, 13, 'enrolled', 'enrolled', NULL, 1, '2026-08-17 00:27:33'),
(40, 12, 'pending', 'enrolled', NULL, 1, '2026-08-17 00:27:41'),
(41, 12, 'enrolled', 'enrolled', NULL, 1, '2026-08-17 00:27:48'),
(42, 12, 'enrolled', 'enrolled', NULL, 1, '2026-08-17 00:27:55'),
(43, 14, NULL, 'pending', NULL, 1, '2026-08-17 13:31:00'),
(44, 13, 'enrolled', 'completed', NULL, 1, '2026-08-17 13:32:05'),
(45, 5, 'enrolled', 'completed', NULL, 1, '2026-08-17 13:34:13'),
(46, 14, 'pending', 'enrolled', NULL, 1, '2026-08-17 13:34:48'),
(47, 15, NULL, 'pending', NULL, 1, '2026-08-17 14:42:57'),
(48, 15, 'pending', 'enrolled', NULL, 1, '2026-08-17 14:45:44'),
(49, 16, NULL, 'pending', NULL, 1, '2026-08-17 15:24:23'),
(50, 17, NULL, 'pending', NULL, 1, '2026-08-17 15:29:13'),
(51, 17, 'pending', 'enrolled', NULL, 1, '2026-08-17 15:29:43'),
(52, 16, 'pending', 'enrolled', NULL, 1, '2026-08-17 15:31:40'),
(53, 17, 'enrolled', 'completed', NULL, 1, '2026-08-17 17:04:55'),
(54, 16, 'enrolled', 'completed', NULL, 1, '2026-08-17 17:41:20'),
(55, 18, NULL, 'pending', NULL, 1, '2026-08-17 20:08:19'),
(56, 19, NULL, 'pending', NULL, 1, '2026-08-17 20:55:51'),
(57, 20, NULL, 'pending', NULL, 1, '2026-08-17 20:56:36'),
(58, 20, 'pending', 'completed', NULL, 1, '2026-08-17 20:57:11'),
(59, 10, 'enrolled', 'completed', NULL, 1, '2026-08-17 23:34:24'),
(60, 14, 'enrolled', 'completed', NULL, 1, '2026-08-18 00:09:22'),
(61, 9, 'enrolled', 'completed', NULL, 1, '2026-08-18 00:37:38'),
(62, 18, 'pending', 'enrolled', NULL, 1, '2026-08-18 00:42:37'),
(63, 19, 'pending', 'enrolled', NULL, 1, '2026-08-18 00:43:02'),
(64, 11, 'enrolled', 'completed', NULL, 1, '2026-08-18 17:57:58');

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
(1, 'INQ-2026-000001', 2, 7, 'Juan Dela Cruz', 'n@g.com', '12345678', NULL, NULL, NULL, NULL, 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-20\n\ntest 101', 'website', 2, 1, '2026-07-08 15:53:42', '2026-08-15 18:37:43'),
(2, 'INQ-2026-000002', 2, 3, 'John Doe', 'jd@gmail.com', '6669993333', 'Email', 'Basic Training', 'No Preference', '2026-07-27', 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: No Preference\nPreferred Date: 2026-07-27\n\nhow much the BT', 'website', 2, 1, '2026-07-08 20:29:18', '2026-08-05 20:36:49'),
(3, 'INQ-2026-000003', 2, NULL, 'Maria Silya', 'MS@gmail.com', '12345678', 'Email', 'Ship Security Awareness', 'Morning', '2026-08-03', 'availability', 'Preferred Contact: Email\nPreferred Course: Ship Security Awareness\nPreferred Schedule: Morning\nPreferred Date: 2026-08-03\n\nhi', 'website', 1, NULL, '2026-07-09 12:20:07', '2026-08-01 05:17:21'),
(4, 'INQ-2026-000004', 2, NULL, 'Lyka', 'l@gmail.com', '987', 'Email', 'Medical First Aid', 'Morning', '2026-07-22', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-07-22\n\nhi', 'website', 1, NULL, '2026-07-09 12:31:23', '2026-08-01 05:17:21'),
(5, 'INQ-2026-000005', 2, NULL, 'lhyn', 'l@gmail.com', '996699', 'Email', 'Advanced Fire Fighting', 'Morning', '2026-07-17', 'availability', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-17\n\nhi', 'website', 1, NULL, '2026-07-09 17:08:26', '2026-08-01 05:17:21'),
(6, 'INQ-2026-000006', 2, NULL, 'Arnold', 'a@gmail.com', '55882236', 'Email', 'Basic Training', 'Morning', '2026-07-30', 'How much?', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-30\n\nhi', 'website', 1, NULL, '2026-07-09 17:14:14', '2026-08-01 05:17:21'),
(7, 'INQ-2026-000007', 2, NULL, 's', 's@g.c', 's', 'Email', 'Basic Training', 'Morning', '2026-08-06', 's', 'Preferred Contact: Email\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-08-06\n\ns', 'website', 1, NULL, '2026-07-09 22:40:23', '2026-08-01 05:17:21'),
(8, 'INQ-2026-000008', 2, NULL, '710', '7@10.c0m', '369852', 'Email', 'Advanced Fire Fighting', 'Morning', '2026-07-31', 'How much?', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-31\n\nlo', 'website', 1, NULL, '2026-07-10 08:21:47', '2026-08-01 05:17:21'),
(9, 'INQ-2026-000009', 2, NULL, 'h', 'h@g.com', '516', 'Email', 'Advanced Fire Fighting', 'Morning', '2026-07-28', 'availability', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-28\n\nfr', 'website', 1, NULL, '2026-07-11 15:54:13', '2026-08-01 05:17:21'),
(10, 'INQ-2026-000010', 2, NULL, 'test', 'g@g.com', '7777', 'Phone Call', 'Basic Training', 'Morning', '2026-07-23', 'How much?', 'Preferred Contact: Phone Call\nPreferred Course: Basic Training\nPreferred Schedule: Morning\nPreferred Date: 2026-07-23\n\ntest', 'website', 1, NULL, '2026-07-11 16:37:49', '2026-08-01 05:17:21'),
(11, 'INQ-2026-000011', 2, NULL, 'seven fifteen', '715@g.com', '99886633', 'Email', 'Advanced Fire Fighting', 'Morning', '2026-07-16', 'How much?', 'Preferred Contact: Email\nPreferred Course: Advanced Fire Fighting\nPreferred Schedule: Morning\nPreferred Date: 2026-07-16\n\nhi', 'website', 2, 1, '2026-07-15 06:40:19', '2026-08-02 08:38:26'),
(12, 'INQ-2026-000012', 2, 2, 'Niel J', 'nielrjaplos@gmail.com', '09053567243', 'Email', 'Proficiency in Survival Craft and Rescue Boats', 'Morning', '2026-08-10', 'How much?', 'Preferred Contact: Email\nPreferred Course: Proficiency in Survival Craft and Rescue Boats\nPreferred Schedule: Morning\nPreferred Date: 2026-08-10\n\nHow much and is there a slot left?', 'website', 2, 1, '2026-08-02 15:40:21', '2026-08-05 18:30:22'),
(13, 'INQ-2026-000013', 2, NULL, 'August', 'nielrjaplos@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'Test Mail', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nsending test 1 email', 'website', 2, 1, '2026-08-02 20:53:19', '2026-08-02 21:22:00'),
(14, 'INQ-2026-000014', 2, NULL, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 1, NULL, '2026-08-04 19:01:46', '2026-08-04 19:01:46'),
(15, 'INQ-2026-000015', 2, NULL, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 1, NULL, '2026-08-04 19:01:58', '2026-08-04 19:01:58'),
(16, 'INQ-2026-000016', 2, NULL, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 1, NULL, '2026-08-04 19:02:10', '2026-08-04 19:02:10'),
(17, 'INQ-2026-000017', 2, NULL, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 1, NULL, '2026-08-04 19:02:22', '2026-08-04 19:02:22'),
(18, 'INQ-2026-000018', 2, NULL, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 1, NULL, '2026-08-04 19:02:33', '2026-08-04 19:02:33'),
(19, 'INQ-2026-000019', 2, NULL, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 1, NULL, '2026-08-04 19:02:43', '2026-08-04 19:02:43'),
(20, 'INQ-2026-000020', 2, NULL, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 1, NULL, '2026-08-04 19:02:54', '2026-08-04 19:02:54'),
(21, 'INQ-2026-000021', 2, 6, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 3, 1, '2026-08-04 19:03:05', '2026-08-15 00:23:16'),
(22, 'INQ-2026-000022', 2, 1, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 2, 1, '2026-08-04 19:03:16', '2026-08-05 21:09:56'),
(23, 'INQ-2026-000023', 2, NULL, 'Jane Doe', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Medical First Aid', 'Morning', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Medical First Aid\nPreferred Schedule: Morning\nPreferred Date: 2026-08-24\n\nis the course available', 'website', 2, 1, '2026-08-04 19:03:26', '2026-08-04 19:37:48'),
(24, 'INQ-2026-000024', 2, 4, 'JJ Japs', 'nieljaplos0924@gmail.com', '09053567243', 'Email', 'Ship Security Awareness', 'No Preference', '2026-08-24', 'availability', 'Preferred Contact: Email\nPreferred Course: Ship Security Awareness\nPreferred Schedule: No Preference\nPreferred Date: 2026-08-24\n\ntset', 'website', 2, 1, '2026-08-05 21:35:12', '2026-08-05 21:50:55');

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

--
-- Dumping data for table `inquiry_reply`
--

INSERT INTO `inquiry_reply` (`id`, `inquiry_id`, `sender_type`, `sender_id`, `message`, `created_at`) VALUES
(1, 11, 'staff', 1, 'its still available, code to create ur accountis 2355', '2026-08-02 08:38:26'),
(2, 11, 'staff', 1, 'test send email from Zen', '2026-08-02 15:14:23'),
(3, 12, 'staff', 1, 'yes there a lot of slot available', '2026-08-02 15:40:56'),
(4, 12, 'staff', 1, 'send from Zen from TMS', '2026-08-02 19:10:24'),
(5, 12, 'staff', 1, 'Test 3 for sending email', '2026-08-02 20:51:00'),
(6, 13, 'staff', 1, 'Test 1 email from zen', '2026-08-02 21:22:00'),
(7, 13, 'staff', 1, 'Test sending to trainee', '2026-08-02 21:54:23'),
(8, 13, 'staff', 1, 'Test email reply from Zem to niel', '2026-08-02 22:10:55'),
(9, 13, 'staff', 1, 'email from USMCi Zen', '2026-08-02 22:49:15'),
(10, 23, 'staff', 1, 'test', '2026-08-04 19:37:48'),
(11, 22, 'staff', 1, 'Hi Jane Doe,\n\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:\n\nUSMCI-INQ2026000022-C049\n\nEnter it on our login page under \"Create Account\". This code is valid for 7 days.\n\n— USMCI Admissions Office', '2026-08-04 19:54:55'),
(12, 12, 'staff', 1, 'Hi Niel J,\n\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:\n\nUSMCI-INQ2026000012-5A68\n\nEnter it on our login page under \"Create Account\". This code is valid for 7 days.\n\n— USMCI Admissions Office', '2026-08-05 18:30:22'),
(13, 12, 'staff', 1, 'need to create account', '2026-08-05 19:24:33'),
(14, 2, 'staff', 1, 'Hi John Doe,\n\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:\n\nUSMCI-INQ2026000002-518E\n\nEnter it on our login page under \"Create Account\". This code is valid for 7 days.\n\n— USMCI Admissions Office', '2026-08-05 20:36:49'),
(15, 22, 'staff', 1, 'Hi Jane Doe,\n\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:\n\nUSMCI-INQ2026000022-DEA1\n\nEnter it on our login page under \"Create Account\". This code is valid for 7 days.\n\n— USMCI Admissions Office', '2026-08-05 21:09:56'),
(16, 24, 'staff', 1, 'Hi JJ Japs,\n\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:\n\nUSMCI-INQ2026000024-F0DD\n\nEnter it on our login page under \"Create Account\". This code is valid for 7 days.\n\n— USMCI Admissions Office', '2026-08-05 21:50:55'),
(17, 24, 'staff', 1, 'test reply', '2026-08-05 22:49:51'),
(18, 24, 'staff', 1, 'test toast', '2026-08-05 23:27:40'),
(19, 24, 'staff', 1, 'test toast', '2026-08-05 23:59:38'),
(20, 1, 'staff', 1, 'Hi Juan Dela Cruz,\n\nThank you for your inquiry. Please create your USMCI Admissions account using this one-time registration code:\n\nUSMCI-INQ2026000001-2D91\n\nEnter it on our login page under \"Create Account\". This code is valid for 7 days.\n\nNo Slot Avialble for your inquiry\n\n— USMCI Admissions Office', '2026-08-15 18:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_code` varchar(30) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `specialization` varchar(200) DEFAULT NULL,
  `license_no` varchar(100) DEFAULT NULL,
  `license_expiry` date DEFAULT NULL,
  `years_experience` int(11) DEFAULT 0,
  `rate_per_day` decimal(12,2) NOT NULL DEFAULT 0.00,
  `bio` text DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `instructor_code`, `first_name`, `middle_name`, `last_name`, `email`, `mobile_no`, `specialization`, `license_no`, `license_expiry`, `years_experience`, `rate_per_day`, `bio`, `photo_path`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '', 'Capt. A', '', 'Capt. A', 'capta@gmail.com', '', '', '', NULL, 0, 0.00, 'Test account', NULL, 1, '2026-08-12 22:43:45', '2026-08-12 22:44:02');

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
-- Table structure for table `mnt_affiliate`
--

CREATE TABLE `mnt_affiliate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `website_url` varchar(500) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'affiliation',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_affiliate`
--

INSERT INTO `mnt_affiliate` (`id`, `name`, `logo_path`, `website_url`, `type`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'MARINA — Maritime Industry Authority', 'uploads/affiliates/aff_1787280749_9d99b33b.png', 'https://marina.gov.ph', 'affiliation', 1, 1, '2026-08-20 22:17:53', '2026-08-21 10:52:29'),
(2, 'International Maritime Organization (IMO)', 'assets/images/site/affiliates/imo-placeholder.svg', 'https://www.imo.org', 'affiliation', 1, 2, '2026-08-20 22:17:53', NULL),
(3, 'Philippine Coast Guard (PCG)', 'assets/images/site/affiliates/pcg-placeholder.svg', 'https://coastguard.gov.ph', 'affiliation', 1, 3, '2026-08-20 22:17:53', NULL),
(4, 'ISO — International Organization for Standardization', 'assets/images/site/affiliates/iso-placeholder.svg', 'https://www.iso.org', 'affiliation', 0, 4, '2026-08-20 22:17:53', '2026-08-21 10:53:53'),
(5, 'Sample Manning Agency (Partner)', 'uploads/affiliates/aff_1787278145_4534527d.png', 'https://example.com/manning', 'partner', 1, 1, '2026-08-21 09:50:49', '2026-08-21 10:09:05'),
(6, 'Sample Shipping Line (Partner)', 'assets/images/site/affiliates/partner-shipping.svg', 'https://example.com/shipping', 'partner', 1, 2, '2026-08-21 09:50:49', NULL),
(7, 'Sample Crewing Services (Partner)', 'assets/images/site/affiliates/partner-crewing.svg', 'https://example.com/crewing', 'partner', 1, 3, '2026-08-21 09:50:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mnt_announcement`
--

CREATE TABLE `mnt_announcement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `message` text DEFAULT NULL,
  `announcement_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_announcement`
--

INSERT INTO `mnt_announcement` (`id`, `title`, `message`, `announcement_date`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Class Suspension — Friday Afternoon Batch', 'The Friday afternoon Basic Training (BT) session on the training ground is cancelled due to scheduled equipment maintenance. Affected trainees will be re-slotted to the Saturday morning make-up class.', '2026-08-21', 0, '2026-08-20 20:50:38', '2026-08-20 21:10:09'),
(2, 'Training Center Closed — August 24 (National Holiday)', 'The training center and office will be closed on Monday, August 24, 2026 (National Heroes Day). Classes resume on Tuesday, August 25. Scheduled enrollments on that day will be processed on the next working day.', '2026-08-24', 1, '2026-08-20 20:50:38', NULL),
(3, 'FF Batch 12 — Venue Change', 'Fire Fighting & Fire Prevention Batch 12 (September) will now be held at the Fire Training Ground instead of the Main Training Hall. Please report directly to the training ground on the first day.', '2026-09-07', 1, '2026-08-20 20:50:38', NULL),
(4, 'Fumigation  Schedule', 'Avoid coming to Training center due to fumigation schedule.', '2026-08-23', 1, '2026-08-20 21:11:56', NULL);

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
  `contact_person` varchar(150) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `contact_email` varchar(150) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_company`
--

INSERT INTO `mnt_company` (`id`, `code`, `company_name`, `company_type`, `contact_person`, `contact_number`, `contact_email`, `address`, `email`, `phone`, `website`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'MDO - 001', 'Mindoro Merchant Marine School', NULL, 'Scotch', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-08-16 20:57:41', '2026-08-16 21:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `mnt_contact_info`
--

CREATE TABLE `mnt_contact_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(10) NOT NULL DEFAULT '?',
  `label` varchar(80) NOT NULL,
  `value` varchar(255) NOT NULL,
  `href` varchar(500) DEFAULT NULL,
  `cta` varchar(80) DEFAULT NULL,
  `external` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_contact_info`
--

INSERT INTO `mnt_contact_info` (`id`, `icon`, `label`, `value`, `href`, `cta`, `external`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '📍', 'Main Office', 'G/F YMCA of Manila Bldg, 350 Antonio Villegas St, Ermita, Manila', NULL, NULL, 0, 1, 1, '2026-08-21 11:54:00', NULL),
(2, '🏗️', 'Training Site', '#1093 Antero Soriano Highway, Brgy. Lambingan, Tanza, Cavite', 'https://www.bing.com/maps/search?ty=0&v=2&sV=1&style=r&q=UNITED+SEAFARERS+MARITIME+CENTER%E2%80%A6&ss=id.ypid%3A3E9B4434F504BCA7', 'Get Directions →', 1, 2, 0, '2026-08-21 11:54:00', '2026-08-22 12:56:04'),
(3, '📘', 'Facebook', 'Follow us on Facebook', 'https://www.facebook.com/USMCI2010/', 'Visit Page →', 1, 3, 1, '2026-08-21 11:54:00', '2026-08-21 11:58:51'),
(4, '📸', 'Instagram', 'Follow us on Instagram', 'https://www.instagram.com/', 'Visit Profile →', 1, 4, 1, '2026-08-21 11:54:00', NULL),
(5, '📱', 'Mobile Number', '09971201553', NULL, NULL, 0, 5, 1, '2026-08-21 11:54:00', NULL),
(6, '☎️', 'Telephone', '8241-0881', NULL, NULL, 0, 6, 1, '2026-08-21 11:54:00', NULL),
(7, '✉️', 'Email', 'usmci2010@gmail.com', NULL, NULL, 0, 7, 1, '2026-08-21 11:54:00', NULL);

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
  `price_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `upcoming_batches` int(11) NOT NULL DEFAULT 0,
  `requires_medical` tinyint(1) NOT NULL DEFAULT 0,
  `requires_sea_service` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_course`
--

INSERT INTO `mnt_course` (`id`, `course_category_id`, `program_id`, `code`, `course_name`, `stcw_reference`, `marina_reference`, `duration_hours`, `validity_months`, `price_amount`, `upcoming_batches`, `requires_medical`, `requires_sea_service`, `description`, `photo_path`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'CT1', 'Safety Training', '', '', 8.00, 12, 1500.00, 0, 1, 1, '', NULL, 1, '2026-08-11 21:24:46', NULL),
(2, 1, NULL, 'BT-01', 'Basic Training', '', '', 120.00, 26, 15000.00, 0, 1, 0, 'Basic safety training', 'uploads/courses/course-1787153936-Screenshot_2024-10-10_161557.png', 1, '2026-08-11 21:41:41', '2026-08-19 23:38:56'),
(3, 2, NULL, 'BT-01R', 'Basic Training - Refresher', '', '', 24.00, 26, 2500.00, 0, 1, 0, 'Refresher Training', NULL, 1, '2026-08-11 22:07:09', '2026-08-13 00:11:01'),
(4, 4, NULL, 'mefa', 'Medical', '', '', NULL, NULL, 0.00, 0, 0, 0, 'Test Add Course', NULL, 1, '2026-08-18 21:00:47', '2026-08-19 22:38:08');

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
(1, 'VALID_ID', 'Valid ID', 'test Description Valid ID', 1, 1, '2026-07-08 07:22:14', '2026-08-18 19:34:22'),
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
-- Table structure for table `mnt_inquiry_status`
--

CREATE TABLE `mnt_inquiry_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(30) NOT NULL,
  `label` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_inquiry_status`
--

INSERT INTO `mnt_inquiry_status` (`id`, `code`, `label`, `sort_order`) VALUES
(1, 'NEW', 'New', 1),
(2, 'REPLIED', 'Replied', 2),
(3, 'INVITED', 'Invited to Enroll', 3),
(4, 'CONVERTED', 'Account Created', 4),
(5, 'CLOSED', 'Closed', 5);

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
-- Table structure for table `mnt_rank_position`
--

CREATE TABLE `mnt_rank_position` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_rank_position`
--

INSERT INTO `mnt_rank_position` (`id`, `name`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Oiler', 1, 1, '2026-08-16 17:10:08', NULL),
(2, 'Deck Cadet', 1, 2, '2026-08-16 17:10:08', NULL),
(3, 'Able Seaman', 1, 3, '2026-08-16 17:10:08', NULL),
(4, 'Ordinary Seaman', 1, 4, '2026-08-16 17:10:08', NULL),
(5, '2nd Engineer', 1, 5, '2026-08-16 17:10:08', NULL),
(6, '3rd Engineer', 1, 6, '2026-08-16 17:10:08', NULL),
(7, '4th Engineer', 1, 7, '2026-08-16 17:10:08', NULL),
(8, 'Motorman', 1, 8, '2026-08-16 17:10:08', NULL),
(9, 'Chief Cook', 1, 9, '2026-08-16 17:10:08', NULL),
(10, 'Messman', 1, 10, '2026-08-16 17:10:08', NULL),
(11, 'Bosun', 1, 11, '2026-08-16 17:10:08', NULL),
(12, 'Cadet', 1, 12, '2026-08-16 17:10:08', NULL);

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

--
-- Dumping data for table `mnt_system_setting`
--

INSERT INTO `mnt_system_setting` (`id`, `setting_key`, `setting_value`, `data_type`, `description`, `is_public`, `created_at`, `updated_at`) VALUES
(1, 'smtp_host', 'smtp.gmail.com', 'string', NULL, 0, '2026-08-02 22:43:55', '2026-08-17 14:37:35'),
(2, 'smtp_port', '587', 'number', NULL, 0, '2026-08-02 22:43:55', '2026-08-17 14:37:35'),
(3, 'smtp_encryption', 'tls', 'string', NULL, 0, '2026-08-02 22:43:55', '2026-08-17 14:37:35'),
(4, 'smtp_username', 'zenramboanga@gmail.com', 'string', NULL, 0, '2026-08-02 22:43:55', '2026-08-17 14:37:35'),
(5, 'smtp_password', 'fboc arsp czev utpo', 'string', NULL, 0, '2026-08-02 22:43:55', '2026-08-17 14:37:35'),
(6, 'mail_from_email', 'zenramboanga@gmail.com', 'string', NULL, 0, '2026-08-02 22:43:55', '2026-08-17 14:37:35'),
(7, 'mail_from_name', 'USMCI Admissions', 'string', NULL, 0, '2026-08-02 22:43:55', '2026-08-17 14:37:35'),
(8, 'admin_notify_email', 'zenramboanga@gmail.com', 'string', NULL, 0, '2026-08-02 22:43:55', '2026-08-17 14:37:35'),
(25, 'rule_enroll_marketing_require_paid', '1', 'boolean', 'Marketing/Endorser: require payment before the enrollment can be marked Enrolled', 0, '2026-08-17 16:59:35', NULL),
(26, 'rule_enroll_company_require_paid', '0', 'boolean', 'Company-Endorsed: require payment before the enrollment can be marked Enrolled', 0, '2026-08-17 16:59:35', NULL),
(27, 'rule_auto_enroll_on_payment', '1', 'boolean', 'Auto-update a Pending enrollment to Enrolled when a payment is recorded', 0, '2026-08-17 16:59:35', NULL),
(28, 'rule_cert_marketing_require_paid', '1', 'boolean', 'Marketing/Endorser: payment required before a certificate can be issued', 0, '2026-08-17 16:59:35', NULL),
(29, 'rule_cert_company_allow_unpaid', '1', 'boolean', 'Company-Endorsed: certificate may be issued even when no payment was received', 0, '2026-08-17 16:59:35', NULL),
(30, 'rule_cert_require_enrolled_status', '0', 'boolean', 'Certificate requires the enrollment to be Enrolled or Completed (OFF = Pending allowed where permitted)', 0, '2026-08-17 16:59:35', NULL),
(31, 'rule_auto_complete_on_cert', '1', 'boolean', 'Auto-update the enrollment to Completed when a certificate is issued', 0, '2026-08-17 16:59:35', NULL),
(32, 'rule_enroll_require_docs', '0', 'boolean', 'Require all requirement documents before an enrollment can be marked Enrolled (Docs: X/Y indicator)', 0, '2026-08-17 17:57:54', NULL),
(33, 'report_org_name', 'UNITED SEAFARERS MARITIME CENTER INC', 'string', 'Report letterhead: organization name', 0, '2026-08-17 20:02:30', NULL),
(34, 'report_org_address', 'G/F YMCA OF MANILA BLDG 350 ANTONIO VILLEGAS ST ERMITA MANILA', 'string', 'Report letterhead: address', 0, '2026-08-17 20:02:30', NULL),
(35, 'report_tel_no', 'TEL NO: 8241-0881', 'string', 'Report letterhead: telephone', 0, '2026-08-17 20:02:30', NULL),
(36, 'report_mobile_no', 'MOBILE NO: 09971201553', 'string', 'Report letterhead: mobile', 0, '2026-08-17 20:02:30', NULL),
(37, 'report_email', 'usmci2010@gmail.com', 'string', 'Report letterhead: email', 0, '2026-08-17 20:02:30', NULL),
(38, 'report_footer', '', 'string', 'Report letterhead: footer note (optional)', 0, '2026-08-17 20:02:30', NULL),
(39, 'site_about_intro', 'United Seafarers Maritime Center (USMC) — a company duly approved and recognized by the Securities and Exchange Commission (CS201008536), operated and maintained by a dynamic group of professionals with more than 20 years of experience in the maritime training industry.', 'string', 'Website About: intro / tagline', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(40, 'site_about_story', 'United Seafarers Maritime Center is a company duly approved and recognized by the Securities and Exchange Commission with Company Registration Number CS201008536. It is operated and maintained by a dynamic group of Professionals with extensive and diverse experience in the Maritime Training Industry for more than 20 years. USMC was formed with the main objective of providing the highest quality of training products with intense focus on affordability and speed of service. It aims to become the premier destination of Filipino Seafarers for all their training and assessment needs.', 'string', 'Website About: Our Story', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(41, 'site_about_mission', 'Develop STCW-based training programs that will satisfy the National and International Requirements of Seafarers\r\nProvide specialized training programs that will compliment the competence of seafarers', 'string', 'Website About: Mission (one item per line)', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(42, 'site_about_vision', 'United Seafarers Maritime Center shall be a world class and globally recognized maritime institution to offer training and competency assessment.', 'string', 'Website About: Vision statement', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(43, 'site_about_vision_points', 'Accessible, innovative and fast services to the required trainings and assessments of the Filipino Seafarers\r\nState of the art delivery of instruction\r\nUp-to-date on board technology related training facilities and equipment\r\nWell trained and qualified training personnel that consistently exceed the expectations of the clients with regards to quality, safety and reliability, service satisfaction and environmental responsibilities', 'string', 'Website About: Vision pillars (one per line)', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(44, 'site_about_quality', 'Our Quality Management System exemplifies constant drive to satisfy our clientele, while always being mindful of our responsibility to Philippine Legislation, Standards, Employees and the broader community. We operate a Quality Management System that meets the requirements of ISO 9001:2015 — encouraging the active participation, endeavour and contribution of ideas from all personnel.', 'string', 'Website About: Quality / ISO commitment', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(45, 'site_about_core_values', 'Safety First: We place the safety of seafarers, the public and the environment above all else.\r\nExcellence in Training: We deliver internationally recognized, STCW-based programs of the highest standard.\r\nIntegrity & Transparency: We operate with honesty, accountability and full compliance with SEC and ISO standards.\r\nCustomer-Care: We put the Filipino seafarer at the heart of every service we provide.\r\nGlobal Readiness: We prepare seafarers for world-class careers on the global stage.', 'string', 'Website About: Core values (one per line, format: Title: description)', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(46, 'site_about_accreditations', 'SEC Registered — CS201008536\r\nISO 9001:2015 Certified\r\nMARINA Accredited\r\nPanama', 'string', 'Website About: Accreditations (one per line)', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(47, 'site_about_leader', 'Ms. Unknown\r\nTraining Director', 'string', 'Website About: Leadership (line 1 = name, line 2 = role)', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(48, 'site_about_photo', 'assets/images/site/facility-1.jpg', 'string', 'Website About: story photo path', 0, '2026-08-19 13:11:24', '2026-08-21 10:31:21'),
(59, 'site_about_carousel_dir', 'assets/images/site/carousel', 'string', 'Website About: folder scanned for carousel photos', 0, '2026-08-19 16:49:08', '2026-08-21 10:31:21'),
(60, 'site_about_manager_photo', 'assets/images/site/TD.jpg', 'string', 'Website About: Managing Director photo path', 0, '2026-08-19 16:49:08', '2026-08-21 10:31:21'),
(61, 'site_about_manager_message', 'Welcome to United Seafarers Maritime Center. For more than two decades we have dedicated ourselves to one mission: to prepare Filipino seafarers for the world — through quality training, modern facilities, and a team that puts the seafarer first. We invite you to train with us and experience the USMCI difference.', 'string', 'Website About: Managing Director message', 0, '2026-08-19 16:49:08', '2026-08-21 10:31:21'),
(88, 'site_courses_intro', 'Explore our full range of maritime training programs. Click a course to see its details and send an inquiry.', 'string', 'Website Courses: intro paragraph', 0, '2026-08-19 18:47:45', NULL),
(89, 'site_news_intro', 'Currently enrolling batches — reserve your slot today.', 'string', 'Website News: intro paragraph', 0, '2026-08-19 18:47:45', NULL),
(90, 'site_courses_bg', 'assets/images/site/CourseBG.png', 'string', 'Website Courses: background image path', 0, '2026-08-19 23:37:19', '2026-08-21 10:31:21'),
(105, 'site_facilities_title', 'World-Class Training Facilities', 'string', 'Website Facilities: title', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(106, 'site_facilities_intro', 'Train in an environment built for seafarers — modern classrooms, hands-on simulators, and safety equipment that mirror the realities of life at sea.', 'string', 'Website Facilities: intro', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(107, 'site_facilities_features', 'Classrooms: Modern, air-conditioned lecture rooms with audio-visual aids.\r\nSimulators: State-of-the-art bridge, engine-room and cargo simulators.\r\nFire & Safety: Dedicated fire-fighting and survival training grounds.\r\nEquipment: Up-to-date onboard technology and life-saving appliances.\r\nLibrary & Study: Reference library and quiet study areas.\r\nAmenities: Convenient facilities for trainees and assessors.\r\nTEST: test', 'string', 'Website Facilities: feature cards (one per line, Title: desc)', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(108, 'site_contact_intro', 'Questions about courses, schedules, fees, or enrollment? Our admissions team is ready to help — reach us through any channel below, or send an inquiry and we will get back to you within one business day.', 'string', 'Website Contact: intro', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(109, 'site_contact_hours', 'Monday – Saturday: 8:00 AM – 5:00 PM\r\nSunday: Closed', 'string', 'Website Contact: business hours (one per line)', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(110, 'site_contact_map_query', 'YMCA of Manila Building, 350 Antonio Villegas St, Ermita, Manila', 'string', 'Website Contact: address used for the Get-Directions link', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(111, 'site_contact_note', 'Walk-in inquiries are welcome at our office. Bring a valid ID for on-site enrollment.', 'string', 'Website Contact: small note under contact details', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(112, 'site_news_announce_title', 'Training Center Announcements', 'string', 'Website News: announcements row title', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(113, 'site_news_announce_intro', 'Official notices on class schedules, cancellations, and training-center operations — maintained from Admissions Settings.', 'string', 'Website News: announcements intro', 0, '2026-08-20 20:50:38', '2026-08-21 10:31:21'),
(114, 'site_contact_affiliates_title', 'Our Affiliations', 'string', 'Website Contact: affiliated companies row title', 0, '2026-08-20 22:17:53', '2026-08-21 10:31:21'),
(115, 'site_contact_affiliates_intro', 'We are accredited, recognized and partnered with the following organizations.', 'string', 'Website Contact: affiliated companies intro', 0, '2026-08-20 22:17:53', '2026-08-21 10:31:21'),
(141, 'site_contact_training_site', '#1093 Antero Soriano Highway, Brgy. Lambingan, Tanza, Philippines', 'string', 'Website Contact: training site address', 0, '2026-08-21 09:50:49', '2026-08-21 10:31:21'),
(142, 'site_contact_facebook', 'https://www.facebook.com/', 'string', 'Website Contact: Facebook page URL', 0, '2026-08-21 09:50:49', '2026-08-21 10:31:21'),
(143, 'site_contact_instagram', 'https://www.instagram.com/', 'string', 'Website Contact: Instagram profile URL', 0, '2026-08-21 09:50:49', '2026-08-21 10:31:21'),
(169, 'site_contact_partners_title', '', 'string', 'Contact — Partners row title', 0, '2026-08-21 10:29:45', '2026-08-21 10:31:21'),
(170, 'site_contact_partners_intro', '', 'string', 'Contact — Partners intro', 0, '2026-08-21 10:29:45', '2026-08-21 10:31:21');

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
-- Table structure for table `mnt_venue`
--

CREATE TABLE `mnt_venue` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mnt_venue`
--

INSERT INTO `mnt_venue` (`id`, `name`, `location`, `capacity`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'USMCI Main Campus — Hall A', 'Main Campus, Zamboanga', 60, 1, '2026-08-11 23:56:38', NULL),
(2, 'USMCI Main Campus — Hall B', 'Main Campus, Zamboanga', 40, 1, '2026-08-11 23:56:38', NULL),
(3, 'Simulation Room', 'Main Campus, Zamboanga', 24, 1, '2026-08-11 23:56:38', '2026-08-12 22:50:50'),
(4, 'United Seafarers Maritime Center Inc', 'Manila', 24, 1, '2026-08-12 00:01:20', NULL),
(11, 'test 3', '', 24, 1, '2026-08-12 22:45:31', NULL);

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

--
-- Dumping data for table `official_receipt`
--

INSERT INTO `official_receipt` (`id`, `receipt_no`, `payment_transaction_id`, `issued_date`, `issued_by`, `status`, `created_at`) VALUES
(1, 'OR-2026-000001', 1, '2026-08-13', 1, 'void', '2026-08-13 00:51:09'),
(2, 'OR-2026-000002', 2, '2026-08-13', 1, 'void', '2026-08-13 20:40:18'),
(3, 'OR-2026-000003', 3, '2026-08-13', 1, 'void', '2026-08-13 21:28:06'),
(4, 'OR-2026-000004', 4, '2026-08-13', 1, 'issued', '2026-08-13 23:23:58'),
(5, 'OR-2026-000005', 5, '2026-08-14', 1, 'issued', '2026-08-14 19:44:24'),
(6, 'OR-2026-000006', 6, '2026-08-14', 1, 'issued', '2026-08-14 21:16:43'),
(7, 'OR-2026-000007', 7, '2026-08-16', 1, 'issued', '2026-08-16 21:47:38'),
(8, 'OR-2026-000008', 8, '2026-08-16', 1, 'issued', '2026-08-16 22:36:23'),
(9, 'OR-2026-000009', 9, '2026-08-16', 1, 'issued', '2026-08-16 23:54:48'),
(10, 'OR-2026-000010', 10, '2026-08-17', 5, 'issued', '2026-08-17 00:05:24'),
(11, 'OR-2026-000011', 11, '2026-08-17', 1, 'issued', '2026-08-17 13:34:22'),
(12, 'OR-2026-000012', 12, '2026-08-17', 1, 'issued', '2026-08-17 15:29:43'),
(13, 'OR-2026-000013', 13, '2026-08-18', 1, 'issued', '2026-08-18 00:42:37'),
(14, 'OR-2026-000014', 14, '2026-08-18', 1, 'issued', '2026-08-18 00:43:02'),
(15, 'OR-2026-000015', 15, '2026-08-18', 1, 'issued', '2026-08-18 00:43:47');

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

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_no`, `applicant_id`, `enrollment_id`, `payment_status_id`, `total_amount`, `paid_amount`, `balance_amount`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 'PAY-2026-000001', 1, 3, 5, 2500.00, 2500.00, 0.00, '2026-08-20', '2026-08-13 00:46:53', '2026-08-13 20:40:41'),
(3, 'PAY-2026-000003', 1, 2, 5, 2500.00, 2500.00, 0.00, NULL, '2026-08-13 20:38:50', '2026-08-13 21:28:33'),
(4, 'PAY-2026-000004', 1, 1, 5, 15000.00, 15000.00, 0.00, NULL, '2026-08-13 21:26:36', '2026-08-13 21:29:06'),
(5, 'PAY-2026-000005', 2, 4, 3, 15000.00, 15000.00, 0.00, '2026-09-12', '2026-08-13 23:23:27', '2026-08-13 23:23:58'),
(6, 'PAY-2026-000006', 1, 5, 3, 15000.00, 15000.00, 0.00, '2026-09-12', '2026-08-14 19:43:49', '2026-08-14 19:44:24'),
(7, 'PAY-2026-000007', 3, 6, 3, 15000.00, 15000.00, 0.00, '2026-09-12', '2026-08-14 21:16:08', '2026-08-14 21:16:43'),
(8, 'PAY-2026-000008', 9, 10, 3, 15000.00, 15000.00, 0.00, '2026-09-12', '2026-08-16 19:03:56', '2026-08-16 21:47:38'),
(9, 'PAY-2026-000009', 8, 9, 3, 15000.00, 15000.00, 0.00, '2026-09-12', '2026-08-16 19:38:32', '2026-08-16 22:36:23'),
(10, 'PAY-2026-000010', 1, 11, 3, 1500.00, 1500.00, 0.00, '2026-09-04', '2026-08-16 23:50:08', '2026-08-16 23:54:48'),
(11, 'PAY-2026-000011', 13, 12, 3, 1500.00, 1500.00, 0.00, '2026-09-04', '2026-08-16 23:57:25', '2026-08-17 00:05:24'),
(12, 'PAY-2026-000012', 14, 14, 3, 15000.00, 15000.00, 0.00, '2026-09-12', '2026-08-17 13:31:00', '2026-08-17 13:34:22'),
(13, 'PAY-2026-000013', 19, 17, 3, 1500.00, 1500.00, 0.00, '2026-09-04', '2026-08-17 15:29:13', '2026-08-17 15:29:43'),
(14, 'PAY-2026-000014', 19, 18, 3, 15000.00, 15000.00, 0.00, '2026-09-12', '2026-08-17 20:08:19', '2026-08-18 00:42:37'),
(15, 'PAY-2026-000015', 19, 19, 3, 1500.00, 1500.00, 0.00, '2026-09-04', '2026-08-17 20:55:51', '2026-08-18 00:43:02'),
(16, 'PAY-2026-000016', 18, 20, 2, 15000.00, 10000.00, 5000.00, '2026-09-12', '2026-08-17 20:56:36', '2026-08-18 00:43:47');

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

--
-- Dumping data for table `payment_item`
--

INSERT INTO `payment_item` (`id`, `payment_id`, `item_name`, `quantity`, `unit_price`, `total_price`, `created_at`) VALUES
(1, 1, 'Basic Training - Refresher', 1, 2500.00, 2500.00, '2026-08-13 00:46:53'),
(3, 3, 'Basic Training - Refresher', 1, 2500.00, 2500.00, '2026-08-13 20:38:50'),
(4, 4, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-13 21:26:36'),
(5, 5, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-13 23:23:27'),
(6, 6, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-14 19:43:49'),
(7, 7, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-14 21:16:08'),
(8, 8, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-16 19:03:56'),
(9, 9, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-16 19:38:32'),
(10, 10, 'Safety Training', 1, 1500.00, 1500.00, '2026-08-16 23:50:08'),
(11, 11, 'Safety Training', 1, 1500.00, 1500.00, '2026-08-16 23:57:25'),
(12, 12, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-17 13:31:00'),
(13, 13, 'Safety Training', 1, 1500.00, 1500.00, '2026-08-17 15:29:13'),
(14, 14, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-17 20:08:19'),
(15, 15, 'Safety Training', 1, 1500.00, 1500.00, '2026-08-17 20:55:51'),
(16, 16, 'Basic Training', 1, 15000.00, 15000.00, '2026-08-17 20:56:36');

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

--
-- Dumping data for table `payment_transaction`
--

INSERT INTO `payment_transaction` (`id`, `payment_id`, `payment_method_id`, `transaction_ref`, `amount`, `transaction_date`, `received_by`, `remarks`, `created_at`) VALUES
(1, 1, 1, 'sdfe24242', 2500.00, '2026-08-13 00:51:09', 1, 'wewe', '2026-08-13 00:51:09'),
(2, 3, 1, 'sdfe24243', 2500.00, '2026-08-13 20:40:18', 1, NULL, '2026-08-13 20:40:18'),
(3, 4, 1, 'sdfe24244', 15000.00, '2026-08-13 21:28:06', 1, 'partial', '2026-08-13 21:28:06'),
(4, 5, 1, 'sdfe24245', 15000.00, '2026-08-13 23:23:58', 1, NULL, '2026-08-13 23:23:58'),
(5, 6, 1, 'sdfe24246', 15000.00, '2026-08-14 19:44:24', 1, NULL, '2026-08-14 19:44:24'),
(6, 7, 1, NULL, 15000.00, '2026-08-14 21:16:43', 1, 'paid', '2026-08-14 21:16:43'),
(7, 8, 1, 'sdfe24243', 15000.00, '2026-08-16 21:47:38', 1, NULL, '2026-08-16 21:47:38'),
(8, 9, 2, NULL, 15000.00, '2026-08-16 22:36:23', 1, NULL, '2026-08-16 22:36:23'),
(9, 10, 1, NULL, 1500.00, '2026-08-16 23:54:48', 1, NULL, '2026-08-16 23:54:48'),
(10, 11, 3, NULL, 1500.00, '2026-08-17 00:05:24', 5, NULL, '2026-08-17 00:05:24'),
(11, 12, 1, NULL, 15000.00, '2026-08-17 13:34:22', 1, NULL, '2026-08-17 13:34:22'),
(12, 13, 2, NULL, 1500.00, '2026-08-17 15:29:43', 1, NULL, '2026-08-17 15:29:43'),
(13, 14, 2, NULL, 15000.00, '2026-08-18 00:42:37', 1, NULL, '2026-08-18 00:42:37'),
(14, 15, 1, NULL, 1500.00, '2026-08-18 00:43:02', 1, NULL, '2026-08-18 00:43:02'),
(15, 16, 1, NULL, 10000.00, '2026-08-18 00:43:47', 1, NULL, '2026-08-18 00:43:47');

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
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `page_key` varchar(100) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT 1,
  `can_edit` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `page_key`, `can_view`, `can_edit`, `created_at`) VALUES
(1, 4, 'dashboard', 1, 0, '2026-08-16 21:07:30'),
(2, 4, 'applicants', 1, 0, '2026-08-16 21:07:30'),
(3, 4, 'enrollment', 1, 0, '2026-08-16 21:07:30'),
(4, 4, 'payments', 1, 1, '2026-08-16 21:07:30'),
(5, 4, 'certificates', 1, 0, '2026-08-16 21:07:30'),
(6, 4, 'reports', 1, 1, '2026-08-16 21:07:30');

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
(1, 'INQ', '2026', 24, 'INQ', 6, '2026-08-05 21:35:12'),
(2, 'APP', '2026', 13, 'APP', 6, '2026-08-17 15:24:23'),
(3, 'ENR', '2026', 20, 'ENR', 6, '2026-08-17 20:56:36'),
(4, 'PAY', '2026', 16, 'PAY', 6, '2026-08-17 20:56:36'),
(5, 'CRT', '2026', 14, 'CRT', 6, '2026-08-18 17:57:58'),
(6, 'OR', '2026', 15, 'OR', 6, '2026-08-18 00:43:47');

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
(6, 'HR', 'HR', 'Handles staff-related records', 1, '2026-07-08 07:22:14', NULL),
(7, 'ENDORSER', 'Endorser', 'Endorses trainees (no admin access)', 1, '2026-08-16 17:10:08', NULL);

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

--
-- Dumping data for table `sys_user`
--

INSERT INTO `sys_user` (`id`, `role_id`, `username`, `email`, `password_hash`, `full_name`, `mobile_no`, `status_id`, `last_login_at`, `failed_login_count`, `locked_until`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@usmci.edu.ph', '$2y$12$r4r1xG.I4vEsFdNzSxjKDOfD6ncD6FR4ruSFAdFCtOPIyQPTeaXM2', 'System Administrator', '09171234567', 1, '2026-08-22 12:55:57', 0, NULL, '2026-08-01 05:17:21', '2026-08-22 12:55:57'),
(2, 2, 'admissions', 'admissions@usmci.edu.ph', '$2y$12$cwXIxE1E5iqS/e3YIj5R2uuyDXKgcbdivAjcB7qEgEmHWDCYNH/TG', 'Admissions Officer', '09179876543', 1, '2026-08-05 23:35:45', 0, NULL, '2026-08-01 05:17:21', '2026-08-05 23:35:45'),
(3, 5, 'capta', 'capta@gmail.com', '$2y$10$cbddaE.f333TXZ.RqMGHA.RulJ8SV.42MhYsM.2vdH51ANxXqfyCy', 'Capt. A', '', 1, '2026-08-12 00:20:46', 0, NULL, '2026-08-12 00:16:52', '2026-08-12 00:20:46'),
(5, 4, 'test1', 'test1@gmail.com', '$2y$10$vlNnHtupdiIfiqjzXqN.8.50LpQSLw13ieSTpMsV8JPZJkNd1QEM6', 'test1', '', 1, '2026-08-17 00:04:04', 0, NULL, '2026-08-13 00:00:20', '2026-08-17 00:04:04'),
(6, 2, 'test2@gmail.com', 'test2@gmail.com', '$2y$10$qf6Wg6F33PmZwPYYOkXGa.JlgFRLES8.60gBfWZjteQe1J.5/p1Ne', 'test2', '', 1, NULL, 0, NULL, '2026-08-13 00:00:49', NULL),
(7, 3, 'test3@gmail.com', 'test3@gmail.com', '$2y$10$6TUs0MzKrcrTJgQKOCiGqOwNzekB5vjcIIU.O6FfplMOJ1OWK8/8e', 'test3', '', 1, NULL, 0, NULL, '2026-08-13 00:01:52', NULL),
(8, 6, 'test4@gmail.com', 'test4@gmail.com', '$2y$10$SE52gYQTZCNLMS61ksWh.etYWLNEKD49H9FrUcctMcCprc2jrqUyu', 'test4', '', 1, NULL, 0, NULL, '2026-08-13 00:02:32', NULL),
(9, 6, 'test5@gmail.com', 'test5@gmail.com', '$2y$10$py1bonUYW.UzUuwlge.hMOqh9HJaG29d9yPZU.eJlhyQdPoW32APy', 'test5', '', 1, NULL, 0, NULL, '2026-08-13 00:03:00', '2026-08-17 14:41:06'),
(10, 3, 'test6@gmail.com', 'test6@gmail.com', '$2y$10$HozmHTyAwh3vGsTvLt/zZeidSXrBDuTkgKEHFHov1xJUMZXgUCRyG', 'test6', '', 1, NULL, 0, NULL, '2026-08-13 00:03:31', NULL),
(11, 7, 'jean@gmail.com', 'jean@gmail.com', '$2y$10$AqaE5T.u57S3RdxgmUYbH.OB6pECRRieiLvY2icnSlUIlysnpntOO', 'Jean', '', 1, NULL, 0, NULL, '2026-08-16 20:51:09', NULL);

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

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `training_no`, `course_id`, `batch_name`, `batch_status_id`, `max_slots`, `start_date`, `end_date`, `venue`, `lead_instructor_id`, `created_at`, `updated_at`) VALUES
(4, '2026 - 030', 2, 'BT - Cavite', 2, 24, '2026-08-31', '2026-09-12', 'Simulation Room', 1, '2026-08-13 00:12:01', '2026-08-16 23:40:18'),
(6, '2026 - 029', 2, 'BT - Cavite', 2, 24, '2026-08-27', '2026-09-12', 'Simulation Room', 1, '2026-08-14 23:11:45', '2026-08-14 23:13:48'),
(7, 'SFT - 009', 1, 'Mindoro Batch 12', 1, 24, '2026-08-31', '2026-09-04', 'USMCI Main Campus — Hall B', 1, '2026-08-16 22:46:48', '2026-08-16 23:40:39');

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
-- Dumping data for table `training_schedule`
--

INSERT INTO `training_schedule` (`id`, `training_id`, `session_date`, `start_time`, `end_time`, `topic`, `instructor_id`, `facility`, `created_at`) VALUES
(1, 4, '2026-08-31', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(2, 4, '2026-09-01', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(3, 4, '2026-09-02', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(4, 4, '2026-09-03', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(5, 4, '2026-09-04', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(6, 4, '2026-09-05', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(7, 4, '2026-09-06', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(8, 4, '2026-09-07', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(9, 4, '2026-09-08', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(10, 4, '2026-09-09', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(11, 4, '2026-09-10', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(12, 4, '2026-09-11', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(13, 4, '2026-09-12', '07:00:00', '17:00:00', 'BT - Cavite', NULL, NULL, '2026-08-16 23:40:18'),
(14, 7, '2026-08-31', '07:00:00', '17:00:00', 'Mindoro Batch 12', NULL, NULL, '2026-08-16 23:40:39'),
(15, 7, '2026-09-01', '07:00:00', '17:00:00', 'Mindoro Batch 12', NULL, NULL, '2026-08-16 23:40:39'),
(16, 7, '2026-09-02', '07:00:00', '17:00:00', 'Mindoro Batch 12', NULL, NULL, '2026-08-16 23:40:39'),
(17, 7, '2026-09-03', '07:00:00', '17:00:00', 'Mindoro Batch 12', NULL, NULL, '2026-08-16 23:40:39'),
(18, 7, '2026-09-04', '07:00:00', '17:00:00', 'Mindoro Batch 12', NULL, NULL, '2026-08-16 23:40:39');

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
-- Indexes for table `applicant_invitation`
--
ALTER TABLE `applicant_invitation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_hash` (`token_hash`),
  ADD UNIQUE KEY `uq_applicant_invitation_code` (`registration_code`),
  ADD KEY `inquiry_id` (`inquiry_id`),
  ADD KEY `applicant_id` (`applicant_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_invitation_lookup` (`token_hash`,`used_at`,`expires_at`);

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
  ADD UNIQUE KEY `uq_app_req_doc` (`application_id`,`document_type_id`),
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
  ADD KEY `fk_enrollment_training` (`training_id`),
  ADD KEY `fk_enrollment_company` (`company_id`);

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
  ADD KEY `idx_inquiry_preferred_date` (`preferred_date`),
  ADD KEY `idx_inquiry_status` (`status_id`);

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
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `mnt_affiliate`
--
ALTER TABLE `mnt_affiliate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_affiliate_active` (`is_active`,`sort_order`);

--
-- Indexes for table `mnt_announcement`
--
ALTER TABLE `mnt_announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_announce_active` (`is_active`,`announcement_date`);

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
-- Indexes for table `mnt_contact_info`
--
ALTER TABLE `mnt_contact_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contact_info` (`is_active`,`sort_order`);

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
-- Indexes for table `mnt_inquiry_status`
--
ALTER TABLE `mnt_inquiry_status`
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
-- Indexes for table `mnt_rank_position`
--
ALTER TABLE `mnt_rank_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_rank_name` (`name`);

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
-- Indexes for table `mnt_venue`
--
ALTER TABLE `mnt_venue`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_role_page` (`role_id`,`page_key`),
  ADD KEY `idx_rp_role` (`role_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `applicant_account`
--
ALTER TABLE `applicant_account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `applicant_activity_log`
--
ALTER TABLE `applicant_activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant_invitation`
--
ALTER TABLE `applicant_invitation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `applicant_notification`
--
ALTER TABLE `applicant_notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `applicant_session`
--
ALTER TABLE `applicant_session`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `application_course`
--
ALTER TABLE `application_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_requirement`
--
ALTER TABLE `application_requirement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `communication_log`
--
ALTER TABLE `communication_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `document_upload`
--
ALTER TABLE `document_upload`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `enrollment_history`
--
ALTER TABLE `enrollment_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `inquiry_attachment`
--
ALTER TABLE `inquiry_attachment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiry_reply`
--
ALTER TABLE `inquiry_reply`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `mnt_affiliate`
--
ALTER TABLE `mnt_affiliate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mnt_announcement`
--
ALTER TABLE `mnt_announcement`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mnt_contact_info`
--
ALTER TABLE `mnt_contact_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mnt_country`
--
ALTER TABLE `mnt_country`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mnt_course`
--
ALTER TABLE `mnt_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `mnt_inquiry_status`
--
ALTER TABLE `mnt_inquiry_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `mnt_rank_position`
--
ALTER TABLE `mnt_rank_position`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `mnt_user_status`
--
ALTER TABLE `mnt_user_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mnt_venue`
--
ALTER TABLE `mnt_venue`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment_item`
--
ALTER TABLE `payment_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment_transaction`
--
ALTER TABLE `payment_transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sys_user_activity`
--
ALTER TABLE `sys_user_activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- Constraints for table `applicant_invitation`
--
ALTER TABLE `applicant_invitation`
  ADD CONSTRAINT `applicant_invitation_ibfk_1` FOREIGN KEY (`inquiry_id`) REFERENCES `inquiry` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applicant_invitation_ibfk_2` FOREIGN KEY (`applicant_id`) REFERENCES `applicant` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `applicant_invitation_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `sys_user` (`id`);

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
  ADD CONSTRAINT `fk_enrollment_company` FOREIGN KEY (`company_id`) REFERENCES `mnt_company` (`id`),
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
  ADD CONSTRAINT `fk_inquiry_status` FOREIGN KEY (`status_id`) REFERENCES `mnt_inquiry_status` (`id`),
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
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `fk_rp_role` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `fk_training_instructor` FOREIGN KEY (`lead_instructor_id`) REFERENCES `instructor` (`id`);

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
  ADD CONSTRAINT `fk_training_schedule_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`),
  ADD CONSTRAINT `fk_training_schedule_training` FOREIGN KEY (`training_id`) REFERENCES `training` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
