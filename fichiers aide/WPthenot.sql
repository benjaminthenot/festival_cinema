-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Mer 30 Janvier 2013 à 08:16
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPthenot`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_comments`
--

INSERT INTO `wp_festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-07 15:13:27', '2013-01-07 15:13:27', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=279 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~thenot/festival_cinema', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', 'Festival de films gays &amp; lesbiens', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'benjaminthenot@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~thenot/festival_cinema', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:2:{i:0;s:85:"/mnt/home/thenot/public_html/festival_cinema/wp-content/themes/twentytwelve/style.css";i:1;s:0:"";}', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:3:{i:2;a:3:{s:5:"title";s:11:"Partenaires";s:4:"text";s:125:"- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu";s:6:"filter";b:1;}i:3;a:3:{s:5:"title";s:6:"Agenda";s:4:"text";s:741:"Vendredi 24 septembre : 20h00\r\n- Soirée d’ouverture : séance de courts métrages\r\n-Rencontre-débat avec un réalisateur.\r\n\r\nSamedi 25 septembre : 19h30                        \r\n- Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école)\r\n- Rencontre-débat avec le Groupe Action Gay & Lesbien – Loiret sur les interventions en milieu scolaire.\r\n\r\nSamedi 25 septembre : 21h45                                \r\n- Fiction : Ander                                            \r\n\r\nDimanche 26 septembre : 16h00                              \r\n- Fiction : El niño pez\r\n\r\nDimanche 26 septembre : 18h00                      \r\n- Fiction : I can’t think straight\r\n";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '2', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:6:"text-2";i:2;s:6:"text-3";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1359557274;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1359558878;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1359558980;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1359529940;}', 'yes'),
(102, '_transient_random_seed', '5d457c14d7104ef516169ab39c1d5827', 'yes'),
(103, 'auth_key', 'o62CvTlfi%$S9?TsjFw:?S_S3aBZwb$2[z%E:x`YOH+R[u.|Is7c?g;XaVm?FqlD', 'yes'),
(104, 'auth_salt', '=-Z)r;;{-|~I5,wuEVPa)aT~~iuo(zMBIGe*b=7gTF55H6ia@yh}Y5]#48O a.vA', 'yes'),
(105, 'logged_in_key', 'j&7V$F$F&h;KQgaY53N*{UJ{K0GK~u.4?w!)(Cw5p=epry^H@IEl~R){{ynVBl[F', 'yes'),
(106, 'logged_in_salt', '%-<Qs>dV7)1O>`H9Mu#^MzL6x6o1Mcew-K0D|luOmywCiS%Oc<oAA|JZ#$tnHRW^', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359529970;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359530000;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:40:"http://localhost/~thenot/festival_cinema";s:4:"link";s:116:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~thenot/festival_cinema/";s:3:"url";s:149:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~thenot/festival_cinema/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', '9^oQ78} dSQy_rfZziB/cGz+$ber(S~Gz1L`~XZNQS#&c6rX-v?b)G;0I0`SxoH[', 'yes'),
(113, 'nonce_salt', 'y4Fbb.}&g$CsxS^R7G)z1^jQ8|](L&h$~%Qq`HV}NGUzGWPpHI<:T)<*5aZF+q)7', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(128, 'category_children', 'a:0:{}', 'yes'),
(196, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358781933;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:6:"text-2";i:2;s:6:"text-3";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(197, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(215, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(216, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(217, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(223, 'current_theme', 'Festival', 'yes'),
(224, 'theme_mods_festival', 'a:9:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"header_textcolor";s:3:"444";s:17:"header_image_data";a:5:{s:13:"attachment_id";i:150;s:3:"url";s:101:"http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/cropped-festival-bord-a-autre.jpg";s:13:"thumbnail_url";s:101:"http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/cropped-festival-bord-a-autre.jpg";s:5:"width";i:960;s:6:"height";i:121;}s:16:"background_color";s:6:"e6e6e6";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";}', 'yes'),
(225, 'theme_switched', '', 'yes'),
(253, '_site_transient_timeout_wporg_theme_feature_list', '1358959489', 'yes'),
(254, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(258, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1359427701', 'no'),
(259, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: couldn''t connect to host</p></div>', 'no'),
(260, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1359427701', 'no'),
(261, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(262, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1359427701', 'no'),
(263, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(264, '_transient_timeout_plugin_slugs', '1359470913', 'no'),
(265, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(266, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1359427713', 'no'),
(267, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(277, '_site_transient_timeout_theme_roots', '1359531800', 'yes'),
(278, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=325 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1358177830:1'),
(6, 1, '_wp_trash_meta_status', 'publish'),
(7, 1, '_wp_trash_meta_time', '1358175341'),
(8, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(9, 10, '_edit_last', '1'),
(10, 10, '_edit_lock', '1358177938:1'),
(13, 14, '_edit_last', '1'),
(14, 14, '_edit_lock', '1358178015:1'),
(17, 17, '_edit_last', '1'),
(18, 17, '_edit_lock', '1358178175:1'),
(21, 19, '_edit_last', '1'),
(22, 19, '_edit_lock', '1358178343:1'),
(25, 21, '_edit_last', '1'),
(26, 21, '_edit_lock', '1358178406:1'),
(29, 23, '_edit_last', '1'),
(30, 23, '_edit_lock', '1358178478:1'),
(33, 26, '_edit_last', '1'),
(34, 26, '_edit_lock', '1358178607:1'),
(53, 37, '_edit_last', '1'),
(54, 37, '_edit_lock', '1358178755:1'),
(61, 43, '_edit_last', '1'),
(62, 43, '_edit_lock', '1358178840:1'),
(65, 46, '_edit_last', '1'),
(66, 46, '_edit_lock', '1359385556:1'),
(71, 51, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(72, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1337;s:6:"height";i:875;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"EN_COLOricco-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(73, 4, '_thumbnail_id', '51'),
(76, 53, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(77, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1575;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"PAULINE_1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(78, 10, '_thumbnail_id', '53'),
(81, 56, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(82, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1890;s:6:"height";i:1260;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"OMAR_-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(83, 14, '_thumbnail_id', '56'),
(86, 59, '_wp_attached_file', '2013/01/Odile-.jpg'),
(87, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3704;s:6:"height";i:2508;s:4:"file";s:18:"2013/01/Odile-.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile--300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Odile--1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile--624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(88, 17, '_thumbnail_id', '59'),
(91, 62, '_wp_attached_file', '2013/01/COWBOY-FOREVER.jpg'),
(92, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2544;s:6:"height";i:1696;s:4:"file";s:26:"2013/01/COWBOY-FOREVER.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"COWBOY-FOREVER-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(93, 21, '_thumbnail_id', '62'),
(96, 64, '_wp_attached_file', '2013/01/American-boy.png'),
(97, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(98, 23, '_thumbnail_id', '64'),
(101, 66, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(102, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:221;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(103, 26, '_thumbnail_id', '66'),
(106, 68, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(107, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ANDER1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(108, 37, '_thumbnail_id', '68'),
(111, 70, '_wp_attached_file', '2013/01/EL-NINO-PEZ-1.jpg'),
(112, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4405;s:6:"height";i:3010;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-1-1024x699.jpg";s:5:"width";i:1024;s:6:"height";i:699;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(113, 43, '_thumbnail_id', '70'),
(114, 71, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(115, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"I_cant_think_straight_001-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(116, 46, '_thumbnail_id', '71'),
(119, 4, 'Réalisateur :', 'Pascal-Alex Vincent'),
(120, 4, 'Nationalité :', 'France'),
(121, 4, 'Année :', '2009'),
(122, 4, 'Durée :', '8 minutes'),
(125, 10, 'Réalisateur :', 'Céline Sciamma'),
(126, 10, 'Nationalité :', 'France'),
(127, 10, 'Année :', '2009'),
(128, 10, 'Durée :', '7 minutes'),
(131, 14, 'Réalisateur :', 'Sébastien Gabriel'),
(132, 14, 'Nationalité :', 'France'),
(133, 14, 'Année :', '2009'),
(134, 14, 'Durée :', '9 minutes'),
(137, 17, 'Réalisateur :', 'Bénédicte Delgéhier'),
(138, 17, 'Nationalité :', 'France'),
(139, 17, 'Année :', '2006'),
(140, 17, 'Durée :', '10 minutes'),
(145, 19, 'Réalisateur :', 'René Guerra Luiz'),
(146, 19, 'Nationalité :', 'Brésil'),
(147, 19, 'Année :', '2008'),
(148, 19, 'Durée :', '17 minutes'),
(149, 19, 'Version :', 'VOSTF'),
(154, 21, 'Réalisateur :', 'Jean Baptiste Erreca'),
(155, 21, 'Nationalité :', 'France'),
(156, 21, 'Année :', '2006'),
(157, 21, 'Durée :', '26 minutes'),
(160, 23, 'Réalisateur :', 'Patricia & Colette'),
(161, 23, 'Nationalité :', 'France'),
(162, 23, 'Année :', '2008'),
(163, 23, 'Durée :', '4 minutes'),
(166, 26, 'Réalisateur :', 'Debra Chasnoff'),
(167, 26, 'Nationalité :', 'Etats-Unis'),
(168, 26, 'Année :', '1996'),
(169, 26, 'Durée :', '01h20'),
(170, 26, 'Genre :', 'Documentaire'),
(175, 37, 'Réalisateur :', 'Roberto Castón'),
(176, 37, 'Nationalité :', 'Espagne'),
(177, 37, 'Année :', '2009'),
(178, 37, 'Durée :', '02h08'),
(179, 37, 'Version :', 'VOSTF'),
(180, 37, 'Interprètes :', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(183, 43, 'Réalisateur :', 'Lucía Puenzo'),
(184, 43, 'Nationalité :', 'Argentine'),
(185, 43, 'Année :', '2008'),
(186, 43, 'Durée :', '01h36'),
(187, 43, 'Version :', 'VOSTF'),
(188, 43, 'Interprètes :', 'Inés Efron, Mariela Vitale, Pep Munne'),
(191, 46, 'Réalisateur :', 'Shamim Sarif'),
(192, 46, 'Nationalité :', 'Grande Bretagne'),
(193, 46, 'Année :', '2007'),
(194, 46, 'Durée :', '01h20'),
(195, 46, 'Genre :', 'Comédie romantique'),
(196, 46, 'Version :', 'VOSTF'),
(197, 46, 'Interprètes :', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(227, 92, '_menu_item_type', 'custom'),
(228, 92, '_menu_item_menu_item_parent', '0'),
(229, 92, '_menu_item_object_id', '92'),
(230, 92, '_menu_item_object', 'custom'),
(231, 92, '_menu_item_target', ''),
(232, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(233, 92, '_menu_item_xfn', ''),
(234, 92, '_menu_item_url', 'http://localhost/~thenot/wordpress/'),
(235, 92, '_menu_item_orphaned', '1358179302'),
(253, 95, '_menu_item_type', 'custom'),
(254, 95, '_menu_item_menu_item_parent', '0'),
(255, 95, '_menu_item_object_id', '95'),
(256, 95, '_menu_item_object', 'custom'),
(257, 95, '_menu_item_target', ''),
(258, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(259, 95, '_menu_item_xfn', ''),
(260, 95, '_menu_item_url', 'http://localhost/~thenot/wordpress/'),
(261, 95, '_menu_item_orphaned', '1358343514'),
(262, 96, '_menu_item_type', 'taxonomy'),
(263, 96, '_menu_item_menu_item_parent', '0'),
(264, 96, '_menu_item_object_id', '2'),
(265, 96, '_menu_item_object', 'category'),
(266, 96, '_menu_item_target', ''),
(267, 96, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(268, 96, '_menu_item_xfn', ''),
(269, 96, '_menu_item_url', ''),
(271, 97, '_menu_item_type', 'taxonomy'),
(272, 97, '_menu_item_menu_item_parent', '0'),
(273, 97, '_menu_item_object_id', '3'),
(274, 97, '_menu_item_object', 'category'),
(275, 97, '_menu_item_target', ''),
(276, 97, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-jaune";}'),
(277, 97, '_menu_item_xfn', ''),
(278, 97, '_menu_item_url', ''),
(280, 2, '_edit_lock', '1359388912:1'),
(281, 2, '_edit_last', '1'),
(282, 100, '_menu_item_type', 'post_type'),
(283, 100, '_menu_item_menu_item_parent', '0'),
(284, 100, '_menu_item_object_id', '2'),
(285, 100, '_menu_item_object', 'page'),
(286, 100, '_menu_item_target', ''),
(287, 100, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(288, 100, '_menu_item_xfn', ''),
(289, 100, '_menu_item_url', ''),
(291, 101, '_edit_last', '1'),
(292, 101, '_edit_lock', '1358344362:1'),
(293, 101, '_wp_page_template', 'default'),
(294, 104, '_menu_item_type', 'post_type'),
(295, 104, '_menu_item_menu_item_parent', '0'),
(296, 104, '_menu_item_object_id', '101'),
(297, 104, '_menu_item_object', 'page'),
(298, 104, '_menu_item_target', ''),
(299, 104, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-vert";}'),
(300, 104, '_menu_item_xfn', ''),
(301, 104, '_menu_item_url', ''),
(303, 105, '_edit_last', '1'),
(304, 105, '_edit_lock', '1358344490:1'),
(305, 105, '_wp_page_template', 'default'),
(306, 109, '_menu_item_type', 'post_type'),
(307, 109, '_menu_item_menu_item_parent', '0'),
(308, 109, '_menu_item_object_id', '105'),
(309, 109, '_menu_item_object', 'page'),
(310, 109, '_menu_item_target', ''),
(311, 109, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-indigo";}'),
(312, 109, '_menu_item_xfn', ''),
(313, 109, '_menu_item_url', ''),
(314, 137, '_edit_last', '1'),
(315, 137, '_edit_lock', '1358945189:1'),
(316, 137, '_wp_page_template', 'default'),
(317, 142, '_menu_item_type', 'post_type'),
(318, 142, '_menu_item_menu_item_parent', '0'),
(319, 142, '_menu_item_object_id', '137'),
(320, 142, '_menu_item_object', 'page'),
(321, 142, '_menu_item_target', ''),
(322, 142, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-bleu";}'),
(323, 142, '_menu_item_xfn', ''),
(324, 142, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-07 15:13:27', '2013-01-07 15:13:27', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-14 15:55:41', '2013-01-14 14:55:41', '', 0, 'http://localhost/~thenot/festival_cinema/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-07 15:13:27', '2013-01-07 15:13:27', '<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.</p>\r\n<p style="text-align: justify;">Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.</p>\r\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\r\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\r\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\r\n<p style="text-align: justify;">Bon festival !</p>\r\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2013-01-28 16:49:24', '2013-01-28 15:49:24', '', 0, 'http://localhost/~thenot/festival_cinema/?page_id=2', 0, 'page', '', 0),
(4, 1, '2013-01-14 15:55:08', '2013-01-14 14:55:08', '<p style="text-align: justify;">Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.</p>', 'En colo', '', 'publish', 'closed', 'open', '', 'en-colo', '', '', '2013-01-16 15:43:09', '2013-01-16 14:43:09', '', 0, 'http://localhost/~thenot/festival_cinema/?p=4', 0, 'post', '', 0),
(5, 1, '2013-01-14 15:50:55', '2013-01-14 14:50:55', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2013-01-14 15:50:55', '2013-01-14 14:50:55', '', 4, 'http://localhost/~thenot/festival_cinema/?p=5', 0, 'revision', '', 0),
(6, 1, '2013-01-14 15:51:06', '2013-01-14 14:51:06', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2013-01-14 15:51:06', '2013-01-14 14:51:06', '', 4, 'http://localhost/~thenot/festival_cinema/?p=6', 0, 'revision', '', 0),
(7, 1, '2013-01-14 15:54:03', '2013-01-14 14:54:03', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-3', '', '', '2013-01-14 15:54:03', '2013-01-14 14:54:03', '', 4, 'http://localhost/~thenot/festival_cinema/?p=7', 0, 'revision', '', 0),
(9, 1, '2013-01-07 15:13:27', '2013-01-07 15:13:27', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2013-01-07 15:13:27', '2013-01-07 15:13:27', '', 1, 'http://localhost/~thenot/festival_cinema/?p=9', 0, 'revision', '', 0),
(10, 1, '2013-01-14 15:57:05', '2013-01-14 14:57:05', '<p style="text-align: justify;">C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.</p>', 'Pauline', '', 'publish', 'closed', 'open', '', 'pauline', '', '', '2013-01-16 15:43:08', '2013-01-16 14:43:08', '', 0, 'http://localhost/~thenot/festival_cinema/?p=10', 0, 'post', '', 0),
(11, 1, '2013-01-14 15:56:07', '2013-01-14 14:56:07', '', 'Pauline', '', 'inherit', 'open', 'open', '', '10-revision', '', '', '2013-01-14 15:56:07', '2013-01-14 14:56:07', '', 10, 'http://localhost/~thenot/festival_cinema/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-14 15:56:27', '2013-01-14 14:56:27', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '10-revision-2', '', '', '2013-01-14 15:56:27', '2013-01-14 14:56:27', '', 10, 'http://localhost/~thenot/festival_cinema/?p=12', 0, 'revision', '', 0),
(13, 1, '2013-01-14 15:56:44', '2013-01-14 14:56:44', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '10-revision-3', '', '', '2013-01-14 15:56:44', '2013-01-14 14:56:44', '', 10, 'http://localhost/~thenot/festival_cinema/?p=13', 0, 'revision', '', 0),
(14, 1, '2013-01-14 15:58:08', '2013-01-14 14:58:08', '<p style="text-align: justify;">C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.</p>', 'Omar', '', 'publish', 'closed', 'open', '', 'omar', '', '', '2013-01-16 15:43:08', '2013-01-16 14:43:08', '', 0, 'http://localhost/~thenot/festival_cinema/?p=14', 0, 'post', '', 0),
(15, 1, '2013-01-14 15:57:26', '2013-01-14 14:57:26', '', 'Omar', '', 'inherit', 'open', 'open', '', '14-revision', '', '', '2013-01-14 15:57:26', '2013-01-14 14:57:26', '', 14, 'http://localhost/~thenot/festival_cinema/?p=15', 0, 'revision', '', 0),
(16, 1, '2013-01-14 15:57:52', '2013-01-14 14:57:52', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '14-revision-2', '', '', '2013-01-14 15:57:52', '2013-01-14 14:57:52', '', 14, 'http://localhost/~thenot/festival_cinema/?p=16', 0, 'revision', '', 0),
(17, 1, '2013-01-14 15:59:17', '2013-01-14 14:59:17', '<p style="text-align: justify;">Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...</p>', 'Odile', '', 'publish', 'closed', 'open', '', 'odile', '', '', '2013-01-16 15:43:08', '2013-01-16 14:43:08', '', 0, 'http://localhost/~thenot/festival_cinema/?p=17', 0, 'post', '', 0),
(18, 1, '2013-01-14 15:59:00', '2013-01-14 14:59:00', '', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision', '', '', '2013-01-14 15:59:00', '2013-01-14 14:59:00', '', 17, 'http://localhost/~thenot/festival_cinema/?p=18', 0, 'revision', '', 0),
(19, 1, '2013-01-14 15:59:48', '2013-01-14 14:59:48', '<p style="text-align: justify;">Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.</p>', 'Os sapatos de Aristeu', '', 'publish', 'closed', 'open', '', 'os-sapatos-de-aristeu', '', '', '2013-01-16 15:43:07', '2013-01-16 14:43:07', '', 0, 'http://localhost/~thenot/festival_cinema/?p=19', 0, 'post', '', 0),
(20, 1, '2013-01-14 15:59:32', '2013-01-14 14:59:32', '', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '19-revision', '', '', '2013-01-14 15:59:32', '2013-01-14 14:59:32', '', 19, 'http://localhost/~thenot/festival_cinema/?p=20', 0, 'revision', '', 0),
(21, 1, '2013-01-14 16:00:22', '2013-01-14 15:00:22', '<p style="text-align: justify;">Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...</p>', 'Cowboy forever', '', 'publish', 'closed', 'open', '', 'cowboy-forever', '', '', '2013-01-16 15:43:07', '2013-01-16 14:43:07', '', 0, 'http://localhost/~thenot/festival_cinema/?p=21', 0, 'post', '', 0),
(22, 1, '2013-01-14 16:00:08', '2013-01-14 15:00:08', '', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision', '', '', '2013-01-14 16:00:08', '2013-01-14 15:00:08', '', 21, 'http://localhost/~thenot/festival_cinema/?p=22', 0, 'revision', '', 0),
(23, 1, '2013-01-14 16:01:30', '2013-01-14 15:01:30', '<p style="text-align: justify;">Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.</p>', 'American boy', '', 'publish', 'closed', 'open', '', 'american-boy', '', '', '2013-01-16 15:43:06', '2013-01-16 14:43:06', '', 0, 'http://localhost/~thenot/festival_cinema/?p=23', 0, 'post', '', 0),
(24, 1, '2013-01-14 16:01:09', '2013-01-14 15:01:09', '', 'American boy', '', 'inherit', 'open', 'open', '', '23-revision', '', '', '2013-01-14 16:01:09', '2013-01-14 15:01:09', '', 23, 'http://localhost/~thenot/festival_cinema/?p=24', 0, 'revision', '', 0),
(26, 1, '2013-01-14 16:03:38', '2013-01-14 15:03:38', '<p style="text-align: justify;">(C’est élémentaire - Parler de l’homosexualité à l’école)</p>\r\n<p style="text-align: justify;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\r\n<p style="text-align: justify;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\r\n<p style="text-align: justify;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'publish', 'closed', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-01-16 15:43:06', '2013-01-16 14:43:06', '', 0, 'http://localhost/~thenot/festival_cinema/?p=26', 0, 'post', '', 0),
(27, 1, '2013-01-14 16:03:18', '2013-01-14 15:03:18', '<p style="text-align: right;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\n<p style="text-align: right;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\n<p style="text-align: right;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision', '', '', '2013-01-14 16:03:18', '2013-01-14 15:03:18', '', 26, 'http://localhost/~thenot/festival_cinema/?p=27', 0, 'revision', '', 0),
(28, 1, '2013-01-14 16:03:29', '2013-01-14 15:03:29', '<p style="text-align: justify;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\r\n<p style="text-align: justify;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\r\n<p style="text-align: justify;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision-2', '', '', '2013-01-14 16:03:29', '2013-01-14 15:03:29', '', 26, 'http://localhost/~thenot/festival_cinema/?p=28', 0, 'revision', '', 0),
(29, 1, '2013-01-14 15:55:08', '2013-01-14 14:55:08', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-4', '', '', '2013-01-14 15:55:08', '2013-01-14 14:55:08', '', 4, 'http://localhost/~thenot/festival_cinema/?p=29', 0, 'revision', '', 0),
(30, 1, '2013-01-14 15:57:05', '2013-01-14 14:57:05', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '10-revision-4', '', '', '2013-01-14 15:57:05', '2013-01-14 14:57:05', '', 10, 'http://localhost/~thenot/festival_cinema/?p=30', 0, 'revision', '', 0),
(31, 1, '2013-01-14 15:58:08', '2013-01-14 14:58:08', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'open', 'open', '', '14-revision-3', '', '', '2013-01-14 15:58:08', '2013-01-14 14:58:08', '', 14, 'http://localhost/~thenot/festival_cinema/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-14 15:59:17', '2013-01-14 14:59:17', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-2', '', '', '2013-01-14 15:59:17', '2013-01-14 14:59:17', '', 17, 'http://localhost/~thenot/festival_cinema/?p=32', 0, 'revision', '', 0),
(33, 1, '2013-01-14 15:59:48', '2013-01-14 14:59:48', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '19-revision-2', '', '', '2013-01-14 15:59:48', '2013-01-14 14:59:48', '', 19, 'http://localhost/~thenot/festival_cinema/?p=33', 0, 'revision', '', 0),
(34, 1, '2013-01-14 16:00:22', '2013-01-14 15:00:22', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision-2', '', '', '2013-01-14 16:00:22', '2013-01-14 15:00:22', '', 21, 'http://localhost/~thenot/festival_cinema/?p=34', 0, 'revision', '', 0),
(35, 1, '2013-01-14 16:01:30', '2013-01-14 15:01:30', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American boy', '', 'inherit', 'open', 'open', '', '23-revision-2', '', '', '2013-01-14 16:01:30', '2013-01-14 15:01:30', '', 23, 'http://localhost/~thenot/festival_cinema/?p=35', 0, 'revision', '', 0),
(36, 1, '2013-01-14 16:05:14', '2013-01-14 15:05:14', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American boy', '', 'inherit', 'open', 'open', '', '23-revision-3', '', '', '2013-01-14 16:05:14', '2013-01-14 15:05:14', '', 23, 'http://localhost/~thenot/festival_cinema/?p=36', 0, 'revision', '', 0),
(37, 1, '2013-01-14 16:09:22', '2013-01-14 15:09:22', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\r\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'publish', 'closed', 'open', '', 'ander', '', '', '2013-01-16 15:43:05', '2013-01-16 14:43:05', '', 0, 'http://localhost/~thenot/festival_cinema/?p=37', 0, 'post', '', 0),
(38, 1, '2013-01-14 16:07:51', '2013-01-14 15:07:51', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.</p>\n<p style="text-align: justify;">Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...</p>\n<p style="text-align: justify;">Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...</p>\n<p style="text-align: justify;">Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-revision', '', '', '2013-01-14 16:07:51', '2013-01-14 15:07:51', '', 37, 'http://localhost/~thenot/festival_cinema/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-14 16:08:24', '2013-01-14 15:08:24', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.</p>\r\n<p style="text-align: justify;">Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...</p>\r\n<p style="text-align: justify;">Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...</p>\r\n<p style="text-align: justify;">Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\r\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-revision-2', '', '', '2013-01-14 16:08:24', '2013-01-14 15:08:24', '', 37, 'http://localhost/~thenot/festival_cinema/?p=39', 0, 'revision', '', 0),
(40, 1, '2013-01-14 16:53:05', '2013-01-14 15:53:05', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-autosave', '', '', '2013-01-14 16:53:05', '2013-01-14 15:53:05', '', 37, 'http://localhost/~thenot/festival_cinema/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-01-14 16:09:22', '2013-01-14 15:09:22', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\r\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-revision-3', '', '', '2013-01-14 16:09:22', '2013-01-14 15:09:22', '', 37, 'http://localhost/~thenot/festival_cinema/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-01-14 16:09:51', '2013-01-14 15:09:51', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\r\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-revision-4', '', '', '2013-01-14 16:09:51', '2013-01-14 15:09:51', '', 37, 'http://localhost/~thenot/festival_cinema/?p=42', 0, 'revision', '', 0),
(43, 1, '2013-01-14 16:13:14', '2013-01-14 15:13:14', '<p style="text-align: justify;">Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.</p>', 'El niño pez', '', 'publish', 'closed', 'open', '', 'el-nino-pez', '', '', '2013-01-16 15:43:05', '2013-01-16 14:43:05', '', 0, 'http://localhost/~thenot/festival_cinema/?p=43', 0, 'post', '', 0),
(44, 1, '2013-01-14 16:11:16', '2013-01-14 15:11:16', '', 'El niL NIÑO PEZ', '', 'inherit', 'open', 'open', '', '43-revision', '', '', '2013-01-14 16:11:16', '2013-01-14 15:11:16', '', 43, 'http://localhost/~thenot/festival_cinema/?p=44', 0, 'revision', '', 0),
(45, 1, '2013-01-14 16:55:32', '2013-01-14 15:55:32', '<p style="text-align: justify;">Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.</p>', 'El niño pez', '', 'inherit', 'open', 'open', '', '43-autosave', '', '', '2013-01-14 16:55:32', '2013-01-14 15:55:32', '', 43, 'http://localhost/~thenot/festival_cinema/?p=45', 0, 'revision', '', 0),
(46, 1, '2013-01-14 16:14:37', '2013-01-14 15:14:37', '<p style="text-align: justify;">Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.</p>\r\n<p style="text-align: justify;">Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)</p>', 'Can''t think straight', '', 'publish', 'closed', 'open', '', 'cant-think-straight', '', '', '2013-01-16 15:43:05', '2013-01-16 14:43:05', '', 0, 'http://localhost/~thenot/festival_cinema/?p=46', 0, 'post', '', 0),
(47, 1, '2013-01-14 16:14:26', '2013-01-14 15:14:26', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'Can''t think straight', '', 'inherit', 'open', 'open', '', '46-revision', '', '', '2013-01-14 16:14:26', '2013-01-14 15:14:26', '', 46, 'http://localhost/~thenot/festival_cinema/?p=47', 0, 'revision', '', 0),
(48, 1, '2013-01-14 16:14:37', '2013-01-14 15:14:37', '<p style="text-align: justify;">Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.</p>', 'Can''t think straight', '', 'inherit', 'open', 'open', '', '46-revision-2', '', '', '2013-01-14 16:14:37', '2013-01-14 15:14:37', '', 46, 'http://localhost/~thenot/festival_cinema/?p=48', 0, 'revision', '', 0),
(49, 1, '2013-01-28 16:04:33', '2013-01-28 15:04:33', '<p style="text-align: justify;">Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.</p>\n<p style="text-align: justify;">Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)</p>', 'Can''t think straight', '', 'inherit', 'open', 'open', '', '46-autosave', '', '', '2013-01-28 16:04:33', '2013-01-28 15:04:33', '', 46, 'http://localhost/~thenot/festival_cinema/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-14 16:38:01', '2013-01-14 15:38:01', '<p style="text-align: justify;">Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.</p>', 'En colo', '', 'inherit', 'open', 'open', '', '4-autosave', '', '', '2013-01-14 16:38:01', '2013-01-14 15:38:01', '', 4, 'http://localhost/~thenot/festival_cinema/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-01-14 16:23:23', '2013-01-14 15:23:23', '', 'EN_COLOricco', '', 'inherit', 'open', 'open', '', 'en_coloricco', '', '', '2013-01-14 16:23:23', '2013-01-14 15:23:23', '', 4, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2013-01-14 16:03:55', '2013-01-14 15:03:55', '<p style="text-align: justify;">Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.</p>', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-5', '', '', '2013-01-14 16:03:55', '2013-01-14 15:03:55', '', 4, 'http://localhost/~thenot/festival_cinema/?p=52', 0, 'revision', '', 0),
(53, 1, '2013-01-14 16:25:45', '2013-01-14 15:25:45', '', 'PAULINE_1', '', 'inherit', 'open', 'open', '', 'pauline_1', '', '', '2013-01-14 16:25:45', '2013-01-14 15:25:45', '', 10, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2013-01-14 16:40:08', '2013-01-14 15:40:08', '<p style="text-align: justify;">C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.</p>', 'Pauline', '', 'inherit', 'open', 'open', '', '10-autosave', '', '', '2013-01-14 16:40:08', '2013-01-14 15:40:08', '', 10, 'http://localhost/~thenot/festival_cinema/?p=54', 0, 'revision', '', 0),
(55, 1, '2013-01-14 16:04:11', '2013-01-14 15:04:11', '<p style="text-align: justify;">C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.</p>', 'Pauline', '', 'inherit', 'open', 'open', '', '10-revision-5', '', '', '2013-01-14 16:04:11', '2013-01-14 15:04:11', '', 10, 'http://localhost/~thenot/festival_cinema/?p=55', 0, 'revision', '', 0),
(56, 1, '2013-01-14 16:26:39', '2013-01-14 15:26:39', '', 'OMAR_', '', 'inherit', 'open', 'open', '', 'omar_', '', '', '2013-01-14 16:26:39', '2013-01-14 15:26:39', '', 14, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2013-01-14 16:41:57', '2013-01-14 15:41:57', '<p style="text-align: justify;">C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.</p>', 'Omar', '', 'inherit', 'open', 'open', '', '14-autosave', '', '', '2013-01-14 16:41:57', '2013-01-14 15:41:57', '', 14, 'http://localhost/~thenot/festival_cinema/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-01-14 16:04:25', '2013-01-14 15:04:25', '<p style="text-align: justify;">C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.</p>', 'Omar', '', 'inherit', 'open', 'open', '', '14-revision-4', '', '', '2013-01-14 16:04:25', '2013-01-14 15:04:25', '', 14, 'http://localhost/~thenot/festival_cinema/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-14 16:28:34', '2013-01-14 15:28:34', '', 'Odile', '', 'inherit', 'open', 'open', '', 'odile-2', '', '', '2013-01-14 16:28:34', '2013-01-14 15:28:34', '', 17, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/Odile-.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2013-01-14 16:43:13', '2013-01-14 15:43:13', '<p style="text-align: justify;">Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...</p>', 'Odile', '', 'inherit', 'open', 'open', '', '17-autosave', '', '', '2013-01-14 16:43:13', '2013-01-14 15:43:13', '', 17, 'http://localhost/~thenot/festival_cinema/?p=60', 0, 'revision', '', 0),
(61, 1, '2013-01-14 16:04:37', '2013-01-14 15:04:37', '<p style="text-align: justify;">Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...</p>', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-3', '', '', '2013-01-14 16:04:37', '2013-01-14 15:04:37', '', 17, 'http://localhost/~thenot/festival_cinema/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-14 16:29:54', '2013-01-14 15:29:54', '', 'COWBOY FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy-forever-2', '', '', '2013-01-14 16:29:54', '2013-01-14 15:29:54', '', 21, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/COWBOY-FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2013-01-14 16:05:04', '2013-01-14 15:05:04', '<p style="text-align: justify;">Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...</p>', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision-3', '', '', '2013-01-14 16:05:04', '2013-01-14 15:05:04', '', 21, 'http://localhost/~thenot/festival_cinema/?p=63', 0, 'revision', '', 0),
(64, 1, '2013-01-14 16:30:23', '2013-01-14 15:30:23', '', 'American boy', '', 'inherit', 'open', 'open', '', 'american-boy-2', '', '', '2013-01-14 16:30:23', '2013-01-14 15:30:23', '', 23, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2013-01-14 16:05:21', '2013-01-14 15:05:21', '<p style="text-align: justify;">Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.</p>', 'American boy', '', 'inherit', 'open', 'open', '', '23-revision-4', '', '', '2013-01-14 16:05:21', '2013-01-14 15:05:21', '', 23, 'http://localhost/~thenot/festival_cinema/?p=65', 0, 'revision', '', 0),
(66, 1, '2013-01-14 16:31:02', '2013-01-14 15:31:02', '', 'ItsElementaryGBan', '', 'inherit', 'open', 'open', '', 'itselementarygban', '', '', '2013-01-14 16:31:02', '2013-01-14 15:31:02', '', 26, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2013-01-14 16:03:38', '2013-01-14 15:03:38', '<p style="text-align: justify;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\r\n<p style="text-align: justify;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\r\n<p style="text-align: justify;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision-3', '', '', '2013-01-14 16:03:38', '2013-01-14 15:03:38', '', 26, 'http://localhost/~thenot/festival_cinema/?p=67', 0, 'revision', '', 0),
(68, 1, '2013-01-14 16:31:55', '2013-01-14 15:31:55', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1', '', '', '2013-01-14 16:31:55', '2013-01-14 15:31:55', '', 37, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2013-01-14 16:10:07', '2013-01-14 15:10:07', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\r\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-revision-5', '', '', '2013-01-14 16:10:07', '2013-01-14 15:10:07', '', 37, 'http://localhost/~thenot/festival_cinema/?p=69', 0, 'revision', '', 0),
(70, 1, '2013-01-14 16:32:52', '2013-01-14 15:32:52', '', 'EL NINO PEZ 1', '', 'inherit', 'open', 'open', '', 'el-nino-pez-1', '', '', '2013-01-14 16:32:52', '2013-01-14 15:32:52', '', 43, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/EL-NINO-PEZ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2013-01-14 16:33:18', '2013-01-14 15:33:18', '', 'I_cant_think_straight_001', '', 'inherit', 'open', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-14 16:33:18', '2013-01-14 15:33:18', '', 46, 'http://localhost/~thenot/festival_cinema/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2013-01-14 16:14:51', '2013-01-14 15:14:51', '<p style="text-align: justify;">Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.</p>\r\n<p style="text-align: justify;">Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)</p>', 'Can''t think straight', '', 'inherit', 'open', 'open', '', '46-revision-3', '', '', '2013-01-14 16:14:51', '2013-01-14 15:14:51', '', 46, 'http://localhost/~thenot/festival_cinema/?p=72', 0, 'revision', '', 0),
(73, 1, '2013-01-14 16:24:27', '2013-01-14 15:24:27', '<p style="text-align: justify;">Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.</p>', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-6', '', '', '2013-01-14 16:24:27', '2013-01-14 15:24:27', '', 4, 'http://localhost/~thenot/festival_cinema/?p=73', 0, 'revision', '', 0),
(74, 1, '2013-01-14 16:26:12', '2013-01-14 15:26:12', '<p style="text-align: justify;">C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.</p>', 'Pauline', '', 'inherit', 'open', 'open', '', '10-revision-6', '', '', '2013-01-14 16:26:12', '2013-01-14 15:26:12', '', 10, 'http://localhost/~thenot/festival_cinema/?p=74', 0, 'revision', '', 0),
(75, 1, '2013-01-14 16:26:59', '2013-01-14 15:26:59', '<p style="text-align: justify;">C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.</p>', 'Omar', '', 'inherit', 'open', 'open', '', '14-revision-5', '', '', '2013-01-14 16:26:59', '2013-01-14 15:26:59', '', 14, 'http://localhost/~thenot/festival_cinema/?p=75', 0, 'revision', '', 0),
(76, 1, '2013-01-14 16:28:48', '2013-01-14 15:28:48', '<p style="text-align: justify;">Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...</p>', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-4', '', '', '2013-01-14 16:28:48', '2013-01-14 15:28:48', '', 17, 'http://localhost/~thenot/festival_cinema/?p=76', 0, 'revision', '', 0),
(77, 1, '2013-01-14 16:43:47', '2013-01-14 15:43:47', '<p style="text-align: justify;">Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...</p>', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-5', '', '', '2013-01-14 16:43:47', '2013-01-14 15:43:47', '', 17, 'http://localhost/~thenot/festival_cinema/?p=77', 0, 'revision', '', 0),
(78, 1, '2013-01-14 16:45:53', '2013-01-14 15:45:53', '<p style="text-align: justify;">Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.</p>', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '19-autosave', '', '', '2013-01-14 16:45:53', '2013-01-14 15:45:53', '', 19, 'http://localhost/~thenot/festival_cinema/?p=78', 0, 'revision', '', 0),
(79, 1, '2013-01-14 16:04:51', '2013-01-14 15:04:51', '<p style="text-align: justify;">Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.</p>', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '19-revision-3', '', '', '2013-01-14 16:04:51', '2013-01-14 15:04:51', '', 19, 'http://localhost/~thenot/festival_cinema/?p=79', 0, 'revision', '', 0),
(80, 1, '2013-01-14 16:46:38', '2013-01-14 15:46:38', '<p style="text-align: justify;">Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.</p>', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '19-revision-4', '', '', '2013-01-14 16:46:38', '2013-01-14 15:46:38', '', 19, 'http://localhost/~thenot/festival_cinema/?p=80', 0, 'revision', '', 0),
(81, 1, '2013-01-14 16:30:01', '2013-01-14 15:30:01', '<p style="text-align: justify;">Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...</p>', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision-4', '', '', '2013-01-14 16:30:01', '2013-01-14 15:30:01', '', 21, 'http://localhost/~thenot/festival_cinema/?p=81', 0, 'revision', '', 0),
(82, 1, '2013-01-14 16:30:29', '2013-01-14 15:30:29', '<p style="text-align: justify;">Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.</p>', 'American boy', '', 'inherit', 'open', 'open', '', '23-revision-5', '', '', '2013-01-14 16:30:29', '2013-01-14 15:30:29', '', 23, 'http://localhost/~thenot/festival_cinema/?p=82', 0, 'revision', '', 0),
(83, 1, '2013-01-14 16:50:58', '2013-01-14 15:50:58', '<p style="text-align: justify;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\n<p style="text-align: justify;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\n<p style="text-align: justify;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-autosave', '', '', '2013-01-14 16:50:58', '2013-01-14 15:50:58', '', 26, 'http://localhost/~thenot/festival_cinema/?p=83', 0, 'revision', '', 0),
(84, 1, '2013-01-14 16:31:08', '2013-01-14 15:31:08', '<p style="text-align: justify;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\r\n<p style="text-align: justify;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\r\n<p style="text-align: justify;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision-4', '', '', '2013-01-14 16:31:08', '2013-01-14 15:31:08', '', 26, 'http://localhost/~thenot/festival_cinema/?p=84', 0, 'revision', '', 0),
(85, 1, '2013-01-14 16:51:35', '2013-01-14 15:51:35', '<p style="text-align: justify;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\r\n<p style="text-align: justify;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\r\n<p style="text-align: justify;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision-5', '', '', '2013-01-14 16:51:35', '2013-01-14 15:51:35', '', 26, 'http://localhost/~thenot/festival_cinema/?p=85', 0, 'revision', '', 0),
(86, 1, '2013-01-14 16:32:03', '2013-01-14 15:32:03', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\r\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-revision-6', '', '', '2013-01-14 16:32:03', '2013-01-14 15:32:03', '', 37, 'http://localhost/~thenot/festival_cinema/?p=86', 0, 'revision', '', 0),
(87, 1, '2013-01-14 16:13:14', '2013-01-14 15:13:14', '<p style="text-align: justify;">Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.</p>', 'El niño pez', '', 'inherit', 'open', 'open', '', '43-revision-2', '', '', '2013-01-14 16:13:14', '2013-01-14 15:13:14', '', 43, 'http://localhost/~thenot/festival_cinema/?p=87', 0, 'revision', '', 0),
(88, 1, '2013-01-14 16:33:25', '2013-01-14 15:33:25', '<p style="text-align: justify;">Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.</p>\r\n<p style="text-align: justify;">Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)</p>', 'Can''t think straight', '', 'inherit', 'open', 'open', '', '46-revision-4', '', '', '2013-01-14 16:33:25', '2013-01-14 15:33:25', '', 46, 'http://localhost/~thenot/festival_cinema/?p=88', 0, 'revision', '', 0),
(92, 1, '2013-01-14 17:01:42', '0000-00-00 00:00:00', '', 'Infos pratique', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-14 17:01:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/~thenot/festival_cinema/?p=92', 1, 'nav_menu_item', '', 0),
(95, 1, '2013-01-16 14:38:33', '0000-00-00 00:00:00', '', 'Films', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-16 14:38:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/~thenot/festival_cinema/?p=95', 1, 'nav_menu_item', '', 0),
(96, 1, '2013-01-16 14:39:26', '2013-01-16 13:39:26', ' ', '', '', 'publish', 'open', 'open', '', '96', '', '', '2013-01-23 14:34:00', '2013-01-23 13:34:00', '', 0, 'http://localhost/~thenot/festival_cinema/?p=96', 2, 'nav_menu_item', '', 0),
(97, 1, '2013-01-16 14:39:27', '2013-01-16 13:39:27', ' ', '', '', 'publish', 'open', 'open', '', '97', '', '', '2013-01-23 14:34:00', '2013-01-23 13:34:00', '', 0, 'http://localhost/~thenot/festival_cinema/?p=97', 3, 'nav_menu_item', '', 0),
(98, 1, '2013-01-28 16:23:14', '2013-01-28 15:23:14', '<ul class="slideshow">\n<li><img src="wp-content/uploads/201.jpg" alt=""></li>\n<li><img src="2.jpg" alt=""></li>\n<li><img src="3.jpg" alt=""></li>\n</ul>\n\n<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.</p>\n<p style="text-align: justify;">Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.</p>\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\n<p style="text-align: justify;">Bon festival !</p>\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '2-autosave', '', '', '2013-01-28 16:23:14', '2013-01-28 15:23:14', '', 2, 'http://localhost/~thenot/festival_cinema/?p=98', 0, 'revision', '', 0),
(99, 1, '2013-01-07 15:13:27', '2013-01-07 15:13:27', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~thenot/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-07 15:13:27', '2013-01-07 15:13:27', '', 2, 'http://localhost/~thenot/festival_cinema/?p=99', 0, 'revision', '', 0),
(100, 1, '2013-01-16 14:43:13', '2013-01-16 13:43:13', ' ', '', '', 'publish', 'open', 'open', '', '100', '', '', '2013-01-23 14:34:00', '2013-01-23 13:34:00', '', 0, 'http://localhost/~thenot/festival_cinema/?p=100', 1, 'nav_menu_item', '', 0),
(101, 1, '2013-01-16 14:51:11', '2013-01-16 13:51:11', '<span style="text-decoration: underline;"><strong>Lieu du festival :</strong></span>\r\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<span style="text-decoration: underline;"><strong> Tarifs :</strong> </span>\r\nPlein tarif :                                                                   7,50 €\r\nPass Festival :                                                           25 € (5 séances)\r\nSoirée courts métrages :                                             6 € (vendredi)\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n<span style="text-decoration: underline;"><strong>Cartes &amp; réductions acceptées :</strong>\r\n</span>Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n<strong>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</strong>\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n<span style="text-decoration: underline;"><strong> Equipe :</strong></span>\r\n<strong>Direction artistique :</strong> Christel Guillard (Présidente de Ciné Mundi)\r\n<strong>Programmation :</strong> Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\r\n<strong>Communication &amp; partenariats :</strong> Christel Guillard\r\n<strong>Conception graphique :</strong> Yannis Bellair\r\n<strong>Conception du site internet :</strong> rccc\r\n<strong>Impression :</strong> Prevost Offset\r\n\r\n<strong><span style="text-decoration: underline;">Contacts :</span> </strong>\r\nfestival.dunbordalautre@gmail.com\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'publish', 'closed', 'open', '', 'infos-pratiques', '', '', '2013-01-16 15:41:49', '2013-01-16 14:41:49', '', 0, 'http://localhost/~thenot/festival_cinema/?page_id=101', 0, 'page', '', 0),
(102, 1, '2013-01-16 14:50:47', '2013-01-16 13:50:47', '<span style="text-decoration: underline;"><strong>Lieu du festival :</strong></span>\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\n<span style="text-decoration: underline;"><strong> Tarifs :</strong> </span>\nPlein tarif :                                                                   7,50 €\nPass Festival :                                                           25 € (5 séances)\nSoirée courts métrages :                                             6 € (vendredi)\n2 séances consécutives le samedi ou le dimanche : 12 €\n\n<span style="text-decoration: underline;"><strong>Cartes &amp; réductions acceptées :</strong>\n</span>Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\n<strong>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</strong>\n\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\n<span style="text-decoration: underline;"><strong> Equipe :</strong></span>\n<strong>Direction artistique :</strong> Christel Guillard (Présidente de Ciné Mundi)\n<strong>Programmation :</strong> Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\n<strong>Communication &amp; partenariats :</strong> Christel Guillard\n<strong>Conception graphique :</strong> Yannis Bellair\n<strong>Conception du site internet :</strong> rccc\n<strong>Impression :</strong> Prevost Offset\n\n<strong><span style="text-decoration: underline;">Contacts :</span> </strong>\nfestival.dunbordalautre@gmail.com\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '101-revision', '', '', '2013-01-16 14:50:47', '2013-01-16 13:50:47', '', 101, 'http://localhost/~thenot/festival_cinema/?p=102', 0, 'revision', '', 0),
(103, 1, '2013-01-16 14:51:18', '2013-01-16 13:51:18', '<span style="text-decoration: underline;"><strong>Lieu du festival :</strong></span>\r\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<span style="text-decoration: underline;"><strong> Tarifs :</strong> </span>\r\nPlein tarif :                                                                   7,50 €\r\nPass Festival :                                                           25 € (5 séances)\r\nSoirée courts métrages :                                             6 € (vendredi)\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n<span style="text-decoration: underline;"><strong>Cartes &amp; réductions acceptées :</strong>\r\n</span>Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n<strong>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</strong>\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n<span style="text-decoration: underline;"><strong> Equipe :</strong></span>\r\n<strong>Direction artistique :</strong> Christel Guillard (Présidente de Ciné Mundi)\r\n<strong>Programmation :</strong> Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\r\n<strong>Communication &amp; partenariats :</strong> Christel Guillard\r\n<strong>Conception graphique :</strong> Yannis Bellair\r\n<strong>Conception du site internet :</strong> rccc\r\n<strong>Impression :</strong> Prevost Offset\r\n\r\n<strong><span style="text-decoration: underline;">Contacts :</span> </strong>\r\nfestival.dunbordalautre@gmail.com\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '101-autosave', '', '', '2013-01-16 14:51:18', '2013-01-16 13:51:18', '', 101, 'http://localhost/~thenot/festival_cinema/?p=103', 0, 'revision', '', 0),
(104, 1, '2013-01-16 14:53:45', '2013-01-16 13:53:45', ' ', '', '', 'publish', 'open', 'open', '', '104', '', '', '2013-01-23 14:34:01', '2013-01-23 13:34:01', '', 0, 'http://localhost/~thenot/festival_cinema/?p=104', 4, 'nav_menu_item', '', 0),
(105, 1, '2013-01-16 14:56:25', '2013-01-16 13:56:25', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien\r\n\r\n- Loiret - Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'publish', 'closed', 'open', '', 'remerciements', '', '', '2013-01-16 15:41:49', '2013-01-16 14:41:49', '', 0, 'http://localhost/~thenot/festival_cinema/?page_id=105', 0, 'page', '', 0),
(106, 1, '2013-01-16 14:54:44', '2013-01-16 13:54:44', '', 'Remerciements', '', 'inherit', 'open', 'open', '', '105-revision', '', '', '2013-01-16 14:54:44', '2013-01-16 13:54:44', '', 105, 'http://localhost/~thenot/festival_cinema/?p=106', 0, 'revision', '', 0),
(107, 1, '2013-01-16 14:55:13', '2013-01-16 13:55:13', '- La Région Centre\r\n\r\n&nbsp;\r\n\r\n- La Mairie d''Orléans\r\n\r\n&nbsp;\r\n\r\n- Le cinéma des Carmes\r\n\r\n&nbsp;\r\n\r\n- Le Groupe Action Gay &amp; Lesbien - Loiret\r\n\r\n&nbsp;\r\n\r\n- Citégay\r\n\r\n&nbsp;\r\n\r\n- La dixième Muse\r\n\r\n&nbsp;\r\n\r\n- Têtu\r\n\r\n&nbsp;\r\n\r\n- Yagg.com\r\n\r\n&nbsp;\r\n\r\n- France Bleu Orléans\r\n\r\n&nbsp;\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n&nbsp;\r\n\r\n- Cineffable\r\n\r\n&nbsp;\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n&nbsp;\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '105-revision-2', '', '', '2013-01-16 14:55:13', '2013-01-16 13:55:13', '', 105, 'http://localhost/~thenot/festival_cinema/?p=107', 0, 'revision', '', 0),
(108, 1, '2013-01-16 14:56:14', '2013-01-16 13:56:14', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien\r\n\r\n- Loiret - Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '105-revision-3', '', '', '2013-01-16 14:56:14', '2013-01-16 13:56:14', '', 105, 'http://localhost/~thenot/festival_cinema/?p=108', 0, 'revision', '', 0),
(109, 1, '2013-01-16 15:04:15', '2013-01-16 14:04:15', ' ', '', '', 'publish', 'open', 'open', '', '109', '', '', '2013-01-23 14:34:01', '2013-01-23 13:34:01', '', 0, 'http://localhost/~thenot/festival_cinema/?p=109', 6, 'nav_menu_item', '', 0),
(110, 1, '2013-01-16 14:42:03', '2013-01-16 13:42:03', '<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.</p>\r\n<p style="text-align: justify;">Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.</p>\r\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\r\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\r\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\r\n<p style="text-align: justify;">Bon festival !</p>\r\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '2-revision-2', '', '', '2013-01-16 14:42:03', '2013-01-16 13:42:03', '', 2, 'http://localhost/~thenot/festival_cinema/?p=110', 0, 'revision', '', 0),
(111, 1, '2013-01-16 14:51:11', '2013-01-16 13:51:11', '<span style="text-decoration: underline;"><strong>Lieu du festival :</strong></span>\r\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<span style="text-decoration: underline;"><strong> Tarifs :</strong> </span>\r\nPlein tarif :                                                                   7,50 €\r\nPass Festival :                                                           25 € (5 séances)\r\nSoirée courts métrages :                                             6 € (vendredi)\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n<span style="text-decoration: underline;"><strong>Cartes &amp; réductions acceptées :</strong>\r\n</span>Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n<strong>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</strong>\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n<span style="text-decoration: underline;"><strong> Equipe :</strong></span>\r\n<strong>Direction artistique :</strong> Christel Guillard (Présidente de Ciné Mundi)\r\n<strong>Programmation :</strong> Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\r\n<strong>Communication &amp; partenariats :</strong> Christel Guillard\r\n<strong>Conception graphique :</strong> Yannis Bellair\r\n<strong>Conception du site internet :</strong> rccc\r\n<strong>Impression :</strong> Prevost Offset\r\n\r\n<strong><span style="text-decoration: underline;">Contacts :</span> </strong>\r\nfestival.dunbordalautre@gmail.com\r\nwww.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '101-revision-2', '', '', '2013-01-16 14:51:11', '2013-01-16 13:51:11', '', 101, 'http://localhost/~thenot/festival_cinema/?p=111', 0, 'revision', '', 0),
(112, 1, '2013-01-16 14:56:25', '2013-01-16 13:56:25', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien\r\n\r\n- Loiret - Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'open', 'open', '', '105-revision-4', '', '', '2013-01-16 14:56:25', '2013-01-16 13:56:25', '', 105, 'http://localhost/~thenot/festival_cinema/?p=112', 0, 'revision', '', 0),
(113, 1, '2013-01-14 16:57:39', '2013-01-14 15:57:39', '<p style="text-align: justify;">Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.</p>\r\n<p style="text-align: justify;">Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)</p>', 'Can''t think straight', '', 'inherit', 'open', 'open', '', '46-revision-5', '', '', '2013-01-14 16:57:39', '2013-01-14 15:57:39', '', 46, 'http://localhost/~thenot/festival_cinema/?p=113', 0, 'revision', '', 0),
(114, 1, '2013-01-14 16:55:52', '2013-01-14 15:55:52', '<p style="text-align: justify;">Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.</p>', 'El niño pez', '', 'inherit', 'open', 'open', '', '43-revision-3', '', '', '2013-01-14 16:55:52', '2013-01-14 15:55:52', '', 43, 'http://localhost/~thenot/festival_cinema/?p=114', 0, 'revision', '', 0),
(115, 1, '2013-01-14 16:54:24', '2013-01-14 15:54:24', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\r\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-revision-7', '', '', '2013-01-14 16:54:24', '2013-01-14 15:54:24', '', 37, 'http://localhost/~thenot/festival_cinema/?p=115', 0, 'revision', '', 0),
(116, 1, '2013-01-14 16:51:54', '2013-01-14 15:51:54', '<p style="text-align: justify;">(C’est élémentaire - Parler de l’homosexualité à l’école)</p>\r\n<p style="text-align: justify;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\r\n<p style="text-align: justify;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\r\n<p style="text-align: justify;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision-6', '', '', '2013-01-14 16:51:54', '2013-01-14 15:51:54', '', 26, 'http://localhost/~thenot/festival_cinema/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-01-14 16:49:48', '2013-01-14 15:49:48', '<p style="text-align: justify;">Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.</p>', 'American boy', '', 'inherit', 'open', 'open', '', '23-revision-6', '', '', '2013-01-14 16:49:48', '2013-01-14 15:49:48', '', 23, 'http://localhost/~thenot/festival_cinema/?p=117', 0, 'revision', '', 0),
(118, 1, '2013-01-14 16:48:37', '2013-01-14 15:48:37', '<p style="text-align: justify;">Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...</p>', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision-5', '', '', '2013-01-14 16:48:37', '2013-01-14 15:48:37', '', 21, 'http://localhost/~thenot/festival_cinema/?p=118', 0, 'revision', '', 0),
(119, 1, '2013-01-14 16:47:34', '2013-01-14 15:47:34', '<p style="text-align: justify;">Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.</p>', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '19-revision-5', '', '', '2013-01-14 16:47:34', '2013-01-14 15:47:34', '', 19, 'http://localhost/~thenot/festival_cinema/?p=119', 0, 'revision', '', 0),
(120, 1, '2013-01-14 16:44:45', '2013-01-14 15:44:45', '<p style="text-align: justify;">Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...</p>', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-6', '', '', '2013-01-14 16:44:45', '2013-01-14 15:44:45', '', 17, 'http://localhost/~thenot/festival_cinema/?p=120', 0, 'revision', '', 0),
(121, 1, '2013-01-14 16:42:05', '2013-01-14 15:42:05', '<p style="text-align: justify;">C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.</p>', 'Omar', '', 'inherit', 'open', 'open', '', '14-revision-6', '', '', '2013-01-14 16:42:05', '2013-01-14 15:42:05', '', 14, 'http://localhost/~thenot/festival_cinema/?p=121', 0, 'revision', '', 0),
(122, 1, '2013-01-14 16:40:48', '2013-01-14 15:40:48', '<p style="text-align: justify;">C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.</p>', 'Pauline', '', 'inherit', 'open', 'open', '', '10-revision-7', '', '', '2013-01-14 16:40:48', '2013-01-14 15:40:48', '', 10, 'http://localhost/~thenot/festival_cinema/?p=122', 0, 'revision', '', 0),
(123, 1, '2013-01-14 16:39:01', '2013-01-14 15:39:01', '<p style="text-align: justify;">Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.</p>', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-7', '', '', '2013-01-14 16:39:01', '2013-01-14 15:39:01', '', 4, 'http://localhost/~thenot/festival_cinema/?p=123', 0, 'revision', '', 0),
(124, 1, '2013-01-16 15:42:04', '2013-01-16 14:42:04', '<p style="text-align: justify;">Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.</p>\r\n<p style="text-align: justify;">Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)</p>', 'Can''t think straight', '', 'inherit', 'open', 'open', '', '46-revision-6', '', '', '2013-01-16 15:42:04', '2013-01-16 14:42:04', '', 46, 'http://localhost/~thenot/festival_cinema/?p=124', 0, 'revision', '', 0),
(125, 1, '2013-01-16 15:42:05', '2013-01-16 14:42:05', '<p style="text-align: justify;">Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.</p>', 'El niño pez', '', 'inherit', 'open', 'open', '', '43-revision-4', '', '', '2013-01-16 15:42:05', '2013-01-16 14:42:05', '', 43, 'http://localhost/~thenot/festival_cinema/?p=125', 0, 'revision', '', 0),
(126, 1, '2013-01-16 15:42:05', '2013-01-16 14:42:05', '<p style="text-align: justify;">Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien.\r\nLe nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.</p>\r\n<p style="text-align: justify;">Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)</p>', 'Ander', '', 'inherit', 'open', 'open', '', '37-revision-8', '', '', '2013-01-16 15:42:05', '2013-01-16 14:42:05', '', 37, 'http://localhost/~thenot/festival_cinema/?p=126', 0, 'revision', '', 0),
(127, 1, '2013-01-16 15:42:06', '2013-01-16 14:42:06', '<p style="text-align: justify;">(C’est élémentaire - Parler de l’homosexualité à l’école)</p>\r\n<p style="text-align: justify;">Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.</p>\r\n<p style="text-align: justify;">Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.</p>\r\n<p style="text-align: justify;">La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.</p>', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'open', 'open', '', '26-revision-7', '', '', '2013-01-16 15:42:06', '2013-01-16 14:42:06', '', 26, 'http://localhost/~thenot/festival_cinema/?p=127', 0, 'revision', '', 0),
(128, 1, '2013-01-16 15:42:06', '2013-01-16 14:42:06', '<p style="text-align: justify;">Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.</p>', 'American boy', '', 'inherit', 'open', 'open', '', '23-revision-7', '', '', '2013-01-16 15:42:06', '2013-01-16 14:42:06', '', 23, 'http://localhost/~thenot/festival_cinema/?p=128', 0, 'revision', '', 0),
(129, 1, '2013-01-16 15:42:06', '2013-01-16 14:42:06', '<p style="text-align: justify;">Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...</p>', 'Cowboy forever', '', 'inherit', 'open', 'open', '', '21-revision-6', '', '', '2013-01-16 15:42:06', '2013-01-16 14:42:06', '', 21, 'http://localhost/~thenot/festival_cinema/?p=129', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(130, 1, '2013-01-16 15:42:07', '2013-01-16 14:42:07', '<p style="text-align: justify;">Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.</p>', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', '19-revision-6', '', '', '2013-01-16 15:42:07', '2013-01-16 14:42:07', '', 19, 'http://localhost/~thenot/festival_cinema/?p=130', 0, 'revision', '', 0),
(131, 1, '2013-01-16 15:42:07', '2013-01-16 14:42:07', '<p style="text-align: justify;">Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...</p>', 'Odile', '', 'inherit', 'open', 'open', '', '17-revision-7', '', '', '2013-01-16 15:42:07', '2013-01-16 14:42:07', '', 17, 'http://localhost/~thenot/festival_cinema/?p=131', 0, 'revision', '', 0),
(132, 1, '2013-01-16 15:42:08', '2013-01-16 14:42:08', '<p style="text-align: justify;">C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.</p>', 'Omar', '', 'inherit', 'open', 'open', '', '14-revision-7', '', '', '2013-01-16 15:42:08', '2013-01-16 14:42:08', '', 14, 'http://localhost/~thenot/festival_cinema/?p=132', 0, 'revision', '', 0),
(133, 1, '2013-01-16 15:42:08', '2013-01-16 14:42:08', '<p style="text-align: justify;">C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.</p>', 'Pauline', '', 'inherit', 'open', 'open', '', '10-revision-8', '', '', '2013-01-16 15:42:08', '2013-01-16 14:42:08', '', 10, 'http://localhost/~thenot/festival_cinema/?p=133', 0, 'revision', '', 0),
(134, 1, '2013-01-16 15:42:09', '2013-01-16 14:42:09', '<p style="text-align: justify;">Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.</p>', 'En colo', '', 'inherit', 'open', 'open', '', '4-revision-8', '', '', '2013-01-16 15:42:09', '2013-01-16 14:42:09', '', 4, 'http://localhost/~thenot/festival_cinema/?p=134', 0, 'revision', '', 0),
(135, 1, '2013-01-23 13:44:58', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-23 13:44:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/~thenot/festival_cinema/?p=135', 0, 'post', '', 0),
(136, 1, '2013-01-23 13:44:59', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-23 13:44:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/~thenot/festival_cinema/?p=136', 0, 'post', '', 0),
(137, 1, '2013-01-23 13:48:20', '2013-01-23 12:48:20', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'publish', 'closed', 'open', '', 'partenaires', '', '', '2013-01-23 13:48:47', '2013-01-23 12:48:47', '', 0, 'http://localhost/~thenot/festival_cinema/?page_id=137', 0, 'page', '', 0),
(138, 1, '2013-01-23 13:46:45', '2013-01-23 12:46:45', '', 'Partenaires', '', 'inherit', 'open', 'open', '', '137-revision', '', '', '2013-01-23 13:46:45', '2013-01-23 12:46:45', '', 137, 'http://localhost/~thenot/festival_cinema/?p=138', 0, 'revision', '', 0),
(139, 1, '2013-01-23 13:47:32', '2013-01-23 12:47:32', '- Région Centre - Orléans - Cinéma des Carmes - GAGL - Têtu - La dixième MUSE - CiteGay - Yagg.com - France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '137-revision-2', '', '', '2013-01-23 13:47:32', '2013-01-23 12:47:32', '', 137, 'http://localhost/~thenot/festival_cinema/?p=139', 0, 'revision', '', 0),
(140, 1, '2013-01-23 13:48:02', '2013-01-23 12:48:02', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '137-revision-3', '', '', '2013-01-23 13:48:02', '2013-01-23 12:48:02', '', 137, 'http://localhost/~thenot/festival_cinema/?p=140', 0, 'revision', '', 0),
(141, 1, '2013-01-23 13:48:20', '2013-01-23 12:48:20', '- Région Centre\r\n- Orléans\r\n- Cinéma des Carmes\r\n- GAGL\r\n- Têtu\r\n- La dixième MUSE\r\n- CiteGay\r\n- Yagg.com\r\n- France Bleu', 'Partenaires', '', 'inherit', 'open', 'open', '', '137-revision-4', '', '', '2013-01-23 13:48:20', '2013-01-23 12:48:20', '', 137, 'http://localhost/~thenot/festival_cinema/?p=141', 0, 'revision', '', 0),
(142, 1, '2013-01-23 13:49:11', '2013-01-23 12:49:11', ' ', '', '', 'publish', 'open', 'open', '', '142', '', '', '2013-01-23 14:34:01', '2013-01-23 13:34:01', '', 0, 'http://localhost/~thenot/festival_cinema/?p=142', 5, 'nav_menu_item', '', 0),
(151, 1, '2013-01-16 15:41:49', '2013-01-16 14:41:49', '<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.</p>\r\n<p style="text-align: justify;">Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.</p>\r\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\r\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\r\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\r\n<p style="text-align: justify;">Bon festival !</p>\r\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '2-revision-3', '', '', '2013-01-16 15:41:49', '2013-01-16 14:41:49', '', 2, 'http://localhost/~thenot/festival_cinema/?p=151', 0, 'revision', '', 0),
(152, 1, '2013-01-28 16:24:13', '2013-01-28 15:24:13', '<ul class="slideshow">\r\n	<li><img alt="" src="wp-content/uploads/2013/01/American-boy.png" /></li>\r\n	<li><img alt="" src="wp-content/uploads/2013/01/American-boy.png" /></li>\r\n	<li><img alt="" src="wp-content/uploads/2013/01/American-boy.png" /></li>\r\n</ul>\r\n<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.</p>\r\n<p style="text-align: justify;">Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.</p>\r\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\r\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\r\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\r\n<p style="text-align: justify;">Bon festival !</p>\r\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '2-revision-4', '', '', '2013-01-28 16:24:13', '2013-01-28 15:24:13', '', 2, 'http://localhost/~thenot/festival_cinema/?p=152', 0, 'revision', '', 0),
(153, 1, '2013-01-28 16:32:34', '2013-01-28 15:32:34', '<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.</p>\r\n<p style="text-align: justify;">Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.</p>\r\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\r\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\r\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\r\n<p style="text-align: justify;">Bon festival !</p>\r\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '2-revision-5', '', '', '2013-01-28 16:32:34', '2013-01-28 15:32:34', '', 2, 'http://localhost/~thenot/festival_cinema/?p=153', 0, 'revision', '', 0),
(154, 1, '2013-01-28 16:49:07', '2013-01-28 15:49:07', '<ul class="slideshow">\r\n  <?php echo getSlideItem(); ?>\r\n</ul>\r\n<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.</p>\r\n<p style="text-align: justify;">Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.</p>\r\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\r\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\r\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\r\n<p style="text-align: justify;">Bon festival !</p>\r\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '2-revision-6', '', '', '2013-01-28 16:49:07', '2013-01-28 15:49:07', '', 2, 'http://localhost/~thenot/festival_cinema/?p=154', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts­-métrages', 'courts%c2%ad-metrages', 0),
(4, 'navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 3, 0),
(10, 3, 0),
(14, 3, 0),
(17, 3, 0),
(19, 3, 0),
(21, 3, 0),
(23, 3, 0),
(26, 2, 0),
(37, 2, 0),
(43, 2, 0),
(46, 2, 0),
(96, 4, 0),
(97, 4, 0),
(100, 4, 0),
(104, 4, 0),
(109, 4, 0),
(142, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'thenot'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '136'),
(15, 1, 'wp_festival_user-settings', 'editor=html&hidetb=1&libraryContent=browse'),
(16, 1, 'wp_festival_user-settings-time', '1359386648'),
(17, 1, 'closedpostboxes_post', 'a:0:{}'),
(18, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(21, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'thenot', '$P$BFe/ZUCclglCvUzVqCSa2ZVjtUQvuZ0', 'thenot', 'benjaminthenot@gmail.com', '', '2013-01-07 15:13:25', '', 0, 'thenot');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
