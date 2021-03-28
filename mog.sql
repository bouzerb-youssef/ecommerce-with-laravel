-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 28 mars 2021 à 17:20
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mog`
--

-- --------------------------------------------------------

--
-- Structure de la table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-03-26 10:05:53', '2021-03-26 10:05:53'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-03-26 10:05:53', '2021-03-26 10:05:53');

-- --------------------------------------------------------

--
-- Structure de la table `categos`
--

CREATE TABLE `categos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categos`
--

INSERT INTO `categos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'alimentaire', '2021-03-26 10:10:45', '2021-03-26 10:10:45'),
(2, 'cosmitique', '2021-03-26 10:10:51', '2021-03-26 10:10:51');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'rtgrt', 'rtrt@trtr.com', 'rtgrtrtrt', '2021-03-27 15:17:23', '2021-03-27 15:17:23'),
(2, 'uiopuipo', 'ipi@rtutyu.com', 'tyuiyjytoijh oihgioeç no_eyç(yrh oiyeç_\'h à_yç_èed', '2021-03-27 15:19:30', '2021-03-27 15:19:30'),
(3, 'uituifhtrujh', 'ytiutyiu@ryer.com', 'tyiutyirtyrt', '2021-03-28 12:05:12', '2021-03-28 12:05:12'),
(4, 'srtgre', 'gtrfgrfg@gtrfg.com', 'rgreg thgtrb brtgrg rt', '2021-03-28 12:05:30', '2021-03-28 12:05:30');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(60, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(62, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(63, 9, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(64, 9, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(65, 9, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(66, 9, 'featured', 'number', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 7),
(67, 9, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 8),
(68, 9, 'catgo_id', 'text', 'Catgo Id', 1, 1, 1, 1, 1, 1, '{}', 9),
(69, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(70, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(71, 9, 'product_belongsto_catego_relationship', 'relationship', 'categos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Catego\",\"table\":\"categos\",\"type\":\"belongsTo\",\"column\":\"catgo_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":null}', 12),
(72, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 11, 'name', 'text', 'Name', 1, 1, 1, 0, 0, 1, '{}', 2),
(74, 11, 'email', 'text', 'Email', 1, 1, 1, 0, 0, 1, '{}', 3),
(75, 11, 'message', 'text_area', 'Message', 1, 1, 1, 0, 0, 1, '{}', 4),
(76, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(77, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(78, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 12, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(80, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(81, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-03-26 10:05:45', '2021-03-26 10:05:45'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-03-26 10:05:45', '2021-03-26 10:05:45'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-03-26 10:05:45', '2021-03-26 10:05:45'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-03-26 10:05:52', '2021-03-26 10:05:52'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-03-26 10:05:53', '2021-03-26 10:05:53'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-03-26 10:05:55', '2021-03-26 10:05:55'),
(7, 'categos', 'categos', 'Catego', 'Categos', NULL, 'App\\Models\\Catego', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-26 10:07:06', '2021-03-26 10:07:06'),
(9, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-26 10:09:51', '2021-03-26 10:09:51'),
(11, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-28 12:17:52', '2021-03-28 12:17:52'),
(12, 'newsletters', 'newsletters', 'Newsletter', 'Newsletters', NULL, 'App\\Models\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-28 12:18:41', '2021-03-28 12:18:41');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-26 10:05:46', '2021-03-26 10:05:46');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-03-26 10:05:47', '2021-03-26 10:05:47', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-03-26 10:05:47', '2021-03-26 10:05:47', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-03-26 10:05:52', '2021-03-26 10:05:52', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-03-26 10:05:54', '2021-03-26 10:05:54', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-03-26 10:05:56', '2021-03-26 10:05:56', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-03-26 10:05:59', '2021-03-26 10:05:59', 'voyager.hooks', NULL),
(15, 1, 'Categos', '', '_self', NULL, NULL, NULL, 15, '2021-03-26 10:07:07', '2021-03-26 10:07:07', 'voyager.categos.index', NULL),
(16, 1, 'Products', '', '_self', NULL, NULL, NULL, 16, '2021-03-26 10:09:52', '2021-03-26 10:09:52', 'voyager.products.index', NULL),
(17, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 17, '2021-03-28 12:17:53', '2021-03-28 12:17:53', 'voyager.contacts.index', NULL),
(18, 1, 'Newsletters', '', '_self', NULL, NULL, NULL, 18, '2021-03-28 12:18:41', '2021-03-28 12:18:41', 'voyager.newsletters.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2021_03_25_113303_create_orderproducts_table', 1),
(34, '2021_03_26_104810_add_catego_id_column_to_products', 3),
(35, '2014_10_12_000000_create_users_table', 4),
(36, '2014_10_12_100000_create_password_resets_table', 4),
(37, '2016_01_01_000000_add_voyager_user_fields', 4),
(38, '2016_01_01_000000_create_data_types_table', 4),
(39, '2016_01_01_000000_create_pages_table', 4),
(40, '2016_01_01_000000_create_posts_table', 4),
(41, '2016_02_15_204651_create_categories_table', 4),
(42, '2016_05_19_173453_create_menu_table', 4),
(43, '2016_10_21_190000_create_roles_table', 4),
(44, '2016_10_21_190000_create_settings_table', 4),
(45, '2016_11_30_135954_create_permission_table', 4),
(46, '2016_11_30_141208_create_permission_role_table', 4),
(47, '2016_12_26_201236_data_types__add__server_side', 4),
(48, '2017_01_13_000000_add_route_to_menu_items_table', 4),
(49, '2017_01_14_005015_create_translations_table', 4),
(50, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 4),
(51, '2017_03_06_000000_add_controller_to_data_types_table', 4),
(52, '2017_04_11_000000_alter_post_nullable_fields_table', 4),
(53, '2017_04_21_000000_add_order_to_data_rows_table', 4),
(54, '2017_07_05_210000_add_policyname_to_data_types_table', 4),
(55, '2017_08_05_000000_add_group_to_settings_table', 4),
(56, '2017_11_26_013050_add_user_role_relationship', 4),
(57, '2017_11_26_015000_create_user_roles_table', 4),
(58, '2018_03_11_000000_add_user_settings', 4),
(59, '2018_03_14_000000_add_details_to_data_types_table', 4),
(60, '2018_03_16_000000_make_settings_value_nullable', 4),
(61, '2019_08_19_000000_create_failed_jobs_table', 4),
(62, '2021_03_23_151925_create_products_table', 4),
(63, '2021_03_23_174213_create_carts_table', 4),
(64, '2021_03_25_111224_create_orders_table', 4),
(65, '2021_03_25_111929_create_categos_table', 4),
(66, '2021_03_26_093611_create_orderitems_table', 4),
(83, '2021_03_27_121111_create_wish_lists_table', 5),
(84, '2021_03_27_121406_create_newsletters_table', 5),
(85, '2021_03_27_121424_create_contacts_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ytujytu@tyuty.com', '2021-03-27 15:47:15', '2021-03-27 15:47:15'),
(2, 'ytujytu@tyuty.com', '2021-03-27 15:48:01', '2021-03-27 15:48:01'),
(3, 'ytujyt@tyty.com', '2021-03-28 08:01:22', '2021-03-28 08:01:22'),
(4, 'ytuty@tdruyhtr.com', '2021-03-28 11:16:14', '2021-03-28 11:16:14');

-- --------------------------------------------------------

--
-- Structure de la table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orderproducts`
--

CREATE TABLE `orderproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orderproducts`
--

INSERT INTO `orderproducts` (`id`, `quantity`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, '2021-03-25 15:39:49', '2021-03-25 15:39:49'),
(2, 1, 1, 1, '2021-03-25 15:39:49', '2021-03-25 15:39:49');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `name`, `country`, `address`, `City`, `Phone`, `Email`, `created_at`, `updated_at`) VALUES
(1, 'gfhgf', 'hfghfg', 'gfhfgh', 'gfhfgh', 'gfhfgh', 'gfhfghgf', '2021-03-28 07:37:32', '2021-03-28 07:37:32');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-03-26 10:05:56', '2021-03-26 10:05:56');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-03-26 10:05:47', '2021-03-26 10:05:47'),
(2, 'browse_bread', NULL, '2021-03-26 10:05:47', '2021-03-26 10:05:47'),
(3, 'browse_database', NULL, '2021-03-26 10:05:47', '2021-03-26 10:05:47'),
(4, 'browse_media', NULL, '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(5, 'browse_compass', NULL, '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(6, 'browse_menus', 'menus', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(7, 'read_menus', 'menus', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(8, 'edit_menus', 'menus', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(9, 'add_menus', 'menus', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(10, 'delete_menus', 'menus', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(11, 'browse_roles', 'roles', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(12, 'read_roles', 'roles', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(13, 'edit_roles', 'roles', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(14, 'add_roles', 'roles', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(15, 'delete_roles', 'roles', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(16, 'browse_users', 'users', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(17, 'read_users', 'users', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(18, 'edit_users', 'users', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(19, 'add_users', 'users', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(20, 'delete_users', 'users', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(21, 'browse_settings', 'settings', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(22, 'read_settings', 'settings', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(23, 'edit_settings', 'settings', '2021-03-26 10:05:48', '2021-03-26 10:05:48'),
(24, 'add_settings', 'settings', '2021-03-26 10:05:49', '2021-03-26 10:05:49'),
(25, 'delete_settings', 'settings', '2021-03-26 10:05:49', '2021-03-26 10:05:49'),
(26, 'browse_categories', 'categories', '2021-03-26 10:05:52', '2021-03-26 10:05:52'),
(27, 'read_categories', 'categories', '2021-03-26 10:05:52', '2021-03-26 10:05:52'),
(28, 'edit_categories', 'categories', '2021-03-26 10:05:52', '2021-03-26 10:05:52'),
(29, 'add_categories', 'categories', '2021-03-26 10:05:52', '2021-03-26 10:05:52'),
(30, 'delete_categories', 'categories', '2021-03-26 10:05:53', '2021-03-26 10:05:53'),
(31, 'browse_posts', 'posts', '2021-03-26 10:05:54', '2021-03-26 10:05:54'),
(32, 'read_posts', 'posts', '2021-03-26 10:05:54', '2021-03-26 10:05:54'),
(33, 'edit_posts', 'posts', '2021-03-26 10:05:54', '2021-03-26 10:05:54'),
(34, 'add_posts', 'posts', '2021-03-26 10:05:54', '2021-03-26 10:05:54'),
(35, 'delete_posts', 'posts', '2021-03-26 10:05:54', '2021-03-26 10:05:54'),
(36, 'browse_pages', 'pages', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(37, 'read_pages', 'pages', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(38, 'edit_pages', 'pages', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(39, 'add_pages', 'pages', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(40, 'delete_pages', 'pages', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(41, 'browse_hooks', NULL, '2021-03-26 10:05:59', '2021-03-26 10:05:59'),
(42, 'browse_categos', 'categos', '2021-03-26 10:07:06', '2021-03-26 10:07:06'),
(43, 'read_categos', 'categos', '2021-03-26 10:07:07', '2021-03-26 10:07:07'),
(44, 'edit_categos', 'categos', '2021-03-26 10:07:07', '2021-03-26 10:07:07'),
(45, 'add_categos', 'categos', '2021-03-26 10:07:07', '2021-03-26 10:07:07'),
(46, 'delete_categos', 'categos', '2021-03-26 10:07:07', '2021-03-26 10:07:07'),
(47, 'browse_products', 'products', '2021-03-26 10:09:52', '2021-03-26 10:09:52'),
(48, 'read_products', 'products', '2021-03-26 10:09:52', '2021-03-26 10:09:52'),
(49, 'edit_products', 'products', '2021-03-26 10:09:52', '2021-03-26 10:09:52'),
(50, 'add_products', 'products', '2021-03-26 10:09:52', '2021-03-26 10:09:52'),
(51, 'delete_products', 'products', '2021-03-26 10:09:52', '2021-03-26 10:09:52'),
(52, 'browse_contacts', 'contacts', '2021-03-28 12:17:53', '2021-03-28 12:17:53'),
(53, 'read_contacts', 'contacts', '2021-03-28 12:17:53', '2021-03-28 12:17:53'),
(54, 'edit_contacts', 'contacts', '2021-03-28 12:17:53', '2021-03-28 12:17:53'),
(55, 'add_contacts', 'contacts', '2021-03-28 12:17:53', '2021-03-28 12:17:53'),
(56, 'delete_contacts', 'contacts', '2021-03-28 12:17:53', '2021-03-28 12:17:53'),
(57, 'browse_newsletters', 'newsletters', '2021-03-28 12:18:41', '2021-03-28 12:18:41'),
(58, 'read_newsletters', 'newsletters', '2021-03-28 12:18:41', '2021-03-28 12:18:41'),
(59, 'edit_newsletters', 'newsletters', '2021-03-28 12:18:41', '2021-03-28 12:18:41'),
(60, 'add_newsletters', 'newsletters', '2021-03-28 12:18:41', '2021-03-28 12:18:41'),
(61, 'delete_newsletters', 'newsletters', '2021-03-28 12:18:41', '2021-03-28 12:18:41');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
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
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-26 10:05:55', '2021-03-26 10:05:55'),
(5, 1, 1, 'gdfgdf', NULL, 'fdgdfg', '<p>gdfgdfgdfg</p>', 'posts\\March2021\\6o4R0Jyu3xR4QdgE2FTB.png', 'gdfgdf', 'dfgdfg', 'dfgdfg', 'PUBLISHED', 0, '2021-03-26 14:03:16', '2021-03-26 14:03:16'),
(6, 1, 1, 'fgfgf', NULL, 'fgfg', '<p>fgfgfg</p>', 'posts\\March2021\\iJyzTOBcRoI1B96Q6kzg.jpg', 'fgfgf', 'fgfg', 'fgfg', 'PUBLISHED', 0, '2021-03-26 14:09:44', '2021-03-26 14:09:44'),
(7, 1, 2, ',n;n,', ',;,;gjgh', ',n;,n;,n;,n;', '<p>;,n;,n;,n;</p>', 'posts\\March2021\\IkuMTls1zqPUGLGV6mGd.jpg', 'n-n', ',n;n,;;;;;;;,n', 'n;n,;n,;n,;,n;', 'PUBLISHED', 0, '2021-03-26 14:55:15', '2021-03-26 14:55:15');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catgo_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `wish_list_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `image`, `catgo_id`, `created_at`, `updated_at`, `wishlist_id`, `wish_list_id`) VALUES
(5, 'AGRAN OIL ROASTED TORRÉFIÉE', 'AGRAN OIL ROASTED TORRÉFIÉE', NULL, 120, 'Huile De Cuisine Fine, Torréfiée, Pressée À Froid\r\n\r\nL’huile d’argan bio torréfiée est tirée, selon un procédé complexe de tradition berbère, des graines torréfiées de l’arganier (Argania spinosa) qui pousse dans le sud du Maroc. Délicieuse huile de cuisine fine, elle a conquis la place d’honneur chez les cuisiniers exigeants. L’huile d’argan se compose à env. 80 % d’acides gras insaturés biologiquement actifs, notamment des acides linoléique et oléique, qui participent au maintien d’un taux normal de cholestérol dans le sang (à partir de 10 g d’acide linoléique/jour ce qui correspond à env. 30 g d’huile d’argan bio torréfiée). Son léger goût de noisette est particulièrement apprécié pour affiner les salades et les plats chauds, elle peut également être consommée pure (1-3 cuillères à thé par jour).', 0, 'products\\March2021\\wt0eJYx8DEUiXTpzOlSd.jpg', '1', '2021-03-28 07:29:36', '2021-03-28 07:29:36', NULL, NULL),
(6, 'ARGAN NON TORRÉFIÉE 100ML', 'ARGAN NON TORRÉFIÉE 100ML', NULL, 50, 'Retrouvez toutes nos huiles nobles, de l’Amande Douce au Chanvre en passant par les graines de Ricin, toutes nos matières premières sont issues de l’agriculture biologique.\r\n\r\nL’huile d’Argan Non Torréfiée  est 100% BIO garantie ECOCERT, d’une suprême qualité.\r\n\r\nHuile nourrissante‎,‎ adoucissante‎,‎ protectrice‎,‎ assouplissante‎,‎ raffermissante‎,‎ cicatrisante et antioxydante‎.\r\n\r\n‎Idéale pour les peaux sèches‎,‎ ridées et dévitalisées‎.‎ Prévient le vieillissement précoce de la peau à laquelle elle redonne souplesse et élasticité‎.‎ Efficace contre les gerçures et protège des agressions extérieures‎.‎\r\n\r\nRevitalise les cheveux secs et ternes qui retrouvent éclat et brillance et fortifie les ongles fragiles et cassants‎.‎\r\n\r\nCONSEIL D’UTILISATION :\r\nAppliquez régulièrement l’huile  après la douche sur la peau, le visage, les mains et les ongles ou au coucher sur les cheveux en fonction du soin préconisé', 0, 'products\\March2021\\p0fYlVB70K9yU548oVJY.jpg', '2', '2021-03-28 07:30:28', '2021-03-28 07:30:28', NULL, NULL),
(7, 'ARGAN NON TORRÉFIÉE 30ML', 'ARGAN NON TORRÉFIÉE 30ML', NULL, 40, 'Retrouvez toutes nos huiles nobles, de l’Amande Douce au Chanvre en passant par les graines de Ricin, toutes nos matières premières sont issues de l’agriculture biologique.\r\n\r\nL’huile d’Argan Non Torréfiée  est 100% BIO garantie ECOCERT, d’une suprême qualité.\r\n\r\nHuile nourrissante‎,‎ adoucissante‎,‎ protectrice‎,‎ assouplissante‎,‎ raffermissante‎,‎ cicatrisante et antioxydante‎.\r\n\r\n‎Idéale pour les peaux sèches‎,‎ ridées et dévitalisées‎.‎ Prévient le vieillissement précoce de la peau à laquelle elle redonne souplesse et élasticité‎.‎ Efficace contre les gerçures et protège des agressions extérieures‎.‎\r\n\r\nRevitalise les cheveux secs et ternes qui retrouvent éclat et brillance et fortifie les ongles fragiles et cassants‎.‎\r\n\r\nCONSEIL D’UTILISATION :\r\nAppliquez régulièrement l’huile  après la douche sur la peau, le visage, les mains et les ongles ou au coucher sur les cheveux en fonction du soin préconisé', 0, 'products\\March2021\\cbkF3owUjEUh3RwCcZvM.jpg', '2', '2021-03-28 07:31:20', '2021-03-28 07:31:20', NULL, NULL),
(8, 'ARGAN NON TORRÉFIÉE 50 ML', 'ARGAN NON TORRÉFIÉE 50 ML', '50', 50, 'Retrouvez toutes nos huiles nobles, de l’Amande Douce au Chanvre en passant par les graines de Ricin, toutes nos matières premières sont issues de l’agriculture biologique.\r\n\r\nL’huile d’Argan Non Torréfiée  est 100% BIO garantie ECOCERT, d’une suprême qualité.\r\n\r\nHuile nourrissante‎,‎ adoucissante‎,‎ protectrice‎,‎ assouplissante‎,‎ raffermissante‎,‎ cicatrisante et antioxydante‎.\r\n\r\n‎Idéale pour les peaux sèches‎,‎ ridées et dévitalisées‎.‎ Prévient le vieillissement précoce de la peau à laquelle elle redonne souplesse et élasticité‎.‎ Efficace contre les gerçures et protège des agressions extérieures‎.‎\r\n\r\nRevitalise les cheveux secs et ternes qui retrouvent éclat et brillance et fortifie les ongles fragiles et cassants‎.‎\r\n\r\nCONSEIL D’UTILISATION :\r\nAppliquez régulièrement l’huile  après la douche sur la peau, le visage, les mains et les ongles ou au coucher sur les cheveux en fonction du soin préconisé', 0, 'products\\March2021\\0anJhWHAIIevCuooKnSt.jpg', '2', '2021-03-28 07:32:22', '2021-03-28 07:32:22', NULL, NULL),
(9, 'ARGAN TORRÉFIÉE ( ALIMENTAIRE) 100ML', 'ARGAN TORRÉFIÉE ( ALIMENTAIRE) 100ML', '22', 120, 'Huile De Cuisine Fine, Torréfiée, Pressée À Froid\r\n\r\nL’huile d’argan bio torréfiée est tirée, selon un procédé complexe de tradition berbère, des graines torréfiées de l’arganier (Argania spinosa) qui pousse dans le sud du Maroc. Délicieuse huile de cuisine fine, elle a conquis la place d’honneur chez les cuisiniers exigeants. L’huile d’argan se compose à env. 80 % d’acides gras insaturés biologiquement actifs, notamment des acides linoléique et oléique, qui participent au maintien d’un taux normal de cholestérol dans le sang (à partir de 10 g d’acide linoléique/jour ce qui correspond à env. 30 g d’huile d’argan bio torréfiée). Son léger goût de noisette est particulièrement apprécié pour affiner les salades et les plats chauds, elle peut également être consommée pure (1-3 cuillères à thé par jour).', 0, 'products\\March2021\\rLDMunDwSUnbHCiwO2r4.jpg', '1', '2021-03-28 07:33:18', '2021-03-28 07:33:18', NULL, NULL),
(10, 'ARGAN TORRÉFIÉE 1L', 'ARGAN TORRÉFIÉE 1L', NULL, 150, 'Huile De Cuisine Fine, Torréfiée, Pressée À Froid\r\n\r\nL’huile d’argan bio torréfiée est tirée, selon un procédé complexe de tradition berbère, des graines torréfiées de l’arganier (Argania spinosa) qui pousse dans le sud du Maroc. Délicieuse huile de cuisine fine, elle a conquis la place d’honneur chez les cuisiniers exigeants. L’huile d’argan se compose à env. 80 % d’acides gras insaturés biologiquement actifs, notamment des acides linoléique et oléique, qui participent au maintien d’un taux normal de cholestérol dans le sang (à partir de 10 g d’acide linoléique/jour ce qui correspond à env. 30 g d’huile d’argan bio torréfiée). Son léger goût de noisette est particulièrement apprécié pour affiner les salades et les plats chauds, elle peut également être consommée pure (1-3 cuillères à thé par jour).', 0, 'products\\March2021\\XXCLk6V7vf5YDnK1HjjM.jpg', '1', '2021-03-28 07:34:00', '2021-03-28 07:35:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-03-26 10:05:47', '2021-03-26 10:05:47'),
(2, 'user', 'Normal User', '2021-03-26 10:05:47', '2021-03-26 10:05:47');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-03-26 10:05:56', '2021-03-26 10:05:56'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-03-26 10:05:57', '2021-03-26 10:05:57'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-03-26 10:05:58', '2021-03-26 10:05:58'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-03-26 10:05:58', '2021-03-26 10:05:58'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-03-26 10:05:58', '2021-03-26 10:05:58'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-03-26 10:05:58', '2021-03-26 10:05:58'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-03-26 10:05:58', '2021-03-26 10:05:58'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-03-26 10:05:58', '2021-03-26 10:05:58'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-03-26 10:05:58', '2021-03-26 10:05:58');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$WTSB1NpTm6eOpbs.1UTNg.IycX2TrpbV0XuUDctmOma8C.PxGi3rC', 'R2n76CCDvsZlQXvNd9G6hTjEYHBFLr01B5X63lO5sl8oHMNNpIiz79VmmqMP', NULL, '2021-03-26 10:05:53', '2021-03-26 10:05:53'),
(2, 2, 'zerterty', 'tytt@rtytr.rytr', 'users/default.png', NULL, '$2y$10$8kIR8xuSe1z/BxsG6U08lOMdcwoic9KuI1R98TpoUdWZJaEJJRliG', NULL, NULL, '2021-03-27 10:59:23', '2021-03-27 10:59:23'),
(3, 2, 'fgfh', 'youssef@example.com', 'users/default.png', NULL, '$2y$10$10G.Uh9HtRrSAmZK5KBfg.8tdnRDA0oVW5M4kAXe6QpV93Mrz6LiG', NULL, NULL, '2021-03-27 11:04:13', '2021-03-27 11:04:13'),
(4, 2, 'tujhy', 'superadmin@example.com', 'users/default.png', NULL, '$2y$10$xcbaj4tKK2n0vingu12itOw0xLgR94xIKH9EgyrtH4ksS7ZQrs71u', NULL, NULL, '2021-03-27 12:12:06', '2021-03-27 12:12:06'),
(5, 2, 'yorfussef bout', 'superadmin@example.comtyht', 'users/default.png', NULL, '$2y$10$kD/ZwoXq7Eh5y7H8sTcuWeBxKknh02S4dFz.UsPND3Wz2gGoU.UEu', NULL, NULL, '2021-03-27 13:18:03', '2021-03-27 13:18:03'),
(6, 2, 'edtrrezggh', 'youssef@exampghgle.com', 'users/default.png', NULL, '$2y$10$gaykdrTpZV32GvHu6A7a2eWVj2B0bXKa.wrJYZkkLUPIAOxi80lNy', NULL, NULL, '2021-03-27 14:27:26', '2021-03-27 14:27:26'),
(7, 2, 'admin', 'youssef@youssef.com', 'users/default.png', NULL, '$2y$10$56CPvQtWxSdG9bVPphi4OOAiIZw41zaa3rGKrhxPf8et09XDK5.22', NULL, NULL, '2021-03-27 14:39:16', '2021-03-27 14:39:16'),
(8, 2, 'youssef bou qSDQD', 'superadminZSQS@example.com', 'users/default.png', NULL, '$2y$10$jEsT44VZ6NwlXEvpSCpgBOAE/IRlAc9dNnF2Qn.TpqfTt/OimEFFy', NULL, NULL, '2021-03-27 14:41:22', '2021-03-27 14:41:22'),
(9, 2, 'TYHTY', 'TYTY@FTGYJU.DFDP', 'users/default.png', NULL, '$2y$10$Mpir7uWW55mk99Y7t3mPiO3jWCayOSa83krwJ/Hi7T8XD.ErynUfa', NULL, NULL, '2021-03-27 14:51:00', '2021-03-27 14:51:00'),
(10, 2, 'youssefyoussef', 'youssef@youssefl.com', 'users/default.png', NULL, '$2y$10$WSRjo2Le7tvQkfbsigYcX.gol/HG20hwoCUU7fbMFSCvQa9xWu1oG', NULL, NULL, '2021-03-28 06:39:54', '2021-03-28 06:39:54');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `User_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `product_id`, `User_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5, '2021-03-27 13:29:16', '2021-03-27 13:29:16'),
(2, 3, 5, '2021-03-27 13:29:20', '2021-03-27 13:29:20'),
(3, 4, 5, '2021-03-27 13:30:08', '2021-03-27 13:30:08'),
(4, 1, 5, '2021-03-27 13:31:30', '2021-03-27 13:31:30'),
(5, 1, 5, '2021-03-27 13:31:48', '2021-03-27 13:31:48'),
(6, 3, 5, '2021-03-27 13:34:57', '2021-03-27 13:34:57'),
(7, 1, 5, '2021-03-27 13:35:27', '2021-03-27 13:35:27'),
(8, 3, 6, '2021-03-27 14:27:50', '2021-03-27 14:27:50'),
(9, 1, 6, '2021-03-27 14:32:10', '2021-03-27 14:32:10'),
(10, 3, 6, '2021-03-27 14:34:01', '2021-03-27 14:34:01'),
(11, 3, 6, '2021-03-27 14:34:04', '2021-03-27 14:34:04'),
(12, 3, 6, '2021-03-27 14:34:08', '2021-03-27 14:34:08'),
(13, 3, 7, '2021-03-27 14:39:26', '2021-03-27 14:39:26'),
(14, 1, 8, '2021-03-27 14:44:57', '2021-03-27 14:44:57'),
(15, 1, 8, '2021-03-27 14:46:23', '2021-03-27 14:46:23'),
(16, 3, 8, '2021-03-27 14:46:40', '2021-03-27 14:46:40'),
(17, 1, 8, '2021-03-27 14:48:13', '2021-03-27 14:48:13'),
(18, 3, 8, '2021-03-27 14:48:56', '2021-03-27 14:48:56'),
(19, 4, 8, '2021-03-27 14:50:29', '2021-03-27 14:50:29'),
(20, 3, 8, '2021-03-27 14:50:36', '2021-03-27 14:50:36'),
(21, 6, 1, '2021-03-28 07:55:52', '2021-03-28 07:55:52');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `categos`
--
ALTER TABLE `categos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderitems_order_id_foreign` (`order_id`);

--
-- Index pour la table `orderproducts`
--
ALTER TABLE `orderproducts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Index pour la table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `categos`
--
ALTER TABLE `categos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `orderproducts`
--
ALTER TABLE `orderproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
