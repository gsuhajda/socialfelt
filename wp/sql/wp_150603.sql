-- --------------------------------------------------------
-- Host:                         mysql.dmz
-- Server version:               5.6.19-1~dotdeb.1 - (Debian)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Verzió:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for suhajdag_sandbox
CREATE DATABASE IF NOT EXISTS `suhajdag_sandbox` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci */;
USE `suhajdag_sandbox`;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_commentmeta
CREATE TABLE IF NOT EXISTS `wp_sf_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_commentmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sf_commentmeta` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_comments
CREATE TABLE IF NOT EXISTS `wp_sf_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_comments` DISABLE KEYS */;
INSERT INTO `wp_sf_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-06-03 09:09:31', '2015-06-03 09:09:31', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_sf_comments` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_links
CREATE TABLE IF NOT EXISTS `wp_sf_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sf_links` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_options
CREATE TABLE IF NOT EXISTS `wp_sf_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_options: ~114 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_options` DISABLE KEYS */;
INSERT INTO `wp_sf_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://suhajdag.socialfelt.monk.dmz', 'yes'),
	(2, 'home', 'http://suhajdag.socialfelt.monk.dmz', 'yes'),
	(3, 'blogname', 'SocialFelt', 'yes'),
	(4, 'blogdescription', 'Craft, Touch and Care', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'szajmon@zawar.hu', 'yes'),
	(7, 'start_of_week', '1', 'yes'),
	(8, 'use_balanceTags', '0', 'yes'),
	(9, 'use_smilies', '1', 'yes'),
	(10, 'require_name_email', '1', 'yes'),
	(11, 'comments_notify', '', 'yes'),
	(12, 'posts_per_rss', '10', 'yes'),
	(13, 'rss_use_excerpt', '0', 'yes'),
	(14, 'mailserver_url', 'mail.example.com', 'yes'),
	(15, 'mailserver_login', 'login@example.com', 'yes'),
	(16, 'mailserver_pass', 'password', 'yes'),
	(17, 'mailserver_port', '110', 'yes'),
	(18, 'default_category', '1', 'yes'),
	(19, 'default_comment_status', 'closed', 'yes'),
	(20, 'default_ping_status', 'closed', 'yes'),
	(21, 'default_pingback_flag', '', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'F j, Y', 'yes'),
	(24, 'time_format', 'g:i a', 'yes'),
	(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
	(26, 'comment_moderation', '', 'yes'),
	(27, 'moderation_notify', '', 'yes'),
	(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
	(29, 'gzipcompression', '0', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:1:{i:0;s:30:"advanced-custom-fields/acf.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'advanced_edit', '0', 'yes'),
	(37, 'comment_max_links', '2', 'yes'),
	(38, 'gmt_offset', '0', 'yes'),
	(39, 'default_email_category', '1', 'yes'),
	(40, 'recently_edited', '', 'no'),
	(41, 'template', 'socialfelt', 'yes'),
	(42, 'stylesheet', 'socialfelt', 'yes'),
	(43, 'comment_whitelist', '1', 'yes'),
	(44, 'blacklist_keys', '', 'no'),
	(45, 'comment_registration', '1', 'yes'),
	(46, 'html_type', 'text/html', 'yes'),
	(47, 'use_trackback', '0', 'yes'),
	(48, 'default_role', 'subscriber', 'yes'),
	(49, 'db_version', '31536', 'yes'),
	(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(51, 'upload_path', '', 'yes'),
	(52, 'blog_public', '1', 'yes'),
	(53, 'default_link_category', '2', 'yes'),
	(54, 'show_on_front', 'page', 'yes'),
	(55, 'tag_base', '', 'yes'),
	(56, 'show_avatars', '1', 'yes'),
	(57, 'avatar_rating', 'G', 'yes'),
	(58, 'upload_url_path', '', 'yes'),
	(59, 'thumbnail_size_w', '150', 'yes'),
	(60, 'thumbnail_size_h', '150', 'yes'),
	(61, 'thumbnail_crop', '1', 'yes'),
	(62, 'medium_size_w', '300', 'yes'),
	(63, 'medium_size_h', '300', 'yes'),
	(64, 'avatar_default', 'mystery', 'yes'),
	(65, 'large_size_w', '1024', 'yes'),
	(66, 'large_size_h', '1024', 'yes'),
	(67, 'image_default_link_type', 'file', 'yes'),
	(68, 'image_default_size', '', 'yes'),
	(69, 'image_default_align', '', 'yes'),
	(70, 'close_comments_for_old_posts', '', 'yes'),
	(71, 'close_comments_days_old', '14', 'yes'),
	(72, 'thread_comments', '', 'yes'),
	(73, 'thread_comments_depth', '5', 'yes'),
	(74, 'page_comments', '', 'yes'),
	(75, 'comments_per_page', '50', 'yes'),
	(76, 'default_comments_page', 'newest', 'yes'),
	(77, 'comment_order', 'asc', 'yes'),
	(78, 'sticky_posts', 'a:0:{}', 'yes'),
	(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(82, 'uninstall_plugins', 'a:0:{}', 'no'),
	(83, 'timezone_string', '', 'yes'),
	(84, 'page_for_posts', '0', 'yes'),
	(85, 'page_on_front', '2', 'yes'),
	(86, 'default_post_format', '0', 'yes'),
	(87, 'link_manager_enabled', '0', 'yes'),
	(88, 'initial_db_version', '31535', 'yes'),
	(89, 'wp_sf_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
	(97, 'cron', 'a:5:{i:1438247371;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1438247441;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1438252000;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1438283640;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
	(106, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1438246458;s:7:"checked";a:1:{s:10:"socialfelt";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
	(107, '_transient_random_seed', 'f7478e8932985f2fb2d56eb47624eb25', 'yes'),
	(109, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(111, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(113, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(141, 'WPLANG', '', 'yes'),
	(144, 'theme_mods_twentyfifteen', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1433327172;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}}}}', 'yes'),
	(145, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
	(150, 'current_theme', 'SocialFelt', 'yes'),
	(151, 'theme_mods_socialfelt', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
	(152, 'theme_switched', '', 'yes'),
	(158, 'rewrite_rules', 'a:72:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
	(183, 'recently_activated', 'a:0:{}', 'yes'),
	(184, 'acf_version', '4.4.2', 'yes'),
	(292, 'db_upgraded', '1', 'yes'),
	(293, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.3";s:7:"version";s:5:"4.2.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1438246455;s:15:"version_checked";s:5:"4.2.3";s:12:"translations";a:0:{}}', 'yes'),
	(295, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:16:"szajmon@zawar.hu";s:7:"version";s:5:"4.2.3";s:9:"timestamp";i:1438179878;}', 'yes'),
	(300, '_site_transient_timeout_theme_roots', '1438248254', 'yes'),
	(301, '_site_transient_theme_roots', 'a:1:{s:10:"socialfelt";s:7:"/themes";}', 'yes'),
	(302, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1438246457;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.2";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes');
/*!40000 ALTER TABLE `wp_sf_options` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_postmeta
CREATE TABLE IF NOT EXISTS `wp_sf_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_postmeta: ~147 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_postmeta` DISABLE KEYS */;
INSERT INTO `wp_sf_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 2, '_edit_lock', '1433514286:1'),
	(3, 2, '_edit_last', '1'),
	(4, 5, '_menu_item_type', 'post_type'),
	(5, 5, '_menu_item_menu_item_parent', '0'),
	(6, 5, '_menu_item_object_id', '2'),
	(7, 5, '_menu_item_object', 'page'),
	(8, 5, '_menu_item_target', ''),
	(9, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(10, 5, '_menu_item_xfn', ''),
	(11, 5, '_menu_item_url', ''),
	(13, 6, '_edit_last', '1'),
	(14, 6, '_edit_lock', '1433514965:1'),
	(15, 8, '_edit_last', '1'),
	(16, 8, '_edit_lock', '1433514982:1'),
	(17, 10, '_edit_last', '1'),
	(18, 10, '_edit_lock', '1433514987:1'),
	(19, 12, '_edit_last', '1'),
	(20, 12, '_edit_lock', '1433515006:1'),
	(21, 14, '_edit_last', '1'),
	(22, 14, '_edit_lock', '1433842132:1'),
	(23, 15, '_menu_item_type', 'post_type'),
	(24, 15, '_menu_item_menu_item_parent', '0'),
	(25, 15, '_menu_item_object_id', '14'),
	(26, 15, '_menu_item_object', 'page'),
	(27, 15, '_menu_item_target', ''),
	(28, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(29, 15, '_menu_item_xfn', ''),
	(30, 15, '_menu_item_url', ''),
	(31, 17, '_edit_last', '1'),
	(32, 17, '_edit_lock', '1433515038:1'),
	(33, 18, '_menu_item_type', 'post_type'),
	(34, 18, '_menu_item_menu_item_parent', '0'),
	(35, 18, '_menu_item_object_id', '17'),
	(36, 18, '_menu_item_object', 'page'),
	(37, 18, '_menu_item_target', ''),
	(38, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(39, 18, '_menu_item_xfn', ''),
	(40, 18, '_menu_item_url', ''),
	(41, 20, '_edit_last', '1'),
	(42, 20, '_edit_lock', '1433515049:1'),
	(43, 21, '_menu_item_type', 'post_type'),
	(44, 21, '_menu_item_menu_item_parent', '0'),
	(45, 21, '_menu_item_object_id', '20'),
	(46, 21, '_menu_item_object', 'page'),
	(47, 21, '_menu_item_target', ''),
	(48, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(49, 21, '_menu_item_xfn', ''),
	(50, 21, '_menu_item_url', ''),
	(51, 23, '_edit_last', '1'),
	(52, 23, '_edit_lock', '1433515024:1'),
	(53, 24, '_menu_item_type', 'post_type'),
	(54, 24, '_menu_item_menu_item_parent', '0'),
	(55, 24, '_menu_item_object_id', '23'),
	(56, 24, '_menu_item_object', 'page'),
	(57, 24, '_menu_item_target', ''),
	(58, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(59, 24, '_menu_item_xfn', ''),
	(60, 24, '_menu_item_url', ''),
	(61, 26, '_menu_item_type', 'post_type'),
	(62, 26, '_menu_item_menu_item_parent', '5'),
	(63, 26, '_menu_item_object_id', '12'),
	(64, 26, '_menu_item_object', 'page'),
	(65, 26, '_menu_item_target', ''),
	(66, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(67, 26, '_menu_item_xfn', ''),
	(68, 26, '_menu_item_url', ''),
	(70, 27, '_menu_item_type', 'post_type'),
	(71, 27, '_menu_item_menu_item_parent', '5'),
	(72, 27, '_menu_item_object_id', '10'),
	(73, 27, '_menu_item_object', 'page'),
	(74, 27, '_menu_item_target', ''),
	(75, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(76, 27, '_menu_item_xfn', ''),
	(77, 27, '_menu_item_url', ''),
	(79, 28, '_menu_item_type', 'post_type'),
	(80, 28, '_menu_item_menu_item_parent', '5'),
	(81, 28, '_menu_item_object_id', '8'),
	(82, 28, '_menu_item_object', 'page'),
	(83, 28, '_menu_item_target', ''),
	(84, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(85, 28, '_menu_item_xfn', ''),
	(86, 28, '_menu_item_url', ''),
	(88, 29, '_menu_item_type', 'post_type'),
	(89, 29, '_menu_item_menu_item_parent', '5'),
	(90, 29, '_menu_item_object_id', '6'),
	(91, 29, '_menu_item_object', 'page'),
	(92, 29, '_menu_item_target', ''),
	(93, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(94, 29, '_menu_item_xfn', ''),
	(95, 29, '_menu_item_url', ''),
	(97, 37, '_edit_last', '1'),
	(98, 37, 'field_5571b186dcf07', 'a:11:{s:3:"key";s:19:"field_5571b186dcf07";s:5:"label";s:16:"Background image";s:4:"name";s:16:"background_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
	(99, 37, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
	(100, 37, 'position', 'normal'),
	(101, 37, 'layout', 'no_box'),
	(102, 37, 'hide_on_screen', ''),
	(103, 37, '_edit_lock', '1433514269:1'),
	(104, 38, '_wp_attached_file', '2015/06/bg_felttherapy.jpg'),
	(105, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1358;s:6:"height";i:905;s:4:"file";s:26:"2015/06/bg_felttherapy.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bg_felttherapy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"bg_felttherapy-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"bg_felttherapy-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"bg_felttherapy-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
	(106, 39, 'background_image', '38'),
	(107, 39, '_background_image', 'field_5571b186dcf07'),
	(108, 10, 'background_image', '38'),
	(109, 10, '_background_image', 'field_5571b186dcf07'),
	(110, 40, '_wp_attached_file', '2015/06/bg_aims.jpg'),
	(111, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1600;s:4:"file";s:19:"2015/06/bg_aims.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"bg_aims-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"bg_aims-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"bg_aims-1024x819.jpg";s:5:"width";i:1024;s:6:"height";i:819;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"bg_aims-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
	(112, 41, '_wp_attached_file', '2015/06/bg_beginnings.jpg'),
	(113, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1600;s:4:"file";s:25:"2015/06/bg_beginnings.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"bg_beginnings-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"bg_beginnings-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"bg_beginnings-1024x819.jpg";s:5:"width";i:1024;s:6:"height";i:819;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"bg_beginnings-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
	(114, 42, '_wp_attached_file', '2015/06/bg_contact.jpg'),
	(115, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:22:"2015/06/bg_contact.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"bg_contact-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"bg_contact-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"bg_contact-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"bg_contact-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
	(116, 43, '_wp_attached_file', '2015/06/bg_main.jpg'),
	(117, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:870;s:4:"file";s:19:"2015/06/bg_main.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"bg_main-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"bg_main-300x218.jpg";s:5:"width";i:300;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"bg_main-1024x742.jpg";s:5:"width";i:1024;s:6:"height";i:742;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"bg_main-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
	(118, 44, '_wp_attached_file', '2015/06/bg_projects.jpg'),
	(119, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1334;s:6:"height";i:889;s:4:"file";s:23:"2015/06/bg_projects.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"bg_projects-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"bg_projects-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"bg_projects-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"bg_projects-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
	(120, 45, '_wp_attached_file', '2015/06/bg_resources.jpg'),
	(121, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1334;s:6:"height";i:889;s:4:"file";s:24:"2015/06/bg_resources.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"bg_resources-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"bg_resources-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"bg_resources-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"bg_resources-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
	(122, 46, '_wp_attached_file', '2015/06/bg_services.jpg'),
	(123, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:23:"2015/06/bg_services.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"bg_services-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"bg_services-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"bg_services-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"bg_services-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
	(124, 47, '_wp_attached_file', '2015/06/bg_whatisfelt.jpg'),
	(125, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1207;s:6:"height";i:905;s:4:"file";s:25:"2015/06/bg_whatisfelt.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"bg_whatisfelt-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"bg_whatisfelt-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"bg_whatisfelt-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"bg_whatisfelt-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
	(126, 48, 'background_image', '40'),
	(127, 48, '_background_image', 'field_5571b186dcf07'),
	(128, 6, 'background_image', '40'),
	(129, 6, '_background_image', 'field_5571b186dcf07'),
	(130, 49, 'background_image', '41'),
	(131, 49, '_background_image', 'field_5571b186dcf07'),
	(132, 8, 'background_image', '41'),
	(133, 8, '_background_image', 'field_5571b186dcf07'),
	(134, 50, 'background_image', '47'),
	(135, 50, '_background_image', 'field_5571b186dcf07'),
	(136, 12, 'background_image', '47'),
	(137, 12, '_background_image', 'field_5571b186dcf07'),
	(138, 51, 'background_image', '42'),
	(139, 51, '_background_image', 'field_5571b186dcf07'),
	(140, 23, 'background_image', '42'),
	(141, 23, '_background_image', 'field_5571b186dcf07'),
	(142, 52, 'background_image', '45'),
	(143, 52, '_background_image', 'field_5571b186dcf07'),
	(144, 17, 'background_image', '45'),
	(145, 17, '_background_image', 'field_5571b186dcf07'),
	(146, 53, 'background_image', '46'),
	(147, 53, '_background_image', 'field_5571b186dcf07'),
	(148, 20, 'background_image', '46'),
	(149, 20, '_background_image', 'field_5571b186dcf07'),
	(150, 54, 'background_image', '44'),
	(151, 54, '_background_image', 'field_5571b186dcf07'),
	(152, 14, 'background_image', '44'),
	(153, 14, '_background_image', 'field_5571b186dcf07');
/*!40000 ALTER TABLE `wp_sf_postmeta` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_posts
CREATE TABLE IF NOT EXISTS `wp_sf_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_posts: ~51 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_posts` DISABLE KEYS */;
INSERT INTO `wp_sf_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2015-06-03 09:09:31', '2015-06-03 09:09:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-06-03 09:09:31', '2015-06-03 09:09:31', '', 0, 'http://suhajdag.socialfelt.monk.dmz/?p=1', 0, 'post', '', 1),
	(2, 1, '2015-06-03 09:09:31', '2015-06-03 09:09:31', '<h1>SocialFelt – Craft, Touch and Care</h1>\r\n<h2>is an innovative pilot project aiming to provide psychosocial support for marginalized, vulnerable and traumatized groups of children, adolescents, youth and women.</h2>', 'About SocialFelt', '', 'publish', 'open', 'open', '', 'about-socialfelt', '', '', '2015-06-03 09:13:31', '2015-06-03 09:13:31', '', 0, 'http://suhajdag.socialfelt.monk.dmz/?page_id=2', 0, 'page', '', 0),
	(4, 1, '2015-06-03 09:13:31', '2015-06-03 09:13:31', '<h1>SocialFelt – Craft, Touch and Care</h1>\r\n<h2>is an innovative pilot project aiming to provide psychosocial support for marginalized, vulnerable and traumatized groups of children, adolescents, youth and women.</h2>', 'About SocialFelt', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-06-03 09:13:31', '2015-06-03 09:13:31', '', 2, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/2-revision-v1/', 0, 'revision', '', 0),
	(5, 1, '2015-06-03 09:14:09', '2015-06-03 09:14:09', ' ', '', '', 'publish', 'open', 'open', '', '5', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 0, 'http://suhajdag.socialfelt.monk.dmz/?p=5', 1, 'nav_menu_item', '', 0),
	(6, 1, '2015-06-03 10:26:56', '2015-06-03 10:26:56', '<h2>Social Felt – Craft Touch and Care is an innovative pilot project aiming to provide psychosocial support for marginalized, vulnerable and traumatized groups of children, adolescents, youth and women.</h2>\r\nThe project is based on the ‘Felt Therapy’, developed by Bernadett Fekete. It is an alternative approach to counselling, psychosocial rehabilitation, healing process, self expression and empowerment, where wool and feltmaking is used as a culture sensitive therapeutic tool and medium.\r\n\r\nSocialFelt supports adolescents and women, who are victims and survivors of:\r\n<ul>\r\n	<li>human trafficking</li>\r\n	<li>sexual violence and related crimes, forced prostitution</li>\r\n	<li>forced marriages</li>\r\n	<li>torture</li>\r\n	<li>unsafe migration</li>\r\n	<li>war crimes</li>\r\n	<li>gender based violence</li>\r\n	<li>genital mutilation</li>\r\n	<li>slavery and forced labor</li>\r\n	<li>domestic violence</li>\r\n</ul>\r\nThe participants will be able to experience their feelings, sensibilities, capacities and abilities, to reconnect with their body and their inner self, with the wider community and with the society. They will be supported in coming into terms with their feelings of shame, anger and loss; abuse and violence, vulnerability; fears of living in a foreign country. Through the positive experience of ‘Felt Therapy’, they will be helped in coping with difficult circumstances, building self-confidence, and developing resilience to protect themselves.\r\n\r\nIt will give the opportunity for the participants to belong to somewhere they are valued, their talent is developed, and their voice is heard. Felt Therapy is a group activity, where participants are able to discover the joy of design and craft, sharing ideas and creating. During the creative process there is also space for sharing their feelings and concerns with each other in the presence of a professional.\r\n\r\nGroup art works of therapeutic sessions to be used in raising awareness of related issues to reduce negative social stigmas and victimization of survivors. It would also contribute for the sustainability of the project by organizing exhibitions, fairs, outlets, auctions and cultural activities.', 'Aims & Objectives', '', 'publish', 'open', 'open', '', 'aims-objectives', '', '', '2015-06-05 14:38:28', '2015-06-05 14:38:28', '', 2, 'http://suhajdag.socialfelt.monk.dmz/?page_id=6', 1, 'page', '', 0),
	(7, 1, '2015-06-03 10:26:56', '2015-06-03 10:26:56', 'coming soon.', 'Aims & Objectives', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-06-03 10:26:56', '2015-06-03 10:26:56', '', 6, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/6-revision-v1/', 0, 'revision', '', 0),
	(8, 1, '2015-06-03 10:27:11', '2015-06-03 10:27:11', 'Bernadett Fekete, the Founder of SocialFelt – Craft, Touch and Care, is a Qualified Social Worker (MA) and have been working in Child Protection, Juvenile Justice and in Refugee Affairs in the UK, Hungary, India and the Philippines. She has more than 15 years of professional experience in working with disadvantaged youth from different marginalized groups such as street children, children affected by HIV, Gipsy youth, unaccompanied refugee minors, juvenile offenders and victims of child prostitution.\r\n\r\nDuring her career in Social Work she has been working in cross-cultural settings in Europe and in Asia, where at times language and culture was a barrier in effective intervention and she became involved in searching for culture sensitive methods to deal with trauma, rehabilitation and healing in a non-verbal way.\r\n\r\nWorking with asylum seeker unaccompanied minors and victims of human trafficking in the UK, she realized that there is a gap in social welfare and mental health services, where professionals are less likely to be prepared to work with people from different cultures, especially if not speaking the same language.\r\n\r\nMost of the times there is no resource or access for adequate professional interpreters assisting in counselling or other therapies, or the person in need of help feels ashamed to talk in the presence of the interpreter about her/his problems due to cultural reasons. In the same time, Western-type psychotherapies might not be suitable to help people from cultures where expressing individual feelings and views are not appropriate.\r\n\r\nDue to the globalization, economic and political reasons, wars and natural disasters and the enormous migration, millions of people find themselves in abroad, far from their home and original culture. Many of them has gone through a very hard time back in their home country, during their journey or whilst settling down in a new country, and many of them became victims of international organized crimes. The most vulnerable group of migration are the children and women.\r\n\r\nTargeting the above mentioned issues, she started a research on craft therapies and she started developing the ‘Felt Therapy’, a method using feltmaking as a creative therapy in Social Work. She would like to introduce felt and wool as a culture sensitive therapeutic tool for healing, as a medium for rehabilitation of deprived and/or traumatized groups and communities, and to achieve positive social changes.\r\n\r\nYou can see her detailed CV <a href="https://www.linkedin.com/pub/bernadett-fekete/87/669/a85" target="_blank">here</a>.', 'Beginnings', '', 'publish', 'open', 'open', '', 'beginnings', '', '', '2015-06-05 14:38:41', '2015-06-05 14:38:41', '', 2, 'http://suhajdag.socialfelt.monk.dmz/?page_id=8', 2, 'page', '', 0),
	(9, 1, '2015-06-03 10:27:11', '2015-06-03 10:27:11', 'coming soon.', 'Beginnings', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-06-03 10:27:11', '2015-06-03 10:27:11', '', 8, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/8-revision-v1/', 0, 'revision', '', 0),
	(10, 1, '2015-06-03 10:27:26', '2015-06-03 10:27:26', '<h2>‘Felt Therapy’ is an alternative approach to cross-cultural counselling, psychosocial rehabilitation, self-expression and empowerment.</h2>\r\nThe project focus primarily on women empowerment, especially adolescents and young adults, who are victims of human trafficking and (child) prostitution, unsafe migration, torture or gender based violence, forced marriage, domestic violence, war crimes, forced labour and slavery. The therapy is community/group based but can be practised individually, participants can engage in different levels.\r\n\r\nFelt Therapy intends to be a non-analytical, non-verbal therapy, focusing on the crafting process and its therapeutic benefits. This would help traumatised people in the healing process a more ‘silent’ way, where they can take their life into their own hands. Instead helping individuals to re-discover and narrate the trauma occurred and the feelings connected to it, I would focus on the silent healing in the community, turning the negative energies into positive, finding joy and calmness in creativity over their depression, and focusing on the future, building resilience in the body and mind.\r\n\r\nThis therapy is considered as a culture sensitive and cross-cultural therapy, and I intend to use it also with women whose first language is not English or does not speak English at all. Women with different cultural background might not be benefited by verbal therapies as they might not get used to articulate their own feelings. In some cultures feelings for the family and community would overtake individual needs and would feel shame to talk about problems.', 'Felt Therapy', '', 'publish', 'open', 'open', '', 'felt-therapy', '', '', '2015-06-05 14:27:54', '2015-06-05 14:27:54', '', 2, 'http://suhajdag.socialfelt.monk.dmz/?page_id=10', 3, 'page', '', 0),
	(11, 1, '2015-06-03 10:27:26', '2015-06-03 10:27:26', 'coming soon.', 'Felt Therapy', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-06-03 10:27:26', '2015-06-03 10:27:26', '', 10, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/10-revision-v1/', 0, 'revision', '', 0),
	(12, 1, '2015-06-03 10:27:39', '2015-06-03 10:27:39', '<h2>Felt is a non-woven, versatile and natural fabric made from sheep wool and different animal fibres. This ancient craft is originated from Asia and hugely contributed to the living and surviving of the nomadic tribes.</h2>\r\nMaking handmade felt from wool fibre is a magical but simple process, requiring very little equipment such as wool, water and soap. It has a tactile nature and it is a powerful multi-sensory experience\r\n\r\nThe maker pull gently small, thin puffs of wool need to tear of fibre staples of the supply and laying down two or three layers of fibre. The soft fibres staples will almost melt in the hand. More texture can be created by decorating the surface with yarns, fabrics, ribbons, silk or any other fibres, and anything to be able to attach in the fibre. Warm soapy water is applied to the layers of animal hairs. During feltmaking the maker need to gently rub, stroke and massage the fibres into one piece, invest of lot of armpower into the rhythmical rolling, and finally release all the energy through the throwing process to make the felt a steady textile.', 'What is felt?', '', 'publish', 'open', 'open', '', 'what-is-felt', '', '', '2015-06-05 14:39:08', '2015-06-05 14:39:08', '', 2, 'http://suhajdag.socialfelt.monk.dmz/?page_id=12', 4, 'page', '', 0),
	(13, 1, '2015-06-03 10:27:39', '2015-06-03 10:27:39', 'coming soon', 'What is felt?', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-06-03 10:27:39', '2015-06-03 10:27:39', '', 12, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/12-revision-v1/', 0, 'revision', '', 0),
	(14, 1, '2015-06-03 10:27:59', '2015-06-03 10:27:59', 'SocialFelt provides its services in partnership with other organizations. Due to the nature of the therapy and the cost of using different wool and silk supplies for felting, we need your support to bring these projects alive and help traumatized adolescents and women to recover from trauma.\r\n\r\nBy donating through this page, your donation will go to the project you want to support, covering the supplies, the transportation and the labour costs of the therapist. You can find out more about the costs visiting our <a href="http://suhajdag.socialfelt.monk.dmz/services/">Services</a> page.', 'Support our projects', '', 'publish', 'open', 'open', '', 'projects', '', '', '2015-06-05 14:40:06', '2015-06-05 14:40:06', '', 0, 'http://suhajdag.socialfelt.monk.dmz/?page_id=14', 0, 'page', '', 0),
	(15, 1, '2015-06-03 10:27:59', '2015-06-03 10:27:59', ' ', '', '', 'publish', 'open', 'open', '', '15', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 0, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/15/', 6, 'nav_menu_item', '', 0),
	(16, 1, '2015-06-03 10:27:59', '2015-06-03 10:27:59', 'coming soon.', 'Support our projects', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-06-03 10:27:59', '2015-06-03 10:27:59', '', 14, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/14-revision-v1/', 0, 'revision', '', 0),
	(17, 1, '2015-06-03 10:28:10', '2015-06-03 10:28:10', 'coming soon', 'Resources', '', 'publish', 'open', 'open', '', 'resources', '', '', '2015-06-05 14:39:40', '2015-06-05 14:39:40', '', 0, 'http://suhajdag.socialfelt.monk.dmz/?page_id=17', 0, 'page', '', 0),
	(18, 1, '2015-06-03 10:28:10', '2015-06-03 10:28:10', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 0, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/18/', 7, 'nav_menu_item', '', 0),
	(19, 1, '2015-06-03 10:28:10', '2015-06-03 10:28:10', 'coming soon', 'Resources', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-06-03 10:28:10', '2015-06-03 10:28:10', '', 17, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/17-revision-v1/', 0, 'revision', '', 0),
	(20, 1, '2015-06-03 10:28:19', '2015-06-03 10:28:19', 'coming soon', 'Services', '', 'publish', 'open', 'open', '', 'services', '', '', '2015-06-05 14:39:52', '2015-06-05 14:39:52', '', 0, 'http://suhajdag.socialfelt.monk.dmz/?page_id=20', 0, 'page', '', 0),
	(21, 1, '2015-06-03 10:28:19', '2015-06-03 10:28:19', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 0, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/21/', 8, 'nav_menu_item', '', 0),
	(22, 1, '2015-06-03 10:28:19', '2015-06-03 10:28:19', 'coming soon', 'Services', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-06-03 10:28:19', '2015-06-03 10:28:19', '', 20, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/20-revision-v1/', 0, 'revision', '', 0),
	(23, 1, '2015-06-03 10:28:27', '2015-06-03 10:28:27', 'coming soon.', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-06-05 14:39:27', '2015-06-05 14:39:27', '', 0, 'http://suhajdag.socialfelt.monk.dmz/?page_id=23', 0, 'page', '', 0),
	(24, 1, '2015-06-03 10:28:27', '2015-06-03 10:28:27', ' ', '', '', 'publish', 'open', 'open', '', '24', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 0, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/24/', 9, 'nav_menu_item', '', 0),
	(25, 1, '2015-06-03 10:28:27', '2015-06-03 10:28:27', 'coming soon.', 'Contact', '', 'inherit', 'open', 'open', '', '23-revision-v1', '', '', '2015-06-03 10:28:27', '2015-06-03 10:28:27', '', 23, 'http://suhajdag.socialfelt.monk.dmz/2015/06/03/23-revision-v1/', 0, 'revision', '', 0),
	(26, 1, '2015-06-03 10:28:56', '2015-06-03 10:28:56', ' ', '', '', 'publish', 'open', 'open', '', '26', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 2, 'http://suhajdag.socialfelt.monk.dmz/?p=26', 5, 'nav_menu_item', '', 0),
	(27, 1, '2015-06-03 10:28:56', '2015-06-03 10:28:56', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 2, 'http://suhajdag.socialfelt.monk.dmz/?p=27', 4, 'nav_menu_item', '', 0),
	(28, 1, '2015-06-03 10:28:56', '2015-06-03 10:28:56', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 2, 'http://suhajdag.socialfelt.monk.dmz/?p=28', 3, 'nav_menu_item', '', 0),
	(29, 1, '2015-06-03 10:28:56', '2015-06-03 10:28:56', ' ', '', '', 'publish', 'open', 'open', '', '29', '', '', '2015-06-03 10:28:56', '2015-06-03 10:28:56', '', 2, 'http://suhajdag.socialfelt.monk.dmz/?p=29', 2, 'nav_menu_item', '', 0),
	(30, 1, '2015-06-05 13:42:38', '2015-06-05 13:42:38', '<h2>Social Felt – Craft Touch and Care is an innovative pilot project aiming to provide psychosocial support for marginalized, vulnerable and traumatized groups of children, adolescents, youth and women.</h2>\r\nThe project is based on the ‘Felt Therapy’, developed by Bernadett Fekete. It is an alternative approach to counselling, psychosocial rehabilitation, healing process, self expression and empowerment, where wool and feltmaking is used as a culture sensitive therapeutic tool and medium.\r\n\r\nSocialFelt supports adolescents and women, who are victims and survivors of:\r\n<ul>\r\n	<li>human trafficking</li>\r\n	<li>sexual violence and related crimes, forced prostitution</li>\r\n	<li>forced marriages</li>\r\n	<li>torture</li>\r\n	<li>unsafe migration</li>\r\n	<li>war crimes</li>\r\n	<li>gender based violence</li>\r\n	<li>genital mutilation</li>\r\n	<li>slavery and forced labor</li>\r\n	<li>domestic violence</li>\r\n	<li>Socialfelt heals with felt</li>\r\n</ul>\r\nThe participants will be able to experience their feelings, sensibilities, capacities and abilities, to reconnect with their body and their inner self, with the wider community and with the society. They will be supported in coming into terms with their feelings of shame, anger and loss; abuse and violence, vulnerability; fears of living in a foreign country. Through the positive experience of ‘Felt Therapy’, they will be helped in coping with difficult circumstances, building self-confidence, and developing resilience to protect themselves.\r\n\r\nIt will give the opportunity for the participants to belong to somewhere they are valued, their talent is developed, and their voice is heard. Felt Therapy is a group activity, where participants are able to discover the joy of design and craft, sharing ideas and creating. During the creative process there is also space for sharing their feelings and concerns with each other in the presence of a professional.\r\n\r\nGroup art works of therapeutic sessions to be used in raising awareness of related issues to reduce negative social stigmas and victimization of survivors. It would also contribute for the sustainability of the project by organizing exhibitions, fairs, outlets, auctions and cultural activities.', 'Aims & Objectives', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-06-05 13:42:38', '2015-06-05 13:42:38', '', 6, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/6-revision-v1/', 0, 'revision', '', 0),
	(31, 1, '2015-06-05 13:43:25', '2015-06-05 13:43:25', 'Bernadett Fekete, the Founder of SocialFelt – Craft, Touch and Care, is a Qualified Social Worker (MA) and have been working in Child Protection, Juvenile Justice and in Refugee Affairs in the UK, Hungary, India and the Philippines. She has more than 15 years of professional experience in working with disadvantaged youth from different marginalized groups such as street children, children affected by HIV, Gipsy youth, unaccompanied refugee minors, juvenile offenders and victims of child prostitution.\r\n\r\nDuring her career in Social Work she has been working in cross-cultural settings in Europe and in Asia, where at times language and culture was a barrier in effective intervention and she became involved in searching for culture sensitive methods to deal with trauma, rehabilitation and healing in a non-verbal way.\r\n\r\nVarious types of felt\r\nWorking with asylum seeker unaccompanied minors and victims of human trafficking in the UK, she realized that there is a gap in social welfare and mental health services, where professionals are less likely to be prepared to work with people from different cultures, especially if not speaking the same language.\r\n\r\nMost of the times there is no resource or access for adequate professional interpreters assisting in counselling or other therapies, or the person in need of help feels ashamed to talk in the presence of the interpreter about her/his problems due to cultural reasons. In the same time, Western-type psychotherapies might not be suitable to help people from cultures where expressing individual feelings and views are not appropriate.\r\n\r\nDue to the globalization, economic and political reasons, wars and natural disasters and the enormous migration, millions of people find themselves in abroad, far from their home and original culture. Many of them has gone through a very hard time back in their home country, during their journey or whilst settling down in a new country, and many of them became victims of international organized crimes. The most vulnerable group of migration are the children and women.\r\n\r\nTargeting the above mentioned issues, she started a research on craft therapies and she started developing the ‘Felt Therapy’, a method using feltmaking as a creative therapy in Social Work. She would like to introduce felt and wool as a culture sensitive therapeutic tool for healing, as a medium for rehabilitation of deprived and/or traumatized groups and communities, and to achieve positive social changes.\r\n\r\nYou can see her detailed CV <a href="https://www.linkedin.com/pub/bernadett-fekete/87/669/a85" target="_blank">here</a>.', 'Beginnings', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-06-05 13:43:25', '2015-06-05 13:43:25', '', 8, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/8-revision-v1/', 0, 'revision', '', 0),
	(32, 1, '2015-06-05 13:43:57', '2015-06-05 13:43:57', '<h2>‘Felt Therapy’ is an alternative approach to cross-cultural counselling, psychosocial rehabilitation, self-expression and empowerment.</h2>\r\nThe project focus primarily on women empowerment, especially adolescents and young adults, who are victims of human trafficking and (child) prostitution, unsafe migration, torture or gender based violence, forced marriage, domestic violence, war crimes, forced labour and slavery. The therapy is community/group based but can be practised individually, participants can engage in different levels.\r\n\r\nFelt Therapy intends to be a non-analytical, non-verbal therapy, focusing on the crafting process and its therapeutic benefits. This would help traumatised people in the healing process a more ‘silent’ way, where they can take their life into their own hands. Instead helping individuals to re-discover and narrate the trauma occurred and the feelings connected to it, I would focus on the silent healing in the community, turning the negative energies into positive, finding joy and calmness in creativity over their depression, and focusing on the future, building resilience in the body and mind.\r\n\r\nThis therapy is considered as a culture sensitive and cross-cultural therapy, and I intend to use it also with women whose first language is not English or does not speak English at all. Women with different cultural background might not be benefited by verbal therapies as they might not get used to articulate their own feelings. In some cultures feelings for the family and community would overtake individual needs and would feel shame to talk about problems.', 'Felt Therapy', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-06-05 13:43:57', '2015-06-05 13:43:57', '', 10, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/10-revision-v1/', 0, 'revision', '', 0),
	(33, 1, '2015-06-05 13:45:07', '2015-06-05 13:45:07', '<h2>Felt is a non-woven, versatile and natural fabric made from sheep wool and different animal fibres. This ancient craft is originated from Asia and hugely contributed to the living and surviving of the nomadic tribes.</h2>\r\nMaking handmade felt from wool fibre is a magical but simple process, requiring very little equipment such as wool, water and soap. It has a tactile nature and it is a powerful multi-sensory experience\r\n\r\nThe maker pull gently small, thin puffs of wool need to tear of fibre staples of the supply and laying down two or three layers of fibre. The soft fibres staples will almost melt in the hand. More texture can be created by decorating the surface with yarns, fabrics, ribbons, silk or any other fibres, and anything to be able to attach in the fibre. Warm soapy water is applied to the layers of animal hairs. During feltmaking the maker need to gently rub, stroke and massage the fibres into one piece, invest of lot of armpower into the rhythmical rolling, and finally release all the energy through the throwing process to make the felt a steady textile.', 'What is felt?', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-06-05 13:45:07', '2015-06-05 13:45:07', '', 12, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/12-revision-v1/', 0, 'revision', '', 0),
	(34, 1, '2015-06-05 13:45:35', '2015-06-05 13:45:35', '<h2>Social Felt – Craft Touch and Care is an innovative pilot project aiming to provide psychosocial support for marginalized, vulnerable and traumatized groups of children, adolescents, youth and women.</h2>\r\nThe project is based on the ‘Felt Therapy’, developed by Bernadett Fekete. It is an alternative approach to counselling, psychosocial rehabilitation, healing process, self expression and empowerment, where wool and feltmaking is used as a culture sensitive therapeutic tool and medium.\r\n\r\nSocialFelt supports adolescents and women, who are victims and survivors of:\r\n<ul>\r\n	<li>human trafficking</li>\r\n	<li>sexual violence and related crimes, forced prostitution</li>\r\n	<li>forced marriages</li>\r\n	<li>torture</li>\r\n	<li>unsafe migration</li>\r\n	<li>war crimes</li>\r\n	<li>gender based violence</li>\r\n	<li>genital mutilation</li>\r\n	<li>slavery and forced labor</li>\r\n	<li>domestic violence</li>\r\n</ul>\r\nThe participants will be able to experience their feelings, sensibilities, capacities and abilities, to reconnect with their body and their inner self, with the wider community and with the society. They will be supported in coming into terms with their feelings of shame, anger and loss; abuse and violence, vulnerability; fears of living in a foreign country. Through the positive experience of ‘Felt Therapy’, they will be helped in coping with difficult circumstances, building self-confidence, and developing resilience to protect themselves.\r\n\r\nIt will give the opportunity for the participants to belong to somewhere they are valued, their talent is developed, and their voice is heard. Felt Therapy is a group activity, where participants are able to discover the joy of design and craft, sharing ideas and creating. During the creative process there is also space for sharing their feelings and concerns with each other in the presence of a professional.\r\n\r\nGroup art works of therapeutic sessions to be used in raising awareness of related issues to reduce negative social stigmas and victimization of survivors. It would also contribute for the sustainability of the project by organizing exhibitions, fairs, outlets, auctions and cultural activities.', 'Aims & Objectives', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-06-05 13:45:35', '2015-06-05 13:45:35', '', 6, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/6-revision-v1/', 0, 'revision', '', 0),
	(35, 1, '2015-06-05 13:45:48', '2015-06-05 13:45:48', 'Bernadett Fekete, the Founder of SocialFelt – Craft, Touch and Care, is a Qualified Social Worker (MA) and have been working in Child Protection, Juvenile Justice and in Refugee Affairs in the UK, Hungary, India and the Philippines. She has more than 15 years of professional experience in working with disadvantaged youth from different marginalized groups such as street children, children affected by HIV, Gipsy youth, unaccompanied refugee minors, juvenile offenders and victims of child prostitution.\r\n\r\nDuring her career in Social Work she has been working in cross-cultural settings in Europe and in Asia, where at times language and culture was a barrier in effective intervention and she became involved in searching for culture sensitive methods to deal with trauma, rehabilitation and healing in a non-verbal way.\r\n\r\nWorking with asylum seeker unaccompanied minors and victims of human trafficking in the UK, she realized that there is a gap in social welfare and mental health services, where professionals are less likely to be prepared to work with people from different cultures, especially if not speaking the same language.\r\n\r\nMost of the times there is no resource or access for adequate professional interpreters assisting in counselling or other therapies, or the person in need of help feels ashamed to talk in the presence of the interpreter about her/his problems due to cultural reasons. In the same time, Western-type psychotherapies might not be suitable to help people from cultures where expressing individual feelings and views are not appropriate.\r\n\r\nDue to the globalization, economic and political reasons, wars and natural disasters and the enormous migration, millions of people find themselves in abroad, far from their home and original culture. Many of them has gone through a very hard time back in their home country, during their journey or whilst settling down in a new country, and many of them became victims of international organized crimes. The most vulnerable group of migration are the children and women.\r\n\r\nTargeting the above mentioned issues, she started a research on craft therapies and she started developing the ‘Felt Therapy’, a method using feltmaking as a creative therapy in Social Work. She would like to introduce felt and wool as a culture sensitive therapeutic tool for healing, as a medium for rehabilitation of deprived and/or traumatized groups and communities, and to achieve positive social changes.\r\n\r\nYou can see her detailed CV <a href="https://www.linkedin.com/pub/bernadett-fekete/87/669/a85" target="_blank">here</a>.', 'Beginnings', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-06-05 13:45:48', '2015-06-05 13:45:48', '', 8, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/8-revision-v1/', 0, 'revision', '', 0),
	(36, 1, '2015-06-05 13:46:20', '2015-06-05 13:46:20', 'SocialFelt provides its services in partnership with other organizations. Due to the nature of the therapy and the cost of using different wool and silk supplies for felting, we need your support to bring these projects alive and help traumatized adolescents and women to recover from trauma.\r\n\r\nBy donating through this page, your donation will go to the project you want to support, covering the supplies, the transportation and the labour costs of the therapist. You can find out more about the costs visiting our <a href="http://suhajdag.socialfelt.monk.dmz/services/">Services</a> page.', 'Support our projects', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-06-05 13:46:20', '2015-06-05 13:46:20', '', 14, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/14-revision-v1/', 0, 'revision', '', 0),
	(37, 1, '2015-06-05 14:26:51', '2015-06-05 14:26:51', '', 'Page settings', '', 'publish', 'closed', 'closed', '', 'acf_page-settings', '', '', '2015-06-05 14:26:51', '2015-06-05 14:26:51', '', 0, 'http://suhajdag.socialfelt.monk.dmz/?post_type=acf&#038;p=37', 0, 'acf', '', 0),
	(38, 1, '2015-06-05 14:27:44', '2015-06-05 14:27:44', '', 'bg_felttherapy', '', 'inherit', 'closed', 'closed', '', 'bg_felttherapy', '', '', '2015-06-05 14:27:44', '2015-06-05 14:27:44', '', 10, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_felttherapy.jpg', 0, 'attachment', 'image/jpeg', 0),
	(39, 1, '2015-06-05 14:27:54', '2015-06-05 14:27:54', '<h2>‘Felt Therapy’ is an alternative approach to cross-cultural counselling, psychosocial rehabilitation, self-expression and empowerment.</h2>\r\nThe project focus primarily on women empowerment, especially adolescents and young adults, who are victims of human trafficking and (child) prostitution, unsafe migration, torture or gender based violence, forced marriage, domestic violence, war crimes, forced labour and slavery. The therapy is community/group based but can be practised individually, participants can engage in different levels.\r\n\r\nFelt Therapy intends to be a non-analytical, non-verbal therapy, focusing on the crafting process and its therapeutic benefits. This would help traumatised people in the healing process a more ‘silent’ way, where they can take their life into their own hands. Instead helping individuals to re-discover and narrate the trauma occurred and the feelings connected to it, I would focus on the silent healing in the community, turning the negative energies into positive, finding joy and calmness in creativity over their depression, and focusing on the future, building resilience in the body and mind.\r\n\r\nThis therapy is considered as a culture sensitive and cross-cultural therapy, and I intend to use it also with women whose first language is not English or does not speak English at all. Women with different cultural background might not be benefited by verbal therapies as they might not get used to articulate their own feelings. In some cultures feelings for the family and community would overtake individual needs and would feel shame to talk about problems.', 'Felt Therapy', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-06-05 14:27:54', '2015-06-05 14:27:54', '', 10, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/10-revision-v1/', 0, 'revision', '', 0),
	(40, 1, '2015-06-05 14:38:06', '2015-06-05 14:38:06', '', 'bg_aims', '', 'inherit', 'closed', 'closed', '', 'bg_aims', '', '', '2015-06-05 14:38:06', '2015-06-05 14:38:06', '', 6, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_aims.jpg', 0, 'attachment', 'image/jpeg', 0),
	(41, 1, '2015-06-05 14:38:11', '2015-06-05 14:38:11', '', 'bg_beginnings', '', 'inherit', 'closed', 'closed', '', 'bg_beginnings', '', '', '2015-06-05 14:38:11', '2015-06-05 14:38:11', '', 6, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_beginnings.jpg', 0, 'attachment', 'image/jpeg', 0),
	(42, 1, '2015-06-05 14:38:13', '2015-06-05 14:38:13', '', 'bg_contact', '', 'inherit', 'closed', 'closed', '', 'bg_contact', '', '', '2015-06-05 14:38:13', '2015-06-05 14:38:13', '', 6, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_contact.jpg', 0, 'attachment', 'image/jpeg', 0),
	(43, 1, '2015-06-05 14:38:14', '2015-06-05 14:38:14', '', 'bg_main', '', 'inherit', 'closed', 'closed', '', 'bg_main', '', '', '2015-06-05 14:38:14', '2015-06-05 14:38:14', '', 6, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_main.jpg', 0, 'attachment', 'image/jpeg', 0),
	(44, 1, '2015-06-05 14:38:14', '2015-06-05 14:38:14', '', 'bg_projects', '', 'inherit', 'closed', 'closed', '', 'bg_projects', '', '', '2015-06-05 14:38:14', '2015-06-05 14:38:14', '', 6, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_projects.jpg', 0, 'attachment', 'image/jpeg', 0),
	(45, 1, '2015-06-05 14:38:15', '2015-06-05 14:38:15', '', 'bg_resources', '', 'inherit', 'closed', 'closed', '', 'bg_resources', '', '', '2015-06-05 14:38:15', '2015-06-05 14:38:15', '', 6, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_resources.jpg', 0, 'attachment', 'image/jpeg', 0),
	(46, 1, '2015-06-05 14:38:16', '2015-06-05 14:38:16', '', 'bg_services', '', 'inherit', 'closed', 'closed', '', 'bg_services', '', '', '2015-06-05 14:38:16', '2015-06-05 14:38:16', '', 6, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_services.jpg', 0, 'attachment', 'image/jpeg', 0),
	(47, 1, '2015-06-05 14:38:16', '2015-06-05 14:38:16', '', 'bg_whatisfelt', '', 'inherit', 'closed', 'closed', '', 'bg_whatisfelt', '', '', '2015-06-05 14:38:16', '2015-06-05 14:38:16', '', 6, 'http://suhajdag.socialfelt.monk.dmz/wp-content/uploads/2015/06/bg_whatisfelt.jpg', 0, 'attachment', 'image/jpeg', 0),
	(48, 1, '2015-06-05 14:38:28', '2015-06-05 14:38:28', '<h2>Social Felt – Craft Touch and Care is an innovative pilot project aiming to provide psychosocial support for marginalized, vulnerable and traumatized groups of children, adolescents, youth and women.</h2>\r\nThe project is based on the ‘Felt Therapy’, developed by Bernadett Fekete. It is an alternative approach to counselling, psychosocial rehabilitation, healing process, self expression and empowerment, where wool and feltmaking is used as a culture sensitive therapeutic tool and medium.\r\n\r\nSocialFelt supports adolescents and women, who are victims and survivors of:\r\n<ul>\r\n	<li>human trafficking</li>\r\n	<li>sexual violence and related crimes, forced prostitution</li>\r\n	<li>forced marriages</li>\r\n	<li>torture</li>\r\n	<li>unsafe migration</li>\r\n	<li>war crimes</li>\r\n	<li>gender based violence</li>\r\n	<li>genital mutilation</li>\r\n	<li>slavery and forced labor</li>\r\n	<li>domestic violence</li>\r\n</ul>\r\nThe participants will be able to experience their feelings, sensibilities, capacities and abilities, to reconnect with their body and their inner self, with the wider community and with the society. They will be supported in coming into terms with their feelings of shame, anger and loss; abuse and violence, vulnerability; fears of living in a foreign country. Through the positive experience of ‘Felt Therapy’, they will be helped in coping with difficult circumstances, building self-confidence, and developing resilience to protect themselves.\r\n\r\nIt will give the opportunity for the participants to belong to somewhere they are valued, their talent is developed, and their voice is heard. Felt Therapy is a group activity, where participants are able to discover the joy of design and craft, sharing ideas and creating. During the creative process there is also space for sharing their feelings and concerns with each other in the presence of a professional.\r\n\r\nGroup art works of therapeutic sessions to be used in raising awareness of related issues to reduce negative social stigmas and victimization of survivors. It would also contribute for the sustainability of the project by organizing exhibitions, fairs, outlets, auctions and cultural activities.', 'Aims & Objectives', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-06-05 14:38:28', '2015-06-05 14:38:28', '', 6, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/6-revision-v1/', 0, 'revision', '', 0),
	(49, 1, '2015-06-05 14:38:41', '2015-06-05 14:38:41', 'Bernadett Fekete, the Founder of SocialFelt – Craft, Touch and Care, is a Qualified Social Worker (MA) and have been working in Child Protection, Juvenile Justice and in Refugee Affairs in the UK, Hungary, India and the Philippines. She has more than 15 years of professional experience in working with disadvantaged youth from different marginalized groups such as street children, children affected by HIV, Gipsy youth, unaccompanied refugee minors, juvenile offenders and victims of child prostitution.\r\n\r\nDuring her career in Social Work she has been working in cross-cultural settings in Europe and in Asia, where at times language and culture was a barrier in effective intervention and she became involved in searching for culture sensitive methods to deal with trauma, rehabilitation and healing in a non-verbal way.\r\n\r\nWorking with asylum seeker unaccompanied minors and victims of human trafficking in the UK, she realized that there is a gap in social welfare and mental health services, where professionals are less likely to be prepared to work with people from different cultures, especially if not speaking the same language.\r\n\r\nMost of the times there is no resource or access for adequate professional interpreters assisting in counselling or other therapies, or the person in need of help feels ashamed to talk in the presence of the interpreter about her/his problems due to cultural reasons. In the same time, Western-type psychotherapies might not be suitable to help people from cultures where expressing individual feelings and views are not appropriate.\r\n\r\nDue to the globalization, economic and political reasons, wars and natural disasters and the enormous migration, millions of people find themselves in abroad, far from their home and original culture. Many of them has gone through a very hard time back in their home country, during their journey or whilst settling down in a new country, and many of them became victims of international organized crimes. The most vulnerable group of migration are the children and women.\r\n\r\nTargeting the above mentioned issues, she started a research on craft therapies and she started developing the ‘Felt Therapy’, a method using feltmaking as a creative therapy in Social Work. She would like to introduce felt and wool as a culture sensitive therapeutic tool for healing, as a medium for rehabilitation of deprived and/or traumatized groups and communities, and to achieve positive social changes.\r\n\r\nYou can see her detailed CV <a href="https://www.linkedin.com/pub/bernadett-fekete/87/669/a85" target="_blank">here</a>.', 'Beginnings', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2015-06-05 14:38:41', '2015-06-05 14:38:41', '', 8, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/8-revision-v1/', 0, 'revision', '', 0),
	(50, 1, '2015-06-05 14:39:08', '2015-06-05 14:39:08', '<h2>Felt is a non-woven, versatile and natural fabric made from sheep wool and different animal fibres. This ancient craft is originated from Asia and hugely contributed to the living and surviving of the nomadic tribes.</h2>\r\nMaking handmade felt from wool fibre is a magical but simple process, requiring very little equipment such as wool, water and soap. It has a tactile nature and it is a powerful multi-sensory experience\r\n\r\nThe maker pull gently small, thin puffs of wool need to tear of fibre staples of the supply and laying down two or three layers of fibre. The soft fibres staples will almost melt in the hand. More texture can be created by decorating the surface with yarns, fabrics, ribbons, silk or any other fibres, and anything to be able to attach in the fibre. Warm soapy water is applied to the layers of animal hairs. During feltmaking the maker need to gently rub, stroke and massage the fibres into one piece, invest of lot of armpower into the rhythmical rolling, and finally release all the energy through the throwing process to make the felt a steady textile.', 'What is felt?', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-06-05 14:39:08', '2015-06-05 14:39:08', '', 12, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/12-revision-v1/', 0, 'revision', '', 0),
	(51, 1, '2015-06-05 14:39:27', '2015-06-05 14:39:27', 'coming soon.', 'Contact', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2015-06-05 14:39:27', '2015-06-05 14:39:27', '', 23, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/23-revision-v1/', 0, 'revision', '', 0),
	(52, 1, '2015-06-05 14:39:40', '2015-06-05 14:39:40', 'coming soon', 'Resources', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2015-06-05 14:39:40', '2015-06-05 14:39:40', '', 17, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/17-revision-v1/', 0, 'revision', '', 0),
	(53, 1, '2015-06-05 14:39:52', '2015-06-05 14:39:52', 'coming soon', 'Services', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2015-06-05 14:39:52', '2015-06-05 14:39:52', '', 20, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/20-revision-v1/', 0, 'revision', '', 0),
	(54, 1, '2015-06-05 14:40:06', '2015-06-05 14:40:06', 'SocialFelt provides its services in partnership with other organizations. Due to the nature of the therapy and the cost of using different wool and silk supplies for felting, we need your support to bring these projects alive and help traumatized adolescents and women to recover from trauma.\r\n\r\nBy donating through this page, your donation will go to the project you want to support, covering the supplies, the transportation and the labour costs of the therapist. You can find out more about the costs visiting our <a href="http://suhajdag.socialfelt.monk.dmz/services/">Services</a> page.', 'Support our projects', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-06-05 14:40:06', '2015-06-05 14:40:06', '', 14, 'http://suhajdag.socialfelt.monk.dmz/2015/06/05/14-revision-v1/', 0, 'revision', '', 0);
/*!40000 ALTER TABLE `wp_sf_posts` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_terms
CREATE TABLE IF NOT EXISTS `wp_sf_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_terms: ~2 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_terms` DISABLE KEYS */;
INSERT INTO `wp_sf_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorized', 'uncategorized', 0),
	(2, 'main', 'main', 0);
/*!40000 ALTER TABLE `wp_sf_terms` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_term_relationships
CREATE TABLE IF NOT EXISTS `wp_sf_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_term_relationships: ~9 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_sf_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(5, 2, 0),
	(15, 2, 0),
	(18, 2, 0),
	(21, 2, 0),
	(24, 2, 0),
	(26, 2, 0),
	(27, 2, 0),
	(28, 2, 0),
	(29, 2, 0);
/*!40000 ALTER TABLE `wp_sf_term_relationships` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_sf_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_term_taxonomy: ~2 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_sf_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1),
	(2, 2, 'nav_menu', '', 0, 9);
/*!40000 ALTER TABLE `wp_sf_term_taxonomy` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_usermeta
CREATE TABLE IF NOT EXISTS `wp_sf_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_usermeta: ~18 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_usermeta` DISABLE KEYS */;
INSERT INTO `wp_sf_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'sfdev'),
	(2, 1, 'first_name', ''),
	(3, 1, 'last_name', ''),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'comment_shortcuts', 'false'),
	(7, 1, 'admin_color', 'fresh'),
	(8, 1, 'use_ssl', '0'),
	(9, 1, 'show_admin_bar_front', 'false'),
	(10, 1, 'wp_sf_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(11, 1, 'wp_sf_user_level', '10'),
	(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
	(13, 1, 'show_welcome_panel', '1'),
	(14, 1, 'session_tokens', 'a:1:{s:64:"b4d035d679689e9e94d2f47c7d3bdd04ea5fdf16279ae6187c2026f9b38b81eb";a:4:{s:10:"expiration";i:1434532179;s:2:"ip";s:11:"10.99.0.214";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36";s:5:"login";i:1433322579;}}'),
	(15, 1, 'wp_sf_dashboard_quick_press_last_post_id', '3'),
	(16, 1, 'wp_sf_user-settings', 'hidetb=1&wplink=1&libraryContent=browse'),
	(17, 1, 'wp_sf_user-settings-time', '1433514469'),
	(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
	(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
	(20, 1, 'nav_menu_recently_edited', '2');
/*!40000 ALTER TABLE `wp_sf_usermeta` ENABLE KEYS */;


-- Dumping structure for tábla suhajdag_sandbox.wp_sf_users
CREATE TABLE IF NOT EXISTS `wp_sf_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table suhajdag_sandbox.wp_sf_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sf_users` DISABLE KEYS */;
INSERT INTO `wp_sf_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'sfdev', '$P$BSqiTYbVWVqalbQ2vUZATtF3VcCSbA0', 'sfdev', 'szajmon@zawar.hu', '', '2015-06-03 09:09:31', '', 0, 'sfdev');
/*!40000 ALTER TABLE `wp_sf_users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
