-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2024 at 09:12 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `red-explorers`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 1270, 'Roman', 'romron856@gmail.com', 'http://localhost/red-explorers', '127.0.0.1', '2024-10-08 14:11:01', '2024-10-08 11:11:01', 'fhgdhkjh', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1728468116;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1728496924;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728500515;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728502315;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728502555;a:1:{s:33:\"updraftplus_clean_temporary_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728504115;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728540116;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1728540124;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1728540127;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729058583;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'auto'),
(2, 'siteurl', 'http://localhost/red-explorers', 'on'),
(3, 'home', 'http://localhost/red-explorers', 'on'),
(4, 'blogname', 'red-explorers', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'romron856@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', 'password', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '5', 'on'),
(24, 'date_format', 'd.m.Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'd.m.Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:122:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:15:\"destinations/?$\";s:31:\"index.php?post_type=destination\";s:45:\"destinations/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=destination&feed=$matches[1]\";s:40:\"destinations/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=destination&feed=$matches[1]\";s:32:\"destinations/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=destination&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:49:\"location/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?location=$matches[1]&feed=$matches[2]\";s:44:\"location/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?location=$matches[1]&feed=$matches[2]\";s:25:\"location/([^/]+)/embed/?$\";s:41:\"index.php?location=$matches[1]&embed=true\";s:37:\"location/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&paged=$matches[2]\";s:19:\"location/([^/]+)/?$\";s:30:\"index.php?location=$matches[1]\";s:40:\"destinations/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"destinations/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"destinations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"destinations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"destinations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"destinations/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"destinations/([^/]+)/embed/?$\";s:44:\"index.php?destination=$matches[1]&embed=true\";s:33:\"destinations/([^/]+)/trackback/?$\";s:38:\"index.php?destination=$matches[1]&tb=1\";s:53:\"destinations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?destination=$matches[1]&feed=$matches[2]\";s:48:\"destinations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?destination=$matches[1]&feed=$matches[2]\";s:41:\"destinations/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?destination=$matches[1]&paged=$matches[2]\";s:48:\"destinations/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?destination=$matches[1]&cpage=$matches[2]\";s:37:\"destinations/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?destination=$matches[1]&page=$matches[2]\";s:29:\"destinations/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"destinations/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"destinations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"destinations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"destinations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"destinations/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:4:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:41:\"red-explorers-core/red-explorers-core.php\";i:3;s:27:\"updraftplus/updraftplus.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '3', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'red-explorers', 'on'),
(42, 'stylesheet', 'red-explorers', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '57155', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '379', 'on'),
(58, 'thumbnail_size_h', '268', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1743400915', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '57155', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'auto'),
(103, 'fresh_site', '0', 'auto'),
(104, 'WPLANG', 'ru_RU', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:16:\"weather_widget-3\";}s:17:\"rmbt_blog_sidebar\";a:3:{i:0;s:17:\"category_widget-3\";i:1;s:13:\"recent_post-2\";i:2;s:16:\"weather_widget-4\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.6.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'auto'),
(127, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1727849480;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(140, 'can_compress_scripts', '1', 'on'),
(155, 'finished_updating_comment_type', '1', 'auto'),
(156, 'current_theme', 'red-explorers', 'auto'),
(157, 'theme_mods_red-explorers', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:10:\"header_nav\";i:2;s:21:\"footer_horizontal_nav\";i:3;s:10:\"footer_nav\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:40;}', 'on'),
(158, 'theme_switched', '', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(168, 'rmbt_theme_options', 'a:115:{s:8:\"last_tab\";s:0:\"\";s:12:\"rmbt-address\";s:60:\"Add: 221B John hope <br> Street, Lekki, Lagos, <br> Nigeria.\";s:19:\"rmbt-manager-1-name\";s:0:\"\";s:20:\"rmbt-manager-1-phone\";s:17:\"+234 706 507 8544\";s:20:\"rmbt-manager-1-email\";s:21:\"info@redexplorers.com\";s:19:\"rmbt-manager-2-name\";s:0:\"\";s:20:\"rmbt-manager-2-phone\";s:0:\"\";s:20:\"rmbt-manager-2-email\";s:0:\"\";s:19:\"rmbt-manager-3-name\";s:0:\"\";s:20:\"rmbt-manager-3-phone\";s:0:\"\";s:20:\"rmbt-manager-3-email\";s:0:\"\";s:19:\"rmbt-manager-4-name\";s:0:\"\";s:20:\"rmbt-manager-4-phone\";s:0:\"\";s:20:\"rmbt-manager-4-email\";s:0:\"\";s:19:\"rmbt-manager-5-name\";s:0:\"\";s:20:\"rmbt-manager-5-phone\";s:0:\"\";s:20:\"rmbt-manager-5-email\";s:0:\"\";s:19:\"rmbt-manager-6-name\";s:0:\"\";s:20:\"rmbt-manager-6-phone\";s:0:\"\";s:20:\"rmbt-manager-6-email\";s:0:\"\";s:17:\"rmbt-name-email-1\";s:0:\"\";s:12:\"rmbt-email-1\";s:0:\"\";s:17:\"rmbt-name-email-2\";s:0:\"\";s:12:\"rmbt-email-2\";s:0:\"\";s:17:\"rmbt-name-email-3\";s:0:\"\";s:12:\"rmbt-email-3\";s:0:\"\";s:17:\"rmbt-name-email-4\";s:0:\"\";s:12:\"rmbt-email-4\";s:0:\"\";s:14:\"rmbt-copyright\";s:41:\"© 2021 RedExplorers. All rights reserved\";s:20:\"rmbt-copyright-terms\";s:1:\"#\";s:22:\"rmbt-copyright-privacy\";s:1:\"#\";s:23:\"rmbt-copyright-site-map\";s:1:\"#\";s:16:\"rmbt-footer-logo\";a:5:{s:3:\"url\";s:66:\"http://localhost/red-explorers/wp-content/uploads/2024/10/logo.png\";s:2:\"id\";s:2:\"40\";s:6:\"height\";s:2:\"56\";s:5:\"width\";s:3:\"133\";s:9:\"thumbnail\";s:66:\"http://localhost/red-explorers/wp-content/uploads/2024/10/logo.png\";}s:20:\"rmbt-footer-logo_alt\";s:12:\"logo of site\";s:24:\"rmbt-footer_section-text\";s:251:\"We are location independent bloggers, digital influencers, small group tour organizers and world travelers with a serious passion for the sun, the sea and adventure.\r\n<br><br>\r\nEight years and 60-something countries later and we are still on the road.\";s:20:\"rmbt-footer-logo-dev\";a:5:{s:3:\"url\";s:70:\"http://localhost/red-explorers/wp-content/uploads/2024/10/logo-dev.png\";s:2:\"id\";s:2:\"55\";s:6:\"height\";s:2:\"41\";s:5:\"width\";s:3:\"189\";s:9:\"thumbnail\";s:70:\"http://localhost/red-explorers/wp-content/uploads/2024/10/logo-dev.png\";}s:24:\"rmbt-footer-logo-dev_alt\";s:14:\"Developer logo\";s:11:\"rmbt-no-img\";a:5:{s:3:\"url\";s:24:\"/assets/img/no-image.jpg\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:15:\"rmbt-no-img_alt\";s:0:\"\";s:29:\"rmbt-news-block_section-title\";s:27:\"Останні новини\";s:26:\"main_slider_screen-gallery\";s:0:\"\";s:16:\"front_page_title\";s:39:\"Український виробник\";s:19:\"front_page_subtitle\";s:85:\"хлібопекарського і кондитерського обладнання\";s:17:\"front_page_slogan\";s:55:\"Завжди надійний постачальник!\";s:12:\"button_title\";s:31:\"Зв`язатись з нами\";s:11:\"button_href\";s:1:\"#\";s:18:\"background_picture\";a:5:{s:3:\"url\";s:30:\"/assets/img/prapor-ukrainy.jpg\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:26:\"introduction_section-title\";s:32:\"Запрошуємо до нас\";s:25:\"introduction_section-text\";s:0:\"\";s:30:\"introduction_first_block-title\";s:20:\"Виробляємо\";s:29:\"introduction_first_block-text\";s:0:\"\";s:31:\"introduction_second_block-title\";s:20:\"Ремонтуємо\";s:30:\"introduction_second_block-text\";s:0:\"\";s:18:\"introduction_image\";a:5:{s:3:\"url\";s:24:\"/assets/img/no-image.jpg\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:22:\"introduction_image_alt\";s:0:\"\";s:26:\"best-sellers_section-title\";s:23:\"Хіти продажу\";s:25:\"best-sellers_section_text\";s:0:\"\";s:28:\"best-sellers-goods-one_title\";s:0:\"\";s:22:\"best-sellers_image-one\";a:5:{s:3:\"url\";s:24:\"/assets/img/no-image.jpg\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:26:\"best-sellers_image-one_alt\";s:0:\"\";s:21:\"best-sellers_href-one\";s:0:\"\";s:28:\"best-sellers-goods-two_title\";s:0:\"\";s:22:\"best-sellers_image-two\";a:5:{s:3:\"url\";s:24:\"/assets/img/no-image.jpg\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:26:\"best-sellers_image-two_alt\";s:0:\"\";s:21:\"best-sellers_href-two\";s:0:\"\";s:30:\"best-sellers-goods-three_title\";s:0:\"\";s:24:\"best-sellers_image-three\";a:5:{s:3:\"url\";s:24:\"/assets/img/no-image.jpg\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:28:\"best-sellers_image-three_alt\";s:0:\"\";s:23:\"best-sellers_href-three\";s:0:\"\";s:33:\"rmbt-benefits-block_section-title\";s:0:\"\";s:35:\"rmbt-benefits-block_article-title-1\";s:0:\"\";s:34:\"rmbt-benefits-block_article-text-1\";s:0:\"\";s:35:\"rmbt-benefits-block_article-title-2\";s:0:\"\";s:34:\"rmbt-benefits-block_article-text-2\";s:0:\"\";s:35:\"rmbt-benefits-block_article-title-3\";s:0:\"\";s:34:\"rmbt-benefits-block_article-text-3\";s:0:\"\";s:35:\"rmbt-benefits-block_article-title-4\";s:0:\"\";s:34:\"rmbt-benefits-block_article-text-4\";s:0:\"\";s:31:\"rmbt-benefits-bg-picture_img-id\";a:5:{s:3:\"url\";s:24:\"/assets/img/no-image.jpg\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:32:\"rmbt-benefits-bg-picture_img-alt\";s:0:\"\";s:32:\"rmbt-facts-block_article-title-1\";s:18:\"партнерів\";s:31:\"rmbt-facts-block_article-text-1\";s:0:\"\";s:32:\"rmbt-facts-block_article-title-2\";s:16:\"проектів\";s:31:\"rmbt-facts-block_article-text-2\";s:0:\"\";s:32:\"rmbt-facts-block_article-title-3\";s:28:\"співробітників\";s:31:\"rmbt-facts-block_article-text-3\";s:0:\"\";s:25:\"clients-portfolio_gallery\";s:0:\"\";s:23:\"rmbt-header-blog_img-bg\";a:5:{s:3:\"url\";s:64:\"http://localhost/red-explorers/wp-content/uploads/2024/10/bg.jpg\";s:2:\"id\";s:2:\"27\";s:6:\"height\";s:3:\"587\";s:5:\"width\";s:4:\"1438\";s:9:\"thumbnail\";s:64:\"http://localhost/red-explorers/wp-content/uploads/2024/10/bg.jpg\";}s:27:\"rmbt-header-blog_img-bg_alt\";s:28:\"header-blog background image\";s:23:\"rmbt-header-blog_slogan\";s:67:\"THE COUNTER: <span>70</span> Countries    <span>1036</span> Cities \";s:22:\"rmbt-header-blog_title\";s:39:\"Leave your mark on all  over the world \";s:29:\"rmbt-header-blog_button_title\";s:9:\"Read More\";s:28:\"rmbt-header-blog_button_href\";s:1:\"#\";s:28:\"rmbt-header-blog_scroll-down\";s:23:\"Scroll Down to Continue\";s:18:\"rmbt-header_img-bg\";a:5:{s:3:\"url\";s:66:\"http://localhost/red-explorers/wp-content/uploads/2024/10/bg_2.jpg\";s:2:\"id\";s:3:\"643\";s:6:\"height\";s:3:\"422\";s:5:\"width\";s:4:\"1440\";s:9:\"thumbnail\";s:66:\"http://localhost/red-explorers/wp-content/uploads/2024/10/bg_2.jpg\";}s:22:\"rmbt-header_img-bg_alt\";s:23:\"header background image\";s:17:\"rmbt-header_title\";s:11:\"Destination\";s:28:\"rmbt-social-networks_fb-link\";s:25:\"https://www.facebook.com/\";s:30:\"rmbt-social-networks_fb_img-id\";a:5:{s:3:\"url\";s:64:\"http://localhost/red-explorers/wp-content/uploads/2024/10/fb.png\";s:2:\"id\";s:2:\"64\";s:6:\"height\";s:2:\"20\";s:5:\"width\";s:2:\"13\";s:9:\"thumbnail\";s:64:\"http://localhost/red-explorers/wp-content/uploads/2024/10/fb.png\";}s:31:\"rmbt-social-networks-fb_img-alt\";s:7:\"fb-icon\";s:28:\"rmbt-social-networks_tw-link\";s:24:\"https://www.twitter.com/\";s:30:\"rmbt-social-networks_tw_img-id\";a:5:{s:3:\"url\";s:64:\"http://localhost/red-explorers/wp-content/uploads/2024/10/tw.png\";s:2:\"id\";s:2:\"65\";s:6:\"height\";s:2:\"17\";s:5:\"width\";s:2:\"21\";s:9:\"thumbnail\";s:64:\"http://localhost/red-explorers/wp-content/uploads/2024/10/tw.png\";}s:31:\"rmbt-social-networks-tw_img-alt\";s:7:\"tw-icon\";s:35:\"rmbt-social-networks_instagram-link\";s:26:\"https://www.instagram.com/\";s:37:\"rmbt-social-networks_instagram_img-id\";a:5:{s:3:\"url\";s:66:\"http://localhost/red-explorers/wp-content/uploads/2024/10/inst.png\";s:2:\"id\";s:2:\"66\";s:6:\"height\";s:2:\"24\";s:5:\"width\";s:2:\"24\";s:9:\"thumbnail\";s:66:\"http://localhost/red-explorers/wp-content/uploads/2024/10/inst.png\";}s:38:\"rmbt-social-networks_instagram_img-alt\";s:0:\"\";s:33:\"rmbt-social-networks_youtube-link\";s:20:\"https://youtube.com/\";s:35:\"rmbt-social-networks-youtube_img-id\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:36:\"rmbt-social-networks-youtube_img-alt\";s:0:\"\";s:34:\"rmbt-social-networks_linkedin-link\";s:21:\"https://linkedin.com/\";s:36:\"rmbt-social-networks-linkedin_img-id\";a:5:{s:3:\"url\";s:64:\"http://localhost/red-explorers/wp-content/uploads/2024/10/in.png\";s:2:\"id\";s:2:\"67\";s:6:\"height\";s:2:\"19\";s:5:\"width\";s:2:\"18\";s:9:\"thumbnail\";s:64:\"http://localhost/red-explorers/wp-content/uploads/2024/10/in.png\";}s:37:\"rmbt-social-networks-linkedin_img-alt\";s:0:\"\";s:19:\"rmbt-subscribe-text\";s:58:\"Join <span>98,641</span> Monthly Readers. Subscribe Today!\";s:21:\"rmbt-want-to-go-title\";s:37:\"<span>Where do</span> you want to go?\";s:20:\"rmbt-want-to-go-text\";s:232:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mor mattis nec etiam ac. Bibendum tellus mi imperdiet amet maecenas magna tortor nulla. Nec tortor ut cursus ornare nibh vivamus. Quam elementum at velit viverra mattis.\r\n\";}', 'auto'),
(169, 'rmbt_theme_options-transients', 'a:4:{s:14:\"changed_values\";a:1:{s:20:\"rmbt-want-to-go-text\";s:0:\"\";}s:9:\"last_save\";i:1728134519;s:13:\"last_compiler\";i:1728134519;s:11:\"last_import\";i:1728134519;}', 'auto'),
(170, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(171, 'recently_activated', 'a:0:{}', 'auto'),
(180, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'auto'),
(201, 'updraftplus_version', '1.24.6', 'on'),
(202, 'updraftplus_tour_cancelled_on', 'intro', 'on'),
(203, 'updraft_updraftvault', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-a660014289ef4cd91140e8a4ef341a9c\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}', 'on'),
(204, 'updraft_dropbox', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-74a7b3060483215557884d5133fd11dc\";a:4:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:0:\"\";}}}', 'on'),
(205, 'updraft_s3', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-713af2e5713ef73c21c81c69166ed978\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'on'),
(206, 'updraft_cloudfiles', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-ad2d7ef0775a669eb8be36215e979fcb\";a:5:{s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"region\";s:3:\"DFW\";s:4:\"user\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'on'),
(207, 'updraft_googledrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-1d03728a2235e12ff368c37fd8763d43\";a:11:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";s:7:\"user_id\";s:64:\"1eba45126135411c9890bae6626814779289bee2bfd7f1179632a63b6f9626e6\";s:16:\"tmp_access_token\";a:4:{s:12:\"access_token\";s:224:\"ya29.a0AcM612xNwZ8N17IExXhtt91Z4Bw0nCeF7kc1egTFvCXnBVM5gIWsx7agJwMJfTlMnUzUtmFTe4cuahD3Q4U63h9Z3nCN3u4lOtXFv0rVEPeIPtZRG-oilvAg9CpJackS912qCG4ZlxUxqQ6e24twuvruxxgdtx8dUV0QYf5dEQaCgYKAVkSARASFQHGX2Mizup_PYf_W_pC8iqzFmBDnA0177\";s:7:\"created\";i:1728465128;s:10:\"expires_in\";i:3599;s:13:\"refresh_token\";s:0:\"\";}s:5:\"scope\";a:3:{i:0;s:10:\"drive.file\";i:1;s:14:\"drive.readonly\";i:2;s:16:\"userinfo.profile\";}s:9:\"ownername\";s:10:\"Роман\";s:10:\"owneremail\";s:19:\"romron856@gmail.com\";s:6:\"folder\";s:11:\"UpdraftPlus\";s:10:\"expires_in\";i:1728468697;s:16:\"instance_enabled\";i:1;}}}', 'on'),
(208, 'updraft_onedrive', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'on'),
(209, 'updraft_ftp', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-495ddf9209780693b6f7cbdafb1c19a1\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";s:1:\"1\";}}}', 'on'),
(210, 'updraft_azure', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'on'),
(211, 'updraft_sftp', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'on'),
(212, 'updraft_googlecloud', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'on'),
(213, 'updraft_backblaze', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'on'),
(214, 'updraft_webdav', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'on'),
(215, 'updraft_s3generic', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-175ece0bc7dd0507dd40c212d735365e\";a:6:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";s:19:\"bucket_access_style\";s:10:\"path_style\";s:17:\"signature_version\";s:2:\"v4\";}}}', 'on'),
(216, 'updraft_pcloud', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'on'),
(217, 'updraft_openstack', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-a8f5b0b66fe1ab8aa2638a4751d2db53\";a:6:{s:7:\"authurl\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:6:\"region\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'on'),
(218, 'updraft_dreamobjects', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-7f830007f66d27892b44e7a65f5f876e\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:26:\"objects-us-east-1.dream.io\";}}}', 'on'),
(219, 'updraftplus-addons_siteid', '594b245c0cd6220d69fff5c799518a59', 'off'),
(220, 'updraft_retain_extrarules', 'a:0:{}', 'on'),
(221, 'updraft_email', '', 'on'),
(222, 'updraft_report_warningsonly', 'a:0:{}', 'on'),
(223, 'updraft_report_wholebackup', 'a:0:{}', 'on'),
(224, 'updraft_extradbs', 'a:0:{}', 'on'),
(225, 'updraft_include_more_path', 'a:0:{}', 'on'),
(226, 'auto_update_plugins', 'a:0:{}', 'off'),
(227, 'updraft_interval', 'manual', 'on'),
(228, 'updraft_retain', '2', 'on'),
(229, 'updraft_interval_database', 'manual', 'on'),
(230, 'updraft_retain_db', '2', 'on'),
(231, 'updraft_service', 'googledrive', 'on'),
(232, 'updraft_include_uploads_exclude', 'backup*,*backups,backwpup*,wp-clone,snapshots', 'on'),
(233, 'updraft_include_others_exclude', 'upgrade,cache,updraft,backup*,*backups,mysql.sql,debug.log', 'on'),
(234, 'updraft_split_every', '400', 'on'),
(235, 'updraft_delete_local', '1', 'on'),
(236, 'updraft_dir', 'updraft', 'on'),
(237, 'updraft_include_plugins', '0', 'on'),
(238, 'updraft_include_themes', '0', 'on'),
(239, 'updraft_include_uploads', '0', 'on'),
(240, 'updraft_include_mu-plugins', '0', 'on'),
(241, 'updraft_include_others', '0', 'on'),
(242, 'updraft_debug_mode', '0', 'on'),
(243, 'updraft_ssl_useservercerts', '0', 'on'),
(244, 'updraft_ssl_disableverify', '0', 'on'),
(245, 'updraft_ssl_nossl', '0', 'on'),
(246, 'updraft_lastmessage', 'The backup succeeded and is now complete (Окт 08 16:34:45)', 'on'),
(247, 'updraftplus_locked_d', '1', 'no'),
(248, 'updraftplus_last_lock_time_d', '2024-10-02 17:55:27', 'no'),
(249, 'updraftplus_semaphore_d', '1', 'no'),
(250, 'updraft_last_scheduled_d', '1727891727', 'auto'),
(252, 'updraft_backup_history', 'a:4:{i:1728394447;a:15:{s:7:\"plugins\";a:1:{i:0;s:60:\"backup_2024-10-08-1634_redexplorers_a5e9c1d3b153-plugins.zip\";}s:12:\"plugins-size\";i:10865551;s:7:\"uploads\";a:1:{i:0;s:60:\"backup_2024-10-08-1634_redexplorers_a5e9c1d3b153-uploads.zip\";}s:12:\"uploads-size\";i:1726403;s:2:\"db\";s:54:\"backup_2024-10-08-1634_redexplorers_a5e9c1d3b153-db.gz\";s:7:\"db-size\";i:144995;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:3:{s:8:\"plugins0\";s:40:\"633de7439bfad65e2ee0947f5d6c48f8a54b49a9\";s:8:\"uploads0\";s:40:\"dbe2acd8466d9ea9bbc66cd549ae1d66856c5514\";s:3:\"db0\";s:40:\"b92d4e4d6f516be07f43d8e32860bb62d52f1bdf\";}s:6:\"sha256\";a:3:{s:8:\"plugins0\";s:64:\"e4c2b585cf24ac2673c269e99ab047907dc35553014b4e626ae23717d125c0e1\";s:8:\"uploads0\";s:64:\"923e56780e85a4d9143c4896734b39ab4ab32358b430d7c260af73833ba0c2e8\";s:3:\"db0\";s:64:\"3a2b5cc70af63d311e21c803b2b10d740d6ac74230fa33e1e95d9fb29122868f\";}}s:5:\"nonce\";s:12:\"a5e9c1d3b153\";s:7:\"service\";a:1:{i:0;s:11:\"googledrive\";}s:20:\"service_instance_ids\";a:1:{s:11:\"googledrive\";a:1:{i:0;s:34:\"s-1d03728a2235e12ff368c37fd8763d43\";}}s:11:\"always_keep\";b:1;s:19:\"files_enumerated_at\";a:2:{s:7:\"plugins\";i:1728394447;s:7:\"uploads\";i:1728394474;}s:18:\"created_by_version\";s:6:\"1.24.6\";s:21:\"last_saved_by_version\";s:6:\"1.24.6\";s:12:\"is_multisite\";b:0;}i:1728323486;a:14:{s:7:\"plugins\";a:1:{i:0;s:60:\"backup_2024-10-07-2051_redexplorers_4981ad4bcf50-plugins.zip\";}s:12:\"plugins-size\";i:10861242;s:7:\"uploads\";a:1:{i:0;s:60:\"backup_2024-10-07-2051_redexplorers_4981ad4bcf50-uploads.zip\";}s:12:\"uploads-size\";i:1726403;s:5:\"nonce\";s:12:\"4981ad4bcf50\";s:7:\"service\";a:1:{i:0;s:11:\"googledrive\";}s:20:\"service_instance_ids\";a:1:{s:11:\"googledrive\";a:1:{i:0;s:34:\"s-1d03728a2235e12ff368c37fd8763d43\";}}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:2:{s:7:\"plugins\";i:1728323487;s:7:\"uploads\";i:1728323522;}s:18:\"created_by_version\";s:6:\"1.24.6\";s:21:\"last_saved_by_version\";s:6:\"1.24.6\";s:12:\"is_multisite\";b:0;s:2:\"db\";s:54:\"backup_2024-10-07-2051_redexplorers_4981ad4bcf50-db.gz\";s:7:\"db-size\";s:5:\"35145\";}i:1727891700;a:6:{s:20:\"service_instance_ids\";a:1:{s:11:\"googledrive\";a:1:{i:0;s:34:\"s-1d03728a2235e12ff368c37fd8763d43\";}}s:7:\"service\";a:1:{i:0;s:11:\"googledrive\";}s:2:\"db\";s:54:\"backup_2024-10-02-2055_redexplorers_926fcd92c472-db.gz\";s:5:\"nonce\";s:12:\"926fcd92c472\";s:7:\"db-size\";s:6:\"349705\";s:6:\"native\";b:0;}i:1727866740;a:6:{s:20:\"service_instance_ids\";a:1:{s:11:\"googledrive\";a:1:{i:0;s:34:\"s-1d03728a2235e12ff368c37fd8763d43\";}}s:7:\"service\";a:1:{i:0;s:11:\"googledrive\";}s:2:\"db\";s:54:\"backup_2024-10-02-1359_redexplorers_ea631af2ef55-db.gz\";s:5:\"nonce\";s:12:\"ea631af2ef55\";s:7:\"db-size\";s:6:\"346676\";s:6:\"native\";b:0;}}', 'off'),
(253, 'updraft_last_backup', 'a:6:{s:26:\"nonincremental_backup_time\";i:1728394447;s:11:\"backup_time\";i:1728394447;s:12:\"backup_array\";a:7:{s:7:\"plugins\";a:1:{i:0;s:60:\"backup_2024-10-08-1634_redexplorers_a5e9c1d3b153-plugins.zip\";}s:12:\"plugins-size\";i:10865551;s:7:\"uploads\";a:1:{i:0;s:60:\"backup_2024-10-08-1634_redexplorers_a5e9c1d3b153-uploads.zip\";}s:12:\"uploads-size\";i:1726403;s:2:\"db\";s:54:\"backup_2024-10-08-1634_redexplorers_a5e9c1d3b153-db.gz\";s:7:\"db-size\";i:144995;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:3:{s:8:\"plugins0\";s:40:\"633de7439bfad65e2ee0947f5d6c48f8a54b49a9\";s:8:\"uploads0\";s:40:\"dbe2acd8466d9ea9bbc66cd549ae1d66856c5514\";s:3:\"db0\";s:40:\"b92d4e4d6f516be07f43d8e32860bb62d52f1bdf\";}s:6:\"sha256\";a:3:{s:8:\"plugins0\";s:64:\"e4c2b585cf24ac2673c269e99ab047907dc35553014b4e626ae23717d125c0e1\";s:8:\"uploads0\";s:64:\"923e56780e85a4d9143c4896734b39ab4ab32358b430d7c260af73833ba0c2e8\";s:3:\"db0\";s:64:\"3a2b5cc70af63d311e21c803b2b10d740d6ac74230fa33e1e95d9fb29122868f\";}}}s:7:\"success\";i:1;s:6:\"errors\";a:0:{}s:12:\"backup_nonce\";s:12:\"a5e9c1d3b153\";}', 'on'),
(283, 'updraft_lock_ea631af2ef55', '1727881777', 'no'),
(291, 'site_logo', '40', 'auto'),
(313, 'updraft_lock_926fcd92c472', '1727936766', 'no'),
(323, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:36:\"HTTPS запрос неудачен.\";}}', 'auto'),
(324, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":5,\"critical\":0}', 'on'),
(350, 'updraftplus_unlocked_fd', '1', 'no'),
(351, 'updraftplus_last_lock_time_fd', '2024-10-08 13:34:07', 'no'),
(352, 'updraftplus_semaphore_fd', '0', 'no'),
(353, 'updraft_last_scheduled_fd', '1728394447', 'auto'),
(363, 'updraft_lock_2b3225a4e1ad', '1727968546', 'no'),
(371, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(399, 'updraft_lock_f6711e4f7f96', '1728019831', 'no'),
(425, 'post-thumbnail_size_w', '379', 'auto'),
(426, 'post-thumbnail_size_h', '268', 'auto'),
(427, 'post-thumbnail_crop', '1', 'auto'),
(483, 'updraft_lock_a48eed38d881', '1728056480', 'no'),
(502, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.9.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1728058282;s:7:\"version\";s:5:\"5.9.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(507, 'secret_key', 'k<(gHT4@AO&`q_#uVpNm/Fw>A9K9~|WQJ({MMW9VaB;u`Nnz^GE%$E;O@#KG{gkd', 'off'),
(556, 'recovery_mode_email_last_sent', '1728368455', 'auto'),
(671, '_site_transient_timeout_browser_76f322cce4917300bde3ccf1bc39ec40', '1728927428', 'off'),
(672, '_site_transient_browser_76f322cce4917300bde3ccf1bc39ec40', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"131.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(674, 'updraft_remotesites', '', 'on'),
(675, 'updraft_migrator_localkeys', '', 'on'),
(676, 'updraft_central_localkeys', '', 'on'),
(682, 'updraft_lock_4981ad4bcf50', '1728366324', 'no'),
(683, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.6.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1728457323;s:15:\"version_checked\";s:5:\"6.6.2\";s:12:\"translations\";a:0:{}}', 'off'),
(684, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1728459407;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.9.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.9.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:6:\"4.4.18\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/redux-framework.4.4.18.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=2889347\";s:3:\"svg\";s:60:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=2889347\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=2889347\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:6:\"1.24.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/updraftplus.1.24.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.2\";}}}', 'off'),
(687, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1728460947;s:7:\"checked\";a:1:{s:13:\"red-explorers\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(742, 'category_children', 'a:0:{}', 'auto'),
(759, 'widget_category_widget', 'a:2:{i:3;a:1:{s:5:\"title\";s:10:\"Categories\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(762, 'widget_recent_post', 'a:2:{i:2;a:1:{s:5:\"title\";s:12:\"Recent Posts\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(774, 'widget_weather_widget', 'a:3:{i:3;a:2:{s:5:\"title\";s:14:\"Weather Widget\";s:7:\"api_key\";s:30:\"444444444444444444444444444444\";}i:4;a:2:{s:5:\"title\";s:14:\"Weather Widget\";s:7:\"api_key\";s:32:\"8ea2932abb6f006fd1b149c95a927828\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(783, 'weather_widget_api_key', '8ea2932abb6f006fd1b149c95a927828', 'auto'),
(793, '_site_transient_timeout_available_translations', '1728462592', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(794, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.9/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-22 13:29:21\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.5/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.25/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-16 06:53:48\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-09-22 18:57:51\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-24 11:03:00\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-23 09:49:04\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 17:44:28\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 09:32:19\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-29 10:55:14\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-05 00:52:59\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.6.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-29 10:55:35\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.6.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-05 00:53:45\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-16 07:47:37\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 05:54:01\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-11 10:54:13\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-23 06:54:09\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-13 21:41:14\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-11 10:55:12\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-13 10:48:39\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-17 16:02:45\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-16 19:05:01\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-02 20:41:52\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-28 23:24:21\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 13:29:14\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.15/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.20/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-26 09:32:30\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-06-02 15:48:46\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-06-20 17:15:28\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-13 09:15:26\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-20 07:24:00\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-26 19:55:47\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 09:59:26\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.6/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-06 15:34:06\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-03-01 06:52:39\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.32\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.32/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-24 18:18:49\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-18 16:12:48\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-21 23:19:06\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-16 11:59:33\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-15 07:15:06\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-12 07:15:01\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.6/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.20/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-18 15:21:55\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-14 13:16:53\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-24 01:25:58\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.6.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-06-29 07:13:57\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.6.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-13 13:11:03\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-06-20 17:21:01\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.9/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-13 20:34:23\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.5/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.5/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-21 12:42:09\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.14\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.14/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-21 18:30:52\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-30 11:32:23\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-13 20:41:18\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.6.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-18 18:14:47\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-25 13:42:31\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 06:32:31\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.33\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.33/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 07:51:40\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 07:51:49\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.6.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.5/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-08 22:00:15\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-09 21:42:05\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-01 23:45:25\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.15/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-27 04:28:12\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-21 09:44:08\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.6.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-30 07:14:35\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-02 11:01:55\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-20 22:15:56\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-20 14:19:52\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-06-20 17:29:45\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.9/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.24/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-14 17:49:29\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-22 14:13:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.15/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-23 10:07:11\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.6.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-10 18:56:55\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-10 20:43:54\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.6/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(817, '_site_transient_timeout_theme_roots', '1728462747', 'off'),
(818, '_site_transient_theme_roots', 'a:1:{s:13:\"red-explorers\";s:7:\"/themes\";}', 'off'),
(819, '_site_transient_timeout_wp_theme_files_patterns-e1ece929ba9a7bfe39c5ddbe18f18102', '1728466889', 'off'),
(820, '_site_transient_wp_theme_files_patterns-e1ece929ba9a7bfe39c5ddbe18f18102', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 7, '_wp_attached_file', '2024/10/cropped-logo.png'),
(6, 7, '_wp_attachment_context', 'custom-logo'),
(7, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:133;s:6:\"height\";i:56;s:4:\"file\";s:24:\"2024/10/cropped-logo.png\";s:8:\"filesize\";i:3575;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 8, '_wp_trash_meta_status', 'publish'),
(9, 8, '_wp_trash_meta_time', '1727850288'),
(17, 12, '_edit_lock', '1727850372:1'),
(18, 14, '_edit_lock', '1727850387:1'),
(19, 16, '_edit_lock', '1728372832:1'),
(20, 18, '_edit_lock', '1727850408:1'),
(21, 20, '_edit_lock', '1727854406:1'),
(22, 22, '_menu_item_type', 'post_type'),
(23, 22, '_menu_item_menu_item_parent', '0'),
(24, 22, '_menu_item_object_id', '20'),
(25, 22, '_menu_item_object', 'page'),
(26, 22, '_menu_item_target', ''),
(27, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 22, '_menu_item_xfn', ''),
(29, 22, '_menu_item_url', ''),
(31, 23, '_menu_item_type', 'post_type'),
(32, 23, '_menu_item_menu_item_parent', '0'),
(33, 23, '_menu_item_object_id', '18'),
(34, 23, '_menu_item_object', 'page'),
(35, 23, '_menu_item_target', ''),
(36, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 23, '_menu_item_xfn', ''),
(38, 23, '_menu_item_url', ''),
(40, 24, '_menu_item_type', 'post_type'),
(41, 24, '_menu_item_menu_item_parent', '0'),
(42, 24, '_menu_item_object_id', '16'),
(43, 24, '_menu_item_object', 'page'),
(44, 24, '_menu_item_target', ''),
(45, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 24, '_menu_item_xfn', ''),
(47, 24, '_menu_item_url', ''),
(49, 25, '_menu_item_type', 'post_type'),
(50, 25, '_menu_item_menu_item_parent', '0'),
(51, 25, '_menu_item_object_id', '14'),
(52, 25, '_menu_item_object', 'page'),
(53, 25, '_menu_item_target', ''),
(54, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 25, '_menu_item_xfn', ''),
(56, 25, '_menu_item_url', ''),
(58, 26, '_menu_item_type', 'post_type'),
(59, 26, '_menu_item_menu_item_parent', '0'),
(60, 26, '_menu_item_object_id', '12'),
(61, 26, '_menu_item_object', 'page'),
(62, 26, '_menu_item_target', ''),
(63, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 26, '_menu_item_xfn', ''),
(65, 26, '_menu_item_url', ''),
(67, 27, '_wp_attached_file', '2024/10/bg.jpg'),
(68, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1438;s:6:\"height\";i:587;s:4:\"file\";s:14:\"2024/10/bg.jpg\";s:8:\"filesize\";i:783861;s:5:\"sizes\";a:5:{s:13:\"rmbt-post-img\";a:5:{s:4:\"file\";s:14:\"bg-379x268.jpg\";s:5:\"width\";i:379;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18991;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"bg-379x268.jpg\";s:5:\"width\";i:379;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18991;}s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"bg-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8067;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:14:\"bg-768x314.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41833;}s:5:\"large\";a:5:{s:4:\"file\";s:15:\"bg-1024x418.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:418;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68393;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 28, '_menu_item_type', 'custom'),
(70, 28, '_menu_item_menu_item_parent', '23'),
(71, 28, '_menu_item_object_id', '28'),
(72, 28, '_menu_item_object', 'custom'),
(73, 28, '_menu_item_target', ''),
(74, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 28, '_menu_item_xfn', ''),
(76, 28, '_menu_item_url', '#'),
(78, 29, '_menu_item_type', 'custom'),
(79, 29, '_menu_item_menu_item_parent', '28'),
(80, 29, '_menu_item_object_id', '29'),
(81, 29, '_menu_item_object', 'custom'),
(82, 29, '_menu_item_target', ''),
(83, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 29, '_menu_item_xfn', ''),
(85, 29, '_menu_item_url', '#'),
(87, 30, '_menu_item_type', 'custom'),
(88, 30, '_menu_item_menu_item_parent', '29'),
(89, 30, '_menu_item_object_id', '30'),
(90, 30, '_menu_item_object', 'custom'),
(91, 30, '_menu_item_target', ''),
(92, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 30, '_menu_item_xfn', ''),
(94, 30, '_menu_item_url', '#'),
(98, 32, '_wp_trash_meta_status', 'publish'),
(99, 32, '_wp_trash_meta_time', '1727881886'),
(100, 33, '_wp_attached_file', '2024/10/logo.png'),
(101, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:133;s:6:\"height\";i:56;s:4:\"file\";s:16:\"2024/10/logo.png\";s:8:\"filesize\";i:3622;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 34, '_edit_lock', '1727881952:1'),
(103, 34, '_wp_trash_meta_status', 'publish'),
(104, 34, '_wp_trash_meta_time', '1727881959'),
(105, 35, '_wp_attached_file', '2024/10/fb.png'),
(106, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:13;s:6:\"height\";i:20;s:4:\"file\";s:14:\"2024/10/fb.png\";s:8:\"filesize\";i:282;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 36, '_wp_attached_file', '2024/10/tw.png'),
(108, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:21;s:6:\"height\";i:17;s:4:\"file\";s:14:\"2024/10/tw.png\";s:8:\"filesize\";i:460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 37, '_wp_attached_file', '2024/10/inst.png'),
(110, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:24;s:6:\"height\";i:24;s:4:\"file\";s:16:\"2024/10/inst.png\";s:8:\"filesize\";i:764;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 38, '_wp_attached_file', '2024/10/in.png'),
(112, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:18;s:6:\"height\";i:19;s:4:\"file\";s:14:\"2024/10/in.png\";s:8:\"filesize\";i:352;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 39, '_wp_attached_file', '2024/10/logo-dev.png'),
(114, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:189;s:6:\"height\";i:41;s:4:\"file\";s:20:\"2024/10/logo-dev.png\";s:8:\"filesize\";i:6657;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"logo-dev-150x41.png\";s:5:\"width\";i:150;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5671;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 40, '_wp_attached_file', '2024/10/logo.png'),
(116, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:133;s:6:\"height\";i:56;s:4:\"file\";s:16:\"2024/10/logo.png\";s:8:\"filesize\";i:3622;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 41, '_wp_trash_meta_status', 'publish'),
(118, 41, '_wp_trash_meta_time', '1727891336'),
(119, 42, '_menu_item_type', 'custom'),
(120, 42, '_menu_item_menu_item_parent', '0'),
(121, 42, '_menu_item_object_id', '42'),
(122, 42, '_menu_item_object', 'custom'),
(123, 42, '_menu_item_target', ''),
(124, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 42, '_menu_item_xfn', ''),
(126, 42, '_menu_item_url', '#'),
(128, 43, '_menu_item_type', 'custom'),
(129, 43, '_menu_item_menu_item_parent', '0'),
(130, 43, '_menu_item_object_id', '43'),
(131, 43, '_menu_item_object', 'custom'),
(132, 43, '_menu_item_target', ''),
(133, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(134, 43, '_menu_item_xfn', ''),
(135, 43, '_menu_item_url', '#'),
(137, 44, '_menu_item_type', 'custom'),
(138, 44, '_menu_item_menu_item_parent', '0'),
(139, 44, '_menu_item_object_id', '44'),
(140, 44, '_menu_item_object', 'custom'),
(141, 44, '_menu_item_target', ''),
(142, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 44, '_menu_item_xfn', ''),
(144, 44, '_menu_item_url', '#'),
(146, 45, '_menu_item_type', 'custom'),
(147, 45, '_menu_item_menu_item_parent', '0'),
(148, 45, '_menu_item_object_id', '45'),
(149, 45, '_menu_item_object', 'custom'),
(150, 45, '_menu_item_target', ''),
(151, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 45, '_menu_item_xfn', ''),
(153, 45, '_menu_item_url', '#'),
(155, 46, '_menu_item_type', 'custom'),
(156, 46, '_menu_item_menu_item_parent', '0'),
(157, 46, '_menu_item_object_id', '46'),
(158, 46, '_menu_item_object', 'custom'),
(159, 46, '_menu_item_target', ''),
(160, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 46, '_menu_item_xfn', ''),
(162, 46, '_menu_item_url', '#'),
(164, 47, '_menu_item_type', 'custom'),
(165, 47, '_menu_item_menu_item_parent', '0'),
(166, 47, '_menu_item_object_id', '47'),
(167, 47, '_menu_item_object', 'custom'),
(168, 47, '_menu_item_target', ''),
(169, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 47, '_menu_item_xfn', ''),
(171, 47, '_menu_item_url', '#'),
(173, 48, '_menu_item_type', 'custom'),
(174, 48, '_menu_item_menu_item_parent', '0'),
(175, 48, '_menu_item_object_id', '48'),
(176, 48, '_menu_item_object', 'custom'),
(177, 48, '_menu_item_target', ''),
(178, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 48, '_menu_item_xfn', ''),
(180, 48, '_menu_item_url', '#'),
(182, 49, '_menu_item_type', 'custom'),
(183, 49, '_menu_item_menu_item_parent', '0'),
(184, 49, '_menu_item_object_id', '49'),
(185, 49, '_menu_item_object', 'custom'),
(186, 49, '_menu_item_target', ''),
(187, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 49, '_menu_item_xfn', ''),
(189, 49, '_menu_item_url', '#'),
(191, 50, '_menu_item_type', 'custom'),
(192, 50, '_menu_item_menu_item_parent', '0'),
(193, 50, '_menu_item_object_id', '50'),
(194, 50, '_menu_item_object', 'custom'),
(195, 50, '_menu_item_target', ''),
(196, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 50, '_menu_item_xfn', ''),
(198, 50, '_menu_item_url', '#'),
(200, 51, '_menu_item_type', 'custom'),
(201, 51, '_menu_item_menu_item_parent', '0'),
(202, 51, '_menu_item_object_id', '51'),
(203, 51, '_menu_item_object', 'custom'),
(204, 51, '_menu_item_target', ''),
(205, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 51, '_menu_item_xfn', ''),
(207, 51, '_menu_item_url', '#'),
(209, 52, '_menu_item_type', 'custom'),
(210, 52, '_menu_item_menu_item_parent', '0'),
(211, 52, '_menu_item_object_id', '52'),
(212, 52, '_menu_item_object', 'custom'),
(213, 52, '_menu_item_target', ''),
(214, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 52, '_menu_item_xfn', ''),
(216, 52, '_menu_item_url', '#'),
(218, 53, '_menu_item_type', 'custom'),
(219, 53, '_menu_item_menu_item_parent', '0'),
(220, 53, '_menu_item_object_id', '53'),
(221, 53, '_menu_item_object', 'custom'),
(222, 53, '_menu_item_target', ''),
(223, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 53, '_menu_item_xfn', ''),
(225, 53, '_menu_item_url', '#'),
(227, 54, '_menu_item_type', 'post_type'),
(228, 54, '_menu_item_menu_item_parent', '0'),
(229, 54, '_menu_item_object_id', '20'),
(230, 54, '_menu_item_object', 'page'),
(231, 54, '_menu_item_target', ''),
(232, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 54, '_menu_item_xfn', ''),
(234, 54, '_menu_item_url', ''),
(236, 55, '_wp_attached_file', '2024/10/logo-dev.png'),
(237, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:189;s:6:\"height\";i:41;s:4:\"file\";s:20:\"2024/10/logo-dev.png\";s:8:\"filesize\";i:6657;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"logo-dev-150x41.png\";s:5:\"width\";i:150;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5671;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 42, '_wp_old_date', '2024-10-02'),
(293, 43, '_wp_old_date', '2024-10-02'),
(294, 44, '_wp_old_date', '2024-10-02'),
(313, 45, '_wp_old_date', '2024-10-02'),
(314, 46, '_wp_old_date', '2024-10-02'),
(315, 47, '_wp_old_date', '2024-10-02'),
(316, 48, '_wp_old_date', '2024-10-02'),
(317, 54, '_wp_old_date', '2024-10-02'),
(318, 49, '_wp_old_date', '2024-10-02'),
(319, 50, '_wp_old_date', '2024-10-02'),
(320, 51, '_wp_old_date', '2024-10-02'),
(321, 52, '_wp_old_date', '2024-10-02'),
(322, 53, '_wp_old_date', '2024-10-02'),
(323, 64, '_wp_attached_file', '2024/10/fb.png'),
(324, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:13;s:6:\"height\";i:20;s:4:\"file\";s:14:\"2024/10/fb.png\";s:8:\"filesize\";i:282;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(325, 65, '_wp_attached_file', '2024/10/tw.png'),
(326, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:21;s:6:\"height\";i:17;s:4:\"file\";s:14:\"2024/10/tw.png\";s:8:\"filesize\";i:460;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 66, '_wp_attached_file', '2024/10/inst.png'),
(328, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:24;s:6:\"height\";i:24;s:4:\"file\";s:16:\"2024/10/inst.png\";s:8:\"filesize\";i:764;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(329, 67, '_wp_attached_file', '2024/10/in.png'),
(330, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:18;s:6:\"height\";i:19;s:4:\"file\";s:14:\"2024/10/in.png\";s:8:\"filesize\";i:352;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1965, 554, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(1966, 554, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:960;s:6:\"height\";i:717;s:4:\"file\";s:25:\"2024/10/coming-soon_5.jpg\";s:8:\"filesize\";i:36880;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"coming-soon_5-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6593;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"coming-soon_5-379x268.jpg\";s:5:\"width\";i:379;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8794;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"coming-soon_5-768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21889;}s:13:\"rmbt-post-img\";a:5:{s:4:\"file\";s:25:\"coming-soon_5-379x268.jpg\";s:5:\"width\";i:379;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8794;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1967, 555, '_wp_attached_file', '2024/10/coming-soon_6.jpg'),
(1968, 555, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:25:\"2024/10/coming-soon_6.jpg\";s:8:\"filesize\";i:11738;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"coming-soon_6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7572;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"coming-soon_6-360x268.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9772;}s:13:\"rmbt-post-img\";a:5:{s:4:\"file\";s:25:\"coming-soon_6-360x268.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9772;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1969, 555, '_edit_lock', '1728039430:1'),
(2030, 576, '_wp_attached_file', '2024/10/coming-soon_6.jpg'),
(2034, 578, '_wp_attached_file', '2024/10/coming-soon_6.jpg'),
(2170, 618, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2181, 622, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2244, 640, '_form', '[email email-850 placeholder \"Email Address\"][submit \"Subscribe\"]'),
(2245, 640, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <romron856@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:269:\"От: [your-name] [your-email]\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто уведомление о том, что на вашем веб-сайте ([_site_title] [_site_url]) была отправлена контактная форма.\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(2246, 640, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <romron856@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:426:\"Сообщение:\n[your-message]\n\n-- \nЭто письмо является квитанцией об отправке контактной формы на нашем веб-сайте ([_site_title] [_site_url]), в которой использовался ваш адрес электронной почты. Если это были не вы, пожалуйста, проигнорируйте это сообщение.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(2247, 640, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:46:\"Важно заполнить это поле.\";s:16:\"invalid_too_long\";s:90:\"В это поле вставлен слишком большой объем данных.\";s:17:\"invalid_too_short\";s:86:\"В это поле вставлен слишком малый объем данных.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:62:\"Загруженный файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:61:\"Введите дату в формате ГГГГ-ММ-ДД.\";s:14:\"date_too_early\";s:71:\"В это поле введена слишком ранняя дата.\";s:13:\"date_too_late\";s:73:\"В это поле введена слишком поздняя дата.\";s:14:\"invalid_number\";s:26:\"Введите число.\";s:16:\"number_too_small\";s:79:\"В это поле введено слишком маленькое число.\";s:16:\"number_too_large\";s:75:\"В это поле введено слишком большое число.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:60:\"Введите адрес электронной почты.\";s:11:\"invalid_url\";s:19:\"Введите URL.\";s:11:\"invalid_tel\";s:43:\"Введите номер телефона.\";}'),
(2248, 640, '_additional_settings', ''),
(2249, 640, '_locale', 'ru_RU'),
(2250, 640, '_hash', 'a575b57819a9423a68a954eef03ccda1e2f9d6d1'),
(2258, 640, '_config_validation', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:125:\"Был использован некорректный синтаксис почтового адреса в поле %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(2264, 16, '_wp_page_template', 'destination.php'),
(2265, 643, '_wp_attached_file', '2024/10/bg_2.jpg'),
(2266, 643, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1440;s:6:\"height\";i:422;s:4:\"file\";s:16:\"2024/10/bg_2.jpg\";s:8:\"filesize\";i:587087;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"bg_2-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7161;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"bg_2-1024x300.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50671;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"bg_2-379x268.jpg\";s:5:\"width\";i:379;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16358;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"bg_2-768x225.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32488;}s:13:\"rmbt-post-img\";a:5:{s:4:\"file\";s:16:\"bg_2-379x268.jpg\";s:5:\"width\";i:379;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16358;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2301, 644, '_edit_lock', '1728206476:1'),
(2302, 645, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2303, 646, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2304, 647, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2343, 658, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2384, 669, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2423, 680, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2475, 691, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2527, 703, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2528, 704, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2529, 705, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2580, 716, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2632, 727, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2806, 788, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2877, 809, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2918, 820, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2959, 831, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(2998, 842, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3039, 853, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3228, 914, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3269, 925, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3310, 936, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3451, 967, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3522, 988, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3559, 999, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3600, 1010, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3621, 1021, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3710, 1035, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3735, 1046, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3818, 1057, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3869, 1068, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3981, 1090, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(3982, 1091, 'place', 'Delhi'),
(3983, 1091, '_thumbnail_id', '1090'),
(3984, 1092, 'place', 'USA'),
(3985, 1092, '_thumbnail_id', '1090'),
(3986, 1093, 'place', 'Africa'),
(3987, 1093, '_thumbnail_id', '1090'),
(3988, 1094, 'place', 'Mediterranean'),
(3989, 1094, '_thumbnail_id', '1090'),
(3990, 1095, 'place', 'India'),
(3991, 1095, '_thumbnail_id', '1090'),
(3992, 1096, 'place', 'Mediterranean'),
(3993, 1096, '_thumbnail_id', '1090'),
(3994, 1097, 'place', 'North America'),
(3995, 1097, '_thumbnail_id', '1090'),
(3996, 1098, 'place', 'Australia'),
(3997, 1098, '_thumbnail_id', '1090'),
(3998, 1099, 'place', 'Vietnam'),
(3999, 1099, '_thumbnail_id', '1090'),
(4000, 1100, 'place', 'America'),
(4001, 1100, '_thumbnail_id', '1090'),
(4002, 1101, 'place', 'Marrakech'),
(4003, 1101, '_thumbnail_id', '1090'),
(4004, 1102, 'place', 'Latin America'),
(4005, 1102, '_thumbnail_id', '1090'),
(4006, 1103, 'place', 'Marrakech'),
(4007, 1103, '_thumbnail_id', '1090'),
(4008, 1104, 'place', 'Delhi'),
(4009, 1104, '_thumbnail_id', '1090'),
(4010, 1105, 'place', 'Bangkok'),
(4011, 1105, '_thumbnail_id', '1090'),
(4012, 1106, 'place', 'North America'),
(4013, 1106, '_thumbnail_id', '1090'),
(4014, 1107, 'place', 'Latin America'),
(4015, 1107, '_thumbnail_id', '1090'),
(4016, 1108, 'place', 'USA'),
(4017, 1108, '_thumbnail_id', '1090'),
(4018, 1109, 'place', 'Australia'),
(4019, 1109, '_thumbnail_id', '1090'),
(4020, 1110, 'place', 'Vietnam'),
(4021, 1110, '_thumbnail_id', '1090'),
(4022, 1111, 'place', 'France'),
(4023, 1111, '_thumbnail_id', '1090'),
(4024, 1111, '_edit_lock', '1728367637:1'),
(4025, 1112, '_menu_item_type', 'custom'),
(4026, 1112, '_menu_item_menu_item_parent', '0'),
(4027, 1112, '_menu_item_object_id', '1112'),
(4028, 1112, '_menu_item_object', 'custom'),
(4029, 1112, '_menu_item_target', ''),
(4030, 1112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(4031, 1112, '_menu_item_xfn', ''),
(4032, 1112, '_menu_item_url', 'http://localhost/red-explorers/destinations/'),
(4033, 1112, '_menu_item_orphaned', '1728367973'),
(4034, 1113, '_menu_item_type', 'custom'),
(4035, 1113, '_menu_item_menu_item_parent', '0'),
(4036, 1113, '_menu_item_object_id', '1113'),
(4037, 1113, '_menu_item_object', 'custom'),
(4038, 1113, '_menu_item_target', ''),
(4039, 1113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(4040, 1113, '_menu_item_xfn', ''),
(4041, 1113, '_menu_item_url', 'http://localhost/red-explorers/destinations/'),
(4043, 26, '_wp_old_date', '2024-10-02'),
(4044, 25, '_wp_old_date', '2024-10-02'),
(4045, 24, '_wp_old_date', '2024-10-02'),
(4046, 23, '_wp_old_date', '2024-10-02'),
(4047, 28, '_wp_old_date', '2024-10-02'),
(4048, 29, '_wp_old_date', '2024-10-02'),
(4049, 30, '_wp_old_date', '2024-10-02'),
(4050, 22, '_wp_old_date', '2024-10-02'),
(4111, 1133, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4112, 1134, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4113, 1135, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4114, 1136, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4115, 1137, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4116, 1138, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4183, 1159, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4224, 1170, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4265, 1181, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4306, 1192, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4468, 1243, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4539, 1264, '_wp_attached_file', '2024/10/coming-soon_5.jpg'),
(4540, 1265, 'country', 'India'),
(4543, 1265, '_thumbnail_id', '1264'),
(4544, 1266, 'country', 'New Zealand'),
(4547, 1266, '_thumbnail_id', '1264'),
(4548, 1267, 'country', 'India'),
(4551, 1267, '_thumbnail_id', '1264'),
(4552, 1268, 'country', 'Brazil'),
(4555, 1268, '_thumbnail_id', '1264'),
(4556, 1269, 'country', 'Canada'),
(4559, 1269, '_thumbnail_id', '1264'),
(4560, 1270, 'country', 'Brazil'),
(4563, 1270, '_thumbnail_id', '1264'),
(4564, 1271, 'country', 'Switzerland'),
(4567, 1271, '_thumbnail_id', '1264'),
(4568, 1272, 'country', 'Switzerland'),
(4571, 1272, '_thumbnail_id', '1264'),
(4572, 1273, 'country', 'China'),
(4575, 1273, '_thumbnail_id', '1264'),
(4576, 1274, 'country', 'Switzerland'),
(4579, 1274, '_thumbnail_id', '1264'),
(4580, 1270, '_edit_lock', '1728388895:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 0, '2024-10-02 09:01:57', '2024-10-02 06:01:57', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-10-02 09:01:57', '2024-10-02 06:01:57', '', 0, 'http://localhost/red-explorers/2024/10/02/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2024-10-02 09:24:44', '2024-10-02 06:24:44', 'http://localhost/red-explorers/wp-content/uploads/2024/10/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2024-10-02 09:24:44', '2024-10-02 06:24:44', '', 6, 'http://localhost/red-explorers/wp-content/uploads/2024/10/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2024-10-02 09:24:48', '2024-10-02 06:24:48', '{\n    \"red-explorers::custom_logo\": {\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-10-02 06:24:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fcb64f46-24c3-4ccb-a719-4ddfaa679f74', '', '', '2024-10-02 09:24:48', '2024-10-02 06:24:48', '', 0, 'http://localhost/red-explorers/2024/10/02/fcb64f46-24c3-4ccb-a719-4ddfaa679f74/', 0, 'customize_changeset', '', 0),
(12, 1, '2024-10-02 09:28:23', '2024-10-02 06:28:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-10-02 09:28:23', '2024-10-02 06:28:23', '', 0, 'http://localhost/red-explorers/?page_id=12', 0, 'page', '', 0),
(13, 1, '2024-10-02 09:28:23', '2024-10-02 06:28:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2024-10-02 09:28:23', '2024-10-02 06:28:23', '', 12, 'http://localhost/red-explorers/?p=13', 0, 'revision', '', 0),
(14, 1, '2024-10-02 09:28:44', '2024-10-02 06:28:44', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2024-10-02 09:28:44', '2024-10-02 06:28:44', '', 0, 'http://localhost/red-explorers/?page_id=14', 0, 'page', '', 0),
(15, 1, '2024-10-02 09:28:44', '2024-10-02 06:28:44', '', 'About us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2024-10-02 09:28:44', '2024-10-02 06:28:44', '', 14, 'http://localhost/red-explorers/?p=15', 0, 'revision', '', 0),
(16, 1, '2024-10-02 09:28:56', '2024-10-02 06:28:56', '', 'Destination', '', 'publish', 'closed', 'closed', '', 'destination-page', '', '', '2024-10-08 09:22:33', '2024-10-08 06:22:33', '', 0, 'http://localhost/red-explorers/?page_id=16', 0, 'page', '', 0),
(17, 1, '2024-10-02 09:28:56', '2024-10-02 06:28:56', '', 'Destination', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2024-10-02 09:28:56', '2024-10-02 06:28:56', '', 16, 'http://localhost/red-explorers/?p=17', 0, 'revision', '', 0),
(18, 1, '2024-10-02 09:29:07', '2024-10-02 06:29:07', '', 'Tips', '', 'publish', 'closed', 'closed', '', 'tips', '', '', '2024-10-02 09:29:07', '2024-10-02 06:29:07', '', 0, 'http://localhost/red-explorers/?page_id=18', 0, 'page', '', 0),
(19, 1, '2024-10-02 09:29:07', '2024-10-02 06:29:07', '', 'Tips', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2024-10-02 09:29:07', '2024-10-02 06:29:07', '', 18, 'http://localhost/red-explorers/?p=19', 0, 'revision', '', 0),
(20, 1, '2024-10-02 09:29:18', '2024-10-02 06:29:18', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2024-10-02 09:29:18', '2024-10-02 06:29:18', '', 0, 'http://localhost/red-explorers/?page_id=20', 0, 'page', '', 0),
(21, 1, '2024-10-02 09:29:18', '2024-10-02 06:29:18', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2024-10-02 09:29:18', '2024-10-02 06:29:18', '', 20, 'http://localhost/red-explorers/?p=21', 0, 'revision', '', 0),
(22, 1, '2024-10-08 09:14:01', '2024-10-02 06:30:05', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=22', 9, 'nav_menu_item', '', 0),
(23, 1, '2024-10-08 09:14:01', '2024-10-02 06:30:05', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=23', 5, 'nav_menu_item', '', 0),
(24, 1, '2024-10-08 09:14:01', '2024-10-02 06:30:05', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2024-10-08 09:14:01', '2024-10-02 06:30:05', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2024-10-08 09:14:01', '2024-10-02 06:30:05', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2024-10-02 09:57:33', '2024-10-02 06:57:33', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2024-10-02 09:57:33', '2024-10-02 06:57:33', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2024-10-08 09:14:01', '2024-10-02 08:45:37', '', 'menu_Item_1', '', 'publish', 'closed', 'closed', '', 'menu_item_1', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=28', 6, 'nav_menu_item', '', 0),
(29, 1, '2024-10-08 09:14:01', '2024-10-02 08:45:37', '', 'menu_Item_2', '', 'publish', 'closed', 'closed', '', 'menu_item_2', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=29', 7, 'nav_menu_item', '', 0),
(30, 1, '2024-10-08 09:14:01', '2024-10-02 08:45:37', '', 'menu_Item_3', '', 'publish', 'closed', 'closed', '', 'menu_item_3', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=30', 8, 'nav_menu_item', '', 0),
(32, 1, '2024-10-02 18:11:26', '2024-10-02 15:11:26', '{\n    \"red-explorers::custom_logo\": {\n        \"value\": 31,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-10-02 15:11:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f0f8feab-ab1f-4efc-9964-f16619548781', '', '', '2024-10-02 18:11:26', '2024-10-02 15:11:26', '', 0, 'http://localhost/red-explorers/2024/10/02/f0f8feab-ab1f-4efc-9964-f16619548781/', 0, 'customize_changeset', '', 0),
(33, 1, '2024-10-02 18:12:27', '2024-10-02 15:12:27', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2024-10-02 18:12:27', '2024-10-02 15:12:27', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/logo.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2024-10-02 18:12:39', '2024-10-02 15:12:39', '{\n    \"red-explorers::custom_logo\": {\n        \"value\": 33,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-10-02 15:12:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cadfb648-df68-4a94-8e36-2406845ab6ce', '', '', '2024-10-02 18:12:39', '2024-10-02 15:12:39', '', 0, 'http://localhost/red-explorers/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2024-10-02 20:19:45', '2024-10-02 17:19:45', '', 'fb', '', 'inherit', 'open', 'closed', '', 'fb', '', '', '2024-10-02 20:19:45', '2024-10-02 17:19:45', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/fb.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2024-10-02 20:30:45', '2024-10-02 17:30:45', '', 'tw', '', 'inherit', 'open', 'closed', '', 'tw', '', '', '2024-10-02 20:30:45', '2024-10-02 17:30:45', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/tw.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2024-10-02 20:33:53', '2024-10-02 17:33:53', '', 'inst', '', 'inherit', 'open', 'closed', '', 'inst', '', '', '2024-10-02 20:33:53', '2024-10-02 17:33:53', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/inst.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2024-10-02 20:34:11', '2024-10-02 17:34:11', '', 'in', '', 'inherit', 'open', 'closed', '', 'in', '', '', '2024-10-02 20:34:11', '2024-10-02 17:34:11', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/in.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2024-10-02 20:44:07', '2024-10-02 17:44:07', '', 'logo-dev', '', 'inherit', 'open', 'closed', '', 'logo-dev', '', '', '2024-10-02 20:44:07', '2024-10-02 17:44:07', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/logo-dev.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2024-10-02 20:48:20', '2024-10-02 17:48:20', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-10-02 20:48:20', '2024-10-02 17:48:20', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/logo.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2024-10-02 20:48:56', '2024-10-02 17:48:56', '{\n    \"red-explorers::custom_logo\": {\n        \"value\": 40,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-10-02 17:48:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '95026e7f-16a8-4656-9b19-69ffa5bd96a8', '', '', '2024-10-02 20:48:56', '2024-10-02 17:48:56', '', 0, 'http://localhost/red-explorers/2024/10/02/95026e7f-16a8-4656-9b19-69ffa5bd96a8/', 0, 'customize_changeset', '', 0),
(42, 1, '2024-10-03 12:19:28', '2024-10-02 17:51:20', '', 'Body', '', 'publish', 'closed', 'closed', '', 'body', '', '', '2024-10-03 12:19:28', '2024-10-03 09:19:28', '', 0, 'http://localhost/red-explorers/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2024-10-03 12:19:28', '2024-10-02 17:51:20', '', 'Travel', '', 'publish', 'closed', 'closed', '', 'travel', '', '', '2024-10-03 12:19:28', '2024-10-03 09:19:28', '', 0, 'http://localhost/red-explorers/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2024-10-03 12:19:28', '2024-10-02 17:51:20', '', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2024-10-03 12:19:28', '2024-10-03 09:19:28', '', 0, 'http://localhost/red-explorers/?p=44', 3, 'nav_menu_item', '', 0),
(45, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:14', '', 'My List', '', 'publish', 'closed', 'closed', '', 'my-list', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:14', '', 'My Requests', '', 'publish', 'closed', 'closed', '', 'my-requests', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:14', '', 'My Credits', '', 'publish', 'closed', 'closed', '', 'my-credits', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=47', 3, 'nav_menu_item', '', 0),
(48, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:14', '', 'My Info', '', 'publish', 'closed', 'closed', '', 'my-info', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:14', '', 'Travel', '', 'publish', 'closed', 'closed', '', 'travel-2', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=49', 6, 'nav_menu_item', '', 0),
(50, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:14', '', 'Why Travel', '', 'publish', 'closed', 'closed', '', 'why-travel', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=50', 7, 'nav_menu_item', '', 0),
(51, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:15', '', 'Become a Traveler', '', 'publish', 'closed', 'closed', '', 'become-a-traveler', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=51', 8, 'nav_menu_item', '', 0),
(52, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:15', '', 'How Its Works', '', 'publish', 'closed', 'closed', '', 'how-its-works', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=52', 9, 'nav_menu_item', '', 0),
(53, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:15', '', 'Traveling FAQs', '', 'publish', 'closed', 'closed', '', 'traveling-faqs', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=53', 10, 'nav_menu_item', '', 0),
(54, 1, '2024-10-03 12:19:41', '2024-10-02 17:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2024-10-03 12:19:41', '2024-10-03 09:19:41', '', 0, 'http://localhost/red-explorers/?p=54', 5, 'nav_menu_item', '', 0),
(55, 1, '2024-10-03 09:28:13', '2024-10-03 06:28:13', '', 'logo-dev', '', 'inherit', 'open', 'closed', '', 'logo-dev-2', '', '', '2024-10-03 09:28:13', '2024-10-03 06:28:13', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/logo-dev.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2024-10-03 13:19:08', '2024-10-03 10:19:08', '', 'fb', '', 'inherit', 'open', 'closed', '', 'fb-2', '', '', '2024-10-03 13:19:08', '2024-10-03 10:19:08', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/fb.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2024-10-03 13:19:22', '2024-10-03 10:19:22', '', 'tw', '', 'inherit', 'open', 'closed', '', 'tw-2', '', '', '2024-10-03 13:19:22', '2024-10-03 10:19:22', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/tw.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2024-10-03 13:19:43', '2024-10-03 10:19:43', '', 'inst', '', 'inherit', 'open', 'closed', '', 'inst-2', '', '', '2024-10-03 13:19:43', '2024-10-03 10:19:43', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/inst.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2024-10-03 13:19:56', '2024-10-03 10:19:56', '', 'in', '', 'inherit', 'open', 'closed', '', 'in-2', '', '', '2024-10-03 13:19:56', '2024-10-03 10:19:56', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/in.png', 0, 'attachment', 'image/png', 0),
(554, 1, '2024-10-04 13:59:00', '2024-10-04 10:59:00', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5', '', '', '2024-10-04 13:59:00', '2024-10-04 10:59:00', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(555, 1, '2024-10-04 13:59:01', '2024-10-04 10:59:01', '', 'coming-soon_6', '', 'inherit', 'open', 'closed', '', 'coming-soon_6', '', '', '2024-10-04 13:59:01', '2024-10-04 10:59:01', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(576, 1, '2024-10-04 14:00:11', '2024-10-04 11:00:11', '', 'coming-soon_6', '', 'inherit', 'open', 'closed', '', 'coming-soon_6-2', '', '', '2024-10-04 14:00:11', '2024-10-04 11:00:11', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(578, 0, '2024-10-04 14:00:11', '2024-10-04 11:00:11', '', 'coming-soon_6', '', 'inherit', 'open', 'closed', '', 'coming-soon_6-3', '', '', '2024-10-04 14:00:11', '2024-10-04 11:00:11', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(618, 1, '2024-10-04 14:01:13', '2024-10-04 11:01:13', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-2', '', '', '2024-10-04 14:01:13', '2024-10-04 11:01:13', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(622, 0, '2024-10-04 14:01:13', '2024-10-04 11:01:13', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-3', '', '', '2024-10-04 14:01:13', '2024-10-04 11:01:13', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(640, 1, '2024-10-04 19:11:21', '2024-10-04 16:11:21', '[email email-850 placeholder \"Email Address\"][submit \"Subscribe\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <romron856@gmail.com>\n[_site_admin_email]\nОт: [your-name] [your-email]\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто уведомление о том, что на вашем веб-сайте ([_site_title] [_site_url]) была отправлена контактная форма.\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <romron856@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто письмо является квитанцией об отправке контактной формы на нашем веб-сайте ([_site_title] [_site_url]), в которой использовался ваш адрес электронной почты. Если это были не вы, пожалуйста, проигнорируйте это сообщение.\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nВажно заполнить это поле.\nВ это поле вставлен слишком большой объем данных.\nВ это поле вставлен слишком малый объем данных.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nЗагруженный файл слишком большой.\nПри загрузке файла произошла ошибка.\nВведите дату в формате ГГГГ-ММ-ДД.\nВ это поле введена слишком ранняя дата.\nВ это поле введена слишком поздняя дата.\nВведите число.\nВ это поле введено слишком маленькое число.\nВ это поле введено слишком большое число.\nНеверный ответ на проверочный вопрос.\nВведите адрес электронной почты.\nВведите URL.\nВведите номер телефона.', 'Контактная форма 1', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2024-10-04 20:28:20', '2024-10-04 17:28:20', '', 0, 'http://localhost/red-explorers/?post_type=wpcf7_contact_form&#038;p=640', 0, 'wpcf7_contact_form', '', 0),
(643, 1, '2024-10-05 15:23:21', '2024-10-05 12:23:21', '', 'bg_2', '', 'inherit', 'open', 'closed', '', 'bg_2', '', '', '2024-10-05 15:23:21', '2024-10-05 12:23:21', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/bg_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(644, 1, '2024-10-06 12:23:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-10-06 12:23:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/red-explorers/?post_type=destination&p=644', 0, 'destination', '', 0),
(645, 1, '2024-10-06 14:26:34', '2024-10-06 11:26:34', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-4', '', '', '2024-10-06 14:26:34', '2024-10-06 11:26:34', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(646, 1, '2024-10-06 14:40:23', '2024-10-06 11:40:23', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-5', '', '', '2024-10-06 14:40:23', '2024-10-06 11:40:23', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(647, 1, '2024-10-06 14:41:06', '2024-10-06 11:41:06', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-6', '', '', '2024-10-06 14:41:06', '2024-10-06 11:41:06', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(658, 1, '2024-10-06 14:41:41', '2024-10-06 11:41:41', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-7', '', '', '2024-10-06 14:41:41', '2024-10-06 11:41:41', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(669, 1, '2024-10-06 14:42:30', '2024-10-06 11:42:30', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-8', '', '', '2024-10-06 14:42:30', '2024-10-06 11:42:30', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(680, 1, '2024-10-06 14:46:40', '2024-10-06 11:46:40', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-9', '', '', '2024-10-06 14:46:40', '2024-10-06 11:46:40', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(691, 1, '2024-10-06 14:48:52', '2024-10-06 11:48:52', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-10', '', '', '2024-10-06 14:48:52', '2024-10-06 11:48:52', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(703, 1, '2024-10-06 14:52:16', '2024-10-06 11:52:16', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-11', '', '', '2024-10-06 14:52:16', '2024-10-06 11:52:16', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(704, 1, '2024-10-06 14:52:30', '2024-10-06 11:52:30', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-12', '', '', '2024-10-06 14:52:30', '2024-10-06 11:52:30', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(705, 1, '2024-10-06 14:53:00', '2024-10-06 11:53:00', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-13', '', '', '2024-10-06 14:53:00', '2024-10-06 11:53:00', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(716, 1, '2024-10-06 14:53:45', '2024-10-06 11:53:45', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-14', '', '', '2024-10-06 14:53:45', '2024-10-06 11:53:45', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(727, 1, '2024-10-06 14:59:48', '2024-10-06 11:59:48', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-15', '', '', '2024-10-06 14:59:48', '2024-10-06 11:59:48', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(788, 1, '2024-10-06 15:22:04', '2024-10-06 12:22:04', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-16', '', '', '2024-10-06 15:22:04', '2024-10-06 12:22:04', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(809, 1, '2024-10-06 15:24:19', '2024-10-06 12:24:19', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-17', '', '', '2024-10-06 15:24:19', '2024-10-06 12:24:19', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(820, 1, '2024-10-06 15:24:48', '2024-10-06 12:24:48', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-18', '', '', '2024-10-06 15:24:48', '2024-10-06 12:24:48', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(831, 1, '2024-10-06 15:25:49', '2024-10-06 12:25:49', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-19', '', '', '2024-10-06 15:25:49', '2024-10-06 12:25:49', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(842, 1, '2024-10-06 15:28:22', '2024-10-06 12:28:22', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-20', '', '', '2024-10-06 15:28:22', '2024-10-06 12:28:22', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(853, 1, '2024-10-06 15:28:51', '2024-10-06 12:28:51', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-21', '', '', '2024-10-06 15:28:51', '2024-10-06 12:28:51', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(914, 1, '2024-10-06 15:29:31', '2024-10-06 12:29:31', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-22', '', '', '2024-10-06 15:29:31', '2024-10-06 12:29:31', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(925, 1, '2024-10-06 15:30:06', '2024-10-06 12:30:06', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-23', '', '', '2024-10-06 15:30:06', '2024-10-06 12:30:06', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(936, 1, '2024-10-06 15:30:26', '2024-10-06 12:30:26', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-24', '', '', '2024-10-06 15:30:26', '2024-10-06 12:30:26', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(967, 1, '2024-10-06 15:36:32', '2024-10-06 12:36:32', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-25', '', '', '2024-10-06 15:36:32', '2024-10-06 12:36:32', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(988, 1, '2024-10-06 15:39:13', '2024-10-06 12:39:13', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-26', '', '', '2024-10-06 15:39:13', '2024-10-06 12:39:13', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(999, 1, '2024-10-06 15:39:21', '2024-10-06 12:39:21', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-27', '', '', '2024-10-06 15:39:21', '2024-10-06 12:39:21', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1010, 1, '2024-10-06 15:39:30', '2024-10-06 12:39:30', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-28', '', '', '2024-10-06 15:39:30', '2024-10-06 12:39:30', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1021, 1, '2024-10-06 15:39:35', '2024-10-06 12:39:35', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-29', '', '', '2024-10-06 15:39:35', '2024-10-06 12:39:35', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1035, 1, '2024-10-07 18:25:02', '2024-10-07 15:25:02', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-30', '', '', '2024-10-07 18:25:02', '2024-10-07 15:25:02', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1046, 1, '2024-10-07 18:33:51', '2024-10-07 15:33:51', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-31', '', '', '2024-10-07 18:33:51', '2024-10-07 15:33:51', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1057, 1, '2024-10-07 18:37:52', '2024-10-07 15:37:52', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-32', '', '', '2024-10-07 18:37:52', '2024-10-07 15:37:52', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1068, 1, '2024-10-07 18:38:27', '2024-10-07 15:38:27', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-33', '', '', '2024-10-07 18:38:27', '2024-10-07 15:38:27', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1090, 1, '2024-10-07 18:40:18', '2024-10-07 15:40:18', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-34', '', '', '2024-10-07 18:40:18', '2024-10-07 15:40:18', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1091, 1, '2024-07-23 00:00:00', '2024-07-22 21:00:00', 'risus sit justo amet, nec amet sit dapibus, Nullam nulla consequat adipiscing consectetur. lacus ipsum accumsan Donec tincidunt elit. Lorem consectetur nulla. ut, tincidunt ut ornare, justo dolor.', 'Our destination is  Delhi', '', 'publish', 'open', 'closed', '', 'our-destination-is-delhi', '', '', '2024-07-23 00:00:00', '2024-07-22 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-delhi/', 0, 'destination', '', 0),
(1092, 1, '2022-09-16 00:00:00', '2022-09-15 21:00:00', 'justo accumsan consequat ut Nullam tincidunt consectetur tincidunt elit. ut, ipsum consectetur. adipiscing dolor Lorem nec amet lacus dapibus, risus sit nulla ornare, nulla. sit justo amet, Donec.', 'Our destination is  USA', '', 'publish', 'open', 'closed', '', 'our-destination-is-usa', '', '', '2022-09-16 00:00:00', '2022-09-15 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-usa/', 0, 'destination', '', 0),
(1093, 1, '2022-08-25 00:00:00', '2022-08-24 21:00:00', 'Nullam consectetur consectetur. tincidunt consequat lacus ut justo dolor ut, ipsum tincidunt ornare, Donec adipiscing amet dapibus, elit. nulla Lorem justo nec nulla. sit risus amet, accumsan sit.', 'Our destination is  Africa', '', 'publish', 'open', 'closed', '', 'our-destination-is-africa', '', '', '2022-08-25 00:00:00', '2022-08-24 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-africa/', 0, 'destination', '', 0),
(1094, 1, '2022-12-14 00:00:00', '2022-12-13 21:00:00', 'tincidunt adipiscing risus nulla. elit. Donec ipsum sit ut justo accumsan dapibus, consectetur. nulla Nullam consequat justo sit lacus ut, consectetur tincidunt nec dolor Lorem amet amet, ornare,.', 'Our destination is  Mediterranean', '', 'publish', 'open', 'closed', '', 'our-destination-is-mediterranean', '', '', '2022-12-14 00:00:00', '2022-12-13 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-mediterranean/', 0, 'destination', '', 0),
(1095, 1, '2022-03-09 00:00:00', '2022-03-08 21:00:00', 'dapibus, consectetur. dolor ut adipiscing justo Lorem accumsan consequat consectetur amet, justo tincidunt ipsum nulla elit. tincidunt lacus sit sit risus ut, nulla. ornare, Donec amet Nullam nec.', 'Our destination is  India', '', 'publish', 'open', 'closed', '', 'our-destination-is-india', '', '', '2022-03-09 00:00:00', '2022-03-08 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-india/', 0, 'destination', '', 0),
(1096, 1, '2023-03-17 00:00:00', '2023-03-16 21:00:00', 'ut, sit risus amet justo tincidunt Nullam tincidunt lacus ut consectetur. sit dapibus, nulla. consequat ornare, adipiscing nec Donec nulla amet, Lorem elit. ipsum accumsan dolor consectetur justo.', 'Our destination is  Mediterranean', '', 'publish', 'open', 'closed', '', 'our-destination-is-mediterranean-2', '', '', '2023-03-17 00:00:00', '2023-03-16 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-mediterranean-2/', 0, 'destination', '', 0),
(1097, 1, '2022-02-11 00:00:00', '2022-02-10 21:00:00', 'amet, tincidunt Donec dapibus, risus ornare, nec consectetur nulla. ut, consectetur. adipiscing lacus ipsum justo ut Lorem consequat dolor sit justo accumsan tincidunt sit Nullam nulla amet elit..', 'Our destination is  North America', '', 'publish', 'open', 'closed', '', 'our-destination-is-north-america', '', '', '2022-02-11 00:00:00', '2022-02-10 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-north-america/', 0, 'destination', '', 0),
(1098, 1, '2022-07-12 00:00:00', '2022-07-11 21:00:00', 'nec consequat ipsum amet Lorem lacus dolor amet, ut, Nullam consectetur. Donec nulla. risus accumsan justo ornare, tincidunt justo tincidunt nulla dapibus, sit ut sit adipiscing consectetur elit..', 'Our destination is  Australia', '', 'publish', 'open', 'closed', '', 'our-destination-is-australia', '', '', '2022-07-12 00:00:00', '2022-07-11 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-australia/', 0, 'destination', '', 0),
(1099, 1, '2023-12-04 00:00:00', '2023-12-03 21:00:00', 'Lorem sit justo Donec risus consectetur consequat nulla ut tincidunt elit. dolor amet, Nullam ornare, lacus ipsum amet justo sit tincidunt dapibus, ut, consectetur. accumsan nulla. adipiscing nec.', 'Our destination is  Vietnam', '', 'publish', 'open', 'closed', '', 'our-destination-is-vietnam', '', '', '2023-12-04 00:00:00', '2023-12-03 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-vietnam/', 0, 'destination', '', 0),
(1100, 1, '2022-07-03 00:00:00', '2022-07-02 21:00:00', 'adipiscing Donec dolor sit nulla amet ipsum nulla. accumsan lacus justo nec ornare, Lorem sit risus dapibus, justo consectetur. tincidunt ut Nullam ut, consequat amet, consectetur tincidunt elit..', 'Our destination is  America', '', 'publish', 'open', 'closed', '', 'our-destination-is-america', '', '', '2022-07-03 00:00:00', '2022-07-02 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-america/', 0, 'destination', '', 0),
(1101, 1, '2022-06-23 00:00:00', '2022-06-22 21:00:00', 'ut, justo nulla. amet dolor Lorem consectetur Donec elit. sit risus accumsan nec tincidunt ornare, consequat dapibus, ipsum tincidunt nulla consectetur. adipiscing justo sit Nullam amet, lacus ut.', 'Our destination is  Marrakech', '', 'publish', 'open', 'closed', '', 'our-destination-is-marrakech', '', '', '2022-06-23 00:00:00', '2022-06-22 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-marrakech/', 0, 'destination', '', 0),
(1102, 1, '2024-08-14 00:00:00', '2024-08-13 21:00:00', 'lacus justo amet, ipsum ornare, Donec sit sit consequat adipiscing amet elit. consectetur. nulla. justo tincidunt accumsan Lorem ut, Nullam nulla ut consectetur tincidunt nec dolor risus dapibus,.', 'Our destination is  Latin America', '', 'publish', 'open', 'closed', '', 'our-destination-is-latin-america', '', '', '2024-08-14 00:00:00', '2024-08-13 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-latin-america/', 0, 'destination', '', 0),
(1103, 1, '2022-06-01 00:00:00', '2022-05-31 21:00:00', 'risus ut ornare, ipsum consequat tincidunt nec Nullam sit tincidunt dolor nulla. amet, Lorem justo amet elit. accumsan sit consectetur dapibus, ut, adipiscing justo lacus nulla consectetur. Donec.', 'Our destination is  Marrakech', '', 'publish', 'open', 'closed', '', 'our-destination-is-marrakech-2', '', '', '2022-06-01 00:00:00', '2022-05-31 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-marrakech-2/', 0, 'destination', '', 0),
(1104, 1, '2022-08-01 00:00:00', '2022-07-31 21:00:00', 'ipsum consequat adipiscing Nullam risus nulla. elit. sit sit ornare, amet, Lorem dolor ut justo consectetur. nulla tincidunt nec accumsan lacus ut, consectetur amet Donec tincidunt justo dapibus,.', 'Our destination is  Delhi', '', 'publish', 'open', 'closed', '', 'our-destination-is-delhi-2', '', '', '2022-08-01 00:00:00', '2022-07-31 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-delhi-2/', 0, 'destination', '', 0),
(1105, 1, '2022-12-08 00:00:00', '2022-12-07 21:00:00', 'sit sit dapibus, consectetur. ornare, Donec justo nec nulla lacus tincidunt justo risus adipiscing accumsan ut amet consectetur Nullam consequat elit. Lorem ut, dolor tincidunt amet, ipsum nulla..', 'Our destination is  Bangkok', '', 'publish', 'open', 'closed', '', 'our-destination-is-bangkok', '', '', '2022-12-08 00:00:00', '2022-12-07 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-bangkok/', 0, 'destination', '', 0),
(1106, 1, '2022-09-05 00:00:00', '2022-09-04 21:00:00', 'ipsum nulla. accumsan elit. lacus ut dolor amet, nulla risus consectetur. justo dapibus, Lorem Donec Nullam consectetur ornare, tincidunt sit tincidunt ut, sit consequat adipiscing nec amet justo.', 'Our destination is  North America', '', 'publish', 'open', 'closed', '', 'our-destination-is-north-america-2', '', '', '2022-09-05 00:00:00', '2022-09-04 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-north-america-2/', 0, 'destination', '', 0),
(1107, 1, '2023-11-07 00:00:00', '2023-11-06 21:00:00', 'consectetur nulla dolor amet consequat nec sit justo Lorem risus dapibus, ut ipsum amet, tincidunt justo ornare, accumsan ut, tincidunt Nullam lacus elit. adipiscing Donec nulla. consectetur. sit.', 'Our destination is  Latin America', '', 'publish', 'open', 'closed', '', 'our-destination-is-latin-america-2', '', '', '2023-11-07 00:00:00', '2023-11-06 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-latin-america-2/', 0, 'destination', '', 0),
(1108, 1, '2022-10-03 00:00:00', '2022-10-02 21:00:00', 'nulla. consequat ut sit amet, justo dolor lacus amet Donec consectetur ornare, adipiscing nec ipsum tincidunt tincidunt Lorem ut, accumsan elit. nulla risus dapibus, justo Nullam sit consectetur..', 'Our destination is  USA', '', 'publish', 'open', 'closed', '', 'our-destination-is-usa-2', '', '', '2022-10-03 00:00:00', '2022-10-02 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-usa-2/', 0, 'destination', '', 0),
(1109, 1, '2022-07-22 00:00:00', '2022-07-21 21:00:00', 'dapibus, nulla Nullam elit. justo sit amet lacus Donec amet, ut, accumsan nec Lorem dolor ornare, tincidunt consectetur. tincidunt risus nulla. consectetur sit ipsum adipiscing ut justo consequat.', 'Our destination is  Australia', '', 'publish', 'open', 'closed', '', 'our-destination-is-australia-2', '', '', '2022-07-22 00:00:00', '2022-07-21 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-australia-2/', 0, 'destination', '', 0),
(1110, 1, '2023-07-14 00:00:00', '2023-07-13 21:00:00', 'elit. consectetur nulla. ornare, consequat nec sit dolor consectetur. lacus tincidunt risus justo amet Nullam ut dapibus, accumsan amet, justo adipiscing Lorem Donec nulla ipsum tincidunt sit ut,.', 'Our destination is  Vietnam', '', 'publish', 'open', 'closed', '', 'our-destination-is-vietnam-2', '', '', '2023-07-14 00:00:00', '2023-07-13 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-vietnam-2/', 0, 'destination', '', 0),
(1111, 1, '2024-09-26 00:00:00', '2024-09-25 21:00:00', 'ornare, justo dolor lacus nulla tincidunt consectetur justo amet, amet dapibus, ut Lorem accumsan elit. ipsum adipiscing Nullam nulla. risus tincidunt Donec consectetur. sit ut, nec sit consequat.', 'Our destination is  France', '', 'publish', 'open', 'closed', '', 'our-destination-is-france', '', '', '2024-09-26 00:00:00', '2024-09-25 21:00:00', '', 0, 'http://localhost/red-explorers/destinations/our-destination-is-france/', 0, 'destination', '', 0),
(1112, 1, '2024-10-08 09:12:53', '0000-00-00 00:00:00', '', 'destination', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-10-08 09:12:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/red-explorers/?p=1112', 1, 'nav_menu_item', '', 0),
(1113, 1, '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 'destination archive', '', 'publish', 'closed', 'closed', '', 'destination-archive', '', '', '2024-10-08 09:14:01', '2024-10-08 06:14:01', '', 0, 'http://localhost/red-explorers/?p=1113', 4, 'nav_menu_item', '', 0),
(1133, 1, '2024-10-08 11:22:20', '2024-10-08 08:22:20', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-35', '', '', '2024-10-08 11:22:20', '2024-10-08 08:22:20', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1134, 1, '2024-10-08 11:22:38', '2024-10-08 08:22:38', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-36', '', '', '2024-10-08 11:22:38', '2024-10-08 08:22:38', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1135, 1, '2024-10-08 11:27:22', '2024-10-08 08:27:22', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-37', '', '', '2024-10-08 11:27:22', '2024-10-08 08:27:22', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1136, 1, '2024-10-08 11:35:17', '2024-10-08 08:35:17', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-38', '', '', '2024-10-08 11:35:17', '2024-10-08 08:35:17', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1137, 1, '2024-10-08 11:35:46', '2024-10-08 08:35:46', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-39', '', '', '2024-10-08 11:35:46', '2024-10-08 08:35:46', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1138, 1, '2024-10-08 11:39:38', '2024-10-08 08:39:38', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-40', '', '', '2024-10-08 11:39:38', '2024-10-08 08:39:38', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1159, 1, '2024-10-08 11:45:00', '2024-10-08 08:45:00', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-41', '', '', '2024-10-08 11:45:00', '2024-10-08 08:45:00', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1170, 1, '2024-10-08 11:45:37', '2024-10-08 08:45:37', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-42', '', '', '2024-10-08 11:45:37', '2024-10-08 08:45:37', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1181, 1, '2024-10-08 11:46:24', '2024-10-08 08:46:24', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-43', '', '', '2024-10-08 11:46:24', '2024-10-08 08:46:24', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1192, 1, '2024-10-08 11:49:06', '2024-10-08 08:49:06', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-44', '', '', '2024-10-08 11:49:06', '2024-10-08 08:49:06', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1243, 1, '2024-10-08 11:55:28', '2024-10-08 08:55:28', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-45', '', '', '2024-10-08 11:55:28', '2024-10-08 08:55:28', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1264, 1, '2024-10-08 12:01:42', '2024-10-08 09:01:42', '', 'coming-soon_5', '', 'inherit', 'open', 'closed', '', 'coming-soon_5-46', '', '', '2024-10-08 12:01:42', '2024-10-08 09:01:42', '', 0, 'http://localhost/red-explorers/wp-content/uploads/2024/10/coming-soon_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(1265, 1, '2023-01-10 00:00:00', '2023-01-09 21:00:00', 'justo amet, tincidunt ut consectetur dolor Donec nulla amet Nullam consectetur. ipsum elit. risus nec adipiscing accumsan lacus sit sit justo nulla. tincidunt dapibus, ut, consequat ornare, Lorem.', 'Traveling around India', '', 'publish', 'open', 'open', '', 'traveling-around-india', '', '', '2023-01-10 00:00:00', '2023-01-09 21:00:00', '', 0, 'http://localhost/red-explorers/2023/01/10/traveling-around-india/', 0, 'post', '', 0),
(1266, 1, '2022-09-27 00:00:00', '2022-09-26 21:00:00', 'justo risus nec dolor nulla. tincidunt Lorem dapibus, ut amet, Nullam ornare, consectetur elit. consequat nulla sit tincidunt accumsan ipsum lacus justo ut, consectetur. adipiscing Donec sit amet.', 'Traveling around New Zealand', '', 'publish', 'open', 'open', '', 'traveling-around-new-zealand', '', '', '2022-09-27 00:00:00', '2022-09-26 21:00:00', '', 0, 'http://localhost/red-explorers/2022/09/27/traveling-around-new-zealand/', 0, 'post', '', 0),
(1267, 1, '2023-07-29 00:00:00', '2023-07-28 21:00:00', 'elit. ipsum Lorem tincidunt amet nulla amet, adipiscing dapibus, nec ut, lacus sit risus Nullam consectetur tincidunt justo accumsan consectetur. sit justo ornare, nulla. ut consequat Donec dolor.', 'Traveling around India', '', 'publish', 'open', 'open', '', 'traveling-around-india-2', '', '', '2023-07-29 00:00:00', '2023-07-28 21:00:00', '', 0, 'http://localhost/red-explorers/2023/07/29/traveling-around-india-2/', 0, 'post', '', 0),
(1268, 1, '2023-04-18 00:00:00', '2023-04-17 21:00:00', 'Lorem dapibus, consequat tincidunt justo Nullam risus elit. ut, ipsum dolor justo Donec lacus sit nulla. adipiscing sit consectetur nec accumsan ut consectetur. ornare, amet tincidunt nulla amet,.', 'Traveling around Brazil', '', 'publish', 'open', 'open', '', 'traveling-around-brazil', '', '', '2023-04-18 00:00:00', '2023-04-17 21:00:00', '', 0, 'http://localhost/red-explorers/2023/04/18/traveling-around-brazil/', 0, 'post', '', 0),
(1269, 1, '2022-05-17 00:00:00', '2022-05-16 21:00:00', 'consectetur nulla. sit Donec tincidunt amet, ut dapibus, Nullam justo ipsum dolor sit adipiscing lacus ut, justo amet tincidunt elit. consectetur. nulla risus accumsan nec consequat ornare, Lorem.', 'Traveling around Canada', '', 'publish', 'open', 'open', '', 'traveling-around-canada', '', '', '2022-05-17 00:00:00', '2022-05-16 21:00:00', '', 0, 'http://localhost/red-explorers/2022/05/17/traveling-around-canada/', 0, 'post', '', 0),
(1270, 1, '2023-04-29 00:00:00', '2023-04-28 21:00:00', 'elit. nec risus justo adipiscing consectetur. justo ipsum nulla accumsan ut, lacus amet, sit dapibus, ut Nullam Lorem nulla. amet consectetur Donec tincidunt ornare, sit tincidunt dolor consequat.', 'Traveling around Brazil', '', 'publish', 'open', 'open', '', 'traveling-around-brazil-2', '', '', '2024-10-08 14:39:46', '2024-10-08 11:39:46', '', 0, 'http://localhost/red-explorers/2023/04/29/traveling-around-brazil-2/', 0, 'post', '', 1),
(1271, 1, '2023-08-09 00:00:00', '2023-08-08 21:00:00', 'Nullam justo amet, amet Lorem dolor consequat accumsan ut, risus tincidunt sit consectetur. nulla justo adipiscing tincidunt Donec ornare, nulla. elit. ipsum ut dapibus, consectetur lacus sit nec.', 'Traveling around Switzerland', '', 'publish', 'open', 'open', '', 'traveling-around-switzerland', '', '', '2023-08-09 00:00:00', '2023-08-08 21:00:00', '', 0, 'http://localhost/red-explorers/2023/08/09/traveling-around-switzerland/', 0, 'post', '', 0),
(1272, 1, '2024-09-12 00:00:00', '2024-09-11 21:00:00', 'sit tincidunt consectetur. justo risus Lorem ut, ornare, consectetur dolor nulla tincidunt consequat elit. nec Nullam sit Donec dapibus, amet, ipsum ut nulla. adipiscing lacus justo amet accumsan.', 'Traveling around Switzerland', '', 'publish', 'open', 'open', '', 'traveling-around-switzerland-2', '', '', '2024-09-12 00:00:00', '2024-09-11 21:00:00', '', 0, 'http://localhost/red-explorers/2024/09/12/traveling-around-switzerland-2/', 0, 'post', '', 0),
(1273, 1, '2024-08-26 00:00:00', '2024-08-25 21:00:00', 'sit ipsum Donec nulla. lacus Nullam dapibus, ornare, risus tincidunt Lorem ut justo adipiscing consectetur. accumsan consequat ut, sit nec nulla elit. justo amet, consectetur tincidunt amet dolor.', 'Traveling around China', '', 'publish', 'open', 'open', '', 'traveling-around-china', '', '', '2024-08-26 00:00:00', '2024-08-25 21:00:00', '', 0, 'http://localhost/red-explorers/2024/08/26/traveling-around-china/', 0, 'post', '', 0),
(1274, 1, '2022-09-14 00:00:00', '2022-09-13 21:00:00', 'accumsan tincidunt consequat nulla sit lacus Nullam justo elit. ipsum Donec ornare, risus amet amet, nulla. consectetur. adipiscing nec justo tincidunt dolor ut dapibus, sit ut, consectetur Lorem.', 'Traveling around Switzerland', '', 'publish', 'open', 'open', '', 'traveling-around-switzerland-3', '', '', '2022-09-14 00:00:00', '2022-09-13 21:00:00', '', 0, 'http://localhost/red-explorers/2022/09/14/traveling-around-switzerland-3/', 0, 'post', '', 0),
(1275, 1, '2024-10-08 14:39:46', '2024-10-08 11:39:46', 'elit. nec risus justo adipiscing consectetur. justo ipsum nulla accumsan ut, lacus amet, sit dapibus, ut Nullam Lorem nulla. amet consectetur Donec tincidunt ornare, sit tincidunt dolor consequat.', 'Traveling around Brazil', '', 'inherit', 'closed', 'closed', '', '1270-revision-v1', '', '', '2024-10-08 14:39:46', '2024-10-08 11:39:46', '', 1270, 'http://localhost/red-explorers/?p=1275', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(14, 43, 'show_on_the_destination_page', '1'),
(15, 46, 'show_on_the_destination_page', '1'),
(16, 57, 'show_on_the_destination_page', '1'),
(17, 54, 'show_on_the_destination_page', '1'),
(21, 34, 'show_on_the_destination_page', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'rmbt_Header Navigation', 'rmbt_header-navigation', 0),
(3, 'rmbt_Footer Horizontal Navigation', 'rmbt_footer-horizontal-navigation', 0),
(4, 'rmbt_Footer Navigation', 'rmbt_footer-navigation', 0),
(33, 'Italy', 'italy', 0),
(34, 'France', 'france', 0),
(35, 'Spain', 'spain', 0),
(36, 'Japan', 'japan', 0),
(37, 'USA', 'usa', 0),
(38, 'Thailand', 'thailand', 0),
(39, 'Vietnam', 'vietnam', 0),
(40, 'India', 'india', 0),
(41, 'Morocco', 'morocco', 0),
(42, 'Europe', 'europe', 0),
(43, 'Asia', 'asia', 0),
(44, 'America', 'america', 0),
(45, 'Africa', 'africa', 0),
(46, 'Australia', 'australia', 0),
(47, 'Mediterranean', 'mediterranean', 0),
(48, 'Southeast Asia', 'southeast-asia', 0),
(49, 'North America', 'north-america', 0),
(50, 'Latin America', 'latin-america', 0),
(51, 'Eastern Europe', 'eastern-europe', 0),
(52, 'Rome', 'rome', 0),
(53, 'Paris', 'paris', 0),
(54, 'Barcelona', 'barcelona', 0),
(55, 'Tokyo', 'tokyo', 0),
(56, 'New York', 'new-york', 0),
(57, 'Bangkok', 'bangkok', 0),
(58, 'Ho Chi Minh City', 'ho-chi-minh-city', 0),
(59, 'Delhi', 'delhi', 0),
(60, 'Marrakech', 'marrakech', 0),
(61, 'France', 'france', 0),
(62, 'Italy', 'italy', 0),
(63, 'Spain', 'spain', 0),
(64, 'Japan', 'japan', 0),
(65, 'Canada', 'canada', 0),
(66, 'Brazil', 'brazil', 0),
(67, 'Australia', 'australia', 0),
(68, 'Germany', 'germany', 0),
(69, 'India', 'india', 0),
(70, 'South Africa', 'south-africa', 0),
(71, 'Mexico', 'mexico', 0),
(72, 'Argentina', 'argentina', 0),
(73, 'China', 'china', 0),
(74, 'United Kingdom', 'united-kingdom', 0),
(75, 'Thailand', 'thailand', 0),
(76, 'Uruguay', 'uruguay', 0),
(77, 'New Zealand', 'new-zealand', 0),
(78, 'Switzerland', 'switzerland', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(42, 3, 0),
(43, 3, 0),
(44, 3, 0),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0),
(48, 4, 0),
(49, 4, 0),
(50, 4, 0),
(51, 4, 0),
(52, 4, 0),
(53, 4, 0),
(54, 4, 0),
(1091, 59, 0),
(1092, 37, 0),
(1093, 45, 0),
(1094, 47, 0),
(1095, 40, 0),
(1096, 47, 0),
(1097, 49, 0),
(1098, 46, 0),
(1099, 39, 0),
(1100, 44, 0),
(1101, 60, 0),
(1102, 50, 0),
(1103, 60, 0),
(1104, 59, 0),
(1105, 57, 0),
(1106, 49, 0),
(1107, 50, 0),
(1108, 37, 0),
(1109, 46, 0),
(1110, 39, 0),
(1111, 34, 0),
(1113, 2, 0),
(1265, 69, 0),
(1266, 77, 0),
(1267, 69, 0),
(1268, 66, 0),
(1269, 65, 0),
(1270, 66, 0),
(1270, 67, 0),
(1271, 78, 0),
(1272, 78, 0),
(1273, 73, 0),
(1274, 78, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 10),
(33, 33, 'location', '', 0, 0),
(34, 34, 'location', '', 0, 1),
(35, 35, 'location', '', 0, 0),
(36, 36, 'location', '', 0, 0),
(37, 37, 'location', '', 0, 2),
(38, 38, 'location', '', 0, 0),
(39, 39, 'location', '', 0, 2),
(40, 40, 'location', '', 0, 1),
(41, 41, 'location', '', 0, 0),
(42, 42, 'location', '', 0, 0),
(43, 43, 'location', '', 0, 0),
(44, 44, 'location', '', 0, 1),
(45, 45, 'location', '', 0, 1),
(46, 46, 'location', '', 0, 2),
(47, 47, 'location', '', 0, 2),
(48, 48, 'location', '', 0, 0),
(49, 49, 'location', '', 0, 2),
(50, 50, 'location', '', 0, 2),
(51, 51, 'location', '', 0, 0),
(52, 52, 'location', '', 0, 0),
(53, 53, 'location', '', 0, 0),
(54, 54, 'location', '', 0, 0),
(55, 55, 'location', '', 0, 0),
(56, 56, 'location', '', 0, 0),
(57, 57, 'location', '', 0, 1),
(58, 58, 'location', '', 0, 0),
(59, 59, 'location', '', 0, 2),
(60, 60, 'location', '', 0, 2),
(61, 61, 'category', '', 0, 0),
(62, 62, 'category', '', 0, 0),
(63, 63, 'category', '', 0, 0),
(64, 64, 'category', '', 0, 0),
(65, 65, 'category', '', 0, 1),
(66, 66, 'category', '', 0, 2),
(67, 67, 'category', '', 0, 1),
(68, 68, 'category', '', 0, 0),
(69, 69, 'category', '', 0, 2),
(70, 70, 'category', '', 0, 0),
(71, 71, 'category', '', 0, 0),
(72, 72, 'category', '', 0, 0),
(73, 73, 'category', '', 0, 1),
(74, 74, 'category', '', 0, 0),
(75, 75, 'category', '', 0, 0),
(76, 76, 'category', '', 0, 0),
(77, 77, 'category', '', 0, 1),
(78, 78, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Roman'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"d2a4770c842bff487147306b7ffba1bd4d3801ca524fd79a91317834efa76767\";a:4:{s:10:\"expiration\";i:1729058524;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0\";s:5:\"login\";i:1727848924;}s:64:\"6193952bd79592824b87e4814373e8f7764ae6b3acf14998be6fe310df52889c\";a:4:{s:10:\"expiration\";i:1729091355;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0\";s:5:\"login\";i:1727881755;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list'),
(22, 1, 'wp_user-settings-time', '1728378207'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'wp_persisted_preferences', 'a:4:{s:4:\"core\";a:6:{s:26:\"isComplementaryAreaVisible\";b:1;s:23:\"isPublishSidebarEnabled\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}s:15:\"distractionFree\";b:0;s:12:\"fixedToolbar\";b:0;s:10:\"editorMode\";s:6:\"visual\";}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-10-08T08:49:34.960Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(26, 1, 'nav_menu_recently_edited', '2'),
(27, 1, 'wp_media_library_mode', 'list'),
(28, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.9\";}'),
(29, 1, 'edit_destination_per_page', '40'),
(30, 1, 'edit_post_per_page', '20');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Roman', '$P$BeOq2SHS6t0xkAblLZsEPYvw.zr3jo0', 'roman', 'romron856@gmail.com', 'http://localhost/red-explorers', '2024-10-02 06:01:56', '', 0, 'Roman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4583;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1276;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
