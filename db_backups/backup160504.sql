-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2016 at 07:16 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpressbuddypress`
--
CREATE DATABASE IF NOT EXISTS `wordpressbuddypress` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wordpressbuddypress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity`
--

CREATE TABLE `wp_bp_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) NOT NULL,
  `type` varchar(75) NOT NULL,
  `action` text NOT NULL,
  `content` longtext NOT NULL,
  `primary_link` text NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT '0',
  `mptt_left` int(11) NOT NULL DEFAULT '0',
  `mptt_right` int(11) NOT NULL DEFAULT '0',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_activity`
--

INSERT INTO `wp_bp_activity` (`id`, `user_id`, `component`, `type`, `action`, `content`, `primary_link`, `item_id`, `secondary_item_id`, `date_recorded`, `hide_sitewide`, `mptt_left`, `mptt_right`, `is_spam`) VALUES
(1, 1, 'members', 'last_activity', '', '', '', 0, NULL, '2016-08-09 05:08:08', 0, 0, 0, 0),
(2, 2, 'members', 'last_activity', '', '', '', 0, NULL, '2016-07-19 06:10:19', 0, 0, 0, 0),
(4, 2, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber/" title="Daryl Batchelor">Daryl Batchelor</a> posted an update', 'This is awesome!!!!', 'http://localhost/wordpressbuddyPress/members/test-subscriber/', 0, 0, '2016-06-24 06:35:25', 0, 0, 0, 0),
(9, 2, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber/" title="Daryl Batchelor">Daryl Batchelor</a> posted an update', '<a href=''http://localhost/wordpressbuddyPress/members/admin/'' rel=''nofollow''>@admin</a> hey wanna to a sole?', 'http://localhost/wordpressbuddyPress/members/test-subscriber/', 0, 0, '2016-06-27 00:31:33', 0, 0, 0, 0),
(11, 2, 'groups', 'joined_group', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber/" title="Daryl Batchelor">Daryl Batchelor</a> joined the group <a href="http://localhost/wordpressbuddyPress/groups/big-question-one-here/">big question one here?</a>', '', 'http://localhost/wordpressbuddyPress/members/test-subscriber/', 1, 0, '2016-06-27 00:36:37', 0, 0, 0, 0),
(12, 2, 'groups', 'bp_doc_edited', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber/" title="Daryl Batchelor">Daryl Batchelor</a> edited the doc <a href="http://localhost/wordpressbuddyPress/docs/document-for-big-question-1/">document for big question 1</a> in the group <a href="http://localhost/wordpressbuddyPress/groups/big-question-one-here/">big question one here?</a>', '', 'http://localhost/wordpressbuddyPress/docs/document-for-big-question-1/', 1, 48, '2016-06-27 00:41:02', 1, 0, 0, 0),
(13, 3, 'members', 'last_activity', '', '', '', 0, NULL, '2016-07-20 05:53:33', 0, 0, 0, 0),
(21, 1, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/admin/" title="admin">admin</a> posted an update', 'this is an activity update\n', 'http://localhost/wordpressbuddyPress/members/admin/', 0, 0, '2016-06-29 11:28:27', 0, 0, 0, 0),
(22, 1, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/admin/" title="admin">admin</a> posted an update', 'dfdsf', 'http://localhost/wordpressbuddyPress/members/admin/', 0, 0, '2016-06-29 11:38:06', 0, 0, 0, 0),
(23, 3, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber2/" title="test-subscriber2">test-subscriber2</a> posted an update', 'fgdg', 'http://localhost/wordpressbuddyPress/members/test-subscriber2/', 0, 0, '2016-06-29 11:39:06', 0, 0, 0, 0),
(25, 1, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/admin/" title="admin">admin</a> posted an update', 'fgfdg', 'http://localhost/wordpressbuddyPress/members/admin/', 0, 0, '2016-06-29 11:39:18', 0, 0, 0, 0),
(26, 3, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber2/" title="test-subscriber2">test-subscriber2</a> posted an update', 'fgdg', 'http://localhost/wordpressbuddyPress/members/test-subscriber2/', 0, 0, '2016-06-29 11:39:23', 0, 0, 0, 0),
(28, 1, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/admin/" title="admin">admin</a> posted an update', 'gfbbf', 'http://localhost/wordpressbuddyPress/members/admin/', 0, 0, '2016-06-29 11:41:06', 0, 0, 0, 0),
(29, 1, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/admin/" title="admin">admin</a> posted an update', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ornare faucibus pulvinar. Duis a ex et arcu aliquet tristique ac sed velit. Duis nec elit nisi. Donec sapien arcu, aliquet vitae ligula et, iaculis pulvinar quam. Duis bibendum mollis purus ut fringilla. Vivamus accumsan dolor vel facilisis dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'http://localhost/wordpressbuddyPress/members/admin/', 0, 0, '2016-06-29 11:55:09', 0, 0, 0, 0),
(30, 1, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/admin/" title="admin">admin</a> posted an update', '<a href=''http://localhost/wordpressbuddyPress/members/test-subscriber/'' rel=''nofollow''>@test-subscriber</a> where are you?', 'http://localhost/wordpressbuddyPress/members/admin/', 0, 0, '2016-06-29 12:07:54', 0, 0, 0, 0),
(32, 1, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/admin/" title="admin">admin</a> posted an update', 'fdgdgd', 'http://localhost/wordpressbuddyPress/members/admin/', 0, 0, '2016-06-29 12:18:32', 0, 0, 0, 0),
(163, 2, 'xprofile', 'updated_profile', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber/profile/">jobs</a>''s profile was updated', '', 'http://localhost/wordpressbuddyPress/members/test-subscriber/profile/', 0, 0, '2016-07-17 01:23:13', 0, 0, 0, 0),
(211, 3, 'groups', 'joined_group', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber2/" title="test-subscriber2">test-subscriber2</a> joined the group <a href="http://localhost/wordpressbuddyPress/groups/group9344f4c87341a66cb1a0a51df46b6011/">What is dark matter?</a>', '', 'http://localhost/wordpressbuddyPress/members/test-subscriber2/', 178, 0, '2016-07-20 01:29:23', 0, 0, 0, 0),
(213, 3, 'groups', 'joined_group', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber2/" title="test-subscriber2">test-subscriber2</a> joined the group <a href="http://localhost/wordpressbuddyPress/groups/group9344f4c87341a66cb1a0a51df46b6011/">What is dark matter?</a>', '', 'http://localhost/wordpressbuddyPress/members/test-subscriber2/', 178, 0, '2016-07-20 01:37:22', 0, 0, 0, 0),
(215, 3, 'groups', 'joined_group', '<a href="http://localhost/wordpressbuddyPress/members/test-subscriber2/" title="test-subscriber2">test-subscriber2</a> joined the group <a href="http://localhost/wordpressbuddyPress/groups/group9344f4c87341a66cb1a0a51df46b6011/">What is dark matter?</a>', '', 'http://localhost/wordpressbuddyPress/members/test-subscriber2/', 178, 0, '2016-07-20 01:43:10', 0, 0, 0, 0),
(219, 1, 'activity', 'activity_update', '<a href="http://localhost/wordpressbuddyPress/members/admin/" title="admin">admin</a> posted an update', 'nada', 'http://localhost/wordpressbuddyPress/members/admin/', 0, 0, '2016-07-20 05:56:05', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity_meta`
--

CREATE TABLE `wp_bp_activity_meta` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_activity_meta`
--

INSERT INTO `wp_bp_activity_meta` (`id`, `activity_id`, `meta_key`, `meta_value`) VALUES
(1, 25, 'favorite_count', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_friends`
--

CREATE TABLE `wp_bp_friends` (
  `id` bigint(20) NOT NULL,
  `initiator_user_id` bigint(20) NOT NULL,
  `friend_user_id` bigint(20) NOT NULL,
  `is_confirmed` tinyint(1) DEFAULT '0',
  `is_limited` tinyint(1) DEFAULT '0',
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_friends`
--

INSERT INTO `wp_bp_friends` (`id`, `initiator_user_id`, `friend_user_id`, `is_confirmed`, `is_limited`, `date_created`) VALUES
(2, 3, 2, 1, 0, '2016-06-29 04:12:35'),
(3, 1, 3, 1, 0, '2016-06-29 04:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_groups`
--

CREATE TABLE `wp_bp_groups` (
  `id` bigint(20) NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'public',
  `enable_forum` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_groups_groupmeta`
--

CREATE TABLE `wp_bp_groups_groupmeta` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_groups_groupmeta`
--

INSERT INTO `wp_bp_groups_groupmeta` (`id`, `group_id`, `meta_key`, `meta_value`) VALUES
(3386, 178, 'total_member_count', '2'),
(3387, 178, 'last_activity', '2016-07-20 01:55:40'),
(3388, 178, 'category', 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_groups_members`
--

CREATE TABLE `wp_bp_groups_members` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_mod` tinyint(1) NOT NULL DEFAULT '0',
  `user_title` varchar(100) NOT NULL,
  `date_modified` datetime NOT NULL,
  `comments` longtext NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `invite_sent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_messages_messages`
--

CREATE TABLE `wp_bp_messages_messages` (
  `id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `date_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_messages_messages`
--

INSERT INTO `wp_bp_messages_messages` (`id`, `thread_id`, `sender_id`, `subject`, `message`, `date_sent`) VALUES
(1, 1, 2, 'want to do a sole?', 'Hey I was thinking of doing a sole today', '2016-06-27 00:33:20'),
(2, 2, 2, 'Hi', 'test', '2016-06-28 12:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_messages_meta`
--

CREATE TABLE `wp_bp_messages_meta` (
  `id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_messages_notices`
--

CREATE TABLE `wp_bp_messages_notices` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `date_sent` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_messages_recipients`
--

CREATE TABLE `wp_bp_messages_recipients` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `unread_count` int(10) NOT NULL DEFAULT '0',
  `sender_only` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_messages_recipients`
--

INSERT INTO `wp_bp_messages_recipients` (`id`, `user_id`, `thread_id`, `unread_count`, `sender_only`, `is_deleted`) VALUES
(1, 1, 1, 0, 0, 0),
(2, 2, 1, 0, 1, 0),
(3, 1, 2, 0, 0, 0),
(4, 2, 2, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications`
--

CREATE TABLE `wp_bp_notifications` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) NOT NULL,
  `component_action` varchar(75) NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_notifications`
--

INSERT INTO `wp_bp_notifications` (`id`, `user_id`, `item_id`, `secondary_item_id`, `component_name`, `component_action`, `date_notified`, `is_new`) VALUES
(1, 1, 9, 2, 'activity', 'new_at_mention', '2016-06-27 00:31:33', 0),
(2, 1, 1, 2, 'messages', 'new_message', '2016-06-27 00:33:20', 0),
(3, 1, 2, 2, 'messages', 'new_message', '2016-06-28 12:19:31', 0),
(5, 2, 3, 2, 'friends', 'friendship_request', '2016-06-29 04:11:38', 0),
(6, 3, 2, 2, 'friends', 'friendship_accepted', '2016-06-29 04:12:35', 0),
(7, 3, 1, 3, 'friends', 'friendship_request', '2016-06-29 04:13:59', 0),
(8, 1, 3, 3, 'friends', 'friendship_accepted', '2016-06-29 04:14:44', 0),
(9, 2, 30, 1, 'activity', 'new_at_mention', '2016-06-29 12:07:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications_meta`
--

CREATE TABLE `wp_bp_notifications_meta` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_user_blogs`
--

CREATE TABLE `wp_bp_user_blogs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_user_blogs`
--

INSERT INTO `wp_bp_user_blogs` (`id`, `user_id`, `blog_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_user_blogs_blogmeta`
--

CREATE TABLE `wp_bp_user_blogs_blogmeta` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_user_blogs_blogmeta`
--

INSERT INTO `wp_bp_user_blogs_blogmeta` (`id`, `blog_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'url', 'http://localhost/wordpressbuddyPress'),
(2, 1, 'name', 'SOLE Online'),
(3, 1, 'description', 'Learning in the cloud'),
(4, 1, 'last_activity', '2016-07-17 01:21:17'),
(5, 1, 'close_comments_for_old_posts', '0'),
(6, 1, 'close_comments_days_old', '14'),
(7, 1, 'thread_comments_depth', '5');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_data`
--

CREATE TABLE `wp_bp_xprofile_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_xprofile_data`
--

INSERT INTO `wp_bp_xprofile_data` (`id`, `field_id`, `user_id`, `value`, `last_updated`) VALUES
(1, 1, 1, 'admin', '2016-07-17 01:21:17'),
(2, 1, 2, 'jobs', '2016-07-17 01:23:13'),
(3, 2, 1, 'Hi I\\''m Daryl, I\\''m the creator of this site!', '2016-07-17 01:18:09'),
(4, 1, 3, 'test-subscriber2', '2016-07-17 04:53:13'),
(5, 3, 1, '105252013571142373795', '2016-07-17 01:21:17'),
(6, 3, 2, '118432675820894535759', '2016-07-17 01:23:13'),
(7, 3, 3, '6676786786785', '2016-07-17 04:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_fields`
--

CREATE TABLE `wp_bp_xprofile_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_default_option` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` bigint(20) NOT NULL DEFAULT '0',
  `option_order` bigint(20) NOT NULL DEFAULT '0',
  `order_by` varchar(15) NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_xprofile_fields`
--

INSERT INTO `wp_bp_xprofile_fields` (`id`, `group_id`, `parent_id`, `type`, `name`, `description`, `is_required`, `is_default_option`, `field_order`, `option_order`, `order_by`, `can_delete`) VALUES
(1, 1, 0, 'textbox', 'Name', '', 1, 0, 0, 0, '', 0),
(2, 2, 0, 'textarea', 'About', 'About the user', 0, 0, 1, 0, '', 1),
(3, 1, 0, 'number', 'Google ID', 'Google+ ID number: this is required for all users so that they can take part in video chats', 1, 0, 1, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_groups`
--

CREATE TABLE `wp_bp_xprofile_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` mediumtext NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_xprofile_groups`
--

INSERT INTO `wp_bp_xprofile_groups` (`id`, `name`, `description`, `group_order`, `can_delete`) VALUES
(1, 'Base', '', 0, 0),
(2, 'Information', 'Contains general information about the user', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_meta`
--

CREATE TABLE `wp_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_xprofile_meta`
--

INSERT INTO `wp_bp_xprofile_meta` (`id`, `object_id`, `object_type`, `meta_key`, `meta_value`) VALUES
(1, 2, 'field', 'default_visibility', 'public'),
(2, 2, 'field', 'allow_custom_visibility', 'allowed'),
(3, 2, 'field', 'do_autolink', 'off'),
(4, 3, 'field', 'default_visibility', 'adminsonly'),
(5, 3, 'field', 'allow_custom_visibility', 'disabled'),
(6, 3, 'field', 'do_autolink', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-06-24 02:14:35', '2016-06-24 02:14:35', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpressbuddyPress', 'yes'),
(2, 'home', 'http://localhost/wordpressbuddyPress', 'yes'),
(3, 'blogname', 'SOLE Online', 'yes'),
(4, 'blogdescription', 'Learning in the cloud', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'daryl@batchelors.id.au', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:61:"Limit-group-membership/bp-limit-group-membership-per-user.php";i:1;s:35:"add-groupmeta/dgb-add-groupmeta.php";i:2;s:55:"add-sole-learning/add-sole-learning-user-submission.php";i:3;s:24:"buddypress/bp-loader.php";i:4;s:49:"delete-group-members/dgb-delete-group-members.php";i:5;s:53:"dgb-learning-custom-post/dgb-learning-custom-post.php";i:6;s:54:"dgb-questions-custom-post/dgb-question-custom-post.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'sole', 'yes'),
(42, 'stylesheet', 'sole', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
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
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
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
(85, 'page_on_front', '35', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33055', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:65:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:25:"_wswebinar_createwebinars";b:1;s:28:"_wswebinar_managesubscribers";b:1;s:25:"_wswebinar_changesettings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'WPLANG', 'en_AU', 'yes'),
(92, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1470752075;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1470795597;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1470797711;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:22:"daryl@batchelors.id.au";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1466900891;}', 'yes'),
(110, 'db_upgraded', '', 'yes'),
(112, '_transient_random_seed', '9337719b32943fa3dd161016cc6cbdc9', 'yes'),
(119, 'can_compress_scripts', '1', 'yes'),
(139, 'recently_activated', 'a:1:{s:26:"buddypress-docs/loader.php";i:1468717335;}', 'yes'),
(143, 'bp-deactivated-components', 'a:0:{}', 'yes'),
(144, 'bb-config-location', 'C:\\xampp\\htdocs\\wordpressBuddypress/bb-config.php', 'yes'),
(145, 'bp-xprofile-base-group-name', 'Base', 'yes'),
(146, 'bp-xprofile-fullname-field-name', 'Name', 'yes'),
(147, 'bp-blogs-first-install', '', 'yes'),
(148, 'bp-disable-profile-sync', '0', 'yes'),
(149, 'hide-loggedout-adminbar', '0', 'yes'),
(150, 'bp-disable-avatar-uploads', '0', 'yes'),
(151, 'bp-disable-cover-image-uploads', '0', 'yes'),
(152, 'bp-disable-group-avatar-uploads', '0', 'yes'),
(153, 'bp-disable-group-cover-image-uploads', '0', 'yes'),
(154, 'bp-disable-account-deletion', '0', 'yes'),
(155, 'bp-disable-blogforum-comments', '1', 'yes'),
(156, '_bp_theme_package_id', 'legacy', 'yes'),
(157, 'bp_restrict_group_creation', '0', 'yes'),
(158, '_bp_enable_akismet', '1', 'yes'),
(159, '_bp_enable_heartbeat_refresh', '1', 'yes'),
(160, '_bp_force_buddybar', '', 'yes'),
(161, '_bp_retain_bp_default', '', 'yes'),
(162, 'widget_bp_core_login_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(163, 'widget_bp_core_members_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(164, 'widget_bp_core_whos_online_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(165, 'widget_bp_core_recently_active_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(166, 'widget_bp_groups_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(167, 'widget_bp_messages_sitewide_notices_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(172, 'registration', '0', 'yes'),
(174, 'bp-active-components', 'a:9:{s:8:"xprofile";s:1:"1";s:8:"settings";s:1:"1";s:7:"friends";s:1:"1";s:8:"messages";s:1:"1";s:8:"activity";s:1:"1";s:13:"notifications";s:1:"1";s:6:"groups";s:1:"1";s:5:"blogs";s:1:"1";s:7:"members";s:1:"1";}', 'yes'),
(175, 'bp-pages', 'a:3:{s:8:"activity";i:4;s:7:"members";i:5;s:6:"groups";i:37;}', 'yes'),
(176, '_bp_db_version', '10469', 'yes'),
(178, '_transient_twentyfifteen_categories', '1', 'yes'),
(181, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1466735008;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(182, 'current_theme', 'sole', 'yes'),
(183, 'theme_mods_twentythirteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1466735372;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;}}}', 'yes'),
(184, 'theme_switched', '', 'yes'),
(185, '_site_transient_timeout_wporg_theme_feature_list', '1466746044', 'yes'),
(186, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(187, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_AU/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_AU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_AU/wordpress-4.5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":13:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:12:"notify_email";s:1:"1";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.4";s:7:"version";s:5:"4.4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1470719279;s:15:"version_checked";s:5:"4.3.5";s:12:"translations";a:0:{}}', 'yes'),
(191, 'theme_mods_sole', 'a:5:{i:0;b:0;s:12:"header_image";s:85:"http://localhost/wordpressbuddyPress/wp-content/uploads/2016/06/cropped-bannerImg.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:34;s:3:"url";s:85:"http://localhost/wordpressbuddyPress/wp-content/uploads/2016/06/cropped-bannerImg.jpg";s:13:"thumbnail_url";s:85:"http://localhost/wordpressbuddyPress/wp-content/uploads/2016/06/cropped-bannerImg.jpg";s:6:"height";i:299;s:5:"width";i:1120;}s:18:"nav_menu_locations";a:2:{s:7:"primary";i:19;s:18:"logged_out_primary";i:18;}s:16:"background_color";s:6:"ededed";}', 'yes'),
(194, '_wswebinar_email_headerImg', 'http://localhost/wordpressbuddyPress/wp-content/plugins/wp-webinarsystem/includes/images/WebinarSysteem-logo.png', 'yes'),
(195, '_wswebinar_email_baseCLR', '#fff', 'yes'),
(196, '_wswebinar_email_bckCLR', '#f2f2f2', 'yes'),
(197, '_wswebinar_email_bodyBck', '#fff', 'yes'),
(198, '_wswebinar_email_bodyTXT', 'black', 'yes'),
(199, '_wswebinar_email_footerTxt', '', 'yes'),
(200, '_wswebinar_1hrb4content', 'Hi [receiver-name]\r\nThe webinar you signed up for starts in one hour. Below you will find the link to attend the webinar.\r\nWebinar name: [webinar-title]\r\nDate: [webinar-date]\r\nTime: [webinar-time]\r\n[webinar-link]\r\nSee you then!\r\nRegards,\r\nBuddypressTest', 'yes'),
(201, '_wswebinar_24hrb4content', 'Hi [receiver-name]\r\nThis is a reminder for your upcoming webinar tomorrow. Below you will find the details of the webinar.\r\nWebinar name: [webinar-title]\r\nDate: [webinar-date]\r\nTime: [webinar-time]\r\n[webinar-link]\r\nSee you then!\r\nRegards,\r\nBuddypressTest', 'yes'),
(202, '_wswebinar_wbnstarted', 'We are going live now [receiver-name]\r\nThe webinar you signed up for starts in one hour. Below you will find the link to attend the webinar.\r\n[webinar-link]\r\n\r\nSee you later!\r\nRegards,\r\nBuddypressTest', 'yes'),
(203, '_wswebinar_wbnreplay', 'Hi [receiver-name]\r\n\r\nMake sure to join the webinar via this link: [webinar-link]\r\n\r\nSee you later!\r\nRegards,\r\nBuddypressTest', 'yes'),
(204, '_wswebinar_email_sentFrom', 'BuddypressTest', 'yes'),
(205, '_wswebinar_email_senderAddress', 'daryl@batchelors.id.au', 'yes'),
(206, '_wswebnar_db_version', '15', 'yes'),
(248, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(258, '_site_transient_timeout_available_translations', '1466759115', 'yes'),
(259, '_site_transient_available_translations', 'a:72:{s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-27 20:45:33";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3.4/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-22 14:16:17";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-25 14:32:58";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-16 05:09:40";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-22 04:45:13";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.5/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-02-16 15:35:45";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3.5/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-23 12:22:42";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-01-21 14:15:34";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.3.4/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-02 05:19:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-21 20:35:04";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.5/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-21 21:29:42";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-21 22:57:06";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-21 22:26:28";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-03-17 15:44:37";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-21 18:29:54";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-05-29 12:53:49";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-26 22:31:40";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-03-25 18:38:19";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-05 16:34:02";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-12 17:21:08";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-03-22 18:30:35";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-06 20:37:24";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-12-08 02:28:05";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-03-08 17:19:37";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.1.11/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-21 19:15:29";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-22 10:58:27";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-11-04 22:14:16";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-11-15 12:00:25";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-11-24 08:17:28";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-21 19:09:10";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-23 12:26:33";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-05-09 00:37:38";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-11-06 04:24:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-22 09:12:45";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-12-15 04:39:52";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-23 10:49:34";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-04-09 22:50:31";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-05-11 06:18:13";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3.4/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-03-24 15:32:52";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.11/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-22 02:34:38";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-11-27 16:41:01";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-22 04:45:57";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-03 10:08:50";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-20 09:27:40";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-27 07:05:44";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.3.5";s:7:"updated";s:19:"2016-06-23 10:11:05";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.5/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-11-08 12:30:32";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-19 13:55:59";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-10-08 09:34:14";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-11-27 09:19:03";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2016-03-18 06:20:35";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.3.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(273, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(311, 'rewrite_rules', 'a:131:{s:14:"docs/create/?$";s:52:"index.php?post_type=bp_doc&name=$matches[1]&create=1";s:34:"docs/my-groups/page/([0-9]{1,})/?$";s:56:"index.php?post_type=bp_doc&my-groups=1&paged=$matches[1]";s:17:"docs/my-groups/?$";s:55:"index.php?post_type=bp_doc&name=$matches[1]&my-groups=1";s:20:"docs/([^/]+)/edit/?$";s:50:"index.php?post_type=bp_doc&name=$matches[1]&edit=1";s:23:"docs/([^/]+)/history/?$";s:53:"index.php?post_type=bp_doc&name=$matches[1]&history=1";s:22:"docs/([^/]+)/delete/?$";s:53:"index.php?post_type=bp_doc&name=$matches[1]&history=1";s:23:"docs/([^/]+)/untrash/?$";s:53:"index.php?post_type=bp_doc&name=$matches[1]&untrash=1";s:33:"docs/([^/]+)/unlink-from-group/?$";s:63:"index.php?post_type=bp_doc&name=$matches[1]&unlink-from-group=1";s:7:"docs/?$";s:26:"index.php?post_type=bp_doc";s:37:"docs/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=bp_doc&feed=$matches[1]";s:32:"docs/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=bp_doc&feed=$matches[1]";s:24:"docs/page/([0-9]{1,})/?$";s:44:"index.php?post_type=bp_doc&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"bp_member_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?bp_member_type=$matches[1]&feed=$matches[2]";s:50:"bp_member_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?bp_member_type=$matches[1]&feed=$matches[2]";s:43:"bp_member_type/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?bp_member_type=$matches[1]&paged=$matches[2]";s:25:"bp_member_type/([^/]+)/?$";s:36:"index.php?bp_member_type=$matches[1]";s:54:"bp_group_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?bp_group_type=$matches[1]&feed=$matches[2]";s:49:"bp_group_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?bp_group_type=$matches[1]&feed=$matches[2]";s:42:"bp_group_type/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?bp_group_type=$matches[1]&paged=$matches[2]";s:24:"bp_group_type/([^/]+)/?$";s:35:"index.php?bp_group_type=$matches[1]";s:30:"docs/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"docs/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"docs/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"docs/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"docs/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:23:"docs/(.+?)/trackback/?$";s:33:"index.php?bp_doc=$matches[1]&tb=1";s:43:"docs/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?bp_doc=$matches[1]&feed=$matches[2]";s:38:"docs/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?bp_doc=$matches[1]&feed=$matches[2]";s:31:"docs/(.+?)/page/?([0-9]{1,})/?$";s:46:"index.php?bp_doc=$matches[1]&paged=$matches[2]";s:38:"docs/(.+?)/comment-page-([0-9]{1,})/?$";s:46:"index.php?bp_doc=$matches[1]&cpage=$matches[2]";s:23:"docs/(.+?)(/[0-9]+)?/?$";s:45:"index.php?bp_doc=$matches[1]&page=$matches[2]";s:45:"item/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?bp_docs_tag=$matches[1]&feed=$matches[2]";s:40:"item/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?bp_docs_tag=$matches[1]&feed=$matches[2]";s:33:"item/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?bp_docs_tag=$matches[1]&paged=$matches[2]";s:15:"item/([^/]+)/?$";s:33:"index.php?bp_docs_tag=$matches[1]";s:55:"bp_docs_access/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?taxonomy=bp_docs_access&term=$matches[1]&feed=$matches[2]";s:50:"bp_docs_access/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?taxonomy=bp_docs_access&term=$matches[1]&feed=$matches[2]";s:43:"bp_docs_access/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?taxonomy=bp_docs_access&term=$matches[1]&paged=$matches[2]";s:25:"bp_docs_access/([^/]+)/?$";s:50:"index.php?taxonomy=bp_docs_access&term=$matches[1]";s:40:"bp_docs_folder/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"bp_docs_folder/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"bp_docs_folder/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"bp_docs_folder/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"bp_docs_folder/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"bp_docs_folder/(.+?)/trackback/?$";s:41:"index.php?bp_docs_folder=$matches[1]&tb=1";s:41:"bp_docs_folder/(.+?)/page/?([0-9]{1,})/?$";s:54:"index.php?bp_docs_folder=$matches[1]&paged=$matches[2]";s:48:"bp_docs_folder/(.+?)/comment-page-([0-9]{1,})/?$";s:54:"index.php?bp_docs_folder=$matches[1]&cpage=$matches[2]";s:33:"bp_docs_folder/(.+?)(/[0-9]+)?/?$";s:53:"index.php?bp_docs_folder=$matches[1]&page=$matches[2]";s:62:"bp_docs_doc_in_folder/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?bp_docs_doc_in_folder=$matches[1]&feed=$matches[2]";s:57:"bp_docs_doc_in_folder/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?bp_docs_doc_in_folder=$matches[1]&feed=$matches[2]";s:50:"bp_docs_doc_in_folder/([^/]+)/page/?([0-9]{1,})/?$";s:61:"index.php?bp_docs_doc_in_folder=$matches[1]&paged=$matches[2]";s:32:"bp_docs_doc_in_folder/([^/]+)/?$";s:43:"index.php?bp_docs_doc_in_folder=$matches[1]";s:63:"bp_docs_folder_in_user/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?bp_docs_folder_in_user=$matches[1]&feed=$matches[2]";s:58:"bp_docs_folder_in_user/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?bp_docs_folder_in_user=$matches[1]&feed=$matches[2]";s:51:"bp_docs_folder_in_user/([^/]+)/page/?([0-9]{1,})/?$";s:62:"index.php?bp_docs_folder_in_user=$matches[1]&paged=$matches[2]";s:33:"bp_docs_folder_in_user/([^/]+)/?$";s:44:"index.php?bp_docs_folder_in_user=$matches[1]";s:64:"bp_docs_folder_in_group/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:62:"index.php?bp_docs_folder_in_group=$matches[1]&feed=$matches[2]";s:59:"bp_docs_folder_in_group/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:62:"index.php?bp_docs_folder_in_group=$matches[1]&feed=$matches[2]";s:52:"bp_docs_folder_in_group/([^/]+)/page/?([0-9]{1,})/?$";s:63:"index.php?bp_docs_folder_in_group=$matches[1]&paged=$matches[2]";s:34:"bp_docs_folder_in_group/([^/]+)/?$";s:45:"index.php?bp_docs_folder_in_group=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=35&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(312, 'bp_docs_attachment_protection', '1', 'yes'),
(350, 'widget_widget_recent_bp_docs', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(378, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1467070999', 'yes'),
(379, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5926";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3671";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3617";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3136";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2807";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2399";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2226";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2104";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2052";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2039";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1995";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1938";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1875";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1756";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1694";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1591";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1547";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1402";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1320";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1291";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1232";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1117";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1093";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"997";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"987";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"927";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"918";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"917";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"915";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"914";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"842";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"836";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"799";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"782";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"776";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"763";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"762";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"758";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"754";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"745";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"712";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"704";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"696";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"695";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"693";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"692";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"668";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"667";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"653";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"647";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"617";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"614";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"606";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"599";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"598";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"591";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"583";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"579";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"571";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"565";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"557";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"556";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"538";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"525";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"523";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"517";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"516";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"515";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"511";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"508";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"486";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"470";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"465";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"464";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"463";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"455";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"447";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"445";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"424";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"423";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"423";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"414";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"413";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"410";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"407";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"405";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"405";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"403";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"403";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"400";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"395";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"395";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"394";}}', 'yes'),
(380, 'bcg-settings', 'a:14:{s:9:"post_type";s:4:"post";s:12:"allow_upload";s:1:"1";s:14:"comment_status";s:4:"open";s:19:"show_comment_option";s:1:"1";s:20:"post_update_redirect";s:7:"archive";s:15:"enable_taxonomy";s:1:"1";s:18:"allowed_taxonomies";a:1:{s:8:"category";s:8:"category";}s:17:"max_allowed_posts";s:2:"20";s:11:"publish_cap";s:7:"members";s:18:"allow_unpublishing";s:1:"1";s:8:"post_cap";s:7:"members";s:10:"allow_edit";s:1:"1";s:18:"dashboard_edit_cap";s:13:"publish_posts";s:12:"allow_delete";s:1:"1";}', 'yes'),
(385, 'category_children', 'a:0:{}', 'yes'),
(404, 'dgb_question_type_children', 'a:0:{}', 'yes'),
(466, 'question_type_children', 'a:0:{}', 'yes'),
(481, '_transient_bp_active_member_count', '3', 'yes'),
(496, 'bp_docs_associated_item_children', 'a:0:{}', 'yes'),
(731, 'learning_type_children', 'a:0:{}', 'yes'),
(835, 'group_membership_limit', '1', 'yes'),
(836, 'bp_disable_blogforum_comments', '1', 'yes'),
(876, '_site_transient_timeout_browser_fb5ae4c281981ca10a522b6e1bdcd161', '1469322100', 'yes'),
(877, '_site_transient_browser_fb5ae4c281981ca10a522b6e1bdcd161', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(899, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470719280;s:7:"checked";a:4:{s:4:"sole";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.5.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.7.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(900, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1470719279;s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:24:"buddypress/bp-loader.php";O:8:"stdClass":7:{s:2:"id";s:4:"7756";s:4:"slug";s:10:"buddypress";s:6:"plugin";s:24:"buddypress/bp-loader.php";s:11:"new_version";s:7:"2.6.1.1";s:3:"url";s:41:"https://wordpress.org/plugins/buddypress/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/buddypress.2.6.1.1.zip";s:14:"upgrade_notice";s:59:"See: https://codex.buddypress.org/releases/version-2-6-1-1/";}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:26:"buddypress-docs/loader.php";O:8:"stdClass":6:{s:2:"id";s:5:"20975";s:4:"slug";s:15:"buddypress-docs";s:6:"plugin";s:26:"buddypress-docs/loader.php";s:11:"new_version";s:5:"1.9.1";s:3:"url";s:46:"https://wordpress.org/plugins/buddypress-docs/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/buddypress-docs.1.9.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:36:"wp-webinarsystem/wpwebinarsystem.php";O:8:"stdClass":6:{s:2:"id";s:5:"62365";s:4:"slug";s:16:"wp-webinarsystem";s:6:"plugin";s:36:"wp-webinarsystem/wpwebinarsystem.php";s:11:"new_version";s:5:"1.5.1";s:3:"url";s:47:"https://wordpress.org/plugins/wp-webinarsystem/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/wp-webinarsystem.1.5.1.zip";}}}', 'yes'),
(921, 'widget_bp_core_friends_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(922, '_transient_is_multi_author', '0', 'yes'),
(928, '_transient_sole_categories', '1', 'yes'),
(932, '_transient_timeout_plugin_slugs', '1469064534', 'no'),
(933, '_transient_plugin_slugs', 'a:11:{i:0;s:35:"add-groupmeta/dgb-add-groupmeta.php";i:1;s:55:"add-sole-learning/add-sole-learning-user-submission.php";i:2;s:19:"akismet/akismet.php";i:3;s:61:"Limit-group-membership/bp-limit-group-membership-per-user.php";i:4;s:24:"buddypress/bp-loader.php";i:5;s:26:"buddypress-docs/loader.php";i:6;s:53:"dgb-learning-custom-post/dgb-learning-custom-post.php";i:7;s:54:"dgb-questions-custom-post/dgb-question-custom-post.php";i:8;s:49:"delete-group-members/dgb-delete-group-members.php";i:9;s:9:"hello.php";i:10;s:36:"wp-webinarsystem/wpwebinarsystem.php";}', 'no'),
(934, '_transient_timeout_dash_fe2922e4dab38d163882ac0453e47f7b', '1469021334', 'no'),
(935, '_transient_dash_fe2922e4dab38d163882ac0453e47f7b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(940, '_site_transient_timeout_theme_roots', '1470721080', 'yes'),
(941, '_site_transient_theme_roots', 'a:1:{s:4:"sole";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(8, 25, '_edit_last', '1'),
(9, 25, '_wswebinar_gener_min', '00'),
(10, 25, '_wswebinar_gener_hour', '00'),
(11, 25, '_wswebinar_gener_date', ''),
(12, 25, '_wswebinar_gener_time', ''),
(13, 25, '_wswebinar_gener_webinar_status', 'liv'),
(14, 25, '_wswebinar_gener_regdisabled_yn', ''),
(15, 25, '_wswebinar_gener_air_type', 'live'),
(16, 25, '_wswebinar_gener_time_occur', ''),
(17, 25, '_wswebinar_gener_rec_days', ''),
(18, 25, '_wswebinar_gener_rec_times', ''),
(19, 25, '_wswebinar_gener_duration', '3600'),
(20, 25, '_wswebinar_gener_onetimeregist', ''),
(21, 25, '_wswebinar_livep_askq_yn', ''),
(22, 25, '_wswebinar_livep_askq_title_text_clr', ''),
(23, 25, '_wswebinar_livep_title_show_yn', ''),
(24, 25, '_wswebinar_livep_askq_bckg_clr', ''),
(25, 25, '_wswebinar_livep_askq_border_clr', ''),
(26, 25, '_wswebinar_livep_webdes_yn', ''),
(27, 25, '_wswebinar_livep_hostbox_yn', ''),
(28, 25, '_wswebinar_livep_leftbox_bckg_clr', ''),
(29, 25, '_wswebinar_livep_leftbox_border_clr', ''),
(30, 25, '_wswebinar_livep_hostbox_title_text_clr', ''),
(31, 25, '_wswebinar_livep_hostbox_title_bckg_clr', ''),
(32, 25, '_wswebinar_livep_hostbox_content_text_clr', ''),
(33, 25, '_wswebinar_livep_descbox_title_text_clr', ''),
(34, 25, '_wswebinar_livep_descbox_title_bckg_clr', ''),
(35, 25, '_wswebinar_livep_descbox_content_text_clr', ''),
(36, 25, '_wswebinar_livep_title_clr', ''),
(37, 25, '_wswebinar_livep_bckg_clr', ''),
(38, 25, '_wswebinar_livep_bckg_img', ''),
(39, 25, '_wswebinar_livep_vidurl', 'http://youtu.be/d0bQ3lSOwco'),
(40, 25, '_wswebinar_livep_vidurl_type', 'youtube'),
(41, 25, '_wswebinar_livep_video_auto_play_yn', ''),
(42, 25, '_wswebinar_livep_video_controls_yn', ''),
(43, 25, '_wswebinar_livep_incentive_yn', ''),
(44, 25, '_wswebinar_livep_incentive_title', ''),
(45, 25, '_wswebinar_livep_incentive_title_clr', ''),
(46, 25, '_wswebinar_livep_incentive_title_bckg_clr', ''),
(47, 25, '_wswebinar_livep_incentive_bckg_clr', ''),
(48, 25, '_wswebinar_livep_incentive_border_clr', ''),
(49, 25, '_wswebinar_livep_incentive_content_clr', ''),
(50, 25, '_wswebinar_livep_button_bg_clr', ''),
(51, 25, '_wswebinar_livep_buttonhover_bg_clr', ''),
(52, 25, '_wswebinar_livep_button_border_clr', ''),
(53, 25, '_wswebinar_livep_buttonhover_border_clr', ''),
(54, 25, '_wswebinar_livep_button_text_clr', ''),
(55, 25, '_wswebinar_livep_buttonhover_text_clr', ''),
(56, 25, '_wswebinar_livep_button_radius', ''),
(57, 25, '_wswebinar_regp_bckg_clr', ''),
(58, 25, '_wswebinar_regp_bckg_img', ''),
(59, 25, '_wswebinar_regp_vidurl', 'https://hangouts.google.com/hangouts/_/hoaevent/AP36tYeNcwHEjwn-biHsGITLat0-3xnLIJl-m_qYK6MbNRArtxZvNw?hl=en&authuser=0'),
(60, 25, '_wswebinar_regp_vidurl_type', 'youtube'),
(61, 25, '_wswebinar_regp_video_auto_play_yn', ''),
(62, 25, '_wswebinar_regp_video_controls_yn', ''),
(63, 25, '_wswebinar_regp_regformtitle', ''),
(64, 25, '_wswebinar_regp_regformtxt', ''),
(65, 25, '_wswebinar_regp_ctatext', ''),
(66, 25, '_wswebinar_regp_regformfont_clr', ''),
(67, 25, '_wswebinar_regp_regformbckg_clr', ''),
(68, 25, '_wswebinar_regp_regformborder_clr', ''),
(69, 25, '_wswebinar_regp_regformbtn_clr', ''),
(70, 25, '_wswebinar_regp_regformbtnborder_clr', ''),
(71, 25, '_wswebinar_regp_regformbtntxt_clr', ''),
(72, 25, '_wswebinar_regp_regtitle_clr', ''),
(73, 25, '_wswebinar_regp_regmeta_clr', ''),
(74, 25, '_wswebinar_regp_wbndesc_clr', ''),
(75, 25, '_wswebinar_regp_wbndescbck_clr', ''),
(76, 25, '_wswebinar_regp_wbndescborder_clr', ''),
(77, 25, '_wswebinar_regp_loginformtitle', ''),
(78, 25, '_wswebinar_regp_loginformtxt', ''),
(79, 25, '_wswebinar_regp_loginformbtn_clr', ''),
(80, 25, '_wswebinar_regp_loginformbtnborder_clr', ''),
(81, 25, '_wswebinar_regp_loginformbtntxt_clr', ''),
(82, 25, '_wswebinar_regp_loginctatext', ''),
(83, 25, '_wswebinar_regp_tabbg_clr', ''),
(84, 25, '_wswebinar_regp_tabtext_clr', ''),
(85, 25, '_wswebinar_regp_tabone_text', ''),
(86, 25, '_wswebinar_regp_tabtwo_text', ''),
(87, 25, '_wswebinar_regp_show_content_setion', 'yes'),
(88, 25, '_wswebinar_regp_show_description', 'yes'),
(89, 25, '_wswebinar_regp_position', 'right'),
(90, 25, '_wswebinar_tnxp_vidurl', ''),
(91, 25, '_wswebinar_tnxp_vidurl_type', 'youtube'),
(92, 25, '_wswebinar_tnxp_video_auto_play_yn', ''),
(93, 25, '_wswebinar_tnxp_video_controls_yn', ''),
(94, 25, '_wswebinar_tnxp_pagetitle', 'Yeah! You Are Registered For The Webinar!'),
(95, 25, '_wswebinar_tnxp_pagetitle_clr', ''),
(96, 25, '_wswebinar_tnxp_bckg_clr', ''),
(97, 25, '_wswebinar_tnxp_bckg_img', ''),
(98, 25, '_wswebinar_tnxp_tktbckg_clr', ''),
(99, 25, '_wswebinar_tnxp_tktbdr_clr', ''),
(100, 25, '_wswebinar_tnxp_tkttxt_clr', ''),
(101, 25, '_wswebinar_tnxp_tktbodybckg_clr', ''),
(102, 25, '_wswebinar_tnxp_tkthdrbckg_clr', ''),
(103, 25, '_wswebinar_tnxp_tkthdrtxt_clr', ''),
(104, 25, '_wswebinar_tnxp_tktbtn_clr', ''),
(105, 25, '_wswebinar_tnxp_tktbtntxt_clr', ''),
(106, 25, '_wswebinar_tnxp_link_above_clr', ''),
(107, 25, '_wswebinar_tnxp_link_below_clr', ''),
(108, 25, '_wswebinar_tnxp_socialsharing_border_clr', ''),
(109, 25, '_wswebinar_tnxp_socialsharing_bckg_clr', ''),
(110, 25, '_wswebinar_tnxp_calendar_border_clr', ''),
(111, 25, '_wswebinar_tnxp_calendar_bckg_clr', ''),
(112, 25, '_wswebinar_tnxp_calendartxt_clr', ''),
(113, 25, '_wswebinar_tnxp_calendarbtntxt_clr', ''),
(114, 25, '_wswebinar_tnxp_calendarbtnbckg_clr', ''),
(115, 25, '_wswebinar_tnxp_calendarbtnborder_clr', ''),
(116, 25, '_wswebinar_cntdwnp_title_clr', ''),
(117, 25, '_wswebinar_cntdwnp_tagline_clr', ''),
(118, 25, '_wswebinar_cntdwnp_desc_clr', ''),
(119, 25, '_wswebinar_cntdwnp_bckg_clr', ''),
(120, 25, '_wswebinar_cntdwnp_bckg_img', ''),
(121, 25, '_wswebinar_cntdwnp_timershow_yn', ''),
(122, 25, '_wswebinar_replayp_title_show_yn', ''),
(123, 25, '_wswebinar_replayp_title_clr', ''),
(124, 25, '_wswebinar_replayp_bckg_clr', ''),
(125, 25, '_wswebinar_replayp_bckg_img', ''),
(126, 25, '_wswebinar_replayp_askq_yn', ''),
(127, 25, '_wswebinar_replayp_askq_bckg_clr', ''),
(128, 25, '_wswebinar_replayp_askq_title_text_clr', ''),
(129, 25, '_wswebinar_replayp_webdes_yn', ''),
(130, 25, '_wswebinar_replayp_hostbox_yn', ''),
(131, 25, '_wswebinar_replayp_yn', ''),
(132, 25, '_wswebinar_replayp_vidurl', ''),
(133, 25, '_wswebinar_replayp_vidurl_type', 'youtube'),
(134, 25, '_wswebinar_replayp_incentive_yn', ''),
(135, 25, '_wswebinar_replayp_leftbox_bckg_clr', ''),
(136, 25, '_wswebinar_replayp_hostbox_title_text_clr', ''),
(137, 25, '_wswebinar_replayp_hostbox_title_bckg_clr', ''),
(138, 25, '_wswebinar_replayp_hostbox_content_text_clr', ''),
(139, 25, '_wswebinar_replayp_descbox_title_text_clr', ''),
(140, 25, '_wswebinar_replayp_descbox_title_bckg_clr', ''),
(141, 25, '_wswebinar_replayp_descbox_content_text_clr', ''),
(142, 25, '_wswebinar_replayp_video_auto_play_yn', ''),
(143, 25, '_wswebinar_replayp_video_controls_yn', ''),
(144, 25, '_wswebinar_replayp_incentive_title', ''),
(145, 25, '_wswebinar_replayp_incentive_title_clr', ''),
(146, 25, '_wswebinar_replayp_incentive_title_bckg_clr', ''),
(147, 25, '_wswebinar_replayp_incentive_bckg_clr', ''),
(148, 25, '_wswebinar_replayp_incentive_content_clr', ''),
(149, 25, '_wswebinar_replayp_button_bg_clr', ''),
(150, 25, '_wswebinar_replayp_buttonhover_bg_clr', ''),
(151, 25, '_wswebinar_replayp_button_border_clr', ''),
(152, 25, '_wswebinar_replayp_buttonhover_border_clr', ''),
(153, 25, '_wswebinar_replayp_button_text_clr', ''),
(154, 25, '_wswebinar_replayp_buttonhover_text_clr', ''),
(155, 25, '_wswebinar_replayp_button_radius', ''),
(156, 25, '_wswebinar_hostmetabox_hostname', ''),
(157, 25, '_wswebinar_timezoneidentifier', ''),
(158, 25, '_wswebinar_livep_incentive_content', ''),
(159, 25, '_wswebinar_replayp_incentive_content', ''),
(160, 25, '_edit_lock', '1466738432:1'),
(161, 26, '_menu_item_type', 'custom'),
(162, 26, '_menu_item_menu_item_parent', '0'),
(163, 26, '_menu_item_object_id', '26'),
(164, 26, '_menu_item_object', 'custom'),
(165, 26, '_menu_item_target', ''),
(166, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 26, '_menu_item_xfn', ''),
(168, 26, '_menu_item_url', 'http://localhost/wordpressbuddyPress/'),
(169, 26, '_menu_item_orphaned', '1466736985'),
(170, 27, '_menu_item_type', 'post_type'),
(171, 27, '_menu_item_menu_item_parent', '0'),
(172, 27, '_menu_item_object_id', '4'),
(173, 27, '_menu_item_object', 'page'),
(174, 27, '_menu_item_target', ''),
(175, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(176, 27, '_menu_item_xfn', ''),
(177, 27, '_menu_item_url', ''),
(178, 27, '_menu_item_orphaned', '1466736985'),
(179, 28, '_menu_item_type', 'post_type'),
(180, 28, '_menu_item_menu_item_parent', '0'),
(181, 28, '_menu_item_object_id', '5'),
(182, 28, '_menu_item_object', 'page'),
(183, 28, '_menu_item_target', ''),
(184, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(185, 28, '_menu_item_xfn', ''),
(186, 28, '_menu_item_url', ''),
(187, 28, '_menu_item_orphaned', '1466736985'),
(188, 29, '_menu_item_type', 'post_type'),
(189, 29, '_menu_item_menu_item_parent', '0'),
(190, 29, '_menu_item_object_id', '2'),
(191, 29, '_menu_item_object', 'page'),
(192, 29, '_menu_item_target', ''),
(193, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 29, '_menu_item_xfn', ''),
(195, 29, '_menu_item_url', ''),
(196, 29, '_menu_item_orphaned', '1466736985'),
(197, 25, '_wswebinar_views', '9'),
(198, 33, '_wp_attached_file', '2016/06/bannerImg.jpg'),
(199, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:841;s:4:"file";s:21:"2016/06/bannerImg.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"bannerImg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"bannerImg-300x131.jpg";s:5:"width";i:300;s:6:"height";i:131;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"bannerImg-1024x449.jpg";s:5:"width";i:1024;s:6:"height";i:449;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(200, 34, '_wp_attached_file', '2016/06/cropped-bannerImg.jpg'),
(201, 34, '_wp_attachment_context', 'custom-header'),
(202, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1120;s:6:"height";i:299;s:4:"file";s:29:"2016/06/cropped-bannerImg.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"cropped-bannerImg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"cropped-bannerImg-300x80.jpg";s:5:"width";i:300;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"cropped-bannerImg-1024x273.jpg";s:5:"width";i:1024;s:6:"height";i:273;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(203, 34, '_wp_attachment_custom_header_last_used_sole', '1466742170'),
(204, 34, '_wp_attachment_is_custom_header', 'sole'),
(205, 35, '_edit_lock', '1466988969:1'),
(206, 35, '_edit_last', '1'),
(207, 35, '_wp_page_template', 'template-frontpage.php'),
(208, 38, '_edit_last', '1'),
(209, 38, '_wp_page_template', 'default'),
(210, 38, '_edit_lock', '1466771581:1'),
(211, 40, '_menu_item_type', 'post_type'),
(212, 40, '_menu_item_menu_item_parent', '0'),
(213, 40, '_menu_item_object_id', '38'),
(214, 40, '_menu_item_object', 'page'),
(215, 40, '_menu_item_target', ''),
(216, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(217, 40, '_menu_item_xfn', ''),
(218, 40, '_menu_item_url', ''),
(238, 43, '_menu_item_type', 'post_type'),
(239, 43, '_menu_item_menu_item_parent', '0'),
(240, 43, '_menu_item_object_id', '35'),
(241, 43, '_menu_item_object', 'page'),
(242, 43, '_menu_item_target', ''),
(243, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(244, 43, '_menu_item_xfn', ''),
(245, 43, '_menu_item_url', ''),
(249, 45, '_edit_lock', '1466942003:1'),
(250, 45, '_edit_last', '1'),
(251, 48, 'bp_docs_last_editor', '1'),
(252, 48, 'bp_docs_settings', 'a:5:{s:4:"read";s:13:"group-members";s:4:"edit";s:13:"group-members";s:13:"read_comments";s:13:"group-members";s:13:"post_comments";s:13:"group-members";s:12:"view_history";s:13:"group-members";}'),
(253, 48, 'bp_docs_revision_count', '3'),
(261, 1, '_edit_lock', '1467060429:1'),
(273, 58, '_edit_lock', '1467114508:1'),
(274, 58, '_edit_last', '1'),
(275, 59, '_edit_lock', '1467164168:1'),
(276, 59, '_edit_last', '1'),
(277, 61, '_edit_lock', '1467162651:1'),
(278, 61, '_edit_last', '1'),
(284, 65, '_edit_lock', '1467162740:1'),
(285, 65, '_edit_last', '1'),
(286, 66, '_edit_lock', '1467164198:1'),
(287, 66, '_edit_last', '1'),
(288, 67, '_edit_lock', '1467163111:1'),
(289, 67, '_edit_last', '1'),
(290, 68, '_edit_lock', '1467163141:1'),
(291, 68, '_edit_last', '1'),
(292, 69, '_edit_lock', '1467163160:1'),
(293, 69, '_edit_last', '1'),
(294, 70, '_edit_lock', '1467163184:1'),
(295, 70, '_edit_last', '1'),
(296, 71, '_edit_lock', '1467163210:1'),
(297, 71, '_edit_last', '1'),
(298, 72, '_edit_lock', '1467163234:1'),
(299, 72, '_edit_last', '1'),
(300, 73, '_edit_lock', '1467163252:1'),
(301, 73, '_edit_last', '1'),
(302, 74, '_edit_lock', '1467163273:1'),
(303, 74, '_edit_last', '1'),
(304, 75, '_edit_lock', '1467163304:1'),
(305, 75, '_edit_last', '1'),
(306, 76, '_edit_lock', '1467163323:1'),
(307, 76, '_edit_last', '1'),
(308, 77, '_edit_lock', '1467163356:1'),
(309, 77, '_edit_last', '1'),
(310, 78, '_edit_lock', '1467163525:1'),
(311, 78, '_edit_last', '1'),
(320, 79, '_edit_lock', '1467164617:1'),
(321, 79, '_edit_last', '1'),
(322, 80, '_edit_lock', '1467164710:1'),
(323, 80, '_edit_last', '1'),
(326, 81, '_edit_lock', '1467167433:1'),
(327, 81, '_edit_last', '1'),
(328, 82, 'bp_docs_last_editor', '2'),
(329, 82, 'bp_docs_settings', 'a:5:{s:4:"read";s:13:"group-members";s:4:"edit";s:13:"group-members";s:13:"read_comments";s:13:"group-members";s:13:"post_comments";s:13:"group-members";s:12:"view_history";s:13:"group-members";}'),
(330, 82, 'bp_docs_revision_count', '2'),
(342, 86, 'bp_docs_last_editor', '1'),
(343, 86, 'bp_docs_settings', 'a:5:{s:4:"read";s:6:"anyone";s:4:"edit";s:13:"group-members";s:13:"read_comments";s:6:"anyone";s:13:"post_comments";s:13:"group-members";s:12:"view_history";s:6:"anyone";}'),
(344, 86, 'bp_docs_revision_count', '2'),
(346, 89, 'bp_docs_last_editor', '3'),
(347, 89, 'bp_docs_settings', 'a:5:{s:4:"read";s:6:"anyone";s:4:"edit";s:13:"group-members";s:13:"read_comments";s:6:"anyone";s:13:"post_comments";s:13:"group-members";s:12:"view_history";s:6:"anyone";}'),
(348, 89, 'bp_docs_revision_count', '2'),
(350, 92, '_edit_lock', '1467199477:1'),
(351, 92, '_edit_last', '1'),
(352, 92, '_wp_page_template', 'template-frontpage-new.php'),
(353, 94, '_menu_item_type', 'post_type'),
(354, 94, '_menu_item_menu_item_parent', '0'),
(355, 94, '_menu_item_object_id', '92'),
(356, 94, '_menu_item_object', 'page'),
(357, 94, '_menu_item_target', ''),
(358, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(359, 94, '_menu_item_xfn', ''),
(360, 94, '_menu_item_url', ''),
(362, 95, 'bp_docs_last_editor', '1'),
(363, 95, 'bp_docs_settings', 'a:5:{s:4:"read";s:6:"anyone";s:4:"edit";s:13:"group-members";s:13:"read_comments";s:6:"anyone";s:13:"post_comments";s:13:"group-members";s:12:"view_history";s:6:"anyone";}'),
(364, 95, 'bp_docs_revision_count', '1'),
(365, 86, '_edit_lock', '1467282112:1'),
(366, 99, '_edit_lock', '1467499708:1'),
(367, 99, '_edit_last', '1'),
(368, 100, '_edit_lock', '1467499743:1'),
(369, 100, '_edit_last', '1'),
(370, 101, '_edit_lock', '1467499890:1'),
(371, 101, '_edit_last', '1'),
(372, 102, '_edit_lock', '1467500107:1'),
(373, 102, '_edit_last', '1'),
(374, 103, '_edit_lock', '1467866032:1'),
(375, 103, '_edit_last', '1'),
(381, 107, '_edit_lock', '1467973072:1'),
(382, 107, '_edit_last', '1'),
(383, 107, '_wp_page_template', 'template-learning-blog.php'),
(466, 124, 'learning_members', '1, 2'),
(467, 124, 'learning_category', 'Education'),
(468, 124, 'group_id', '142'),
(469, 124, 'post_id', ''),
(470, 124, '_edit_lock', '1467944723:1'),
(471, 125, 'learning_members', '1, 2'),
(472, 125, 'learning_category', 'Maths'),
(473, 125, 'group_id', '143'),
(474, 125, 'post_id', ''),
(479, 125, '_edit_lock', '1467949960:1'),
(504, 131, 'learning_members', '2, 1'),
(505, 131, 'learning_category', 'Science'),
(506, 131, 'group_id', '144'),
(507, 131, 'post_id', ''),
(508, 133, 'learning_members', '1, 2'),
(509, 133, 'learning_category', 'Art'),
(510, 133, 'group_id', '147'),
(511, 133, 'post_id', ''),
(512, 133, '_edit_lock', '1468039354:1'),
(513, 134, '_menu_item_type', 'post_type'),
(514, 134, '_menu_item_menu_item_parent', '0'),
(515, 134, '_menu_item_object_id', '107'),
(516, 134, '_menu_item_object', 'page'),
(517, 134, '_menu_item_target', ''),
(518, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(519, 134, '_menu_item_xfn', ''),
(520, 134, '_menu_item_url', ''),
(522, 135, 'learning_members', '2'),
(523, 135, 'learning_category', 'Maths'),
(524, 135, 'group_id', '148'),
(525, 136, 'learning_members', '2, 1'),
(526, 136, 'learning_category', 'Science'),
(527, 136, 'group_id', '150');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-06-24 02:14:35', '2016-06-24 02:14:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-06-24 02:14:35', '2016-06-24 02:14:35', '', 0, 'http://localhost/wordpressbuddyPress/?p=1', 0, 'post', '', 1),
(2, 1, '2016-06-24 02:14:35', '2016-06-24 02:14:35', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpressbuddyPress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2016-06-24 02:14:35', '2016-06-24 02:14:35', '', 0, 'http://localhost/wordpressbuddyPress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 'Activity', '', 'publish', 'closed', 'closed', '', 'activity', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/activity/', 0, 'page', '', 0),
(5, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/members/', 0, 'page', '', 0),
(6, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '{{poster.name}} replied to one of your updates:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your updates', '{{poster.name}} replied to one of your updates:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-updates', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=6', 0, 'bp-email', '', 0),
(7, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '{{poster.name}} replied to one of your comments:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your comments', '{{poster.name}} replied to one of your comments:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-comments', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=7', 0, 'bp-email', '', 0),
(8, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '{{poster.name}} mentioned you in a status update:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in a status update', '{{poster.name}} mentioned you in a status update:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-a-status-update', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=8', 0, 'bp-email', '', 0),
(9, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in an update', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-an-update', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=9', 0, 'bp-email', '', 0),
(10, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link: <a href="{{{activate.url}}}">{{{activate.url}}}</a>', '[{{{site.name}}}] Activate your account', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link: {{{activate.url}}}', 'publish', 'closed', 'closed', '', 'site-name-activate-your-account', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=10', 0, 'bp-email', '', 0),
(11, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', 'Thanks for registering!\n\nTo complete the activation of your account and site, go to the following link: <a href="{{{activate-site.url}}}">{{{activate-site.url}}}</a>.\n\nAfter you activate, you can visit your site at <a href="{{{user-site.url}}}">{{{user-site.url}}}</a>.', '[{{{site.name}}}] Activate {{{user-site.url}}}', 'Thanks for registering!\n\nTo complete the activation of your account and site, go to the following link: {{{activate-site.url}}}\n\nAfter you activate, you can visit your site at {{{user-site.url}}}.', 'publish', 'closed', 'closed', '', 'site-name-activate-user-site-url', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=11', 0, 'bp-email', '', 0),
(12, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '<a href="{{{initiator.url}}}">{{initiator.name}}</a> wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: <a href="{{{friend-requests.url}}}">{{{friend-requests.url}}}</a>', '[{{{site.name}}}] New friendship request from {{initiator.name}}', '{{initiator.name}} wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: {{{friend-requests.url}}}\n\nTo view {{initiator.name}}''s profile, visit: {{{initiator.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-friendship-request-from-initiator-name', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=12', 0, 'bp-email', '', 0),
(13, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '<a href="{{{friendship.url}}}">{{friend.name}}</a> accepted your friend request.', '[{{{site.name}}}] {{friend.name}} accepted your friendship request', '{{friend.name}} accepted your friend request.\n\nTo learn more about them, visit their profile: {{{friendship.url}}}', 'publish', 'closed', 'closed', '', 'site-name-friend-name-accepted-your-friendship-request', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=13', 0, 'bp-email', '', 0),
(14, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', 'Group details for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; were updated:\n<blockquote>{{changed_text}}</blockquote>', '[{{{site.name}}}] Group details updated', 'Group details for the group &quot;{{group.name}}&quot; were updated:\n\n{{changed_text}}\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-group-details-updated', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=14', 0, 'bp-email', '', 0),
(15, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '<a href="{{{inviter.url}}}">{{inviter.name}}</a> has invited you to join the group: &quot;{{group.name}}&quot;.\n<a href="{{{invites.url}}}">Go here to accept your invitation</a> or <a href="{{{group.url}}}">visit the group</a> to learn more.', '[{{{site.name}}}] You have an invitation to the group: "{{group.name}}"', '{{inviter.name}} has invited you to join the group: &quot;{{group.name}}&quot;.\n\nTo accept your invitation, visit: {{{invites.url}}}\n\nTo learn more about the group, visit {{{group.url}}}.\nTo view {{inviter.name}}''s profile, visit: {{{inviter.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-an-invitation-to-the-group-group-name', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=15', 0, 'bp-email', '', 0),
(16, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', 'You have been promoted to <b>{{promoted_to}}</b> in the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot;.', '[{{{site.name}}}] You have been promoted in the group: "{{group.name}}"', 'You have been promoted to {{promoted_to}} in the group: &quot;{{group.name}}&quot;.\n\nTo visit the group, go to: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-been-promoted-in-the-group-group-name', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=16', 0, 'bp-email', '', 0),
(17, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '<a href="{{{profile.url}}}">{{requesting-user.name}}</a> wants to join the group &quot;{{group.name}}&quot;. As you are an administrator of this group, you must either accept or reject the membership request.\n\n<a href="{{{group-requests.url}}}">Go here to manage this</a> and all other pending requests.', '[{{{site.name}}}] Membership request for group: {{group.name}}', '{{requesting-user.name}} wants to join the group &quot;{{group.name}}&quot;. As you are the administrator of this group, you must either accept or reject the membership request.\n\nTo manage this and all other pending requests, visit: {{{group-requests.url}}}\n\nTo view {{requesting-user.name}}''s profile, visit: {{{profile.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=17', 0, 'bp-email', '', 0),
(18, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{message.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] New message from {{sender.name}}', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n&quot;{{usermessage}}&quot;\n\nGo to the discussion to reply or catch up on the conversation: {{{message.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-message-from-sender-name', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=18', 0, 'bp-email', '', 0),
(19, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, <a href="{{{verify.url}}}">go here to confirm the change</a>.\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', '[{{{site.name}}}] Verify your new email address', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, go to the following link to confirm the change: {{{verify.url}}}\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', 'publish', 'closed', 'closed', '', 'site-name-verify-your-new-email-address', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=19', 0, 'bp-email', '', 0),
(20, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been accepted.', '[{{{site.name}}}] Membership request for group "{{group.name}}" accepted', 'Your membership request for the group &quot;{{group.name}}&quot; has been accepted.\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-accepted', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=20', 0, 'bp-email', '', 0),
(21, 1, '2016-06-24 02:20:37', '2016-06-24 02:20:37', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been rejected.', '[{{{site.name}}}] Membership request for group "{{group.name}}" rejected', 'Your membership request for the group &quot;{{group.name}}&quot; has been rejected.\n\nTo request membership again, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-rejected', '', '', '2016-06-24 02:20:37', '2016-06-24 02:20:37', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=bp-email&p=21', 0, 'bp-email', '', 0),
(25, 1, '2016-06-24 02:56:09', '2016-06-24 02:56:09', '', 'testWebinar', '', 'publish', 'closed', 'closed', '', 'testwebinar', '', '', '2016-06-24 03:19:38', '2016-06-24 03:19:38', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=wswebinars&#038;p=25', 0, 'wswebinars', '', 0),
(26, 1, '2016-06-24 02:56:25', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-24 02:56:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpressbuddyPress/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2016-06-24 02:56:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-24 02:56:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpressbuddyPress/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2016-06-24 02:56:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-24 02:56:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpressbuddyPress/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2016-06-24 02:56:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-24 02:56:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpressbuddyPress/?p=29', 1, 'nav_menu_item', '', 0),
(32, 1, '2016-06-24 03:19:43', '2016-06-24 03:19:43', '', 'testWebinar', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2016-06-24 03:19:43', '2016-06-24 03:19:43', '', 25, 'http://localhost/wordpressbuddyPress/2016/06/24/25-autosave-v1/', 0, 'revision', '', 0),
(33, 1, '2016-06-24 04:22:33', '2016-06-24 04:22:33', '', 'bannerImg', '', 'inherit', 'open', 'closed', '', 'bannerimg', '', '', '2016-06-24 04:22:33', '2016-06-24 04:22:33', '', 0, 'http://localhost/wordpressbuddyPress/wp-content/uploads/2016/06/bannerImg.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-06-24 04:22:41', '2016-06-24 04:22:41', 'http://localhost/wordpressbuddyPress/wp-content/uploads/2016/06/cropped-bannerImg.jpg', 'cropped-bannerImg.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-bannerimg-jpg', '', '', '2016-06-24 04:22:41', '2016-06-24 04:22:41', '', 0, 'http://localhost/wordpressbuddyPress/wp-content/uploads/2016/06/cropped-bannerImg.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2016-06-24 06:14:01', '2016-06-24 06:14:01', '', 'front', '', 'publish', 'closed', 'closed', '', 'front', '', '', '2016-06-27 00:58:32', '2016-06-27 00:58:32', '', 0, 'http://localhost/wordpressbuddyPress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2016-06-24 06:14:01', '2016-06-24 06:14:01', '', 'front', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-06-24 06:14:01', '2016-06-24 06:14:01', '', 35, 'http://localhost/wordpressbuddyPress/2016/06/24/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-06-24 07:03:16', '2016-06-24 07:03:16', '', 'Groups', '', 'publish', 'closed', 'closed', '', 'groups', '', '', '2016-06-24 07:03:16', '2016-06-24 07:03:16', '', 0, 'http://localhost/wordpressbuddyPress/groups/', 0, 'page', '', 0),
(38, 1, '2016-06-24 12:35:22', '2016-06-24 12:35:22', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-06-24 12:35:22', '2016-06-24 12:35:22', '', 0, 'http://localhost/wordpressbuddyPress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2016-06-24 12:35:22', '2016-06-24 12:35:22', '', 'About', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-06-24 12:35:22', '2016-06-24 12:35:22', '', 38, 'http://localhost/wordpressbuddyPress/2016/06/24/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-06-24 12:35:48', '2016-06-24 12:35:48', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2016-06-24 12:37:39', '2016-06-24 12:37:39', '', 0, 'http://localhost/wordpressbuddyPress/?p=40', 1, 'nav_menu_item', '', 0),
(43, 1, '2016-06-24 12:37:04', '2016-06-24 12:37:04', '', 'Community Page', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-07-18 23:44:38', '2016-07-18 23:44:38', '', 0, 'http://localhost/wordpressbuddyPress/?p=43', 1, 'nav_menu_item', '', 0),
(45, 1, '2016-06-26 11:52:07', '0000-00-00 00:00:00', '', 'new', '', 'draft', 'open', 'closed', '', '', '', '', '2016-06-26 11:52:07', '2016-06-26 11:52:07', '', 0, 'http://localhost/wordpressbuddyPress/docs/', 0, 'bp_doc', '', 0),
(46, 1, '2016-06-26 11:52:07', '2016-06-26 11:52:07', '', 'new', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2016-06-26 11:52:07', '2016-06-26 11:52:07', '', 45, 'http://localhost/wordpressbuddyPress/2016/06/26/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-06-27 00:36:11', '2016-06-27 00:36:11', 'here is the doc from our first sole\r\n\r\nediting now from test-subscriber', 'document for big question 1', '', 'publish', 'open', 'closed', '', 'document-for-big-question-1', '', '', '2016-06-27 00:41:47', '2016-06-27 00:41:47', '', 0, 'http://localhost/wordpressbuddyPress/docs/', 0, 'bp_doc', '', 0),
(49, 1, '2016-06-27 00:36:11', '2016-06-27 00:36:11', 'here is the doc from our first sole', 'document for big question 1', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2016-06-27 00:36:11', '2016-06-27 00:36:11', '', 48, 'http://localhost/wordpressbuddyPress/2016/06/27/48-revision-v1/', 0, 'revision', '', 0),
(50, 2, '2016-06-27 00:41:02', '2016-06-27 00:41:02', 'here is the doc from our first sole\r\n\r\nediting now from test-subscriber', 'document for big question 1', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2016-06-27 00:41:02', '2016-06-27 00:41:02', '', 48, 'http://localhost/wordpressbuddyPress/2016/06/27/48-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-06-28 11:50:50', '2016-06-28 11:50:50', '', 'Why is the sky blue?', '', 'publish', 'open', 'closed', '', 'why-is-the-sky-blue', '', '', '2016-06-28 11:50:50', '2016-06-28 11:50:50', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=58', 0, 'questions', '', 0),
(59, 1, '2016-06-29 01:12:25', '2016-06-29 01:12:25', 'by Sugata Mitra', 'How do we remember and why do we forget?', '', 'publish', 'open', 'closed', '', 'how-do-we-remember-and-why-do-we-forget', '', '', '2016-06-29 01:12:25', '2016-06-29 01:12:25', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=59', 0, 'questions', '', 0),
(61, 1, '2016-06-29 01:13:03', '2016-06-29 01:13:03', 'by <a href="https://www.theschoolinthecloud.org/profile/ql55oobovuw">Rishav Basu</a>', 'What is the purpose of art?', '', 'publish', 'open', 'closed', '', 'what-is-the-purpose-of-art', '', '', '2016-06-29 01:13:03', '2016-06-29 01:13:03', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=61', 0, 'questions', '', 0),
(65, 1, '2016-06-29 01:14:40', '2016-06-29 01:14:40', 'by <a href="https://www.theschoolinthecloud.org/profile/hq4qulkdzfg">Katy Jayne Beechey</a>', 'How do flocks of birds in flight all move at exactly the same time?', '', 'publish', 'open', 'closed', '', 'how-do-flocks-of-birds-in-flight-all-move-at-exactly-the-same-time', '', '', '2016-06-29 01:14:40', '2016-06-29 01:14:40', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=65', 0, 'questions', '', 0),
(66, 1, '2016-06-29 01:14:59', '2016-06-29 01:14:59', 'by <a href="https://www.theschoolinthecloud.org/profile/3jt7eojz194">brianna athey</a>', 'If our brain helps us learn from our mistakes why do some people do it again?', '', 'publish', 'open', 'closed', '', 'if-our-brain-helps-us-learn-from-our-mistakes-why-do-some-people-do-it-again', '', '', '2016-06-29 01:14:59', '2016-06-29 01:14:59', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=66', 0, 'questions', '', 0),
(67, 1, '2016-06-29 01:15:22', '2016-06-29 01:15:22', 'by <a href="https://www.theschoolinthecloud.org/profile/1mpbsr7kuiq">Connor Groover</a>', 'What is the purpose of life?', '', 'publish', 'open', 'closed', '', 'what-is-the-purpose-of-life', '', '', '2016-06-29 01:16:18', '2016-06-29 01:16:18', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=67', 0, 'questions', '', 0),
(68, 1, '2016-06-29 01:21:17', '2016-06-29 01:21:17', 'by <a href="https://www.theschoolinthecloud.org/profile/ld1nxjxfhwa">Sahil Bhalerao</a>', 'Does tomorrow exist?', '', 'publish', 'open', 'closed', '', 'does-tomorrow-exist', '', '', '2016-06-29 01:21:17', '2016-06-29 01:21:17', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=68', 0, 'questions', '', 0),
(69, 1, '2016-06-29 01:21:36', '2016-06-29 01:21:36', 'by <a href="https://www.theschoolinthecloud.org/profile/5l5h_j1dv3a">Sushma R</a>', 'If water boils at 100 degrees Celsius, how do clothes dry in the sun?', '', 'publish', 'open', 'closed', '', 'if-water-boils-at-100-degrees-celsius-how-do-clothes-dry-in-the-sun', '', '', '2016-06-29 01:21:36', '2016-06-29 01:21:36', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=69', 0, 'questions', '', 0),
(70, 1, '2016-06-29 01:21:54', '2016-06-29 01:21:54', 'by <a href="https://www.theschoolinthecloud.org/profile/bsbji1wv2ho">Lisa Zhang</a>', 'Do plants die from old age?', '', 'publish', 'open', 'closed', '', 'do-plants-die-from-old-age', '', '', '2016-06-29 01:21:54', '2016-06-29 01:21:54', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=70', 0, 'questions', '', 0),
(71, 1, '2016-06-29 01:22:25', '2016-06-29 01:22:25', 'by <a href="https://www.theschoolinthecloud.org/profile/ekm3ksoroae">Charlie MacFadyen</a>', 'How does an email travel from one device to another?', '', 'publish', 'open', 'closed', '', 'how-does-an-email-travel-from-one-device-to-another', '', '', '2016-06-29 01:22:25', '2016-06-29 01:22:25', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=71', 0, 'questions', '', 0),
(72, 1, '2016-06-29 01:22:46', '2016-06-29 01:22:46', 'by <a href="https://www.theschoolinthecloud.org/profile/bl2he5b75qq">Daniel Coleman</a>', 'Where does the salt go when salt water turns into water vapor?', '', 'publish', 'open', 'closed', '', 'where-does-the-salt-go-when-salt-water-turns-into-water-vapor', '', '', '2016-06-29 01:22:46', '2016-06-29 01:22:46', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=72', 0, 'questions', '', 0),
(73, 1, '2016-06-29 01:23:09', '2016-06-29 01:23:09', 'by <a href="https://www.theschoolinthecloud.org/profile/8vzou1jkxco">Matt Hannah</a>', 'How do songs and poems intensify feelings and ideas?', '', 'publish', 'open', 'closed', '', 'how-do-songs-and-poems-intensify-feelings-and-ideas', '', '', '2016-06-29 01:23:09', '2016-06-29 01:23:09', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=73', 0, 'questions', '', 0),
(74, 1, '2016-06-29 01:23:29', '2016-06-29 01:23:29', 'by <a href="https://www.theschoolinthecloud.org/profile/ax73lrm0jqw">Christian Adams</a>', 'What is consciousness? Where does it come from?', '', 'publish', 'open', 'closed', '', 'what-is-consciousness-where-does-it-come-from', '', '', '2016-06-29 01:23:29', '2016-06-29 01:23:29', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=74', 0, 'questions', '', 0),
(75, 1, '2016-06-29 01:23:49', '2016-06-29 01:23:49', 'by <a href="https://www.theschoolinthecloud.org/profile/z1sofhs70ui">V. Madhu Sudhan Reddy</a>', 'Is time travel possible?', '', 'publish', 'open', 'closed', '', 'is-time-travel-possible', '', '', '2016-06-29 01:23:49', '2016-06-29 01:23:49', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=75', 0, 'questions', '', 0),
(76, 1, '2016-06-29 01:24:21', '2016-06-29 01:24:21', 'by <a href="https://www.theschoolinthecloud.org/profile/tbyywm-0kqg">Gianna Mantegna</a>', 'How do people get phobias?', '', 'publish', 'open', 'closed', '', 'how-do-people-get-phobias', '', '', '2016-06-29 01:24:21', '2016-06-29 01:24:21', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=76', 0, 'questions', '', 0),
(77, 1, '2016-06-29 01:24:42', '2016-06-29 01:24:42', 'by <a href="https://www.theschoolinthecloud.org/profile/1mpbsr7kuiq">Connor Groover</a>', 'How would the speed and acceleration of planes change if they had a wider wingspan?', '', 'publish', 'open', 'closed', '', 'how-would-the-speed-and-acceleration-of-planes-change-if-they-had-a-wider-wingspan', '', '', '2016-06-29 01:24:42', '2016-06-29 01:24:42', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=77', 0, 'questions', '', 0),
(78, 1, '2016-06-29 01:25:42', '2016-06-29 01:25:42', 'by <a href="https://www.theschoolinthecloud.org/profile/nwxjtts-bca">Helen Berry</a>', 'How are historians of the future going to know about your past?', '', 'publish', 'open', 'closed', '', 'how-are-historians-of-the-future-going-to-know-about-your-past', '', '', '2016-06-29 01:25:42', '2016-06-29 01:25:42', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=78', 0, 'questions', '', 0),
(79, 1, '2016-06-29 01:43:19', '2016-06-29 01:43:19', '', 'How can teachers prepare students for the future without knowing what the future will look like?', '', 'publish', 'open', 'closed', '', 'how-can-teachers-prepare-students-for-the-future-without-knowing-what-the-future-will-look-like-2', '', '', '2016-06-29 01:43:19', '2016-06-29 01:43:19', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=79', 0, 'questions', '', 0),
(80, 1, '2016-06-29 01:47:11', '2016-06-29 01:47:11', '', 'How can teachers prepare students for the future when they do not know what the future holds?', '', 'publish', 'open', 'closed', '', 'how-can-teachers-prepare-students-for-the-future-when-they-do-not-know-what-the-future-holds', '', '', '2016-06-29 01:47:11', '2016-06-29 01:47:11', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=80', 0, 'questions', '', 0),
(81, 1, '2016-06-29 01:48:02', '2016-06-29 01:48:02', '', 'Can children learn without going to school?', '', 'publish', 'open', 'closed', '', 'can-children-learn-without-going-to-school-2', '', '', '2016-06-29 01:48:02', '2016-06-29 01:48:02', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=81', 0, 'questions', '', 0),
(82, 1, '2016-06-29 02:34:30', '2016-06-29 02:34:30', 'here it is\r\n\r\nnew addition', 'New doc for learning without teachers', '', 'publish', 'open', 'closed', '', 'new-doc-for-learning-without-teachers', '', '', '2016-06-29 02:35:57', '2016-06-29 02:35:57', '', 0, 'http://localhost/wordpressbuddyPress/docs/', 0, 'bp_doc', '', 0),
(83, 1, '2016-06-29 02:34:30', '2016-06-29 02:34:30', 'here it is', 'New doc for learning without teachers', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2016-06-29 02:34:30', '2016-06-29 02:34:30', '', 82, 'http://localhost/wordpressbuddyPress/2016/06/29/82-revision-v1/', 0, 'revision', '', 0),
(84, 2, '2016-06-29 02:35:57', '2016-06-29 02:35:57', 'here it is\r\n\r\nnew addition', 'New doc for learning without teachers', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2016-06-29 02:35:57', '2016-06-29 02:35:57', '', 82, 'http://localhost/wordpressbuddyPress/2016/06/29/82-revision-v1/', 0, 'revision', '', 0),
(86, 3, '2016-06-29 10:56:09', '2016-06-29 10:56:09', 'bp_get_group_id()dssdsd\r\n\r\ndfddff', 'children school', '', 'publish', 'open', 'closed', '', 'children-school', '', '', '2016-06-29 10:56:42', '2016-06-29 10:56:42', '', 0, 'http://localhost/wordpressbuddyPress/docs/', 0, 'bp_doc', '', 0),
(87, 3, '2016-06-29 10:56:09', '2016-06-29 10:56:09', 'bp_get_group_id()dssdsd', 'children school', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-06-29 10:56:09', '2016-06-29 10:56:09', '', 86, 'http://localhost/wordpressbuddyPress/2016/06/29/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2016-06-29 10:56:42', '2016-06-29 10:56:42', 'bp_get_group_id()dssdsd\r\n\r\ndfddff', 'children school', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-06-29 10:56:42', '2016-06-29 10:56:42', '', 86, 'http://localhost/wordpressbuddyPress/2016/06/29/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-06-29 10:58:34', '2016-06-29 10:58:34', 'art stufffddfdf', 'new doc for art', '', 'publish', 'open', 'closed', '', 'new-doc-for-art', '', '', '2016-06-29 10:59:04', '2016-06-29 10:59:04', '', 0, 'http://localhost/wordpressbuddyPress/docs/', 0, 'bp_doc', '', 0),
(90, 1, '2016-06-29 10:58:34', '2016-06-29 10:58:34', 'art stuff', 'new doc for art', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2016-06-29 10:58:34', '2016-06-29 10:58:34', '', 89, 'http://localhost/wordpressbuddyPress/2016/06/29/89-revision-v1/', 0, 'revision', '', 0),
(91, 3, '2016-06-29 10:59:04', '2016-06-29 10:59:04', 'art stufffddfdf', 'new doc for art', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2016-06-29 10:59:04', '2016-06-29 10:59:04', '', 89, 'http://localhost/wordpressbuddyPress/2016/06/29/89-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2016-06-29 11:26:53', '2016-06-29 11:26:53', '', 'Group Chat', '', 'publish', 'closed', 'closed', '', 'group-chat', '', '', '2016-06-29 11:26:53', '2016-06-29 11:26:53', '', 0, 'http://localhost/wordpressbuddyPress/?page_id=92', 0, 'page', '', 0),
(93, 1, '2016-06-29 11:26:53', '2016-06-29 11:26:53', '', 'Group Chat', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-06-29 11:26:53', '2016-06-29 11:26:53', '', 92, 'http://localhost/wordpressbuddyPress/2016/06/29/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2016-06-29 11:38:56', '2016-06-29 11:38:56', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2016-07-18 23:44:38', '2016-07-18 23:44:38', '', 0, 'http://localhost/wordpressbuddyPress/?p=94', 2, 'nav_menu_item', '', 0),
(95, 1, '2016-06-29 12:17:13', '2016-06-29 12:17:13', 'asdafa', 'new document art topic', '', 'publish', 'open', 'closed', '', 'new-document-art-topic', '', '', '2016-06-29 12:17:13', '2016-06-29 12:17:13', '', 0, 'http://localhost/wordpressbuddyPress/docs/', 0, 'bp_doc', '', 0),
(96, 1, '2016-06-29 12:17:13', '2016-06-29 12:17:13', 'asdafa', 'new document art topic', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2016-06-29 12:17:13', '2016-06-29 12:17:13', '', 95, 'http://localhost/wordpressbuddyPress/2016/06/29/95-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2016-07-02 22:50:47', '2016-07-02 22:50:47', 'Question is based on Newtons famous question that gave rise to calculus.', 'Does the moon fall toward earth?', '', 'publish', 'open', 'closed', '', 'does-the-moon-fall-toward-earth', '', '', '2016-07-02 22:50:47', '2016-07-02 22:50:47', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=99', 0, 'questions', '', 0),
(100, 1, '2016-07-02 22:51:22', '2016-07-02 22:51:22', '', 'Does gravity pull or push?', '', 'publish', 'open', 'closed', '', 'does-gravity-pull-or-push', '', '', '2016-07-02 22:51:22', '2016-07-02 22:51:22', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=100', 0, 'questions', '', 0),
(101, 1, '2016-07-02 22:53:51', '2016-07-02 22:53:51', '', 'Are there additional dimensions?', '', 'publish', 'open', 'closed', '', 'are-there-additional-dimensions', '', '', '2016-07-02 22:53:51', '2016-07-02 22:53:51', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=101', 0, 'questions', '', 0),
(102, 1, '2016-07-02 22:57:28', '2016-07-02 22:57:28', '', 'What is dark matter?', '', 'publish', 'open', 'closed', '', 'what-is-dark-matter', '', '', '2016-07-02 22:57:28', '2016-07-02 22:57:28', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=102', 0, 'questions', '', 0),
(103, 1, '2016-07-02 22:59:46', '2016-07-02 22:59:46', '', 'What makes us human?', '', 'publish', 'open', 'closed', '', 'what-makes-us-human', '', '', '2016-07-02 22:59:46', '2016-07-02 22:59:46', '', 0, 'http://localhost/wordpressbuddyPress/?post_type=questions&#038;p=103', 0, 'questions', '', 0),
(107, 1, '2016-07-07 21:58:48', '2016-07-07 21:58:48', '[submit-sole-learning]', 'Learning Blog', '', 'publish', 'closed', 'closed', '', 'learningblog', '', '', '2016-07-08 10:20:07', '2016-07-08 10:20:07', '', 0, 'http://localhost/wordpressbuddyPress/?page_id=107', 0, 'page', '', 0),
(108, 1, '2016-07-07 05:24:05', '2016-07-07 05:24:05', '[submit-sole-learning]', 'test', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2016-07-07 05:24:05', '2016-07-07 05:24:05', '', 107, 'http://localhost/wordpressbuddyPress/2016/07/07/107-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2016-07-08 02:23:45', '2016-07-08 02:23:45', 'test', 'Can children learn without going to school?', '', 'publish', 'open', 'closed', '', 'can-children-learn-without-going-to-school-15', '', '', '2016-07-08 02:23:45', '2016-07-08 02:23:45', '', 0, 'http://localhost/wordpressbuddyPress/learnings/can-children-learn-without-going-to-school-15/', 0, 'learnings', '', 0),
(125, 1, '2016-07-08 02:27:29', '2016-07-08 02:27:29', 'did it work\ndfsfsfsf\nits working and continually getting updated!!!\nthis is great! hghghg I can edit it too', 'it worked!', '', 'publish', 'open', 'closed', '', 'what-is-dark-matter', '', '', '2016-07-08 03:02:52', '2016-07-08 03:02:52', '', 0, 'http://localhost/wordpressbuddyPress/learnings/what-is-dark-matter/', 0, 'learnings', '', 0),
(131, 1, '2016-07-08 03:56:25', '2016-07-08 03:56:25', 'this is what we have learnt...\r\n\r\n\r\nWhat makes us human is our dna\r\n\r\nyeah and it is cool', 'What makes us human?', '', 'publish', 'open', 'closed', '', 'what-makes-us-human', '', '', '2016-07-08 03:56:51', '2016-07-08 03:56:51', '', 0, 'http://localhost/wordpressbuddyPress/learnings/what-makes-us-human/', 0, 'learnings', '', 0),
(132, 1, '2016-07-08 09:58:10', '2016-07-08 09:58:10', '[submit-sole-learning]', 'Learning Blog', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2016-07-08 09:58:10', '2016-07-08 09:58:10', '', 107, 'http://localhost/wordpressbuddyPress/2016/07/08/107-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2016-07-08 10:13:21', '2016-07-08 10:13:21', 'heaps of stuff...\r\n\r\nwell I learnt thathhh art is great!\r\n\r\nfgfhjgj\r\nsdfsdfs\r\nffddffddffdffdfdffd\r\nhfhfjdhnfndskjhfnsdf', 'What is the purpose of art?', '', 'publish', 'open', 'closed', '', 'what-is-the-purpose-of-art', '', '', '2016-07-09 03:28:39', '2016-07-09 03:28:39', '', 0, 'http://localhost/wordpressbuddyPress/learnings/what-is-the-purpose-of-art/', 0, 'learnings', '', 0),
(134, 1, '2016-07-09 03:37:19', '2016-07-09 03:37:19', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2016-07-18 23:44:38', '2016-07-18 23:44:38', '', 0, 'http://localhost/wordpressbuddyPress/?p=134', 3, 'nav_menu_item', '', 0),
(135, 2, '2016-07-09 07:56:57', '2016-07-09 07:56:57', 'dfdfdfdfffdffdffdfdfdffdhghgfhhfhfhfhfdffffffffffffffffffgfhfhfghfghgfbggfggggggggggggggggggggg', 'What is dark matter?', '', 'publish', 'open', 'closed', '', 'what-is-dark-matter-6', '', '', '2016-07-09 07:57:13', '2016-07-09 07:57:13', '', 0, 'http://localhost/wordpressbuddyPress/learnings/what-is-dark-matter-6/', 0, 'learnings', '', 0),
(136, 2, '2016-07-10 23:12:06', '2016-07-10 23:12:06', 'ewtgwegertgetrgtegetggtegtgetgtffdsfffdsffdsdffdssdfdsfsfdfffdsdfdsf\r\n\r\n\r\ntyhfdshgf  hfjhfkds\r\nhhjhsfksf\r\nfhfdhdkjhf fhdhjdksfjhfdfsfsfffdsdffdsffsfdfs\r\ngdfgdg\r\nthisd is a great app I have learnt that I can do anything woohooo!', 'Where does the salt go when salt water turns into water vapor?', '', 'publish', 'open', 'closed', '', 'where-does-the-salt-go-when-salt-water-turns-into-water-vapor', '', '', '2016-07-16 11:56:49', '2016-07-16 11:56:49', '', 0, 'http://localhost/wordpressbuddyPress/learnings/where-does-the-salt-go-when-salt-water-turns-into-water-vapor/', 0, 'learnings', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(7, 3, 0),
(8, 4, 0),
(9, 5, 0),
(10, 6, 0),
(11, 7, 0),
(12, 8, 0),
(13, 9, 0),
(14, 10, 0),
(15, 11, 0),
(16, 12, 0),
(17, 13, 0),
(18, 14, 0),
(19, 15, 0),
(20, 16, 0),
(21, 17, 0),
(40, 18, 0),
(43, 19, 0),
(48, 20, 0),
(48, 21, 0),
(53, 26, 0),
(54, 25, 0),
(58, 24, 0),
(59, 24, 0),
(61, 27, 0),
(65, 24, 0),
(66, 24, 0),
(67, 29, 0),
(68, 29, 0),
(69, 24, 0),
(70, 24, 0),
(71, 24, 0),
(72, 24, 0),
(73, 27, 0),
(74, 24, 0),
(74, 29, 0),
(75, 24, 0),
(76, 24, 0),
(77, 23, 0),
(78, 30, 0),
(80, 31, 0),
(81, 31, 0),
(82, 32, 0),
(82, 33, 0),
(86, 34, 0),
(86, 35, 0),
(89, 35, 0),
(89, 36, 0),
(94, 19, 0),
(95, 35, 0),
(95, 37, 0),
(99, 23, 0),
(100, 23, 0),
(101, 23, 0),
(102, 23, 0),
(103, 24, 0),
(134, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'bp-email-type', 'A member has replied to an activity update that the recipient posted.', 0, 1),
(3, 3, 'bp-email-type', 'A member has replied to a comment on an activity update that the recipient posted.', 0, 1),
(4, 4, 'bp-email-type', 'Recipient was mentioned in an activity update.', 0, 1),
(5, 5, 'bp-email-type', 'Recipient was mentioned in a group activity update.', 0, 1),
(6, 6, 'bp-email-type', 'Recipient has registered for an account.', 0, 1),
(7, 7, 'bp-email-type', 'Recipient has registered for an account and site.', 0, 1),
(8, 8, 'bp-email-type', 'A member has sent a friend request to the recipient.', 0, 1),
(9, 9, 'bp-email-type', 'Recipient has had a friend request accepted by a member.', 0, 1),
(10, 10, 'bp-email-type', 'A group''s details were updated.', 0, 1),
(11, 11, 'bp-email-type', 'A member has sent a group invitation to the recipient.', 0, 1),
(12, 12, 'bp-email-type', 'Recipient''s status within a group has changed.', 0, 1),
(13, 13, 'bp-email-type', 'A member has requested permission to join a group.', 0, 1),
(14, 14, 'bp-email-type', 'Recipient has received a private message.', 0, 1),
(15, 15, 'bp-email-type', 'Recipient has changed their email address.', 0, 1),
(16, 16, 'bp-email-type', 'Recipient had requested to join a group, which was accepted.', 0, 1),
(17, 17, 'bp-email-type', 'Recipient had requested to join a group, which was rejected.', 0, 1),
(18, 18, 'nav_menu', '', 0, 1),
(19, 19, 'nav_menu', '', 0, 3),
(20, 20, 'bp_docs_associated_item', 'Docs associated with the group big question one here?', 0, 1),
(21, 21, 'bp_docs_access', '', 0, 1),
(22, 22, 'category', '', 0, 0),
(23, 23, 'question_type', 'questions linked to maths', 0, 5),
(24, 24, 'question_type', '', 0, 12),
(25, 25, 'dgb_question_type', '', 0, 1),
(26, 26, 'dgb_question_type', '', 0, 1),
(27, 27, 'question_type', '', 0, 2),
(29, 29, 'question_type', '', 0, 3),
(30, 30, 'question_type', '', 0, 1),
(31, 31, 'question_type', '', 0, 2),
(32, 32, 'bp_docs_associated_item', 'Docs associated with the group Can children learn without going to school?', 0, 1),
(33, 33, 'bp_docs_access', '', 0, 1),
(34, 34, 'bp_docs_associated_item', 'Docs associated with the group Can children learn without going to school?', 0, 1),
(35, 35, 'bp_docs_access', '', 0, 3),
(36, 36, 'bp_docs_associated_item', 'Docs associated with the group How do songs and poems intensify feelings and ideas?', 0, 1),
(37, 37, 'bp_docs_associated_item', 'Docs associated with the group How are historians of the future going to know about your past?', 0, 1),
(38, 38, 'learning_type', '', 0, 0),
(39, 39, 'learning_type', '', 0, 0),
(40, 40, 'learning_type', '', 0, 0),
(41, 41, 'learning_type', '', 0, 0),
(42, 42, 'learning_type', '', 0, 0),
(43, 43, 'learning_type', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'activity-comment', 'activity-comment', 0),
(3, 'activity-comment-author', 'activity-comment-author', 0),
(4, 'activity-at-message', 'activity-at-message', 0),
(5, 'groups-at-message', 'groups-at-message', 0),
(6, 'core-user-registration', 'core-user-registration', 0),
(7, 'core-user-registration-with-blog', 'core-user-registration-with-blog', 0),
(8, 'friends-request', 'friends-request', 0),
(9, 'friends-request-accepted', 'friends-request-accepted', 0),
(10, 'groups-details-updated', 'groups-details-updated', 0),
(11, 'groups-invitation', 'groups-invitation', 0),
(12, 'groups-member-promoted', 'groups-member-promoted', 0),
(13, 'groups-membership-request', 'groups-membership-request', 0),
(14, 'messages-unread', 'messages-unread', 0),
(15, 'settings-verify-email-change', 'settings-verify-email-change', 0),
(16, 'groups-membership-request-accepted', 'groups-membership-request-accepted', 0),
(17, 'groups-membership-request-rejected', 'groups-membership-request-rejected', 0),
(18, 'Logged out Menu', 'logged-out-menu', 0),
(19, 'Logged in', 'logged-in', 0),
(20, 'big question one here?', 'bp_docs_associated_group_1', 0),
(21, 'bp_docs_access_group_member_1', 'bp_docs_access_group_member_1', 0),
(22, 'Maths', 'maths', 0),
(23, 'Maths', 'maths', 0),
(24, 'Science', 'science', 0),
(25, 'Maths', 'maths', 0),
(26, 'Science', 'science', 0),
(27, 'Art', 'art', 0),
(29, 'Philosophy', 'philosophy', 0),
(30, 'History', 'history', 0),
(31, 'Learning', 'learning', 0),
(32, 'Can children learn without going to school?', 'bp_docs_associated_group_22', 0),
(33, 'bp_docs_access_group_member_22', 'bp_docs_access_group_member_22', 0),
(34, 'Can children learn without going to school?', 'bp_docs_associated_group_23', 0),
(35, 'bp_docs_access_anyone', 'bp_docs_access_anyone', 0),
(36, 'How do songs and poems intensify feelings and ideas?', 'bp_docs_associated_group_24', 0),
(37, 'How are historians of the future going to know about your past?', 'bp_docs_associated_group_27', 0),
(38, 'Art', 'art', 0),
(39, 'History', 'history', 0),
(40, 'Education', 'education', 0),
(41, 'Maths', 'maths', 0),
(42, 'Science', 'science', 0),
(43, 'Philosophy', 'philosophy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'admin'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '137'),
(16, 1, 'last_activity', '2016-08-09 05:08:08'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:23:"add-buddypress-nav-menu";i:1;s:14:"add-wswebinars";i:2;s:12:"add-post_tag";}'),
(19, 2, 'nickname', 'jobs'),
(20, 2, 'first_name', 'jobs'),
(21, 2, 'last_name', ''),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(29, 2, 'wp_user_level', '0'),
(30, 2, 'dismissed_wp_pointers', ''),
(32, 2, 'last_activity', '2016-07-19 06:10:19'),
(34, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(35, 1, 'wp_user-settings-time', '1466901371'),
(41, 2, 'bp_latest_update', 'a:2:{s:2:"id";i:9;s:7:"content";s:27:"@admin hey wanna to a sole?";}'),
(43, 1, 'total_group_count', '0'),
(50, 1, 'bp_xprofile_visibility_levels', 'a:3:{i:1;s:6:"public";i:2;s:6:"public";i:3;s:6:"public";}'),
(54, 1, 'bp_docs_count', '0'),
(55, 2, 'total_group_count', '1'),
(56, 2, 'bp_docs_count', '0'),
(57, 1, 'closedpostboxes_questions', 'a:0:{}'),
(58, 1, 'metaboxhidden_questions', 'a:1:{i:0;s:7:"slugdiv";}'),
(59, 3, 'nickname', 'test-subscriber2'),
(60, 3, 'first_name', 'test-subscriber2'),
(61, 3, 'last_name', ''),
(62, 3, 'description', ''),
(63, 3, 'rich_editing', 'true'),
(64, 3, 'comment_shortcuts', 'false'),
(65, 3, 'admin_color', 'fresh'),
(66, 3, 'use_ssl', '0'),
(67, 3, 'show_admin_bar_front', 'true'),
(68, 3, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(69, 3, 'wp_user_level', '0'),
(70, 3, 'dismissed_wp_pointers', ''),
(72, 3, 'last_activity', '2016-07-20 05:53:33'),
(73, 3, 'total_friend_count', '2'),
(74, 2, 'total_friend_count', '1'),
(76, 1, 'total_friend_count', '1'),
(77, 3, 'total_group_count', '0'),
(78, 1, 'nav_menu_recently_edited', '19'),
(79, 3, 'bp_docs_count', '0'),
(80, 1, 'bp_latest_update', 'a:2:{s:2:"id";i:219;s:7:"content";s:4:"nada";}'),
(81, 3, 'bp_latest_update', 'a:2:{s:2:"id";i:26;s:7:"content";s:4:"fgdg";}'),
(82, 1, 'bp_favorite_activities', 'a:1:{i:0;s:2:"25";}'),
(83, 2, 'bp_new_mention_count', '1'),
(84, 2, 'bp_new_mentions', 'a:1:{i:0;i:30;}'),
(451, 2, 'is_typing', '0'),
(452, 1, 'is_typing', '0'),
(458, 2, 'bp_xprofile_visibility_levels', 'a:2:{i:1;s:6:"public";i:3;s:6:"public";}'),
(459, 1, 'session_tokens', 'a:1:{s:64:"a34c2dd772cd509a692b0f405972086719cd3be7299d418737ad9f1282a00d7a";a:4:{s:10:"expiration";i:1470892087;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1470719287;}}'),
(484, 3, 'bp_xprofile_visibility_levels', 'a:2:{i:1;s:6:"public";i:3;s:6:"public";}'),
(521, 3, 'soles', 'a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:1:{i:0;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468730690";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:63:"How are historians of the future going to know about your past?";s:5:"topic";s:7:"History";s:15:"session-started";s:10:"1468730870";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:52:"How do songs and poems intensify feelings and ideas?";s:5:"topic";s:3:"Art";s:15:"session-started";s:10:"1468731167";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468731383";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468731831";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732095";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What makes us human?";s:5:"topic";s:7:"Science";s:15:"session-started";s:10:"1468732195";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732423";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732624";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732925";s:17:"session-completed";b:1;}}'),
(535, 1, 'meta-box-order_toplevel_page_bp-groups', 'a:3:{s:4:"side";s:27:"submitdiv,bp_group_settings";s:6:"normal";s:37:"bp_group_add_members,bp_group_members";s:8:"advanced";s:0:"";}'),
(536, 1, 'screen_layout_toplevel_page_bp-groups', '2'),
(537, 2, 'soles', 'a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;s:0:"";i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467855259";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1467860297";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467860387";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:93:"How can teachers prepare students for the future when they do not know what the future holds?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1467860657";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:47:"What is consciousness? Where does it come from?";s:5:"topic";s:10:"Philosophy";s:15:"session-started";s:10:"1467861177";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467866577";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1467929089";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467944825";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What makes us human?";s:5:"topic";s:7:"Science";s:15:"session-started";s:10:"1467950144";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:83:"How would the speed and acceleration of planes change if they had a wider wingspan?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467950889";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:27:"What is the purpose of art?";s:5:"topic";s:3:"Art";s:15:"session-started";s:10:"1467969243";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468039411";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468729216";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468729014";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468729216";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What makes us human?";s:5:"topic";s:7:"Science";s:15:"session-started";s:10:"1468729425";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468729530";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468729826";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468729956";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468730122";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468730690";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:63:"How are historians of the future going to know about your past?";s:5:"topic";s:7:"History";s:15:"session-started";s:10:"1468730870";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:52:"How do songs and poems intensify feelings and ideas?";s:5:"topic";s:3:"Art";s:15:"session-started";s:10:"1468731167";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468731383";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468731831";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732095";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What makes us human?";s:5:"topic";s:7:"Science";s:15:"session-started";s:10:"1468732195";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732423";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732624";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732731";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732925";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468733323";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468734203";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468734914";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468821491";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:93:"How can teachers prepare students for the future when they do not know what the future holds?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468822106";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:52:"How do songs and poems intensify feelings and ideas?";s:5:"topic";s:3:"Art";s:15:"session-started";s:10:"1468822785";s:17:"session-completed";b:1;}}'),
(538, 1, 'soles', 'a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;a:2:{i:0;s:0:"";i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467855259";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1467860297";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467860387";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:93:"How can teachers prepare students for the future when they do not know what the future holds?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1467860657";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:47:"What is consciousness? Where does it come from?";s:5:"topic";s:10:"Philosophy";s:15:"session-started";s:10:"1467861177";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467866577";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1467929089";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467944825";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What makes us human?";s:5:"topic";s:7:"Science";s:15:"session-started";s:10:"1467950144";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:83:"How would the speed and acceleration of planes change if they had a wider wingspan?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1467950889";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:27:"What is the purpose of art?";s:5:"topic";s:3:"Art";s:15:"session-started";s:10:"1467969243";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468039411";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:62:"Where does the salt go when salt water turns into water vapor?";s:5:"topic";s:7:"Science";s:15:"session-started";s:10:"1468192258";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What makes us human?";s:5:"topic";s:7:"Science";s:15:"session-started";s:10:"1468729425";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468729530";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468729826";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468729956";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468730122";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468730690";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:63:"How are historians of the future going to know about your past?";s:5:"topic";s:7:"History";s:15:"session-started";s:10:"1468730870";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:52:"How do songs and poems intensify feelings and ideas?";s:5:"topic";s:3:"Art";s:15:"session-started";s:10:"1468731167";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468731383";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:43:"Can children learn without going to school?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468731831";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732095";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What makes us human?";s:5:"topic";s:7:"Science";s:15:"session-started";s:10:"1468732195";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732624";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732731";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468732925";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468733323";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468734203";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468734914";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:20:"What is dark matter?";s:5:"topic";s:5:"Maths";s:15:"session-started";s:10:"1468821491";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:93:"How can teachers prepare students for the future when they do not know what the future holds?";s:5:"topic";s:9:"Education";s:15:"session-started";s:10:"1468822106";s:17:"session-completed";b:1;}}i:1;a:4:{s:8:"question";s:52:"How do songs and poems intensify feelings and ideas?";s:5:"topic";s:3:"Art";s:15:"session-started";s:10:"1468822785";s:17:"session-completed";b:1;}}'),
(541, 3, 'session_tokens', 'a:1:{s:64:"13344ae29d5c393c83635991dade65e1122b73cbe4969d5c020844ad190c788f";a:4:{s:10:"expiration";i:1469081540;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1468908740;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BektyJP/S6odHXNL8K9cvj0gh0CNZZ.', 'admin', 'daryl@batchelors.id.au', '', '2016-06-24 02:14:35', '', 0, 'admin'),
(2, 'test-subscriber', '$P$B4uKFuUY4hArCjwWjUDFN0CieFcTvs0', 'test-subscriber', 'daryl1@batchelors.id.au', '', '2016-06-24 03:50:24', '1466740224:$P$BFtg6mAPThCGbGbl8t9SqPPba0LMZ81', 0, 'jobs'),
(3, 'test-subscriber2', '$P$BPHy67dNCAJP/HpfEIeNj5DCVakrzc1', 'test-subscriber2', 'test@test.com', '', '2016-06-29 04:09:42', '1467173382:$P$BzZ0KIcs8IQlYH904SPlen/pAkfJU80', 0, 'test-subscriber2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wswebinars_notifications`
--

CREATE TABLE `wp_wswebinars_notifications` (
  `id` int(11) NOT NULL,
  `attendee_id` int(11) NOT NULL,
  `notification_type` int(2) NOT NULL,
  `sent_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wswebinars_questions`
--

CREATE TABLE `wp_wswebinars_questions` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wswebinars_subscribers`
--

CREATE TABLE `wp_wswebinars_subscribers` (
  `id` int(11) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretkey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `onehourmailsent` int(1) NOT NULL DEFAULT '0',
  `onedaymailsent` int(1) NOT NULL DEFAULT '0',
  `wbstartingmailsent` int(1) NOT NULL DEFAULT '0',
  `replaymailsent` int(1) NOT NULL DEFAULT '0',
  `webinar_id` int(11) NOT NULL,
  `watch_day` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watch_time` time DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exact_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `last_seen` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_recorded` (`date_recorded`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `component` (`component`),
  ADD KEY `type` (`type`),
  ADD KEY `mptt_left` (`mptt_left`),
  ADD KEY `mptt_right` (`mptt_right`),
  ADD KEY `hide_sitewide` (`hide_sitewide`),
  ADD KEY `is_spam` (`is_spam`);

--
-- Indexes for table `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_friends`
--
ALTER TABLE `wp_bp_friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `initiator_user_id` (`initiator_user_id`),
  ADD KEY `friend_user_id` (`friend_user_id`);

--
-- Indexes for table `wp_bp_groups`
--
ALTER TABLE `wp_bp_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_bp_groups_groupmeta`
--
ALTER TABLE `wp_bp_groups_groupmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_groups_members`
--
ALTER TABLE `wp_bp_groups_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `is_admin` (`is_admin`),
  ADD KEY `is_mod` (`is_mod`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `inviter_id` (`inviter_id`),
  ADD KEY `is_confirmed` (`is_confirmed`);

--
-- Indexes for table `wp_bp_messages_messages`
--
ALTER TABLE `wp_bp_messages_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indexes for table `wp_bp_messages_meta`
--
ALTER TABLE `wp_bp_messages_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_messages_notices`
--
ALTER TABLE `wp_bp_messages_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`);

--
-- Indexes for table `wp_bp_messages_recipients`
--
ALTER TABLE `wp_bp_messages_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `sender_only` (`sender_only`),
  ADD KEY `unread_count` (`unread_count`);

--
-- Indexes for table `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `is_new` (`is_new`),
  ADD KEY `component_name` (`component_name`),
  ADD KEY `component_action` (`component_action`),
  ADD KEY `useritem` (`user_id`,`is_new`);

--
-- Indexes for table `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_user_blogs`
--
ALTER TABLE `wp_bp_user_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_bp_user_blogs_blogmeta`
--
ALTER TABLE `wp_bp_user_blogs_blogmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `field_order` (`field_order`),
  ADD KEY `can_delete` (`can_delete`),
  ADD KEY `is_required` (`is_required`);

--
-- Indexes for table `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `can_delete` (`can_delete`);

--
-- Indexes for table `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `meta_key` (`meta_key`(191));

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

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
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

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
  ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_wswebinars_notifications`
--
ALTER TABLE `wp_wswebinars_notifications`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `attendee_id` (`attendee_id`);

--
-- Indexes for table `wp_wswebinars_questions`
--
ALTER TABLE `wp_wswebinars_questions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_wswebinars_subscribers`
--
ALTER TABLE `wp_wswebinars_subscribers`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_friends`
--
ALTER TABLE `wp_bp_friends`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_bp_groups`
--
ALTER TABLE `wp_bp_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_groups_groupmeta`
--
ALTER TABLE `wp_bp_groups_groupmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3389;
--
-- AUTO_INCREMENT for table `wp_bp_groups_members`
--
ALTER TABLE `wp_bp_groups_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_messages_messages`
--
ALTER TABLE `wp_bp_messages_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_bp_messages_meta`
--
ALTER TABLE `wp_bp_messages_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_messages_notices`
--
ALTER TABLE `wp_bp_messages_notices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_messages_recipients`
--
ALTER TABLE `wp_bp_messages_recipients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_user_blogs`
--
ALTER TABLE `wp_bp_user_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_user_blogs_blogmeta`
--
ALTER TABLE `wp_bp_user_blogs_blogmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=942;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_wswebinars_notifications`
--
ALTER TABLE `wp_wswebinars_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wswebinars_questions`
--
ALTER TABLE `wp_wswebinars_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wswebinars_subscribers`
--
ALTER TABLE `wp_wswebinars_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wswebinars_notifications`
--
ALTER TABLE `wp_wswebinars_notifications`
  ADD CONSTRAINT `wp_wswebinars_notifications_ibfk_1` FOREIGN KEY (`attendee_id`) REFERENCES `wp_wswebinars_subscribers` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
