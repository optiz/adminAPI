-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2019 at 04:42 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_03_12_200004_create_todos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0334106681e3f3fd63fac6a2a178353fef05006d454ec7dfb51acd33ffda19dd50122bf43f733e7e', 2, 3, NULL, '[]', 0, '2019-03-13 00:17:18', '2019-03-13 00:17:18', '2020-03-13 08:17:18'),
('8a3b7070a1c5722a900d53bd1b39be3c9b1c7e51172ec05d855b685b0b025af0f96e2b72d2f834e8', 2, 3, NULL, '[]', 0, '2019-03-12 20:42:06', '2019-03-12 20:42:06', '2020-03-13 04:42:06'),
('c7d34afeb45ea986eca59bfb3727c38d3192281be4a57de1a227fa8eb9f85cfe5c86b31d241dcc83', 2, 3, NULL, '[]', 0, '2019-03-12 11:57:56', '2019-03-12 11:57:56', '2020-03-12 19:57:56'),
('d8d9981316efd21ccabca00db36d38c2821034c8f4c3e367f1c81510f58543bdc7545aec4bcdbd80', 2, 3, NULL, '[]', 0, '2019-03-12 12:24:51', '2019-03-12 12:24:51', '2020-03-12 20:24:51'),
('d912e88bd3a2c1db5742665a249e017d148fa0e4227a21d333d5b7d34e62e50dcc6d5c0437f537de', 2, 3, NULL, '[]', 0, '2019-03-12 12:27:43', '2019-03-12 12:27:43', '2020-03-12 20:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('2e68cb51caff7a13e3a8a560a678c4f9ab525d2bb7e4fec2420a22f88adea6969d05c6cd401be351', 2, 3, '[]', 1, '2019-03-13 08:27:12'),
('3ce37a63a8436f9d6a7657ec6cfef70453712bbb29be2cee6a72821be2ee7b10acbe56b6272c220c', 2, 3, '[]', 1, '2019-03-12 20:07:52'),
('4cbfbd4f041f3bf29c07c866a24a97a637471dc1c32421e0a1847bd650531a9ac0be3102dbd0fde8', 2, 3, '[]', 1, '2019-03-12 20:34:48'),
('8f2685b2d1211d9aa5e61be44c306395e3164d6540d351290451260ac8696269eb28d1da113f8149', 2, 3, '[]', 1, '2019-03-13 04:52:04'),
('955b132873d6b2a71bde6a91603c60a6db77d4faf889a6877f1c0a5048ad13cfe3d1f6bf8a976760', 2, 3, '[]', 1, '2019-03-12 20:37:41'),
('f6b51a9684717bd7852f3b1ab3b283500a3ef103d888385794f97b9c83dcf268bf6dffceee98c06d', 2, 3, '[]', 0, '2019-03-12 20:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laravel Personal Access Client', 'FAbRcDU5UZDVT6y4lzzRaqWhB3qnNvbIYhCXaE2g', 'http://localhost', 1, 0, 0, '2019-03-12 11:04:04', '2019-03-12 11:04:04'),
(2, 1, 'Laravel Password Grant Client', '96q9ij7W2pQpWvJgb9xuUsrIEn5NrtJaeKYgCOJD', 'http://localhost', 0, 1, 0, '2019-03-12 11:04:04', '2019-03-12 11:04:04'),
(3, 1, 'Shelamie Gamale', 'ob7IKwTVJPVf2xbrf1xRtXnfqE6o0YANPUrbiM4g', 'http://127.0.0.1:8001/callback', 0, 0, 0, '2019-03-12 11:37:21', '2019-03-12 11:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-03-12 11:04:04', '2019-03-12 11:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('95b082c1d1a626a411d8b459c93a0171bdefc16fbe530bbe29d4b00b75dd9ab1c9e45e2765b2eca4', 'd8d9981316efd21ccabca00db36d38c2821034c8f4c3e367f1c81510f58543bdc7545aec4bcdbd80', 0, '2020-03-12 20:24:52'),
('984262c35242ee50e33890d12d3433bdd8c418d57feefba0126f67a80fb67879f53de55ab0750602', '8a3b7070a1c5722a900d53bd1b39be3c9b1c7e51172ec05d855b685b0b025af0f96e2b72d2f834e8', 0, '2020-03-13 04:42:06'),
('9c6ee2be417d9401babc8d2ec0e0df82e436f3eaa8686527e566d4234aa7dde06715cc1648dd87fa', 'c7d34afeb45ea986eca59bfb3727c38d3192281be4a57de1a227fa8eb9f85cfe5c86b31d241dcc83', 0, '2020-03-12 19:57:56'),
('ca2f186805753d430bdff3b1318c54f30940c7ec9836746e380802d794a87fb046a57e5c9dc11215', '0334106681e3f3fd63fac6a2a178353fef05006d454ec7dfb51acd33ffda19dd50122bf43f733e7e', 0, '2020-03-13 08:17:18'),
('f19b314fdc14ee34b23cca3ec60a60138cd2b915bca4abde0fa150bd251c24035ccaff3eeecc6878', 'd912e88bd3a2c1db5742665a249e017d148fa0e4227a21d333d5b7d34e62e50dcc6d5c0437f537de', 0, '2020-03-12 20:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `todo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `todo`, `content`, `created_at`, `updated_at`) VALUES
(1, '2ejSHdvwZ2', 'OZhN85oL26UpyvGUnGapK7kWxYCrsgYV2NWFDGqD', '2019-03-12 12:18:58', '2019-03-12 12:18:58'),
(2, 'FK4gkvNVNA', '4xpBEu7NmtzdDtGgp4PZJQDrbMj7Jln5OaGHKXh7', '2019-03-12 12:18:58', '2019-03-12 12:18:58'),
(3, 'b2YaKJnXFj', 'I5jHW82wxj2JaN0EjTDXqnHrAb8TOSbo3JTht1Sm', '2019-03-12 12:18:58', '2019-03-12 12:18:58'),
(4, 'uETDAhcBjZ', '9xSuSzxQUN9fgMvEVk0ArHVHUEr6r1u2TvMNiFjO', '2019-03-12 12:18:59', '2019-03-12 12:18:59'),
(5, 'VTexgYF9KR', '3ml5I5glZCV5IpJilJkIeEntOCwEJOZoKIWWP8Qb', '2019-03-12 12:18:59', '2019-03-12 12:18:59'),
(6, 'c8OZiWbmmw', 'nLGoopu9TYbs76F8jw1fxwPJhCQXHhzf9ogTYve9', '2019-03-12 12:18:59', '2019-03-12 12:18:59'),
(7, 'EW5HjkncLH', 'hfQXofjBKC7mswbsCcbqaus7pnliQ5JDI8NFbyzc', '2019-03-12 12:18:59', '2019-03-12 12:18:59'),
(8, 'xzfCtiKJmB', 'gqOkddSv2yEpEwPkBzWhqQXQlz6NyjnBTUmjeOFM', '2019-03-12 12:18:59', '2019-03-12 12:18:59'),
(9, 'HnR7nmV0MF', 'Y2kgUGWWUfvtmZJZ3sDMBRETRKF5DEgKG0NtdyBw', '2019-03-12 12:18:59', '2019-03-12 12:18:59'),
(10, 'gyNEaqoZ2m', 'fk64I55PPTt8dGjBhhdq1mc9vxKHx4lvmxeeu2j9', '2019-03-12 12:18:59', '2019-03-12 12:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juris Daguplo', 'jurisdaguplo@gmail.com', NULL, '$2y$10$pUwr5zNuihlAPCobu6mc8uph.dcwPRWwyPQM/nLecL7M5GYuV1qYi', NULL, '2019-03-12 11:08:13', '2019-03-12 11:08:13'),
(2, 'Shielamie Gamale', 'shielamie@gmail.com', NULL, '$2y$10$c01KBLf5RaANsGwGYrdbkuXvKDLkLl6YMr5vJfSJciEyFhpSpyuGa', NULL, '2019-03-12 11:51:29', '2019-03-12 11:51:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
