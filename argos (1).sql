-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2025 at 11:09 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `argos`
--
CREATE DATABASE IF NOT EXISTS `argos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `argos`;

-- --------------------------------------------------------

--
-- Table structure for table `action_logs`
--

CREATE TABLE `action_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `action_by` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_logs`
--

INSERT INTO `action_logs` (`id`, `action_by`, `type`, `title`, `data`, `created_at`, `updated_at`) VALUES
(1, 1, 'created', 'User created by Unknown', '{\"user\":{\"matricule\":\"20569\\/S\",\"first_name\":\"Super\",\"last_name\":\"Admin\",\"username\":\"superadmin\",\"email\":\"superadmin@example.com\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"id\":1,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Super Admin\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Super Admin\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(2, 1, 'created', 'User created by Unknown', '{\"user\":{\"matricule\":\"20570\\/S\",\"first_name\":\"Admin\",\"last_name\":\"Test\",\"username\":\"admin\",\"email\":\"admin@example.com\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"id\":2,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Admin Test\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Admin Test\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(3, 1, 'created', 'User created by Unknown', '{\"user\":{\"matricule\":\"20571\\/S\",\"first_name\":\"User\",\"last_name\":\"Test\",\"username\":\"user\",\"email\":\"user@example.com\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"id\":3,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/User Test\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"User Test\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(4, 1, 'created', 'Term created by Unknown', '{\"term\":{\"id\":1,\"name\":\"Uncategorized\",\"taxonomy\":\"category\",\"slug\":\"uncategorized\",\"description\":\"Default category for posts that do not belong to any other category.\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(5, 1, 'created', 'created', '{\"term\":\"App\\\\Models\\\\Term\",\"id\":1,\"name\":\"Uncategorized\",\"taxonomy\":\"category\",\"slug\":\"uncategorized\",\"description\":\"Default category for posts that do not belong to any other category.\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(6, 1, 'created', 'Term created by Unknown', '{\"term\":{\"id\":2,\"name\":\"Sample Tag\",\"taxonomy\":\"tag\",\"slug\":\"sample-tag\",\"description\":\"A sample tag for demonstration purposes.\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(7, 1, 'created', 'created', '{\"term\":\"App\\\\Models\\\\Term\",\"id\":2,\"name\":\"Sample Tag\",\"taxonomy\":\"tag\",\"slug\":\"sample-tag\",\"description\":\"A sample tag for demonstration purposes.\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(8, 1, 'created', 'Post created by Unknown', '{\"post\":{\"id\":2,\"title\":\"Sample Page\",\"post_type\":\"page\",\"slug\":\"sample-page\",\"content\":\"<p>This is a sample page created to demonstrate the page functionality.<\\/p><p>Feel free to edit this content in the admin panel.<\\/p>\",\"status\":\"published\",\"user_id\":1,\"published_at\":\"2025-12-19T14:58:19.000000Z\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(9, 1, 'created', 'created', '{\"post\":\"App\\\\Models\\\\Post\",\"id\":2,\"title\":\"Sample Page\",\"post_type\":\"page\",\"slug\":\"sample-page\",\"content\":\"<p>This is a sample page created to demonstrate the page functionality.<\\/p><p>Feel free to edit this content in the admin panel.<\\/p>\",\"status\":\"published\",\"user_id\":1,\"published_at\":\"2025-12-19T14:58:19.000000Z\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(10, 1, 'created', 'Post created by Unknown', '{\"post\":{\"id\":1,\"title\":\"Welcome to Our Blog\",\"post_type\":\"post\",\"slug\":\"welcome-to-our-blog\",\"content\":\"<p>This is the first post on our new blog. We\'re excited to share our thoughts with you!<\\/p><p>Stay tuned for more updates.<\\/p>\",\"excerpt\":\"Welcome to our new blog! We\'re excited to share our thoughts with you.\",\"status\":\"published\",\"user_id\":1,\"published_at\":\"2025-11-30T14:58:19.000000Z\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(11, 1, 'created', 'created', '{\"post\":\"App\\\\Models\\\\Post\",\"id\":1,\"title\":\"Welcome to Our Blog\",\"post_type\":\"post\",\"slug\":\"welcome-to-our-blog\",\"content\":\"<p>This is the first post on our new blog. We\'re excited to share our thoughts with you!<\\/p><p>Stay tuned for more updates.<\\/p>\",\"excerpt\":\"Welcome to our new blog! We\'re excited to share our thoughts with you.\",\"status\":\"published\",\"user_id\":1,\"published_at\":\"2025-11-30T14:58:19.000000Z\",\"updated_at\":\"2025-12-19T14:58:19.000000Z\",\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(12, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Mabel\",\"last_name\":\"Sporer\",\"email\":\"vito73@example.org\",\"username\":\"cgerlach_6945680bc0776\",\"created_at\":\"2025-11-05T13:16:50.000000Z\",\"updated_at\":\"2025-04-16T18:15:16.000000Z\",\"id\":4,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Mabel Sporer\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Mabel Sporer\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(13, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Asha\",\"last_name\":\"O\'Kon\",\"email\":\"bglover@example.org\",\"username\":\"edubuque_6945680bd68c0\",\"created_at\":\"2025-06-23T05:54:05.000000Z\",\"updated_at\":\"2024-12-28T02:14:58.000000Z\",\"id\":5,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Asha O\'Kon\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Asha O\'Kon\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(14, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Kyler\",\"last_name\":\"Reilly\",\"email\":\"dino.wyman@example.org\",\"username\":\"aurelie.friesen_6945680bd8303\",\"created_at\":\"2025-09-24T22:48:55.000000Z\",\"updated_at\":\"2025-10-23T07:45:51.000000Z\",\"id\":6,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Kyler Reilly\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Kyler Reilly\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(15, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Cydney\",\"last_name\":\"Hettinger\",\"email\":\"ekrajcik@example.com\",\"username\":\"magdalen12_6945680bd9dbd\",\"created_at\":\"2025-08-10T13:14:51.000000Z\",\"updated_at\":\"2025-04-26T09:04:50.000000Z\",\"id\":7,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Cydney Hettinger\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Cydney Hettinger\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(16, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Stanford\",\"last_name\":\"Donnelly\",\"email\":\"lilliana.kerluke@example.org\",\"username\":\"rnikolaus_6945680bdbec0\",\"created_at\":\"2025-11-20T12:46:27.000000Z\",\"updated_at\":\"2025-06-04T10:14:53.000000Z\",\"id\":8,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Stanford Donnelly\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Stanford Donnelly\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(17, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Aaron\",\"last_name\":\"Bosco\",\"email\":\"denesik.beau@example.net\",\"username\":\"virginia28_6945680bdd8e3\",\"created_at\":\"2025-12-17T12:15:58.000000Z\",\"updated_at\":\"2025-06-07T13:24:39.000000Z\",\"id\":9,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Aaron Bosco\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Aaron Bosco\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(18, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Glenda\",\"last_name\":\"Rohan\",\"email\":\"dkoepp@example.com\",\"username\":\"adelbert50_6945680bdf419\",\"created_at\":\"2024-12-21T19:52:30.000000Z\",\"updated_at\":\"2025-05-31T23:34:49.000000Z\",\"id\":10,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Glenda Rohan\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Glenda Rohan\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(19, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Lisette\",\"last_name\":\"Schiller\",\"email\":\"leffler.george@example.org\",\"username\":\"white.haskell_6945680be129d\",\"created_at\":\"2025-03-21T14:45:52.000000Z\",\"updated_at\":\"2025-05-20T22:03:38.000000Z\",\"id\":11,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Lisette Schiller\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Lisette Schiller\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(20, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Susie\",\"last_name\":\"Graham\",\"email\":\"gleichner.pansy@example.com\",\"username\":\"fvandervort_6945680be3101\",\"created_at\":\"2025-09-20T04:36:58.000000Z\",\"updated_at\":\"2025-01-18T05:54:17.000000Z\",\"id\":12,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Susie Graham\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Susie Graham\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(21, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Jakob\",\"last_name\":\"Gottlieb\",\"email\":\"ransom12@example.com\",\"username\":\"ivah.homenick_6945680be5136\",\"created_at\":\"2025-11-24T11:37:06.000000Z\",\"updated_at\":\"2025-04-18T19:55:36.000000Z\",\"id\":13,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Jakob Gottlieb\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Jakob Gottlieb\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(22, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Madge\",\"last_name\":\"Rosenbaum\",\"email\":\"nyasia90@example.net\",\"username\":\"wuckert.araceli_6945680be7206\",\"created_at\":\"2025-07-15T07:20:43.000000Z\",\"updated_at\":\"2025-08-10T12:17:56.000000Z\",\"id\":14,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Madge Rosenbaum\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Madge Rosenbaum\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(23, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Eunice\",\"last_name\":\"Ebert\",\"email\":\"aabshire@example.com\",\"username\":\"rwalter_6945680be8c87\",\"created_at\":\"2025-11-05T09:44:13.000000Z\",\"updated_at\":\"2025-11-24T07:47:21.000000Z\",\"id\":15,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Eunice Ebert\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Eunice Ebert\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(24, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Patrick\",\"last_name\":\"Hills\",\"email\":\"dakota.boyle@example.com\",\"username\":\"vivian60_6945680bea6c0\",\"created_at\":\"2025-03-21T13:43:10.000000Z\",\"updated_at\":\"2025-02-18T23:43:54.000000Z\",\"id\":16,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Patrick Hills\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Patrick Hills\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(25, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Danial\",\"last_name\":\"Hirthe\",\"email\":\"koepp.ken@example.org\",\"username\":\"zmurazik_6945680bebfa7\",\"created_at\":\"2025-08-13T22:08:52.000000Z\",\"updated_at\":\"2025-09-11T02:45:28.000000Z\",\"id\":17,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Danial Hirthe\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Danial Hirthe\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(26, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Martina\",\"last_name\":\"Cruickshank\",\"email\":\"walsh.mariam@example.com\",\"username\":\"rashawn.mayert_6945680bedcd2\",\"created_at\":\"2025-05-16T00:21:54.000000Z\",\"updated_at\":\"2025-10-24T12:00:18.000000Z\",\"id\":18,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Martina Cruickshank\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Martina Cruickshank\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(27, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Graham\",\"last_name\":\"Simonis\",\"email\":\"usenger@example.org\",\"username\":\"adelle93_6945680bf02e7\",\"created_at\":\"2025-05-28T16:39:08.000000Z\",\"updated_at\":\"2025-07-03T13:15:35.000000Z\",\"id\":19,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Graham Simonis\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Graham Simonis\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(28, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Barbara\",\"last_name\":\"Denesik\",\"email\":\"eve.heller@example.org\",\"username\":\"caleigh.rohan_6945680bf1f04\",\"created_at\":\"2025-01-22T17:05:01.000000Z\",\"updated_at\":\"2025-01-05T22:04:31.000000Z\",\"id\":20,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Barbara Denesik\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Barbara Denesik\"},\"action_by\":1}', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(29, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Timothy\",\"last_name\":\"Jerde\",\"email\":\"satterfield.elta@example.net\",\"username\":\"mariana34_6945680bf39dc\",\"created_at\":\"2025-10-22T18:33:12.000000Z\",\"updated_at\":\"2025-08-05T14:18:00.000000Z\",\"id\":21,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Timothy Jerde\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Timothy Jerde\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(30, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Drew\",\"last_name\":\"Wintheiser\",\"email\":\"celine52@example.net\",\"username\":\"gkemmer_6945680c01315\",\"created_at\":\"2025-08-05T10:07:11.000000Z\",\"updated_at\":\"2025-02-02T07:21:14.000000Z\",\"id\":22,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Drew Wintheiser\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Drew Wintheiser\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(31, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Tod\",\"last_name\":\"Gibson\",\"email\":\"howe.carrie@example.org\",\"username\":\"dubuque.griffin_6945680c03049\",\"created_at\":\"2025-09-18T21:56:58.000000Z\",\"updated_at\":\"2025-03-30T19:23:35.000000Z\",\"id\":23,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Tod Gibson\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Tod Gibson\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(32, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Jermey\",\"last_name\":\"Zboncak\",\"email\":\"garland75@example.net\",\"username\":\"rolfson.deven_6945680c0502e\",\"created_at\":\"2025-10-20T18:30:49.000000Z\",\"updated_at\":\"2025-02-06T10:27:29.000000Z\",\"id\":24,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Jermey Zboncak\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Jermey Zboncak\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(33, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Guido\",\"last_name\":\"Ledner\",\"email\":\"brannon.bins@example.com\",\"username\":\"uriah.ratke_6945680c06ef7\",\"created_at\":\"2025-12-17T04:21:37.000000Z\",\"updated_at\":\"2025-07-04T07:25:02.000000Z\",\"id\":25,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Guido Ledner\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Guido Ledner\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(34, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Jaqueline\",\"last_name\":\"Rodriguez\",\"email\":\"george.zieme@example.com\",\"username\":\"vance.bauch_6945680c08c09\",\"created_at\":\"2025-04-17T15:59:16.000000Z\",\"updated_at\":\"2025-12-15T20:42:26.000000Z\",\"id\":26,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Jaqueline Rodriguez\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Jaqueline Rodriguez\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(35, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Ana\",\"last_name\":\"Cole\",\"email\":\"crona.alena@example.org\",\"username\":\"fahey.demario_6945680c0a9b1\",\"created_at\":\"2025-06-12T19:36:05.000000Z\",\"updated_at\":\"2025-03-24T23:51:29.000000Z\",\"id\":27,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Ana Cole\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Ana Cole\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(36, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Ryann\",\"last_name\":\"Stracke\",\"email\":\"loyce.cassin@example.org\",\"username\":\"zjerde_6945680c0c606\",\"created_at\":\"2025-05-12T03:25:37.000000Z\",\"updated_at\":\"2025-02-17T11:50:06.000000Z\",\"id\":28,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Ryann Stracke\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Ryann Stracke\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(37, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Imelda\",\"last_name\":\"Runolfsdottir\",\"email\":\"zondricka@example.net\",\"username\":\"cronin.mohamed_6945680c0e115\",\"created_at\":\"2025-04-28T19:35:00.000000Z\",\"updated_at\":\"2025-06-27T19:24:36.000000Z\",\"id\":29,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Imelda Runolfsdottir\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Imelda Runolfsdottir\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(38, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Birdie\",\"last_name\":\"Conn\",\"email\":\"jmcglynn@example.org\",\"username\":\"rkuhn_6945680c10578\",\"created_at\":\"2025-01-05T14:13:41.000000Z\",\"updated_at\":\"2025-01-17T12:03:13.000000Z\",\"id\":30,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Birdie Conn\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Birdie Conn\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(39, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Bonnie\",\"last_name\":\"Block\",\"email\":\"gerhold.oleta@example.net\",\"username\":\"grady.raul_6945680c122af\",\"created_at\":\"2025-11-12T22:19:46.000000Z\",\"updated_at\":\"2025-01-18T15:09:40.000000Z\",\"id\":31,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Bonnie Block\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Bonnie Block\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(40, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Alex\",\"last_name\":\"Cummerata\",\"email\":\"brekke.fiona@example.net\",\"username\":\"cassandra39_6945680c140f1\",\"created_at\":\"2025-09-05T17:45:58.000000Z\",\"updated_at\":\"2025-05-26T06:04:30.000000Z\",\"id\":32,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Alex Cummerata\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Alex Cummerata\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(41, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Rogers\",\"last_name\":\"Rice\",\"email\":\"gupton@example.org\",\"username\":\"weimann.kacey_6945680c15be8\",\"created_at\":\"2025-12-08T00:23:59.000000Z\",\"updated_at\":\"2025-09-06T04:15:13.000000Z\",\"id\":33,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Rogers Rice\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Rogers Rice\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(42, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Melody\",\"last_name\":\"Funk\",\"email\":\"hudson.crystel@example.org\",\"username\":\"yconroy_6945680c17a1e\",\"created_at\":\"2025-10-21T20:16:43.000000Z\",\"updated_at\":\"2025-06-29T09:15:09.000000Z\",\"id\":34,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Melody Funk\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Melody Funk\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(43, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Mathilde\",\"last_name\":\"Quigley\",\"email\":\"rogelio94@example.com\",\"username\":\"winston32_6945680c19fcc\",\"created_at\":\"2025-09-17T15:12:23.000000Z\",\"updated_at\":\"2025-04-23T21:31:42.000000Z\",\"id\":35,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Mathilde Quigley\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Mathilde Quigley\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(44, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Jaycee\",\"last_name\":\"Rowe\",\"email\":\"zdamore@example.net\",\"username\":\"jackeline.parisian_6945680c29bc3\",\"created_at\":\"2025-05-07T00:06:12.000000Z\",\"updated_at\":\"2025-10-05T20:02:26.000000Z\",\"id\":36,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Jaycee Rowe\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Jaycee Rowe\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(45, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Willie\",\"last_name\":\"Ledner\",\"email\":\"klangworth@example.com\",\"username\":\"zdoyle_6945680c2b8b0\",\"created_at\":\"2025-05-06T15:22:51.000000Z\",\"updated_at\":\"2025-06-24T06:07:53.000000Z\",\"id\":37,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Willie Ledner\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Willie Ledner\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(46, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Malika\",\"last_name\":\"Cole\",\"email\":\"kdicki@example.com\",\"username\":\"zemard_6945680c2d555\",\"created_at\":\"2025-12-11T17:12:45.000000Z\",\"updated_at\":\"2025-11-08T23:11:16.000000Z\",\"id\":38,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Malika Cole\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Malika Cole\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(47, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Carolyn\",\"last_name\":\"Mann\",\"email\":\"cleve.quitzon@example.net\",\"username\":\"fritsch.rachel_6945680c2ef83\",\"created_at\":\"2025-02-23T10:09:12.000000Z\",\"updated_at\":\"2025-07-12T05:15:36.000000Z\",\"id\":39,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Carolyn Mann\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Carolyn Mann\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(48, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Devin\",\"last_name\":\"Kuphal\",\"email\":\"camylle12@example.com\",\"username\":\"zena.mertz_6945680c30974\",\"created_at\":\"2025-07-26T16:29:16.000000Z\",\"updated_at\":\"2025-03-17T15:06:43.000000Z\",\"id\":40,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Devin Kuphal\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Devin Kuphal\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(49, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Eva\",\"last_name\":\"Ward\",\"email\":\"tessie.schoen@example.com\",\"username\":\"abdul.kiehn_6945680c32a10\",\"created_at\":\"2025-12-01T15:20:55.000000Z\",\"updated_at\":\"2025-06-01T21:50:49.000000Z\",\"id\":41,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Eva Ward\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Eva Ward\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(50, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Norval\",\"last_name\":\"Schowalter\",\"email\":\"reinhold.effertz@example.com\",\"username\":\"schmeler.carol_6945680c34991\",\"created_at\":\"2025-11-18T05:09:52.000000Z\",\"updated_at\":\"2025-04-21T02:18:13.000000Z\",\"id\":42,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Norval Schowalter\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Norval Schowalter\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(51, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Estevan\",\"last_name\":\"Kuhic\",\"email\":\"xhodkiewicz@example.com\",\"username\":\"jimmy.heidenreich_6945680c368eb\",\"created_at\":\"2025-03-24T23:41:54.000000Z\",\"updated_at\":\"2025-07-18T07:48:32.000000Z\",\"id\":43,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Estevan Kuhic\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Estevan Kuhic\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(52, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Natalie\",\"last_name\":\"Rempel\",\"email\":\"powlowski.russell@example.net\",\"username\":\"opal.mante_6945680c3871f\",\"created_at\":\"2025-07-29T06:31:15.000000Z\",\"updated_at\":\"2025-05-08T21:40:15.000000Z\",\"id\":44,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Natalie Rempel\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Natalie Rempel\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(53, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Madaline\",\"last_name\":\"Morissette\",\"email\":\"hillary.robel@example.com\",\"username\":\"dmckenzie_6945680c3a530\",\"created_at\":\"2025-01-16T22:16:57.000000Z\",\"updated_at\":\"2025-12-17T07:15:43.000000Z\",\"id\":45,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Madaline Morissette\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Madaline Morissette\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(54, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Adaline\",\"last_name\":\"Kuphal\",\"email\":\"maxine53@example.com\",\"username\":\"tprice_6945680c3c389\",\"created_at\":\"2025-09-25T04:22:19.000000Z\",\"updated_at\":\"2025-06-15T22:40:31.000000Z\",\"id\":46,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Adaline Kuphal\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Adaline Kuphal\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(55, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Terrell\",\"last_name\":\"McDermott\",\"email\":\"gussie14@example.org\",\"username\":\"lmitchell_6945680c3de84\",\"created_at\":\"2025-01-27T17:47:58.000000Z\",\"updated_at\":\"2025-10-31T10:37:51.000000Z\",\"id\":47,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Terrell McDermott\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Terrell McDermott\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(56, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Anabel\",\"last_name\":\"Bednar\",\"email\":\"mueller.elise@example.org\",\"username\":\"ynikolaus_6945680c3fa49\",\"created_at\":\"2025-04-06T00:51:09.000000Z\",\"updated_at\":\"2024-12-25T00:22:21.000000Z\",\"id\":48,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Anabel Bednar\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Anabel Bednar\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(57, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Annie\",\"last_name\":\"Grant\",\"email\":\"waelchi.nia@example.org\",\"username\":\"ukuhn_6945680c415e6\",\"created_at\":\"2025-03-14T05:51:33.000000Z\",\"updated_at\":\"2025-12-10T17:56:10.000000Z\",\"id\":49,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Annie Grant\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Annie Grant\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(58, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Carlee\",\"last_name\":\"Herzog\",\"email\":\"rosalinda89@example.net\",\"username\":\"hammes.jermain_6945680c43187\",\"created_at\":\"2025-08-16T22:47:33.000000Z\",\"updated_at\":\"2025-10-09T05:05:26.000000Z\",\"id\":50,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Carlee Herzog\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Carlee Herzog\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(59, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Elisabeth\",\"last_name\":\"Heller\",\"email\":\"mccullough.bruce@example.com\",\"username\":\"ana.jast_6945680c44e35\",\"created_at\":\"2025-11-27T06:48:13.000000Z\",\"updated_at\":\"2025-05-11T05:05:48.000000Z\",\"id\":51,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Elisabeth Heller\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Elisabeth Heller\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(60, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Kristina\",\"last_name\":\"Daugherty\",\"email\":\"giles.wisoky@example.net\",\"username\":\"lcarter_6945680c46f21\",\"created_at\":\"2025-07-01T11:37:58.000000Z\",\"updated_at\":\"2025-05-06T02:02:42.000000Z\",\"id\":52,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Kristina Daugherty\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Kristina Daugherty\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(61, 1, 'created', 'User created by Unknown', '{\"user\":{\"first_name\":\"Eulah\",\"last_name\":\"Hettinger\",\"email\":\"ross.stracke@example.com\",\"username\":\"theo.purdy_6945680c48924\",\"created_at\":\"2025-06-03T11:56:58.000000Z\",\"updated_at\":\"2025-08-18T09:39:45.000000Z\",\"id\":53,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Eulah Hettinger\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Eulah Hettinger\"},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(62, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Dolorem saepe consequuntur incidunt provident quia voluptatibus ut.\",\"content\":\"Ut ipsa eius nam assumenda. Delectus illum aut quis voluptatem minima aut qui. Pariatur incidunt amet modi quam et fuga.\",\"excerpt\":\"Animi placeat ipsa minima beatae nulla voluptates voluptates dolore et odio voluptas.\",\"status\":\"scheduled\",\"post_type\":\"page\",\"slug\":\"labore-quidem-nostrum-sit-et-tempora\",\"user_id\":4,\"created_at\":\"2025-11-07T13:14:37.000000Z\",\"updated_at\":\"2025-12-01T06:43:18.000000Z\",\"published_at\":null,\"id\":3},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(63, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Maiores maxime necessitatibus quas et sed quia officia.\",\"content\":\"Maxime eos ut sit alias. Quos a et aliquid est. Excepturi assumenda eveniet laborum quo. Fuga impedit vel doloremque error sit nam.\",\"excerpt\":\"Non hic impedit eius illum officiis unde consequatur qui.\",\"status\":\"private\",\"post_type\":\"page\",\"slug\":\"iste-sunt-et-animi-labore\",\"user_id\":5,\"created_at\":\"2025-06-23T05:50:10.000000Z\",\"updated_at\":\"2025-10-20T16:26:34.000000Z\",\"published_at\":null,\"id\":4},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(64, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Deserunt ducimus aspernatur deleniti quae laudantium et nisi.\",\"content\":\"Sapiente eum quisquam omnis rerum illum et quia. Nemo cupiditate sed corporis eum odio pariatur.\",\"excerpt\":\"Vel illum debitis molestias voluptatum quaerat corporis quia eligendi possimus rerum animi deleniti.\",\"status\":\"pending\",\"post_type\":\"post\",\"slug\":\"velit-perspiciatis-reiciendis-ratione-aperiam-ullam-molestiae\",\"user_id\":6,\"created_at\":\"2025-09-03T00:02:39.000000Z\",\"updated_at\":\"2025-09-13T17:17:16.000000Z\",\"published_at\":\"2025-11-17T04:59:53.000000Z\",\"id\":5},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(65, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Quis fuga omnis sed dolor nihil molestiae veritatis sequi.\",\"content\":\"Voluptatem et dolorem beatae qui fugit ipsa et laboriosam. Voluptates est consequuntur nisi occaecati sint est. Id et veniam tempore voluptas dicta dolor in vel.\",\"excerpt\":\"Non quia qui sed commodi dolorem at harum qui iste nesciunt.\",\"status\":\"private\",\"post_type\":\"post\",\"slug\":\"dolorum-dolor-nisi-libero-ex-expedita-minus-tenetur\",\"user_id\":7,\"created_at\":\"2025-09-17T15:30:57.000000Z\",\"updated_at\":\"2025-09-09T10:30:21.000000Z\",\"published_at\":null,\"id\":6},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(66, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"In itaque repellendus est rerum soluta.\",\"content\":\"Placeat laudantium qui est in sunt nam. Est pariatur sit animi est et qui aliquid. Non sapiente quos aut cum illum cum dolorem.\",\"excerpt\":\"Praesentium ducimus voluptas ullam voluptatem quo eaque nobis ut rerum quis quidem.\",\"status\":\"private\",\"post_type\":\"post\",\"slug\":\"sed-nisi-rerum-aspernatur-quia-nulla-neque\",\"user_id\":8,\"created_at\":\"2025-07-23T12:41:08.000000Z\",\"updated_at\":\"2025-09-07T21:18:01.000000Z\",\"published_at\":\"2025-09-10T08:07:37.000000Z\",\"id\":7},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(67, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Debitis qui accusamus ut fugiat non eos esse.\",\"content\":\"Mollitia consequatur aut natus vero ut eum repellendus. Dignissimos voluptates sed quia quo aut nulla perferendis. Libero minus corporis aliquid explicabo. Quia asperiores eaque dolores distinctio et.\",\"excerpt\":\"Neque non quaerat esse accusamus et similique.\",\"status\":\"published\",\"post_type\":\"post\",\"slug\":\"et-ipsam-quas-voluptatibus\",\"user_id\":9,\"created_at\":\"2025-09-25T20:46:49.000000Z\",\"updated_at\":\"2025-11-23T02:08:22.000000Z\",\"published_at\":null,\"id\":8},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(68, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Id rerum accusamus beatae voluptates.\",\"content\":\"In aut ab et quibusdam ipsum modi necessitatibus. Dolore nobis repellat similique. Sit distinctio dignissimos harum qui sunt magnam. Magnam libero laboriosam qui similique possimus sunt.\",\"excerpt\":\"Consequatur saepe et sint nulla recusandae sed nisi.\",\"status\":\"published\",\"post_type\":\"post\",\"slug\":\"quo-impedit-et-tenetur-odit\",\"user_id\":10,\"created_at\":\"2025-10-16T14:25:04.000000Z\",\"updated_at\":\"2025-12-13T12:58:10.000000Z\",\"published_at\":\"2025-06-25T00:07:55.000000Z\",\"id\":9},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(69, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Sit quis ut dolorem omnis.\",\"content\":\"Explicabo doloremque deleniti et pariatur placeat animi. Dolor aut et minus corporis. Iste deleniti eos consectetur voluptas inventore nulla autem.\",\"excerpt\":\"Modi ipsam vero animi cupiditate nostrum quam labore perspiciatis modi omnis.\",\"status\":\"published\",\"post_type\":\"page\",\"slug\":\"sit-placeat-eum-nihil-minima-eum-aut-aspernatur\",\"user_id\":11,\"created_at\":\"2025-08-10T19:13:20.000000Z\",\"updated_at\":\"2025-11-29T23:01:39.000000Z\",\"published_at\":\"2025-06-19T23:14:44.000000Z\",\"id\":10},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(70, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Eos distinctio dolorem vitae porro ut omnis.\",\"content\":\"Quia eos praesentium porro itaque non omnis. Aliquid ipsum ipsum a veniam esse exercitationem. Consequatur omnis soluta velit cumque quisquam omnis quaerat.\",\"excerpt\":\"Rerum mollitia molestias id rerum sint autem rerum.\",\"status\":\"scheduled\",\"post_type\":\"page\",\"slug\":\"maiores-excepturi-itaque-distinctio-enim-doloribus\",\"user_id\":12,\"created_at\":\"2025-07-26T21:22:02.000000Z\",\"updated_at\":\"2025-07-05T20:22:23.000000Z\",\"published_at\":\"2025-11-10T14:04:44.000000Z\",\"id\":11},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(71, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Fuga voluptatibus enim architecto veniam et debitis aliquam sed.\",\"content\":\"Autem iure est ad ut. Repellendus consequatur placeat temporibus et in. Ut rem dolorem quae.\",\"excerpt\":\"A maxime sunt iure velit ab maiores illo vel corrupti voluptatibus.\",\"status\":\"private\",\"post_type\":\"page\",\"slug\":\"sapiente-quod-dolorum-aut-eligendi-aperiam-non-aut\",\"user_id\":13,\"created_at\":\"2025-08-01T16:50:55.000000Z\",\"updated_at\":\"2025-07-14T16:29:30.000000Z\",\"published_at\":\"2025-09-13T03:42:53.000000Z\",\"id\":12},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(72, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Sit ducimus enim deleniti.\",\"content\":\"Sed debitis sit minima maiores et est. Sunt deserunt qui eius aperiam non. Tenetur magnam modi in rerum.\",\"excerpt\":\"Quia dignissimos esse cupiditate maxime at molestias voluptates exercitationem optio reiciendis inventore sit.\",\"status\":\"draft\",\"post_type\":\"page\",\"slug\":\"perferendis-minima-illum-cum-et-dicta\",\"user_id\":14,\"created_at\":\"2025-09-19T02:00:47.000000Z\",\"updated_at\":\"2025-08-03T02:47:07.000000Z\",\"published_at\":null,\"id\":13},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(73, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Voluptatem quis illo reiciendis sed sed nobis.\",\"content\":\"Qui dolor rerum sint. Deserunt aperiam omnis corporis at. Quibusdam ratione dolor qui in maxime ab architecto.\",\"excerpt\":\"Cumque ea itaque molestiae ratione in nihil perspiciatis velit at et blanditiis.\",\"status\":\"draft\",\"post_type\":\"page\",\"slug\":\"accusantium-voluptates-nihil-velit-consequatur-repellendus-quia-nihil\",\"user_id\":15,\"created_at\":\"2025-11-28T01:35:44.000000Z\",\"updated_at\":\"2025-07-11T02:28:37.000000Z\",\"published_at\":\"2025-11-07T02:49:16.000000Z\",\"id\":14},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(74, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Ducimus id aut mollitia.\",\"content\":\"Asperiores labore voluptates eligendi ut. Et pariatur possimus et qui. Quidem qui libero consequuntur nam nemo esse velit. Rerum perspiciatis eos nemo nulla porro quia unde.\",\"excerpt\":\"Eligendi voluptas minus excepturi molestias sit fuga iure dolor doloribus.\",\"status\":\"draft\",\"post_type\":\"page\",\"slug\":\"quia-perferendis-consectetur-ducimus-praesentium\",\"user_id\":16,\"created_at\":\"2025-08-27T16:16:24.000000Z\",\"updated_at\":\"2025-07-17T01:52:50.000000Z\",\"published_at\":null,\"id\":15},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(75, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Deleniti voluptatem repellendus eius voluptate.\",\"content\":\"Id quibusdam ea alias occaecati ea eum. Rerum maxime dolorum voluptatem qui ipsa sit. Ut nam ut iusto magni eveniet ut. Voluptatem numquam iste doloribus distinctio.\",\"excerpt\":\"Sunt praesentium occaecati et cumque eaque quisquam amet et eligendi.\",\"status\":\"private\",\"post_type\":\"page\",\"slug\":\"ipsum-quia-mollitia-fugit-doloribus\",\"user_id\":17,\"created_at\":\"2025-10-20T21:23:56.000000Z\",\"updated_at\":\"2025-08-08T08:23:39.000000Z\",\"published_at\":\"2025-08-12T19:47:40.000000Z\",\"id\":16},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(76, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Nemo unde amet aliquam at similique.\",\"content\":\"Esse odio aut ipsum voluptatibus delectus sit quis. Provident alias aperiam soluta rerum veritatis. Nisi omnis consequatur optio consequatur. Culpa doloribus aut sint dolores et esse quos natus.\",\"excerpt\":\"Iste nostrum et et iusto quia soluta consequuntur officiis et culpa.\",\"status\":\"scheduled\",\"post_type\":\"post\",\"slug\":\"qui-ut-eaque-quia-fuga-provident-aliquam-aspernatur\",\"user_id\":18,\"created_at\":\"2025-07-11T08:58:00.000000Z\",\"updated_at\":\"2025-07-18T17:36:47.000000Z\",\"published_at\":\"2025-11-28T10:17:56.000000Z\",\"id\":17},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(77, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Omnis veritatis blanditiis voluptates possimus.\",\"content\":\"Rerum rerum et animi aut quasi. Vel ut sint ipsam rerum atque rerum. Consequatur esse aliquam tenetur molestiae vero voluptatem numquam. Quas quia corrupti quod.\",\"excerpt\":\"Vitae omnis occaecati animi tempore in magni voluptate incidunt.\",\"status\":\"scheduled\",\"post_type\":\"page\",\"slug\":\"consequuntur-atque-illo-maxime-saepe-reiciendis-ipsa\",\"user_id\":19,\"created_at\":\"2025-07-20T21:07:03.000000Z\",\"updated_at\":\"2025-08-25T18:25:11.000000Z\",\"published_at\":\"2025-11-28T16:30:27.000000Z\",\"id\":18},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(78, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Assumenda debitis esse omnis.\",\"content\":\"Veniam voluptate totam rerum nulla. Ut odio sed sunt consequatur repellendus aperiam consequatur. Optio et ut molestiae deleniti.\",\"excerpt\":\"Maxime molestiae voluptas sit sapiente id consequatur et aliquid.\",\"status\":\"scheduled\",\"post_type\":\"post\",\"slug\":\"vel-esse-et-veritatis-non\",\"user_id\":20,\"created_at\":\"2025-08-26T16:09:21.000000Z\",\"updated_at\":\"2025-11-13T17:37:51.000000Z\",\"published_at\":null,\"id\":19},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(79, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Eum non hic adipisci enim repellat eius.\",\"content\":\"Et magnam velit a nemo odit. Sequi consequatur ipsam dolores at vitae. Quasi facilis odio dolore ea dolor. Sed labore tenetur voluptatem velit perspiciatis nam consequuntur.\",\"excerpt\":\"Itaque dolor illo sit corrupti sit deleniti eum est veniam et commodi.\",\"status\":\"scheduled\",\"post_type\":\"page\",\"slug\":\"alias-labore-eveniet-ut-officiis-velit\",\"user_id\":21,\"created_at\":\"2025-10-24T20:05:19.000000Z\",\"updated_at\":\"2025-08-28T02:09:04.000000Z\",\"published_at\":null,\"id\":20},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(80, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Iusto voluptas ut nulla quasi voluptatem magni.\",\"content\":\"Ipsa sint dolorem est eos culpa rerum. Odio illum maiores vero odit. Asperiores ducimus nemo est autem. At ad architecto vero harum est ea molestiae.\",\"excerpt\":\"Enim nihil provident at magni et quisquam ipsa non voluptatibus.\",\"status\":\"pending\",\"post_type\":\"page\",\"slug\":\"at-commodi-enim-incidunt-facilis-autem-quia\",\"user_id\":22,\"created_at\":\"2025-11-21T10:39:17.000000Z\",\"updated_at\":\"2025-11-25T02:15:31.000000Z\",\"published_at\":\"2025-11-24T07:39:36.000000Z\",\"id\":21},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(81, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Nostrum iste eaque odio illo harum illo autem.\",\"content\":\"Incidunt quaerat ut iure explicabo id expedita. Animi dolorum sapiente qui repellendus totam qui. Magni aspernatur voluptatem velit a ut.\",\"excerpt\":\"Officia enim ab voluptas ut est et qui voluptate ratione.\",\"status\":\"scheduled\",\"post_type\":\"page\",\"slug\":\"dolores-temporibus-aut-et-et\",\"user_id\":23,\"created_at\":\"2025-10-03T07:08:48.000000Z\",\"updated_at\":\"2025-08-19T16:22:35.000000Z\",\"published_at\":null,\"id\":22},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(82, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Velit et sunt ut inventore.\",\"content\":\"Et rerum illo neque quod et quisquam necessitatibus. Quo voluptatem maxime neque earum. Quaerat perferendis voluptatem atque officiis beatae pariatur a. Cupiditate non repellendus et veritatis sed ab.\",\"excerpt\":\"Vel velit eos quia et consequuntur consequatur nostrum molestiae.\",\"status\":\"scheduled\",\"post_type\":\"post\",\"slug\":\"ullam-quod-saepe-laboriosam-cupiditate-voluptatum\",\"user_id\":24,\"created_at\":\"2025-08-29T15:36:28.000000Z\",\"updated_at\":\"2025-08-01T02:36:38.000000Z\",\"published_at\":\"2025-11-22T07:36:22.000000Z\",\"id\":23},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(83, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Laboriosam quisquam eum laborum repudiandae odio recusandae.\",\"content\":\"Facilis ut ea distinctio delectus. Dolores omnis molestiae amet rerum rerum incidunt aspernatur. Id nihil sequi quibusdam consequuntur labore.\",\"excerpt\":\"Ullam ipsa eum illo quisquam sed iste repudiandae impedit consequatur velit.\",\"status\":\"pending\",\"post_type\":\"page\",\"slug\":\"eos-ipsam-aut-quibusdam-blanditiis-temporibus-sed-et\",\"user_id\":25,\"created_at\":\"2025-09-28T13:28:25.000000Z\",\"updated_at\":\"2025-12-18T10:52:04.000000Z\",\"published_at\":null,\"id\":24},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(84, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Eaque doloremque voluptate iure et.\",\"content\":\"Qui non et voluptatem et dolores. Voluptatem aliquid nulla et mollitia veritatis. Doloribus quam dicta voluptatem cum omnis quam eum. Ea reprehenderit nobis officia impedit veritatis.\",\"excerpt\":\"Dolore blanditiis odio impedit architecto blanditiis dolores quae iste iste quos.\",\"status\":\"private\",\"post_type\":\"page\",\"slug\":\"ab-et-nisi-corrupti-omnis\",\"user_id\":26,\"created_at\":\"2025-09-22T07:03:01.000000Z\",\"updated_at\":\"2025-07-23T00:05:07.000000Z\",\"published_at\":null,\"id\":25},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(85, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Sint aut et reiciendis et.\",\"content\":\"Est animi laboriosam aut qui eius. Quo accusamus ducimus non non modi. Harum est illum consequatur placeat est id iusto.\",\"excerpt\":\"In quas mollitia ut tenetur necessitatibus maxime modi voluptas eaque ut corrupti vel.\",\"status\":\"private\",\"post_type\":\"page\",\"slug\":\"necessitatibus-inventore-esse-necessitatibus-et-amet-id-quo\",\"user_id\":27,\"created_at\":\"2025-07-22T13:47:24.000000Z\",\"updated_at\":\"2025-11-27T13:40:13.000000Z\",\"published_at\":\"2025-09-28T12:04:02.000000Z\",\"id\":26},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(86, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Fugiat nostrum quod similique sunt delectus ratione.\",\"content\":\"Qui dolor aut veniam fugiat magni aut. Aut minima dolorem quas a. Nemo est sint voluptatem placeat dicta. Eos quos dolor delectus explicabo esse perspiciatis veniam molestias.\",\"excerpt\":\"Architecto ut quia officia aliquam repellendus voluptatibus possimus vel officiis aliquid doloremque corrupti placeat.\",\"status\":\"published\",\"post_type\":\"post\",\"slug\":\"molestiae-et-consequatur-dolor-rerum-odio-unde-ut\",\"user_id\":28,\"created_at\":\"2025-07-19T23:36:51.000000Z\",\"updated_at\":\"2025-10-26T13:50:53.000000Z\",\"published_at\":null,\"id\":27},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(87, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Fuga accusantium quia quas explicabo itaque dicta.\",\"content\":\"Vero quam doloremque quibusdam animi sunt. Accusantium veritatis qui perferendis sint beatae et delectus. Dicta dolorem sit labore aut maxime. Facere odit dignissimos voluptas exercitationem voluptatem facere.\",\"excerpt\":\"Provident magnam voluptas consequuntur nobis dicta sit sequi doloribus consequuntur quisquam hic deserunt ipsum.\",\"status\":\"pending\",\"post_type\":\"post\",\"slug\":\"facilis-a-soluta-veniam-qui-ex\",\"user_id\":29,\"created_at\":\"2025-09-17T19:53:01.000000Z\",\"updated_at\":\"2025-10-01T20:57:52.000000Z\",\"published_at\":null,\"id\":28},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(88, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Voluptatum sunt ea id eligendi provident.\",\"content\":\"Est ipsa tenetur dolores dolore minima qui ratione. Ratione repellendus qui est ducimus animi. Voluptatem optio asperiores quia. Eveniet ut porro aut omnis.\",\"excerpt\":\"Asperiores corporis sit hic deleniti quo et nihil earum quibusdam enim.\",\"status\":\"published\",\"post_type\":\"post\",\"slug\":\"nesciunt-iusto-est-et-occaecati-id-iste-commodi\",\"user_id\":30,\"created_at\":\"2025-09-26T08:22:20.000000Z\",\"updated_at\":\"2025-06-28T14:57:20.000000Z\",\"published_at\":null,\"id\":29},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(89, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Vel aut rerum et.\",\"content\":\"Consequatur eum id quibusdam aut dolor. Sint dolore in numquam accusantium impedit. Sit quis quis tempore tempore error reprehenderit.\",\"excerpt\":\"Voluptas earum qui exercitationem provident voluptas aut.\",\"status\":\"private\",\"post_type\":\"post\",\"slug\":\"id-enim-itaque-pariatur-assumenda-saepe-hic-non\",\"user_id\":31,\"created_at\":\"2025-11-01T23:17:20.000000Z\",\"updated_at\":\"2025-12-16T17:16:07.000000Z\",\"published_at\":null,\"id\":30},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(90, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Libero vel dolor vero est eligendi sunt.\",\"content\":\"Distinctio qui dolor quia est fuga nesciunt iure. Aut dolor sit dicta dignissimos aliquam ducimus. Sint aut velit repellendus ea ut voluptatibus iste.\",\"excerpt\":\"Neque quas minus incidunt asperiores aut rerum voluptate debitis quia.\",\"status\":\"scheduled\",\"post_type\":\"post\",\"slug\":\"at-itaque-quia-nihil-porro-natus-quam\",\"user_id\":32,\"created_at\":\"2025-10-03T15:36:51.000000Z\",\"updated_at\":\"2025-09-10T09:12:15.000000Z\",\"published_at\":null,\"id\":31},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20');
INSERT INTO `action_logs` (`id`, `action_by`, `type`, `title`, `data`, `created_at`, `updated_at`) VALUES
(91, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Pariatur quis laboriosam odio adipisci nihil quia cumque.\",\"content\":\"Dolorem repellat reiciendis rerum omnis. Vero earum at ipsa veniam quo reiciendis.\",\"excerpt\":\"Ea officia sequi sequi amet qui nobis eum laboriosam voluptate eius veritatis quae nihil consequuntur.\",\"status\":\"pending\",\"post_type\":\"post\",\"slug\":\"fugit-adipisci-sunt-nobis\",\"user_id\":33,\"created_at\":\"2025-10-20T03:41:21.000000Z\",\"updated_at\":\"2025-10-24T21:26:09.000000Z\",\"published_at\":null,\"id\":32},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(92, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Molestias ut dolore ea esse fugiat quos molestiae.\",\"content\":\"Inventore sapiente quis voluptatem aut. Modi atque voluptatem aspernatur in voluptate totam velit.\",\"excerpt\":\"Labore excepturi qui et quia quia sapiente voluptas ut porro natus saepe rem ut.\",\"status\":\"scheduled\",\"post_type\":\"page\",\"slug\":\"et-culpa-et-reiciendis-possimus-facere\",\"user_id\":34,\"created_at\":\"2025-09-03T23:12:59.000000Z\",\"updated_at\":\"2025-10-07T13:39:51.000000Z\",\"published_at\":null,\"id\":33},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(93, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Dolorum aut modi inventore ad ex.\",\"content\":\"Unde expedita aut sed nisi. Qui quia quis inventore praesentium aut eligendi quam aut. Vitae officia nam veritatis qui voluptatem quaerat.\",\"excerpt\":\"Ipsam enim maxime dolores velit quasi velit voluptatem.\",\"status\":\"pending\",\"post_type\":\"post\",\"slug\":\"voluptatem-sed-explicabo-sed-reiciendis-beatae\",\"user_id\":35,\"created_at\":\"2025-11-27T09:11:07.000000Z\",\"updated_at\":\"2025-08-21T19:44:05.000000Z\",\"published_at\":\"2025-08-14T09:56:36.000000Z\",\"id\":34},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(94, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Id inventore sequi ut rem qui consequatur autem.\",\"content\":\"Sapiente velit tempore voluptatem quia eligendi et eius. Fuga saepe sint asperiores ad qui qui atque. Officia esse qui enim laudantium iure atque dolorem. Itaque officiis veniam dolor odio. Possimus sint dicta et dignissimos in autem.\",\"excerpt\":\"Quis sit neque et minima perferendis est ab delectus.\",\"status\":\"draft\",\"post_type\":\"post\",\"slug\":\"voluptatem-laboriosam-doloremque-vero-dolorem-deserunt\",\"user_id\":36,\"created_at\":\"2025-10-03T09:38:26.000000Z\",\"updated_at\":\"2025-11-18T12:04:19.000000Z\",\"published_at\":null,\"id\":35},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(95, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Tenetur expedita et in a unde inventore vel.\",\"content\":\"Ipsum dolorem fugit eos quasi ipsum velit quos voluptatem. Consequatur assumenda exercitationem perspiciatis perferendis quod. Voluptas magni odio et similique rerum.\",\"excerpt\":\"Nemo nihil dolores ut saepe eum aliquam.\",\"status\":\"scheduled\",\"post_type\":\"post\",\"slug\":\"nostrum-velit-deleniti-non-placeat-et-unde\",\"user_id\":37,\"created_at\":\"2025-10-01T23:29:07.000000Z\",\"updated_at\":\"2025-09-27T13:14:50.000000Z\",\"published_at\":\"2025-10-15T10:26:55.000000Z\",\"id\":36},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(96, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Voluptas voluptatibus ut in animi dolorem qui.\",\"content\":\"Velit aut non dolor ab quibusdam. Porro aut perferendis consectetur quisquam nesciunt perspiciatis hic. Rem aperiam omnis nam consequuntur ea placeat.\",\"excerpt\":\"Dolorum voluptates et quidem iusto sed harum et voluptatem quo deserunt perspiciatis.\",\"status\":\"scheduled\",\"post_type\":\"post\",\"slug\":\"qui-earum-et-ut-natus-voluptatibus-sed-et\",\"user_id\":38,\"created_at\":\"2025-09-09T08:58:47.000000Z\",\"updated_at\":\"2025-11-19T11:18:35.000000Z\",\"published_at\":\"2025-10-14T11:31:43.000000Z\",\"id\":37},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(97, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Sed asperiores quaerat occaecati qui aut.\",\"content\":\"Delectus qui modi in officiis. Doloremque placeat vero provident illo porro.\",\"excerpt\":\"Nisi dolor dolor eum similique et doloribus.\",\"status\":\"draft\",\"post_type\":\"page\",\"slug\":\"suscipit-modi-ea-aut-tempora-ut-et\",\"user_id\":39,\"created_at\":\"2025-08-07T08:30:52.000000Z\",\"updated_at\":\"2025-10-04T18:41:49.000000Z\",\"published_at\":null,\"id\":38},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(98, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Ut dicta unde officia laboriosam beatae in.\",\"content\":\"Et iure est minima quia. Exercitationem ea neque commodi exercitationem placeat saepe. Sint culpa molestiae atque accusamus excepturi ut.\",\"excerpt\":\"Repudiandae consequatur quo quo maxime totam est ex rem voluptatum repellendus non ipsum cumque incidunt.\",\"status\":\"draft\",\"post_type\":\"post\",\"slug\":\"ut-aut-repellat-eveniet-quaerat-totam-sunt-asperiores-voluptate\",\"user_id\":40,\"created_at\":\"2025-09-08T05:03:28.000000Z\",\"updated_at\":\"2025-10-23T01:36:21.000000Z\",\"published_at\":\"2025-09-21T10:23:31.000000Z\",\"id\":39},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(99, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Dolore eaque saepe eum necessitatibus.\",\"content\":\"Totam iste blanditiis aperiam nam voluptatem id cum repellendus. Omnis rerum ratione quis aspernatur in. Repellendus iure totam in et modi rerum aut.\",\"excerpt\":\"Voluptate ipsam ut similique consequatur vel ullam consequuntur.\",\"status\":\"pending\",\"post_type\":\"post\",\"slug\":\"magnam-maxime-est-porro-nemo-et\",\"user_id\":41,\"created_at\":\"2025-09-10T19:21:32.000000Z\",\"updated_at\":\"2025-11-24T03:47:36.000000Z\",\"published_at\":null,\"id\":40},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(100, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Aut sed impedit officiis aut culpa quos consequuntur.\",\"content\":\"Numquam deleniti voluptates non laborum. Sint minima molestiae quia odio sed. Consectetur adipisci modi asperiores explicabo enim. Enim expedita eveniet laboriosam ratione itaque similique.\",\"excerpt\":\"Cumque culpa ea optio dolorem odit fugit qui at aliquam.\",\"status\":\"pending\",\"post_type\":\"page\",\"slug\":\"cum-assumenda-quia-ut-sint-maxime-et-tenetur\",\"user_id\":42,\"created_at\":\"2025-07-09T00:37:42.000000Z\",\"updated_at\":\"2025-09-03T19:36:53.000000Z\",\"published_at\":null,\"id\":41},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(101, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Non reiciendis nobis quia possimus.\",\"content\":\"Et impedit cumque atque repellat accusantium quia. Laborum in et neque mollitia esse. Et ut sunt et dignissimos. Aperiam dicta sed ab nihil.\",\"excerpt\":\"Ipsam omnis rerum mollitia porro atque rerum et.\",\"status\":\"draft\",\"post_type\":\"post\",\"slug\":\"unde-accusamus-officia-vero-est-dicta\",\"user_id\":43,\"created_at\":\"2025-08-07T13:25:33.000000Z\",\"updated_at\":\"2025-07-18T07:27:16.000000Z\",\"published_at\":\"2025-11-04T21:45:18.000000Z\",\"id\":42},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(102, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Est debitis inventore qui temporibus nam molestias fugiat.\",\"content\":\"Nobis aperiam et veniam a repudiandae dolorem. Nostrum quo rerum et possimus minima sed. Quia qui nulla doloremque. Illo eos quos porro ea.\",\"excerpt\":\"Quidem temporibus molestiae ducimus et repellat quia dignissimos cum vel rem omnis unde.\",\"status\":\"pending\",\"post_type\":\"post\",\"slug\":\"et-ut-sit-aut-quaerat\",\"user_id\":44,\"created_at\":\"2025-12-03T08:04:19.000000Z\",\"updated_at\":\"2025-07-03T00:49:31.000000Z\",\"published_at\":\"2025-08-03T06:19:26.000000Z\",\"id\":43},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(103, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Excepturi alias velit nesciunt voluptatem.\",\"content\":\"Natus voluptatibus numquam at asperiores. Et saepe totam tempora voluptas soluta. Quaerat praesentium vitae eius rerum consequatur in.\",\"excerpt\":\"Laboriosam optio rem dolorum vero dolores qui est in doloremque nihil sit commodi.\",\"status\":\"draft\",\"post_type\":\"page\",\"slug\":\"necessitatibus-nesciunt-aut-vel\",\"user_id\":45,\"created_at\":\"2025-07-21T07:59:01.000000Z\",\"updated_at\":\"2025-09-19T22:44:22.000000Z\",\"published_at\":\"2025-07-04T01:47:57.000000Z\",\"id\":44},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(104, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Fugiat corporis neque nemo fugit quibusdam ad magni in.\",\"content\":\"Cumque omnis error ducimus. Est dignissimos consequatur fugit rem velit.\",\"excerpt\":\"Quae cupiditate deleniti expedita sit ea dolor possimus aut animi.\",\"status\":\"published\",\"post_type\":\"post\",\"slug\":\"tenetur-et-et-neque-nesciunt-pariatur-quos\",\"user_id\":46,\"created_at\":\"2025-07-10T22:51:14.000000Z\",\"updated_at\":\"2025-08-08T18:37:14.000000Z\",\"published_at\":\"2025-09-12T14:46:55.000000Z\",\"id\":45},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(105, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Necessitatibus dolore quia dolores possimus dolores.\",\"content\":\"Provident est est ipsam maxime. Exercitationem deleniti officia recusandae. Dignissimos sequi voluptas earum aut soluta quas nobis.\",\"excerpt\":\"Fugit asperiores non maiores eveniet corrupti aliquam sed quibusdam sit ex.\",\"status\":\"published\",\"post_type\":\"page\",\"slug\":\"beatae-ipsa-aut-similique\",\"user_id\":47,\"created_at\":\"2025-09-07T19:06:26.000000Z\",\"updated_at\":\"2025-09-19T05:35:50.000000Z\",\"published_at\":\"2025-10-06T14:36:05.000000Z\",\"id\":46},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(106, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Doloribus expedita placeat aut quia qui corrupti.\",\"content\":\"Veniam rerum tempora neque rem. Dolore omnis placeat aut ipsa nihil suscipit voluptatibus. Molestiae ab optio voluptatem rerum vero occaecati autem.\",\"excerpt\":\"Omnis mollitia temporibus sit totam qui accusantium vel molestiae omnis enim.\",\"status\":\"published\",\"post_type\":\"page\",\"slug\":\"ex-dolores-et-pariatur-quos-magnam\",\"user_id\":48,\"created_at\":\"2025-10-21T01:12:13.000000Z\",\"updated_at\":\"2025-08-10T04:07:46.000000Z\",\"published_at\":\"2025-12-14T10:56:14.000000Z\",\"id\":47},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(107, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Minima itaque praesentium et atque rerum et magnam sunt.\",\"content\":\"Officiis unde et totam ratione animi sapiente. Totam consequatur laudantium commodi ut unde quis sunt. Necessitatibus quia laboriosam eaque possimus voluptas tempora.\",\"excerpt\":\"Illo laudantium est minima quaerat amet cum.\",\"status\":\"pending\",\"post_type\":\"post\",\"slug\":\"possimus-voluptatem-quasi-fugiat-cupiditate-quasi\",\"user_id\":49,\"created_at\":\"2025-12-13T08:25:45.000000Z\",\"updated_at\":\"2025-07-01T12:04:53.000000Z\",\"published_at\":\"2025-10-27T18:03:45.000000Z\",\"id\":48},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(108, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Assumenda recusandae dolor temporibus natus.\",\"content\":\"Et sed et saepe omnis unde consectetur accusantium. Mollitia voluptates vel dolor perferendis eum explicabo dignissimos omnis.\",\"excerpt\":\"Sunt a ab tempora cumque earum accusamus consectetur consequatur sit corrupti autem dolorem necessitatibus.\",\"status\":\"draft\",\"post_type\":\"post\",\"slug\":\"aliquid-est-veniam-quo-vel-sit-nesciunt\",\"user_id\":50,\"created_at\":\"2025-09-13T13:13:58.000000Z\",\"updated_at\":\"2025-06-29T23:05:13.000000Z\",\"published_at\":\"2025-11-08T17:12:18.000000Z\",\"id\":49},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(109, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Ut laboriosam et officia.\",\"content\":\"Amet quia ipsum iure et enim autem exercitationem voluptatum. Ducimus et itaque explicabo soluta. Qui et consequatur expedita in quia.\",\"excerpt\":\"Eaque consequatur qui molestias necessitatibus provident sit doloremque quo et.\",\"status\":\"published\",\"post_type\":\"page\",\"slug\":\"tempore-quo-eius-quaerat-qui-est-occaecati-ex\",\"user_id\":51,\"created_at\":\"2025-06-29T02:56:09.000000Z\",\"updated_at\":\"2025-10-21T02:45:22.000000Z\",\"published_at\":null,\"id\":50},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(110, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Est et quo nam nulla autem.\",\"content\":\"Unde dolores quas non quisquam quia. Assumenda quibusdam illo non. Ut qui non perspiciatis dolor consequuntur repellendus.\",\"excerpt\":\"Aut minima qui soluta excepturi deleniti sed sed.\",\"status\":\"scheduled\",\"post_type\":\"post\",\"slug\":\"pariatur-debitis-quaerat-illo\",\"user_id\":52,\"created_at\":\"2025-10-04T16:03:07.000000Z\",\"updated_at\":\"2025-09-02T07:37:08.000000Z\",\"published_at\":null,\"id\":51},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(111, 1, 'created', 'Post created by Unknown', '{\"post\":{\"title\":\"Quia velit voluptatem vel excepturi.\",\"content\":\"Perspiciatis corporis explicabo quas ut dolorem. Id aperiam ratione consequatur quo repellat magni. Et ipsa quas aut minus nihil.\",\"excerpt\":\"Illum et quibusdam iure impedit consequuntur provident accusamus.\",\"status\":\"scheduled\",\"post_type\":\"post\",\"slug\":\"incidunt-qui-sed-iusto-eaque-assumenda\",\"user_id\":53,\"created_at\":\"2025-09-24T14:32:14.000000Z\",\"updated_at\":\"2025-11-02T15:09:43.000000Z\",\"published_at\":null,\"id\":52},\"action_by\":1}', '2025-12-19 14:58:20', '2025-12-19 14:58:20'),
(112, 1, 'updated', 'User updated by Unknown', '{\"user\":{\"id\":1,\"matricule\":\"20569\\/S\",\"first_name\":\"Super\",\"last_name\":\"Admin\",\"email\":\"superadmin@example.com\",\"username\":\"superadmin\",\"avatar_id\":null,\"two_factor_secret\":null,\"two_factor_recovery_codes\":null,\"two_factor_confirmed_at\":null,\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"updated_at\":\"2025-12-19T15:12:14.000000Z\",\"permissions\":null,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Super Admin\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Super Admin\",\"avatar\":null},\"action_by\":1}', '2025-12-19 15:12:14', '2025-12-19 15:12:14'),
(113, 1, 'updated', 'User updated by Unknown', '{\"user\":{\"id\":2,\"matricule\":\"20570\\/S\",\"first_name\":\"Admin\",\"last_name\":\"Test\",\"email\":\"admin@example.com\",\"username\":\"admin\",\"avatar_id\":null,\"two_factor_secret\":null,\"two_factor_recovery_codes\":null,\"two_factor_confirmed_at\":null,\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"updated_at\":\"2025-12-19T15:12:14.000000Z\",\"permissions\":null,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/Admin Test\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"Admin Test\",\"avatar\":null},\"action_by\":1}', '2025-12-19 15:12:14', '2025-12-19 15:12:14'),
(114, 1, 'updated', 'User updated by Unknown', '{\"user\":{\"id\":3,\"matricule\":\"20571\\/S\",\"first_name\":\"User\",\"last_name\":\"Test\",\"email\":\"user@example.com\",\"username\":\"user\",\"avatar_id\":null,\"two_factor_secret\":null,\"two_factor_recovery_codes\":null,\"two_factor_confirmed_at\":null,\"created_at\":\"2025-12-19T14:58:19.000000Z\",\"updated_at\":\"2025-12-19T15:12:14.000000Z\",\"permissions\":null,\"avatar_url\":\"https:\\/\\/ui-avatars.com\\/api\\/User Test\\/80\\/635bff\\/fff\\/2\",\"full_name\":\"User Test\",\"avatar\":null},\"action_by\":1}', '2025-12-19 15:12:14', '2025-12-19 15:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `affectations`
--

CREATE TABLE `affectations` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `unite_id` bigint UNSIGNED DEFAULT NULL,
  `poste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_logs`
--

CREATE TABLE `app_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `attached_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attached_id` bigint UNSIGNED DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `uploaded_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auditable_id` bigint UNSIGNED DEFAULT NULL,
  `old_values` json DEFAULT NULL,
  `new_values` json DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conjoints`
--

CREATE TABLE `conjoints` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mariage` tinyint(1) NOT NULL DEFAULT '0',
  `date_mariage` date DEFAULT NULL,
  `lieu_mariage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_acte_mariage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rang` int DEFAULT NULL,
  `situation` enum('MARIE','DIVORCE','DECEDE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MARIE',
  `date_situation` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contrats`
--

CREATE TABLE `contrats` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `fichier_contrat_id` bigint UNSIGNED DEFAULT NULL,
  `type_contrat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `renouvellable` tinyint(1) NOT NULL DEFAULT '0',
  `statut` enum('EN_COURS','TERMINE','ANNULE','SUSPENDU') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EN_COURS',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detachments`
--

CREATE TABLE `detachments` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `organisme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diplomes`
--

CREATE TABLE `diplomes` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `intitule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etablissement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee_obtention` year DEFAULT NULL,
  `scanned_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED DEFAULT NULL,
  `uploaded_by` bigint UNSIGNED DEFAULT NULL,
  `type_document` enum('ETAT_CIVIL','NOTATIONS','STAGES_DIPLOMES','NOMINATIONS_PROMOTIONS','SANCTIONS','SANTE','DIVERS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `storage_disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_hash` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `date_delivrance` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `upload_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enfants`
--

CREATE TABLE `enfants` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `sexe` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scolarise` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` enum('OFFICIER','SOUS-OFFICIER','HOMME_DE_RANG') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_promotion` date DEFAULT NULL,
  `acte_nomination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_08_100000_create_telescope_entries_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_07_24_184706_create_permission_tables', 1),
(7, '2023_01_01_000002_create_taxonomies_table', 1),
(8, '2023_01_01_000003_create_posts_table', 1),
(9, '2023_01_01_000004_create_post_meta_table', 1),
(10, '2023_01_01_000004_create_terms_table', 1),
(11, '2023_01_01_000005_create_term_relationships_table', 1),
(12, '2023_06_07_000001_create_pulse_tables', 1),
(13, '2025_04_04_174216_create_action_logs_table', 1),
(14, '2025_04_07_120407_create_settings_table', 1),
(15, '2025_07_27_045826_create_media_table', 1),
(16, '2025_08_13_140640_update_users_table_add_first_last_name', 1),
(17, '2025_08_13_153546_create_user_meta_table', 1),
(18, '2025_08_17_061855_add_recaptcha_settings', 1),
(19, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(20, '2025_12_15_143131_add_matricule_to_users_table', 2),
(21, '2025_12_15_143800_create_personnel_table', 2),
(22, '2025_12_15_143810_create_unites_table', 2),
(23, '2025_12_15_143812_create_personnel_unite_table', 2),
(24, '2025_12_15_143814_create_affectations_table', 2),
(25, '2025_12_15_143816_create_grades_table', 2),
(26, '2025_12_15_143838_create_conjoints_table', 2),
(27, '2025_12_15_143839_create_enfants_table', 2),
(28, '2025_12_15_143850_create_diplomes_table', 2),
(29, '2025_12_15_143851_create_stages_table', 2),
(30, '2025_12_15_143854_create_opex_table', 2),
(31, '2025_12_15_143857_create_detachments_table', 2),
(32, '2025_12_15_144113_create_documents_table', 2),
(33, '2025_12_15_144115_create_attachments_table', 2),
(34, '2025_12_15_144116_create_contrats_table', 2),
(35, '2025_12_15_144125_create_punitions_table', 2),
(36, '2025_12_15_144127_create_recompenses_table', 2),
(37, '2025_12_15_144140_create_situations_administratives_table', 2),
(38, '2025_12_15_144141_create_sante_personnel_table', 2),
(39, '2025_12_15_144150_create_requests_table', 2),
(40, '2025_12_15_144151_create_request_approvals_table', 2),
(41, '2025_12_15_144153_create_request_attachments_table', 2),
(42, '2025_12_15_144207_create_audit_logs_table', 2),
(43, '2025_12_15_144208_create_app_logs_table', 2),
(44, '2025_12_15_144210_create_notifications_table', 2),
(45, '2025_12_15_144212_create_system_jobs_table', 2),
(46, '2025_12_15_150010_add_foreign_keys_to_argos_tables', 2),
(47, '2025_12_15_195424_create_sessions_table', 2),
(48, '2025_12_18_122009_add_permissions_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opex`
--

CREATE TABLE `opex` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `nom_operation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_deploiement` date DEFAULT NULL,
  `date_retour` date DEFAULT NULL,
  `commentaire` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'personnel.view', 'web', NULL, '2025-12-19 15:14:36', '2025-12-19 15:14:36'),
