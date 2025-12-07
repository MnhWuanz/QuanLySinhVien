-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 07, 2025 lúc 07:52 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bitnami_redmine`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'production', '2025-12-05 22:51:26.926861', '2025-12-05 22:51:26.926861');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disk_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` bigint(20) NOT NULL DEFAULT 0,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `digest` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk_directory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attachments`
--

INSERT INTO `attachments` (`id`, `container_id`, `container_type`, `filename`, `disk_filename`, `filesize`, `content_type`, `digest`, `downloads`, `author_id`, `created_on`, `description`, `disk_directory`) VALUES
(3, 1, 'Document', 'TÀI LIỆU QUY ĐỊNH VÀ HƯỚNG DẪN DỰ ÁN.docx', '251206102056_610e79c4654fb2ce2be2bb5cecf83f49.docx', 19107, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '58576ac0e637ddc4374042e03b38cded3adaf3f752d94634393bb5113ffd090a', 0, 1, '2025-12-06 03:20:56', '', '2025/12'),
(4, 2, 'Document', 'TÀI LIỆU ĐẶC TẢ HỆ THỐNG QUẢN LÝ SINH VIÊN.docx', '251206103123_2bcec35b3c31a85445b57767662426ee.docx', 19697, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'c6215d5c49f42e2d9745ffe2e17036e4617d2252b8c3bd29a2dcaa21523b62c2', 0, 1, '2025-12-06 03:31:23', '', '2025/12'),
(5, 3, 'Issue', 'Untitled.png', '251206152115_Untitled.png', 64659, 'image/png', '19c1372e2ba3a93d555253c133c86b795978d87826b167cb84c82c5c719a4cb4', 0, 6, '2025-12-06 08:21:15', 'hình ảnh lỗi', '2025/12'),
(6, 4, 'Issue', 'Untitled.png', '251206152115_Untitled.png', 64659, 'image/png', '19c1372e2ba3a93d555253c133c86b795978d87826b167cb84c82c5c719a4cb4', 0, 1, '2025-12-06 08:24:11', '', '2025/12'),
(7, 4, 'Issue', '2.png', '251206153133_2.png', 139946, 'image/png', 'e9a652a1db54d4a24498281df59403222b4e363e280b528d42338eaec3e26020', 0, 5, '2025-12-06 08:31:33', '', '2025/12'),
(8, 3, 'Issue', '3.png', '251206153601_3.png', 149950, 'image/png', '864163ad6c27972e72ef9ff8ccfe56dc74d8fe28015faa059d5d6c84f3d53493', 0, 6, '2025-12-06 08:36:01', '', '2025/12'),
(9, 5, 'Issue', '4.png', '251206155626_4.png', 69421, 'image/png', '70c5ba7700c975e834da750f21f784a8d2533065da398728d33f0a22fde629f6', 0, 6, '2025-12-06 08:56:26', 'hình ảnh lỗi', '2025/12'),
(10, 5, 'Issue', '5.png', '251206160434_5.png', 102079, 'image/png', 'b04ae35b47dadb19d714d766b73f8610680c8b6262243d266f276657d6d3544c', 0, 6, '2025-12-06 09:04:34', '', '2025/12'),
(11, 7, 'Issue', '8.png', '251206162811_8.png', 159339, 'image/png', '027a719409b4c8a945c6c24a73bb24b590cf655f85b777bfc4b5079d5154bc4b', 0, 6, '2025-12-06 09:28:11', 'kết quả', '2025/12'),
(12, 7, 'Issue', '7.png', '251206162815_7.png', 202506, 'image/png', 'a6fe97e1d7c5b947e91a1b9b397045af409c8853a115c54cf8dea8dd14b56812', 0, 6, '2025-12-06 09:28:15', 'thêm lênh', '2025/12'),
(13, 8, 'Issue', '7.png', '251206162815_7.png', 202506, 'image/png', 'a6fe97e1d7c5b947e91a1b9b397045af409c8853a115c54cf8dea8dd14b56812', 0, 1, '2025-12-06 09:31:37', 'Tấn công', '2025/12'),
(14, 8, 'Issue', '8.png', '251206162811_8.png', 159339, 'image/png', '027a719409b4c8a945c6c24a73bb24b590cf655f85b777bfc4b5079d5154bc4b', 0, 1, '2025-12-06 09:31:44', 'Kết quả', '2025/12'),
(15, 8, 'Issue', '9.png', '251206163604_9.png', 237659, 'image/png', 'be27efd65d72d4091a07f2924cf2e4a75170a5e7c6a6b41174125c2a52da94a2', 0, 6, '2025-12-06 09:36:04', '', '2025/12'),
(16, 7, 'Issue', '9.png', '251206163604_9.png', 237659, 'image/png', 'be27efd65d72d4091a07f2924cf2e4a75170a5e7c6a6b41174125c2a52da94a2', 0, 6, '2025-12-06 09:41:46', '', '2025/12'),
(17, 3, 'Issue', '10.png', '251208003807_10.png', 99669, 'image/png', '279760ab5d623d5caea006648ca80a2688470a50f4d74d4497157a40997014e1', 0, 6, '2025-12-07 17:38:07', '', '2025/12'),
(18, 5, 'Issue', '11.png', '251208004404_11.png', 94316, 'image/png', '701abd7c40146ff87fc9d6376380a6e966ef27ee6456a75eae669d7603644d70', 0, 6, '2025-12-07 17:44:04', '', '2025/12'),
(19, 7, 'Issue', '12.png', '251208005403_12.png', 93186, 'image/png', 'd2624d2a15d5e56ae72a8c0640cf930ee5c85f4463e4a0774e9177292dc60e8e', 0, 6, '2025-12-07 17:54:03', '', '2025/12'),
(20, 13, 'Issue', '14.png', '251208011543_14.png', 99619, 'image/png', '883aca8698e2170e26f8d0051474b376ba3fc74fafd5da3cf52a265a69c5e226', 0, 6, '2025-12-07 18:15:43', '', '2025/12'),
(21, 13, 'Issue', '13.png', '251208011543_13.png', 238651, 'image/png', 'eb33f69b896701d1fa5eb50ed5e442b6249a7ec407ffdee132cf1a57729f2fb1', 0, 6, '2025-12-07 18:15:43', '', '2025/12'),
(22, 13, 'Issue', '16.png', '251208013533_16.png', 65211, 'image/png', 'a6caa90232b66ccf071d5e4f88a72fd6458fe131c3d888eeef270e54893f7eb1', 0, 6, '2025-12-07 18:35:33', '', '2025/12'),
(23, 13, 'Issue', '15.png', '251208013533_15.png', 116571, 'image/png', '3bd8ded7fca2501530d2fa69933e4a879d249f32ce6f3154ac5ab6f56fa85f7c', 0, 6, '2025-12-07 18:35:33', '', '2025/12'),
(24, 15, 'Issue', '5f4875b1-0c7c-4daa-9065-42316785b6ea.webp', '251208013956_5f4875b1-0c7c-4daa-9065-42316785b6ea.webp', 21710, 'image/webp', 'f449ca7322b9ed17aa44451e4d8f1efc124f17bdde2350bd35fa1e3e20d21473', 0, 1, '2025-12-07 18:39:56', 'Hình ảnh tượng trưng', '2025/12'),
(25, 16, 'Issue', '18.png', '251208015252_18.png', 83267, 'image/png', '50ef676c5eab6db293f4ed684446d3e2398e66ece5e4a1f6da39c7d2c5eec387', 0, 6, '2025-12-07 18:52:52', 'mobile', '2025/12'),
(26, 16, 'Issue', '19.png', '251208015252_19.png', 232381, 'image/png', '4810cae6213ac71b65ada18693f3e1db7008d79b57c9725fc73c9ff425a4a013', 0, 6, '2025-12-07 18:52:52', 'desktop', '2025/12'),
(27, 16, 'Issue', '17.png', '251208015253_17.png', 77584, 'image/png', '08d9c03db778cc36fdab0284859de86ab2cf3010428af588a201752232f33544', 0, 6, '2025-12-07 18:52:53', 'tablet', '2025/12'),
(28, 17, 'Issue', '20.png', '251208015534_20.png', 218919, 'image/png', '9ae69115c2f6782bd6e9c928f4dd3a4cf739867098ec3478088cf6cc4ad8a05f', 0, 6, '2025-12-07 18:55:34', '', '2025/12'),
(29, 18, 'Issue', '20.png', '251208015534_20.png', 218919, 'image/png', '9ae69115c2f6782bd6e9c928f4dd3a4cf739867098ec3478088cf6cc4ad8a05f', 0, 1, '2025-12-07 18:58:48', 'Ảnh lỗi', '2025/12'),
(30, 17, 'Issue', '21.png', '251208020732_21.png', 48876, 'image/png', 'b207555d548edcd6b9892e1d6f23c942bd7fb415c5adea99f6bd4da4f0e0c189', 0, 6, '2025-12-07 19:07:32', '', '2025/12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_sources`
--

CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `host` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `base_dn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_login` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_mail` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT 0,
  `tls` tinyint(1) NOT NULL DEFAULT 0,
  `filter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `verify_peer` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `boards`
--

CREATE TABLE `boards` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `topics_count` int(11) NOT NULL DEFAULT 0,
  `messages_count` int(11) NOT NULL DEFAULT 0,
  `last_message_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `changes`
--

CREATE TABLE `changes` (
  `id` int(11) NOT NULL,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_revision` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `changesets`
--

