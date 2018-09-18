-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2018 a las 22:15:15
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kevinherrera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Bodas', 'bodas', '2018-04-07 00:53:38', '2018-04-07 00:53:38'),
(2, NULL, 2, 'Cumpleaños', 'cumpleanos', '2018-04-07 01:31:11', '2018-04-07 01:31:11'),
(3, NULL, 1, 'Eventos', 'eventos', '2018-04-07 01:52:59', '2018-04-07 01:52:59'),
(4, NULL, 5, 'PORTAFOLIO', 'portafolio', '2018-04-07 02:26:07', '2018-04-07 02:26:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `email`, `text`, `name`, `created_at`, `updated_at`) VALUES
(1, 'asdsad', 'asdsad', '', '2018-04-11 07:27:32', '2018-04-11 07:27:32'),
(2, '<input type=\"text\" name=\"\">', '<input type=\"text\" name=\"\">', '', '2018-04-11 07:28:59', '2018-04-11 07:28:59'),
(3, '<input type=\"text\" name=\"\">', '<input type=\"text\" name=\"\">', '', '2018-04-11 07:30:39', '2018-04-11 07:30:39'),
(4, 'juanes@gmail.com', 'Hola, me contancto contigo unicamente, para hacer una prueba de este formulario ,verificanto y rectificando de que todo se encuentre en un estado optimo, doy gloria a Dios y las gracias por su fideldiad.  El me ama tanto que envio a su unico hijo para que el que crea en el no se pierda, mas tenga vida eterna.', 'Juan sebastian', '2018-04-11 07:41:56', '2018-04-11 07:41:56'),
(5, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2018-04-11 08:35:44', '2018-04-11 08:35:44'),
(6, 'juanes@gmail.com', 'Zbzbnzn', 'papu@gmail.com', '2018-04-13 09:47:00', '2018-04-13 09:47:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-04-06 22:22:39', '2018-04-06 22:22:39'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-04-06 22:22:39', '2018-04-06 22:22:39'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-04-06 22:22:39', '2018-04-06 22:22:39'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-04-06 22:22:39', '2018-04-06 22:22:39'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-06 22:22:39', '2018-04-06 22:22:39'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-06 22:22:39', '2018-04-06 22:22:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-06 22:22:41', '2018-04-06 22:22:41'),
(2, 'Site', '2018-04-11 07:49:38', '2018-04-11 07:49:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 2, '2018-04-06 22:22:42', '2018-04-17 10:02:06', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-04-06 22:22:42', '2018-04-06 22:22:42', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-04-06 22:22:42', '2018-04-06 22:22:42', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2018-04-06 22:22:42', '2018-04-17 10:02:07', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-04-06 22:22:42', '2018-04-06 22:22:42', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-04-06 22:22:42', '2018-04-06 22:22:42', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2018-04-06 22:22:42', '2018-04-17 10:02:07', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-04-06 22:22:42', '2018-04-06 22:22:42', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-04-06 22:22:42', '2018-04-17 10:02:07', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-04-06 22:22:42', '2018-04-17 10:02:07', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-04-06 22:22:42', '2018-04-17 10:02:07', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2018-04-06 22:22:42', '2018-04-17 10:02:07', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-04-06 22:22:47', '2018-04-17 10:02:07', 'voyager.hooks', NULL),
(14, 1, 'Site', '/', '_self', 'voyager-world', '#800080', NULL, 1, '2018-04-11 07:53:28', '2018-04-17 10:02:06', NULL, ''),
(15, 2, '¿Quien soy?', '#download', '_self', NULL, '#000000', NULL, 1, '2018-04-17 00:06:33', '2018-04-17 00:30:28', NULL, ''),
(16, 2, 'Servicios', '#features', '_self', NULL, '#000000', NULL, 2, '2018-04-17 00:07:03', '2018-04-17 00:41:41', NULL, ''),
(18, 2, 'Blog', '/blog', '_self', NULL, '#000000', NULL, 6, '2018-04-17 00:07:42', '2018-04-17 00:42:50', NULL, ''),
(19, 2, 'Contacto', '#contact', '_self', NULL, '#000000', NULL, 4, '2018-04-17 00:08:17', '2018-04-17 00:42:55', NULL, ''),
(20, 2, 'Portafolio', '#portafolio', '_self', NULL, '#000000', NULL, 3, '2018-04-17 00:42:34', '2018-04-17 10:23:10', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2018_04_05_150213_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bodas', 'bo', '<figure class=\"image align-center\"><img title=\"zapatos esposa\" src=\"http://localhost:8000/storage/pages/April2018/7.jpg\" alt=\"1\" width=\"500\" height=\"500\" />\r\n<figcaption>shoes</figcaption>\r\n</figure>\r\n<p style=\"text-align: center;\"><span style=\"color: #ff9900;\"><strong><span style=\"font-family: Muli, Helvetica, Arial, sans-serif; font-size: 18px; text-align: center;\">Una boda o casamiento es una ceremonia religiosa o civil, mediante la cual se celebra el comienzo del matrimonio. Generalmente una boda es un rito que formaliza la uni&oacute;n entre dos personas ante una autoridad externa que regula y reglamenta el procedimiento, el cu&aacute;l genera compromisos contractuales u obligaciones ...</span></strong></span></p>\r\n<p>&nbsp;</p>', 'pages/April2018/WkCjBzMfFbsbeU1ZUokb.jpg', 'bodas', 'sadsdsd', '213123', 'ACTIVE', '2018-04-07 00:58:28', '2018-04-07 02:17:38'),
(2, 1, 'Cumpleaños', 'cumpleaños', '<p>margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;margin: 5px;<img src=\"https://media3.giphy.com/media/11StaZ9Lj74oCY/200w_s.gif?cid=540216295ac7e4bd3932636a2ebcca02\" width=\"572\" height=\"369\" /></p>', 'pages/April2018/sF59uYqwcznJJ5MQmFGG.jpg', 'cumpleanos', 'cumpleaños', 'cumpleñaos', 'ACTIVE', '2018-04-07 02:21:34', '2018-04-07 02:21:34'),
(3, 1, 'Matrimonios', 'matrimonios', '<p>aqui iran las gotos de los matrimonios</p>\r\n<table style=\"height: 277px; width: 1037px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 224px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 26px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 125px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 125px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 333px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 224px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 26px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 125px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 125px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 333px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 224px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 26px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 125px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 125px;\">&nbsp;</td>\r\n<td style=\"width: 333px;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 224px;\">&nbsp;</td>\r\n<td style=\"width: 26px;\">&nbsp;</td>\r\n<td style=\"width: 125px;\">&nbsp;</td>\r\n<td style=\"width: 125px;\">&nbsp;</td>\r\n<td style=\"width: 333px;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 224px;\">&nbsp;</td>\r\n<td style=\"width: 26px;\">&nbsp;</td>\r\n<td style=\"width: 125px;\">&nbsp;</td>\r\n<td style=\"width: 125px;\">&nbsp;</td>\r\n<td style=\"width: 333px;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 224px;\">&nbsp;</td>\r\n<td style=\"width: 26px;\">&nbsp;</td>\r\n<td style=\"width: 125px;\">&nbsp;</td>\r\n<td style=\"width: 125px;\">&nbsp;</td>\r\n<td style=\"width: 333px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'pages/April2018/EQkgivOxUJQkbsO1ns54.jpg', 'matrimonios', 'esto es para las fotos de los matrimonios', 'asd', 'ACTIVE', '2018-04-07 03:24:19', '2018-04-07 03:24:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-04-06 22:22:42', '2018-04-06 22:22:42', NULL),
(2, 'browse_database', NULL, '2018-04-06 22:22:42', '2018-04-06 22:22:42', NULL),
(3, 'browse_media', NULL, '2018-04-06 22:22:42', '2018-04-06 22:22:42', NULL),
(4, 'browse_compass', NULL, '2018-04-06 22:22:42', '2018-04-06 22:22:42', NULL),
(5, 'browse_menus', 'menus', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(6, 'read_menus', 'menus', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(7, 'edit_menus', 'menus', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(8, 'add_menus', 'menus', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(9, 'delete_menus', 'menus', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(10, 'browse_pages', 'pages', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(11, 'read_pages', 'pages', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(12, 'edit_pages', 'pages', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(13, 'add_pages', 'pages', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(14, 'delete_pages', 'pages', '2018-04-06 22:22:43', '2018-04-06 22:22:43', NULL),
(15, 'browse_roles', 'roles', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(16, 'read_roles', 'roles', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(17, 'edit_roles', 'roles', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(18, 'add_roles', 'roles', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(19, 'delete_roles', 'roles', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(20, 'browse_users', 'users', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(21, 'read_users', 'users', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(22, 'edit_users', 'users', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(23, 'add_users', 'users', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(24, 'delete_users', 'users', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(25, 'browse_posts', 'posts', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(26, 'read_posts', 'posts', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(27, 'edit_posts', 'posts', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(28, 'add_posts', 'posts', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(29, 'delete_posts', 'posts', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(30, 'browse_categories', 'categories', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(31, 'read_categories', 'categories', '2018-04-06 22:22:44', '2018-04-06 22:22:44', NULL),
(32, 'edit_categories', 'categories', '2018-04-06 22:22:45', '2018-04-06 22:22:45', NULL),
(33, 'add_categories', 'categories', '2018-04-06 22:22:45', '2018-04-06 22:22:45', NULL),
(34, 'delete_categories', 'categories', '2018-04-06 22:22:45', '2018-04-06 22:22:45', NULL),
(35, 'browse_settings', 'settings', '2018-04-06 22:22:45', '2018-04-06 22:22:45', NULL),
(36, 'read_settings', 'settings', '2018-04-06 22:22:45', '2018-04-06 22:22:45', NULL),
(37, 'edit_settings', 'settings', '2018-04-06 22:22:45', '2018-04-06 22:22:45', NULL),
(38, 'add_settings', 'settings', '2018-04-06 22:22:45', '2018-04-06 22:22:45', NULL),
(39, 'delete_settings', 'settings', '2018-04-06 22:22:45', '2018-04-06 22:22:45', NULL),
(40, 'browse_hooks', NULL, '2018-04-06 22:22:47', '2018-04-06 22:22:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Bodas', NULL, NULL, '<p><iframe title=\"Marcos Brunet-Me deleito en ti\" src=\"https://www.youtube.com/embed/uEKyMKuac_8?wmode=opaque&amp;theme=dark\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>', 'posts/April2018/BE0Ymgus0eamMZgGNzg6.jpg', 'bodas', 'Descripción del contenido de la página. Muchas veces esta información es la que muestran algunos buscadores en el resumen de nuestro sitio que aparece en las búsquedas. http://www.conexion-seo.com.mx/posts/diccionario.php', NULL, 'PUBLISHED', 0, '2018-04-07 00:36:52', '2018-04-07 03:09:55'),
(2, 1, 1, 'Boda de Mariana', 'asd', 'boda-mariana', '<p>.list-group {border-radius: 0;}</p>\r\n<p>.list-group .list-group-item {background-color: transparent;overflow: hidden;border: 0;border-radius: 0;padding: 0 16px;}</p>\r\n<p>.list-group .list-group-item .row-picture,</p>\r\n<p>.list-group .list-group-item .row-action-primary {float: left;display: inline-block;padding-right: 16px;padding-top: 8px;}</p>\r\n<p>.list-group .list-group-item .row-picture img,</p>\r\n<p>.list-group .list-group-item .row-action-primary img,</p>\r\n<p>.list-group .list-group-item .row-picture i,</p>\r\n<p>.list-group .list-group-item .row-action-primary i,</p>\r\n<p>.list-group .list-group-item .row-picture label,</p>\r\n<p>.list-group .list-group-item .row-action-primary label {display: block;width: 56px;height: 56px;}</p>\r\n<p>.list-group .list-group-item .row-picture img,</p>\r\n<p>.list-group .list-group-item .row-action-primary img {background: rgba(0, 0, 0, 0.1);padding: 1px;}</p>\r\n<p>.list-group .list-group-item .row-picture img.circle,</p>\r\n<p>.list-group .list-group-item .row-action-primary img.circle {border-radius: 100%;}</p>\r\n<p>.list-group .list-group-item .row-picture i,</p>\r\n<p>.list-group .list-group-item .row-action-primary i {background: rgba(0, 0, 0, 0.25);border-radius: 100%;text-align: center;line-height: 56px;font-size: 20px;color: white;}</p>\r\n<p>.list-group .list-group-item .row-picture label,</p>\r\n<p>.list-group .list-group-item .row-action-primary label {margin-left: 7px;margin-right: -7px;margin-top: 5px;margin-bottom: -5px;}</p>\r\n<p>.list-group .list-group-item .row-content {display: inline-block;width: calc(100% - 92px);min-height: 66px;}</p>\r\n<p>.list-group .list-group-item .row-content .action-secondary {position: absolute;right: 16px;top: 16px;}</p>\r\n<p>.list-group .list-group-item .row-content .action-secondary i {font-size: 20px;color: rgba(0, 0, 0, 0.25);cursor: pointer;}</p>\r\n<p>.list-group .list-group-item .row-content .action-secondary ~ * {max-width: calc(100% - 30px);}</p>\r\n<p>.list-group .list-group-item .row-content .least-content {position: absolute;right: 16px;top: 0px;color: rgba(0, 0, 0, 0.54);font-size: 14px;}</p>\r\n<p>.list-group .list-group-item .list-group-item-heading {color: rgba(0, 0, 0, 0.77);font-size: 20px;line-height: 29px;}</p>\r\n<p>.list-group .list-group-separator {clear: both;overflow: hidden;margin-top: 10px;margin-bottom: 10px;}</p>\r\n<p>.list-group .list-group-separator:before {content: \"\";width: calc(100% - 90px);border-bottom: 1px solid rgba(0, 0, 0, 0.1);float: right;}</p>\r\n<p>&nbsp;</p>\r\n<p>.bg-profile{background-color: #3498DB !important;height: 150px;z-index: 1;}</p>\r\n<p>.bg-bottom{height: 100px;margin-left: 30px;}</p>\r\n<p>.img-profile{display: inline-block !important;background-color: #fff;border-radius: 6px;margin-top: -50%;padding: 1px;vertical-align: bottom;border: 2px solid #fff;-moz-box-sizing: border-box;box-sizing: border-box;color: #fff;z-index: 2;}</p>\r\n<p>.row-float{margin-top: -40px;}</p>\r\n<p>.explore a {color: green; font-size: 13px;font-weight: 600}</p>\r\n<p>.twitter a {color:#4099FF}</p>\r\n<p>.img-box{box-shadow: 0 3px 6px rgba(0,0,0,.16),0 3px 6px rgba(0,0,0,.23);border-radius: 2px;border: 0;}</p>\r\n<p>&nbsp;</p>', 'posts/April2018/R9yzR0Ho4qVAbtCvmEOd.jpg', 'boda-de-mariana', 'Descripción del contenido de la página. Muchas veces esta información es la que muestran algunos buscadores en el resumen de nuestro sitio que aparece en las búsquedas.\r\nhttp://www.conexion-seo.com.mx/posts/diccionario.php', 'asdsad', 'PUBLISHED', 0, '2018-04-07 02:55:15', '2018-04-07 02:58:14'),
(3, 1, 1, 'MATRIMONIO DE PATRICIA', NULL, 'matrimonios', '<p>aqui iran las gotos de los matrimonios</p>\r\n<table style=\"height: 388px; width: 1033px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\"><img style=\"font-size: 14px;\" src=\"https://media1.giphy.com/media/33Iu8LpxoHZ3mjlK0D/200w_s.gif?cid=540216295ac7f34a4e6b765a2ec9a073\" /></td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n<td style=\"width: 200px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong><span style=\"color: #00ccff;\">NOTE: Please note that a dummy user is&nbsp;<span style=\"box-sizing: border-box;\">only</span>&nbsp;created if there are no current users in your database.</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; text-align: center;\"><strong><span style=\"color: #00ccff;\">If you did not go with the dummy user, you may wish to assign admin privileges to an existing user. This can easily be done by running this command:</span></strong></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; text-align: center;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; text-align: center;\"><strong><span style=\"color: #00ccff;\"><img title=\"asd\" src=\"http://localhost:8000/storage/posts/April2018/Recurso 13.png\" alt=\"dassd\" width=\"365\" height=\"185\" /></span></strong></p>', 'posts/April2018/hXYoHADOasg3G2OoHImh.jpg', 'matrimonio-de-patricia', 'asdsadsdasdsadsad', 'sad', 'PUBLISHED', 0, '2018-04-07 03:25:37', '2018-04-18 00:11:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-06 22:22:42', '2018-04-06 22:22:42'),
(2, 'user', 'Normal User', '2018-04-06 22:22:42', '2018-04-06 22:22:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'KEVIN HERRERA', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'El futuro pertenece a aquellos que creen en la belleza de sus sueños.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/April2018/WwKxcuVW1xv0PjOfyhP9.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/April2018/26WRH7oGcvqoxkemnatI.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Administrador', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Administrador de pagina web.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'card-profile.title', 'Titulo de carta perfil', 'Kevin Daniel Herrera', NULL, 'text', 6, 'Card Profile'),
(12, 'card-profile.description', 'Descripcion de la carta', 'Fotografo y Productor.', NULL, 'text_area', 7, 'Card Profile'),
(13, 'card-profile.background', 'Background de la carta', 'settings/April2018/DOw8KzE7gEkMpUB7qi2i.jpg', NULL, 'image', 8, 'Card Profile'),
(14, 'card-profile.logo', 'Logo de la carta', 'settings/April2018/oZi9E6gftFz2jb2q2oOc.jpg', NULL, 'image', 9, 'Card Profile'),
(15, 'services.1-name', 'Nombre del servicio 1', 'Fotografia de Bodas', NULL, 'text', 10, 'Services'),
(16, 'services.2-name', 'Nombre del servicio 2', 'Fotografia Social', NULL, 'text', 12, 'Services'),
(17, 'services.3-name', 'Nombre del servicio 3', 'Producción de Videos', NULL, 'text', 14, 'Services'),
(18, 'services.1-description', 'Descripción del servicio 1', 'Aqui va la descripcion de fotografia de bodas!', NULL, 'text', 11, 'Services'),
(19, 'services.2-description', 'Descripción del servicio 2', 'Aqui va la descripcion de Fotografia social!', NULL, 'text', 13, 'Services'),
(20, 'services.3-description', 'Descripción del servicio 3', 'Aqui va la descripcion de la producción de videos!', NULL, 'text', 15, 'Services'),
(23, 'services.4-name', 'Nombre del servicio 4', 'Producción de Eventos', NULL, 'text', 16, 'Services'),
(24, 'services.4-description', 'Descripción del servicio 4', 'Aqui va la descripcion de la producción de eventos!', NULL, 'text', 17, 'Services'),
(25, 'parallax.1-section', 'Imagen de sección 1', 'settings/April2018/e1VovKzCBB4fG5AUGQsx.jpg', NULL, 'image', 18, 'Parallax'),
(26, 'parallax.2-section', 'Imagen de sección 2', 'settings/April2018/FU05UfBTfOfJMoZBLzFl.jpg', NULL, 'image', 19, 'Parallax'),
(27, 'parallax.3-section', 'Imagen de sección 3', 'settings/April2018/IdZTyWhFfZJczuvx3NOl.jpg', NULL, 'image', 20, 'Parallax'),
(28, 'blog.background-header', 'Imagen de cabecera', 'settings/April2018/w9kAUWmUQjcLq1gyXLzz.jpg', NULL, 'image', 21, 'Blog'),
(29, 'blog.background-footer', 'Imagen de pie', 'settings/April2018/rvaQzbdPr0aJkg97uNYa.jpg', NULL, 'image', 22, 'Blog'),
(30, 'blog.description', 'Descripción del blog', 'Bueno, el caso es que como te decía al inicio del post, un blog es realmente una página web. Pero la diferencia con el resto de páginas web “normales” es que se centra en mostrar publicaciones (llamadas posts o artículos) como si fuera un diario personal.\r\n\r\nY por supuesto, no todas las páginas web son blogs.\r\n\r\nHay muchas páginas web que NO tienen un apartado de blog (si no quieren): tiendas online, sitios de información turística, páginas de empresas que muestran quiénes son y cómo contactar con ellos, etc.', NULL, 'text_area', 23, 'Blog'),
(32, 'portafolio.movies', 'Insertar videos', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HLnnNEqyesU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>\r\n\r\n <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n\r\n <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n \r\n  <img src=\"https://lh4.googleusercontent.com/oPzuoXuSMVfZvthbgZY8uFEhQi1Op0H9pBR666xwqOJ3gpY1n9g4w5_XI7gHUYi7rf9vWdcG-JyaGZg=w1440-h773-rw\">\r\n  \r\n   <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n\r\n <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n \r\n  <img src=\"https://lh4.googleusercontent.com/oPzuoXuSMVfZvthbgZY8uFEhQi1Op0H9pBR666xwqOJ3gpY1n9g4w5_XI7gHUYi7rf9vWdcG-JyaGZg=w1440-h773-rw\">\r\n  \r\n   <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n\r\n <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n \r\n  <img src=\"https://lh4.googleusercontent.com/oPzuoXuSMVfZvthbgZY8uFEhQi1Op0H9pBR666xwqOJ3gpY1n9g4w5_XI7gHUYi7rf9vWdcG-JyaGZg=w1440-h773-rw\">\r\n  \r\n   <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n\r\n <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n \r\n  <img src=\"https://lh4.googleusercontent.com/oPzuoXuSMVfZvthbgZY8uFEhQi1Op0H9pBR666xwqOJ3gpY1n9g4w5_XI7gHUYi7rf9vWdcG-JyaGZg=w1440-h773-rw\">\r\n  \r\n   <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n\r\n <img src=\"https://lh5.googleusercontent.com/Sqr_rYOoek1ziowt-g1aaijiT0LaDTojay-3RVKwzl4BAHoegAopDnT6TmpzCnx0VDpIAJ7bUSJnt84qkuI1=w1440-h773-rw\">\r\n \r\n  <img src=\"https://lh4.googleusercontent.com/oPzuoXuSMVfZvthbgZY8uFEhQi1Op0H9pBR666xwqOJ3gpY1n9g4w5_XI7gHUYi7rf9vWdcG-JyaGZg=w1440-h773-rw\">', NULL, 'code_editor', 24, 'Portafolio'),
(33, 'site.header', 'Imagen de cabecera', 'settings/April2018/ocRbdELmHXdFQxZMNoV1.jpg', NULL, 'image', 25, 'Site'),
(35, 'portafolio.description', 'Descripcion del portafolio', 'portafolio es una especie de cartera de mano que se utiliza para llevar papeles, documentos.', NULL, 'text_area', 26, 'Portafolio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', '$2y$10$AJObvXEd0p9c2vH33.61vurf6dRrhHT/i8E1bSAww48nU2y/./BEm', 'PMaqnIwhEre9pY8fVeI8LwQseQuxCisUdoSQF7m3LeITi5eIarIQvfv6LfyI', '2018-04-06 22:24:52', '2018-04-06 22:24:52');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