(2, 'personnel.create', 'web', NULL, '2025-12-19 15:14:36', '2025-12-19 15:14:36'),
(3, 'personnel.update', 'web', NULL, '2025-12-19 15:14:36', '2025-12-19 15:14:36'),
(4, 'personnel.delete', 'web', NULL, '2025-12-19 15:14:36', '2025-12-19 15:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `id` bigint UNSIGNED NOT NULL,
  `matricule` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricule_solde` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `situation` enum('CELIBATAIRE','MARIE','DIVORCE','VEUF') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CELIBATAIRE',
  `sexe` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupe_sanguin` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` text COLLATE utf8mb4_unicode_ci,
  `numero_cni` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lieu_delivrance_cni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_delivrance_cni` date DEFAULT NULL,
  `personne_prevenir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_prevenir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pere` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mere` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entree_service` date DEFAULT NULL,
  `date_liberation` date DEFAULT NULL,
  `grade_service` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arme_service` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_admission` date DEFAULT NULL,
  `origine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_prestation_serment` date DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `motif_sortie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut` enum('ACTIF','DETACHE','RETRAITE','DECEDE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIF',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_unite`
--

CREATE TABLE `personnel_unite` (
  `personnel_id` bigint UNSIGNED NOT NULL,
  `unite_id` bigint UNSIGNED NOT NULL,
  `poste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `meta` json DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_type`, `title`, `slug`, `excerpt`, `content`, `status`, `meta`, `parent_id`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'post', 'Welcome to Our Blog', 'welcome-to-our-blog', 'Welcome to our new blog! We\'re excited to share our thoughts with you.', '<p>This is the first post on our new blog. We\'re excited to share our thoughts with you!</p><p>Stay tuned for more updates.</p>', 'published', NULL, NULL, '2025-11-30 14:58:19', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(2, 1, 'page', 'Sample Page', 'sample-page', NULL, '<p>This is a sample page created to demonstrate the page functionality.</p><p>Feel free to edit this content in the admin panel.</p>', 'published', NULL, NULL, '2025-12-19 14:58:19', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(3, 4, 'page', 'Dolorem saepe consequuntur incidunt provident quia voluptatibus ut.', 'labore-quidem-nostrum-sit-et-tempora', 'Animi placeat ipsa minima beatae nulla voluptates voluptates dolore et odio voluptas.', 'Ut ipsa eius nam assumenda. Delectus illum aut quis voluptatem minima aut qui. Pariatur incidunt amet modi quam et fuga.', 'scheduled', NULL, NULL, NULL, '2025-11-07 13:14:37', '2025-12-01 06:43:18'),
(4, 5, 'page', 'Maiores maxime necessitatibus quas et sed quia officia.', 'iste-sunt-et-animi-labore', 'Non hic impedit eius illum officiis unde consequatur qui.', 'Maxime eos ut sit alias. Quos a et aliquid est. Excepturi assumenda eveniet laborum quo. Fuga impedit vel doloremque error sit nam.', 'private', NULL, NULL, NULL, '2025-06-23 05:50:10', '2025-10-20 16:26:34'),
(5, 6, 'post', 'Deserunt ducimus aspernatur deleniti quae laudantium et nisi.', 'velit-perspiciatis-reiciendis-ratione-aperiam-ullam-molestiae', 'Vel illum debitis molestias voluptatum quaerat corporis quia eligendi possimus rerum animi deleniti.', 'Sapiente eum quisquam omnis rerum illum et quia. Nemo cupiditate sed corporis eum odio pariatur.', 'pending', NULL, NULL, '2025-11-17 04:59:53', '2025-09-03 00:02:39', '2025-09-13 17:17:16'),
(6, 7, 'post', 'Quis fuga omnis sed dolor nihil molestiae veritatis sequi.', 'dolorum-dolor-nisi-libero-ex-expedita-minus-tenetur', 'Non quia qui sed commodi dolorem at harum qui iste nesciunt.', 'Voluptatem et dolorem beatae qui fugit ipsa et laboriosam. Voluptates est consequuntur nisi occaecati sint est. Id et veniam tempore voluptas dicta dolor in vel.', 'private', NULL, NULL, NULL, '2025-09-17 15:30:57', '2025-09-09 10:30:21'),
(7, 8, 'post', 'In itaque repellendus est rerum soluta.', 'sed-nisi-rerum-aspernatur-quia-nulla-neque', 'Praesentium ducimus voluptas ullam voluptatem quo eaque nobis ut rerum quis quidem.', 'Placeat laudantium qui est in sunt nam. Est pariatur sit animi est et qui aliquid. Non sapiente quos aut cum illum cum dolorem.', 'private', NULL, NULL, '2025-09-10 08:07:37', '2025-07-23 12:41:08', '2025-09-07 21:18:01'),
(8, 9, 'post', 'Debitis qui accusamus ut fugiat non eos esse.', 'et-ipsam-quas-voluptatibus', 'Neque non quaerat esse accusamus et similique.', 'Mollitia consequatur aut natus vero ut eum repellendus. Dignissimos voluptates sed quia quo aut nulla perferendis. Libero minus corporis aliquid explicabo. Quia asperiores eaque dolores distinctio et.', 'published', NULL, NULL, NULL, '2025-09-25 20:46:49', '2025-11-23 02:08:22'),
(9, 10, 'post', 'Id rerum accusamus beatae voluptates.', 'quo-impedit-et-tenetur-odit', 'Consequatur saepe et sint nulla recusandae sed nisi.', 'In aut ab et quibusdam ipsum modi necessitatibus. Dolore nobis repellat similique. Sit distinctio dignissimos harum qui sunt magnam. Magnam libero laboriosam qui similique possimus sunt.', 'published', NULL, NULL, '2025-06-25 00:07:55', '2025-10-16 14:25:04', '2025-12-13 12:58:10'),
(10, 11, 'page', 'Sit quis ut dolorem omnis.', 'sit-placeat-eum-nihil-minima-eum-aut-aspernatur', 'Modi ipsam vero animi cupiditate nostrum quam labore perspiciatis modi omnis.', 'Explicabo doloremque deleniti et pariatur placeat animi. Dolor aut et minus corporis. Iste deleniti eos consectetur voluptas inventore nulla autem.', 'published', NULL, NULL, '2025-06-19 23:14:44', '2025-08-10 19:13:20', '2025-11-29 23:01:39'),
(11, 12, 'page', 'Eos distinctio dolorem vitae porro ut omnis.', 'maiores-excepturi-itaque-distinctio-enim-doloribus', 'Rerum mollitia molestias id rerum sint autem rerum.', 'Quia eos praesentium porro itaque non omnis. Aliquid ipsum ipsum a veniam esse exercitationem. Consequatur omnis soluta velit cumque quisquam omnis quaerat.', 'scheduled', NULL, NULL, '2025-11-10 14:04:44', '2025-07-26 21:22:02', '2025-07-05 20:22:23'),
(12, 13, 'page', 'Fuga voluptatibus enim architecto veniam et debitis aliquam sed.', 'sapiente-quod-dolorum-aut-eligendi-aperiam-non-aut', 'A maxime sunt iure velit ab maiores illo vel corrupti voluptatibus.', 'Autem iure est ad ut. Repellendus consequatur placeat temporibus et in. Ut rem dolorem quae.', 'private', NULL, NULL, '2025-09-13 03:42:53', '2025-08-01 16:50:55', '2025-07-14 16:29:30'),
(13, 14, 'page', 'Sit ducimus enim deleniti.', 'perferendis-minima-illum-cum-et-dicta', 'Quia dignissimos esse cupiditate maxime at molestias voluptates exercitationem optio reiciendis inventore sit.', 'Sed debitis sit minima maiores et est. Sunt deserunt qui eius aperiam non. Tenetur magnam modi in rerum.', 'draft', NULL, NULL, NULL, '2025-09-19 02:00:47', '2025-08-03 02:47:07'),
(14, 15, 'page', 'Voluptatem quis illo reiciendis sed sed nobis.', 'accusantium-voluptates-nihil-velit-consequatur-repellendus-quia-nihil', 'Cumque ea itaque molestiae ratione in nihil perspiciatis velit at et blanditiis.', 'Qui dolor rerum sint. Deserunt aperiam omnis corporis at. Quibusdam ratione dolor qui in maxime ab architecto.', 'draft', NULL, NULL, '2025-11-07 02:49:16', '2025-11-28 01:35:44', '2025-07-11 02:28:37'),
(15, 16, 'page', 'Ducimus id aut mollitia.', 'quia-perferendis-consectetur-ducimus-praesentium', 'Eligendi voluptas minus excepturi molestias sit fuga iure dolor doloribus.', 'Asperiores labore voluptates eligendi ut. Et pariatur possimus et qui. Quidem qui libero consequuntur nam nemo esse velit. Rerum perspiciatis eos nemo nulla porro quia unde.', 'draft', NULL, NULL, NULL, '2025-08-27 16:16:24', '2025-07-17 01:52:50'),
(16, 17, 'page', 'Deleniti voluptatem repellendus eius voluptate.', 'ipsum-quia-mollitia-fugit-doloribus', 'Sunt praesentium occaecati et cumque eaque quisquam amet et eligendi.', 'Id quibusdam ea alias occaecati ea eum. Rerum maxime dolorum voluptatem qui ipsa sit. Ut nam ut iusto magni eveniet ut. Voluptatem numquam iste doloribus distinctio.', 'private', NULL, NULL, '2025-08-12 19:47:40', '2025-10-20 21:23:56', '2025-08-08 08:23:39'),
(17, 18, 'post', 'Nemo unde amet aliquam at similique.', 'qui-ut-eaque-quia-fuga-provident-aliquam-aspernatur', 'Iste nostrum et et iusto quia soluta consequuntur officiis et culpa.', 'Esse odio aut ipsum voluptatibus delectus sit quis. Provident alias aperiam soluta rerum veritatis. Nisi omnis consequatur optio consequatur. Culpa doloribus aut sint dolores et esse quos natus.', 'scheduled', NULL, NULL, '2025-11-28 10:17:56', '2025-07-11 08:58:00', '2025-07-18 17:36:47'),
(18, 19, 'page', 'Omnis veritatis blanditiis voluptates possimus.', 'consequuntur-atque-illo-maxime-saepe-reiciendis-ipsa', 'Vitae omnis occaecati animi tempore in magni voluptate incidunt.', 'Rerum rerum et animi aut quasi. Vel ut sint ipsam rerum atque rerum. Consequatur esse aliquam tenetur molestiae vero voluptatem numquam. Quas quia corrupti quod.', 'scheduled', NULL, NULL, '2025-11-28 16:30:27', '2025-07-20 21:07:03', '2025-08-25 18:25:11'),
(19, 20, 'post', 'Assumenda debitis esse omnis.', 'vel-esse-et-veritatis-non', 'Maxime molestiae voluptas sit sapiente id consequatur et aliquid.', 'Veniam voluptate totam rerum nulla. Ut odio sed sunt consequatur repellendus aperiam consequatur. Optio et ut molestiae deleniti.', 'scheduled', NULL, NULL, NULL, '2025-08-26 16:09:21', '2025-11-13 17:37:51'),
(20, 21, 'page', 'Eum non hic adipisci enim repellat eius.', 'alias-labore-eveniet-ut-officiis-velit', 'Itaque dolor illo sit corrupti sit deleniti eum est veniam et commodi.', 'Et magnam velit a nemo odit. Sequi consequatur ipsam dolores at vitae. Quasi facilis odio dolore ea dolor. Sed labore tenetur voluptatem velit perspiciatis nam consequuntur.', 'scheduled', NULL, NULL, NULL, '2025-10-24 20:05:19', '2025-08-28 02:09:04'),
(21, 22, 'page', 'Iusto voluptas ut nulla quasi voluptatem magni.', 'at-commodi-enim-incidunt-facilis-autem-quia', 'Enim nihil provident at magni et quisquam ipsa non voluptatibus.', 'Ipsa sint dolorem est eos culpa rerum. Odio illum maiores vero odit. Asperiores ducimus nemo est autem. At ad architecto vero harum est ea molestiae.', 'pending', NULL, NULL, '2025-11-24 07:39:36', '2025-11-21 10:39:17', '2025-11-25 02:15:31'),
(22, 23, 'page', 'Nostrum iste eaque odio illo harum illo autem.', 'dolores-temporibus-aut-et-et', 'Officia enim ab voluptas ut est et qui voluptate ratione.', 'Incidunt quaerat ut iure explicabo id expedita. Animi dolorum sapiente qui repellendus totam qui. Magni aspernatur voluptatem velit a ut.', 'scheduled', NULL, NULL, NULL, '2025-10-03 07:08:48', '2025-08-19 16:22:35'),
(23, 24, 'post', 'Velit et sunt ut inventore.', 'ullam-quod-saepe-laboriosam-cupiditate-voluptatum', 'Vel velit eos quia et consequuntur consequatur nostrum molestiae.', 'Et rerum illo neque quod et quisquam necessitatibus. Quo voluptatem maxime neque earum. Quaerat perferendis voluptatem atque officiis beatae pariatur a. Cupiditate non repellendus et veritatis sed ab.', 'scheduled', NULL, NULL, '2025-11-22 07:36:22', '2025-08-29 15:36:28', '2025-08-01 02:36:38'),
(24, 25, 'page', 'Laboriosam quisquam eum laborum repudiandae odio recusandae.', 'eos-ipsam-aut-quibusdam-blanditiis-temporibus-sed-et', 'Ullam ipsa eum illo quisquam sed iste repudiandae impedit consequatur velit.', 'Facilis ut ea distinctio delectus. Dolores omnis molestiae amet rerum rerum incidunt aspernatur. Id nihil sequi quibusdam consequuntur labore.', 'pending', NULL, NULL, NULL, '2025-09-28 13:28:25', '2025-12-18 10:52:04'),
(25, 26, 'page', 'Eaque doloremque voluptate iure et.', 'ab-et-nisi-corrupti-omnis', 'Dolore blanditiis odio impedit architecto blanditiis dolores quae iste iste quos.', 'Qui non et voluptatem et dolores. Voluptatem aliquid nulla et mollitia veritatis. Doloribus quam dicta voluptatem cum omnis quam eum. Ea reprehenderit nobis officia impedit veritatis.', 'private', NULL, NULL, NULL, '2025-09-22 07:03:01', '2025-07-23 00:05:07'),
(26, 27, 'page', 'Sint aut et reiciendis et.', 'necessitatibus-inventore-esse-necessitatibus-et-amet-id-quo', 'In quas mollitia ut tenetur necessitatibus maxime modi voluptas eaque ut corrupti vel.', 'Est animi laboriosam aut qui eius. Quo accusamus ducimus non non modi. Harum est illum consequatur placeat est id iusto.', 'private', NULL, NULL, '2025-09-28 12:04:02', '2025-07-22 13:47:24', '2025-11-27 13:40:13'),
(27, 28, 'post', 'Fugiat nostrum quod similique sunt delectus ratione.', 'molestiae-et-consequatur-dolor-rerum-odio-unde-ut', 'Architecto ut quia officia aliquam repellendus voluptatibus possimus vel officiis aliquid doloremque corrupti placeat.', 'Qui dolor aut veniam fugiat magni aut. Aut minima dolorem quas a. Nemo est sint voluptatem placeat dicta. Eos quos dolor delectus explicabo esse perspiciatis veniam molestias.', 'published', NULL, NULL, NULL, '2025-07-19 23:36:51', '2025-10-26 13:50:53'),
(28, 29, 'post', 'Fuga accusantium quia quas explicabo itaque dicta.', 'facilis-a-soluta-veniam-qui-ex', 'Provident magnam voluptas consequuntur nobis dicta sit sequi doloribus consequuntur quisquam hic deserunt ipsum.', 'Vero quam doloremque quibusdam animi sunt. Accusantium veritatis qui perferendis sint beatae et delectus. Dicta dolorem sit labore aut maxime. Facere odit dignissimos voluptas exercitationem voluptatem facere.', 'pending', NULL, NULL, NULL, '2025-09-17 19:53:01', '2025-10-01 20:57:52'),
(29, 30, 'post', 'Voluptatum sunt ea id eligendi provident.', 'nesciunt-iusto-est-et-occaecati-id-iste-commodi', 'Asperiores corporis sit hic deleniti quo et nihil earum quibusdam enim.', 'Est ipsa tenetur dolores dolore minima qui ratione. Ratione repellendus qui est ducimus animi. Voluptatem optio asperiores quia. Eveniet ut porro aut omnis.', 'published', NULL, NULL, NULL, '2025-09-26 08:22:20', '2025-06-28 14:57:20'),
(30, 31, 'post', 'Vel aut rerum et.', 'id-enim-itaque-pariatur-assumenda-saepe-hic-non', 'Voluptas earum qui exercitationem provident voluptas aut.', 'Consequatur eum id quibusdam aut dolor. Sint dolore in numquam accusantium impedit. Sit quis quis tempore tempore error reprehenderit.', 'private', NULL, NULL, NULL, '2025-11-01 23:17:20', '2025-12-16 17:16:07'),
(31, 32, 'post', 'Libero vel dolor vero est eligendi sunt.', 'at-itaque-quia-nihil-porro-natus-quam', 'Neque quas minus incidunt asperiores aut rerum voluptate debitis quia.', 'Distinctio qui dolor quia est fuga nesciunt iure. Aut dolor sit dicta dignissimos aliquam ducimus. Sint aut velit repellendus ea ut voluptatibus iste.', 'scheduled', NULL, NULL, NULL, '2025-10-03 15:36:51', '2025-09-10 09:12:15'),
(32, 33, 'post', 'Pariatur quis laboriosam odio adipisci nihil quia cumque.', 'fugit-adipisci-sunt-nobis', 'Ea officia sequi sequi amet qui nobis eum laboriosam voluptate eius veritatis quae nihil consequuntur.', 'Dolorem repellat reiciendis rerum omnis. Vero earum at ipsa veniam quo reiciendis.', 'pending', NULL, NULL, NULL, '2025-10-20 03:41:21', '2025-10-24 21:26:09'),
(33, 34, 'page', 'Molestias ut dolore ea esse fugiat quos molestiae.', 'et-culpa-et-reiciendis-possimus-facere', 'Labore excepturi qui et quia quia sapiente voluptas ut porro natus saepe rem ut.', 'Inventore sapiente quis voluptatem aut. Modi atque voluptatem aspernatur in voluptate totam velit.', 'scheduled', NULL, NULL, NULL, '2025-09-03 23:12:59', '2025-10-07 13:39:51'),
(34, 35, 'post', 'Dolorum aut modi inventore ad ex.', 'voluptatem-sed-explicabo-sed-reiciendis-beatae', 'Ipsam enim maxime dolores velit quasi velit voluptatem.', 'Unde expedita aut sed nisi. Qui quia quis inventore praesentium aut eligendi quam aut. Vitae officia nam veritatis qui voluptatem quaerat.', 'pending', NULL, NULL, '2025-08-14 09:56:36', '2025-11-27 09:11:07', '2025-08-21 19:44:05'),
(35, 36, 'post', 'Id inventore sequi ut rem qui consequatur autem.', 'voluptatem-laboriosam-doloremque-vero-dolorem-deserunt', 'Quis sit neque et minima perferendis est ab delectus.', 'Sapiente velit tempore voluptatem quia eligendi et eius. Fuga saepe sint asperiores ad qui qui atque. Officia esse qui enim laudantium iure atque dolorem. Itaque officiis veniam dolor odio. Possimus sint dicta et dignissimos in autem.', 'draft', NULL, NULL, NULL, '2025-10-03 09:38:26', '2025-11-18 12:04:19'),
(36, 37, 'post', 'Tenetur expedita et in a unde inventore vel.', 'nostrum-velit-deleniti-non-placeat-et-unde', 'Nemo nihil dolores ut saepe eum aliquam.', 'Ipsum dolorem fugit eos quasi ipsum velit quos voluptatem. Consequatur assumenda exercitationem perspiciatis perferendis quod. Voluptas magni odio et similique rerum.', 'scheduled', NULL, NULL, '2025-10-15 10:26:55', '2025-10-01 23:29:07', '2025-09-27 13:14:50'),
(37, 38, 'post', 'Voluptas voluptatibus ut in animi dolorem qui.', 'qui-earum-et-ut-natus-voluptatibus-sed-et', 'Dolorum voluptates et quidem iusto sed harum et voluptatem quo deserunt perspiciatis.', 'Velit aut non dolor ab quibusdam. Porro aut perferendis consectetur quisquam nesciunt perspiciatis hic. Rem aperiam omnis nam consequuntur ea placeat.', 'scheduled', NULL, NULL, '2025-10-14 11:31:43', '2025-09-09 08:58:47', '2025-11-19 11:18:35'),
(38, 39, 'page', 'Sed asperiores quaerat occaecati qui aut.', 'suscipit-modi-ea-aut-tempora-ut-et', 'Nisi dolor dolor eum similique et doloribus.', 'Delectus qui modi in officiis. Doloremque placeat vero provident illo porro.', 'draft', NULL, NULL, NULL, '2025-08-07 08:30:52', '2025-10-04 18:41:49'),
(39, 40, 'post', 'Ut dicta unde officia laboriosam beatae in.', 'ut-aut-repellat-eveniet-quaerat-totam-sunt-asperiores-voluptate', 'Repudiandae consequatur quo quo maxime totam est ex rem voluptatum repellendus non ipsum cumque incidunt.', 'Et iure est minima quia. Exercitationem ea neque commodi exercitationem placeat saepe. Sint culpa molestiae atque accusamus excepturi ut.', 'draft', NULL, NULL, '2025-09-21 10:23:31', '2025-09-08 05:03:28', '2025-10-23 01:36:21'),
(40, 41, 'post', 'Dolore eaque saepe eum necessitatibus.', 'magnam-maxime-est-porro-nemo-et', 'Voluptate ipsam ut similique consequatur vel ullam consequuntur.', 'Totam iste blanditiis aperiam nam voluptatem id cum repellendus. Omnis rerum ratione quis aspernatur in. Repellendus iure totam in et modi rerum aut.', 'pending', NULL, NULL, NULL, '2025-09-10 19:21:32', '2025-11-24 03:47:36'),
(41, 42, 'page', 'Aut sed impedit officiis aut culpa quos consequuntur.', 'cum-assumenda-quia-ut-sint-maxime-et-tenetur', 'Cumque culpa ea optio dolorem odit fugit qui at aliquam.', 'Numquam deleniti voluptates non laborum. Sint minima molestiae quia odio sed. Consectetur adipisci modi asperiores explicabo enim. Enim expedita eveniet laboriosam ratione itaque similique.', 'pending', NULL, NULL, NULL, '2025-07-09 00:37:42', '2025-09-03 19:36:53'),
(42, 43, 'post', 'Non reiciendis nobis quia possimus.', 'unde-accusamus-officia-vero-est-dicta', 'Ipsam omnis rerum mollitia porro atque rerum et.', 'Et impedit cumque atque repellat accusantium quia. Laborum in et neque mollitia esse. Et ut sunt et dignissimos. Aperiam dicta sed ab nihil.', 'draft', NULL, NULL, '2025-11-04 21:45:18', '2025-08-07 13:25:33', '2025-07-18 07:27:16'),
(43, 44, 'post', 'Est debitis inventore qui temporibus nam molestias fugiat.', 'et-ut-sit-aut-quaerat', 'Quidem temporibus molestiae ducimus et repellat quia dignissimos cum vel rem omnis unde.', 'Nobis aperiam et veniam a repudiandae dolorem. Nostrum quo rerum et possimus minima sed. Quia qui nulla doloremque. Illo eos quos porro ea.', 'pending', NULL, NULL, '2025-08-03 06:19:26', '2025-12-03 08:04:19', '2025-07-03 00:49:31'),
(44, 45, 'page', 'Excepturi alias velit nesciunt voluptatem.', 'necessitatibus-nesciunt-aut-vel', 'Laboriosam optio rem dolorum vero dolores qui est in doloremque nihil sit commodi.', 'Natus voluptatibus numquam at asperiores. Et saepe totam tempora voluptas soluta. Quaerat praesentium vitae eius rerum consequatur in.', 'draft', NULL, NULL, '2025-07-04 01:47:57', '2025-07-21 07:59:01', '2025-09-19 22:44:22'),
(45, 46, 'post', 'Fugiat corporis neque nemo fugit quibusdam ad magni in.', 'tenetur-et-et-neque-nesciunt-pariatur-quos', 'Quae cupiditate deleniti expedita sit ea dolor possimus aut animi.', 'Cumque omnis error ducimus. Est dignissimos consequatur fugit rem velit.', 'published', NULL, NULL, '2025-09-12 14:46:55', '2025-07-10 22:51:14', '2025-08-08 18:37:14'),
(46, 47, 'page', 'Necessitatibus dolore quia dolores possimus dolores.', 'beatae-ipsa-aut-similique', 'Fugit asperiores non maiores eveniet corrupti aliquam sed quibusdam sit ex.', 'Provident est est ipsam maxime. Exercitationem deleniti officia recusandae. Dignissimos sequi voluptas earum aut soluta quas nobis.', 'published', NULL, NULL, '2025-10-06 14:36:05', '2025-09-07 19:06:26', '2025-09-19 05:35:50'),
(47, 48, 'page', 'Doloribus expedita placeat aut quia qui corrupti.', 'ex-dolores-et-pariatur-quos-magnam', 'Omnis mollitia temporibus sit totam qui accusantium vel molestiae omnis enim.', 'Veniam rerum tempora neque rem. Dolore omnis placeat aut ipsa nihil suscipit voluptatibus. Molestiae ab optio voluptatem rerum vero occaecati autem.', 'published', NULL, NULL, '2025-12-14 10:56:14', '2025-10-21 01:12:13', '2025-08-10 04:07:46'),
(48, 49, 'post', 'Minima itaque praesentium et atque rerum et magnam sunt.', 'possimus-voluptatem-quasi-fugiat-cupiditate-quasi', 'Illo laudantium est minima quaerat amet cum.', 'Officiis unde et totam ratione animi sapiente. Totam consequatur laudantium commodi ut unde quis sunt. Necessitatibus quia laboriosam eaque possimus voluptas tempora.', 'pending', NULL, NULL, '2025-10-27 18:03:45', '2025-12-13 08:25:45', '2025-07-01 12:04:53'),
(49, 50, 'post', 'Assumenda recusandae dolor temporibus natus.', 'aliquid-est-veniam-quo-vel-sit-nesciunt', 'Sunt a ab tempora cumque earum accusamus consectetur consequatur sit corrupti autem dolorem necessitatibus.', 'Et sed et saepe omnis unde consectetur accusantium. Mollitia voluptates vel dolor perferendis eum explicabo dignissimos omnis.', 'draft', NULL, NULL, '2025-11-08 17:12:18', '2025-09-13 13:13:58', '2025-06-29 23:05:13'),
(50, 51, 'page', 'Ut laboriosam et officia.', 'tempore-quo-eius-quaerat-qui-est-occaecati-ex', 'Eaque consequatur qui molestias necessitatibus provident sit doloremque quo et.', 'Amet quia ipsum iure et enim autem exercitationem voluptatum. Ducimus et itaque explicabo soluta. Qui et consequatur expedita in quia.', 'published', NULL, NULL, NULL, '2025-06-29 02:56:09', '2025-10-21 02:45:22'),
(51, 52, 'post', 'Est et quo nam nulla autem.', 'pariatur-debitis-quaerat-illo', 'Aut minima qui soluta excepturi deleniti sed sed.', 'Unde dolores quas non quisquam quia. Assumenda quibusdam illo non. Ut qui non perspiciatis dolor consequuntur repellendus.', 'scheduled', NULL, NULL, NULL, '2025-10-04 16:03:07', '2025-09-02 07:37:08'),
(52, 53, 'post', 'Quia velit voluptatem vel excepturi.', 'incidunt-qui-sed-iusto-eaque-assumenda', 'Illum et quibusdam iure impedit consequuntur provident accusamus.', 'Perspiciatis corporis explicabo quas ut dolorem. Id aperiam ratione consequatur quo repellat magni. Et ipsa quas aut minus nihil.', 'scheduled', NULL, NULL, NULL, '2025-09-24 14:32:14', '2025-11-02 15:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `post_meta`
--

CREATE TABLE `post_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'input',
  `default_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pulse_aggregates`
--

CREATE TABLE `pulse_aggregates` (
  `id` bigint UNSIGNED NOT NULL,
  `bucket` int UNSIGNED NOT NULL,
  `period` mediumint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `aggregate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(20,2) NOT NULL,
  `count` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulse_aggregates`
--

INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(1, 1766156280, 60, 'cache_hit', 'post_types', 'count', 4.00, NULL),
(2, 1766156040, 360, 'cache_hit', 'post_types', 'count', 4.00, NULL),
(3, 1766155680, 1440, 'cache_hit', 'post_types', 'count', 4.00, NULL),
(4, 1766147040, 10080, 'cache_hit', 'post_types', 'count', 4.00, NULL),
(5, 1766156400, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(6, 1766156400, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(7, 1766155680, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(8, 1766147040, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(9, 1766156400, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1055.00, NULL),
(10, 1766156400, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1055.00, NULL),
(11, 1766155680, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1055.00, NULL),
(12, 1766147040, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1055.00, NULL),
(13, 1766157120, 60, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 'count', 2.00, NULL),
(14, 1766157120, 360, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 'count', 2.00, NULL),
(15, 1766157120, 1440, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 'count', 2.00, NULL),
(16, 1766157120, 10080, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 'count', 2.00, NULL),
(17, 1766157120, 60, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 'max', 1766157134.00, NULL),
(18, 1766157120, 360, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 'max', 1766157134.00, NULL),
(19, 1766157120, 1440, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 'max', 1766157134.00, NULL),
(20, 1766157120, 10080, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 'max', 1766157134.00, NULL),
(21, 1766160360, 60, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 'count', 1.00, NULL),
(22, 1766160360, 360, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 'count', 1.00, NULL),
(23, 1766160000, 1440, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 'count', 1.00, NULL),
(24, 1766157120, 10080, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 'count', 1.00, NULL),
(25, 1766160360, 60, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 'max', 1451.00, NULL),
(26, 1766160360, 360, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 'max', 1451.00, NULL),
(27, 1766160000, 1440, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 'max', 1451.00, NULL),
(28, 1766157120, 10080, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 'max', 1451.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_entries`
--

CREATE TABLE `pulse_entries` (
  `id` bigint UNSIGNED NOT NULL,
  `timestamp` int UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulse_entries`
--

INSERT INTO `pulse_entries` (`id`, `timestamp`, `type`, `key`, `value`) VALUES
(1, 1766156299, 'cache_hit', 'post_types', NULL),
(2, 1766156299, 'cache_hit', 'post_types', NULL),
(3, 1766156299, 'cache_hit', 'post_types', NULL),
(4, 1766156299, 'cache_hit', 'post_types', NULL),
(5, 1766156435, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 1055),
(6, 1766157134, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 1766157134),
(7, 1766157134, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"database\\\\seeders\\\\SettingsSeeder.php:72\"]', 1766157134),
(8, 1766160402, 'slow_request', '[\"GET\",\"\\/login\",\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\"]', 1451);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_values`
--

CREATE TABLE `pulse_values` (
  `id` bigint UNSIGNED NOT NULL,
  `timestamp` int UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `punitions`
--

CREATE TABLE `punitions` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `document_id` bigint UNSIGNED DEFAULT NULL,
  `nature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motif` text COLLATE utf8mb4_unicode_ci,
  `date_infraction` date DEFAULT NULL,
  `duree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recompenses`
--

CREATE TABLE `recompenses` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `document_id` bigint UNSIGNED DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_attribution` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint UNSIGNED NOT NULL,
  `request_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requester_user_id` bigint UNSIGNED NOT NULL,
  `requester_personnel_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` enum('DRAFT','PENDING','APPROVED','REJECTED','CANCELLED','COMPLETED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `priority` enum('LOW','MEDIUM','HIGH','CRITICAL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MEDIUM',
  `approver_user_id` bigint UNSIGNED DEFAULT NULL,
  `approver_personnel_id` bigint UNSIGNED DEFAULT NULL,
  `date_submitted` datetime DEFAULT NULL,
  `date_closed` datetime DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_approvals`
--

CREATE TABLE `request_approvals` (
  `id` bigint UNSIGNED NOT NULL,
  `request_id` bigint UNSIGNED NOT NULL,
  `approver_user_id` bigint UNSIGNED DEFAULT NULL,
  `approver_personnel_id` bigint UNSIGNED DEFAULT NULL,
  `step` int NOT NULL DEFAULT '1',
  `action` enum('APPROVE','REJECT','REQUEST_CHANGES','FORWARD','COMMENT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_attachments`
--

CREATE TABLE `request_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `request_id` bigint UNSIGNED NOT NULL,
  `attachment_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'web', '2025-12-19 15:14:19', '2025-12-19 15:14:19'),
(2, 'Admin', 'web', '2025-12-19 15:14:19', '2025-12-19 15:14:19'),
(3, 'User', 'web', '2025-12-19 15:14:19', '2025-12-19 15:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sante_personnel`
--

CREATE TABLE `sante_personnel` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `groupe_sanguin` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allergie` text COLLATE utf8mb4_unicode_ci,
  `maladie_chronique` text COLLATE utf8mb4_unicode_ci,
  `handicap` text COLLATE utf8mb4_unicode_ci,
  `antecedents_medicaux` text COLLATE utf8mb4_unicode_ci,
  `prise_en_charge_medicale` text COLLATE utf8mb4_unicode_ci,
  `medecin_traitant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `derniere_visite_medicale` date DEFAULT NULL,
  `aptitude_service` enum('APTE','INAPTE_TEMPORAIRE','INAPTE_DEFINITIF') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'APTE',
  `vaccination_json` json DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVZQRDdrcXJlNTYwVTZZV2VVRFVqOWwzYVhHWXBBMmtGa2cyVjJPRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1766160403);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option_name`, `option_value`, `autoload`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Lara Dashboard', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(2, 'theme_primary_color', '#635bff', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(3, 'theme_secondary_color', '#1f2937', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(4, 'sidebar_bg_lite', '#FFFFFF', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(5, 'sidebar_bg_dark', '#171f2e', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(6, 'sidebar_li_hover_lite', '#E8E6FF', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(7, 'sidebar_li_hover_dark', '#E8E6FF', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(8, 'sidebar_text_lite', '#090909', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(9, 'sidebar_text_dark', '#ffffff', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(10, 'navbar_bg_lite', '#FFFFFF', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(11, 'navbar_bg_dark', '#171f2e', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(12, 'navbar_text_lite', '#090909', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(13, 'navbar_text_dark', '#ffffff', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(14, 'text_color_lite', '#212529', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(15, 'text_color_dark', '#f8f9fa', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(16, 'site_logo_lite', '/images/logo/lara-dashboard.png', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(17, 'site_logo_dark', '/images/logo/lara-dashboard-dark.png', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(18, 'site_icon', '/images/logo/icon.png', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(19, 'site_favicon', '/images/logo/icon.png', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(20, 'default_pagination', '10', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(21, 'google_tag_manager_script', '', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(22, 'google_analytics_script', '', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(23, 'global_custom_css', '', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(24, 'global_custom_js', '', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(25, 'ai_default_provider', 'openai', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(26, 'ai_openai_api_key', '', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(27, 'ai_claude_api_key', '', 1, '2025-12-19 14:58:19', '2025-12-19 14:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `situations_administratives`
--

CREATE TABLE `situations_administratives` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `situation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `commentaire` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint UNSIGNED NOT NULL,
  `personnel_id` bigint UNSIGNED NOT NULL,
  `intitule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organisme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `resultat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_jobs`
--

CREATE TABLE `system_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `job_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` json DEFAULT NULL,
  `attempts` int NOT NULL DEFAULT '0',
  `status` enum('PENDING','RUNNING','FAILED','COMPLETED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `last_error` text COLLATE utf8mb4_unicode_ci,
  `scheduled_at` datetime DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxonomies`
--

CREATE TABLE `taxonomies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_featured_image` tinyint(1) NOT NULL DEFAULT '0',
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `hierarchical` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `post_types` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `name`, `label`, `label_singular`, `description`, `show_featured_image`, `public`, `hierarchical`, `show_in_menu`, `post_types`, `created_at`, `updated_at`) VALUES
(1, 'category', 'Categories', 'Category', 'Default taxonomy for categorizing posts', 1, 1, 1, 1, '[\"post\"]', '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(2, 'tag', 'Tags', 'Tag', 'Default taxonomy for tagging posts', 1, 1, 0, 1, '[\"post\"]', '2025-12-19 14:58:19', '2025-12-19 14:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, 'a0a188b2-ed4c-468f-90b4-f8851acd63d0', 'a0a188b3-2a1c-4c33-b6ed-1e7423356399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\' limit 1\",\"time\":\"8.08\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"f48fa5df8fd323d753d03a2e0070fcde\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:36'),
(2, 'a0a188b3-05ce-4020-83f9-404ac21120f9', 'a0a188b3-2a1c-4c33-b6ed-1e7423356399', NULL, 1, 'debugbar', '{\"requestId\":\"01KCVJ10MEXAW9GXGWVVZ9KMEX\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:36'),
(3, 'a0a188b3-16a5-4dbf-b239-32694b517b03', 'a0a188b3-2a1c-4c33-b6ed-1e7423356399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = \'1\' limit 1\",\"time\":\"1.44\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:36'),
(4, 'a0a188b3-1865-4254-bc15-c3a3a19a42b2', 'a0a188b3-2a1c-4c33-b6ed-1e7423356399', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-19 15:00:36'),
(5, 'a0a188b3-1f30-481a-8142-90177df811a5', 'a0a188b3-2a1c-4c33-b6ed-1e7423356399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\' limit 1\",\"time\":\"1.93\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"f48fa5df8fd323d753d03a2e0070fcde\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:36'),
(6, 'a0a188b3-232b-4ff1-874b-dda38b453912', 'a0a188b3-2a1c-4c33-b6ed-1e7423356399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `sessions` (`payload`, `last_activity`, `user_id`, `ip_address`, `user_agent`, `id`) values (\'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVZQRDdrcXJlNTYwVTZZV2VVRFVqOWwzYVhHWXBBMmtGa2cyVjJPRSI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YToxOntzOjI2OiIwMUtDVkoxME1FWEFXOUdYR1dWVlo5S01FWCI7Tjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=\', 1766156436, null, \'127.0.0.1\', \'Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\', \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\')\",\"time\":\"2.37\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"566661626de27be35c0f28e73b1dccf0\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:36'),
(7, 'a0a188b3-2502-4f06-87a0-76fd3fb8bd40', 'a0a188b3-2a1c-4c33-b6ed-1e7423356399', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"143\\\", \\\"Chromium\\\";v=\\\"143\\\", \\\"Not A(Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"fr-FR,fr;q=0.7\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IjhLZUhkNUpOc21xaVFYSytnT3BHZlE9PSIsInZhbHVlIjoiUStNRDY1VG1HSXRHOTY4ZjJMbHY2Ums5eTQ1QVYrdTF1aVhKWGJMbklaZ0VDQ1JvamRPY1plQ21SczdQWTk1bURXN1E0WUVGR3J4ZlllMG4wcTJZQWVZSUZVQVFib3NtTGxLVFdDL2s3bkJDcjhqVU1HY2ZvMldPemFIblBGMDUzWHR0dzBIQ2ptRm83amYyempPUUlMMlMvYnlGeUtKSGxldm5OdmxCbSthR1ZXVm9pUDZXQlhKajlqQTFmQU0xdEVtKzU0TnVoMkRrcm5RQThJM08rR1h6Q2hCRlBjYS9IcUM4Uy9qVFhDTT0iLCJtYWMiOiJiY2M3ZGE1YjUwM2MyZWZjMzc0NDQyYmMzYjQ1OThmZGFlOThiMTdhYmZmMGUwMzg1NDIxZmUzYzNmN2ExMGQwIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"EVPD7kqre560U6YWeUDUj9l3aXGYpA2kFkg2V2OE\",\"PHPDEBUGBAR_STACK_DATA\":{\"01KCVJ10MEXAW9GXGWVVZ9KMEX\":null},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_headers\":{\"cache-control\":\"no-cache, private\",\"date\":\"Fri, 19 Dec 2025 15:00:36 GMT\",\"location\":\"http:\\/\\/localhost:8000\\/login\",\"content-type\":\"text\\/html; charset=utf-8\",\"set-cookie\":\"XSRF-TOKEN=eyJpdiI6InQxRTFKSzRFNmkvZjJvU05TZXkxbGc9PSIsInZhbHVlIjoiaTZxeW1pcU55emR3OWFHWHNPaERrSEpvNStTZ1cyZDRXeStDa2llVmFjckFoajY2Tk5EV2t0cFpCeXNXZm1OODNrMWQ3SHpNV3NXbVg2Yk1qQ0UrejJGUFBQQStFUWN3ZG8zM2M4RVBqUk40cUFkSTlhamIrdHEvMVdtalB0c0oiLCJtYWMiOiI4MjBkZjA4Y2NjOGVkYWQzNzI2MTUzNGQzNWQ5YmUxYzA3NzhmNzllZDkwNzgyODUxNTI1MDQ2MTk5NjM3MjgyIiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 17:00:36 GMT; Max-Age=7200; path=\\/; samesite=lax, argos_session=eyJpdiI6ImwyaXJzOXpubExYTk1HeUpqakljK1E9PSIsInZhbHVlIjoiR2FVWjJjR0g1enlJajhzTW5CMFJDbTl0cWZNSzFNSTdFaUpWUHVhdi9iMGpBMXUvOVY5WmlOU2lvNFRTdFZ4dGNTa1NtaTROTFVNV2lNa3J5ZzVZenF2NDEzT3YrK3VjY0pQMzAwK2dhWkoyS1kvWmJkaGllRURObjZhbGNLWmwiLCJtYWMiOiIzOGE3MTk3MTI2ZDIyNzczNjkyMTJjMmQyY2EyZGNkZjM4NGQ0ODRiMGRlMzFmNDkxMGIzYTU3ZGVkMDllYWZjIiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 17:00:36 GMT; Max-Age=7200; path=\\/; httponly; samesite=lax\"},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/localhost:8000\\/login\",\"duration\":1519,\"memory\":32,\"hostname\":\"Asus\"}', '2025-12-19 15:00:36'),
(8, 'a0a188b4-72c5-4c28-861c-ac459b213d52', 'a0a188b4-a87e-41b7-b1f8-28d313d82a3d', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\' limit 1\",\"time\":\"4.80\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"f48fa5df8fd323d753d03a2e0070fcde\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:37'),
(9, 'a0a188b4-7f9f-4c37-8e36-50e1d0fec871', 'a0a188b4-a87e-41b7-b1f8-28d313d82a3d', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = \'1\' limit 1\",\"time\":\"1.63\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\app\\\\Http\\\\Middleware\\\\RedirectIfAuthenticated.php\",\"line\":20,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:37'),
(10, 'a0a188b4-812f-445d-afd1-77122a1e4950', 'a0a188b4-a87e-41b7-b1f8-28d313d82a3d', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-19 15:00:37'),
(11, 'a0a188b4-89e3-4417-bbbe-e4d4592c1a99', 'a0a188b4-a87e-41b7-b1f8-28d313d82a3d', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"composers\":[{\"name\":\"Closure at C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[304:306]\",\"type\":\"composer\"}],\"hostname\":\"Asus\"}', '2025-12-19 15:00:37'),
(12, 'a0a188b4-972a-4a55-ad2d-76db048648c8', 'a0a188b4-a87e-41b7-b1f8-28d313d82a3d', NULL, 1, 'debugbar', '{\"requestId\":\"01KCVJ11MJ0QRG8C5G5NMWP4V4\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:37'),
(13, 'a0a188b4-a01c-439d-9f9b-d699ec2a452f', 'a0a188b4-a87e-41b7-b1f8-28d313d82a3d', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"update `sessions` set `payload` = \'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVZQRDdrcXJlNTYwVTZZV2VVRFVqOWwzYVhHWXBBMmtGa2cyVjJPRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=\', `last_activity` = 1766156437, `user_id` = null, `ip_address` = \'127.0.0.1\', `user_agent` = \'Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\' where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\'\",\"time\":\"3.64\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"8ca748303d971bd62c762f74392caa83\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:37'),
(14, 'a0a188b4-a338-4607-95f2-cb5607848659', 'a0a188b4-a87e-41b7-b1f8-28d313d82a3d', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\",\"middleware\":[\"web\",\"guest:web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"fr-FR,fr;q=0.7\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"143\\\", \\\"Chromium\\\";v=\\\"143\\\", \\\"Not A(Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IjhLZUhkNUpOc21xaVFYSytnT3BHZlE9PSIsInZhbHVlIjoiUStNRDY1VG1HSXRHOTY4ZjJMbHY2Ums5eTQ1QVYrdTF1aVhKWGJMbklaZ0VDQ1JvamRPY1plQ21SczdQWTk1bURXN1E0WUVGR3J4ZlllMG4wcTJZQWVZSUZVQVFib3NtTGxLVFdDL2s3bkJDcjhqVU1HY2ZvMldPemFIblBGMDUzWHR0dzBIQ2ptRm83amYyempPUUlMMlMvYnlGeUtKSGxldm5OdmxCbSthR1ZXVm9pUDZXQlhKajlqQTFmQU0xdEVtKzU0TnVoMkRrcm5RQThJM08rR1h6Q2hCRlBjYS9IcUM4Uy9qVFhDTT0iLCJtYWMiOiJiY2M3ZGE1YjUwM2MyZWZjMzc0NDQyYmMzYjQ1OThmZGFlOThiMTdhYmZmMGUwMzg1NDIxZmUzYzNmN2ExMGQwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InQxRTFKSzRFNmkvZjJvU05TZXkxbGc9PSIsInZhbHVlIjoiaTZxeW1pcU55emR3OWFHWHNPaERrSEpvNStTZ1cyZDRXeStDa2llVmFjckFoajY2Tk5EV2t0cFpCeXNXZm1OODNrMWQ3SHpNV3NXbVg2Yk1qQ0UrejJGUFBQQStFUWN3ZG8zM2M4RVBqUk40cUFkSTlhamIrdHEvMVdtalB0c0oiLCJtYWMiOiI4MjBkZjA4Y2NjOGVkYWQzNzI2MTUzNGQzNWQ5YmUxYzA3NzhmNzllZDkwNzgyODUxNTI1MDQ2MTk5NjM3MjgyIiwidGFnIjoiIn0%3D; argos_session=eyJpdiI6ImwyaXJzOXpubExYTk1HeUpqakljK1E9PSIsInZhbHVlIjoiR2FVWjJjR0g1enlJajhzTW5CMFJDbTl0cWZNSzFNSTdFaUpWUHVhdi9iMGpBMXUvOVY5WmlOU2lvNFRTdFZ4dGNTa1NtaTROTFVNV2lNa3J5ZzVZenF2NDEzT3YrK3VjY0pQMzAwK2dhWkoyS1kvWmJkaGllRURObjZhbGNLWmwiLCJtYWMiOiIzOGE3MTk3MTI2ZDIyNzczNjkyMTJjMmQyY2EyZGNkZjM4NGQ0ODRiMGRlMzFmNDkxMGIzYTU3ZGVkMDllYWZjIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"EVPD7kqre560U6YWeUDUj9l3aXGYpA2kFkg2V2OE\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/login\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_headers\":{\"content-type\":\"text\\/html; charset=UTF-8\",\"cache-control\":\"no-cache, private\",\"date\":\"Fri, 19 Dec 2025 15:00:37 GMT\",\"phpdebugbar-id\":\"01KCVJ11MJ0QRG8C5G5NMWP4V4\",\"set-cookie\":\"XSRF-TOKEN=eyJpdiI6IkVBRmJ3alhPRkxmajlhVEFBY3F4c3c9PSIsInZhbHVlIjoiWjY5OVh5cUx4TWZId2N0L0ZRd3AyQ0FISE5BNG1RUnhDbitGdDAvNWpFY0VxVWExdGNXNE1lMk5iMXd5eGVTTVppQUZLV0hBb2xtM0R6REtrbVhjeFZFdVU5enIxYm9UVHUySUpZSkkvR2VQUnJmTjI1SGIyakJQVWl0RFduZmUiLCJtYWMiOiIzYjVmOWU4NThkZTZhMWMzNDUxNGI2ZTI4NzE0NmM0YjUxZDY2MTAzZGZlODQ0YTJhOWJjNWRhZmViODY0YTc0IiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 17:00:37 GMT; Max-Age=7200; path=\\/; samesite=lax, argos_session=eyJpdiI6ImRQOW9OUThmcjljZkc5UVBRN3NLa1E9PSIsInZhbHVlIjoiQi8ycHNOMmZRYUFxWll2VnR0NEc4OGpIN1NTQWdMWUpVNC9JZEViV1VDZTgyRXZiUmxwck9pYVovQ1RCUlpxamYvWEVVQTFIYUFhbGxJZmJ6U2RVelBEL2FWY3NxVVhmNWtsUDVWVHdBWEo5MEhHV1lUb0tJS0J2MnNVWVVWRlYiLCJtYWMiOiIwNDk3ZDE0YmYxODc4NDNiMTU2ODYzNGYyMGJmMDNiMmYxMzE5NDhhZGQ2YjYwNjA2NDE5MTdiNzgwOTllNTg4IiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 17:00:37 GMT; Max-Age=7200; path=\\/; httponly; samesite=lax\"},\"response_status\":200,\"response\":{\"view\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":888,\"memory\":32,\"hostname\":\"Asus\"}', '2025-12-19 15:00:37'),
(15, 'a0a188cd-d8d4-4230-925a-8c4f797f5603', 'a0a188ce-065b-451b-909c-4010dcbe6eb7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\' limit 1\",\"time\":\"17.08\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"f48fa5df8fd323d753d03a2e0070fcde\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:53'),
(16, 'a0a188cd-eca7-4924-b56a-093ef659673f', 'a0a188ce-065b-451b-909c-4010dcbe6eb7', NULL, 1, 'debugbar', '{\"requestId\":\"01KCVJ1HVDVH5AC8NRCRFAYGCV\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:53'),
(17, 'a0a188cd-f873-4cce-a276-9152b0d87626', 'a0a188ce-065b-451b-909c-4010dcbe6eb7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = \'1\' limit 1\",\"time\":\"2.28\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:53'),
(18, 'a0a188cd-fa32-4834-b3c3-54b3ec448f03', 'a0a188ce-065b-451b-909c-4010dcbe6eb7', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-19 15:00:53'),
(19, 'a0a188cd-ffd5-467e-93cd-cbd41024b7a0', 'a0a188ce-065b-451b-909c-4010dcbe6eb7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"update `sessions` set `payload` = \'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVZQRDdrcXJlNTYwVTZZV2VVRFVqOWwzYVhHWXBBMmtGa2cyVjJPRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MTp7czoyNjoiMDFLQ1ZKMUhWRFZINUFDOE5SQ1JGQVlHQ1YiO047fX0=\', `last_activity` = 1766156453, `user_id` = null, `ip_address` = \'127.0.0.1\', `user_agent` = \'Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\' where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\'\",\"time\":\"3.96\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"8ca748303d971bd62c762f74392caa83\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:53'),
(20, 'a0a188ce-01fc-4a5b-ac44-dea017d4094b', 'a0a188ce-065b-451b-909c-4010dcbe6eb7', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"143\\\", \\\"Chromium\\\";v=\\\"143\\\", \\\"Not A(Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"fr-FR,fr;q=0.7\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IjhLZUhkNUpOc21xaVFYSytnT3BHZlE9PSIsInZhbHVlIjoiUStNRDY1VG1HSXRHOTY4ZjJMbHY2Ums5eTQ1QVYrdTF1aVhKWGJMbklaZ0VDQ1JvamRPY1plQ21SczdQWTk1bURXN1E0WUVGR3J4ZlllMG4wcTJZQWVZSUZVQVFib3NtTGxLVFdDL2s3bkJDcjhqVU1HY2ZvMldPemFIblBGMDUzWHR0dzBIQ2ptRm83amYyempPUUlMMlMvYnlGeUtKSGxldm5OdmxCbSthR1ZXVm9pUDZXQlhKajlqQTFmQU0xdEVtKzU0TnVoMkRrcm5RQThJM08rR1h6Q2hCRlBjYS9IcUM4Uy9qVFhDTT0iLCJtYWMiOiJiY2M3ZGE1YjUwM2MyZWZjMzc0NDQyYmMzYjQ1OThmZGFlOThiMTdhYmZmMGUwMzg1NDIxZmUzYzNmN2ExMGQwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IkVBRmJ3alhPRkxmajlhVEFBY3F4c3c9PSIsInZhbHVlIjoiWjY5OVh5cUx4TWZId2N0L0ZRd3AyQ0FISE5BNG1RUnhDbitGdDAvNWpFY0VxVWExdGNXNE1lMk5iMXd5eGVTTVppQUZLV0hBb2xtM0R6REtrbVhjeFZFdVU5enIxYm9UVHUySUpZSkkvR2VQUnJmTjI1SGIyakJQVWl0RFduZmUiLCJtYWMiOiIzYjVmOWU4NThkZTZhMWMzNDUxNGI2ZTI4NzE0NmM0YjUxZDY2MTAzZGZlODQ0YTJhOWJjNWRhZmViODY0YTc0IiwidGFnIjoiIn0%3D; argos_session=eyJpdiI6ImRQOW9OUThmcjljZkc5UVBRN3NLa1E9PSIsInZhbHVlIjoiQi8ycHNOMmZRYUFxWll2VnR0NEc4OGpIN1NTQWdMWUpVNC9JZEViV1VDZTgyRXZiUmxwck9pYVovQ1RCUlpxamYvWEVVQTFIYUFhbGxJZmJ6U2RVelBEL2FWY3NxVVhmNWtsUDVWVHdBWEo5MEhHV1lUb0tJS0J2MnNVWVVWRlYiLCJtYWMiOiIwNDk3ZDE0YmYxODc4NDNiMTU2ODYzNGYyMGJmMDNiMmYxMzE5NDhhZGQ2YjYwNjA2NDE5MTdiNzgwOTllNTg4IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"EVPD7kqre560U6YWeUDUj9l3aXGYpA2kFkg2V2OE\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\"},\"_flash\":{\"old\":[],\"new\":[]},\"PHPDEBUGBAR_STACK_DATA\":{\"01KCVJ1HVDVH5AC8NRCRFAYGCV\":null}},\"response_headers\":{\"cache-control\":\"no-cache, private\",\"date\":\"Fri, 19 Dec 2025 15:00:53 GMT\",\"location\":\"http:\\/\\/localhost:8000\\/login\",\"content-type\":\"text\\/html; charset=utf-8\",\"set-cookie\":\"XSRF-TOKEN=eyJpdiI6IjQweTR0QXNwOTFCVEdYbW83d08wZnc9PSIsInZhbHVlIjoiYVoxUHFvSGpYRkxRU1YvODhzVlMwNndVMzMraFh5ZHNrbndjaXJBYkFsMmVFQ01CRStjRTkydjR3cmdSZ1pXSjVnWEE0Z0Z2M2ZZK0J2UWFkQmE1SHBCcTNPN1Y3dVNqV0JucndSVlF6ZFNKeis4eXJLb0szSmlybU1BQWRrSVoiLCJtYWMiOiI0YjUyNjliN2FkODhkZTJkYjZjNjc0N2MzNzc5Zjg2ODg3M2U5NGFlZjEzZTNlYjQ2OGYyNmYyNmM3NDYyZDMxIiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 17:00:53 GMT; Max-Age=7200; path=\\/; samesite=lax, argos_session=eyJpdiI6IlFNb2pSdmFzQnZyRUJLMC9jakFDYUE9PSIsInZhbHVlIjoiU0pncmluNVVZcUxTUmc1SXFEM3VPcTRDc0diMzloV1BxMk43Slgwa1poUitUcFVpRHMwMHByei9wVkNsQUdTd3ZRdW01K1dvbHJLSkZRQjM5NWcrU3hyMVpvblltRnlmYkN0b0hFUHFvM0l6NG1JOHFQNWtqQjFoUmsxZGdTckMiLCJtYWMiOiI1ODVkYWE5M2EyNjAxY2FhZWFlYmI0NmEyOTEwYTUzNmJhZmU0NjU5N2M4YzM4MTcwOTcyZDQyZjFkMzJjODUzIiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 17:00:53 GMT; Max-Age=7200; path=\\/; httponly; samesite=lax\"},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/localhost:8000\\/login\",\"duration\":825,\"memory\":32,\"hostname\":\"Asus\"}', '2025-12-19 15:00:53'),
(21, 'a0a188cf-25fc-48a3-b53f-fa6781179bad', 'a0a188cf-4e87-4639-b91b-7693b2ebddb0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\' limit 1\",\"time\":\"5.14\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"f48fa5df8fd323d753d03a2e0070fcde\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:54'),
(22, 'a0a188cf-33ee-4476-a565-b9823d9e0d7b', 'a0a188cf-4e87-4639-b91b-7693b2ebddb0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = \'1\' limit 1\",\"time\":\"1.32\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\app\\\\Http\\\\Middleware\\\\RedirectIfAuthenticated.php\",\"line\":20,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:54'),
(23, 'a0a188cf-358f-4be8-9299-425034158d8a', 'a0a188cf-4e87-4639-b91b-7693b2ebddb0', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-19 15:00:54'),
(24, 'a0a188cf-3e71-422a-9898-2f8927d66e1d', 'a0a188cf-4e87-4639-b91b-7693b2ebddb0', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"composers\":[{\"name\":\"Closure at C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[304:306]\",\"type\":\"composer\"}],\"hostname\":\"Asus\"}', '2025-12-19 15:00:54'),
(25, 'a0a188cf-439d-40cf-9bef-d5b80ecfcf2f', 'a0a188cf-4e87-4639-b91b-7693b2ebddb0', NULL, 1, 'debugbar', '{\"requestId\":\"01KCVJ1JQ27FQMV1XP9A46878X\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:54'),
(26, 'a0a188cf-4987-48aa-b90e-8fec9bb8c780', 'a0a188cf-4e87-4639-b91b-7693b2ebddb0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"update `sessions` set `payload` = \'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVZQRDdrcXJlNTYwVTZZV2VVRFVqOWwzYVhHWXBBMmtGa2cyVjJPRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=\', `last_activity` = 1766156454, `user_id` = null, `ip_address` = \'127.0.0.1\', `user_agent` = \'Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\' where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\'\",\"time\":\"2.56\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"8ca748303d971bd62c762f74392caa83\",\"hostname\":\"Asus\"}', '2025-12-19 15:00:54'),
(27, 'a0a188cf-4b90-498f-88fb-d1e9d577bc44', 'a0a188cf-4e87-4639-b91b-7693b2ebddb0', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\",\"middleware\":[\"web\",\"guest:web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"fr-FR,fr;q=0.7\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"143\\\", \\\"Chromium\\\";v=\\\"143\\\", \\\"Not A(Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IjhLZUhkNUpOc21xaVFYSytnT3BHZlE9PSIsInZhbHVlIjoiUStNRDY1VG1HSXRHOTY4ZjJMbHY2Ums5eTQ1QVYrdTF1aVhKWGJMbklaZ0VDQ1JvamRPY1plQ21SczdQWTk1bURXN1E0WUVGR3J4ZlllMG4wcTJZQWVZSUZVQVFib3NtTGxLVFdDL2s3bkJDcjhqVU1HY2ZvMldPemFIblBGMDUzWHR0dzBIQ2ptRm83amYyempPUUlMMlMvYnlGeUtKSGxldm5OdmxCbSthR1ZXVm9pUDZXQlhKajlqQTFmQU0xdEVtKzU0TnVoMkRrcm5RQThJM08rR1h6Q2hCRlBjYS9IcUM4Uy9qVFhDTT0iLCJtYWMiOiJiY2M3ZGE1YjUwM2MyZWZjMzc0NDQyYmMzYjQ1OThmZGFlOThiMTdhYmZmMGUwMzg1NDIxZmUzYzNmN2ExMGQwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IjQweTR0QXNwOTFCVEdYbW83d08wZnc9PSIsInZhbHVlIjoiYVoxUHFvSGpYRkxRU1YvODhzVlMwNndVMzMraFh5ZHNrbndjaXJBYkFsMmVFQ01CRStjRTkydjR3cmdSZ1pXSjVnWEE0Z0Z2M2ZZK0J2UWFkQmE1SHBCcTNPN1Y3dVNqV0JucndSVlF6ZFNKeis4eXJLb0szSmlybU1BQWRrSVoiLCJtYWMiOiI0YjUyNjliN2FkODhkZTJkYjZjNjc0N2MzNzc5Zjg2ODg3M2U5NGFlZjEzZTNlYjQ2OGYyNmYyNmM3NDYyZDMxIiwidGFnIjoiIn0%3D; argos_session=eyJpdiI6IlFNb2pSdmFzQnZyRUJLMC9jakFDYUE9PSIsInZhbHVlIjoiU0pncmluNVVZcUxTUmc1SXFEM3VPcTRDc0diMzloV1BxMk43Slgwa1poUitUcFVpRHMwMHByei9wVkNsQUdTd3ZRdW01K1dvbHJLSkZRQjM5NWcrU3hyMVpvblltRnlmYkN0b0hFUHFvM0l6NG1JOHFQNWtqQjFoUmsxZGdTckMiLCJtYWMiOiI1ODVkYWE5M2EyNjAxY2FhZWFlYmI0NmEyOTEwYTUzNmJhZmU0NjU5N2M4YzM4MTcwOTcyZDQyZjFkMzJjODUzIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"EVPD7kqre560U6YWeUDUj9l3aXGYpA2kFkg2V2OE\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/login\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_headers\":{\"content-type\":\"text\\/html; charset=UTF-8\",\"cache-control\":\"no-cache, private\",\"date\":\"Fri, 19 Dec 2025 15:00:54 GMT\",\"phpdebugbar-id\":\"01KCVJ1JQ27FQMV1XP9A46878X\",\"set-cookie\":\"XSRF-TOKEN=eyJpdiI6ImdMelc0VnNqV2JJNnpwckYrcjBQYWc9PSIsInZhbHVlIjoiQ0RpZm1ZZ1hLbzlWWmhkTDFidHpzNmgrMTk3SmM5U1pCQkYwWXZKZFpRWlFSRlNqTUhsY1ZpbFJ3S0Y5YWpKWFdoNjIwM1B3cnhQRVU0TGhrQ3h6TEVCeHh6WlV2clRHNmlGQXdvZGRrbDZCRFRZVm85M3g0NXJlVXYxSXl5aksiLCJtYWMiOiI0MmI2MTVlNWQ4MDQwYTNjZWViMDE2NjY2NjkwYzY3ZjU0MGVkZTA5NTJiYjBjZmFiNjcyOWY0MzA2NDBkYWJiIiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 17:00:54 GMT; Max-Age=7200; path=\\/; samesite=lax, argos_session=eyJpdiI6IjJUWkpBYTJ4VHNNMWFLTVJOT0FEMWc9PSIsInZhbHVlIjoiSXFmdWc3ZEt5Vmp1bzdFbUdzMEgrd2M5R090Z0xOZlo2cDNtRmtKaDFLYXMxcmZMbFUyWDUvdE5UN0VWLzBQY3ZRbm9JYnFjT0ZRYklsWnVFbHBOWXFzOUk0QWhMWi9tZ3dKeUNZZ0x5aDhFL2syZlRiWS9YWERuYm5MMlNSb08iLCJtYWMiOiJhN2YyZDEwODVlMzQ5NTkwMjRmZGY1ZTY5ZjRkZGVhNDhkOGJlMDI2NzNlY2UzNzJiYTljOTQ2NDQzNWE2ZmQxIiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 17:00:54 GMT; Max-Age=7200; path=\\/; httponly; samesite=lax\"},\"response_status\":200,\"response\":{\"view\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":811,\"memory\":32,\"hostname\":\"Asus\"}', '2025-12-19 15:00:54'),
(28, 'a0a18cdc-cbf2-4f92-8362-7c67ed98a106', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', 'd95431ed40d7f9c9c3d3415890a066b9', 1, 'exception', '{\"class\":\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":819,\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'app_name\' for key \'settings.settings_option_name_unique\' (Connection: mysql, SQL: insert into `settings` (`autoload`, `created_at`, `option_name`, `option_value`, `updated_at`) values (1, 2025-12-19 15:12:14, app_name, Lara Dashboard, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, theme_primary_color, #635bff, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, theme_secondary_color, #1f2937, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, sidebar_bg_lite, #FFFFFF, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, sidebar_bg_dark, #171f2e, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, sidebar_li_hover_lite, #E8E6FF, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, sidebar_li_hover_dark, #E8E6FF, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, sidebar_text_lite, #090909, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, sidebar_text_dark, #ffffff, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, navbar_bg_lite, #FFFFFF, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, navbar_bg_dark, #171f2e, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, navbar_text_lite, #090909, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, navbar_text_dark, #ffffff, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, text_color_lite, #212529, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, text_color_dark, #f8f9fa, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, site_logo_lite, \\/images\\/logo\\/lara-dashboard.png, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, site_logo_dark, \\/images\\/logo\\/lara-dashboard-dark.png, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, site_icon, \\/images\\/logo\\/icon.png, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, site_favicon, \\/images\\/logo\\/icon.png, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, default_pagination, 10, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, google_tag_manager_script, , 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, google_analytics_script, , 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, global_custom_css, , 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, global_custom_js, , 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, ai_default_provider, openai, 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, ai_openai_api_key, , 2025-12-19 15:12:14), (1, 2025-12-19 15:12:14, ai_claude_api_key, , 2025-12-19 15:12:14))\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":778},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\MySqlConnection.php\",\"line\":42},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Query\\\\Builder.php\",\"line\":3804},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\database\\\\seeders\\\\SettingsSeeder.php\",\"line\":72},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":36},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":43},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":96},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":35},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":835},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Seeder.php\",\"line\":188},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Seeder.php\",\"line\":197},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Seeder.php\",\"line\":61},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\database\\\\seeders\\\\DatabaseSeeder.php\",\"line\":17},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":36},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":43},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":96},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":35},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":835},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Seeder.php\",\"line\":188},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Seeder.php\",\"line\":197},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Seeds\\\\SeedCommand.php\",\"line\":71},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Eloquent\\\\Concerns\\\\GuardsAttributes.php\",\"line\":157},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Seeds\\\\SeedCommand.php\",\"line\":70},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":36},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":43},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":96},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":35},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":835},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":211},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php\",\"line\":318},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":180},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":1092},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":341},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":192},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":197},{\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\artisan\",\"line\":35}],\"line_preview\":{\"810\":\"        try {\",\"811\":\"            return $callback($query, $bindings);\",\"812\":\"        }\",\"813\":\"\",\"814\":\"        \\/\\/ If an exception occurs when attempting to run a query, we\'ll format the error\",\"815\":\"        \\/\\/ message to include the bindings with SQL, which will make this exception a\",\"816\":\"        \\/\\/ lot more helpful to the developer instead of just the database\'s errors.\",\"817\":\"        catch (Exception $e) {\",\"818\":\"            if ($this->isUniqueConstraintError($e)) {\",\"819\":\"                throw new UniqueConstraintViolationException(\",\"820\":\"                    $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"821\":\"                );\",\"822\":\"            }\",\"823\":\"\",\"824\":\"            throw new QueryException(\",\"825\":\"                $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"826\":\"            );\",\"827\":\"        }\",\"828\":\"    }\",\"829\":\"\"},\"hostname\":\"Asus\",\"occurrences\":1}', '2025-12-19 15:12:14'),
(29, 'a0a18cdc-3b70-4945-8816-05861a4b4232', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where (`matricule` = \'20569\\/S\') limit 1\",\"time\":\"14.65\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\database\\\\seeders\\\\UserSeeder.php\",\"line\":20,\"hash\":\"797b01291c73cb23b327c8b9e790bb2d\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(30, 'a0a18cdc-45b8-4500-abc0-981e08256794', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":3,\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(31, 'a0a18cdc-50de-4dbb-9453-6f15c4c12c35', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"update `users` set `email_verified_at` = \'2025-12-19 15:12:14\', `password` = \'y$zsEJvG.T8Ntgi9lqGlgrd.yQCuJst1.kcJbWgftCc5\\/Hf8jNJeSzu\', `users`.`updated_at` = \'2025-12-19 15:12:14\' where `id` = 1\",\"time\":\"13.33\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\database\\\\seeders\\\\UserSeeder.php\",\"line\":20,\"hash\":\"57a9844f06cf9ee73fbdd127ba493930\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(32, 'a0a18cdc-5f58-4ccc-998d-e9ed4a32a4ff', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `action_logs` (`type`, `title`, `action_by`, `data`, `updated_at`, `created_at`) values (\'updated\', \'User updated by Unknown\', 1, \'{\\\\\\\"user\\\\\\\":{\\\\\\\"id\\\\\\\":1,\\\\\\\"matricule\\\\\\\":\\\\\\\"20569\\\\\\/S\\\\\\\",\\\\\\\"first_name\\\\\\\":\\\\\\\"Super\\\\\\\",\\\\\\\"last_name\\\\\\\":\\\\\\\"Admin\\\\\\\",\\\\\\\"email\\\\\\\":\\\\\\\"superadmin@example.com\\\\\\\",\\\\\\\"username\\\\\\\":\\\\\\\"superadmin\\\\\\\",\\\\\\\"avatar_id\\\\\\\":null,\\\\\\\"two_factor_secret\\\\\\\":null,\\\\\\\"two_factor_recovery_codes\\\\\\\":null,\\\\\\\"two_factor_confirmed_at\\\\\\\":null,\\\\\\\"created_at\\\\\\\":\\\\\\\"2025-12-19T14:58:19.000000Z\\\\\\\",\\\\\\\"updated_at\\\\\\\":\\\\\\\"2025-12-19T15:12:14.000000Z\\\\\\\",\\\\\\\"permissions\\\\\\\":null,\\\\\\\"avatar_url\\\\\\\":\\\\\\\"https:\\\\\\/\\\\\\/ui-avatars.com\\\\\\/api\\\\\\/Super Admin\\\\\\/80\\\\\\/635bff\\\\\\/fff\\\\\\/2\\\\\\\",\\\\\\\"full_name\\\\\\\":\\\\\\\"Super Admin\\\\\\\",\\\\\\\"avatar\\\\\\\":null},\\\\\\\"action_by\\\\\\\":1}\', \'2025-12-19 15:12:14\', \'2025-12-19 15:12:14\')\",\"time\":\"11.81\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\app\\\\Concerns\\\\HasActionLogTrait.php\",\"line\":83,\"hash\":\"f540024a10c93f63d329cd570ce1d50d\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(33, 'a0a18cdc-5feb-4b38-b887-4c485b977285', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\ActionLog:112\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(34, 'a0a18cdc-6076-47a9-b45c-0b6370970215', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\User:1\",\"changes\":{\"email_verified_at\":\"2025-12-19 15:12:14\",\"password\":\"$2y$10$zsEJvG.T8Ntgi9lqGlgrd.yQCuJst1.kcJbWgftCc5\\/Hf8jNJeSzu\",\"updated_at\":\"2025-12-19 15:12:14\"},\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(35, 'a0a18cdc-896d-47a5-92f4-b4fd59413466', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where (`matricule` = \'20570\\/S\') limit 1\",\"time\":\"1.14\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\database\\\\seeders\\\\UserSeeder.php\",\"line\":42,\"hash\":\"797b01291c73cb23b327c8b9e790bb2d\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(36, 'a0a18cdc-8bac-42db-a53a-64a019b14146', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"update `users` set `email_verified_at` = \'2025-12-19 15:12:14\', `password` = \'y$mw\\/h0hFoMAZJlvl3PNTqCuKmrCXbt1MiGmk1lqYeDJctmJtysyZP.\', `users`.`updated_at` = \'2025-12-19 15:12:14\' where `id` = 2\",\"time\":\"3.25\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\database\\\\seeders\\\\UserSeeder.php\",\"line\":42,\"hash\":\"57a9844f06cf9ee73fbdd127ba493930\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(37, 'a0a18cdc-8d79-4d02-9463-4e89c0775122', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `action_logs` (`type`, `title`, `action_by`, `data`, `updated_at`, `created_at`) values (\'updated\', \'User updated by Unknown\', 1, \'{\\\\\\\"user\\\\\\\":{\\\\\\\"id\\\\\\\":2,\\\\\\\"matricule\\\\\\\":\\\\\\\"20570\\\\\\/S\\\\\\\",\\\\\\\"first_name\\\\\\\":\\\\\\\"Admin\\\\\\\",\\\\\\\"last_name\\\\\\\":\\\\\\\"Test\\\\\\\",\\\\\\\"email\\\\\\\":\\\\\\\"admin@example.com\\\\\\\",\\\\\\\"username\\\\\\\":\\\\\\\"admin\\\\\\\",\\\\\\\"avatar_id\\\\\\\":null,\\\\\\\"two_factor_secret\\\\\\\":null,\\\\\\\"two_factor_recovery_codes\\\\\\\":null,\\\\\\\"two_factor_confirmed_at\\\\\\\":null,\\\\\\\"created_at\\\\\\\":\\\\\\\"2025-12-19T14:58:19.000000Z\\\\\\\",\\\\\\\"updated_at\\\\\\\":\\\\\\\"2025-12-19T15:12:14.000000Z\\\\\\\",\\\\\\\"permissions\\\\\\\":null,\\\\\\\"avatar_url\\\\\\\":\\\\\\\"https:\\\\\\/\\\\\\/ui-avatars.com\\\\\\/api\\\\\\/Admin Test\\\\\\/80\\\\\\/635bff\\\\\\/fff\\\\\\/2\\\\\\\",\\\\\\\"full_name\\\\\\\":\\\\\\\"Admin Test\\\\\\\",\\\\\\\"avatar\\\\\\\":null},\\\\\\\"action_by\\\\\\\":1}\', \'2025-12-19 15:12:14\', \'2025-12-19 15:12:14\')\",\"time\":\"2.65\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\app\\\\Concerns\\\\HasActionLogTrait.php\",\"line\":83,\"hash\":\"f540024a10c93f63d329cd570ce1d50d\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(38, 'a0a18cdc-8dbb-4119-adec-3cc49f468e8a', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\ActionLog:113\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(39, 'a0a18cdc-8e40-439f-8156-b09eb789254a', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\User:2\",\"changes\":{\"email_verified_at\":\"2025-12-19 15:12:14\",\"password\":\"$2y$10$mw\\/h0hFoMAZJlvl3PNTqCuKmrCXbt1MiGmk1lqYeDJctmJtysyZP.\",\"updated_at\":\"2025-12-19 15:12:14\"},\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(40, 'a0a18cdc-afe2-4f61-975d-a00bdfb1754f', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where (`matricule` = \'20571\\/S\') limit 1\",\"time\":\"2.06\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\database\\\\seeders\\\\UserSeeder.php\",\"line\":64,\"hash\":\"797b01291c73cb23b327c8b9e790bb2d\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(41, 'a0a18cdc-b1da-4133-9ca1-ebd804b2ebe4', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"update `users` set `email_verified_at` = \'2025-12-19 15:12:14\', `password` = \'y$apoOpT8PVhP01pjCh6IJfeWbPrXmZm7gB\\/Ztf4x1lAfv45Q83dvAy\', `users`.`updated_at` = \'2025-12-19 15:12:14\' where `id` = 3\",\"time\":\"2.78\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\database\\\\seeders\\\\UserSeeder.php\",\"line\":64,\"hash\":\"57a9844f06cf9ee73fbdd127ba493930\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(42, 'a0a18cdc-b417-4cc3-8777-0baf82961de9', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `action_logs` (`type`, `title`, `action_by`, `data`, `updated_at`, `created_at`) values (\'updated\', \'User updated by Unknown\', 1, \'{\\\\\\\"user\\\\\\\":{\\\\\\\"id\\\\\\\":3,\\\\\\\"matricule\\\\\\\":\\\\\\\"20571\\\\\\/S\\\\\\\",\\\\\\\"first_name\\\\\\\":\\\\\\\"User\\\\\\\",\\\\\\\"last_name\\\\\\\":\\\\\\\"Test\\\\\\\",\\\\\\\"email\\\\\\\":\\\\\\\"user@example.com\\\\\\\",\\\\\\\"username\\\\\\\":\\\\\\\"user\\\\\\\",\\\\\\\"avatar_id\\\\\\\":null,\\\\\\\"two_factor_secret\\\\\\\":null,\\\\\\\"two_factor_recovery_codes\\\\\\\":null,\\\\\\\"two_factor_confirmed_at\\\\\\\":null,\\\\\\\"created_at\\\\\\\":\\\\\\\"2025-12-19T14:58:19.000000Z\\\\\\\",\\\\\\\"updated_at\\\\\\\":\\\\\\\"2025-12-19T15:12:14.000000Z\\\\\\\",\\\\\\\"permissions\\\\\\\":null,\\\\\\\"avatar_url\\\\\\\":\\\\\\\"https:\\\\\\/\\\\\\/ui-avatars.com\\\\\\/api\\\\\\/User Test\\\\\\/80\\\\\\/635bff\\\\\\/fff\\\\\\/2\\\\\\\",\\\\\\\"full_name\\\\\\\":\\\\\\\"User Test\\\\\\\",\\\\\\\"avatar\\\\\\\":null},\\\\\\\"action_by\\\\\\\":1}\', \'2025-12-19 15:12:14\', \'2025-12-19 15:12:14\')\",\"time\":\"3.78\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\app\\\\Concerns\\\\HasActionLogTrait.php\",\"line\":83,\"hash\":\"f540024a10c93f63d329cd570ce1d50d\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(43, 'a0a18cdc-b458-4522-b55b-9a3d5e670311', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\ActionLog:114\",\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(44, 'a0a18cdc-b495-477d-a03e-075d9558e953', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\User:3\",\"changes\":{\"email_verified_at\":\"2025-12-19 15:12:14\",\"password\":\"$2y$10$apoOpT8PVhP01pjCh6IJfeWbPrXmZm7gB\\/Ztf4x1lAfv45Q83dvAy\",\"updated_at\":\"2025-12-19 15:12:14\"},\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(45, 'a0a18cdc-be3b-449a-9277-7e480cba7df3', 'a0a18cdc-de32-4650-b2ec-6c09c9e700e6', NULL, 1, 'command', '{\"command\":\"db:seed\",\"exit_code\":1,\"arguments\":{\"command\":\"db:seed\",\"class\":null},\"options\":{\"class\":\"Database\\\\Seeders\\\\DatabaseSeeder\",\"database\":null,\"force\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-19 15:12:14'),
(46, 'a0a19a98-f885-40e5-840f-a63875543c9c', 'a0a19a99-05eb-4bdd-b671-ab7503209ecb', NULL, 1, 'command', '{\"command\":\"make:policy\",\"exit_code\":0,\"arguments\":{\"command\":\"make:policy\",\"name\":\"UserUpdatePolicy\"},\"options\":{\"force\":false,\"model\":null,\"guard\":null,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-19 15:50:38'),
(47, 'a0a19a9b-8df5-4ab5-b233-8d166250cc5d', 'a0a19a9b-94de-4bb9-bdeb-237449914829', NULL, 1, 'command', '{\"command\":\"make:policy\",\"exit_code\":0,\"arguments\":{\"command\":\"make:policy\",\"name\":\"UserDeletePolicy\"},\"options\":{\"force\":false,\"model\":null,\"guard\":null,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-19 15:50:40'),
(48, 'a0a1a058-a48f-40e8-8a1b-7e978e948470', 'a0a1a059-27da-4736-b6e6-fd307100c142', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\' limit 1\",\"time\":\"37.32\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"f48fa5df8fd323d753d03a2e0070fcde\",\"hostname\":\"Asus\"}', '2025-12-19 16:06:43'),
(49, 'a0a1a058-dddf-4ed2-aa39-fb32b1ab9e89', 'a0a1a059-27da-4736-b6e6-fd307100c142', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = \'1\' limit 1\",\"time\":\"2.88\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\app\\\\Http\\\\Middleware\\\\RedirectIfAuthenticated.php\",\"line\":20,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"Asus\"}', '2025-12-19 16:06:43'),
(50, 'a0a1a058-dfd3-4f9a-9dc6-9c1d0732082b', 'a0a1a059-27da-4736-b6e6-fd307100c142', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-19 16:06:43'),
(51, 'a0a1a058-f3a7-4ccc-90a1-4c6a9917926b', 'a0a1a059-27da-4736-b6e6-fd307100c142', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"composers\":[{\"name\":\"Closure at C:\\\\laragon\\\\www\\\\ARGOS\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[304:306]\",\"type\":\"composer\"}],\"hostname\":\"Asus\"}', '2025-12-19 16:06:43'),
(52, 'a0a1a059-04d2-47f2-a6f0-8a49ff166020', 'a0a1a059-27da-4736-b6e6-fd307100c142', NULL, 1, 'debugbar', '{\"requestId\":\"01KCVNT365Q439279Z4JASHSKN\",\"hostname\":\"Asus\"}', '2025-12-19 16:06:43'),
(53, 'a0a1a059-1973-4a19-affa-2ac5b2a9e523', 'a0a1a059-27da-4736-b6e6-fd307100c142', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"update `sessions` set `payload` = \'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVZQRDdrcXJlNTYwVTZZV2VVRFVqOWwzYVhHWXBBMmtGa2cyVjJPRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=\', `last_activity` = 1766160403, `user_id` = null, `ip_address` = \'127.0.0.1\', `user_agent` = \'Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\' where `id` = \'E9DjKf4IBbHKksZ1B3nes7WH2aXaKYgKn4Knywgr\'\",\"time\":\"15.07\",\"slow\":false,\"file\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\public\\\\index.php\",\"line\":52,\"hash\":\"8ca748303d971bd62c762f74392caa83\",\"hostname\":\"Asus\"}', '2025-12-19 16:06:43');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(54, 'a0a1a059-1ef9-4649-8255-3a8d412e9498', 'a0a1a059-27da-4736-b6e6-fd307100c142', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"Laravel\\\\Fortify\\\\Http\\\\Controllers\\\\AuthenticatedSessionController@create\",\"middleware\":[\"web\",\"guest:web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Brave\\\";v=\\\"143\\\", \\\"Chromium\\\";v=\\\"143\\\", \\\"Not A(Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\",\"sec-gpc\":\"1\",\"accept-language\":\"fr-FR,fr;q=0.7\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"cookie\":\"remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IjhLZUhkNUpOc21xaVFYSytnT3BHZlE9PSIsInZhbHVlIjoiUStNRDY1VG1HSXRHOTY4ZjJMbHY2Ums5eTQ1QVYrdTF1aVhKWGJMbklaZ0VDQ1JvamRPY1plQ21SczdQWTk1bURXN1E0WUVGR3J4ZlllMG4wcTJZQWVZSUZVQVFib3NtTGxLVFdDL2s3bkJDcjhqVU1HY2ZvMldPemFIblBGMDUzWHR0dzBIQ2ptRm83amYyempPUUlMMlMvYnlGeUtKSGxldm5OdmxCbSthR1ZXVm9pUDZXQlhKajlqQTFmQU0xdEVtKzU0TnVoMkRrcm5RQThJM08rR1h6Q2hCRlBjYS9IcUM4Uy9qVFhDTT0iLCJtYWMiOiJiY2M3ZGE1YjUwM2MyZWZjMzc0NDQyYmMzYjQ1OThmZGFlOThiMTdhYmZmMGUwMzg1NDIxZmUzYzNmN2ExMGQwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImdMelc0VnNqV2JJNnpwckYrcjBQYWc9PSIsInZhbHVlIjoiQ0RpZm1ZZ1hLbzlWWmhkTDFidHpzNmgrMTk3SmM5U1pCQkYwWXZKZFpRWlFSRlNqTUhsY1ZpbFJ3S0Y5YWpKWFdoNjIwM1B3cnhQRVU0TGhrQ3h6TEVCeHh6WlV2clRHNmlGQXdvZGRrbDZCRFRZVm85M3g0NXJlVXYxSXl5aksiLCJtYWMiOiI0MmI2MTVlNWQ4MDQwYTNjZWViMDE2NjY2NjkwYzY3ZjU0MGVkZTA5NTJiYjBjZmFiNjcyOWY0MzA2NDBkYWJiIiwidGFnIjoiIn0%3D; argos_session=eyJpdiI6IjJUWkpBYTJ4VHNNMWFLTVJOT0FEMWc9PSIsInZhbHVlIjoiSXFmdWc3ZEt5Vmp1bzdFbUdzMEgrd2M5R090Z0xOZlo2cDNtRmtKaDFLYXMxcmZMbFUyWDUvdE5UN0VWLzBQY3ZRbm9JYnFjT0ZRYklsWnVFbHBOWXFzOUk0QWhMWi9tZ3dKeUNZZ0x5aDhFL2syZlRiWS9YWERuYm5MMlNSb08iLCJtYWMiOiJhN2YyZDEwODVlMzQ5NTkwMjRmZGY1ZTY5ZjRkZGVhNDhkOGJlMDI2NzNlY2UzNzJiYTljOTQ2NDQzNWE2ZmQxIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"EVPD7kqre560U6YWeUDUj9l3aXGYpA2kFkg2V2OE\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/login\"},\"_flash\":{\"old\":[],\"new\":[]},\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_headers\":{\"content-type\":\"text\\/html; charset=UTF-8\",\"cache-control\":\"no-cache, private\",\"date\":\"Fri, 19 Dec 2025 16:06:43 GMT\",\"phpdebugbar-id\":\"01KCVNT365Q439279Z4JASHSKN\",\"set-cookie\":\"XSRF-TOKEN=eyJpdiI6IlltSzVNa0orMGJ0TE40RVUxcVhPS0E9PSIsInZhbHVlIjoiaCswRnBqOUQzT3BNNlRQekhJcThvMzViRzh1RUVGZnpFbzRud0RhZGpMT2o0ZVVObE1uS3BRZkh4dExTWTJTM1A5TTAvMGpGNW9TRUhFeStJQTN5WlJWbDI0MFdPZnlYZ1hmRnd0RjJOWlI3UEI1a2NUMGlaU05WZnJoQUdram8iLCJtYWMiOiJjNzJiODllMzdkMWExNTE5ZTVhZTRjMzgwZTQ5ZjM4ZWYxOGQ5MGFmYzgxOWMzODcyMjk1Yjk5ODUyZDIwYWJhIiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 18:06:43 GMT; Max-Age=7200; path=\\/; samesite=lax, argos_session=eyJpdiI6Ik42NjkyRGM4bldTOWUyZzJKWlhncGc9PSIsInZhbHVlIjoiR3p1eXA0TnFKeXhqaUpZcjN6QmtNV3VQMmwvUVlCUktNOHBKOWRodUhzdHR6M0NoNVZHcGJ6S2FFUm1XVWgrK3hsR3lYZS94SVUxN2hXVS94dkYzTmE5bXBRd2VPWmd4bmFyQU9aS0ZyUE41b2tGdTAxUHJCUFArUWZNdjZjNTkiLCJtYWMiOiJjZDI5NDQ1NWY5NmQ1YTUzMTFmMTE2MzFjNDdkNmM2ZGM5NTA0NTQ3MWI3NGNmYmI1ODFmNzk1OGZjNDA1N2UyIiwidGFnIjoiIn0%3D; expires=Fri, 19 Dec 2025 18:06:43 GMT; Max-Age=7200; path=\\/; httponly; samesite=lax\"},\"response_status\":200,\"response\":{\"view\":\"C:\\\\laragon\\\\www\\\\ARGOS\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":1672,\"memory\":32,\"hostname\":\"Asus\"}', '2025-12-19 16:06:43'),
(55, 'a0a365ff-510d-4416-9664-65a68837b81f', 'a0a365ff-5895-4f14-ab7e-5e2e86998705', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(56, 'a0a365ff-6a20-437d-9192-c4a0b7cf5da9', 'a0a365ff-7eb2-4c5e-840c-7ee8575086d2', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(57, 'a0a365ff-5344-4e44-aa4d-30705190c8b1', 'a0a365ff-5cbd-4d76-9988-01f5e140e9af', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(58, 'a0a365ff-41d2-479e-8db4-166433af9c54', 'a0a365ff-52cb-4df1-a97f-413330a95f00', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(59, 'a0a365ff-4ff6-4c25-a5eb-eacd0507d6ac', 'a0a365ff-55b5-4a6f-a55f-d8239e702dc9', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(60, 'a0a365ff-749a-4178-af34-8add859acb07', 'a0a365ff-7d92-4500-a26a-008d3bd5d55d', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(61, 'a0a365ff-9e8e-4d76-8082-858eae169a1d', 'a0a365ff-a4b8-44aa-a3e1-1dc7aa68defd', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(62, 'a0a365ff-941b-4dfd-b751-09c53e87b2b9', 'a0a365ff-b923-4790-8d8d-cf3df4d31d28', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(63, 'a0a365ff-ac61-4bc4-817b-fa089e6d23e4', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(64, 'a0a365ff-dcfc-4222-9453-52a5bebfbea0', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `media` limit 1\",\"time\":\"24.56\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"c2994fe029a46448d9b2ff119e1efdd7\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(65, 'a0a365ff-e380-44c2-a25e-612f00762f65', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `action_logs` limit 1\",\"time\":\"3.93\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"d8a38bbac53f55fdfd7835d841ac4eec\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(66, 'a0a365ff-e3c3-4acc-b966-40fc4e466cad', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\ActionLog\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(67, 'a0a365ff-e8f8-401b-b8bc-0e7c299463e2', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `media` limit 1\",\"time\":\"0.76\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"c2994fe029a46448d9b2ff119e1efdd7\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(68, 'a0a365ff-ef25-473e-8cc5-7c1b83711373', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `permissions` limit 1\",\"time\":\"2.64\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"51e9d969f17c78f90d8e7681004a1de9\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(69, 'a0a365ff-ef70-4725-b419-431b17e8a4b1', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Permission\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(70, 'a0a365ff-f402-44bb-bcbb-06c05bf5651d', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `permissions` limit 1\",\"time\":\"1.05\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"51e9d969f17c78f90d8e7681004a1de9\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(71, 'a0a365ff-f44f-49db-8a63-24a21db5805a', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Permission\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(72, 'a0a365ff-fa10-4036-8619-3f20143aca1b', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `posts` limit 1\",\"time\":\"4.03\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"11d8babb4aea9c66c7875eef4dae7bd3\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(73, 'a0a365ff-fa53-4010-966c-ced8a7357bbc', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Post\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(74, 'a0a36600-0042-4029-8c5f-1c127276d30d', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `post_meta` limit 1\",\"time\":\"2.26\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"036df614be5ac5af309861b75d02a3a3\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(75, 'a0a36600-0656-4198-99c9-006fd10958c4', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` limit 1\",\"time\":\"1.82\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7b92920f696a1378bfc848f6d6479bb6\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(76, 'a0a36600-06a6-42d1-b5df-e204fc05762e', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(77, 'a0a36600-0b55-4a40-b031-605ef9456e86', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7b92920f696a1378bfc848f6d6479bb6\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(78, 'a0a36600-0b9e-4b88-9479-4a46611d6922', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"Spatie\\\\Permission\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(79, 'a0a36600-1176-4829-a270-04be94e62923', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` limit 1\",\"time\":\"2.55\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"fa0ff947d644db0afa39e9f3fd6a5cf9\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(80, 'a0a36600-11c3-4e94-a1e3-e99a70fe3852', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(81, 'a0a36600-16dc-430b-9f36-7fee437d22f5', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `taxonomies` limit 1\",\"time\":\"2.81\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"fe708ba5599dedb937108b02381b5495\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(82, 'a0a36600-1720-4aab-adef-c85e192b6318', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Taxonomy\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(83, 'a0a36600-1c82-4c50-9000-695a6d77a9d3', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `terms` limit 1\",\"time\":\"2.93\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"b637316298df4e94ba8200df1189a9b2\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(84, 'a0a36600-1cc6-483a-b1ed-d9677aa0f0a3', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Term\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(85, 'a0a36600-22a7-4ff3-b17c-0249316e30e1', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` limit 1\",\"time\":\"3.01\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"26d128571acc3ade5f7d4401c1737345\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(86, 'a0a36600-22e7-4702-b67d-fe03b9fc3c1d', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"Asus\"}', '2025-12-20 13:15:13'),
(87, 'a0a36600-2a12-4f8a-97a3-2f28ff3288bd', 'a0a36600-2ede-454c-b251-cd605571eac3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"driver\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `user_meta` limit 1\",\"time\":\"1.98\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"467c0f6a980f620be6073cc42dff2755\",\"hostname\":\"Asus\"}', '2025-12-20 13:15:14'),
(88, 'a0a3660f-6a7a-4cc5-89a9-3ae080da95b7', 'a0a3660f-70a3-41df-9e9c-3dc7078a3089', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:24'),
(89, 'a0a36610-6588-4198-ab0c-dd97d614476d', 'a0a36610-6d52-48f7-b19d-2b2d0419bf02', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:24'),
(90, 'a0a3661a-12d8-4651-9b36-ddaaabbfa7bc', 'a0a3661a-36a5-4004-a15f-03685996eb9c', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:31'),
(91, 'a0a36622-f256-4b06-b6f5-3c9686b656a6', 'a0a36623-047a-46e1-8c91-8eb9f42f4380', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:15:36'),
(92, 'a0a36657-723a-47ae-b672-287569df51de', 'a0a36657-8beb-4b9e-a82a-bad771afb337', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:16:11'),
(93, 'a0a36657-903d-4a06-a984-b2728328a426', 'a0a36657-9c07-4771-8449-bf9fb7f71355', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:16:11'),
(94, 'a0a366b2-7db6-490b-8fbc-23c9ff764274', 'a0a366b2-897a-43ce-bfa5-9b37065b63dc', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:17:10'),
(95, 'a0a366b2-7dfd-4d16-944d-b7506f4447bd', 'a0a366b2-9341-4e10-8461-2ba3cd227203', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:17:10'),
(96, 'a0a3670d-be68-4e31-a56e-8ecb6941635c', 'a0a3670d-c604-46ad-8953-4c8b636b6a26', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:18:10'),
(97, 'a0a3670d-bb7b-47a5-b4f6-ff3749ca8acc', 'a0a3670d-c733-4cd3-a554-619715eca83b', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:18:10'),
(98, 'a0a36769-7751-4f5e-97ea-312bb385e2c7', 'a0a36769-7e79-4e96-b0b5-e9508e017c1a', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:19:10'),
(99, 'a0a36769-7838-4540-b3e9-759117c5fd1e', 'a0a36769-8634-4f99-b73e-df32c112ba40', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:19:10'),
(100, 'a0a367c5-78c1-4735-ad50-66684689969c', 'a0a367c5-8434-462b-8023-81536a648e4d', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:20:11'),
(101, 'a0a367c5-8350-4dac-8fae-a00d1383e3c3', 'a0a367c5-a349-4f17-bd37-9556d5a1ecc6', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"silent\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"Asus\"}', '2025-12-20 13:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('a0a365ff-e3c3-4acc-b966-40fc4e466cad', 'App\\Models\\ActionLog'),
('a0a18cdc-5feb-4b38-b887-4c485b977285', 'App\\Models\\ActionLog:112'),
('a0a18cdc-8dbb-4119-adec-3cc49f468e8a', 'App\\Models\\ActionLog:113'),
('a0a18cdc-b458-4522-b55b-9a3d5e670311', 'App\\Models\\ActionLog:114'),
('a0a365ff-ef70-4725-b419-431b17e8a4b1', 'App\\Models\\Permission'),
('a0a365ff-fa53-4010-966c-ced8a7357bbc', 'App\\Models\\Post'),
('a0a36600-06a6-42d1-b5df-e204fc05762e', 'App\\Models\\Role'),
('a0a36600-11c3-4e94-a1e3-e99a70fe3852', 'App\\Models\\Setting'),
('a0a36600-1720-4aab-adef-c85e192b6318', 'App\\Models\\Taxonomy'),
('a0a36600-1cc6-483a-b1ed-d9677aa0f0a3', 'App\\Models\\Term'),
('a0a188b3-1865-4254-bc15-c3a3a19a42b2', 'App\\Models\\User'),
('a0a188b4-812f-445d-afd1-77122a1e4950', 'App\\Models\\User'),
('a0a188cd-fa32-4834-b3c3-54b3ec448f03', 'App\\Models\\User'),
('a0a188cf-358f-4be8-9299-425034158d8a', 'App\\Models\\User'),
('a0a18cdc-45b8-4500-abc0-981e08256794', 'App\\Models\\User'),
('a0a1a058-dfd3-4f9a-9dc6-9c1d0732082b', 'App\\Models\\User'),
('a0a36600-22e7-4702-b67d-fe03b9fc3c1d', 'App\\Models\\User'),
('a0a18cdc-6076-47a9-b45c-0b6370970215', 'App\\Models\\User:1'),
('a0a18cdc-8e40-439f-8156-b09eb789254a', 'App\\Models\\User:2'),
('a0a18cdc-b495-477d-a03e-075d9558e953', 'App\\Models\\User:3'),
('a0a365ff-f44f-49db-8a63-24a21db5805a', 'Spatie\\Permission\\Models\\Permission'),
('a0a36600-0b9e-4b88-9479-4a46611d6922', 'Spatie\\Permission\\Models\\Role');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `name`, `slug`, `taxonomy`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', 'category', 'Default category for posts that do not belong to any other category.', NULL, '2025-12-19 14:58:19', '2025-12-19 14:58:19'),
(2, 'Sample Tag', 'sample-tag', 'tag', 'A sample tag for demonstration purposes.', NULL, '2025-12-19 14:58:19', '2025-12-19 14:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `term_relationships`
--

CREATE TABLE `term_relationships` (
  `post_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_relationships`
--

INSERT INTO `term_relationships` (`post_id`, `term_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `unites`
--

CREATE TABLE `unites` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('BRANCH','LEAF') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LEAF',
  `ordre` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `matricule` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `matricule`, `first_name`, `last_name`, `email`, `username`, `avatar_id`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `permissions`) VALUES
(1, '20569/S', 'Super', 'Admin', 'superadmin@example.com', 'superadmin', NULL, '2025-12-19 15:12:14', '$2y$10$zsEJvG.T8Ntgi9lqGlgrd.yQCuJst1.kcJbWgftCc5/Hf8jNJeSzu', NULL, NULL, NULL, NULL, '2025-12-19 14:58:19', '2025-12-19 15:12:14', NULL),
(2, '20570/S', 'Admin', 'Test', 'admin@example.com', 'admin', NULL, '2025-12-19 15:12:14', '$2y$10$mw/h0hFoMAZJlvl3PNTqCuKmrCXbt1MiGmk1lqYeDJctmJtysyZP.', NULL, NULL, NULL, NULL, '2025-12-19 14:58:19', '2025-12-19 15:12:14', NULL),
(3, '20571/S', 'User', 'Test', 'user@example.com', 'user', NULL, '2025-12-19 15:12:14', '$2y$10$apoOpT8PVhP01pjCh6IJfeWbPrXmZm7gB/Ztf4x1lAfv45Q83dvAy', NULL, NULL, NULL, NULL, '2025-12-19 14:58:19', '2025-12-19 15:12:14', NULL),
(4, NULL, 'Mabel', 'Sporer', 'vito73@example.org', 'cgerlach_6945680bc0776', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'cwrgcXpiXe', '2025-11-05 13:16:50', '2025-04-16 18:15:16', NULL),
(5, NULL, 'Asha', 'O\'Kon', 'bglover@example.org', 'edubuque_6945680bd68c0', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'jsssemOYk2', '2025-06-23 05:54:05', '2024-12-28 02:14:58', NULL),
(6, NULL, 'Kyler', 'Reilly', 'dino.wyman@example.org', 'aurelie.friesen_6945680bd8303', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'gg2rBEW6cq', '2025-09-24 22:48:55', '2025-10-23 07:45:51', NULL),
(7, NULL, 'Cydney', 'Hettinger', 'ekrajcik@example.com', 'magdalen12_6945680bd9dbd', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'B7YOh0BJbl', '2025-08-10 13:14:51', '2025-04-26 09:04:50', NULL),
(8, NULL, 'Stanford', 'Donnelly', 'lilliana.kerluke@example.org', 'rnikolaus_6945680bdbec0', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'ZT94Zyz3Rk', '2025-11-20 12:46:27', '2025-06-04 10:14:53', NULL),
(9, NULL, 'Aaron', 'Bosco', 'denesik.beau@example.net', 'virginia28_6945680bdd8e3', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'rB31yel0D7', '2025-12-17 12:15:58', '2025-06-07 13:24:39', NULL),
(10, NULL, 'Glenda', 'Rohan', 'dkoepp@example.com', 'adelbert50_6945680bdf419', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'n0vgvrkvym', '2024-12-21 19:52:30', '2025-05-31 23:34:49', NULL),
(11, NULL, 'Lisette', 'Schiller', 'leffler.george@example.org', 'white.haskell_6945680be129d', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'w1KVOrajjo', '2025-03-21 14:45:52', '2025-05-20 22:03:38', NULL),
(12, NULL, 'Susie', 'Graham', 'gleichner.pansy@example.com', 'fvandervort_6945680be3101', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'roTWHrYaLW', '2025-09-20 04:36:58', '2025-01-18 05:54:17', NULL),
(13, NULL, 'Jakob', 'Gottlieb', 'ransom12@example.com', 'ivah.homenick_6945680be5136', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'f4QBnf0ipB', '2025-11-24 11:37:06', '2025-04-18 19:55:36', NULL),
(14, NULL, 'Madge', 'Rosenbaum', 'nyasia90@example.net', 'wuckert.araceli_6945680be7206', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '1cTZucLjdH', '2025-07-15 07:20:43', '2025-08-10 12:17:56', NULL),
(15, NULL, 'Eunice', 'Ebert', 'aabshire@example.com', 'rwalter_6945680be8c87', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'XAiprbXuYr', '2025-11-05 09:44:13', '2025-11-24 07:47:21', NULL),
(16, NULL, 'Patrick', 'Hills', 'dakota.boyle@example.com', 'vivian60_6945680bea6c0', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '1AyjWLNbWj', '2025-03-21 13:43:10', '2025-02-18 23:43:54', NULL),
(17, NULL, 'Danial', 'Hirthe', 'koepp.ken@example.org', 'zmurazik_6945680bebfa7', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'zn4pGaIHV6', '2025-08-13 22:08:52', '2025-09-11 02:45:28', NULL),
(18, NULL, 'Martina', 'Cruickshank', 'walsh.mariam@example.com', 'rashawn.mayert_6945680bedcd2', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'exA7O3soOR', '2025-05-16 00:21:54', '2025-10-24 12:00:18', NULL),
(19, NULL, 'Graham', 'Simonis', 'usenger@example.org', 'adelle93_6945680bf02e7', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'LkKgtfxnxW', '2025-05-28 16:39:08', '2025-07-03 13:15:35', NULL),
(20, NULL, 'Barbara', 'Denesik', 'eve.heller@example.org', 'caleigh.rohan_6945680bf1f04', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'nLLYFSh3dm', '2025-01-22 17:05:01', '2025-01-05 22:04:31', NULL),
(21, NULL, 'Timothy', 'Jerde', 'satterfield.elta@example.net', 'mariana34_6945680bf39dc', NULL, '2025-12-19 14:58:19', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'ofAq1GeVkk', '2025-10-22 18:33:12', '2025-08-05 14:18:00', NULL),
(22, NULL, 'Drew', 'Wintheiser', 'celine52@example.net', 'gkemmer_6945680c01315', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'MdYDmxL0XU', '2025-08-05 10:07:11', '2025-02-02 07:21:14', NULL),
(23, NULL, 'Tod', 'Gibson', 'howe.carrie@example.org', 'dubuque.griffin_6945680c03049', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '8XwcpRdyA3', '2025-09-18 21:56:58', '2025-03-30 19:23:35', NULL),
(24, NULL, 'Jermey', 'Zboncak', 'garland75@example.net', 'rolfson.deven_6945680c0502e', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'HZNCntgChB', '2025-10-20 18:30:49', '2025-02-06 10:27:29', NULL),
(25, NULL, 'Guido', 'Ledner', 'brannon.bins@example.com', 'uriah.ratke_6945680c06ef7', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'FmhgGZQaas', '2025-12-17 04:21:37', '2025-07-04 07:25:02', NULL),
(26, NULL, 'Jaqueline', 'Rodriguez', 'george.zieme@example.com', 'vance.bauch_6945680c08c09', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'iqTM8HjtTv', '2025-04-17 15:59:16', '2025-12-15 20:42:26', NULL),
(27, NULL, 'Ana', 'Cole', 'crona.alena@example.org', 'fahey.demario_6945680c0a9b1', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'tqeKo3bCl5', '2025-06-12 19:36:05', '2025-03-24 23:51:29', NULL),
(28, NULL, 'Ryann', 'Stracke', 'loyce.cassin@example.org', 'zjerde_6945680c0c606', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'um5qAe5DFH', '2025-05-12 03:25:37', '2025-02-17 11:50:06', NULL),
(29, NULL, 'Imelda', 'Runolfsdottir', 'zondricka@example.net', 'cronin.mohamed_6945680c0e115', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'J6ULENt4Fw', '2025-04-28 19:35:00', '2025-06-27 19:24:36', NULL),
(30, NULL, 'Birdie', 'Conn', 'jmcglynn@example.org', 'rkuhn_6945680c10578', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'RUFexKbLu0', '2025-01-05 14:13:41', '2025-01-17 12:03:13', NULL),
(31, NULL, 'Bonnie', 'Block', 'gerhold.oleta@example.net', 'grady.raul_6945680c122af', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'rzPBZSVV0E', '2025-11-12 22:19:46', '2025-01-18 15:09:40', NULL),
(32, NULL, 'Alex', 'Cummerata', 'brekke.fiona@example.net', 'cassandra39_6945680c140f1', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'L8CMZkqs1V', '2025-09-05 17:45:58', '2025-05-26 06:04:30', NULL),
(33, NULL, 'Rogers', 'Rice', 'gupton@example.org', 'weimann.kacey_6945680c15be8', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '7P3KNmxQsd', '2025-12-08 00:23:59', '2025-09-06 04:15:13', NULL),
(34, NULL, 'Melody', 'Funk', 'hudson.crystel@example.org', 'yconroy_6945680c17a1e', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'w42As0kC7d', '2025-10-21 20:16:43', '2025-06-29 09:15:09', NULL),
(35, NULL, 'Mathilde', 'Quigley', 'rogelio94@example.com', 'winston32_6945680c19fcc', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'HzVFy72aDy', '2025-09-17 15:12:23', '2025-04-23 21:31:42', NULL),
(36, NULL, 'Jaycee', 'Rowe', 'zdamore@example.net', 'jackeline.parisian_6945680c29bc3', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'tiIWwMIw1d', '2025-05-07 00:06:12', '2025-10-05 20:02:26', NULL),
(37, NULL, 'Willie', 'Ledner', 'klangworth@example.com', 'zdoyle_6945680c2b8b0', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'Ujwvz5PWqn', '2025-05-06 15:22:51', '2025-06-24 06:07:53', NULL),
(38, NULL, 'Malika', 'Cole', 'kdicki@example.com', 'zemard_6945680c2d555', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '0ncjjvk8lE', '2025-12-11 17:12:45', '2025-11-08 23:11:16', NULL),
(39, NULL, 'Carolyn', 'Mann', 'cleve.quitzon@example.net', 'fritsch.rachel_6945680c2ef83', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'pIEoqlgt59', '2025-02-23 10:09:12', '2025-07-12 05:15:36', NULL),
(40, NULL, 'Devin', 'Kuphal', 'camylle12@example.com', 'zena.mertz_6945680c30974', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'yt8ETbv0Nt', '2025-07-26 16:29:16', '2025-03-17 15:06:43', NULL),
(41, NULL, 'Eva', 'Ward', 'tessie.schoen@example.com', 'abdul.kiehn_6945680c32a10', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '6mz46YAwwX', '2025-12-01 15:20:55', '2025-06-01 21:50:49', NULL),
(42, NULL, 'Norval', 'Schowalter', 'reinhold.effertz@example.com', 'schmeler.carol_6945680c34991', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'hQxHLz3KcP', '2025-11-18 05:09:52', '2025-04-21 02:18:13', NULL),
(43, NULL, 'Estevan', 'Kuhic', 'xhodkiewicz@example.com', 'jimmy.heidenreich_6945680c368eb', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'JsvksTTzrZ', '2025-03-24 23:41:54', '2025-07-18 07:48:32', NULL),
(44, NULL, 'Natalie', 'Rempel', 'powlowski.russell@example.net', 'opal.mante_6945680c3871f', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '0P9SzUEHhT', '2025-07-29 06:31:15', '2025-05-08 21:40:15', NULL),
(45, NULL, 'Madaline', 'Morissette', 'hillary.robel@example.com', 'dmckenzie_6945680c3a530', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'xLrMaqM5c6', '2025-01-16 22:16:57', '2025-12-17 07:15:43', NULL),
(46, NULL, 'Adaline', 'Kuphal', 'maxine53@example.com', 'tprice_6945680c3c389', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'e1C2bFCrHa', '2025-09-25 04:22:19', '2025-06-15 22:40:31', NULL),
(47, NULL, 'Terrell', 'McDermott', 'gussie14@example.org', 'lmitchell_6945680c3de84', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'XTQwy0vvQ9', '2025-01-27 17:47:58', '2025-10-31 10:37:51', NULL),
(48, NULL, 'Anabel', 'Bednar', 'mueller.elise@example.org', 'ynikolaus_6945680c3fa49', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'uOV5t7h3qV', '2025-04-06 00:51:09', '2024-12-25 00:22:21', NULL),
(49, NULL, 'Annie', 'Grant', 'waelchi.nia@example.org', 'ukuhn_6945680c415e6', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'ypnxmLcPXe', '2025-03-14 05:51:33', '2025-12-10 17:56:10', NULL),
(50, NULL, 'Carlee', 'Herzog', 'rosalinda89@example.net', 'hammes.jermain_6945680c43187', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '5ueB9raS9p', '2025-08-16 22:47:33', '2025-10-09 05:05:26', NULL),
(51, NULL, 'Elisabeth', 'Heller', 'mccullough.bruce@example.com', 'ana.jast_6945680c44e35', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, '5OIk54WFN0', '2025-11-27 06:48:13', '2025-05-11 05:05:48', NULL),
(52, NULL, 'Kristina', 'Daugherty', 'giles.wisoky@example.net', 'lcarter_6945680c46f21', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'FR8ez2bq53', '2025-07-01 11:37:58', '2025-05-06 02:02:42', NULL),
(53, NULL, 'Eulah', 'Hettinger', 'ross.stracke@example.com', 'theo.purdy_6945680c48924', NULL, '2025-12-19 14:58:20', '$2y$10$WHgDpmplLrLr5PpDl/f4zeojixBBwoO7Qe/k/yp5BiUbLqSoAJkmi', NULL, NULL, NULL, 'hWmJ9Pbguu', '2025-06-03 11:56:58', '2025-08-18 09:39:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `default_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_logs_action_by_foreign` (`action_by`);

--
-- Indexes for table `affectations`
--
ALTER TABLE `affectations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affectations_personnel_id_foreign` (`personnel_id`),
  ADD KEY `affectations_unite_id_foreign` (`unite_id`),
  ADD KEY `affectations_created_by_foreign` (`created_by`);

--
-- Indexes for table `app_logs`
--
ALTER TABLE `app_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_attached_type_attached_id_index` (`attached_type`,`attached_id`),
  ADD KEY `attachments_uploaded_by_foreign` (`uploaded_by`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `conjoints`
--
ALTER TABLE `conjoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conjoints_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `contrats`
--
ALTER TABLE `contrats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contrats_personnel_id_foreign` (`personnel_id`),
  ADD KEY `contrats_fichier_contrat_id_foreign` (`fichier_contrat_id`);

--
-- Indexes for table `detachments`
--
ALTER TABLE `detachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detachments_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `diplomes`
--
ALTER TABLE `diplomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diplomes_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_personnel_id_foreign` (`personnel_id`),
  ADD KEY `documents_uploaded_by_foreign` (`uploaded_by`);

--
-- Indexes for table `enfants`
--
ALTER TABLE `enfants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enfants_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `opex`
--
ALTER TABLE `opex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opex_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_matricule_unique` (`matricule`),
  ADD KEY `personnel_created_by_foreign` (`created_by`),
  ADD KEY `personnel_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `personnel_unite`
--
ALTER TABLE `personnel_unite`
  ADD PRIMARY KEY (`personnel_id`,`unite_id`,`date_debut`),
  ADD KEY `personnel_unite_unite_id_foreign` (`unite_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `post_meta`
--
ALTER TABLE `post_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_meta_post_id_meta_key_index` (`post_id`,`meta_key`);

--
-- Indexes for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_aggregates_bucket_period_type_aggregate_key_hash_unique` (`bucket`,`period`,`type`,`aggregate`,`key_hash`),
  ADD KEY `pulse_aggregates_period_bucket_index` (`period`,`bucket`),
  ADD KEY `pulse_aggregates_type_index` (`type`),
  ADD KEY `pulse_aggregates_period_type_aggregate_bucket_index` (`period`,`type`,`aggregate`,`bucket`);

--
-- Indexes for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pulse_entries_timestamp_index` (`timestamp`),
  ADD KEY `pulse_entries_type_index` (`type`),
  ADD KEY `pulse_entries_key_hash_index` (`key_hash`),
  ADD KEY `pulse_entries_timestamp_type_key_hash_value_index` (`timestamp`,`type`,`key_hash`,`value`);

--
-- Indexes for table `pulse_values`
--
ALTER TABLE `pulse_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_values_type_key_hash_unique` (`type`,`key_hash`),
  ADD KEY `pulse_values_timestamp_index` (`timestamp`),
  ADD KEY `pulse_values_type_index` (`type`);

--
-- Indexes for table `punitions`
--
ALTER TABLE `punitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `punitions_personnel_id_foreign` (`personnel_id`),
  ADD KEY `punitions_document_id_foreign` (`document_id`);

--
-- Indexes for table `recompenses`
--
ALTER TABLE `recompenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recompenses_personnel_id_foreign` (`personnel_id`),
  ADD KEY `recompenses_document_id_foreign` (`document_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `requests_request_uuid_unique` (`request_uuid`),
  ADD KEY `requests_requester_user_id_foreign` (`requester_user_id`),
  ADD KEY `requests_requester_personnel_id_foreign` (`requester_personnel_id`),
  ADD KEY `requests_approver_user_id_foreign` (`approver_user_id`),
  ADD KEY `requests_approver_personnel_id_foreign` (`approver_personnel_id`);

--
-- Indexes for table `request_approvals`
--
ALTER TABLE `request_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_approvals_request_id_foreign` (`request_id`),
  ADD KEY `request_approvals_approver_user_id_foreign` (`approver_user_id`),
  ADD KEY `request_approvals_approver_personnel_id_foreign` (`approver_personnel_id`);

--
-- Indexes for table `request_attachments`
--
ALTER TABLE `request_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_attachments_request_id_foreign` (`request_id`),
  ADD KEY `request_attachments_attachment_id_foreign` (`attachment_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sante_personnel`
--
ALTER TABLE `sante_personnel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sante_personnel_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_option_name_unique` (`option_name`);

--
-- Indexes for table `situations_administratives`
--
ALTER TABLE `situations_administratives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `situations_administratives_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stages_personnel_id_foreign` (`personnel_id`);

--
-- Indexes for table `system_jobs`
--
ALTER TABLE `system_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_jobs_job_uuid_unique` (`job_uuid`);

--
-- Indexes for table `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taxonomies_name_unique` (`name`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD PRIMARY KEY (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `telescope_monitoring`
--
ALTER TABLE `telescope_monitoring`
  ADD PRIMARY KEY (`tag`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `terms_slug_unique` (`slug`),
  ADD KEY `terms_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `term_relationships`
--
ALTER TABLE `term_relationships`
  ADD PRIMARY KEY (`post_id`,`term_id`),
  ADD KEY `term_relationships_term_id_foreign` (`term_id`);

--
-- Indexes for table `unites`
--
ALTER TABLE `unites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unites_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_matricule_unique` (`matricule`),
  ADD KEY `users_avatar_id_foreign` (`avatar_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `affectations`
--
ALTER TABLE `affectations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_logs`
--
ALTER TABLE `app_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conjoints`
--
ALTER TABLE `conjoints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contrats`
--
ALTER TABLE `contrats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detachments`
--
ALTER TABLE `detachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diplomes`
--
ALTER TABLE `diplomes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enfants`
--
ALTER TABLE `enfants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opex`
--
ALTER TABLE `opex`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `post_meta`
--
ALTER TABLE `post_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pulse_values`
--
ALTER TABLE `pulse_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `punitions`
--
ALTER TABLE `punitions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recompenses`
--
ALTER TABLE `recompenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_approvals`
--
ALTER TABLE `request_approvals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_attachments`
--
ALTER TABLE `request_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sante_personnel`
--
ALTER TABLE `sante_personnel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `situations_administratives`
--
ALTER TABLE `situations_administratives`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_jobs`
--
ALTER TABLE `system_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unites`
--
ALTER TABLE `unites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD CONSTRAINT `action_logs_action_by_foreign` FOREIGN KEY (`action_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `affectations`
--
ALTER TABLE `affectations`
  ADD CONSTRAINT `affectations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `affectations_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `affectations_unite_id_foreign` FOREIGN KEY (`unite_id`) REFERENCES `unites` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `conjoints`
--
ALTER TABLE `conjoints`
  ADD CONSTRAINT `conjoints_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contrats`
--
ALTER TABLE `contrats`
  ADD CONSTRAINT `contrats_fichier_contrat_id_foreign` FOREIGN KEY (`fichier_contrat_id`) REFERENCES `documents` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contrats_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detachments`
--
ALTER TABLE `detachments`
  ADD CONSTRAINT `detachments_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `diplomes`
--
ALTER TABLE `diplomes`
  ADD CONSTRAINT `diplomes_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `documents_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `enfants`
--
ALTER TABLE `enfants`
  ADD CONSTRAINT `enfants_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `opex`
--
ALTER TABLE `opex`
  ADD CONSTRAINT `opex_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `personnel_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `personnel_unite`
--
ALTER TABLE `personnel_unite`
  ADD CONSTRAINT `personnel_unite_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personnel_unite_unite_id_foreign` FOREIGN KEY (`unite_id`) REFERENCES `unites` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_meta`
--
ALTER TABLE `post_meta`
  ADD CONSTRAINT `post_meta_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `punitions`
--
ALTER TABLE `punitions`
  ADD CONSTRAINT `punitions_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `punitions_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recompenses`
--
ALTER TABLE `recompenses`
  ADD CONSTRAINT `recompenses_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `recompenses_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_approver_personnel_id_foreign` FOREIGN KEY (`approver_personnel_id`) REFERENCES `personnel` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `requests_approver_user_id_foreign` FOREIGN KEY (`approver_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `requests_requester_personnel_id_foreign` FOREIGN KEY (`requester_personnel_id`) REFERENCES `personnel` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `requests_requester_user_id_foreign` FOREIGN KEY (`requester_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_approvals`
--
ALTER TABLE `request_approvals`
  ADD CONSTRAINT `request_approvals_approver_personnel_id_foreign` FOREIGN KEY (`approver_personnel_id`) REFERENCES `personnel` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `request_approvals_approver_user_id_foreign` FOREIGN KEY (`approver_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `request_approvals_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_attachments`
--
ALTER TABLE `request_attachments`
  ADD CONSTRAINT `request_attachments_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_attachments_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sante_personnel`
--
ALTER TABLE `sante_personnel`
  ADD CONSTRAINT `sante_personnel_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `situations_administratives`
--
ALTER TABLE `situations_administratives`
  ADD CONSTRAINT `situations_administratives_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Constraints for table `terms`
--
ALTER TABLE `terms`
  ADD CONSTRAINT `terms_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `term_relationships`
--
ALTER TABLE `term_relationships`
  ADD CONSTRAINT `term_relationships_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `term_relationships_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unites`
--
ALTER TABLE `unites`
  ADD CONSTRAINT `unites_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `unites` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_avatar_id_foreign` FOREIGN KEY (`avatar_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD CONSTRAINT `user_meta_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
