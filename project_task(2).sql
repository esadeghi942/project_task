-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2021 at 02:08 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4190fec9f922ff932abe5fe62a46828ac88b22f2995fa7716a3d968a69f1ee35622325a413d5f64f', 1, 1, 'UserToken', '[]', 0, '2021-05-29 03:08:04', '2021-05-29 03:08:04', '2021-05-30 07:38:02'),
('d1bdd8d93e4f55797d0840d108b9b76b28681cc309811b260fcb17a73911c617435cf6ffb894748d', 1, 1, 'userToken', '[]', 0, '2021-05-29 03:09:13', '2021-05-29 03:09:13', '2021-05-30 07:39:13'),
('03272459c3904cef6c2a63bfa8829eff5ef52fe8fcccb90fade1c76f261ec2cd7da2508a3ecb7795', 1, 1, 'userToken', '[]', 0, '2021-05-31 02:30:47', '2021-05-31 02:30:47', '2021-06-01 07:00:45'),
('eb4c17033acc022524dc50cf2df11032b0d6ce7143c1059e1fa2b4d30835a5086dbbb706eb3cb75a', 1, 1, 'userToken', '[]', 0, '2021-05-31 09:08:15', '2021-05-31 09:08:15', '2021-06-01 13:38:14'),
('0abdc07d825c1f0b5de218eb4bf17eb516f7ae50f5fb18919e756ef7850e2199665210a7c68b114b', 1, 1, 'userToken', '[]', 0, '2021-05-31 09:15:38', '2021-05-31 09:15:38', '2021-06-01 13:45:38'),
('4d0fd2e356d4ee0fdd8860d459b2dee7093b3bc7d1ca18613d18106b995c2f49c3a44c323217a29d', 1, 1, 'userToken', '[]', 0, '2021-05-31 09:44:36', '2021-05-31 09:44:36', '2021-06-07 14:14:36'),
('3a75d6a49caefa8f0bd7b2696ff2e9ad1188f914f728e4a31e3e3859d40d1c0fd2da87741f114ac4', 1, 1, 'userToken', '[]', 0, '2021-05-31 09:50:56', '2021-05-31 09:50:56', '2021-06-07 14:20:56'),
('a0cfcdf72373fb8aba8cde3d9ebb4f1f5b10830aa9371001eb3878b667494cb4b6e13dbc06af1702', 1, 1, 'userToken', '[]', 0, '2021-05-31 10:40:29', '2021-05-31 10:40:29', '2021-06-01 15:10:28'),
('c7fd99b6a47e564284ade9a732db244ba1081892a019c7e08eccdf26b10ca50fb15d9bac81f60da0', 1, 1, 'userToken', '[]', 0, '2021-05-31 10:43:01', '2021-05-31 10:43:01', '2021-06-01 15:13:00'),
('3b50b4d33336a95a1737154fea050e31f79a865dd28d32aaeb704ada433812a4e4039efeb807c103', 1, 1, 'userToken', '[]', 0, '2021-05-31 10:43:14', '2021-05-31 10:43:14', '2021-06-01 15:13:14'),
('03274f04709792aa291a6286921bd52f6a71f201c7961117e60524417b61f27a5138dd5d9ae21e3a', 1, 1, 'userToken', '[]', 0, '2021-05-31 11:07:04', '2021-05-31 11:07:04', '2021-12-01 15:37:04'),
('7f2bfbad20f573ac1d5b23a0a9054d2c9c1c28c7591159c34f95a759232ed1e8dce53b2a50649d23', 1, 1, 'userToken', '[]', 0, '2021-05-31 11:25:15', '2021-05-31 11:25:15', '2021-06-07 15:55:15'),
('a930950cdf41dbc78aef85e509e84d53297670a8cfd4fbcef62f821dcf4d8241f5a0b2235f4739a6', 1, 1, 'userToken', '[]', 0, '2021-05-31 23:56:42', '2021-05-31 23:56:42', '2021-06-08 04:26:42'),
('4f38769f49a372ceedc66e9200dd545cd539d23ded45833606c47a2368d3c097861086f0e715ffd5', 1, 1, 'userToken', '[]', 0, '2021-06-01 00:04:19', '2021-06-01 00:04:19', '2021-06-08 04:34:19'),
('6944ecfdbb98120a80e11897922fa0ebc0b461cfce44303edad1c3c13c082f42c4c54ffb5b97a6d8', 1, 1, 'userToken', '[]', 0, '2021-06-01 00:06:50', '2021-06-01 00:06:50', '2021-06-08 04:36:50'),
('900b2781fae037731be86782447b9b65bc87e136004c53739367875ba2c315f63dd2daf69cc87a38', 1, 1, 'userToken', '[]', 0, '2021-06-01 03:14:34', '2021-06-01 03:14:34', '2021-06-08 07:44:34'),
('3465005fa937cfa6353ddde8a442e9222022d80e68c8a3b9e3a09e5a2763d5e35c921ba2db442505', 1, 1, 'userToken', '[]', 0, '2021-06-01 04:03:09', '2021-06-01 04:03:09', '2021-06-08 08:33:09'),
('64214fbbf08b03d13a5847d4fbcf9b7804c3f8f079cc3c3340f00310c0f6e0237e055a7254dfec0b', 1, 1, 'userToken', '[]', 0, '2021-06-01 04:06:03', '2021-06-01 04:06:03', '2021-06-08 08:36:03'),
('caf4cff6540a61bbd41808e084e5c7158a819cf9f70abb794cf4f067951884a21e3e924048c09cb2', 1, 1, 'userToken', '[]', 0, '2021-06-01 05:14:51', '2021-06-01 05:14:51', '2021-06-08 09:44:51'),
('586be59ab0a4a79d3d0c5f6acc867f997fba809ae42b0d436046ca1ec253842a53c4ab6539e5da7a', 1, 1, 'userToken', '[]', 0, '2021-06-01 05:15:14', '2021-06-01 05:15:14', '2021-06-08 09:45:14'),
('11ee01932aeb9b50b0fb6f03bea7b72ca556eec560e01d774716bbc34e99c5485ec27de698f5674b', 1, 1, 'userToken', '[]', 0, '2021-06-01 05:21:08', '2021-06-01 05:21:08', '2021-06-08 09:51:08'),
('e2374eb14c09d4a95c382805a6224b4025b7af0ade73af7f68ad68a2eb7bc8ba73b15c564cc2f409', 1, 1, 'userToken', '[]', 0, '2021-06-01 05:39:56', '2021-06-01 05:39:56', '2021-06-08 10:09:56'),
('e5dd6dad1be76ce807f66a9ac1d33a3b1b9f5b6fdd024df3b09e76ddec04144b647d00d5665ab508', 1, 1, 'userToken', '[]', 0, '2021-06-01 05:40:12', '2021-06-01 05:40:12', '2021-06-08 10:10:12'),
('ea502659e12e6c7fac347a3bbc7ce952ecf0f9a14248e9b0bb88aae78ff24a79c9b5f28cbfa6f0b9', 2, 1, 'UserToken', '[]', 0, '2021-06-01 05:45:06', '2021-06-01 05:45:06', '2021-12-01 10:15:06'),
('ef86f079389d6215de384524d2660011ef036a1463b3a64f634bb40320101a9e8d7b92f9308c5753', 1, 1, 'userToken', '[]', 0, '2021-06-04 00:44:39', '2021-06-04 00:44:39', '2021-12-04 05:14:39'),
('14c1a996f512ecd44a79542247e4feb5e7db5672ffb9a030e3ff63fb1130492e0896e91fb995ae13', 1, 1, 'userToken', '[]', 0, '2021-06-04 00:44:51', '2021-06-04 00:44:51', '2021-12-04 05:14:51'),
('40d9466d3335a1064f43140720f957a979c080d9ab1e4e78d103c06d795dd5e684cc586f0654ae13', 1, 1, 'userToken', '[]', 0, '2021-06-04 00:45:24', '2021-06-04 00:45:24', '2021-12-04 05:15:24'),
('9cfa083739674d2c9604227a8d642f7f99eb2ae9fa78c502c7eb071dc8ebc7898358c62526d72fd7', 2, 1, 'userToken', '[]', 0, '2021-06-04 00:46:24', '2021-06-04 00:46:24', '2021-12-04 05:16:23'),
('e4157d40b7d2fc56d52f90e37b1b18a29ef1d7d81394dc986caaa43acd82e323a92fbbbc90644069', 2, 1, 'userToken', '[]', 0, '2021-06-04 02:50:51', '2021-06-04 02:50:51', '2021-12-04 07:20:51'),
('ae2bc97d3f5b174adab3259c609c9f8f13c820107a8c1d3b52538a4a9ea713ee0906fac9269be6db', 2, 1, 'userToken', '[]', 0, '2021-06-04 02:54:33', '2021-06-04 02:54:33', '2021-12-04 07:24:33'),
('f04dd2c7ec63b1405a840552a5632adffd9638e94a07a75148b54d49a78bd740ae01561e0dcc1c0a', 2, 1, 'userToken', '[]', 0, '2021-06-04 03:08:49', '2021-06-04 03:08:49', '2021-12-04 07:38:48'),
('db5c8a1d42a525570d97db1494090a1b56c7f8cadfd5c22b19ccaa9d1f2f8259fd56c533bab88873', 2, 1, 'userToken', '[]', 0, '2021-06-04 03:15:55', '2021-06-04 03:15:55', '2021-12-04 07:45:55'),
('2f0db61a816166194c159182548b9aea9876e700a8cd6416231d9ac52cf0fb7b563e3fb88afbe343', 2, 1, 'userToken', '[]', 0, '2021-06-04 03:16:07', '2021-06-04 03:16:07', '2021-12-04 07:46:07'),
('dc8a69a576556e0c509ed39064727a65ccdff835c2fd45084258e980cfb3613f5b2048daf752be75', 2, 1, 'userToken', '[]', 0, '2021-06-05 03:15:55', '2021-06-05 03:15:55', '2021-12-05 07:45:54'),
('3f37965edfb81502a2e4b730ea2238e060d7ab5f6eb923bb66a30fd953108a55fe892fad0db99ed3', 3, 1, 'userToken', '[]', 0, '2021-06-05 22:15:57', '2021-06-05 22:15:57', '2021-12-06 02:45:55'),
('d426f04f5211d536ba266035c2f6c5cbc3302d7fb0479efbe21bc73b472ea0fef2b7cc8fd22c58f6', 4, 1, 'userToken', '[]', 0, '2021-06-05 22:16:46', '2021-06-05 22:16:46', '2021-12-06 02:46:46'),
('2e2fc431f092c6cc335416552eed33ef7805988d19f1dfc9b9edf2ac73d1e4c4759d31ca0c5256c3', 5, 1, 'userToken', '[]', 0, '2021-06-05 22:17:48', '2021-06-05 22:17:48', '2021-12-06 02:47:48'),
('b09790baf1c93aea9c93cba8849620c1aff398755e6e07d6d561f0760fe4825069c25e5017899476', 6, 1, 'userToken', '[]', 0, '2021-06-05 22:18:50', '2021-06-05 22:18:50', '2021-12-06 02:48:50'),
('18139d88ed4711ad5455d38d1f1921ed47fe710b35c634206fdb3686eca675524a11ccc198a21a58', 7, 1, 'userToken', '[]', 0, '2021-06-05 22:26:05', '2021-06-05 22:26:05', '2021-12-06 02:56:04'),
('2d477215ce4803be1be2f136c9e75022f49f2a550ceae1592a8a0ef29aa3cfa0cdd7bbd5934e16fd', 8, 1, 'userToken', '[]', 0, '2021-06-05 22:26:58', '2021-06-05 22:26:58', '2021-12-06 02:56:57'),
('96f0b14c3de4f3fd835ddba942e6843442864e1e8efd7c2ebbec0761b5e52ff6a471e8d71a81caea', 9, 1, 'userToken', '[]', 0, '2021-06-05 22:27:30', '2021-06-05 22:27:30', '2021-12-06 02:57:29'),
('db2f18a1cf29e10fb0c94eaa0c4ddc7a7a478774eb6056cb14684cb2366c57ffe44ed5c3386bed67', 10, 1, 'userToken', '[]', 0, '2021-06-05 22:27:51', '2021-06-05 22:27:51', '2021-12-06 02:57:51'),
('acac606cc074d0fae90999abc4295387fc8cc7cf25d786be4e8f83d6ec2fa9f4b37e065dc593568f', 1, 1, 'userToken', '[]', 0, '2021-06-06 03:45:05', '2021-06-06 03:45:05', '2021-12-06 08:15:05'),
('4b735b7291c5e43bff32ca21eb5059688288ff90fdbe088deb10390d34376d6f44ddb55b7523c66e', 1, 1, 'userToken', '[]', 0, '2021-06-06 03:45:43', '2021-06-06 03:45:43', '2021-12-06 08:15:43'),
('6188f7503dc206d08999a3ee9a0a1a5d63d43fcdf774d7ef7023c62b7633c3ab297a144856a05af8', 1, 1, 'userToken', '[]', 0, '2021-06-06 03:46:09', '2021-06-06 03:46:09', '2021-12-06 08:16:09'),
('bab91d4f3148b02d6f98238dfd7ddcdb906dd2d4925a03a2d72cdf727a883600b3e0abfb65a27013', 1, 1, 'userToken', '[]', 0, '2021-06-06 04:07:22', '2021-06-06 04:07:22', '2021-12-06 08:37:21'),
('33271ecccf34777740505147c40143b3188ee90a68bad975f1f3633c02eeb283f14ae58de4de0882', 1, 1, 'userToken', '[]', 0, '2021-06-06 04:19:24', '2021-06-06 04:19:24', '2021-12-06 08:49:24'),
('4b5d239e152a63f50de942165dc8b6b27d6fff15419e4af8f0715638c619386cb3fcf528d5e94957', 1, 1, 'userToken', '[]', 0, '2021-06-06 04:21:32', '2021-06-06 04:21:32', '2021-12-06 08:51:32'),
('b6a6883406688465a084cc18064d7ab5e9384741e573faaf90f5ea9e7cd22e0dac5e07b2a92361dd', 1, 1, 'userToken', '[]', 0, '2021-06-06 04:21:58', '2021-06-06 04:21:58', '2021-12-06 08:51:58'),
('e6d87e86812c189b205253d346d8cad132b263e14c4ae81db9685b9fb180df0f7fa5c41554733315', 1, 1, 'userToken', '[]', 0, '2021-06-06 04:22:45', '2021-06-06 04:22:45', '2021-12-06 08:52:45'),
('422905ef8c70aa7392ede4378755cc8ec3ec3a6ca9c2ecacd3d48b6a90960d7100c654e7b2e32b6b', 1, 1, 'userToken', '[]', 0, '2021-06-06 04:23:27', '2021-06-06 04:23:27', '2021-12-06 08:53:27'),
('319f4ef26da45797c0e3924919cefa604d868e2f667c4a9917bd62a61e117f0facc28c59335e2674', 1, 1, 'userToken', '[]', 0, '2021-06-06 06:11:58', '2021-06-06 06:11:58', '2021-12-06 10:41:58'),
('fecdbbdfbcab554e2a1f7be977af4b4fe7e8494e2f3c4d4058751ed0c75b1966e6d44a8c19675e93', 1, 1, 'userToken', '[]', 0, '2021-06-06 06:13:51', '2021-06-06 06:13:51', '2021-12-06 10:43:51'),
('4e8f1a143bc4e7a10b52fdfe86d3ec8544cc72c71bb5fc92d0179b5a03f73281715d789ef61ea821', 1, 1, 'userToken', '[]', 0, '2021-06-06 06:24:07', '2021-06-06 06:24:07', '2021-12-06 10:54:06'),
('b4ad1831e8f98da26e48c5200ccc51f1ff0340a7af742aa61a1a8a788f72160004e12e2f4c1422ab', 2, 1, 'userToken', '[]', 0, '2021-06-14 23:30:19', '2021-06-14 23:30:19', '2021-12-15 04:00:18'),
('aa8bc12b52ba85d573fa0bd146aacc9e0c27f1a3c941e658b1fbaaccefcd2a4af0efab6b34eefe9e', 2, 1, 'userToken', '[]', 0, '2021-06-16 06:23:10', '2021-06-16 06:23:10', '2021-12-16 10:53:10'),
('e68838b346b6cdf1fb5a94c058328ed865134b544f7c34dfd04cea850b17fbb01634572a21c9a625', 2, 1, 'userToken', '[]', 0, '2021-07-02 08:17:53', '2021-07-02 08:17:53', '2022-01-02 12:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'M7x9NNVu7HJCWIw877JR3W6hoKYPjGLhtSl94sAe', NULL, 'http://localhost', 1, 0, 0, '2021-05-27 23:31:00', '2021-05-27 23:31:00'),
(2, NULL, 'Laravel Password Grant Client', 'v4WLIIxpNe31KCFBUzv1Ze07MEGlzqzn7NfjEDdx', 'users', 'http://localhost', 0, 1, 0, '2021-05-27 23:31:00', '2021-05-27 23:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-27 23:31:00', '2021-05-27 23:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`) VALUES
(1, 'test'),
(3, 'iran'),
(4, 'Kerman');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `time` time NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `name`, `date`, `time`, `description`) VALUES
(1, 1, 'start', '1400/3/10', '08:05:06', ''),
(2, 1, 'trtt', '1355/5/5', '08:05:06', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'elham', 'e.sadeghi.942@gmail.com', NULL, '$2y$10$g.k3mup8X5v8wGFBH3Cone2t19bQkj3oLjlZunNLwGyWcVabjGtLS', NULL, '2021-05-29 03:08:02', '2021-05-29 03:08:02'),
(2, 'vahid', 'e.arbab.942@gmail.com', NULL, '$2y$10$BRnh/TnXS/74A48fT50kLuFpfLvdGkFNKbm6a/jAn.fD01XrKMSgW', NULL, '2021-06-01 05:45:06', '2021-06-01 05:45:06'),
(3, 'Albina Parker', 'kkovacek@example.com', '2021-06-05 22:15:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LxS9AadB0t', '2021-06-05 22:15:56', '2021-06-05 22:15:56'),
(4, 'Addison Koch', 'huels.ian@example.com', '2021-06-05 22:16:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H9zVTYMAho', '2021-06-05 22:16:46', '2021-06-05 22:16:46'),
(5, 'Prof. Nestor McLaughlin PhD', 'diana40@example.com', '2021-06-05 22:17:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'svUwq0CwHk', '2021-06-05 22:17:48', '2021-06-05 22:17:48'),
(6, 'Nicola Klocko V', 'ortiz.freida@example.net', '2021-06-05 22:18:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1nwEvG1vPB', '2021-06-05 22:18:50', '2021-06-05 22:18:50'),
(7, 'Prof. Jasmin Schaefer', 'noemie03@example.org', '2021-06-05 22:26:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'biWXln6CvL', '2021-06-05 22:26:04', '2021-06-05 22:26:04'),
(8, 'Prof. Cole McLaughlin I', 'ihartmann@example.net', '2021-06-05 22:26:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZNLLxID8F7', '2021-06-05 22:26:57', '2021-06-05 22:26:57'),
(9, 'Sidney Reilly', 'unader@example.net', '2021-06-05 22:27:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mpe9JCdttp', '2021-06-05 22:27:29', '2021-06-05 22:27:29'),
(10, 'Alison Schowalter PhD', 'watsica.calista@example.org', '2021-06-05 22:27:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WtgWTEhOEN', '2021-06-05 22:27:51', '2021-06-05 22:27:51'),
(11, 'Marguerite Treutel', 'khettinger@example.net', '2021-06-06 01:17:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VUT16Cl9Q7', '2021-06-06 01:17:20', '2021-06-06 01:17:20'),
(12, 'Antonio Conroy PhD', 'jewel.flatley@example.net', '2021-06-06 01:17:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3AF1n4baDm', '2021-06-06 01:17:45', '2021-06-06 01:17:45'),
(13, 'Mrs. Earline Dach', 'xmacejkovic@example.net', '2021-06-06 01:20:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CJfQKqzLxQ', '2021-06-06 01:20:04', '2021-06-06 01:20:04'),
(14, 'Meggie Wolf', 'dibbert.miles@example.com', '2021-06-06 01:21:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CmlV6muFBw', '2021-06-06 01:21:15', '2021-06-06 01:21:15'),
(15, 'Mr. Alden Hudson DVM', 'donny99@example.com', '2021-06-06 02:59:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jMNjN5XWyW', '2021-06-06 02:59:08', '2021-06-06 02:59:08'),
(16, 'Mekaeil', 'm@gmail.com', NULL, '123456', NULL, '2021-06-06 04:22:45', '2021-06-06 04:22:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
