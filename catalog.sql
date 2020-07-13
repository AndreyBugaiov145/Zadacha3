-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 13 2020 г., 21:09
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `catalog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Колбасы', '2020-07-11 05:22:27', NULL),
(2, 'Фрукты', '2020-07-10 05:23:14', NULL),
(3, 'Овощи', '2020-07-10 05:23:14', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_09_211955_create_categories_table', 2),
(4, '2020_07_09_212130_create_products_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(80) CHARACTER SET utf8 NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `short_description`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Молочная', '300', 'фвыфвфыLorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, explicab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 1, '2020-07-10 05:24:09', '2020-07-10 05:14:00'),
(2, 'Пармезано', '250', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, explicab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 1, NULL, NULL),
(3, 'Докторская', '150', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, explicab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 1, '2020-07-10 05:27:30', NULL),
(6, 'Апельсыины', '40', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, explicab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 2, '2020-07-10 05:29:34', NULL),
(7, 'Абрикосы', '30', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, explicab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 2, '2020-07-10 05:30:13', NULL),
(8, 'Сливы', '35', 'обновлено Lorem ipsum dolor sit amet, consectetur adipisicing', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 2, '2020-07-10 05:30:13', '2020-07-10 05:14:35'),
(9, 'Картошка', '20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, explicab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 3, '2020-07-10 05:31:17', NULL),
(11, 'Помидоры', '40', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, explicab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 3, '2020-07-10 05:32:14', NULL),
(12, 'Буряк', '20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, explicab', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque reprehenderit sint ipsa sit facilis eos amet. Iure veniam alias, consequuntur corporis magni autem quisquam cupiditate velit, vero labore nulla aspernatur rerum! In est eos numquam ducimus, odit nam vel. Ipsam iusto a facilis sunt dolorum maxime, ea voluptas esse ullam pariatur maiores quos repellat necessitatibus temporibus corrupti sapiente minus beatae, vero et vitae. Aut, perspiciatis nostrum harum hic vitae quaerat, in', 3, '2020-07-10 05:32:14', NULL),
(13, 'Колбаса', '250', 'в ыа выавы авы вы авыа ыва', 'ыва глыпвагдпвыгшдпагвыл нвып овыаглып вглда вылаи выгл выаоывил оывиагл в ыв\r\nавы аы ва\r\n вы \r\nвыа ыва выавыавыавы', 1, '2020-07-10 06:17:38', '2020-07-10 06:18:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Андрей', 'andrey@gmail.com', '2020-07-10 11:40:29', '123456789', NULL, NULL, NULL),
(2, 'andrey', 'bugaiov.andrey@gmail.com', NULL, '$2y$10$fkqUy27EMHw.xR9n6NCWfOwGdbsSD6QL0XlbcBw8TT4/emgtOG6F6', NULL, '2020-07-10 08:43:19', '2020-07-10 08:43:19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
