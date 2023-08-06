-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 06 2023 г., 17:34
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(12, 'Marketing', 'marketing', '2023-08-05 13:55:11', '2023-08-05 13:55:11'),
(13, 'Make Money', 'make-money', '2023-08-05 13:55:21', '2023-08-05 13:55:21');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2023_07_28_172245_create_categories_table', 1),
(14, '2023_07_28_172304_create_tags_table', 1),
(15, '2023_07_28_172312_create_posts_table', 1),
(16, '2023_07_28_172414_create_post_tag_table', 1),
(17, '2023_08_02_133755_alter_table_users_add_isadmin', 2),
(18, '2023_08_06_143927_alter_table_posts_add_title_index', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `category_id`, `views`, `thumbnail`, `created_at`, `updated_at`) VALUES
(10, 'You can learn how to make money with your blog and videos', 'you-can-learn-how-to-make-money-with-your-blog-and-videos', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p>Прежде всего, базовый вектор развития напрямую зависит от распределения внутренних резервов и ресурсов. Есть над чем задуматься: акционеры крупнейших компаний обнародованы. Ясность нашей позиции очевидна: семантический разбор внешних противодействий является качественно новой ступенью новых предложений. Приятно, граждане, наблюдать, как непосредственные участники технического прогресса объективно рассмотрены соответствующими инстанциями. Наше дело не так однозначно, как может показаться: сплочённость команды профессионалов предоставляет широкие возможности для экономической целесообразности принимаемых решений.</p><p>&nbsp;</p><p>Есть над чем задуматься: элементы политического процесса и по сей день остаются уделом либералов, которые жаждут быть превращены в посмешище, хотя само их существование приносит несомненную пользу обществу. Однозначно, элементы политического процесса неоднозначны и будут разоблачены. Равным образом, выбранный нами инновационный путь предполагает независимые способы реализации существующих финансовых и административных условий. С учётом сложившейся международной обстановки, постоянный количественный рост и сфера нашей активности влечет за собой процесс внедрения и модернизации приоретизации разума над эмоциями. Для современного мира семантический разбор внешних противодействий требует от нас анализа благоприятных перспектив.</p><p>&nbsp;</p><p>Повседневная практика показывает, что внедрение современных методик предполагает независимые способы реализации позиций, занимаемых участниками в отношении поставленных задач. Мы вынуждены отталкиваться от того, что социально-экономическое развитие прекрасно подходит для реализации первоочередных требований. С другой стороны, социально-экономическое развитие обеспечивает широкому кругу (специалистов) участие в формировании кластеризации усилий. Но акционеры крупнейших компаний неоднозначны и будут заблокированы в рамках своих собственных рациональных ограничений. В целом, конечно, существующая теория способствует повышению качества новых предложений.</p>', 13, 8, 'images/2023-08-06/8KXCrncPCoctTvbUPdkjrsc9FGliqtnfGu63njcP.jpg', '2023-08-06 08:04:58', '2023-08-06 11:19:06'),
(11, 'The way to reach hundreds of thousands of customers is through the SEO', 'the-way-to-reach-hundreds-of-thousands-of-customers-is-through-the-seo', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p>Противоположная точка зрения подразумевает, что диаграммы связей могут быть подвергнуты целой серии независимых исследований. Безусловно, перспективное планирование однозначно фиксирует необходимость поэтапного и последовательного развития общества. Есть над чем задуматься: базовые сценарии поведения пользователей представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть указаны как претенденты на роль ключевых факторов. Учитывая ключевые сценарии поведения, начало повседневной работы по формированию позиции способствует подготовке и реализации новых предложений.</p><p>&nbsp;</p><p>Разнообразный и богатый опыт говорит нам, что реализация намеченных плановых заданий, в своём классическом представлении, допускает внедрение первоочередных требований. Учитывая ключевые сценарии поведения, курс на социально-ориентированный национальный проект, в своём классическом представлении, допускает внедрение модели развития. Предварительные выводы неутешительны: убеждённость некоторых оппонентов способствует повышению качества стандартных подходов. Противоположная точка зрения подразумевает, что непосредственные участники технического прогресса представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть превращены в посмешище, хотя само их существование приносит несомненную пользу обществу. Имеется спорная точка зрения, гласящая примерно следующее: независимые государства и по сей день остаются уделом либералов, которые жаждут быть указаны как претенденты на роль ключевых факторов. Лишь реплицированные с зарубежных источников, современные исследования своевременно верифицированы.</p><p>&nbsp;</p><p>Ясность нашей позиции очевидна: граница обучения кадров, в своём классическом представлении, допускает внедрение как самодостаточных, так и внешне зависимых концептуальных решений. Приятно, граждане, наблюдать, как стремящиеся вытеснить традиционное производство, нанотехнологии представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть подвергнуты целой серии независимых исследований. Приятно, граждане, наблюдать, как многие известные личности могут быть подвергнуты целой серии независимых исследований. А также реплицированные с зарубежных источников, современные исследования, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут ассоциативно распределены по отраслям. Мы вынуждены отталкиваться от того, что дальнейшее развитие различных форм деятельности не даёт нам иного выбора, кроме определения переосмысления внешнеэкономических политик.</p>', 12, 8, 'images/2023-08-06/65FZtPdnTxBzfWokAMWw5GF5VxN61ZexZhaGKmp8.jpg', '2023-08-06 08:06:36', '2023-08-06 12:15:02'),
(12, 'Ways to reach the world through mobile phones', 'ways-to-reach-the-world-through-mobile-phones', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p>В целом, конечно, высокое качество позиционных исследований способствует подготовке и реализации экспериментов, поражающих по своей масштабности и грандиозности. Есть над чем задуматься: стремящиеся вытеснить традиционное производство, нанотехнологии подвергнуты целой серии независимых исследований. Идейные соображения высшего порядка, а также постоянный количественный рост и сфера нашей активности позволяет выполнить важные задания по разработке распределения внутренних резервов и ресурсов. С другой стороны, базовый вектор развития требует от нас анализа поставленных обществом задач. Задача организации, в особенности же реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании первоочередных требований.</p><p>&nbsp;</p><p>Как принято считать, предприниматели в сети интернет будут в равной степени предоставлены сами себе. Разнообразный и богатый опыт говорит нам, что выбранный нами инновационный путь выявляет срочную потребность модели развития. А также некоторые особенности внутренней политики подвергнуты целой серии независимых исследований. Значимость этих проблем настолько очевидна, что консультация с широким активом не даёт нам иного выбора, кроме определения приоретизации разума над эмоциями. В своём стремлении повысить качество жизни, они забывают, что экономическая повестка сегодняшнего дня прекрасно подходит для реализации укрепления моральных ценностей. Не следует, однако, забывать, что современная методология разработки способствует подготовке и реализации форм воздействия.</p><p>&nbsp;</p><p>Каждый из нас понимает очевидную вещь: убеждённость некоторых оппонентов предоставляет широкие возможности для соответствующих условий активизации. Идейные соображения высшего порядка, а также высококачественный прототип будущего проекта создаёт необходимость включения в производственный план целого ряда внеочередных мероприятий с учётом комплекса новых принципов формирования материально-технической и кадровой базы. Значимость этих проблем настолько очевидна, что консультация с широким активом создаёт предпосылки для прогресса профессионального сообщества.</p>', 13, 36, 'images/2023-08-06/UkRAMUNiT3JewyKU73oKdI6p1EbNLGIPeg03tafD.jpg', '2023-08-06 08:07:25', '2023-08-06 11:54:08');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`) VALUES
(8, 7, 10, '2023-08-06 08:04:58', '2023-08-06 08:04:58'),
(9, 8, 10, '2023-08-06 08:04:58', '2023-08-06 08:04:58'),
(10, 10, 10, '2023-08-06 08:04:58', '2023-08-06 08:04:58'),
(11, 7, 11, '2023-08-06 08:06:36', '2023-08-06 08:06:36'),
(12, 8, 11, '2023-08-06 08:06:36', '2023-08-06 08:06:36'),
(13, 7, 12, '2023-08-06 08:07:25', '2023-08-06 08:07:25');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'Marketing', 'marketing', '2023-08-05 13:56:00', '2023-08-05 13:56:00'),
(7, 'SEO', 'seo', '2023-08-05 13:56:03', '2023-08-05 13:56:03'),
(8, 'Digital Agency', 'digital-agency', '2023-08-05 13:56:18', '2023-08-05 13:56:18'),
(9, 'Blogging', 'blogging', '2023-08-05 13:56:25', '2023-08-05 13:56:25'),
(10, 'Video Tuts', 'video-tuts', '2023-08-05 13:56:35', '2023-08-05 13:56:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$WXQBNuuW0BpPOUVhSPG5ROGUPO1wQHEPTXtj20oCv45/3hm//TirK', NULL, '2023-08-03 07:36:25', '2023-08-03 07:36:25', 1),
(3, 'User', 'user@gmail.com', NULL, '$2y$10$GSRi5xwvml.7pbK2ePYc4ePO6N5c7hdwWPCE2aRM0vnnkhoa5URU2', NULL, '2023-08-03 07:39:17', '2023-08-03 07:39:17', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_title_index` (`title`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
