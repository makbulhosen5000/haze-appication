-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 17, 2023 at 05:43 AM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem\r\nwith the release of Letraset sheets containing Lorem', '1658410888.jpg', NULL, 1, '2022-06-21 03:51:43', '2022-07-21 07:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bangladeshi', 1, 1, '2022-04-14 04:50:12', '2022-04-23 14:52:53'),
(3, 'Indian', 1, 1, '2022-04-15 12:17:21', '2022-04-23 14:53:07'),
(4, 'China', 1, NULL, '2022-04-23 14:53:39', '2022-04-23 14:53:39'),
(5, 'Bata', 1, NULL, '2022-05-02 10:33:00', '2022-05-02 10:33:00'),
(6, 'Apex', 1, NULL, '2022-05-02 10:33:46', '2022-05-02 10:33:46'),
(7, 'lotto', 1, NULL, '2022-05-02 10:34:22', '2022-05-02 10:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci,
  `publish_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `slug`, `short_desc`, `long_desc`, `publish_date`, `expire_date`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Intern', 'intern', 'S.N ADVANCE LIMITED, a leading systems integrator providing managed service solutions to businesses since 1994, has an exciting career opportunity for a highly motivated individual who is ready to move ahead in a progressive industry. We are focused on helping our clients succeed by understanding their unique technology requirements and developing a fully customized program to care for their data and voice networks.', 'S.N ADVANCE LIMITED  is seeking an energetic intern who can work a flexible schedule (approximately 20 – 30 Hours a week) for at least 90 calendar days from their start date. The internship may be extended out further if both parties agree, and we are willing to work with any level college student interested in information technology. The internship is paid and there are many opportunities to gain valuable practical experience. Interns must be able to demonstrate solid communication and organizational skills so that they are able to work within a team-focused environment. It is expected that all client interactions will be performed at the highest level of customer service and professionalism. They will work very closely with other technical resources and the Management team to ensure internal S.N ADVANCE LIMITED team areas and our clients are supported. They must be able to both document and effectively communicate the technical steps they’ve taken during their work day. The position relies on instructions and pre-established guidelines to perform the functions of the job, working under the supervision of a team lead or manager. This position offers internship candidates a chance to take part in the day to day operations of an established technology company that provides continued opportunities for growth and professional development. The working environment promotes strong values and encourages employee development, diversity, and requires customer service excellence.\r\nEssential Duties and Responsibilities:\r\nAssisting engineers on client projects\r\nCreating technical documentation and schematics\r\nGathering operational metrics for management\r\nHelping the support team solve technical support issues/requests\r\nSales support and data entry\r\nSome interaction with clients\r\nTechnical preparation of newly purchased client equipment prior to field deployment by an engineer\r\nTransportation of client equipment to from their offices\r\nQualifications:\r\nProficiency in usage of Microsoft Office suites\r\nProficiency in usage of Microsoft Operating Systems\r\nAnalytical problem-solving skills\r\nInterpersonal communication skills\r\nPassion for working in a team environment\r\nReliable transportation and valid driver’s license\r\nSpecial consideration given to candidates with the below qualifications:\r\nInstallation of Apple/MAC operating systems\r\nActive Directory and how it works in domain environments\r\nSecurity software such as Anti-Virus, Anti-Malware, etc.\r\nBasic networking concepts and/or LAN troubleshooting\r\nBasic data security concepts\r\nMicrosoft Hosted Exchange (365)\r\nAll selected candidates are subject to a satisfactory background check. This position will require limited travel in the local area. Serious candidates should send their resumes to HR@southtech.com or fax them to 941-306-4756.\r\nApply Online\r\nName*\r\nEmail*\r\nPhone*\r\nAttach Resume*\r\nNo file chosen', '2022-07-24', '2022-07-25', '202207250627CP-Computer Programming [Tamim Shariar Subeen].pdf', '2022-07-24 05:21:31', '2022-07-25 00:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Import', 'import', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1658997036.jpg', 'Inactive', '2022-06-30 05:52:21', '2022-07-28 02:30:36'),
(2, 'Export', 'export', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1658820351.jpg', 'Inactive', '2022-06-30 06:10:08', '2022-07-28 02:30:07'),
(3, 'Construction', 'construction', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1658820368.jpg', 'Inactive', '2022-06-30 06:10:35', '2022-07-28 02:31:00'),
(4, 'Our Products', 'our-products', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1658820380.jpg', 'Inactive', '2022-06-30 06:11:02', '2022-07-28 02:31:17'),
(6, 'my', 'my', NULL, NULL, 'Inactive', '2022-11-17 12:18:12', '2022-11-17 12:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `colors_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Red', 1, NULL, '2022-04-22 14:05:46', '2022-04-22 14:05:46'),
(2, 'White', 1, NULL, '2022-04-23 15:20:46', '2022-04-23 15:20:46'),
(3, 'Yellow', 1, NULL, '2022-04-23 15:20:59', '2022-04-23 15:20:59'),
(4, 'Green', 1, NULL, '2022-04-23 15:21:09', '2022-04-23 15:21:09'),
(5, 'Black', 1, NULL, '2022-05-02 10:36:49', '2022-05-02 10:36:49'),
(6, 'Gray', 1, NULL, '2022-05-02 10:36:57', '2022-05-02 10:36:57'),
(7, 'Orange', 1, NULL, '2022-05-02 10:37:03', '2022-05-02 10:37:03'),
(8, 'Pink', 1, NULL, '2022-05-02 10:37:09', '2022-05-02 10:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `companies_brand_logos`
--

DROP TABLE IF EXISTS `companies_brand_logos`;
CREATE TABLE IF NOT EXISTS `companies_brand_logos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies_brand_logos`
--

INSERT INTO `companies_brand_logos` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(10, NULL, '1655900834.png', '2022-06-22 06:27:14', '2022-06-22 06:27:14'),
(11, NULL, '1655900844.png', '2022-06-22 06:27:24', '2022-06-22 06:27:24'),
(12, NULL, '1655900857.png', '2022-06-22 06:27:37', '2022-06-22 06:27:37'),
(13, NULL, '1655900874.png', '2022-06-22 06:27:54', '2022-06-22 06:27:54'),
(14, NULL, '1655900881.png', '2022-06-22 06:28:01', '2022-06-22 06:28:01'),
(15, NULL, '1655900895.png', '2022-06-22 06:28:15', '2022-06-22 06:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `intro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desc` text COLLATE utf8mb4_unicode_ci,
  `birthday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `intro`, `name`, `designation`, `resume`, `image`, `title`, `short_desc`, `long_desc`, `birthday`, `phone`, `email`, `github`, `linkedin`, `facebook`, `twitter`, `instagram`, `youtube`, `google`, `whatsapp`, `skype`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(15, 'Hello ! I am', 'md.makbul hosen', 'Full-Stack Developer', '1670345837.pdf', '1668708681.jpg', 'Who am I ?', 'A React and Laravel Developer Located In Our Lovely Earth.', 'I have successfully designed, developed, and delivered a multitude of websites and web applications with complex front and back ends; from typical HTML/CSS/ Bootstrap/PHP/Laravel/JavaScript/ReactJs/Rest API/MYSQL Server. I would love to help you achieve your objectives; simple or complex!', NULL, '01989139570', 'mhakash5000@gmail.com', 'https://github.com/mhakash5000', 'https://www.linkedin.com/in/md-makbul-hosen-5620b1158/', 'https://www.facebook.com/mhakash5000', 'https://twitter.com/@mhakash5000', 'https://www.instagram.com/mhakash77/', 'https://myaccount.google.com/u/0/b/114262346424779262259/?utm_source=YouTubeWeb&tab=rk&utm_medium=act&tab=rk&hl=en&nlr=1', NULL, '01782283171', 'live:mhakash5000', 'mohammad pur,Solim Ullah Road,Dhaka,Bangladesh', NULL, NULL, '2022-11-17 11:17:24', '2022-12-06 10:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massage` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `phone`, `email`, `massage`, `created_at`, `updated_at`) VALUES
(168, 'Mh akash', '566546', 'mhakash50@gmail.com', 'sdfsdf', '2022-12-06 10:49:11', '2022-12-06 10:49:11'),
(171, 'Mh akash', '566546', 'mhakash400@yahoo.com', 'fgdg', '2022-12-30 23:51:18', '2022-12-30 23:51:18'),
(170, 'Mh akash', '566546', 'mhakash50@gmail.com', 'asdfsdf', '2022-12-15 22:35:43', '2022-12-15 22:35:43'),
(169, 'Mh akash', '01521532765', 'mhakash50@gmail.com', 'fsd', '2022-12-15 00:23:30', '2022-12-15 00:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `count_down_timers`
--

DROP TABLE IF EXISTS `count_down_timers`;
CREATE TABLE IF NOT EXISTS `count_down_timers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `launch_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `count_down_timers`
--

INSERT INTO `count_down_timers` (`id`, `title`, `launch_date`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Timer', '2022-11-26 13:01:00', 0, '2022-05-17 08:12:31', '2022-11-17 01:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `designation`, `deadline`, `company_name`, `company_address`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Laravel Developer', 'April 01, 2022 - November 30, 2022', 'CreTechBD', 'Road:11, House:13/7 Solimullah Road, Mohammad pur, Dhaka -1230', NULL, '2022-11-20 11:03:33', '2022-11-21 22:26:14'),
(6, 'Intern Laravel Developer', 'January 01, 2020 - May 30, 2020', 'Winbiz Dizital Ltd', 'House No. 21, Sector-13, Sonargaon Janapath, Uttara, Dhaka -1230', NULL, '2022-11-20 11:05:16', '2022-11-21 22:26:42'),
(7, 'Safety supervisor & Data Entry Operator', 'August 21, 2016 - August 17, 2017', 'Asia Projects Engineering Ptd.Ltd.', '32 Penjuru Road in Singapore', NULL, '2022-11-20 11:08:03', '2022-11-20 11:08:03'),
(8, 'Junior Graphics Designer', 'September 2, 2017 - March 31, 2018', 'Al-Madina IT', 'Brahmanbaria,Chittagram,Bangladesh', NULL, '2022-11-20 11:11:05', '2022-11-21 22:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `percentage`, `created_at`, `updated_at`) VALUES
(5, 'English', '60%', '2022-11-21 23:28:25', '2022-11-21 23:28:25'),
(4, 'Bangla', '100%', '2022-11-21 23:28:15', '2022-11-21 23:28:15'),
(6, 'Hindi', '30%', '2022-11-21 23:28:49', '2022-11-21 23:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

DROP TABLE IF EXISTS `logos`;
CREATE TABLE IF NOT EXISTS `logos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(10, '1668711361.png', NULL, 4, '2022-06-21 07:51:25', '2022-11-17 12:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
CREATE TABLE IF NOT EXISTS `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medicines_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `slug`, `price`, `short_desc`, `long_desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Medicine', 'medicine', '500', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?', '202208010702pexels-pixabay-262353.jpg', '2022-08-01 00:56:43', '2022-08-01 01:13:32'),
(2, 'Feed', 'feed', '200', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?', '202208010715pexels-tom-fisk-3856440.jpg', '2022-08-01 01:15:57', '2022-08-01 01:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_05_01_104950_create_logos_table', 1),
(6, '2020_05_02_045646_create_sliders_table', 1),
(7, '2020_05_03_140713_create_contacts_table', 1),
(8, '2020_05_03_170016_create_abouts_table', 1),
(9, '2020_05_08_144512_create_contact_us_table', 1),
(10, '2022_04_11_162200_create_categories_table', 2),
(11, '2022_04_14_101043_create_brands_table', 3),
(14, '2022_04_15_172626_create_sizes_table', 4),
(15, '2022_04_15_173432_create_colors_table', 4),
(16, '2022_04_20_192327_create_products_table', 5),
(17, '2022_04_20_193429_create_product_sizes_table', 5),
(18, '2022_04_20_193516_create_product_colors_table', 5),
(19, '2022_04_20_193640_create_product_sub_images_table', 5),
(20, '2022_04_22_191915_create_count_down_timers_table', 6),
(21, '2022_06_21_094740_create_abouts_table', 7),
(24, '2022_06_21_104436_create_services_table', 8),
(25, '2022_06_22_115600_create_companies_brand_logos_table', 8),
(26, '2022_06_25_100333_create_sub_categories_table', 9),
(27, '2022_06_30_113501_create_categories_table', 10),
(28, '2022_06_30_121513_create_sub_categories_table', 11),
(29, '2022_07_19_052044_create_teams_table', 12),
(32, '2022_07_20_094845_create_news_table', 13),
(33, '2022_07_24_101448_create_careers_table', 14),
(34, '2022_08_01_060344_create_medicines_table', 15),
(35, '2022_11_17_071322_create_contacts_table', 16),
(36, '2022_11_18_182114_create_experiences_table', 17),
(39, '2022_11_19_163740_create_education_table', 18),
(40, '2022_11_19_164525_create_skills_table', 18),
(41, '2022_11_22_045216_create_languages_table', 19),
(42, '2022_11_23_162850_create_work_documentaries_table', 20),
(49, '2022_11_25_052400_create_user_locations_table', 21),
(50, '2022_11_30_135216_create_recent_projects_table', 21),
(51, '2022_11_30_153540_create_total_projects_table', 21),
(52, '2022_12_02_173205_create_react_projects_table', 21),
(53, '2022_12_03_095258_create_trainings_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `short_desc`, `description`, `date`, `pdf`, `image`, `created_at`, `updated_at`) VALUES
(16, 'Welcome to KU Leuven!', 'welcome-to-ku-leuven', 'Erasmus’ Collegium Trilingue, Mercator’s maps, Lemaître’s Big Bang Theory. They all emerged here, springing forth from a curious mind with a willingness to challenge how we see the world. Offering more than 100 English-taught programmes in 15 faculties, KU Leuven has been bringing together bright minds from around the world since 1425. Ready to join them?', '<h2><a href=\"https://laravel.com/docs/9.x#meet-laravel\">Meet Laravel</a></h2>\r\n\r\n<p>Laravel is a web application framework with expressive, elegant syntax. A web framework provides a structure and starting point for creating your application, allowing you to focus on creating something amazing while we sweat the details.</p>\r\n\r\n<p>Laravel strives to provide an amazing developer experience while providing powerful features such as thorough dependency injection, an expressive database abstraction layer, queues and scheduled jobs, unit and integration testing, and more.</p>\r\n\r\n<p>Whether you are new to PHP web frameworks or have years of experience, Laravel is a framework that can grow with you. We&#39;ll help you take your first steps as a web developer or give you a boost as you take your expertise to the next level. We can&#39;t wait to see what you build.</p>\r\n\r\n<blockquote>\r\n<p><img src=\"https://laravel.com/img/callouts/lightbulb.min.svg\" /></p>\r\n\r\n<p>New to Laravel? Check out the&nbsp;<a href=\"https://bootcamp.laravel.com/\">Laravel Bootcamp</a>&nbsp;for a hands-on tour of the framework while we walk you through building your first Laravel application.</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://laravel.com/docs/9.x#why-laravel\">Why Laravel?</a></h3>\r\n\r\n<p>There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.</p>\r\n\r\n<p>A Progressive Framework</p>\r\n\r\n<p>We like to call Laravel a &quot;progressive&quot; framework. By that, we mean that Laravel grows with you. If you&#39;re just taking your first steps into web development, Laravel&#39;s vast library of documentation, guides, and&nbsp;<a href=\"https://laracasts.com/\">video tutorials</a>&nbsp;will help you learn the ropes without becoming overwhelmed.</p>\r\n\r\n<p>If you&#39;re a senior developer, Laravel gives you robust tools for&nbsp;<a href=\"https://laravel.com/docs/9.x/container\">dependency injection</a>,&nbsp;<a href=\"https://laravel.com/docs/9.x/testing\">unit testing</a>,&nbsp;<a href=\"https://laravel.com/docs/9.x/queues\">queues</a>,&nbsp;<a href=\"https://laravel.com/docs/9.x/broadcasting\">real-time events</a>, and more. Laravel is fine-tuned for building professional web applications and ready to handle enterprise work loads.</p>\r\n\r\n<p>A Scalable Framework</p>\r\n\r\n<p>Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel&#39;s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.</p>', '2022-11-26', NULL, '202211251624advertising-2.jpg', '2022-11-25 10:24:00', '2022-12-15 23:45:33'),
(17, 'rdfsdf', 'rdfsdf', 'A Web Designer / Developer Located In Our Lovely Earth', '<p>sdfdsf sdfdsf</p>', '2022-12-02', NULL, '202212020708akash.jpg', '2022-12-02 01:08:12', '2022-12-02 01:08:12'),
(18, 'news', 'news', 'A  React and Laravel Developer Located In Our Lovely Earth', '<p><a href=\"https://www.unwomen.org/en/news/media-contacts\">Get the latest news - Latest news on gender equality</a></p>\r\n\r\n<p><a href=\"https://www.unwomen.org/en/news/media-contacts\">বিজ্ঞাপন&middot;https://www.unwomen.org/</a></p>\r\n\r\n<p><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAQlBMVEVHcEwac+gac+gac+hlnJYac+g1jbOByZWByZVtvYM7oFgejj4nk0aByZUejj6ByZXzqB3qhgDqhgD0qBr8yTT8yTT2svvNAAAAFnRSTlMAhOv/Eb88r/////+4cG6/QJ////+nISczlwAAALRJREFUeAHV0kUWxDAMA1AHy9ze/6pT5vopw/1rKwrRjwiplBSaQNqonrTo+mpkwAI1wyqsmom/CLQkcAbgloCE0YSywhgj6I6s528EYdSKLy838beCaJTi81xC+zthtNBgwSz9eCB+f0OLD7S4W6Iz9rrCEpQIQna+pZNsK+6kmu4gL8pWVdWMJqdZUY7aBBfZzuOJvCzRRL4tQCvKjZrlHNAfb3A+tPO1uj7cs18D/nzf8QCycjvSZdC/XAAAAABJRU5ErkJggg==\" style=\"height:24px; width:24px\" /></p>\r\n\r\n<hr />\r\n<p>Stay up-to-date on UN Women&nbsp;<em>news</em>&nbsp;announcements, press releases and media advisories. Sign up today to receive the latest&nbsp;<em>news</em>&nbsp;announcements, press releases and more.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p><a href=\"https://www.unwomen.org/en/news-and-events/stories\">News</a></p>\r\n\r\n<p>UN Women&#39;s latest content Statements, stories and more</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p><a href=\"https://data.unwomen.org/\">Data portal</a></p>\r\n\r\n<p>Browse our latest research. Sex-disaggregated COVID statistics.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.hrcbm.org/wp-new/news/\">Bangladesh News Today - Bangladesh Politics</a></p>\r\n\r\n<p><a href=\"https://www.hrcbm.org/wp-new/news/\">বিজ্ঞাপন&middot;https://www.hrcbm.org/</a></p>\r\n\r\n<p><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAQlBMVEVHcEwac+gac+gac+hlnJYac+g1jbOByZWByZVtvYM7oFgejj4nk0aByZUejj6ByZXzqB3qhgDqhgD0qBr8yTT8yTT2svvNAAAAFnRSTlMAhOv/Eb88r/////+4cG6/QJ////+nISczlwAAALRJREFUeAHV0kUWxDAMA1AHy9ze/6pT5vopw/1rKwrRjwiplBSaQNqonrTo+mpkwAI1wyqsmom/CLQkcAbgloCE0YSywhgj6I6s528EYdSKLy838beCaJTi81xC+zthtNBgwSz9eCB+f0OLD7S4W6Iz9rrCEpQIQna+pZNsK+6kmu4gL8pWVdWMJqdZUY7aBBfZzuOJvCzRRL4tQCvKjZrlHNAfb3A+tPO1uj7cs18D/nzf8QCycjvSZdC/XAAAAABJRU5ErkJggg==\" style=\"height:24px; width:24px\" /></p>\r\n\r\n<hr />\r\n<p>Support Bangladesh Human Rights. Make the Difference. End violence against Minorities...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://www.goodnewsagency.org/en/newsletter.php\">Today Good News</a></p>\r\n\r\n<p><a href=\"http://www.goodnewsagency.org/en/newsletter.php\">বিজ্ঞাপন&middot;http://www.goodnewsagency.org/</a></p>\r\n\r\n<p><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAQlBMVEVHcEwac+gac+gac+hlnJYac+g1jbOByZWByZVtvYM7oFgejj4nk0aByZUejj6ByZXzqB3qhgDqhgD0qBr8yTT8yTT2svvNAAAAFnRSTlMAhOv/Eb88r/////+4cG6/QJ////+nISczlwAAALRJREFUeAHV0kUWxDAMA1AHy9ze/6pT5vopw/1rKwrRjwiplBSaQNqonrTo+mpkwAI1wyqsmom/CLQkcAbgloCE0YSywhgj6I6s528EYdSKLy838beCaJTi81xC+zthtNBgwSz9eCB+f0OLD7S4W6Iz9rrCEpQIQna+pZNsK+6kmu4gL8pWVdWMJqdZUY7aBBfZzuOJvCzRRL4tQCvKjZrlHNAfb3A+tPO1uj7cs18D/nzf8QCycjvSZdC/XAAAAABJRU5ErkJggg==\" style=\"height:24px; width:24px\" /></p>\r\n\r\n<hr />\r\n<p>Read now Good&nbsp;<em>News</em>&nbsp;Agency. Positive&nbsp;<em>news</em>&nbsp;from the world. Read The Issues.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.illuminatingfaith.com/news/\">News on Republic of Georgia - News About Azerbaijan</a></p>\r\n\r\n<p><a href=\"https://www.illuminatingfaith.com/news/\">বিজ্ঞাপন&middot;https://www.illuminatingfaith.com/</a></p>\r\n\r\n<p><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAQlBMVEVHcEwac+gac+gac+hlnJYac+g1jbOByZWByZVtvYM7oFgejj4nk0aByZUejj6ByZXzqB3qhgDqhgD0qBr8yTT8yTT2svvNAAAAFnRSTlMAhOv/Eb88r/////+4cG6/QJ////+nISczlwAAALRJREFUeAHV0kUWxDAMA1AHy9ze/6pT5vopw/1rKwrRjwiplBSaQNqonrTo+mpkwAI1wyqsmom/CLQkcAbgloCE0YSywhgj6I6s528EYdSKLy838beCaJTi81xC+zthtNBgwSz9eCB+f0OLD7S4W6Iz9rrCEpQIQna+pZNsK+6kmu4gL8pWVdWMJqdZUY7aBBfZzuOJvCzRRL4tQCvKjZrlHNAfb3A+tPO1uj7cs18D/nzf8QCycjvSZdC/XAAAAABJRU5ErkJggg==\" style=\"height:24px; width:24px\" /></p>\r\n\r\n<hr />\r\n<p>Learn about Christian&nbsp;<em>news</em>&nbsp;around the world as well as the Caucasus and Middle East. Is...</p>\r\n\r\n<h1>সার্চের ফলাফল</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://www.bbc.com/bengali\">খবর, সর্বশেষ খবর, ব্রেকিং নিউজ - BBC News বাংলা - BBC</a></h3>\r\n\r\n<p><a href=\"https://www.bbc.com/bengali\"><cite>https://www.bbc.com&nbsp;&rsaquo; bengali</cite></a></p>\r\n\r\n<p>৩ ঘন্টা আগে&nbsp;&mdash;&nbsp;বাংলাদেশ এবং বিশ্বের সর্বশেষ খবর, প্রতিবেদন, বিশ্লেষণ, সাক্ষাৎকার, ভিডিও, অডিও এবং&nbsp;...</p>\r\n\r\n<p>&lrm;<a href=\"https://www.bbc.com/bengali/bbc_bangla_radio/programmes/p030vjwg\">শুনুন, প্রবাহ</a>&nbsp;&middot; &lrm;<a href=\"https://www.bbc.com/bengali/bbc_bangla_radio/programmes/p030vjwm\">শুনুন, পরিক্রমা</a>&nbsp;&middot; &lrm;<a href=\"https://www.bbc.com/bengali/bbc_bangla_radio/liveradio\">বিবিসি বাংলা</a>&nbsp;&middot; &lrm;<a href=\"https://www.bbc.com/bengali/topics/cxy7jg418e7t\">ভিডিও</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://bangla.bdnews24.com/\">bdnews24.com</a></h3>\r\n\r\n<p><a href=\"https://bangla.bdnews24.com/\"><cite>https://bangla.bdnews24.com</cite></a></p>\r\n\r\n<p>২ ঘন্টা আগে&nbsp;&mdash;&nbsp;... আজকের শিরোনাম, মতামত, আর্টস, হ্যালো, লাইভ স্কোর, স্পটলাইট, ব্রেকিং&nbsp;<em>নিউজ</em>, অর্থনীতি,&nbsp;...</p>', NULL, NULL, NULL, '2022-12-16 02:46:03', '2022-12-16 02:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mhakash5000@gmail.com', '$2y$10$b3NjrCZvEKgiqfNfvH8rXemOmmlLkgIrfHxrNiwTIu3MXpa8OgNnC', '2022-11-16 23:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `name`, `slug`, `price`, `model`, `short_desc`, `long_desc`, `image`, `created_at`, `updated_at`) VALUES
(53, 1, 14, 1, 'fridge', 'fridge', 50, 'sdfdsre433', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '202207180844pexels-pixabay-262353.jpg', '2022-07-01 22:55:30', '2022-07-27 02:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

DROP TABLE IF EXISTS `product_colors`;
CREATE TABLE IF NOT EXISTS `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
CREATE TABLE IF NOT EXISTS `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_images`
--

DROP TABLE IF EXISTS `product_sub_images`;
CREATE TABLE IF NOT EXISTS `product_sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `sub_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_images`
--

INSERT INTO `product_sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(40, 57, '2022070212531.jpg', '2022-07-02 06:53:04', '2022-07-02 06:53:04'),
(41, 57, '2022070212532.png', '2022-07-02 06:53:04', '2022-07-02 06:53:04'),
(42, 53, '20220702130918.png', '2022-07-02 07:09:18', '2022-07-02 07:09:18'),
(43, 53, '20220702130919.png', '2022-07-02 07:09:18', '2022-07-02 07:09:18'),
(46, 58, '202207030533user8-128x128.jpg', '2022-07-02 23:33:37', '2022-07-02 23:33:37'),
(47, 60, '202207041156Color.jpg', '2022-07-04 05:56:32', '2022-07-04 05:56:32'),
(48, 73, '2022070616421657112186.jpg', '2022-07-06 10:42:13', '2022-07-06 10:42:13'),
(49, 74, '2022070616421657117406.jpg', '2022-07-06 10:42:56', '2022-07-06 10:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

DROP TABLE IF EXISTS `qualifications`;
CREATE TABLE IF NOT EXISTS `qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qualification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `qualification`, `institute`, `deadline`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Secondary School Certificate(SSC)', 'Islampur Alhaj Kazi Rafiqul Islam High School', '2003-2008', 'Islampur,Bijoynagor, Brahmanbaria, Chattagram, Bangladesh.', NULL, '2022-11-20 11:19:12', '2022-12-03 02:58:04'),
(2, 'Diploma in Computer  Science & Engineering', 'Brahmanbaria Polytechnic Institute', '2008-2012', 'Islampur,Bijoynagor, Brahmanbaria,, Bangladesh.', NULL, '2022-11-20 11:28:51', '2022-12-03 03:00:33'),
(3, 'Bsc in Computer  Science & Engineering', 'Atish Dipankar University Of Science And Technology.', '2018-2021', 'Plot # 209, Khantek, Sector # 15,Uttara,Dhaka,Bangladesh.', NULL, '2022-11-20 11:37:40', '2022-12-03 03:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `react_projects`
--

DROP TABLE IF EXISTS `react_projects`;
CREATE TABLE IF NOT EXISTS `react_projects` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `react_projects`
--

INSERT INTO `react_projects` (`id`, `title`, `description`, `image`, `url`, `github`, `created_at`, `updated_at`) VALUES
(1, 'Developed By React', '<p>https://github.com/mhakash5000/faqs-app</p>', '1670007076.png', 'https://faqs-app.netlify.app', 'https://github.com/mhakash5000/faqs-app', '2022-12-02 12:51:16', '2022-12-03 01:15:45'),
(2, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/React-Todo-App</p>', '1670007235.png', 'https://todo-app-reactapp.netlify.app', 'https://github.com/mhakash5000/React-Todo-App', '2022-12-02 12:53:55', '2022-12-03 01:16:04'),
(3, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/React-CRUD-Operation</p>', '1670007714.png', 'https://react-employees-info.netlify.app/', 'https://github.com/mhakash5000/React-CRUD-Operation', '2022-12-02 13:01:54', '2022-12-03 01:16:37'),
(4, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/react-country-app</p>', '1670007917.png', 'https://world-countries-information.netlify.app', 'https://github.com/mhakash5000/react-country-app', '2022-12-02 13:05:18', '2022-12-03 01:17:00'),
(5, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/react-rest-api-crud</p>', '1670008205.png', 'https://react-rest-api-crud.netlify.app/', 'https://github.com/mhakash5000/react-rest-api-crud', '2022-12-02 13:10:06', '2022-12-03 01:17:25'),
(6, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/react-shopping-cart</p>', '1670008595.png', 'https://elated-torvalds-ccee1e.netlify.app/', 'https://github.com/mhakash5000/react-shopping-cart', '2022-12-02 13:16:35', '2022-12-03 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `recent_projects`
--

DROP TABLE IF EXISTS `recent_projects`;
CREATE TABLE IF NOT EXISTS `recent_projects` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `recent_project_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_projects`
--

INSERT INTO `recent_projects` (`id`, `recent_project_id`, `title`, `description`, `image`, `url`, `github`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/masjidalummah</p>', '1670003559.png', 'https://masjidalummah.com.au/', 'https://github.com/mhakash5000/masjidalummah', '2022-12-02 11:45:53', '2022-12-03 01:14:30'),
(2, NULL, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/ace-learing-pluse</p>', '1670004367.png', 'https://acelearningplus.piximstudio.com/', 'https://github.com/mhakash5000/ace-learing-pluse', '2022-12-02 11:47:54', '2022-12-03 01:14:53'),
(3, NULL, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/sn-advance-limited</p>', '1670003658.png', 'https://project01.snadvanceltd.com/', 'https://github.com/mhakash5000/sn-advance-limited', '2022-12-02 11:54:18', '2022-12-03 01:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(9, 'Web Design', '<p>I provide HTML5, CSS3, bootstrap 4, and bootstrap 5&nbsp; for beautiful responsive design.</p>', NULL, '2022-11-25 07:14:59', '2022-12-06 09:15:49'),
(10, 'Frontend Development ', '<p>I provide javascript, React, Jquery, JSON, and more services for frontend technology. Javascript is the most popular language. We can develop the front and backend by javascript.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2022-11-25 07:18:03', '2022-12-06 09:54:13'),
(11, 'Backend Developent', '<p>I Provide PHP for Backend Development. PHP is the server-side language. There are many frameworks of PHP but the most popular formwork is Laravel among all PHP frameworks. That&#39;s why I providing Laravel Framework.</p>', NULL, '2022-11-25 07:18:31', '2022-12-06 09:48:55'),
(12, 'Web Development', '<p><strong>Web development</strong>&nbsp;is the work involved in developing a website&nbsp;for the Internet and web development can range from developing a simple single static page&nbsp;of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plain_text\">p</a>lain text&nbsp;to complex web applications, electronic business, and social network services. A more comprehensive list of tasks to which Web development commonly refers may include web content development,&nbsp;client liaison, client-side and servier-side scripting, web server and network security.&nbsp;configuration, and e-commerce development.</p>', NULL, '2022-12-06 09:35:41', '2022-12-06 09:35:41'),
(13, 'Graphics Design', '<p>I provide logo design, banner design, poster design, and more services with Photoshop and Illustrator.</p>', NULL, '2022-12-06 09:53:47', '2022-12-06 09:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sizes_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'M', 1, NULL, '2022-04-19 15:07:08', '2022-04-19 15:07:08'),
(2, 'L', 1, NULL, '2022-04-19 15:07:42', '2022-04-19 15:07:42'),
(3, 'XL', 1, NULL, '2022-04-19 15:07:57', '2022-04-19 15:07:57'),
(4, 'S', 1, NULL, '2022-04-19 15:08:04', '2022-04-19 15:08:04'),
(5, 'Full-length', 1, NULL, '2022-05-02 10:29:09', '2022-05-02 10:29:09'),
(6, '10 inch', 1, NULL, '2022-05-02 10:30:24', '2022-05-02 10:30:24'),
(7, '11 inch', 1, NULL, '2022-05-02 10:30:31', '2022-05-02 10:30:31'),
(8, '12 inch', 1, NULL, '2022-05-02 10:30:38', '2022-05-02 10:30:38'),
(9, '13 inch', 1, NULL, '2022-05-02 10:30:46', '2022-05-02 10:30:46'),
(10, '14 inch', 1, NULL, '2022-05-02 10:30:51', '2022-05-02 10:30:51'),
(11, '24 inches long by 24 inches wide', 1, NULL, '2022-05-05 00:29:52', '2022-05-05 00:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `skill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 'HTML & CSS', '50%', '2022-11-20 11:42:09', '2022-11-20 11:42:09'),
(2, 'Tailwind CSS', '10%', '2022-11-20 11:42:45', '2022-11-20 11:42:45'),
(3, 'JavaScript', '60%', '2022-11-20 11:43:46', '2022-11-20 11:43:46'),
(4, 'React', '50%', '2022-11-20 11:44:15', '2022-11-20 11:46:37'),
(5, 'Jquery', '35%', '2022-11-20 11:45:08', '2022-11-20 11:45:08'),
(6, 'PHP', '50%', '2022-11-20 11:45:55', '2022-11-20 11:45:55'),
(7, 'Laravel', '60%', '2022-11-20 11:46:10', '2022-11-20 11:46:10'),
(8, 'Ajax', '37%', '2022-11-20 11:47:11', '2022-11-20 11:47:11'),
(9, 'Json', '50%', '2022-11-20 11:48:01', '2022-11-20 11:48:01'),
(10, 'Rest Api', '25%', '2022-11-20 11:48:26', '2022-11-20 11:48:26'),
(11, 'Adobe Photoshop', '35%', '2022-11-20 11:48:50', '2022-11-20 11:50:48'),
(12, 'Illustrator', '36%', '2022-11-20 11:50:33', '2022-11-20 11:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `short_title`, `long_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(16, '1668709509.jpg', 'Entrepreneur workshop in Manchester and surrounding areas', 'sdfdfdsf', NULL, 4, '2022-11-17 12:25:09', '2022-11-17 12:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'electric', 'electric', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923933.jpeg', 'Inactive', '2022-06-30 06:23:22', '2022-07-04 02:38:53'),
(2, 1, 'electronics', 'electronics', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923924.jpeg', 'Inactive', '2022-06-30 06:30:22', '2022-07-04 02:38:44'),
(3, 1, 'Hardware', 'Hardware', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923907.jpeg', 'Inactive', '2022-06-30 06:30:43', '2022-07-04 02:38:27'),
(4, 1, 'Software', 'Software', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923893.jpeg', 'Inactive', '2022-06-30 06:31:03', '2022-07-04 02:38:13'),
(5, 1, 'Shirt', 'Shirt', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923829.jpeg', 'Inactive', '2022-06-30 06:31:22', '2022-07-04 02:37:09'),
(6, 2, 'T-Shirt', 'T-Shirt', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923844.jpeg', 'Inactive', '2022-06-30 06:31:47', '2022-07-04 02:37:24'),
(7, 2, 'Pants', 'Pants', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923860.jpeg', 'Inactive', '2022-06-30 06:32:01', '2022-07-04 02:37:40'),
(8, 2, 'Baby Cloths', 'Baby Cloths', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923879.jpeg', 'Inactive', '2022-06-30 06:32:21', '2022-07-04 02:37:59'),
(9, 3, 'Consultant', 'Consultant', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923944.jpeg', 'Inactive', '2022-06-30 06:32:46', '2022-07-04 02:39:24'),
(12, 4, 'Air Filters', 'Air Filters', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924120.jpeg', 'Inactive', '2022-06-30 06:34:15', '2022-07-04 02:42:00'),
(13, 4, 'Oil Separators', 'Oil Separators', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924168.jpeg', 'Inactive', '2022-06-30 06:34:44', '2022-07-04 02:42:48'),
(14, 4, 'Oil Filters', 'Oil Filters', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924147.jpeg', 'Inactive', '2022-06-30 06:35:10', '2022-07-04 02:42:27'),
(15, 4, 'Compressor Oil', 'Compressor Oil', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924089.jpeg', 'Inactive', '2022-06-30 06:35:37', '2022-07-04 02:41:29'),
(16, 4, 'CNG Ring Piston', 'CNG Ring Piston', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924073.jpeg', 'Inactive', '2022-06-30 06:35:59', '2022-07-04 02:41:13'),
(17, 4, 'Bike Security Device', 'Bike Security Device', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924054.jpeg', 'Inactive', '2022-06-30 06:36:20', '2022-07-04 02:40:54'),
(18, 4, 'Bio Spray Plus', 'Bio Spray Plus', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924037.jpeg', 'Inactive', '2022-06-30 06:36:47', '2022-07-04 02:40:37'),
(21, 3, 'Drawing', 'Drawing', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924016.jpeg', 'Inactive', '2022-07-01 22:53:35', '2022-07-04 02:40:16'),
(22, 1, 'Mechanical Equipment', 'Mechanical Equipment', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '2022070306471656308774.jpeg', 'Inactive', '2022-07-03 00:47:31', '2022-07-04 02:39:58'),
(23, 1, 'Food Supplement', 'Food Supplement', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '2022070306491656308774.jpeg', 'Inactive', '2022-07-03 00:49:37', '2022-07-04 02:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `designation`, `description`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Shamima Nasrin', 'shamima-nasrin', 'Chairman', 'Shamima Nasrin, the wife of Sagar Ahamed, was born in 1995. in a respectable Muslim family of rangpur. and graduated from the Begum rokeya college rangpur. B.A (hons)M.A English', '1658381645.jpeg', '2022-07-19 00:18:47', '2022-08-02 22:46:26'),
(6, 'Sagar Ahamed', 'Sagar Ahamed', 'Managing Director', 'Sagar Ahamed BSc in Civil Engineering,\r\nSagar Ahamed was born in 1988 in a respectable Muslim family of Dinajpur and graduated from Stamford University Bangladesh.', '1658381877.jpeg', '2022-07-19 00:26:36', '2022-07-20 23:37:57'),
(7, 'Md.Anam Ahmed', 'mdanam-ahmed', 'Director', 'Md.Anam Ahmed was born in 1992 in a respectable Muslim family of Dinajpur and graduated from Hajee Mohammod Danesh Science and Technology University, Dinajpur. B.sc fisheries (hons) *MS in Aquaculture from Banhladesh Agricultural University, Mymensingh.', '1658382811.jpg', '2022-07-19 00:27:28', '2022-08-02 22:47:10'),
(9, 'Md.Rumon Sarkar', 'mdrumon-sarkar', 'General Manager', 'Md.Rumon Sarkar was born in 1992 in a respectable Muslim family of Dinajpur and graduated from  Dhaka International university, BSc in (EETE', '1658382193.jpeg', '2022-07-19 02:52:20', '2022-08-02 22:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `total_projects`
--

DROP TABLE IF EXISTS `total_projects`;
CREATE TABLE IF NOT EXISTS `total_projects` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `total_project_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `total_projects`
--

INSERT INTO `total_projects` (`id`, `total_project_id`, `title`, `description`, `image`, `url`, `github`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/masjidalummah</p>', '1670003749.png', 'https://masjidalummah.com.au/', 'https://github.com/mhakash5000/masjidalummah', '2022-12-02 11:40:56', '2022-12-03 01:13:20'),
(3, NULL, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/ace-learing-pluse</p>', '1670004128.png', 'https://acelearningplus.piximstudio.com/', 'https://github.com/mhakash5000/ace-learing-pluse', '2022-12-02 11:43:48', '2022-12-03 01:13:45'),
(4, NULL, 'Here is the GitHub link', '<p>https://github.com/mhakash5000/sn-advance-limited</p>', '1670003075.png', 'https://project01.snadvanceltd.com/', 'https://github.com/mhakash5000/sn-advance-limited', '2022-12-02 11:44:35', '2022-12-03 01:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
CREATE TABLE IF NOT EXISTS `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `training` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `training`, `institute`, `deadline`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Web Development with Laravel', 'CSL IT', 'From January 01, 2019 - April 30, 2019', 'Koril, Dhaka, Bangladesh', NULL, '2022-12-03 04:24:33', '2022-12-03 04:26:36'),
(2, 'Web Development with Laravel & React', 'DevEnv Paid Course', 'From October 1, 2022 - going on', 'Dhaka, Bangladesh', NULL, '2022-12-03 04:31:28', '2022-12-03 04:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `phone`, `email`, `email_verified_at`, `password`, `image`, `salary`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Mh akash', '01989139570', 'mhakash5000@gmail.com', NULL, '$2y$10$q8UBS6E.aSiEXlmANeY.EOajs/fUfqeXQP.J5/Plw/EfzxGcRGFq.', NULL, '10000', NULL, '2022-11-26 12:10:55', '2022-11-26 12:10:55'),
(3, '', 'Jameson Gutmann', '', 'sschuppe@example.com', '2022-11-26 12:47:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xJBidwhEjZ', '2022-11-26 12:47:48', '2022-11-26 12:47:48'),
(4, '', 'akash', '01782283171', 'a@gmail.com', NULL, '$2y$10$dJKkvvQaD23UNjUg63O7see2HdXArAjbE9R/HzUopqNzQnJ8BQ92e', NULL, '20000', NULL, '2022-11-26 13:16:10', '2022-11-26 13:16:10'),
(5, '', '', '', '', NULL, '1', NULL, '50000', NULL, '2022-11-26 13:25:10', '2022-11-26 13:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_locations`
--

DROP TABLE IF EXISTS `user_locations`;
CREATE TABLE IF NOT EXISTS `user_locations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_documentaries`
--

DROP TABLE IF EXISTS `work_documentaries`;
CREATE TABLE IF NOT EXISTS `work_documentaries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `total_work` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_project` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_experience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_companies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_documentaries`
--

INSERT INTO `work_documentaries` (`id`, `total_work`, `total_project`, `total_experience`, `total_companies`, `created_at`, `updated_at`) VALUES
(2, '8', '10', '2', '6', '2022-11-24 08:40:23', '2022-12-06 10:11:26');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