CREATE TABLE `changesets` (
  `id` int(11) NOT NULL,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `committer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `changesets_issues`
--

CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `changeset_parents`
--

CREATE TABLE `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `commented_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `field_format` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `possible_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regexp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `min_length` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_for_all` tinyint(1) NOT NULL DEFAULT 0,
  `is_filter` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(11) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT 0,
  `default_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editable` tinyint(1) DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `multiple` tinyint(1) DEFAULT 0,
  `format_store` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_fields_projects`
--

CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_fields_roles`
--

CREATE TABLE `custom_fields_roles` (
  `custom_field_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_fields_trackers`
--

CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT 0,
  `tracker_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_field_enumerations`
--

CREATE TABLE `custom_field_enumerations` (
  `id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_values`
--

CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL,
  `customized_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT 0,
  `custom_field_id` int(11) NOT NULL DEFAULT 0,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `documents`
--

INSERT INTO `documents` (`id`, `project_id`, `category_id`, `title`, `description`, `created_on`) VALUES
(1, 1, 7, 'Tài liệu dự án', 'Tài liệu quy định và hướng dẫn dự án', '2025-12-06 03:21:03'),
(2, 1, 7, 'Tài liệu đặc tả hệ thống', 'Nội dung hệ thống ', '2025-12-06 03:31:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `notify` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `user_id`, `address`, `is_default`, `notify`, `created_on`, `updated_on`) VALUES
(1, 1, 'mnhquan0109@gmail.com', 1, 1, '2025-12-05 22:51:25', '2025-12-05 22:51:25'),
(2, 5, 'quang@gmail.com', 1, 1, '2025-12-06 09:27:11', '2025-12-06 09:27:11'),
(3, 6, 'hung@gmail.com', 1, 1, '2025-12-06 09:28:15', '2025-12-06 09:28:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `enabled_modules`
--

CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `enabled_modules`
--

INSERT INTO `enabled_modules` (`id`, `project_id`, `name`) VALUES
(1, 1, 'issue_tracking'),
(2, 1, 'time_tracking'),
(3, 1, 'news'),
(4, 1, 'documents'),
(5, 1, 'files'),
(6, 1, 'wiki'),
(7, 1, 'repository'),
(8, 1, 'boards'),
(9, 1, 'calendar'),
(10, 1, 'gantt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `enumerations`
--

CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `enumerations`
--

INSERT INTO `enumerations` (`id`, `name`, `position`, `is_default`, `type`, `active`, `project_id`, `parent_id`, `position_name`) VALUES
(1, 'Low', 1, 0, 'IssuePriority', 1, NULL, NULL, 'lowest'),
(2, 'Normal', 2, 1, 'IssuePriority', 1, NULL, NULL, 'default'),
(3, 'High', 3, 0, 'IssuePriority', 1, NULL, NULL, 'high3'),
(4, 'Urgent', 4, 0, 'IssuePriority', 1, NULL, NULL, 'high2'),
(5, 'Immediate', 5, 0, 'IssuePriority', 1, NULL, NULL, 'highest'),
(6, 'User documentation', 1, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(7, 'Technical documentation', 2, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(8, 'Design', 1, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(9, 'Development', 2, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups_users`
--

CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imports`
--

CREATE TABLE `imports` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_items` int(11) DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_items`
--

CREATE TABLE `import_items` (
  `id` int(11) NOT NULL,
  `import_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `tracker_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL,
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `lock_version` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT 0,
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `closed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `issues`
--

INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`, `closed_on`) VALUES
(1, 2, 1, 'Xây dựng khung dự án', 'Xây dựng các giao diện UI/UX cho hệ thống ở nhánh FE và các logic nghiệp vụ ở phía nhánh BE', '2025-12-06', NULL, 5, 5, 3, 1, 1, 13, '2025-12-06 03:34:58', '2025-12-07 15:41:22', '2025-12-06', 100, 1, NULL, 1, 1, 2, 0, '2025-12-06 13:05:31'),
(2, 1, 1, 'Test version1.0', 'Clone code trên github về test. Sau đó tạo các báo cáo lỗi', '2025-12-06', NULL, 5, 6, 3, 1, 1, 7, '2025-12-06 06:07:52', '2025-12-07 15:41:22', '2025-12-06', 100, 0.5, NULL, 2, 1, 2, 0, '2025-12-06 16:43:36'),
(3, 1, 1, 'Lỗi ngày sinh', 'Ngày sinh không thể chọn trong tương lai', '2025-12-06', NULL, 5, NULL, 3, 2, 6, 14, '2025-12-06 08:21:46', '2025-12-07 17:39:24', '2025-12-06', 100, 1, NULL, 3, 1, 2, 0, '2025-12-08 00:39:24'),
(4, 1, 1, 'Sửa lỗi ngày sinh', 'Dev sửa lỗi', '2025-12-06', NULL, 5, 5, 2, 1, 1, 7, '2025-12-06 08:24:14', '2025-12-07 15:41:22', '2025-12-06', 100, 1, NULL, 4, 1, 2, 0, '2025-12-06 15:36:41'),
(5, 1, 1, 'Lỗi lộ mật khẩu ', 'Lộ mật khẩu trên database', '2025-12-06', NULL, 5, NULL, 3, 2, 6, 13, '2025-12-06 08:57:01', '2025-12-07 17:44:33', '2025-12-06', 100, 1, NULL, 5, 1, 2, 0, '2025-12-08 00:44:33'),
(6, 2, 1, 'Thêm tính năng mã', 'Mã hóa password người dùng dưới database', '2025-12-06', NULL, 5, 5, 4, 1, 1, 6, '2025-12-06 08:58:26', '2025-12-07 15:41:22', '2025-12-06', 100, 1, NULL, 6, 1, 2, 0, '2025-12-06 16:06:29'),
(7, 1, 1, 'Lôi SQL INJECTION', 'Hệ thống có thể bị hack bàng câu lện SQL', '2025-12-06', NULL, 5, NULL, 5, 2, 6, 12, '2025-12-06 09:28:42', '2025-12-07 17:54:52', '2025-12-06', 100, 1, NULL, 7, 1, 2, 0, '2025-12-08 00:54:52'),
(8, 1, 1, 'Lỗi Nghiêm Trọng hệ thống', 'Hệ thống dễ dàng tấn công bằng câu lệnh', '2025-12-06', NULL, 5, 5, 5, 1, 1, 7, '2025-12-06 09:31:55', '2025-12-07 15:41:22', '2025-12-06', 100, NULL, NULL, 8, 1, 2, 0, '2025-12-06 16:42:15'),
(9, 3, 1, 'Đẩy code', 'Megre Vào nhánh main ổn định', '2025-12-06', NULL, 5, 5, 3, 1, 1, 6, '2025-12-06 09:44:21', '2025-12-07 15:41:22', '2025-12-06', 100, 1, NULL, 9, 1, 2, 0, '2025-12-06 16:46:56'),
(10, 2, 1, 'Update hệ thống', 'Chuyển toàn bộ hệ thống quản lý sinh viên từ PHP thuần sang sử dụng framework Laravel.', '2025-12-07', NULL, 5, 5, 3, 2, 1, 10, '2025-12-07 16:14:11', '2025-12-07 17:56:49', '2025-12-07', 100, 2, NULL, 10, 1, 2, 0, '2025-12-08 00:56:49'),
(11, 3, 1, 'Test Version 2.0', 'Test các lỗi từ version 1.0 cho version 2.0', '2025-12-08', NULL, 5, 6, 3, 2, 1, 6, '2025-12-07 17:28:32', '2025-12-07 17:55:58', '2025-12-08', 100, 1, NULL, 11, 1, 2, 0, '2025-12-08 00:55:58'),
(12, 2, 1, 'Thêm tính năng', 'Báo cáo & Phân tích -Báo cáo học tập chi tiết - Phân tích xu hướng điểm\r\n', '2025-12-08', NULL, 5, 5, 2, 2, 1, 7, '2025-12-07 17:59:46', '2025-12-07 18:37:39', '2025-12-08', 100, 2, NULL, 12, 1, 2, 0, '2025-12-08 01:37:39'),
(13, 2, 1, 'Test chức năng #12', 'kiểm tra độ ổn định của chức năng báo cáo', '2025-12-08', NULL, 5, 6, 3, 2, 1, 8, '2025-12-07 18:11:17', '2025-12-07 18:36:20', '2025-12-08', 100, 0.5, NULL, 13, 1, 2, 0, '2025-12-08 01:36:20'),
(14, 1, 1, 'Sửa lỗi', 'Lỗi xuất pdf ở chức năng #12 ', '2025-12-08', NULL, 5, 5, 5, 2, 6, 10, '2025-12-07 18:18:58', '2025-12-07 18:37:11', '2025-12-08', 100, 1, NULL, 14, 1, 2, 0, '2025-12-08 01:37:11'),
(15, 2, 1, 'Responsive', 'Thêm đa dạng ở mọi nền tảng thiết bị', '2025-12-08', NULL, 5, 5, 3, 2, 1, 9, '2025-12-07 18:40:12', '2025-12-07 18:57:13', '2025-12-08', 100, 1, NULL, 15, 1, 2, 0, '2025-12-08 01:57:13'),
(16, 2, 1, 'Test responsive', 'Test giao diện trên các nền tảng', '2025-12-08', NULL, 5, 6, 2, 2, 1, 7, '2025-12-07 18:47:57', '2025-12-07 18:54:17', '2025-12-08', 100, 1, NULL, 16, 1, 2, 0, '2025-12-08 01:54:17'),
(17, 1, 1, 'Phát hiện lỗi', 'Lỗi không hiển thị thông tin sinh viên khi chỉnh sửa', '2025-12-08', NULL, 5, NULL, 5, 2, 6, 7, '2025-12-07 18:55:53', '2025-12-07 19:07:54', '2025-12-08', 100, 1, NULL, 17, 1, 2, 0, '2025-12-08 02:07:54'),
(18, 1, 1, 'Lỗi hiển thị', 'Lỗi hiển thị undefined khi chỉnh sửa 1 thông tin của 1 sinh viên', '2025-12-08', NULL, 5, 5, 3, 2, 1, 9, '2025-12-07 18:58:59', '2025-12-07 19:08:06', '2025-12-08', 100, 0.5, NULL, 18, 1, 2, 0, '2025-12-08 02:08:06'),
(19, 3, 1, 'Đẩy code', 'Hợp nhất vào nhánh main ổn định', '2025-12-08', NULL, 5, 5, 2, 2, 1, 7, '2025-12-07 19:08:56', '2025-12-07 19:34:42', '2025-12-08', 100, 1, NULL, 19, 1, 2, 0, '2025-12-08 02:34:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `issue_categories`
--

CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `issue_relations`
--

CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `issue_statuses`
--

CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(11) DEFAULT NULL,
  `default_done_ratio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `issue_statuses`
--

INSERT INTO `issue_statuses` (`id`, `name`, `is_closed`, `position`, `default_done_ratio`) VALUES
(1, 'New', 0, 1, NULL),
(2, 'In Progress', 0, 2, NULL),
(3, 'Resolved', 0, 3, NULL),
(4, 'Feedback', 0, 4, NULL),
(5, 'Closed', 1, 5, NULL),
(6, 'Rejected', 1, 6, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `journals`
--

CREATE TABLE `journals` (
  `id` int(11) NOT NULL,
  `journalized_id` int(11) NOT NULL DEFAULT 0,
  `journalized_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `private_notes` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `journals`
--

INSERT INTO `journals` (`id`, `journalized_id`, `journalized_type`, `user_id`, `notes`, `created_on`, `private_notes`) VALUES
(1, 1, 'Issue', 5, '', '2025-12-06 10:36:20', 0),
(2, 1, 'Issue', 1, 'Code trong nhánh dev\r\n\r\n', '2025-12-06 10:42:20', 0),
(3, 1, 'Issue', 5, '', '2025-12-06 11:31:41', 0),
(4, 1, 'Issue', 1, '', '2025-12-06 11:39:50', 0),
(5, 1, 'Issue', 5, '', '2025-12-06 12:01:35', 0),
(6, 1, 'Issue', 5, '', '2025-12-06 12:07:23', 0),
(7, 1, 'Issue', 5, '', '2025-12-06 12:22:43', 0),
(8, 1, 'Issue', 5, '', '2025-12-06 12:23:20', 0),
(9, 1, 'Issue', 5, '', '2025-12-06 12:23:36', 0),
(10, 1, 'Issue', 5, '', '2025-12-06 13:04:47', 0),
(11, 1, 'Issue', 1, '', '2025-12-06 13:05:31', 0),
(12, 4, 'Issue', 5, '', '2025-12-06 15:24:51', 0),
(13, 4, 'Issue', 5, '', '2025-12-06 15:30:12', 0),
(14, 4, 'Issue', 5, '', '2025-12-06 15:30:19', 0),
(15, 3, 'Issue', 1, '', '2025-12-06 15:30:36', 0),
(16, 4, 'Issue', 5, 'thêm minh chứng', '2025-12-06 15:31:43', 0),
(17, 3, 'Issue', 6, 'Lỗi đã được khắc phục', '2025-12-06 15:36:02', 0),
(18, 3, 'Issue', 1, '', '2025-12-06 15:36:15', 0),
(19, 3, 'Issue', 1, '', '2025-12-06 15:36:20', 0),
(20, 3, 'Issue', 1, '', '2025-12-06 15:36:38', 0),
(21, 4, 'Issue', 1, '', '2025-12-06 15:36:41', 0),
(22, 5, 'Issue', 1, '', '2025-12-06 15:58:54', 0),
(23, 6, 'Issue', 5, '', '2025-12-06 15:59:23', 0),
(24, 6, 'Issue', 5, '', '2025-12-06 16:02:42', 0),
(25, 6, 'Issue', 5, '', '2025-12-06 16:02:48', 0),
(26, 5, 'Issue', 6, 'Mã hóa mật khâu thành công', '2025-12-06 16:06:15', 0),
(27, 6, 'Issue', 1, '', '2025-12-06 16:06:29', 0),
(28, 5, 'Issue', 1, '', '2025-12-06 16:06:36', 0),
(29, 2, 'Issue', 1, '', '2025-12-06 16:17:16', 0),
(30, 7, 'Issue', 1, '', '2025-12-06 16:29:18', 0),
(31, 8, 'Issue', 5, '', '2025-12-06 16:34:22', 0),
(32, 8, 'Issue', 5, '', '2025-12-06 16:34:33', 0),
(33, 8, 'Issue', 6, 'Sửa lỗi SQL INJECTION ', '2025-12-06 16:36:42', 0),
(34, 8, 'Issue', 1, 'Tran Minh Hung đã viết (#note-3):\r\n> Sửa lỗi SQL INJECTION\r\n\r\nKhông comment tester trên nhánh này\r\n', '2025-12-06 16:39:10', 0),
(35, 7, 'Issue', 6, 'Comment quá trình test lại\r\nHệ thống đã được bảo vệ', '2025-12-06 16:41:48', 0),
(36, 8, 'Issue', 1, '', '2025-12-06 16:42:15', 0),
(37, 7, 'Issue', 1, '', '2025-12-06 16:42:18', 0),
(38, 2, 'Issue', 6, 'Hệ thống phiên banr version đã test các lỗi phổ biến', '2025-12-06 16:43:19', 0),
(39, 2, 'Issue', 1, '', '2025-12-06 16:43:27', 0),
(40, 2, 'Issue', 1, '', '2025-12-06 16:43:31', 0),
(41, 2, 'Issue', 1, '', '2025-12-06 16:43:36', 0),
(42, 9, 'Issue', 5, '', '2025-12-06 16:44:41', 0),
(43, 9, 'Issue', 5, '', '2025-12-06 16:46:35', 0),
(44, 9, 'Issue', 5, '', '2025-12-06 16:46:40', 0),
(45, 9, 'Issue', 1, '', '2025-12-06 16:46:56', 0),
(46, 1, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(47, 2, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(48, 3, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(49, 4, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(50, 5, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(51, 6, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(52, 7, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(53, 8, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(54, 9, 'Issue', 1, 'Thêm các issue vào phiên bản version 1.0', '2025-12-07 22:41:22', 0),
(55, 10, 'Issue', 5, '', '2025-12-07 23:14:27', 0),
(56, 10, 'Issue', 5, '', '2025-12-07 23:26:30', 0),
(57, 10, 'Issue', 5, '', '2025-12-07 23:32:09', 0),
(58, 10, 'Issue', 5, '', '2025-12-08 00:19:39', 0),
(59, 10, 'Issue', 5, '', '2025-12-08 00:24:42', 0),
(60, 10, 'Issue', 5, '', '2025-12-08 00:24:47', 0),
(61, 10, 'Issue', 5, 'QUAN Admin đã viết:\r\n> Chuyển toàn bộ hệ thống quản lý sinh viên từ PHP thuần sang sử dụng framework Laravel.\r\n\r\n> Đã hoàn tất chuyển dự án thành laravel\r\n', '2025-12-08 00:25:52', 0),
(62, 11, 'Issue', 6, '', '2025-12-08 00:33:42', 0),
(63, 3, 'Issue', 6, '', '2025-12-08 00:34:07', 0),
(64, 3, 'Issue', 6, '', '2025-12-08 00:34:24', 0),
(65, 3, 'Issue', 6, '', '2025-12-08 00:35:31', 0),
(66, 3, 'Issue', 6, 'Đã kiểm tra trên bản 2.0', '2025-12-08 00:38:14', 0),
(67, 3, 'Issue', 6, '', '2025-12-08 00:38:25', 0),
(68, 3, 'Issue', 6, '', '2025-12-08 00:38:33', 0),
(69, 3, 'Issue', 6, '', '2025-12-08 00:39:24', 0),
(70, 11, 'Issue', 6, '', '2025-12-08 00:39:35', 0),
(71, 5, 'Issue', 6, '', '2025-12-08 00:40:45', 0),
(72, 5, 'Issue', 6, '', '2025-12-08 00:40:56', 0),
(73, 5, 'Issue', 6, '', '2025-12-08 00:41:04', 0),
(74, 5, 'Issue', 6, '', '2025-12-08 00:41:24', 0),
(75, 5, 'Issue', 6, 'Chạy ổn định trên version 2.0', '2025-12-08 00:44:06', 0),
(76, 5, 'Issue', 6, '', '2025-12-08 00:44:13', 0),
(77, 5, 'Issue', 6, '', '2025-12-08 00:44:17', 0),
(78, 5, 'Issue', 6, '', '2025-12-08 00:44:33', 0),
(79, 7, 'Issue', 6, '', '2025-12-08 00:45:44', 0),
(80, 7, 'Issue', 6, '', '2025-12-08 00:46:03', 0),
(81, 7, 'Issue', 6, '', '2025-12-08 00:46:12', 0),
(82, 7, 'Issue', 6, 'Hệ thống bảo vệ thành công', '2025-12-08 00:54:29', 0),
(83, 7, 'Issue', 6, '', '2025-12-08 00:54:39', 0),
(84, 7, 'Issue', 6, '', '2025-12-08 00:54:48', 0),
(85, 7, 'Issue', 6, '', '2025-12-08 00:54:52', 0),
(86, 11, 'Issue', 6, '', '2025-12-08 00:55:38', 0),
(87, 11, 'Issue', 6, '', '2025-12-08 00:55:48', 0),
(88, 11, 'Issue', 6, '', '2025-12-08 00:55:58', 0),
(89, 10, 'Issue', 1, 'QUAN Admin đã viết:\r\n> Chuyển toàn bộ hệ thống quản lý sinh viên từ PHP thuần sang sử dụng framework Laravel.\r\n\r\nHệ thống đã được test các lỗi từ version 1.0', '2025-12-08 00:56:37', 0),
(90, 10, 'Issue', 1, '', '2025-12-08 00:56:49', 0),
(91, 12, 'Issue', 5, '', '2025-12-08 01:00:19', 0),
(92, 12, 'Issue', 5, '', '2025-12-08 01:01:50', 0),
(93, 12, 'Issue', 5, '', '2025-12-08 01:10:06', 0),
(94, 12, 'Issue', 5, '', '2025-12-08 01:10:11', 0),
(95, 13, 'Issue', 6, '', '2025-12-08 01:11:40', 0),
(96, 13, 'Issue', 6, 'các chức năng khác đã được test nhưng chức năng xuất file pdf không được', '2025-12-08 01:16:58', 0),
(97, 13, 'Issue', 6, '', '2025-12-08 01:17:11', 0),
(98, 14, 'Issue', 5, '', '2025-12-08 01:19:32', 0),
(99, 14, 'Issue', 1, 'Lỗi đã được kiểm chứng', '2025-12-08 01:20:42', 0),
(100, 14, 'Issue', 5, '', '2025-12-08 01:32:53', 0),
(101, 14, 'Issue', 5, '', '2025-12-08 01:33:00', 0),
(102, 14, 'Issue', 5, '', '2025-12-08 01:33:08', 0),
(103, 14, 'Issue', 1, '', '2025-12-08 01:34:49', 0),
(104, 14, 'Issue', 1, 'Tester đang test lại', '2025-12-08 01:35:27', 0),
(105, 13, 'Issue', 6, 'Test chức năng file pdf đã ổn định ', '2025-12-08 01:35:58', 0),
(106, 13, 'Issue', 6, '', '2025-12-08 01:36:11', 0),
(107, 13, 'Issue', 6, '', '2025-12-08 01:36:16', 0),
(108, 13, 'Issue', 6, '', '2025-12-08 01:36:20', 0),
(109, 14, 'Issue', 6, 'Đã ổn định', '2025-12-08 01:36:45', 0),
(110, 14, 'Issue', 1, '', '2025-12-08 01:37:11', 0),
(111, 12, 'Issue', 1, 'Đã ổn định', '2025-12-08 01:37:31', 0),
(112, 12, 'Issue', 1, '', '2025-12-08 01:37:39', 0),
(113, 15, 'Issue', 5, '', '2025-12-08 01:40:36', 0),
(114, 15, 'Issue', 5, '', '2025-12-08 01:43:07', 0),
(115, 15, 'Issue', 5, '', '2025-12-08 01:43:30', 0),
(116, 15, 'Issue', 5, '', '2025-12-08 01:43:48', 0),
(117, 15, 'Issue', 5, '', '2025-12-08 01:44:18', 0),
(118, 15, 'Issue', 5, '', '2025-12-08 01:46:28', 0),
(119, 15, 'Issue', 5, '', '2025-12-08 01:46:38', 0),
(120, 16, 'Issue', 6, '', '2025-12-08 01:52:12', 0),
(121, 16, 'Issue', 6, '', '2025-12-08 01:52:20', 0),
(122, 16, 'Issue', 6, 'Giao diện đáp ứng mọi thiết bị', '2025-12-08 01:54:03', 0),
(123, 16, 'Issue', 6, '', '2025-12-08 01:54:10', 0),
(124, 16, 'Issue', 6, '', '2025-12-08 01:54:13', 0),
(125, 16, 'Issue', 6, '', '2025-12-08 01:54:17', 0),
(126, 17, 'Issue', 1, 'Chức năng lỗi đã kiểm chứng đang chờ sửa', '2025-12-08 01:56:54', 0),
(127, 15, 'Issue', 1, '', '2025-12-08 01:57:13', 0),
(128, 17, 'Issue', 1, '', '2025-12-08 01:59:12', 0),
(129, 18, 'Issue', 5, '', '2025-12-08 01:59:17', 0),
(130, 18, 'Issue', 5, '', '2025-12-08 01:59:21', 0),
(131, 18, 'Issue', 5, '', '2025-12-08 02:04:24', 0),
(132, 18, 'Issue', 5, '', '2025-12-08 02:04:30', 0),
(133, 18, 'Issue', 5, '', '2025-12-08 02:04:34', 0),
(134, 18, 'Issue', 5, '', '2025-12-08 02:04:41', 0),
(135, 18, 'Issue', 1, 'Tester đang test', '2025-12-08 02:05:41', 0),
(136, 17, 'Issue', 6, 'Hệ thống đã được sửa', '2025-12-08 02:07:36', 0),
(137, 17, 'Issue', 6, '', '2025-12-08 02:07:47', 0),
(138, 17, 'Issue', 6, '', '2025-12-08 02:07:50', 0),
(139, 17, 'Issue', 6, '', '2025-12-08 02:07:54', 0),
(140, 18, 'Issue', 1, '', '2025-12-08 02:08:06', 0),
(141, 19, 'Issue', 5, '', '2025-12-08 02:09:25', 0),
(142, 19, 'Issue', 5, '', '2025-12-08 02:09:30', 0),
(143, 19, 'Issue', 5, '', '2025-12-08 02:33:49', 0),
(144, 19, 'Issue', 5, '', '2025-12-08 02:34:14', 0),
(145, 19, 'Issue', 1, 'Đã hoàn tất hợp nhất', '2025-12-08 02:34:34', 0),
(146, 19, 'Issue', 1, '', '2025-12-08 02:34:42', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `journal_details`
--

CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL,
  `journal_id` int(11) NOT NULL DEFAULT 0,
  `property` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prop_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `old_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `journal_details`
--

INSERT INTO `journal_details` (`id`, `journal_id`, `property`, `prop_key`, `old_value`, `value`) VALUES
(1, 1, 'attr', 'status_id', '1', '2'),
(2, 3, 'attr', 'done_ratio', '0', '30'),
(3, 4, 'attr', 'due_date', NULL, '2025-12-06'),
(4, 4, 'attr', 'estimated_hours', NULL, '1.0'),
(5, 5, 'attr', 'done_ratio', '30', '50'),
(6, 6, 'attr', 'done_ratio', '50', '70'),
(7, 7, 'attr', 'done_ratio', '70', '100'),
(8, 8, 'attr', 'status_id', '2', '3'),
(9, 9, 'attr', 'status_id', '3', '4'),
(10, 10, 'attr', 'status_id', '4', '3'),
(11, 11, 'attr', 'status_id', '3', '5'),
(12, 12, 'attr', 'status_id', '1', '2'),
(13, 13, 'attr', 'done_ratio', '0', '100'),
(14, 14, 'attr', 'status_id', '2', '4'),
(15, 15, 'attr', 'status_id', '1', '2'),
(16, 16, 'attachment', '7', NULL, '2.png'),
(17, 17, 'attachment', '8', NULL, '3.png'),
(18, 18, 'attr', 'done_ratio', '0', '100'),
(19, 19, 'attr', 'status_id', '2', '3'),
(20, 20, 'attr', 'status_id', '3', '5'),
(21, 21, 'attr', 'status_id', '4', '5'),
(22, 22, 'attr', 'status_id', '1', '2'),
(23, 23, 'attr', 'status_id', '1', '2'),
(24, 24, 'attr', 'done_ratio', '0', '100'),
(25, 25, 'attr', 'status_id', '2', '4'),
(26, 26, 'attachment', '10', NULL, '5.png'),
(27, 27, 'attr', 'status_id', '4', '5'),
(28, 28, 'attr', 'status_id', '2', '5'),
(29, 29, 'attr', 'subject', 'Test', 'Test version1.0'),
(30, 30, 'attr', 'status_id', '1', '2'),
(31, 31, 'attr', 'status_id', '1', '2'),
(32, 32, 'attr', 'status_id', '2', '4'),
(33, 33, 'attachment', '15', NULL, '9.png'),
(34, 35, 'attachment', '16', NULL, '9.png'),
(35, 36, 'attr', 'status_id', '4', '5'),
(36, 37, 'attr', 'status_id', '2', '5'),
(37, 39, 'attr', 'done_ratio', '0', '100'),
(38, 40, 'attr', 'status_id', '1', '2'),
(39, 41, 'attr', 'status_id', '2', '5'),
(40, 42, 'attr', 'status_id', '1', '2'),
(41, 43, 'attr', 'done_ratio', '0', '100'),
(42, 44, 'attr', 'status_id', '2', '4'),
(43, 45, 'attr', 'status_id', '4', '5'),
(44, 46, 'attr', 'fixed_version_id', NULL, '1'),
(45, 47, 'attr', 'fixed_version_id', NULL, '1'),
(46, 48, 'attr', 'fixed_version_id', NULL, '1'),
(47, 49, 'attr', 'fixed_version_id', NULL, '1'),
(48, 50, 'attr', 'fixed_version_id', NULL, '1'),
(49, 50, 'attr', 'done_ratio', '0', '100'),
(50, 51, 'attr', 'fixed_version_id', NULL, '1'),
(51, 52, 'attr', 'fixed_version_id', NULL, '1'),
(52, 52, 'attr', 'done_ratio', '0', '100'),
(53, 53, 'attr', 'fixed_version_id', NULL, '1'),
(54, 53, 'attr', 'done_ratio', '0', '100'),
(55, 54, 'attr', 'fixed_version_id', NULL, '1'),
(56, 55, 'attr', 'status_id', '1', '2'),
(57, 56, 'attr', 'done_ratio', '0', '30'),
(58, 57, 'attr', 'done_ratio', '30', '50'),
(59, 58, 'attr', 'done_ratio', '50', '80'),
(60, 59, 'attr', 'done_ratio', '80', '100'),
(61, 60, 'attr', 'status_id', '2', '4'),
(62, 62, 'attr', 'status_id', '1', '2'),
(63, 63, 'attr', 'fixed_version_id', '1', '2'),
(64, 64, 'attr', 'status_id', '5', '2'),
(65, 65, 'attr', 'done_ratio', '100', '0'),
(66, 66, 'attachment', '17', NULL, '10.png'),
(67, 67, 'attr', 'done_ratio', '0', '100'),
(68, 68, 'attr', 'status_id', '2', '3'),
(69, 69, 'attr', 'status_id', '3', '5'),
(70, 70, 'attr', 'done_ratio', '0', '30'),
(71, 71, 'attr', 'assigned_to_id', '1', NULL),
(72, 72, 'attr', 'fixed_version_id', '1', '2'),
(73, 73, 'attr', 'status_id', '5', '2'),
(74, 74, 'attr', 'done_ratio', '100', '0'),
(75, 75, 'attachment', '18', NULL, '11.png'),
(76, 76, 'attr', 'done_ratio', '0', '100'),
(77, 77, 'attr', 'status_id', '2', '3'),
(78, 78, 'attr', 'status_id', '3', '5'),
(79, 79, 'attr', 'fixed_version_id', '1', '2'),
(80, 80, 'attr', 'status_id', '5', '2'),
(81, 81, 'attr', 'done_ratio', '100', '0'),
(82, 82, 'attachment', '19', NULL, '12.png'),
(83, 83, 'attr', 'done_ratio', '0', '100'),
(84, 84, 'attr', 'status_id', '2', '3'),
(85, 85, 'attr', 'status_id', '3', '5'),
(86, 86, 'attr', 'done_ratio', '30', '100'),
(87, 87, 'attr', 'status_id', '2', '3'),
(88, 88, 'attr', 'status_id', '3', '5'),
(89, 90, 'attr', 'status_id', '4', '5'),
(90, 91, 'attr', 'status_id', '1', '2'),
(91, 92, 'attr', 'done_ratio', '0', '30'),
(92, 93, 'attr', 'done_ratio', '30', '100'),
(93, 94, 'attr', 'status_id', '2', '4'),
(94, 95, 'attr', 'status_id', '1', '2'),
(95, 96, 'attachment', '20', NULL, '14.png'),
(96, 96, 'attachment', '21', NULL, '13.png'),
(97, 97, 'attr', 'done_ratio', '0', '80'),
(98, 98, 'attr', 'status_id', '1', '2'),
(99, 100, 'attr', 'done_ratio', '0', '50'),
(100, 101, 'attr', 'done_ratio', '50', '100'),
(101, 102, 'attr', 'status_id', '2', '3'),
(102, 103, 'attr', 'status_id', '3', '4'),
(103, 105, 'attachment', '22', NULL, '16.png'),
(104, 105, 'attachment', '23', NULL, '15.png'),
(105, 106, 'attr', 'done_ratio', '80', '100'),
(106, 107, 'attr', 'status_id', '2', '3'),
(107, 108, 'attr', 'status_id', '3', '5'),
(108, 110, 'attr', 'status_id', '4', '5'),
(109, 112, 'attr', 'status_id', '4', '5'),
(110, 113, 'attr', 'status_id', '1', '2'),
(111, 114, 'attr', 'done_ratio', '0', '10'),
(112, 115, 'attr', 'done_ratio', '10', '30'),
(113, 116, 'attr', 'done_ratio', '30', '50'),
(114, 117, 'attr', 'done_ratio', '50', '70'),
(115, 118, 'attr', 'done_ratio', '70', '100'),
(116, 119, 'attr', 'status_id', '2', '4'),
(117, 120, 'attr', 'status_id', '1', '2'),
(118, 121, 'attr', 'done_ratio', '0', '50'),
(119, 122, 'attachment', '26', NULL, '19.png'),
(120, 122, 'attachment', '25', NULL, '18.png'),
(121, 122, 'attachment', '27', NULL, '17.png'),
(122, 123, 'attr', 'done_ratio', '50', '100'),
(123, 124, 'attr', 'status_id', '2', '3'),
(124, 125, 'attr', 'status_id', '3', '5'),
(125, 127, 'attr', 'status_id', '4', '5'),
(126, 128, 'attr', 'status_id', '1', '2'),
(127, 129, 'attr', 'status_id', '1', '2'),
(128, 130, 'attr', 'done_ratio', '0', '20'),
(129, 131, 'attr', 'done_ratio', '20', '50'),
(130, 132, 'attr', 'done_ratio', '50', '70'),
(131, 133, 'attr', 'done_ratio', '70', '100'),
(132, 134, 'attr', 'status_id', '2', '4'),
(133, 136, 'attachment', '30', NULL, '21.png'),
(134, 137, 'attr', 'done_ratio', '0', '100'),
(135, 138, 'attr', 'status_id', '2', '3'),
(136, 139, 'attr', 'status_id', '3', '5'),
(137, 140, 'attr', 'status_id', '4', '5'),
(138, 141, 'attr', 'status_id', '1', '2'),
(139, 142, 'attr', 'done_ratio', '0', '30'),
(140, 143, 'attr', 'done_ratio', '30', '100'),
(141, 144, 'attr', 'status_id', '2', '4'),
(142, 146, 'attr', 'status_id', '4', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NULL DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `user_id`, `project_id`, `created_on`, `mail_notification`) VALUES
(1, 1, 1, '2025-12-06 03:13:42', 0),
(2, 6, 1, '2025-12-06 03:13:51', 0),
(3, 5, 1, '2025-12-06 03:13:58', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member_roles`
--

CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `member_roles`
--

INSERT INTO `member_roles` (`id`, `member_id`, `role_id`, `inherited_from`) VALUES
(1, 1, 3, NULL),
(2, 2, 6, NULL),
(3, 3, 4, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT 0,
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT 0,
  `sticky` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `created_on` timestamp NULL DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `project_id`, `title`, `summary`, `description`, `author_id`, `created_on`, `comments_count`) VALUES
(1, 1, 'Thông báo Khởi động Dự án Quản lý Sinh viên', 'Chào mừng các thành viên tham gia dự án.', 'Chào team, Hôm nay chúng ta chính thức bắt đầu dự án Website QLSV. Mời mọi người vào tab Documents để đọc kỹ quy định làm việc và tài liệu đặc tả (SRS) trước khi bắt đầu nhận task. Chúc dự án thành công!', 1, '2025-12-06 03:30:45', 0),
(2, 1, 'Thông báo kết thúc', 'Kết thúc hệ thống QLSV version1.0', 'Cảm ơn mọi người đã cố gắng và làm việc !!!!', 1, '2025-12-06 09:48:08', 0),
(3, 1, 'Thông báo: Nâng cấp hệ thống lên Version 2.0', 'Thông báo về việc cập nhật các tính năng mới cho phân hệ Quản lý sinh viên và lịch bảo trì hệ thống dự kiến vào chiều nay.', 'Chào cả team,\r\n\r\nBan quản trị dự án xin thông báo đã hoàn tất việc đóng gói Version 1.0. Dưới đây là các thông tin chi tiết về đợt nâng cấp này:\r\n\r\nThời gian nâng cấp:\r\n\r\nBắt đầu: 23:00 ngày hôm nay.\r\n\r\nDự kiến hoàn thành: 3:00 ngày hôm sau\r\n\r\nLưu ý: Trong thời gian này server có thể gián đoạn, mọi người vui lòng lưu lại công việc trước giờ G.\r\n\r\nCác yêu cầu cần làm cho hệ thống chi tiết trong file world', 1, '2025-12-07 16:12:47', 0),
(4, 1, 'Thông báo kết thúc v2.0', 'Nâng cấp thành công kịp tiến độ', 'Cảm ơn mọi người đã làm việc và hoàn tất công việc trước ngày hẹn\r\nDear Team !!!!!!', 1, '2025-12-07 19:36:17', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` int(11) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `inherit_members` tinyint(1) NOT NULL DEFAULT 0,
  `default_version_id` int(11) DEFAULT NULL,
  `default_assigned_to_id` int(11) DEFAULT NULL,
  `default_issue_query_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `homepage`, `is_public`, `parent_id`, `created_on`, `updated_on`, `identifier`, `status`, `lft`, `rgt`, `inherit_members`, `default_version_id`, `default_assigned_to_id`, `default_issue_query_id`) VALUES
(1, 'Quản Lý Sinh Viên', 'Xây dựng hệ thống quản lý sinh viên là công cụ giúp nhà trường lưu trữ, tổ chức và xử lý thông tin liên quan đến sinh viên từ lúc nhập học cho đến khi tốt nghiệp. Mục tiêu là chuyển đổi từ quản lý hồ sơ giấy sang số hóa để tăng tính chính xác và tốc độ xử lý.', '', 1, NULL, '2025-12-06 03:13:26', '2025-12-06 03:13:26', 'quan-ly-sinh-vien', 1, 1, 2, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects_trackers`
--

CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT 0,
  `tracker_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `projects_trackers`
--

INSERT INTO `projects_trackers` (`project_id`, `tracker_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `column_names` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_criteria` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` int(11) DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `queries`
--

INSERT INTO `queries` (`id`, `project_id`, `name`, `filters`, `user_id`, `column_names`, `sort_criteria`, `group_by`, `type`, `visibility`, `options`) VALUES
(1, NULL, 'Issues assigned to me', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nassigned_to_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n', 0, NULL, '---\n- - priority\n  - desc\n- - updated_on\n  - desc\n', NULL, 'IssueQuery', 2, NULL),
(2, NULL, 'Reported issues', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nauthor_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n', 0, NULL, '---\n- - updated_on\n  - desc\n', NULL, 'IssueQuery', 2, NULL),
(3, NULL, 'Updated issues', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nupdated_by:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n', 0, NULL, '---\n- - updated_on\n  - desc\n', NULL, 'IssueQuery', 2, NULL),
(4, NULL, 'Watched issues', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nwatcher_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n', 0, NULL, '---\n- - updated_on\n  - desc\n', NULL, 'IssueQuery', 2, NULL),
(5, NULL, 'My projects', '---\nstatus:\n  :operator: \"=\"\n  :values:\n  - \'1\'\nid:\n  :operator: \"=\"\n  :values:\n  - mine\n', 0, NULL, NULL, NULL, 'ProjectQuery', 2, NULL),
(6, NULL, 'My bookmarks', '---\nstatus:\n  :operator: \"=\"\n  :values:\n  - \'1\'\nid:\n  :operator: \"=\"\n  :values:\n  - bookmarks\n', 0, NULL, NULL, NULL, 'ProjectQuery', 2, NULL),
(7, NULL, 'Spent time', '---\nspent_on:\n  :operator: \"*\"\n  :values:\n  - \'\'\nuser_id:\n  :operator: \"=\"\n  :values:\n  - me\n', 0, NULL, '---\n- - spent_on\n  - desc\n', NULL, 'TimeEntryQuery', 2, '---\n:totalable_names:\n- :hours\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `queries_roles`
--

CREATE TABLE `queries_roles` (
  `query_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `repositories`
--

CREATE TABLE `repositories` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `root_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_encoding` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_encoding` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `created_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT NULL,
  `assignable` tinyint(1) DEFAULT 1,
  `builtin` int(11) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issues_visibility` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `users_visibility` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `time_entries_visibility` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `all_roles_managed` tinyint(1) NOT NULL DEFAULT 1,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `position`, `assignable`, `builtin`, `permissions`, `issues_visibility`, `users_visibility`, `time_entries_visibility`, `all_roles_managed`, `settings`) VALUES
(1, 'Non member', 0, 1, 1, '---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n', 'default', 'all', 'all', 1, NULL),
(2, 'Anonymous', 0, 1, 2, '---\n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n', 'default', 'all', 'all', 1, NULL),
(3, 'Manager', 1, 1, 0, '---\n- :add_project\n- :edit_project\n- :close_project\n- :delete_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_public_queries\n- :save_queries\n- :view_issues\n- :add_issues\n- :edit_issues\n- :edit_own_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :mention_users\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :import_issues\n- :manage_categories\n- :view_time_entries\n- :log_time\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :log_time_for_other_users\n- :import_time_entries\n- :view_news\n- :manage_news\n- :comment_news\n- :view_documents\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_files\n- :manage_files\n- :view_wiki_pages\n- :view_wiki_edits\n- :export_wiki_pages\n- :edit_wiki_pages\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :delete_wiki_pages_attachments\n- :view_wiki_page_watchers\n- :add_wiki_page_watchers\n- :delete_wiki_page_watchers\n- :protect_wiki_pages\n- :manage_wiki\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :manage_repository\n- :view_messages\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_message_watchers\n- :add_message_watchers\n- :delete_message_watchers\n- :manage_boards\n- :view_calendar\n- :view_gantt\n', 'all', 'all', 'all', 1, NULL),
(4, 'Developer', 2, 1, 0, '---\n- :manage_versions\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :view_private_notes\n- :set_notes_private\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :manage_files\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n', 'default', 'all', 'all', 1, NULL),
(5, 'Reporter', 3, 1, 0, '---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n', 'default', 'all', 'all', 1, NULL),
(6, 'Tester', 4, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :edit_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '---\npermissions_all_trackers:\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids:\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles_managed_roles`
--

CREATE TABLE `roles_managed_roles` (
  `role_id` int(11) NOT NULL,
  `managed_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('1'),
('10'),
('100'),
('101'),
('102'),
('103'),
('104'),
('105'),
('106'),
('107'),
('108'),
('11'),
('12'),
('13'),
('14'),
('15'),
('16'),
('17'),
('18'),
('19'),
('2'),
('20'),
('20090214190337'),
('20090312172426'),
('20090312194159'),
('20090318181151'),
('20090323224724'),
('20090401221305'),
('20090401231134'),
('20090403001910'),
('20090406161854'),
('20090425161243'),
('20090503121501'),
('20090503121505'),
('20090503121510'),
('20090614091200'),
('20090704172350'),
('20090704172355'),
('20090704172358'),
('20091010093521'),
('20091017212227'),
('20091017212457'),
('20091017212644'),
('20091017212938'),
('20091017213027'),
('20091017213113'),
('20091017213151'),
('20091017213228'),
('20091017213257'),
('20091017213332'),
('20091017213444'),
('20091017213536'),
('20091017213642'),
('20091017213716'),
('20091017213757'),
('20091017213835'),
('20091017213910'),
('20091017214015'),
('20091017214107'),
('20091017214136'),
('20091017214236'),
('20091017214308'),
('20091017214336'),
('20091017214406'),
('20091017214440'),
('20091017214519'),
('20091017214611'),
('20091017214644'),
('20091017214720'),
('20091017214750'),
('20091025163651'),
('20091108092559'),
('20091114105931'),
('20091123212029'),
('20091205124427'),
('20091220183509'),
('20091220183727'),
('20091220184736'),
('20091225164732'),
('20091227112908'),
('20100129193402'),
('20100129193813'),
('20100221100219'),
('20100313132032'),
('20100313171051'),
('20100705164950'),
('20100819172912'),
('20101104182107'),
('20101107130441'),
('20101114115114'),
('20101114115359'),
('20110220160626'),
('20110223180944'),
('20110223180953'),
('20110224000000'),
('20110226120112'),
('20110226120132'),
('20110227125750'),
('20110228000000'),
('20110228000100'),
('20110401192910'),
('20110408103312'),
('20110412065600'),
('20110511000000'),
('20110902000000'),
('20111201201315'),
('20120115143024'),
('20120115143100'),
('20120115143126'),
('20120127174243'),
('20120205111326'),
('20120223110929'),
('20120301153455'),
('20120422150750'),
('20120705074331'),
('20120707064544'),
('20120714122000'),
('20120714122100'),
('20120714122200'),
('20120731164049'),
('20120930112914'),
('20121026002032'),
('20121026003537'),
('20121209123234'),
('20121209123358'),
('20121213084931'),
('20130110122628'),
('20130201184705'),
('20130202090625'),
('20130207175206'),
('20130207181455'),
('20130215073721'),
('20130215111127'),
('20130215111141'),
('20130217094251'),
('20130602092539'),
('20130710182539'),
('20130713104233'),
('20130713111657'),
('20130729070143'),
('20130911193200'),
('20131004113137'),
('20131005100610'),
('20131124175346'),
('20131210180802'),
('20131214094309'),
('20131215104612'),
('20131218183023'),
('20140228130325'),
('20140903143914'),
('20140920094058'),
('20141029181752'),
('20141029181824'),
('20141109112308'),
('20141122124142'),
('20150113194759'),
('20150113211532'),
('20150113213922'),
('20150113213955'),
('20150208105930'),
('20150510083747'),
('20150525103953'),
('20150526183158'),
('20150528084820'),
('20150528092912'),
('20150528093249'),
('20150725112753'),
('20150730122707'),
('20150730122735'),
('20150921204850'),
('20150921210243'),
('20151020182334'),
('20151020182731'),
('20151021184614'),
('20151021185456'),
('20151021190616'),
('20151024082034'),
('20151025072118'),
('20151031095005'),
('20160404080304'),
('20160416072926'),
('20160529063352'),
('20161001122012'),
('20161002133421'),
('20161010081301'),
('20161010081528'),
('20161010081600'),
('20161126094932'),
('20161220091118'),
('20170207050700'),
('20170302015225'),
('20170309214320'),
('20170320051650'),
('20170418090031'),
('20170419144536'),
('20170723112801'),
('20180501132547'),
('20180913072918'),
('20180923082945'),
('20180923091603'),
('20190315094151'),
('20190315102101'),
('20190510070108'),
('20190620135549'),
('20200826153401'),
('20200826153402'),
('20210704125704'),
('20210705111300'),
('20210728131544'),
('20210801145548'),
('20210801211024'),
('20211213122100'),
('20211213122101'),
('20211213122102'),
('20220224194639'),
('21'),
('22'),
('23'),
('24'),
('25'),
('26'),
('27'),
('28'),
('29'),
('3'),
('30'),
('31'),
('32'),
('33'),
('34'),
('35'),
('36'),
('37'),
('38'),
('39'),
('4'),
('40'),
('41'),
('42'),
('43'),
('44'),
('45'),
('46'),
('47'),
('48'),
('49'),
('5'),
('50'),
('51'),
('52'),
('53'),
('54'),
('55'),
('56'),
('57'),
('58'),
('59'),
('6'),
('60'),
('61'),
('62'),
('63'),
('64'),
('65'),
('66'),
('67'),
('68'),
('69'),
('7'),
('70'),
('71'),
('72'),
('73'),
('74'),
('75'),
('76'),
('77'),
('78'),
('79'),
('8'),
('80'),
('81'),
('82'),
('83'),
('84'),
('85'),
('86'),
('87'),
('88'),
('89'),
('9'),
('90'),
('91'),
('92'),
('93'),
('94'),
('95'),
('96'),
('97'),
('98'),
('99');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `updated_on`) VALUES
(1, 'default_projects_tracker_ids', '---\n- \'1\'\n- \'2\'\n- \'3\'\n', '2025-12-05 15:51:31'),
(2, 'ui_theme', 'classic', '2025-12-05 16:07:31'),
(3, 'default_language', 'vi', '2025-12-05 16:06:59'),
(4, 'force_default_language_for_anonymous', '0', '2025-12-05 16:06:59'),
(5, 'force_default_language_for_loggedin', '0', '2025-12-05 16:06:59'),
(6, 'start_of_week', '', '2025-12-05 16:06:59'),
(7, 'date_format', '', '2025-12-05 16:06:59'),
(8, 'time_format', '', '2025-12-05 16:06:59'),
(9, 'timespan_format', 'minutes', '2025-12-05 16:06:59'),
(10, 'user_format', 'firstname_lastname', '2025-12-05 16:06:59'),
(11, 'gravatar_enabled', '0', '2025-12-05 16:06:59'),
(12, 'thumbnails_enabled', '1', '2025-12-05 16:06:59'),
(13, 'thumbnails_size', '100', '2025-12-05 16:06:59'),
(14, 'new_item_menu_tab', '2', '2025-12-05 16:06:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `time_entries`
--

CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `time_entries`
--

INSERT INTO `time_entries` (`id`, `project_id`, `author_id`, `user_id`, `issue_id`, `hours`, `comments`, `activity_id`, `spent_on`, `tyear`, `tmonth`, `tweek`, `created_on`, `updated_on`) VALUES
(1, 1, 5, 5, 1, 0.5, 'Cần thêm thòi gian để chuyển đổi sang PhP', 9, '2025-12-06', 2025, 12, 49, '2025-12-06 11:47:43', '2025-12-06 11:47:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `action` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `action`, `value`, `created_on`, `updated_on`) VALUES
(1, 1, 'session', '0eb32bb09e1df7234cfea5650da93b3a2e13ccc8', '2025-12-05 22:57:05', '2025-12-05 16:07:31'),
(2, 1, 'feeds', '27f7493a0e2e61ee596f45ab115ea31126e64655', '2025-12-05 22:57:05', '2025-12-05 15:57:05'),
(4, 5, 'session', 'aecef3fd028d413f647587ff648bec65f3c5b875', '2025-12-06 09:27:37', '2025-12-06 02:58:53'),
(5, 5, 'feeds', 'abbe735f758cff61e1e446ed48935175b0eebc5f', '2025-12-06 09:27:37', '2025-12-06 02:27:37'),
(6, 6, 'session', 'dd848ea006be74cb485c0ab00991d9320ffeb9c3', '2025-12-06 09:28:24', '2025-12-06 08:14:03'),
(7, 6, 'feeds', '4808a376b11922db549f5b3dd8b8bce4938da0da', '2025-12-06 09:28:24', '2025-12-06 02:28:24'),
(31, 5, 'session', '8f1c495cbad1f9a9dfe016594dfa14d7c2ccbeab', '2025-12-08 02:09:05', '2025-12-07 19:33:47'),
(32, 1, 'session', 'fd30ab1201e8841c0fe28b93c8d975c478beecb4', '2025-12-08 02:48:25', '2025-12-07 19:49:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trackers`
--

CREATE TABLE `trackers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT 1,
  `fields_bits` int(11) DEFAULT 0,
  `default_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trackers`
--

INSERT INTO `trackers` (`id`, `name`, `description`, `position`, `is_in_roadmap`, `fields_bits`, `default_status_id`) VALUES
(1, 'Bug', NULL, 1, 0, 0, 1),
(2, 'Feature', NULL, 2, 1, 0, 1),
(3, 'Support', NULL, 3, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hashed_password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_notification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `must_change_passwd` tinyint(1) NOT NULL DEFAULT 0,
  `passwd_changed_on` datetime DEFAULT NULL,
  `twofa_scheme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twofa_totp_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twofa_totp_last_used_at` int(11) DEFAULT NULL,
  `twofa_required` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `login`, `hashed_password`, `firstname`, `lastname`, `admin`, `status`, `last_login_on`, `language`, `auth_source_id`, `created_on`, `updated_on`, `type`, `mail_notification`, `salt`, `must_change_passwd`, `passwd_changed_on`, `twofa_scheme`, `twofa_totp_key`, `twofa_totp_last_used_at`, `twofa_required`) VALUES
(1, 'mnhquan', '90e8cee742bc29d3d4f48574dc2bcbbe0ed28249', 'QUAN', 'Admin', 1, 1, '2025-12-08 02:48:25', 'en', NULL, '2025-12-05 15:51:20', '2025-12-05 15:51:20', 'User', 'all', 'c93731c1066a6a60b4b135ab8ee15341', 0, NULL, NULL, NULL, NULL, 0),
(5, 'quang', 'cb6d1da240ff21cbac5ca37d81f9e42f22bc7deb', 'Tran ', 'Van Quang', 0, 1, '2025-12-08 02:09:05', 'vi', NULL, '2025-12-06 02:27:11', '2025-12-06 02:27:11', 'User', 'only_my_events', '3d553628dbb9c81458388ca21a6874f1', 0, '2025-12-06 09:27:11', NULL, NULL, NULL, 0),
(6, 'hung', '1b411ef947574eb66ec344812edf4b91431f0204', 'Tran', 'Minh Hung', 0, 1, '2025-12-08 02:04:51', 'vi', NULL, '2025-12-06 02:28:15', '2025-12-06 02:28:15', 'User', 'only_my_events', 'deb76548c53b846b2aa0e5aac9e442da', 0, '2025-12-06 09:28:15', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `others` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_mail` tinyint(1) DEFAULT 1,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `others`, `hide_mail`, `time_zone`) VALUES
(1, 1, '---\n:no_self_notified: \'1\'\n:auto_watch_on:\n- issue_contributed_to\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:recently_used_project_ids: \'1\'\n:gantt_zoom: 4\n:gantt_months: 1\n:activity_scope:\n- issues\n- changesets\n- news\n- documents\n- files\n- wiki_edits\n- messages\n- time_entries\n', 1, ''),
(2, 5, '---\n:no_self_notified: \'1\'\n:auto_watch_on:\n- \'\'\n- issue_contributed_to\n:notify_about_high_priority_issues: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:recently_used_projects: 3\n:history_default_tab: notes\n:toolbar_language_options: c,cpp,csharp,css,diff,go,groovy,html,java,javascript,objc,perl,php,python,r,ruby,sass,scala,shell,sql,swift,xml,yaml\n:default_issue_query: \'\'\n:default_project_query: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:recently_used_project_ids: \'1\'\n', 1, ''),
(3, 6, '---\n:no_self_notified: \'1\'\n:auto_watch_on:\n- \'\'\n- issue_contributed_to\n:notify_about_high_priority_issues: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:recently_used_projects: 3\n:history_default_tab: notes\n:toolbar_language_options: c,cpp,csharp,css,diff,go,groovy,html,java,javascript,objc,perl,php,python,r,ruby,sass,scala,shell,sql,swift,xml,yaml\n:default_issue_query: \'\'\n:default_project_query: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:recently_used_project_ids: \'1\'\n:gantt_zoom: 2\n:gantt_months: 1\n', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `wiki_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'open',
  `sharing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `versions`
--

INSERT INTO `versions` (`id`, `project_id`, `name`, `description`, `effective_date`, `created_on`, `updated_on`, `wiki_page_title`, `status`, `sharing`) VALUES
(1, 1, 'Version 1.0', 'Version beta', '2025-12-06', '2025-12-07 15:36:28', '2025-12-07 15:51:13', '', 'closed', 'none'),
(2, 1, 'Version 2.0', 'Hoàn thiện phần mềm và nâng cấp.', '2025-12-07', '2025-12-07 15:49:57', '2025-12-07 15:49:57', '', 'open', 'none');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `watchers`
--

CREATE TABLE `watchers` (
  `id` int(11) NOT NULL,
  `watchable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `watchers`
--

INSERT INTO `watchers` (`id`, `watchable_type`, `watchable_id`, `user_id`) VALUES
(1, 'News', 1, 1),
(2, 'Issue', 1, 1),
(3, 'Issue', 2, 1),
(4, 'Issue', 4, 6),
(5, 'Issue', 3, 1),
(6, 'Issue', 4, 1),
(7, 'Issue', 5, 1),
(8, 'Issue', 6, 1),
(9, 'Issue', 7, 1),
(10, 'Issue', 8, 1),
(11, 'Issue', 9, 1),
(12, 'News', 2, 1),
(13, 'News', 3, 1),
(14, 'Issue', 10, 1),
(15, 'Issue', 14, 1),
(16, 'Issue', 12, 1),
(17, 'Issue', 17, 1),
(18, 'Issue', 15, 1),
(19, 'Issue', 18, 1),
(20, 'Issue', 19, 1),
(21, 'News', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wikis`
--

CREATE TABLE `wikis` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wikis`
--

INSERT INTO `wikis` (`id`, `project_id`, `start_page`, `status`) VALUES
(1, 1, 'Wiki', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wiki_contents`
--

CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wiki_content_versions`
--

CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  `compression` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `comments` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wiki_pages`
--

CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wiki_redirects`
--

CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirects_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `redirects_to_wiki_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `workflows`
--

CREATE TABLE `workflows` (
  `id` int(11) NOT NULL,
  `tracker_id` int(11) NOT NULL DEFAULT 0,
  `old_status_id` int(11) NOT NULL DEFAULT 0,
  `new_status_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `assignee` tinyint(1) NOT NULL DEFAULT 0,
  `author` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rule` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `workflows`
--

INSERT INTO `workflows` (`id`, `tracker_id`, `old_status_id`, `new_status_id`, `role_id`, `assignee`, `author`, `type`, `field_name`, `rule`) VALUES
(1, 1, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(2, 1, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(3, 1, 1, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(4, 1, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(5, 1, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(6, 1, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(7, 1, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(8, 1, 2, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(9, 1, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(10, 1, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(11, 1, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(12, 1, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(13, 1, 3, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(14, 1, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(15, 1, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(16, 1, 4, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(17, 1, 4, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(18, 1, 4, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(19, 1, 4, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(20, 1, 4, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(21, 1, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(22, 1, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(23, 1, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(24, 1, 5, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(25, 1, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(26, 1, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(27, 1, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(28, 1, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(29, 1, 6, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(30, 1, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(31, 2, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(32, 2, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(33, 2, 1, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(34, 2, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(35, 2, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(36, 2, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(37, 2, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(38, 2, 2, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(39, 2, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(40, 2, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(41, 2, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(42, 2, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(43, 2, 3, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(44, 2, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(45, 2, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(46, 2, 4, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(47, 2, 4, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(48, 2, 4, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(49, 2, 4, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(50, 2, 4, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(51, 2, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(52, 2, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(53, 2, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(54, 2, 5, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(55, 2, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(56, 2, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(57, 2, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(58, 2, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(59, 2, 6, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(60, 2, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(61, 3, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(62, 3, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(63, 3, 1, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(64, 3, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(65, 3, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(66, 3, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(67, 3, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(68, 3, 2, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(69, 3, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(70, 3, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(71, 3, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(72, 3, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(73, 3, 3, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(74, 3, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(75, 3, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(76, 3, 4, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(77, 3, 4, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(78, 3, 4, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(79, 3, 4, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(80, 3, 4, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(81, 3, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(82, 3, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(83, 3, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(84, 3, 5, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(85, 3, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(86, 3, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(87, 3, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(88, 3, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(89, 3, 6, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(90, 3, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(91, 1, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(95, 1, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(96, 1, 2, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(104, 2, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(105, 2, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(106, 2, 1, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(107, 2, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(108, 2, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(109, 2, 2, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(110, 2, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(111, 2, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(112, 2, 3, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(113, 2, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(114, 2, 4, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(115, 2, 4, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(116, 2, 4, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(117, 3, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(118, 3, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(119, 3, 1, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(120, 3, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(121, 3, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(122, 3, 2, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(123, 3, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(124, 3, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(125, 3, 3, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(126, 3, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(127, 3, 4, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(128, 3, 4, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(129, 3, 4, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(130, 1, 1, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(131, 1, 2, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(132, 1, 3, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(133, 1, 4, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(134, 1, 3, 4, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(135, 2, 1, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(136, 2, 2, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(137, 2, 3, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(138, 2, 4, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(139, 2, 3, 4, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(140, 3, 1, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(141, 3, 2, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(142, 3, 3, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(143, 3, 4, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(144, 3, 3, 4, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(145, 1, 0, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(146, 1, 1, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(147, 1, 2, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(148, 1, 3, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(149, 1, 4, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(150, 1, 5, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(151, 1, 6, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(152, 1, 1, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(153, 1, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(154, 1, 5, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(155, 1, 0, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(156, 1, 2, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(157, 2, 0, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(158, 3, 0, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(159, 2, 0, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(160, 3, 0, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(161, 2, 1, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(162, 3, 1, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(163, 2, 2, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(164, 3, 2, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(165, 2, 2, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(166, 3, 2, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(167, 2, 3, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(168, 3, 3, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(169, 2, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(170, 3, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(171, 2, 4, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(172, 3, 4, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(173, 2, 5, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(174, 3, 5, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(175, 2, 1, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(176, 3, 1, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(177, 1, 5, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(178, 2, 5, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(179, 3, 5, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(180, 1, 5, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(181, 2, 5, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(182, 3, 5, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(183, 1, 5, 4, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(184, 2, 5, 4, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(185, 3, 5, 4, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(186, 1, 5, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(187, 2, 5, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(188, 3, 5, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_attachments_on_author_id` (`author_id`),
  ADD KEY `index_attachments_on_created_on` (`created_on`),
  ADD KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`),
  ADD KEY `index_attachments_on_disk_filename` (`disk_filename`);

--
-- Chỉ mục cho bảng `auth_sources`
--
ALTER TABLE `auth_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_auth_sources_on_id_and_type` (`id`,`type`);

--
-- Chỉ mục cho bảng `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_project_id` (`project_id`),
  ADD KEY `index_boards_on_last_message_id` (`last_message_id`);

--
-- Chỉ mục cho bảng `changes`
--
ALTER TABLE `changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `changesets_changeset_id` (`changeset_id`);

--
-- Chỉ mục cho bảng `changesets`
--
ALTER TABLE `changesets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  ADD KEY `index_changesets_on_user_id` (`user_id`),
  ADD KEY `index_changesets_on_repository_id` (`repository_id`),
  ADD KEY `index_changesets_on_committed_on` (`committed_on`),
  ADD KEY `changesets_repos_scmid` (`repository_id`,`scmid`);

--
-- Chỉ mục cho bảng `changesets_issues`
--
ALTER TABLE `changesets_issues`
  ADD UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`),
  ADD KEY `index_changesets_issues_on_issue_id` (`issue_id`);

--
-- Chỉ mục cho bảng `changeset_parents`
--
ALTER TABLE `changeset_parents`
  ADD KEY `changeset_parents_changeset_ids` (`changeset_id`),
  ADD KEY `changeset_parents_parent_ids` (`parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  ADD KEY `index_comments_on_author_id` (`author_id`);

--
-- Chỉ mục cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_custom_fields_on_id_and_type` (`id`,`type`);

--
-- Chỉ mục cho bảng `custom_fields_projects`
--
ALTER TABLE `custom_fields_projects`
  ADD UNIQUE KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`);

--
-- Chỉ mục cho bảng `custom_fields_roles`
--
ALTER TABLE `custom_fields_roles`
  ADD UNIQUE KEY `custom_fields_roles_ids` (`custom_field_id`,`role_id`);

--
-- Chỉ mục cho bảng `custom_fields_trackers`
--
ALTER TABLE `custom_fields_trackers`
  ADD UNIQUE KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`);

--
-- Chỉ mục cho bảng `custom_field_enumerations`
--
ALTER TABLE `custom_field_enumerations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `custom_values`
--
ALTER TABLE `custom_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_values_customized` (`customized_type`,`customized_id`),
  ADD KEY `index_custom_values_on_custom_field_id` (`custom_field_id`);

--
-- Chỉ mục cho bảng `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_project_id` (`project_id`),
  ADD KEY `index_documents_on_category_id` (`category_id`),
  ADD KEY `index_documents_on_created_on` (`created_on`);

--
-- Chỉ mục cho bảng `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_email_addresses_on_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `enabled_modules`
--
ALTER TABLE `enabled_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled_modules_project_id` (`project_id`);

--
-- Chỉ mục cho bảng `enumerations`
--
ALTER TABLE `enumerations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_enumerations_on_project_id` (`project_id`),
  ADD KEY `index_enumerations_on_id_and_type` (`id`,`type`);

--
-- Chỉ mục cho bảng `groups_users`
--
ALTER TABLE `groups_users`
  ADD UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`);

--
-- Chỉ mục cho bảng `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `import_items`
--
ALTER TABLE `import_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_import_items_on_import_id_and_unique_id` (`import_id`,`unique_id`);

--
-- Chỉ mục cho bảng `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issues_project_id` (`project_id`),
  ADD KEY `index_issues_on_status_id` (`status_id`),
  ADD KEY `index_issues_on_category_id` (`category_id`),
  ADD KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  ADD KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  ADD KEY `index_issues_on_tracker_id` (`tracker_id`),
  ADD KEY `index_issues_on_priority_id` (`priority_id`),
  ADD KEY `index_issues_on_author_id` (`author_id`),
  ADD KEY `index_issues_on_created_on` (`created_on`),
  ADD KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`),
  ADD KEY `index_issues_on_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `issue_categories`
--
ALTER TABLE `issue_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_categories_project_id` (`project_id`),
  ADD KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`);

--
-- Chỉ mục cho bảng `issue_relations`
--
ALTER TABLE `issue_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  ADD KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  ADD KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`);

--
-- Chỉ mục cho bảng `issue_statuses`
--
ALTER TABLE `issue_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_issue_statuses_on_position` (`position`),
  ADD KEY `index_issue_statuses_on_is_closed` (`is_closed`);

--
-- Chỉ mục cho bảng `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  ADD KEY `index_journals_on_user_id` (`user_id`),
  ADD KEY `index_journals_on_journalized_id` (`journalized_id`),
  ADD KEY `index_journals_on_created_on` (`created_on`);

--
-- Chỉ mục cho bảng `journal_details`
--
ALTER TABLE `journal_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journal_details_journal_id` (`journal_id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  ADD KEY `index_members_on_user_id` (`user_id`),
  ADD KEY `index_members_on_project_id` (`project_id`);

--
-- Chỉ mục cho bảng `member_roles`
--
ALTER TABLE `member_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_member_roles_on_member_id` (`member_id`),
  ADD KEY `index_member_roles_on_role_id` (`role_id`),
  ADD KEY `index_member_roles_on_inherited_from` (`inherited_from`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_board_id` (`board_id`),
  ADD KEY `messages_parent_id` (`parent_id`),
  ADD KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  ADD KEY `index_messages_on_author_id` (`author_id`),
  ADD KEY `index_messages_on_created_on` (`created_on`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_project_id` (`project_id`),
  ADD KEY `index_news_on_author_id` (`author_id`),
  ADD KEY `index_news_on_created_on` (`created_on`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_projects_on_lft` (`lft`),
  ADD KEY `index_projects_on_rgt` (`rgt`);

--
-- Chỉ mục cho bảng `projects_trackers`
--
ALTER TABLE `projects_trackers`
  ADD UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  ADD KEY `projects_trackers_project_id` (`project_id`);

--
-- Chỉ mục cho bảng `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_queries_on_project_id` (`project_id`),
  ADD KEY `index_queries_on_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `queries_roles`
--
ALTER TABLE `queries_roles`
  ADD UNIQUE KEY `queries_roles_ids` (`query_id`,`role_id`);

--
-- Chỉ mục cho bảng `repositories`
--
ALTER TABLE `repositories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_repositories_on_project_id` (`project_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles_managed_roles`
--
ALTER TABLE `roles_managed_roles`
  ADD UNIQUE KEY `index_roles_managed_roles_on_role_id_and_managed_role_id` (`role_id`,`managed_role_id`);

--
-- Chỉ mục cho bảng `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_settings_on_name` (`name`);

--
-- Chỉ mục cho bảng `time_entries`
--
ALTER TABLE `time_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_entries_project_id` (`project_id`),
  ADD KEY `time_entries_issue_id` (`issue_id`),
  ADD KEY `index_time_entries_on_activity_id` (`activity_id`),
  ADD KEY `index_time_entries_on_user_id` (`user_id`),
  ADD KEY `index_time_entries_on_created_on` (`created_on`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_value` (`value`),
  ADD KEY `index_tokens_on_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `trackers`
--
ALTER TABLE `trackers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_users_on_id_and_type` (`id`,`type`),
  ADD KEY `index_users_on_auth_source_id` (`auth_source_id`),
  ADD KEY `index_users_on_type` (`type`);

--
-- Chỉ mục cho bảng `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_preferences_on_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `versions_project_id` (`project_id`),
  ADD KEY `index_versions_on_sharing` (`sharing`);

--
-- Chỉ mục cho bảng `watchers`
--
ALTER TABLE `watchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  ADD KEY `index_watchers_on_user_id` (`user_id`),
  ADD KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`);

--
-- Chỉ mục cho bảng `wikis`
--
ALTER TABLE `wikis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wikis_project_id` (`project_id`);

--
-- Chỉ mục cho bảng `wiki_contents`
--
ALTER TABLE `wiki_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_contents_page_id` (`page_id`),
  ADD KEY `index_wiki_contents_on_author_id` (`author_id`);

--
-- Chỉ mục cho bảng `wiki_content_versions`
--
ALTER TABLE `wiki_content_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  ADD KEY `index_wiki_content_versions_on_updated_on` (`updated_on`);

--
-- Chỉ mục cho bảng `wiki_pages`
--
ALTER TABLE `wiki_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  ADD KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  ADD KEY `index_wiki_pages_on_parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `wiki_redirects`
--
ALTER TABLE `wiki_redirects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  ADD KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`);

--
-- Chỉ mục cho bảng `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  ADD KEY `index_workflows_on_old_status_id` (`old_status_id`),
  ADD KEY `index_workflows_on_role_id` (`role_id`),
  ADD KEY `index_workflows_on_new_status_id` (`new_status_id`),
  ADD KEY `index_workflows_on_tracker_id` (`tracker_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `auth_sources`
--
ALTER TABLE `auth_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `changes`
--
ALTER TABLE `changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `changesets`
--
ALTER TABLE `changesets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `custom_field_enumerations`
--
ALTER TABLE `custom_field_enumerations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `custom_values`
--
ALTER TABLE `custom_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `email_addresses`
--
ALTER TABLE `email_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `enabled_modules`
--
ALTER TABLE `enabled_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `enumerations`
--
ALTER TABLE `enumerations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `import_items`
--
ALTER TABLE `import_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `issue_categories`
--
ALTER TABLE `issue_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `issue_relations`
--
ALTER TABLE `issue_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `issue_statuses`
--
ALTER TABLE `issue_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `journals`
--
ALTER TABLE `journals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `journal_details`
--
ALTER TABLE `journal_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `member_roles`
--
ALTER TABLE `member_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `repositories`
--
ALTER TABLE `repositories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `time_entries`
--
ALTER TABLE `time_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `trackers`
--
ALTER TABLE `trackers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `watchers`
--
ALTER TABLE `watchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `wikis`
--
ALTER TABLE `wikis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wiki_contents`
--
ALTER TABLE `wiki_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wiki_content_versions`
--
ALTER TABLE `wiki_content_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wiki_pages`
--
ALTER TABLE `wiki_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wiki_redirects`
--
ALTER TABLE `wiki_redirects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `workflows`
--
ALTER TABLE `workflows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
