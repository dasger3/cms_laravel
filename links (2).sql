-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Гру 21 2020 р., 18:51
-- Версія сервера: 10.4.11-MariaDB
-- Версія PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `links`
--

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'People', 0, '2020-10-14 09:36:48', '2020-10-14 09:36:48'),
(2, 'Actors', 1, '2020-10-14 09:37:01', '2020-10-14 09:37:01'),
(3, 'Doctors', 1, '2020-10-14 09:37:11', '2020-10-14 09:37:11'),
(4, 'Professor', 1, '2020-10-14 09:37:23', '2020-10-14 09:37:23'),
(5, 'Cardiologist', 3, '2020-10-14 09:49:55', '2020-10-14 09:49:55'),
(6, 'Surgeon', 3, '2020-10-14 09:51:00', '2020-10-14 09:51:00'),
(7, 'Movie', 2, '2020-10-14 09:51:31', '2020-10-14 09:51:31'),
(8, 'Teacher', 4, '2020-10-14 09:51:57', '2020-10-14 09:51:57'),
(9, 'Film', 2, '2020-10-15 08:43:39', '2020-10-15 08:43:39');

-- --------------------------------------------------------

--
-- Структура таблиці `category_page`
--

CREATE TABLE `category_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `alias_of_category` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `category_page`
--

INSERT INTO `category_page` (`id`, `page_id`, `category_id`, `alias_of_category`, `created_at`, `updated_at`) VALUES
(5, 5, 5, NULL, NULL, NULL),
(6, 2, 8, NULL, NULL, NULL),
(13, 4, 5, NULL, NULL, NULL),
(14, 4, 6, NULL, NULL, NULL),
(22, 1, 8, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(55, '2020_10_13_202208_create_category_page_table', 1),
(56, '2014_10_12_000000_create_users_table', 2),
(57, '2014_10_12_100000_create_password_resets_table', 2),
(58, '2019_08_19_000000_create_failed_jobs_table', 2),
(59, '2020_09_28_110734_create_roles_table', 2),
(60, '2020_09_28_110958_create_role_user_table', 2),
(61, '2020_09_28_174854_create_pages_table', 2),
(62, '2020_10_13_200845_create_categories_table', 2),
(63, '2020_10_14_123401_create_category_page_table', 3),
(64, '2020_11_23_210003_add_alias_of_to_category_page_table', 4),
(65, '2020_11_23_212743_add_alias_of_to_category_page_table', 5),
(66, '2020_11_23_213508_create_category_page_table', 6),
(67, '2020_11_24_142454_add_categorry_id_pages_table', 7);

-- --------------------------------------------------------

--
-- Структура таблиці `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorry_id` int(10) UNSIGNED DEFAULT NULL,
  `alias_of` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `pages`
--

INSERT INTO `pages` (`id`, `path`, `title`, `main_content`, `author`, `created_at`, `updated_at`, `categorry_id`, `alias_of`) VALUES
(1, 'oleksiivert', 'Oleksii Vert', '~~command_img(1.jpg, )~~ Teacher, lecturer at Kyiv University ~~command_page_link(https://www.youtube.com/?hl=uk&gl=UA, link,)~~', 'Stepan Tereml', '2020-10-14 22:58:48', '2020-12-02 18:02:24', 8, NULL),
(2, 'agatamuchev', 'Agata Muchev', 'Teacher, lecturer at Kyiv Medical University', 'Timur Sov', '2020-10-14 10:18:51', '2020-10-14 14:24:20', 8, NULL),
(4, 'ivanrem', 'Ivan Rem', 'Cardiologist, lecturer at Kyiv Medical University', 'Alex Timov', '2020-10-14 20:04:29', '2020-11-24 11:46:14', 6, NULL),
(5, 'dashatit', 'Dasha Tit', 'Cardiologist, lecturer at Kyiv Medical University..', 'Andrii Kyrulin', '2020-10-15 08:44:57', '2020-10-15 08:44:57', 5, NULL),
(7, 'dashatit_copy', '', '', '', NULL, NULL, 6, 5);

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-14 09:35:55', '2020-10-14 09:35:55'),
(2, 'author', '2020-10-14 09:35:55', '2020-10-14 09:35:55'),
(3, 'user', '2020-10-14 09:35:55', '2020-10-14 09:35:55');

-- --------------------------------------------------------

--
-- Структура таблиці `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `users`
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
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$7hdDgcCtOrkFoCFpQTL17uIdx7XVbEkiIRerfgqHhQJtXWwAu9M26', '8Gs5nFelnYvnklbMvqXnazy2dQzHRa10sWL7hAuj82AZVpQBbh1O5BQtHWlg', '2020-10-14 09:35:55', '2020-10-14 09:35:55'),
(2, 'Author User', 'author@author.com', NULL, '$2y$10$rdfZhFYqTooAzCFMndyrEOxw0KzVKLnBEUsCwU9EWMvDcy9zrqXx.', NULL, '2020-10-14 09:35:55', '2020-10-14 09:35:55'),
(3, 'Generic User', 'user@user.com', NULL, '$2y$10$50chwvq3MxVDtOVwuOozO.ee1Dgy1MCb4zId2PqdvsPK4F1BVczK2', NULL, '2020-10-14 09:35:55', '2020-10-14 09:35:55');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `category_page`
--
ALTER TABLE `category_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_page_page_id_foreign` (`page_id`),
  ADD KEY `category_page_category_id_foreign` (`category_id`),
  ADD KEY `category_page_alias_of_category_foreign` (`alias_of_category`);

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_categorry_id_foreign` (`categorry_id`),
  ADD KEY `pages_alias_of_foreign` (`alias_of`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Індекси таблиці `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `category_page`
--
ALTER TABLE `category_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблиці `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `category_page`
--
ALTER TABLE `category_page`
  ADD CONSTRAINT `category_page_alias_of_category_foreign` FOREIGN KEY (`alias_of_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_page_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_page_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_alias_of_foreign` FOREIGN KEY (`alias_of`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_categorry_id_foreign` FOREIGN KEY (`categorry_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
