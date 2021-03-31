-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 31 mars 2021 à 08:33
-- Version du serveur :  10.2.37-MariaDB-log
-- Version de PHP : 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cooperativemogad_mog`
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
(1, NULL, 1, 'Category 1', 'category-1', '2021-03-30 09:43:13', '2021-03-30 09:43:13'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-03-30 09:43:13', '2021-03-30 09:43:13');

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
(1, 'Alimentaire', '2021-03-30 09:47:12', '2021-03-30 09:47:12'),
(2, 'Cosmitique', '2021-03-30 09:47:24', '2021-03-30 09:47:24');

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
(1, 'ytuty', 'ytutyu@tyuty.com', 'tyutyu', '2021-03-30 11:07:35', '2021-03-30 11:07:35');

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
(58, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'featured', 'number', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 7),
(63, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(64, 7, 'catgo_id', 'text', 'Catgo Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(65, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(66, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(67, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(70, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(71, 7, 'product_belongsto_catego_relationship', 'relationship', 'categos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Catego\",\"table\":\"categos\",\"type\":\"belongsTo\",\"column\":\"catgo_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"carts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(72, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(74, 9, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(75, 9, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 4),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(78, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 10, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(80, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(81, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(82, 11, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(83, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(84, 11, 'country', 'text', 'Country', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 11, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 4),
(86, 11, 'City', 'text', 'City', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 11, 'Phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 6),
(88, 11, 'Email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(89, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(90, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(103, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(104, 14, 'quantity', 'text', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 2),
(105, 14, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(106, 14, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(107, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(108, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-03-30 09:43:01', '2021-03-30 09:43:01'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-03-30 09:43:01', '2021-03-30 09:43:01'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-03-30 09:43:01', '2021-03-30 09:43:01'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-03-30 09:43:11', '2021-03-30 09:43:11'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-03-30 09:43:13', '2021-03-30 09:43:13'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-03-30 09:43:16', '2021-03-30 09:43:16'),
(7, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-30 09:45:27', '2021-03-30 09:46:58'),
(8, 'categos', 'categos', 'Catego', 'Categos', NULL, 'App\\Models\\Catego', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-30 09:46:01', '2021-03-30 09:46:01'),
(9, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-30 11:07:00', '2021-03-30 11:07:00'),
(10, 'newsletters', 'newsletters', 'Newsletter', 'Newsletters', NULL, 'App\\Models\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-30 11:08:11', '2021-03-30 11:08:11'),
(11, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Models\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-30 11:08:41', '2021-03-31 22:20:01'),
(14, 'items', 'items', 'les produit de orders', 'les produit de orders', NULL, 'App\\Models\\Items', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-30 11:18:23', '2021-03-30 11:21:55');

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
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`id`, `quantity`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 6, '2021-03-30 11:17:28', '2021-03-30 11:17:28'),
(2, 1, 5, 25, '2021-03-30 20:59:09', '2021-03-30 20:59:09'),
(3, 1, 6, 7, '2021-03-31 02:59:56', '2021-03-31 02:59:56'),
(4, 1, 7, 10, '2021-03-31 21:17:58', '2021-03-31 21:17:58');

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
(1, 'admin', '2021-03-30 09:43:04', '2021-03-30 09:43:04');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-03-30 09:43:04', '2021-03-30 09:43:04', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-03-30 09:43:05', '2021-03-30 09:43:05', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-03-30 09:43:05', '2021-03-30 09:43:05', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-03-30 09:43:05', '2021-03-30 09:43:05', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-03-30 09:43:05', '2021-03-30 09:43:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-03-30 09:43:05', '2021-03-30 09:43:05', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-03-30 09:43:05', '2021-03-30 09:43:05', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-03-30 09:43:05', '2021-03-30 09:43:05', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-03-30 09:43:05', '2021-03-30 09:43:05', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-03-30 09:43:05', '2021-03-30 09:43:05', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-03-30 09:43:12', '2021-03-30 09:43:12', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-03-30 09:43:14', '2021-03-30 09:43:14', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-03-30 09:43:16', '2021-03-30 09:43:16', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-03-30 09:43:20', '2021-03-30 09:43:20', 'voyager.hooks', NULL),
(15, 1, 'Products', '', '_self', NULL, NULL, NULL, 15, '2021-03-30 09:45:28', '2021-03-30 09:45:28', 'voyager.products.index', NULL),
(16, 1, 'Categos', '', '_self', NULL, NULL, NULL, 16, '2021-03-30 09:46:02', '2021-03-30 09:46:02', 'voyager.categos.index', NULL),
(17, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 17, '2021-03-30 11:07:01', '2021-03-30 11:07:01', 'voyager.contacts.index', NULL),
(18, 1, 'Newsletters', '', '_self', NULL, NULL, NULL, 18, '2021-03-30 11:08:11', '2021-03-30 11:08:11', 'voyager.newsletters.index', NULL),
(19, 1, 'Orders', '', '_self', NULL, NULL, NULL, 19, '2021-03-30 11:08:42', '2021-03-30 11:08:42', 'voyager.orders.index', NULL),
(22, 1, 'Items', '', '_self', NULL, NULL, NULL, 22, '2021-03-30 11:18:23', '2021-03-30 11:18:23', 'voyager.items.index', NULL);

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
(39, '2014_10_12_000000_create_users_table', 1),
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2016_01_01_000000_add_voyager_user_fields', 1),
(42, '2016_01_01_000000_create_data_types_table', 1),
(43, '2016_01_01_000000_create_pages_table', 1),
(44, '2016_01_01_000000_create_posts_table', 1),
(45, '2016_02_15_204651_create_categories_table', 1),
(46, '2016_05_19_173453_create_menu_table', 1),
(47, '2016_10_21_190000_create_roles_table', 1),
(48, '2016_10_21_190000_create_settings_table', 1),
(49, '2016_11_30_135954_create_permission_table', 1),
(50, '2016_11_30_141208_create_permission_role_table', 1),
(51, '2016_12_26_201236_data_types__add__server_side', 1),
(52, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(53, '2017_01_14_005015_create_translations_table', 1),
(54, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(55, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(56, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(57, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(58, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(59, '2017_08_05_000000_add_group_to_settings_table', 1),
(60, '2017_11_26_013050_add_user_role_relationship', 1),
(61, '2017_11_26_015000_create_user_roles_table', 1),
(62, '2018_03_11_000000_add_user_settings', 1),
(63, '2018_03_14_000000_add_details_to_data_types_table', 1),
(64, '2018_03_16_000000_make_settings_value_nullable', 1),
(65, '2019_08_19_000000_create_failed_jobs_table', 1),
(66, '2021_03_23_151925_create_products_table', 1),
(67, '2021_03_23_174213_create_carts_table', 1),
(68, '2021_03_25_111224_create_orders_table', 1),
(69, '2021_03_25_111929_create_categos_table', 1),
(70, '2021_03_25_113303_create_orderproducts_table', 1),
(71, '2021_03_26_093611_create_orderitems_table', 1),
(72, '2021_03_27_121111_create_wish_lists_table', 1),
(73, '2021_03_27_121406_create_newsletters_table', 1),
(74, '2021_03_27_121424_create_contacts_table', 1),
(75, '2021_03_29_153936_drop_orderitems_table', 1),
(76, '2021_03_29_154700_create_items_table', 1);

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
(1, 'hjkyuj@rtuty.com', '2021-03-30 10:57:27', '2021-03-30 10:57:27'),
(2, 'amine@amineamine.com', '2021-03-31 22:27:52', '2021-03-31 22:27:52');

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

--
-- Déchargement des données de la table `orderitems`
--

INSERT INTO `orderitems` (`id`, `quantity`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2021-03-30 09:26:06', '2021-03-30 09:26:06'),
(2, 1, 2, 6, '2021-03-30 11:02:56', '2021-03-30 11:02:56');

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
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-03-30 09:43:17', '2021-03-30 09:43:17');

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
(1, 'browse_admin', NULL, '2021-03-30 09:43:05', '2021-03-30 09:43:05'),
(2, 'browse_bread', NULL, '2021-03-30 09:43:06', '2021-03-30 09:43:06'),
(3, 'browse_database', NULL, '2021-03-30 09:43:06', '2021-03-30 09:43:06'),
(4, 'browse_media', NULL, '2021-03-30 09:43:06', '2021-03-30 09:43:06'),
(5, 'browse_compass', NULL, '2021-03-30 09:43:06', '2021-03-30 09:43:06'),
(6, 'browse_menus', 'menus', '2021-03-30 09:43:06', '2021-03-30 09:43:06'),
(7, 'read_menus', 'menus', '2021-03-30 09:43:06', '2021-03-30 09:43:06'),
(8, 'edit_menus', 'menus', '2021-03-30 09:43:06', '2021-03-30 09:43:06'),
(9, 'add_menus', 'menus', '2021-03-30 09:43:06', '2021-03-30 09:43:06'),
(10, 'delete_menus', 'menus', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(11, 'browse_roles', 'roles', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(12, 'read_roles', 'roles', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(13, 'edit_roles', 'roles', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(14, 'add_roles', 'roles', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(15, 'delete_roles', 'roles', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(16, 'browse_users', 'users', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(17, 'read_users', 'users', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(18, 'edit_users', 'users', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(19, 'add_users', 'users', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(20, 'delete_users', 'users', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(21, 'browse_settings', 'settings', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(22, 'read_settings', 'settings', '2021-03-30 09:43:07', '2021-03-30 09:43:07'),
(23, 'edit_settings', 'settings', '2021-03-30 09:43:08', '2021-03-30 09:43:08'),
(24, 'add_settings', 'settings', '2021-03-30 09:43:08', '2021-03-30 09:43:08'),
(25, 'delete_settings', 'settings', '2021-03-30 09:43:08', '2021-03-30 09:43:08'),
(26, 'browse_categories', 'categories', '2021-03-30 09:43:12', '2021-03-30 09:43:12'),
(27, 'read_categories', 'categories', '2021-03-30 09:43:12', '2021-03-30 09:43:12'),
(28, 'edit_categories', 'categories', '2021-03-30 09:43:12', '2021-03-30 09:43:12'),
(29, 'add_categories', 'categories', '2021-03-30 09:43:12', '2021-03-30 09:43:12'),
(30, 'delete_categories', 'categories', '2021-03-30 09:43:12', '2021-03-30 09:43:12'),
(31, 'browse_posts', 'posts', '2021-03-30 09:43:14', '2021-03-30 09:43:14'),
(32, 'read_posts', 'posts', '2021-03-30 09:43:14', '2021-03-30 09:43:14'),
(33, 'edit_posts', 'posts', '2021-03-30 09:43:14', '2021-03-30 09:43:14'),
(34, 'add_posts', 'posts', '2021-03-30 09:43:15', '2021-03-30 09:43:15'),
(35, 'delete_posts', 'posts', '2021-03-30 09:43:15', '2021-03-30 09:43:15'),
(36, 'browse_pages', 'pages', '2021-03-30 09:43:16', '2021-03-30 09:43:16'),
(37, 'read_pages', 'pages', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(38, 'edit_pages', 'pages', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(39, 'add_pages', 'pages', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(40, 'delete_pages', 'pages', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(41, 'browse_hooks', NULL, '2021-03-30 09:43:20', '2021-03-30 09:43:20'),
(42, 'browse_products', 'products', '2021-03-30 09:45:27', '2021-03-30 09:45:27'),
(43, 'read_products', 'products', '2021-03-30 09:45:27', '2021-03-30 09:45:27'),
(44, 'edit_products', 'products', '2021-03-30 09:45:27', '2021-03-30 09:45:27'),
(45, 'add_products', 'products', '2021-03-30 09:45:27', '2021-03-30 09:45:27'),
(46, 'delete_products', 'products', '2021-03-30 09:45:27', '2021-03-30 09:45:27'),
(47, 'browse_categos', 'categos', '2021-03-30 09:46:01', '2021-03-30 09:46:01'),
(48, 'read_categos', 'categos', '2021-03-30 09:46:02', '2021-03-30 09:46:02'),
(49, 'edit_categos', 'categos', '2021-03-30 09:46:02', '2021-03-30 09:46:02'),
(50, 'add_categos', 'categos', '2021-03-30 09:46:02', '2021-03-30 09:46:02'),
(51, 'delete_categos', 'categos', '2021-03-30 09:46:02', '2021-03-30 09:46:02'),
(52, 'browse_contacts', 'contacts', '2021-03-30 11:07:01', '2021-03-30 11:07:01'),
(53, 'read_contacts', 'contacts', '2021-03-30 11:07:01', '2021-03-30 11:07:01'),
(54, 'edit_contacts', 'contacts', '2021-03-30 11:07:01', '2021-03-30 11:07:01'),
(55, 'add_contacts', 'contacts', '2021-03-30 11:07:01', '2021-03-30 11:07:01'),
(56, 'delete_contacts', 'contacts', '2021-03-30 11:07:01', '2021-03-30 11:07:01'),
(57, 'browse_newsletters', 'newsletters', '2021-03-30 11:08:11', '2021-03-30 11:08:11'),
(58, 'read_newsletters', 'newsletters', '2021-03-30 11:08:11', '2021-03-30 11:08:11'),
(59, 'edit_newsletters', 'newsletters', '2021-03-30 11:08:11', '2021-03-30 11:08:11'),
(60, 'add_newsletters', 'newsletters', '2021-03-30 11:08:11', '2021-03-30 11:08:11'),
(61, 'delete_newsletters', 'newsletters', '2021-03-30 11:08:11', '2021-03-30 11:08:11'),
(62, 'browse_orders', 'orders', '2021-03-30 11:08:42', '2021-03-30 11:08:42'),
(63, 'read_orders', 'orders', '2021-03-30 11:08:42', '2021-03-30 11:08:42'),
(64, 'edit_orders', 'orders', '2021-03-30 11:08:42', '2021-03-30 11:08:42'),
(65, 'add_orders', 'orders', '2021-03-30 11:08:42', '2021-03-30 11:08:42'),
(66, 'delete_orders', 'orders', '2021-03-30 11:08:42', '2021-03-30 11:08:42'),
(77, 'browse_items', 'items', '2021-03-30 11:18:23', '2021-03-30 11:18:23'),
(78, 'read_items', 'items', '2021-03-30 11:18:23', '2021-03-30 11:18:23'),
(79, 'edit_items', 'items', '2021-03-30 11:18:23', '2021-03-30 11:18:23'),
(80, 'add_items', 'items', '2021-03-30 11:18:23', '2021-03-30 11:18:23'),
(81, 'delete_items', 'items', '2021-03-30 11:18:23', '2021-03-30 11:18:23');

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
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

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
(5, 1, 1, 'TOUT SAVOIR SUR L\'ARGANIER', NULL, 'L\'arganier (Argania Spinosa) pousse de façon sauvage en forêt claire de l’arrière-pays collinéen ou bien il est cultivé dans les plaines et sur le littoral océanique marocain', '<h2 class=\"tmarge\" style=\"background: transparent; border: 0px; font-size: 19px; font-weight: 400; margin: 25px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #658c32; text-shadow: none; font-family: ElegantGaramondRoman; text-transform: uppercase;\">L&rsquo;ARGANIER NE &nbsp;POUSSE QU&rsquo;AU MAROC</h2>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">L\'arganier (Argania Spinosa) pousse de fa&ccedil;on sauvage en for&ecirc;t claire de l&rsquo;arri&egrave;re-pays collin&eacute;en ou bien il est cultiv&eacute; dans les plaines et sur le littoral oc&eacute;anique marocain. L&rsquo;arganier est l&rsquo;essence foresti&egrave;re incontournable du grand sud-ouest marocain. Il peuple l&rsquo;essentiel de ses paysages arides aux brumes fr&eacute;quentes et lui imprime une physionomie bien particuli&egrave;re.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">L\'arganier est un arbre aux multiples usages : forestier (bois de chauffage), fruitier et fourrager (nourrit les ch&egrave;vres), dont l&rsquo;esp&eacute;rance de croissance est d&rsquo;une dizaine de m&egrave;tres. Il est d&rsquo;un port &agrave; cime arrondie, &agrave; l&rsquo;&eacute;corce grise et crevass&eacute;e, aux rameaux &eacute;pineux (d\'o&ugrave; spinosa) et aux feuilles persistantes.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">&nbsp;</p>\r\n<h3 class=\"tmarge\" style=\"background: transparent; border: 0px; font-size: 17px; font-weight: 400; margin: 0px 0px 30px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23; text-shadow: #9e9e9e 1px 2px 5px; font-family: ElegantGaramondRoman; text-transform: uppercase;\">L&rsquo;ARGANIER EST PARFAITEMENT ADAPT&Eacute; &Agrave; SON &Eacute;COSYST&Egrave;ME</h3>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">De nombreuses tentatives de transplantation d\'arganiers ont g&eacute;n&eacute;ralement &eacute;chou&eacute;.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">Il n&rsquo;y a qu&rsquo;une explication &agrave; cela. Si l\'<strong style=\"background: transparent; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23;\">arganier</strong>&nbsp;pousse si bien, rejetant souvent les autres esp&egrave;ces d&rsquo;arbres c&rsquo;est qu&rsquo;il est&nbsp;<span class=\"bold\" style=\"background: transparent; border: 0px; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">parfaitement adapt&eacute; &agrave; son &eacute;cosyst&egrave;me</span>.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">La terre aride et le climat largement ensoleill&eacute; conviennent parfaitement &agrave; l\'arganier. Les temp&eacute;ratures au sol, (et &agrave; l&rsquo;ombre), peuvent d&eacute;passer 50&deg;C. Par contre, l&rsquo;hiver il peut geler et neiger dans les montagnes de l&rsquo;Atlas.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\"><span class=\"bold\" style=\"background: transparent; border: 0px; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"background: transparent; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23;\">L\'arganier n&rsquo;a besoin que peu de pluies</strong></span>. Heureusement car il ne pleut que de 30 &agrave; 50 jours par an sur la c&ocirc;te &agrave; Agadir, encore moins au sud du Souss, de 15 &agrave; 30 jours par an seulement.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">En plus, les brumes et ros&eacute;es matinales oc&eacute;aniques port&eacute;es par les courants froids des Canaries lui procurent un compl&eacute;ment hygrom&eacute;trique.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">Mais pour l&rsquo;essentiel et pour arriver &agrave; survivre,&nbsp;<span class=\"bold\" style=\"background: transparent; border: 0px; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23;\">l\'arganier poss&egrave;de un syst&egrave;me racinaire extr&ecirc;mement d&eacute;velopp&eacute;</span>. Il va puiser l&rsquo;eau profond, jusqu&rsquo;&agrave; 20 et 25m sous terre. En effet les racines de l&rsquo;arganier repr&eacute;sentent 5 fois sa partie a&eacute;rienne, (son tronc et ses branches). Pour autant, son syst&egrave;me racinaire est d&eacute;pourvu de poils absorbants (racines &laquo; magnilo&iuml;des &raquo;. Il profite d\'une symbiose avec diff&eacute;rents types de champignons pour pallier cette d&eacute;ficience, seuls ces derniers pouvant apporter les diff&eacute;rents nutriments &agrave; l\'arbre.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\"><img style=\"background: transparent; border: 0px; margin: 0px 13px 10px 0px; outline: 0px; padding: 0px; vertical-align: baseline; float: left;\" src=\"https://www.huile-dargan.fr/img/plantation_arganier.jpg\" alt=\"plantation arganier\" />Ce syst&egrave;me racinaire lui est particuli&egrave;rement utile car entre 2 et 4 semaines par an soufflent le&nbsp;<em style=\"background: transparent; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Chergui</em>&nbsp;et le&nbsp;<em style=\"background: transparent; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Sirocco</em>,&nbsp; vents chauds et secs venus du proche Sahara.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">Lorsque les ressources hydriques viennent &agrave; manquer,&nbsp;<strong style=\"background: transparent; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23;\">l&rsquo;arganier peut temporairement se d&eacute;folier</strong>. Lorsqu\'arrivent de nouvelles pr&eacute;cipitations, il retrouve son aspect touffu.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">C&rsquo;est un arbre tr&egrave;s prot&eacute;iforme qui s\'adapte aux conditions qu\'il rencontre et aux traitements que lui font subir les hommes (&eacute;cimage, d&eacute;coupe de branches) et les animaux (ch&egrave;vres et dromadaires).</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">Sous r&eacute;serve que les conditions climatiques extr&ecirc;mes ne soient pas trop longues, l&rsquo;arganier les supporte bien. On compte<span class=\"bold\" style=\"background: transparent; border: 0px; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23;\">&nbsp;150 &agrave; 300 arganiers &agrave; l&rsquo;hectare&nbsp;</span>et la for&ecirc;t est&nbsp; clairsem&eacute;e car l&rsquo;arbre r&eacute;clame la lumi&egrave;re.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">&nbsp;</p>\r\n<h2 class=\"tmarge\" style=\"background: transparent; border: 0px; font-size: 19px; font-weight: 400; margin: 25px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #658c32; text-shadow: none; font-family: ElegantGaramondRoman; text-transform: uppercase;\">L&rsquo;ARGANIER, UN ARBRE A USAGES MULTIPLES</h2>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">L\'arganier est un arbre &agrave; usages multiples. Chaque partie de l\'arbre constitue une source de revenus ou de nourriture pour l\'usager.</p>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">&nbsp;</p>\r\n<h3 class=\"tmarge\" style=\"background: transparent; border: 0px; font-size: 17px; font-weight: 400; margin: 0px 0px 30px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23; text-shadow: #9e9e9e 1px 2px 5px; font-family: ElegantGaramondRoman; text-transform: uppercase;\">FREIN &Agrave; LA D&Eacute;SERTIFICATION</h3>\r\n<p class=\"marge\" style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px 0px 10px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">Il joue un r&ocirc;le essentiel dans la lutte contre l\'&eacute;rosion pluviale en fixant le sol des collines qu\'il peuple. Il dresse un rempart contre la d&eacute;sertification des zones pr&eacute; sahariennes de la plaine du Souss.</p>\r\n<h3 class=\"tmarge\" style=\"background: transparent; border: 0px; font-size: 17px; font-weight: 400; margin: 0px 0px 30px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23; text-shadow: #9e9e9e 1px 2px 5px; font-family: ElegantGaramondRoman; text-transform: uppercase;\">MAT&Eacute;RIAU DE CONSTRUCTION ET BOIS DE CHAUFFAGE</h3>\r\n<p style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">Extr&ecirc;mement dur, le bois de l\'arganier est particuli&egrave;rement appr&eacute;ci&eacute; comme bois de charpente et il constitue un isolant &eacute;cologique parmi les mieux adapt&eacute;s &agrave; un usage en r&eacute;gion chaude.</p>\r\n<p style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">&nbsp;</p>\r\n<p style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">En effet, plus un bois est dur et plus il va mettre du temps &agrave; br&ucirc;ler mais aussi plus il va lib&eacute;rer de l\'&eacute;nergie et s\'av&eacute;rer un bois de chauffage performant. C\'est ainsi que les populations du Sud-ouest marocain exploitent, depuis longtemps, les qualit&eacute;s m&eacute;caniques et &eacute;nerg&eacute;tiques de l\'arganier.</p>\r\n<p style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">&nbsp;</p>\r\n<p style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">Parce qu\'il est dense et se consume lentement, il est massivement utilis&eacute; comme combustible sous forme de charbon.</p>\r\n<p style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">&nbsp;</p>\r\n<h3 class=\"tmarge\" style=\"background: transparent; border: 0px; font-size: 17px; font-weight: 400; margin: 0px 0px 30px; outline: 0px; padding: 0px; vertical-align: baseline; color: #963e23; text-shadow: #9e9e9e 1px 2px 5px; font-family: ElegantGaramondRoman; text-transform: uppercase;\">UNE ESSENCE UNIQUE ET UN ENJEU SOCIO-&Eacute;CONOMIQUE MAJEUR</h3>\r\n<p style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\" align=\"justify\">C\'est ainsi que&nbsp;<a style=\"background: transparent; border: 0px; color: #232323; margin: 0px; outline: none; padding: 0px; text-decoration-line: none; vertical-align: baseline;\" href=\"https://www.huile-dargan.fr/contenu/arganier.php\">les usages de l\'arganier sont multiples</a>. L\'importance de son r&ocirc;le environnemental (frein &agrave; l\'&eacute;rosion et &agrave; la d&eacute;sertification) et socio-&eacute;conomique (p&acirc;turage, huile d\'argan, bois de construction et de chauffage) n&eacute;cessite aujourd\'hui d\'&eacute;laborer et de mettre en &oelig;uvre une strat&eacute;gie nationale de sauvegarde de cette essence unique &agrave; croissance tr&egrave;s lente.</p>\r\n<p style=\"background: transparent; border: 0px; font-size: 13px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #313131; font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p>', 'posts\\March2021\\Y47WUWi8E04URqz2UaWp.jpg', 'tout-savoir-sur-l-arganier', 'L\'arganier (Argania Spinosa) pousse de façon sauvage en forêt claire de l’arrière-pays collinéen ou bien il est cultivé dans les plaines et sur le littoral océanique marocain', 'L\'arganier (Argania Spinosa) pousse de façon sauvage en forêt claire de l’arrière-pays collinéen ou bien il est cultivé dans les plaines et sur le littoral océanique marocain', 'PUBLISHED', 0, '2021-03-30 10:34:01', '2021-03-30 10:36:27'),
(6, 1, 1, 'Les 5 bienfaits de l’huile d’argan', NULL, 'La mode est au retour au naturel. On ne met plus de produits chimiques sur son visage et dans ses cheveux et on se tourne vers des produits plus sains. Avec l’huile d’argan, vous serez certain de trouver le nouveau compagnon indispensable de votre quotidien.', '<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 16px; line-height: 1.5; text-rendering: optimizelegibility; color: #5b5b5b; font-family: \'Open Sans\', Helvetica, Arial, sans-serif;\"><strong style=\"box-sizing: inherit; line-height: inherit;\">La mode est au retour au naturel. On ne met plus de produits chimiques sur son visage et dans ses cheveux et on se tourne vers des produits plus sains. Avec l&rsquo;huile d&rsquo;argan, vous serez certain de trouver le nouveau compagnon indispensable de votre quotidien.</strong></p>\r\n<div id=\"diapoContent\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; color: #5b5b5b; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-size: 16px;\"><img id=\"visuDiapo\" style=\"box-sizing: inherit; border-style: none; display: block; vertical-align: middle; max-width: 100%; height: 400px; object-fit: cover; width: 655.028px; object-position: center center; border-radius: 10px; background-color: #f7f5f5; margin-bottom: 0.9375rem; float: left; margin-right: 30px;\" src=\"https://static.passeportsante.net/i92853-.jpeg\" alt=\"\" data-src-small=\"https://static.passeportsante.net/680x357/i92853-.jpeg\" />\r\n<div class=\"diapoParagraph\" style=\"box-sizing: inherit; margin: 0px; padding: 0px;\">\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">Il existe dans la nature des produits utilis&eacute;s depuis des d&eacute;cennies et que nous avons d&eacute;laiss&eacute;s au profit de produits qui ne respectent ni notre peau ni l&rsquo;environnement. Aujourd&rsquo;hui int&eacute;ressons-nous &agrave; l&rsquo;huile d&rsquo;argan. C&rsquo;est au sud du Maroc que l&rsquo;arganier pousse. L&agrave;-bas on l&rsquo;appelle &laquo;&nbsp;don de dieu&nbsp;&raquo;, car l&rsquo;huile d&rsquo;argan apporte de nombreux bienfaits. On vous en donne quelques-uns.</p>\r\n<div id=\"dynInfeed1\" class=\"dynInFeed\" style=\"box-sizing: inherit; margin: 0px 0px 15px; padding: 5px 0px; background-color: #f7f5f5; border-top: 1px solid #e3e3e3; border-bottom: 1px solid #e3e3e3; text-align: center; display: flex; flex-wrap: wrap; -webkit-box-pack: center; justify-content: center; min-height: 250px; clear: both;\">&nbsp;</div>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-family: Montserrat, Helvetica, Arial, sans-serif; color: #333333; text-rendering: optimizelegibility; font-size: 1.375rem; line-height: 1.4;\">1. L&rsquo;huile d&rsquo;argan peut remplacer votre cr&egrave;me de jour</h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">Vous pensez ne pas pouvoir vous passer de votre cr&egrave;me de jour. Essayez&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; line-height: inherit; color: #3f90ce; text-decoration-line: none; cursor: pointer;\" href=\"https://www.passeportsante.net/fr/Actualites/Nouvelles/Fiche.aspx?doc=2008111799\" target=\"_blank\" rel=\"noopener\">l&rsquo;huile d&rsquo;argan</a>. Elle est excellente pour la peau car elle permet&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">une meilleure &eacute;lasticit&eacute; mais aussi une meilleure souplesse</strong>. L&rsquo;huile d&rsquo;argan est aussi un anti-&acirc;ge naturel. Riche en antioxydants, elle lutte en effet efficacement contre le vieillissement de la peau. Elle pourra aussi &ecirc;tre utilis&eacute;e pour hydrater le reste du corps, l&rsquo;huile d&rsquo;argan ne s&rsquo;utilise pas uniquement sur le visage.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">Si vous souhaitez l&rsquo;utiliser comme un produit cosm&eacute;tique, vous devrez choisir une huile press&eacute;e &agrave; froid, afin de ne pas d&eacute;naturer les antioxydants qu&rsquo;elle contient. Pour &ecirc;tre certain d&rsquo;avoir un bon produit,&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">on vous conseillera par ailleurs de choisir une huile bio</strong>&nbsp;qui maintiendra bien l&rsquo;&eacute;quilibre de votre &eacute;piderme.</p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-family: Montserrat, Helvetica, Arial, sans-serif; color: #333333; text-rendering: optimizelegibility; font-size: 1.375rem; line-height: 1.4;\">2. L&rsquo;huile d&rsquo;argan est cicatrisante</h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">En cas de&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; line-height: inherit; color: #3f90ce; text-decoration-line: none; cursor: pointer;\" href=\"https://www.passeportsante.net/fr/Actualites/Dossiers/DossierComplexe.aspx?doc=a-chaque-probleme-de-peau-sa-solution-naturelle-solution-naturelle-peau-seche-l-huile-d-onagre\" target=\"_blank\" rel=\"noopener\">peau s&egrave;che</a>, de ger&ccedil;ures, de vergetures ou d&rsquo;ecz&eacute;ma, vous trouverez avec l&rsquo;huile d&rsquo;argan un excellent rem&egrave;de.&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">Cette huile a en effet des vertus cicatrisantes assez exceptionnelles</strong>. Elle vous permettra aussi d&rsquo;apaiser les d&eacute;mangeaisons ou les irritations de la peau. Pour assouplir une peau ab&icirc;m&eacute;e par une cicatrice, l&rsquo;huile d&rsquo;argan sera &eacute;galement tr&egrave;s b&eacute;n&eacute;fique.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">En hiver, n&rsquo;h&eacute;sitez pas &agrave; l&rsquo;utiliser comme un baume &agrave; l&egrave;vres. Appliquez-en chaque soir sur vos l&egrave;vres et vous ne souffrirez plus de ger&ccedil;ures. Pensez aussi &agrave; vous en appliquer sur les mains et sur les pieds avant de vous coucher, notamment si vous souffrez fr&eacute;quemment d&rsquo;engelures.&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">Cette huile est particuli&egrave;rement recommand&eacute;e pour les femmes enceintes</strong>&nbsp;pour &eacute;viter les vergetures sur le ventre, le haut des cuisses et les seins.</p>\r\n<div id=\"dynInfeed2\" class=\"dynInFeed\" style=\"box-sizing: inherit; margin: 0px 0px 15px; padding: 5px 0px; background-color: #f7f5f5; border-top: 1px solid #e3e3e3; border-bottom: 1px solid #e3e3e3; text-align: center; display: flex; flex-wrap: wrap; -webkit-box-pack: center; justify-content: center; min-height: 250px;\">&nbsp;</div>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-family: Montserrat, Helvetica, Arial, sans-serif; color: #333333; text-rendering: optimizelegibility; font-size: 1.375rem; line-height: 1.4;\">3. L&rsquo;huile d&rsquo;argan combat l&rsquo;acn&eacute; efficacement</h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">Aussi surprenant que cela puisse para&icirc;tre, l&rsquo;huile d&rsquo;argan est redoutable pour combattre l&rsquo;acn&eacute;. On aurait tendance &agrave; se dire qu&rsquo;appliquer une huile sur une peau grasse ne pourrait qu&rsquo;aggraver la situation mais gr&acirc;ce &agrave; son pouvoir antioxydant,&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">l&rsquo;huile d&rsquo;argan permet aux peaux acn&eacute;iques de retrouver leur &eacute;quilibre, sans obstruer les pores.</strong></p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">Par ailleurs, ses vertus cicatrisantes permettront &agrave; la peau de se r&eacute;g&eacute;n&eacute;rer plus facilement et de&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">r&eacute;duire les inflammations cutan&eacute;es</strong>. Pour l&rsquo;utiliser dans le traitement d&rsquo;une peau acn&eacute;ique, il faut appliquer quelques gouttes le matin et le soir sur une peau propre et d&eacute;maquill&eacute;e.</p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-family: Montserrat, Helvetica, Arial, sans-serif; color: #333333; text-rendering: optimizelegibility; font-size: 1.375rem; line-height: 1.4;\">4. L&rsquo;huile d&rsquo;argan prot&egrave;ge les cheveux et les nourrit</h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">Vous voulez en finir avec ces masques de cheveux bourr&eacute;es de produits toxiques&nbsp;? Utilisez l&rsquo;huile d&rsquo;argan. Pour prendre soin de vos cheveux, cette huile est toute indiqu&eacute;e.&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">Elle les nourrira en profondeur et les prot&egrave;gera des agressions ext&eacute;rieures</strong>. Elle r&eacute;parera les pointes fourchues et rendra vos cheveux plus doux et plus brillants.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">L&rsquo;huile d&rsquo;argan est ch&egrave;re, il faut donc l&rsquo;utiliser intelligemment. Ne vous faites pas un masque avec l&rsquo;huile mais ajoutez&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">uniquement quelques gouttes d&rsquo;huiles d&rsquo;argan &agrave; votre shampoing</strong>. Vous serez vraiment &eacute;tonn&eacute; du r&eacute;sultat&nbsp;: des cheveux plus forts et plus soyeux. Pour ceux qui ont fait des colorations, cette huile permet de conserver plus longtemps l&rsquo;&eacute;clat de la couleur choisie.</p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-family: Montserrat, Helvetica, Arial, sans-serif; color: #333333; text-rendering: optimizelegibility; font-size: 1.375rem; line-height: 1.4;\">5. L&rsquo;huile d&rsquo;argan prot&egrave;ge contre les maladies cardiovasculaires</h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">Au Maroc, depuis des si&egrave;cles, l&rsquo;huile d&rsquo;argan est consomm&eacute;e pour pr&eacute;venir les maladies cardiovasculaires. De nombreuses &eacute;tudes ont en effet montr&eacute; que&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">cette huile permettait de r&eacute;duire le risque cardiovasculaire</strong>&nbsp;car elle joue un r&ocirc;le sur la pression art&eacute;rielle, les lipides plasmatiques et le statut antioxydant. Elle poss&egrave;de &eacute;galement des propri&eacute;t&eacute;s anticoagulantes, ce qui est important dans la pr&eacute;vention de maladies cardiaques.</p>\r\n<div id=\"dynInfeed3\" class=\"dynInFeed\" style=\"box-sizing: inherit; margin: 0px 0px 15px; padding: 5px 0px; background-color: #f7f5f5; border-top: 1px solid #e3e3e3; border-bottom: 1px solid #e3e3e3; text-align: center; display: flex; flex-wrap: wrap; -webkit-box-pack: center; justify-content: center; min-height: 250px;\">&nbsp;</div>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 1.875rem; padding: 0px; font-size: 1rem; line-height: 1.5; text-rendering: optimizelegibility;\">D&rsquo;autres &eacute;tude ont avanc&eacute; que l&rsquo;huile d&rsquo;argan poss&eacute;dait des niveaux &eacute;lev&eacute;s de tocoph&eacute;rols et de squal&egrave;nes, ce qui ferait d&rsquo;elle un produit capable de&nbsp;<strong style=\"box-sizing: inherit; line-height: inherit;\">ralentir la prolif&eacute;ration de cellules canc&eacute;reuses de la prostate</strong>. Ses vertus antioxydantes sont quoi qu&rsquo;il arrive excellentes dans la pr&eacute;vention des cancers.</p>\r\n</div>\r\n</div>', 'posts\\March2021\\dOq8SuEkUxcNFAvyHsJN.jpg', 'les-5-bienfaits-de-l-huile-d-argan', 'La mode est au retour au naturel. On ne met plus de produits chimiques sur son visage et dans ses cheveux et on se tourne vers des produits plus sains.', 'La mode est au retour au naturel. On ne met plus de produits chimiques sur son visage et dans ses cheveux et on se tourne vers des produits plus sains. Avec l’huile d’argan, vous serez certain de trouver le nouveau compagnon indispensable de votre quotidien.', 'PUBLISHED', 0, '2021-03-30 10:39:11', '2021-03-30 10:40:53'),
(7, 1, 1, 'Huile de pépins de figue de barbarie﻿', NULL, NULL, '<h2 style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif; line-height: 1.35; color: #c1b17e;\"><a style=\"box-sizing: border-box; color: #c1b17e; text-decoration-line: none; background-color: transparent; transition: all 0.4s ease 0s; outline: none;\" href=\"http://www.arganmaroc.mahuile_de_figue_de_barbarie.html/\">Huile de p&eacute;pins de figue de barbarie</a></h2>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><em style=\"box-sizing: border-box;\">La Figue de Barbarie, un fruit pas comme les autres&nbsp;!</em></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">&nbsp;</span></span>La figue de barbarie est produite par le Figuier de Barbarie, un cactus qui se trouve dans les pays de la M&eacute;diterran&eacute;e, en Am&eacute;rique centrale et au Mexique.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Le Figuier de Barbarie poss&egrave;de des tiges &eacute;paisses qui ressemblent &agrave; des raquettes. Les fleurs qu&rsquo;il produit en printemps sont de couleur jaune vif. La peau des fruits produits par l&rsquo;arbre est de couleur verte, parfois vert jaun&acirc;tre ou rouge. Quant &agrave; la pulpe, elle est soit rouge, verte ou jaune. Elle est sucr&eacute;e et contient un grand nombre de graines. La moisson se fait de fin juillet &agrave; septembre.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Il existe deux types de Figue de Barbarie&nbsp;:</p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding-left: 20px; list-style-position: initial; list-style-image: initial; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box;\">Opuntia. Ficus-indica&nbsp;: C&rsquo;est le plus r&eacute;pandu, il donne des grandes fleurs jaune vif et des fruits de couleur rouge, jaune ou blanch&acirc;tre.&nbsp; Il poss&egrave;de aussi des tiges inermes et des articles tr&egrave;s larges.</li>\r\n<li style=\"box-sizing: border-box;\">Opunita. Vulgaris&nbsp;: Il donne des fleurs jaune soufre, des fruits rouges pas tr&egrave;s granuleux et des tiges contenant beaucoup de soies courtes. Quant aux articles, ils sont de petite taille.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">La figue de Barbarie de type Opuntia ficus-indica est consid&eacute;r&eacute;e comme un fruit exotique. Le fruit mesure 5 &agrave; 8 cm de longueur, sa peau est tr&egrave;s &eacute;paisse et couverte d&rsquo;&eacute;pines. La pulpe est de couleur rouge ou corail, et surtout pleine de graines fines consommables sans danger.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Appart la consommation des fruits frais, l&rsquo;<span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">huile de p&eacute;pins de figue de barbarie</span></span>&nbsp;est tr&egrave;s en vogue. Sauf qu&rsquo;il est difficile d&rsquo;en produire vu qu&rsquo;elle ne provient qu&rsquo;en pressant &agrave; froid de grandes quantit&eacute;s de graines d&rsquo;Opuntia ficus-indica, ce qui explique les prix de vente tr&egrave;s &eacute;lev&eacute;s.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Elle est tr&egrave;s riche en vitamine E et en st&eacute;rols, ce qui fait d&rsquo;elle un excellent protecteur de la peau et un anti-&acirc;ge incontournable. Elle regorge aussi d&rsquo;acides gras essentiels aux vertus adoucissantes et r&eacute;paratrices.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Huile de p&eacute;pins de figue de barbarie&nbsp;:</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Organe press&eacute; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : P&eacute;pin de figue barbarie</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Pays d&rsquo;origine &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Maroc (r&eacute;gion des A&iuml;t Baamran au sud)</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Culture &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: culture sauvage en plein milieu naturel, sans utilisation d&rsquo;engrais ni de pesticides.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Qualit&eacute; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 100% pure et naturelle, vierge.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Type d&rsquo;extraction &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: pression &agrave; froid, sans aucun traitement chimique</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">A utiliser de pr&eacute;f&eacute;rence &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Avant 2 ans apr&egrave;s sa date d&rsquo;extraction.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Propri&eacute;t&eacute;s Organoleptiques :&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Aspect : liquide &agrave; 20&deg;C</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Couleur : jaune &agrave; verte</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Odeur : gourmande, assez v&eacute;g&eacute;tale</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Conditions de conservation :</span></span>&nbsp;au sec, &agrave; l&rsquo;abri de la chaleur et de la lumi&egrave;re</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Composition en acides gras</span></span>&nbsp;: (A titre indicatif. Il change relativement selon les Lots)</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Acides gras essentiels poly-insatur&eacute;s (AGPI ou AGE) ou vitamine F : acide linol&eacute;ique (om&eacute;ga 6)</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Acides gras mono-insatur&eacute;s (AGMI) : acide ol&eacute;ique (om&eacute;ga 9)</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Acides gras satur&eacute;s (AGS) : acide palmitique</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Propri&eacute;t&eacute;s cosm&eacute;tiques:</span></span>&nbsp;nourrissantes, protectrices, adoucissantes, assouplissantes, r&eacute;g&eacute;n&eacute;rante, redonnent &eacute;clat et souplesse, pr&eacute;servent d&rsquo;un vieillissement pr&eacute;matur&eacute;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Autres constituants actifs :</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tocoph&eacute;rols et tocotri&eacute;nols environ 1000 mg/kg (anti-oxydants puissants),</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; st&eacute;rols : beta-sitost&eacute;rol, campesterol, stigmasterol</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alcool insaponifiable : hexacosanol</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Densit&eacute; : 0.92 (lot JV139)</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">l&rsquo;huile de p&eacute;pins de figue de barbarie&nbsp;est une huile tr&egrave;s pr&eacute;cieuse et tr&egrave;s rare obtenue uniquement par pression &agrave; froid des graines d&rsquo;Opuntia ficus indica.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Sa richesse exceptionnelle en Vitamine E (environ 1000 mg/kg) et en st&eacute;rols (environ 10 g/kg) lui conf&egrave;re une aptitude hors du commun &agrave; prot&eacute;ger la peau contre les radicaux libres.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Elle contient par ailleurs des quantit&eacute;s importantes d&rsquo;acides gras essentiels, dont l&rsquo;acide linol&eacute;ique (om&eacute;ga 6), et constitue donc un excellent adoucissant et r&eacute;parateur cutan&eacute;.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Cette huile est donc un alli&eacute; exceptionnel pour lutter contre le vieillissement cutan&eacute;.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Son co&ucirc;t vient du rendement tr&egrave;s faible en huile : il n&rsquo;y a que 5% d&rsquo;huile dans la petite graine.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Utilisations :</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Propri&eacute;t&eacute;s :</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Anti-radicalaire et anti-&acirc;ge hors du commun, d&ucirc; &agrave; la tr&egrave;s forte teneur en vitamine E, en acide linol&eacute;ique (om&eacute;ga 6)</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Excellent &eacute;mollient, adoucissant pour la peau</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; R&eacute;parateur cutan&eacute;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Indications :</span></span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Soins anti-&acirc;ge haut de gamme : cr&egrave;mes, laits, s&eacute;rums, huiles&hellip;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Soins pour peaux tr&egrave;s s&egrave;ches, pour les mains, pour les pieds</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Soins capillaires pour cheveux secs</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">&ndash;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Procurant confort et douceur &agrave; la peau, l&rsquo;huile de p&eacute;pins figue de barbarie est &agrave; appliquer quotidiennement. N&eacute;anmoins, il est conseill&eacute; que L&rsquo;huile de p&eacute;pins de figue de barbarie ne doit, en aucun cas, &ecirc;tre utilis&eacute;e comme huile de bronzage. Il est pr&eacute;f&eacute;rable de l&rsquo;utiliser, pour usage de peau, le soir, apr&egrave;s sa douche, et avant d&rsquo;aller se coucher, afin de faciliter son absorption par le corps en &eacute;tat de repos. D&eacute;posez sur les zones &agrave; traiter une fine couche d&rsquo;huile de figue de barbarie. Un l&eacute;ger massage autour de ces zones am&eacute;liorera la p&eacute;n&eacute;tration de l&rsquo;huile.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\"><span style=\"box-sizing: border-box; font-weight: bolder;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">L&rsquo;huile de p&eacute;pins de figue de barbarie renferme deux AGE :</span></span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding-left: 20px; list-style-position: initial; list-style-image: initial; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">\r\n<li style=\"box-sizing: border-box;\">Acide linol&eacute;ique, d&eacute;sign&eacute; sous le sigle AL. De constitution chimique C 18 :</li>\r\n<li style=\"box-sizing: border-box;\">l&rsquo;AL est plus connu sous le nom de &laquo; vitamine F &raquo;. C&rsquo;est le pr&eacute;curseur de la famille des om&eacute;ga-6. Le second acide gras que contient l&rsquo;huile de p&eacute;pins de figue de barbarie est l&rsquo;acide alpha-linol&eacute;nique. Sa constitution chimique est C 18 :</li>\r\n<li style=\"box-sizing: border-box;\">et il fait partie de la famille des om&eacute;ga-3. Tenant un r&ocirc;le structurel dans les membranes cellulaires, il assure &eacute;galement des r&ocirc;les fonctionnels.</li>\r\n<li style=\"box-sizing: border-box;\">Parmi ces derniers, on peut citer la diminution de la pression art&eacute;rielle chez les hypertendus et la diminution de la triglyc&eacute;rid&eacute;mie chez les personnes pr&eacute;sentant un taux trop &eacute;lev&eacute; en cette substance. C&rsquo;est &agrave; ces AGE que sont dues les propri&eacute;t&eacute;s anti-&acirc;ges de l&rsquo;huile de p&eacute;pins de figue de barbarie.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">L&rsquo;huile de p&eacute;pins de figue de barbarie apporte aussi du carot&egrave;ne, des licop&egrave;nes, des flavono&iuml;des, des vitamines A, E, B et d&rsquo;autres &eacute;l&eacute;ments&hellip;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #666666; font-family: \'Libre Franklin\', Arial, Helvetica, sans-serif;\">Tigontaf &nbsp;pr&eacute;sente son huile de p&eacute;pins de figue de barbarie sous un flacon de 30 ml, soit en verre claire Standard, soit en Flacon PET dot&eacute; de pulv&eacute;risateur Spray.</p>', 'posts\\March2021\\pshFDsLrRJh8ruedY1ir.jpg', 'huile-de-pepins-de-figue-de-barbarie', 'La figue de barbarie est produite par le Figuier de Barbarie, un cactus qui se trouve dans les pays de la Méditerranée, en Amérique centrale et au Mexique.', NULL, 'PUBLISHED', 0, '2021-03-30 10:45:00', '2021-03-30 10:45:00');

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
(10, 'ARGAN TORRÉFIÉE 1L', 'ARGAN TORRÉFIÉE 1L', NULL, 150, 'Huile De Cuisine Fine, Torréfiée, Pressée À Froid\r\n\r\nL’huile d’argan bio torréfiée est tirée, selon un procédé complexe de tradition berbère, des graines torréfiées de l’arganier (Argania spinosa) qui pousse dans le sud du Maroc. Délicieuse huile de cuisine fine, elle a conquis la place d’honneur chez les cuisiniers exigeants. L’huile d’argan se compose à env. 80 % d’acides gras insaturés biologiquement actifs, notamment des acides linoléique et oléique, qui participent au maintien d’un taux normal de cholestérol dans le sang (à partir de 10 g d’acide linoléique/jour ce qui correspond à env. 30 g d’huile d’argan bio torréfiée). Son léger goût de noisette est particulièrement apprécié pour affiner les salades et les plats chauds, elle peut également être consommée pure (1-3 cuillères à thé par jour).', 0, 'products\\March2021\\XXCLk6V7vf5YDnK1HjjM.jpg', '1', '2021-03-28 07:34:00', '2021-03-28 07:35:37', NULL, NULL),
(11, 'masque capillaire', 'masque_capillaire', 'masque_capillaire', 70, 'Découvrez la texture fondante et nourrissante du masque capillaire à l\'huile d\'Argan Douce Nature et laissez vous transporter par sa composition aromatique épicée. \r\n\r\nSpécialement adapté aux cheveux secs, abîmés et cassants, il restructure et lisse la fibre capillaire. \r\n\r\nSes actifs:\r\n- Huile d’argan bio et équitable (origine Maroc) : hydrate et nourrit\r\n- Beurre de karité et équitable (origine Bénin) : nourrit la fibre capillaire\r\n- Huile de baobab et équitable (origine Mali) : nourrissante\r\n- Aloe vera bio et équitable (origine Guatemala) : hydratant, nourrissant\r\n\r\n\r\nAprès le shampooing, appliquez sur cheveux rincés et essorés, en répartissant le masque uniformément  jusqu\'aux pointes. Laissez poser 5 à 10 minutes avant de rincer', 0, 'products\\March2021\\5mYwQSZl5hS06paedePV.jpg', '2', '2021-03-30 10:04:10', '2021-03-30 10:04:10', NULL, NULL),
(12, 'savon traditionel', 'savon_traditionel', 'savon_traditionel', 50, 'Le savon est un produit liquide ou solide composé de molécules amphiphiles obtenues par réaction chimique entre un corps gras et une base forte, spécifiquement l\'hydroxyde de sodium pour le savon ou l\'hydroxyde de potassium pour le savon noir, c\'est donc le sel d\'un corps grasnote 1 et du potassium ou du sodium2. Cette réaction est en général opérée à chaud ; elle est possible à froid avec certains ingrédients.\r\n\r\nSon caractère amphiphile lui donne des propriétés caractéristiques, notamment la capacité de ses composants moléculaires à se placer à l\'interface entre la phase aqueuse (solvant hydrophile) et la phase lipidique (graisse hydrophobe), la formation de mousse et la stabilisation d\'émulsions utiles pour le lavage3', 0, 'products\\March2021\\iqMF62GZhG0P8HwoU2DO.jpg', '2', '2021-03-30 10:05:58', '2021-03-30 10:05:58', NULL, NULL),
(13, 'savon de l\'huil d\'argan', 'savon-de-l\'huil-d\'argan', 'savon-de-l\'huil-d\'argan', 50, 'Le savon est un produit liquide ou solide composé de molécules amphiphiles obtenues par réaction chimique entre un corps gras et une base forte, spécifiquement l\'hydroxyde de sodium pour le savon ou l\'hydroxyde de potassium pour le savon noir, c\'est donc le sel d\'un corps grasnote 1 et du potassium ou du sodium2. Cette réaction est en général opérée à chaud ; elle est possible à froid avec certains ingrédients.\r\n\r\nSon caractère amphiphile lui donne des propriétés caractéristiques, notamment la capacité de ses composants moléculaires à se placer à l\'interface entre la phase aqueuse (solvant hydrophile) et la phase lipidique (graisse hydrophobe), la formation de mousse et la stabilisation d\'émulsions utiles pour le lavage3', 0, 'products\\March2021\\u8AXW1nB8ENIgRuzcyRe.jpg', '2', '2021-03-30 10:06:53', '2021-03-30 10:06:53', NULL, NULL),
(14, 'serum naturel', 'serum-naturel', 'serum-naturel', 70, 'Le sérum, parfois appelé élixir, est une association d’actifs qui va soigner la peau en profondeur en fonction de nos besoins. Il est composé d’une huile végétale et d’une ou plusieurs huiles essentielles. On en entend souvent parler chez les grandes marques de parfumeries dans les produits anti-âge, anti-tâches et tout le blabla, mais comme on le sait, la composition n’est jamais très clean et les ingrédients qui pourraient régler tous nos problèmes ne composent qu’une toute petite partie du produit. Mon but aujourd’hui, c’est de vous proposer un sérum simple, personnalisable et terriblement efficace, adapté à votre type de peau.', 0, 'products\\March2021\\acL6lUA4rWswBM0iJGjV.jpg', '2', '2021-03-30 10:08:01', '2021-03-30 10:08:01', NULL, NULL),
(15, 'shampoon 200 ml', 'shampoon_200ml', 'shampoon_200ml', 70, 'Les shampooings sont des produits destinés à laver et purifier le cuir chevelu ainsi que les cheveux.\r\nA cela s\'ajoute un atout aujourd\'hui indispensable : l\'aspect soin, car un shampooing doit aussi embellir, démêler, nourrir nos cheveux. Quand le produit d\'hygiène basique devient également un soin...\r\nTechniquement, les shampooings sont des produits aqueux contenant des tensioactifs moussants et détergents.\r\n\r\nLes tensioactifs sont capables de détacher les graisses absorbées à la surface du cheveu. Les corps gras se retrouvent alors sous forme d\'amas en suspension dans l\'eau et sont évacués lors du rinçage.\r\nToutefois, il existe aussi des shampooings secs, à base de poudres de plantes, très pratiques entre deux shampooings pour rafraîchir le  cuir chevelu.', 0, 'products\\March2021\\7qeJcHVmUEXJ71tvmxFd.jpg', '2', '2021-03-30 10:09:39', '2021-03-30 10:09:39', NULL, NULL),
(16, 'huile de sésan', 'huile_de_sésan', 'huile_de_sésan', 80, 'Composition de l\'huile de sésame\r\nLa composition de l’huile végétale est fortement influencée par les conditions de production. Pour s’assurer de sa qualité, il est recommandé de sélectionner une huile vierge extra, obtenue par pression à froid, idéalement d’origine biologique.\r\n\r\nPour en savoir plus sur les qualités nutritionnelles (types de vitamines, notion d’acides gras insaturés, saturés et trans), consultez le guide pratique des huiles végétales.\r\n\r\nComposition en acides gras \r\nAG mono insaturés : 39% à 42% d\'acide oléique (Omega9)\r\nAG poly insaturés : 39% à 41% d\'acide linoléique (Omega6)\r\nAG saturés : 8% à 10% d\'acide palmitique, 4% à 5% d\'acide stéarique\r\n\r\nAutres constituants actifs\r\nInsaponifiables environ 2% (Vitamines E et B, provitamine A, sesésamin, sésamolin, sésamol, sésaminol, Lécithine, Sélénium, Phytostérol)\r\n\r\nModes d\'utilisation de l\'huile de sésame\r\nApplication cutanée \r\nOnction, massage, application locale, bain (pour cet usage, l\'huile végétale doit être mélangée à un tensio-actif tel que : gel douche, savon liquide).\r\nAssociation possible avec les huiles essentielles. Consulter le guide des huiles essentielles.', 0, 'products\\March2021\\JWz1K6JaTHVWoC7CQYLT.jpg', '2', '2021-03-30 10:11:56', '2021-03-30 10:11:56', NULL, NULL),
(17, 'huile dargan non torréfiée', 'huile-dargan_non_torréfiée', 'huile-dargan_non_torréfiée', 150, 'Retrouvez toutes nos huiles nobles, de l’Amande Douce au Chanvre en passant par les graines de Ricin, toutes nos matières premières sont issues de l’agriculture biologique. L’huile d’Argan Non Torréfiée est 100% BIO garantie ECOCERT, d’une suprême qualité. Huile nourrissante‎,‎ adoucissante‎,‎ protectrice‎,‎ assouplissante‎,‎ raffermissante‎,‎ cicatrisante et antioxydante‎. ‎Idéale pour les peaux sèches‎,‎ ridées et dévitalisées‎.‎ Prévient le vieillissement précoce de la peau à laquelle elle redonne souplesse et élasticité‎.‎ Efficace contre les gerçures et protège des agressions extérieures‎.‎ Revitalise les cheveux secs et ternes qui retrouvent éclat et brillance et fortifie les ongles fragiles et cassants‎.‎ CONSEIL D’UTILISATION : Appliquez régulièrement l’huile après la douche sur la peau, le visage, les mains et les ongles ou au coucher sur les cheveux en fonction du soin préconisé', 0, 'products\\March2021\\RN6POlZcZLDwQBrHPWun.jpg', '2', '2021-03-30 10:13:01', '2021-03-30 10:13:01', NULL, NULL),
(18, 'huile de niger', 'huile-de-niger', 'huile-de-niger', 70, 'L\'huile de nigelle est particulièrement reconnue pour stimuler la digestion et pour son action antiallergique, notamment sur la sphère ORL et respiratoire.\r\n\r\nBienfaits principaux \r\nAmélioration des pathologies respiratoires\r\nAmélioration des pathologies ORL\r\nHépato-protectrice et gastro-protectrice (et renforcement du système digestif)\r\nAnti-asthmatique (broncho-dilatatrice)(5)\r\nPrévention des infections\r\nAutres bienfaits :\r\n\r\nAnti-parasitaire\r\nAnticholestérolémiante (baisse du LDL cholestérol et des triglycérides)\r\nAnti-microbienne (4)\r\nStimulante immunitaire\r\nAide à augmenter la résistance à l\'insuline (7)', 0, 'products\\March2021\\MIUsY1euEQ2OSaHcJfBc.jpg', '2', '2021-03-30 10:14:37', '2021-03-30 10:14:37', NULL, NULL),
(19, 'lait corporel 100ml', 'lait_corporel_100ml', 'lait_corporel_100ml', 50, 'Le lait corporel est un produit indispensable pour le bien être de sa peau. Sa formule mi-aqueuse mi-huileuse dépose une fine couche crémeuse qui empêche l’eau que nous éliminons naturellement de s’évaporer et donc de déshydrater petit à petit notre corps.\r\n\r\n\r\nPréparation de la peau : \r\nPour que la crème puisse pénétrer facilement dans la peau et être au maximum hydratante, il est important qu’elle soit préalablement exfoliée pour qu’elle puisse être débarrassée de toutes les petites peaux mortes. Pour cela, choisissez un bon exfoliant et massez vous le corps en faisant des petits mouvements circulaires en insistant sur les zones un peu plus épaisses comme vos talons et vos coudes.', 0, 'products\\March2021\\KNpKtJ7skViW1UCLC3pp.jpg', '2', '2021-03-30 10:15:56', '2021-03-30 10:15:56', NULL, NULL),
(20, 'la stévia', 'la-stévia', 'la-stévia', 60, 'Le stévia rebaudiana est une plante d’origine tropicale qui a besoin, en pleine terre comme en pot, d’un environnement proche de son environnement naturelle, humidité et chaleur.\r\n\r\nDe culture et d’entretien faciles, on utilise donc ses feuilles pour leur grand pouvoir sucrant et faible apport en calories.\r\n\r\nCulture du stévia en pleine terre :\r\n\r\nAvant tout, sachez que le stevia ne résiste pas aux températures inférieures à 5° et n’est donc vivace que dans les pays relativement chauds.\r\n\r\nEn région océanique ou méditerranéenne on peut tenter de cultiver le stevia au risque de voir quelques températures négatives faire dépérir la plante.\r\n\r\n On cultive donc cette plante de stevia en terre sous nos latitudes comme une annuelle.\r\n\r\n Choisissez un endroit plutôt ensoleillé.\r\n\r\n Arrosez régulièrement en cas de sécheresse et de fortes chaleurs.', 0, 'products\\March2021\\6rfUFFsxZRX8VzB4yT4q.jpg', '1', '2021-03-30 10:17:09', '2021-03-30 10:17:09', NULL, NULL),
(21, 'gel-moussant_nettoyant-visage', 'gel-moussant_nettoyant-visage', 'gel-moussant_nettoyant-visage', 90, 'Gel nettoyant visage : une promesse de fraîcheur et de pureté pour votre peau sensible !\r\nParmi les gestes beauté à adopter au quotidien, le nettoyage du visage est essentiel : toute la journée et même pendant la nuit, son épiderme accumule des impuretés qui compromettent sa santé et ternissent sa beauté. Pollution, transpiration, poussière ... Pour garder une peau saine et éviter les imperfections, il est nécessaire de la nettoyer soigneusement deux fois par jour. Alors pourquoi ne pas choisir un gel nettoyant pour votre routine beauté ? Pratique et rapide d’application, il désincruste les pores et purifie complètement le visage.', 0, 'products\\March2021\\MkkHohLdHdn1qQqlOZmA.jpg', '2', '2021-03-30 10:18:23', '2021-03-30 10:18:23', NULL, NULL),
(22, 'feuilles-de-moringa-séchées', 'feuilles-de-moringa-séchées', 'feuilles-de-moringa-séchées', 50, 'La feuille de Moringa est la partie comestible la plus consommée de la plante Moringa Oleifera. Si elle peut-atteindre 25 cm, ce sont ses folioles d’une taille de 1cm qui la représentent le plus dans l’imaginaire collectif. On les retrouve dans la composition de nombreux plats à travers le monde, notamment cuite, où le Moringa est plébiscité pour ses vertus santé. Plus que dans les racines, les fleurs ou les graine, c’est dans la feuilles que l’on trouve la majorité des bienfaits du Moringa.', 0, 'products\\March2021\\MgUTh60rNrJl6Uek4poM.jpg', '1', '2021-03-30 10:19:13', '2021-03-30 10:19:13', NULL, NULL),
(23, 'exfoliant visage café', 'exfoliant_visage_café1', 'exfoliant_visage_café1', 90, 'ous recherchez un gommage du corps efficace, pas cher et facile à faire à la maison ? Et si vous vous laissiez tenter par le gommage au marc de café ? En effet, même s\'il n\'est pas spécialement ragoûtant une fois récupéré au fond du filtre, le marc de café est un produit qui présente de nombreux bienfaits santé et beauté. Ceci est tout simplement dû à la caféine qu\'il renferme, et qui possède des vertus stimulantes et drainantes pour l\'organisme... mais également l\'épiderme !\r\n\r\nEt ce n\'est pas tout : la caféine est également utilisée dans de nombreux produits cosmétiques - et notamment des crèmes anti-cellulite – parce qu\'elle aide l\'organisme à absorber les graisses avant que ces dernières ne soient stockées.', 0, 'products\\March2021\\DQg6UA9mG8TfBSyspia9.jpg', '2', '2021-03-30 10:21:09', '2021-03-30 10:21:09', NULL, NULL),
(24, 'Créme antirides', 'créme-antirides', 'créme-antirides', 84, 'Est une crème nourrissante à l\' huile d\' argan qui est riche en acides gras essentiels et en vitamine E. C\'est une crème anti-âge complète, restructurante, hydratante et protecteur qui relance les fonctions vitales de la peau et lutte contre les radicaux libres. cette crème nourrit et restructure votre peau pendant la nuit.', 0, 'products\\March2021\\veo4HHJSNYOouK5ezj48.jpg', '2', '2021-03-30 10:22:09', '2021-03-30 10:22:09', NULL, NULL),
(25, 'Créme de jour a l\'huile argan', 'créme_de_jour_a_lhuile_argan', 'créme_de_jour_a_lhuile_argan', 79, 'La crème de jour à l’huile d’Argan, enrichie au beurre de Karité et à la gelée royale, est une crème protectrice et réparatrice. Elle hydrate et nourrit votre peau pour lui redonner jeunesse, douceur et beauté.\r\n\r\nL’huile d’argan est très riche en actifs insaponifiables recherchés en cosmétique, comme la vitamine E, les omégas 6 et 9, les stérols et les composés phénoliques. Elle possède des propriétés antioxydantes qui ralentissent le vieillissement cutané. Elle protège et assouplit la peau.\r\n\r\nLe beurre de karité hydrate et protège la peau. Il apporte élasticité et souplesse. Grâce à la vitamine F et aux acides gras contenus dans ce beurre naturel, il permet d’atténuer les rides et favorise le renouvellement cellulaire.\r\n\r\nLa gelée royale renforce l’immunité et permet de lutter contre la fatigue.\r\n\r\nLa gamme soins visage offrent à votre peau tous les bienfaits de la nature marocaine. Fabriqués à base des composantes naturelles!\r\n\r\nAppliquer généreusement chaque jour sur le visage, en insistant sur les zones sèches. Masser jusqu’à complète absorption.', 0, 'products\\March2021\\E8YBBiFz4HJr3WBk4DXK.jpg', '2', '2021-03-30 10:23:36', '2021-03-30 10:23:36', NULL, NULL),
(26, 'Chassoul naturel', 'chassoul-naturel', 'chassoul-naturel', 70, 'Véritable \"terre qui lave\", le Rhassoul est une argile volcanique récoltée dans la région du Moyen Atlas au Maroc. Il s\'utilise pour préparer des shampooings en pâte doux et purifiants grâce à son aptitude exceptionnelle à absorber les impuretés sans irriter la peau. C\'est un élément incontournable des rituels du hammam. A la différence des shampooings et savons, le Rhassoul ne contient aucun tensioactif et nettoie selon un processus physique en absorbant les impuretés et les graisses. Il respecte ainsi le film hydrolipidique de la peau et du cheveu et n\'irrite pas les glandes sébacées.', 0, 'products\\March2021\\B6owBuqxiF5R0u1RuaTX.jpg', '2', '2021-03-30 10:24:49', '2021-03-30 10:24:49', NULL, NULL);

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
(1, 'admin', 'Administrator', '2021-03-30 09:43:05', '2021-03-30 09:43:05'),
(2, 'user', 'Normal User', '2021-03-30 09:43:05', '2021-03-30 09:43:05');

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
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-03-30 09:43:17', '2021-03-30 09:43:17'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-03-30 09:43:18', '2021-03-30 09:43:18'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-03-30 09:43:19', '2021-03-30 09:43:19');

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
(2, 2, 'youssef bou gf', 'superadggmin@example.com', 'users/default.png', NULL, '$2y$10$L8Ix449BYos0V9DRDz1IwuybCa3ei3Qqxc520RvlanU5ELpu/1tda', NULL, NULL, '2021-03-31 22:12:42', '2021-03-31 22:12:42'),
(3, 2, 'amine', 'amine@amine.com', 'users/default.png', NULL, '$2y$10$5NUd1hq8IjbPKzIf7VrfOOAWTBgZgP7Ox6vRqtBR8ld/lOWeywk3q', NULL, NULL, '2021-03-31 22:13:12', '2021-03-31 22:13:12'),
(4, 1, 'youssefbouzerb', 'bouzerb90@gmail.com', 'users/default.png', NULL, '$2y$10$JUrGkmsv/vhcNFgIpht0bemAIoYkfx86s.WdQPpOfeAK1OzlpHYE2', 'ltuF5Ap49RdRPEm5bBDCVPj6lubOKaTVslhKcJ53WgI940NhsBhLex3eRSNS', '{\"locale\":\"en\"}', '2021-03-31 22:17:36', '2021-03-31 22:17:36');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(4, 1);

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
(1, 6, 1, '2021-03-30 11:17:04', '2021-03-30 11:17:04');

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
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `orderproducts`
--
ALTER TABLE `orderproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
