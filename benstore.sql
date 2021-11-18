-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2021 lúc 06:18 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `benstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '00_00_00_step1_create_tables_admin', 1),
(2, '00_00_00_step2_create_tables_shop', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('945afd88-65ee-474d-bef2-e502d3b6beb3', NULL, 'SCart Personal Access Client', 'x1ho499kGTSqK3rLK8Zjt2NjXK4y8yp8BqltJLQG', NULL, 'http://localhost', 1, 0, 0, '2021-09-09 11:00:15', '2021-09-09 11:00:15'),
('945afd88-6aff-4016-844a-bd40dcb26eb4', NULL, 'SCart Password Grant Client', 'bCU5Uy8UberWP1tVBKFzsY9dVClFzApA0nYO0TGx', 'users', 'http://localhost', 0, 1, 0, '2021-09-09 11:00:15', '2021-09-09 11:00:15'),
('945b9b48-1682-4ad4-aaaf-078a05cd3766', NULL, 'BenStore - Dịch vụ chăm sóc chất lượng cho vật nuôi Personal Access Client', '2uQLZ9TOAv0gefEYTbwW42tVWtbxLGbTvbUZnKx4', NULL, 'http://localhost', 1, 0, 0, '2021-09-09 18:21:21', '2021-09-09 18:21:21'),
('945b9b48-41ef-4844-b429-b209ba4dd574', NULL, 'BenStore - Dịch vụ chăm sóc chất lượng cho vật nuôi Password Grant Client', 'dTqIyNPT86dhzHjolUDXpZLV3kYrMxf7PNAi4ECV', 'users', 'http://localhost', 0, 1, 0, '2021-09-09 18:21:21', '2021-09-09 18:21:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '945afd88-65ee-474d-bef2-e502d3b6beb3', '2021-09-09 11:00:15', '2021-09-09 11:00:15'),
(2, '945b9b48-1682-4ad4-aaaf-078a05cd3766', '2021-09-09 18:21:21', '2021-09-09 18:21:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_config`
--

CREATE TABLE `sc_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security` int(11) DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_config`
--

INSERT INTO `sc_admin_config` (`id`, `group`, `code`, `key`, `value`, `security`, `store_id`, `sort`, `detail`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, 0, 0, 'Plugins/Payment/Cash::lang.title'),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, 0, 0, 'Shipping Standard'),
(3, 'global', 'env_global', 'ADMIN_LOG', 'on', 0, 0, 0, 'admin.env.ADMIN_LOG'),
(4, 'global', 'env_global', 'ADMIN_FOOTER_OFF', '0', 0, 0, 0, 'admin.env.ADMIN_FOOTER_OFF'),
(5, 'global', 'seo_config', 'url_seo_lang', '0', 0, 0, 1, 'seo.url_seo_lang'),
(6, 'global', 'webhook_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.LOG_SLACK_WEBHOOK_URL'),
(7, 'global', 'webhook_config', 'GOOGLE_CHAT_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL'),
(8, 'global', 'webhook_config', 'CHATWORK_CHAT_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL'),
(9, 'global', 'api_config', 'api_connection_required', '1', 0, 0, 1, 'api_connection.api_connection_required'),
(10, 'global', 'api_config', 'api_mode', '0', 0, 0, 1, 'api_connection.api_mode'),
(11, 'global', 'cache', 'cache_status', '0', 0, 0, 0, 'admin.cache.cache_status'),
(12, 'global', 'cache', 'cache_time', '600', 0, 0, 0, 'admin.cache.cache_time'),
(13, 'global', 'cache', 'cache_category', '0', 0, 0, 3, 'admin.cache.cache_category'),
(14, 'global', 'cache', 'cache_product', '0', 0, 0, 4, 'admin.cache.cache_product'),
(15, 'global', 'cache', 'cache_news', '0', 0, 0, 5, 'admin.cache.cache_news'),
(16, 'global', 'cache', 'cache_category_cms', '0', 0, 0, 6, 'admin.cache.cache_category_cms'),
(17, 'global', 'cache', 'cache_content_cms', '0', 0, 0, 7, 'admin.cache.cache_content_cms'),
(18, 'global', 'cache', 'cache_page', '0', 0, 0, 8, 'admin.cache.cache_page'),
(19, 'global', 'cache', 'cache_country', '0', 0, 0, 10, 'admin.cache.cache_country'),
(20, 'global', 'env_mail', 'smtp_mode', '', 0, 0, 0, 'email.smtp_mode'),
(21, '', 'product_config_attribute', 'product_brand', '1', 0, 1, 0, 'product.config_manager.brand'),
(22, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, 1, 0, ''),
(23, '', 'product_config_attribute', 'product_supplier', '1', 0, 1, 0, 'product.config_manager.supplier'),
(24, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, 1, 0, ''),
(25, '', 'product_config_attribute', 'product_price', '1', 0, 1, 0, 'product.config_manager.price'),
(26, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 1, 0, ''),
(27, '', 'product_config_attribute', 'product_cost', '1', 0, 1, 0, 'product.config_manager.cost'),
(28, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, 1, 0, ''),
(29, '', 'product_config_attribute', 'product_promotion', '1', 0, 1, 0, 'product.config_manager.promotion'),
(30, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, 1, 0, ''),
(31, '', 'product_config_attribute', 'product_stock', '1', 0, 1, 0, 'product.config_manager.stock'),
(32, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, 1, 0, ''),
(33, '', 'product_config_attribute', 'product_kind', '1', 0, 1, 0, 'product.config_manager.kind'),
(34, '', 'product_config_attribute', 'product_property', '1', 0, 1, 0, 'product.config_manager.property'),
(35, '', 'product_config_attribute_required', 'product_property_required', '0', 0, 1, 0, ''),
(36, '', 'product_config_attribute', 'product_attribute', '1', 0, 1, 0, 'product.config_manager.attribute'),
(37, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, 1, 0, ''),
(38, '', 'product_config_attribute', 'product_available', '1', 0, 1, 0, 'product.config_manager.available'),
(39, '', 'product_config_attribute_required', 'product_available_required', '0', 0, 1, 0, ''),
(40, '', 'product_config_attribute', 'product_weight', '1', 0, 1, 0, 'product.config_manager.weight'),
(41, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, 1, 0, ''),
(42, '', 'product_config_attribute', 'product_length', '1', 0, 1, 0, 'product.config_manager.length'),
(43, '', 'product_config_attribute_required', 'product_length_required', '0', 0, 1, 0, ''),
(44, '', 'product_config', 'product_display_out_of_stock', '1', 0, 1, 19, 'product.config_manager.product_display_out_of_stock'),
(45, '', 'product_config', 'show_date_available', '1', 0, 1, 21, 'product.config_manager.show_date_available'),
(46, '', 'product_config', 'product_tax', '1', 0, 1, 0, 'product.config_manager.tax'),
(47, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 1, 1, 'customer.config_manager.lastname'),
(48, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 1, 1, ''),
(49, '', 'customer_config_attribute', 'customer_address1', '0', 0, 1, 2, 'customer.config_manager.address1'),
(50, '', 'customer_config_attribute_required', 'customer_address1_required', '0', 0, 1, 2, ''),
(51, '', 'customer_config_attribute', 'customer_address2', '0', 0, 1, 2, 'customer.config_manager.address2'),
(52, '', 'customer_config_attribute_required', 'customer_address2_required', '0', 0, 1, 2, ''),
(53, '', 'customer_config_attribute', 'customer_address3', '0', 0, 1, 2, 'customer.config_manager.address3'),
(54, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, 1, 2, ''),
(55, '', 'customer_config_attribute', 'customer_company', '0', 0, 1, 0, 'customer.config_manager.company'),
(56, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 1, 0, ''),
(57, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 1, 0, 'customer.config_manager.postcode'),
(58, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 1, 0, ''),
(59, '', 'customer_config_attribute', 'customer_country', '0', 0, 1, 0, 'customer.config_manager.country'),
(60, '', 'customer_config_attribute_required', 'customer_country_required', '0', 0, 1, 0, ''),
(61, '', 'customer_config_attribute', 'customer_group', '0', 0, 1, 0, 'customer.config_manager.group'),
(62, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 1, 0, ''),
(63, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 1, 0, 'customer.config_manager.birthday'),
(64, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 1, 0, ''),
(65, '', 'customer_config_attribute', 'customer_sex', '0', 0, 1, 0, 'customer.config_manager.sex'),
(66, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 1, 0, ''),
(67, '', 'customer_config_attribute', 'customer_phone', '1', 0, 1, 0, 'customer.config_manager.phone'),
(68, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 1, 1, ''),
(69, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 1, 0, 'customer.config_manager.name_kana'),
(70, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 1, 1, ''),
(71, '', 'admin_config', 'ADMIN_NAME', 'BenStore', 0, 1, 0, 'env.ADMIN_NAME'),
(72, '', 'admin_config', 'ADMIN_TITLE', 'BenStore', 0, 1, 0, 'env.ADMIN_TITLE'),
(73, '', 'admin_config', 'ADMIN_LOGO', 'BenStore <span class=\"brand-text font-weight-light\">Admin</span>', 0, 1, 0, 'env.ADMIN_LOGO'),
(74, '', 'display_config', 'product_top', '8', 0, 1, 0, 'store.display.product_top'),
(75, '', 'display_config', 'product_list', '6', 0, 1, 0, 'store.display.list_product'),
(76, '', 'display_config', 'product_relation', '4', 0, 1, 0, 'store.display.relation_product'),
(77, '', 'display_config', 'product_viewed', '4', 0, 1, 0, 'store.display.viewed_product'),
(78, '', 'display_config', 'item_list', '12', 0, 1, 0, 'store.display.item_list'),
(79, '', 'display_config', 'item_top', '8', 0, 1, 0, 'store.display.item_top'),
(80, '', 'order_config', 'shop_allow_guest', '1', 0, 1, 11, 'order.admin.shop_allow_guest'),
(81, '', 'order_config', 'product_preorder', '1', 0, 1, 18, 'order.admin.product_preorder'),
(82, '', 'order_config', 'product_buy_out_of_stock', '1', 0, 1, 20, 'order.admin.product_buy_out_of_stock'),
(83, '', 'order_config', 'shipping_off', '0', 0, 1, 20, 'order.admin.shipping_off'),
(84, '', 'order_config', 'payment_off', '0', 0, 1, 20, 'order.admin.payment_off'),
(85, '', 'email_action', 'email_action_mode', '0', 0, 1, 0, 'email.email_action.email_action_mode'),
(86, '', 'email_action', 'email_action_queue', '0', 0, 1, 1, 'email.email_action.email_action_queue'),
(87, '', 'email_action', 'order_success_to_admin', '0', 0, 1, 1, 'email.email_action.order_success_to_admin'),
(88, '', 'email_action', 'order_success_to_customer', '0', 0, 1, 2, 'email.email_action.order_success_to_cutomer'),
(89, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, 1, 3, 'email.email_action.order_success_to_cutomer_pdf'),
(90, '', 'email_action', 'customer_verify', '0', 0, 1, 4, 'email.email_action.customer_verify'),
(91, '', 'email_action', 'welcome_customer', '0', 0, 1, 4, 'email.email_action.welcome_customer'),
(92, '', 'email_action', 'contact_to_admin', '1', 0, 1, 6, 'email.email_action.contact_to_admin'),
(93, '', 'smtp_config', 'smtp_host', '', 0, 1, 1, 'email.config_smtp.smtp_host'),
(94, '', 'smtp_config', 'smtp_user', '', 0, 1, 2, 'email.config_smtp.smtp_user'),
(95, '', 'smtp_config', 'smtp_password', '', 0, 1, 3, 'email.config_smtp.smtp_password'),
(96, '', 'smtp_config', 'smtp_security', '', 0, 1, 4, 'email.config_smtp.smtp_security'),
(97, '', 'smtp_config', 'smtp_port', '', 0, 1, 5, 'email.config_smtp.smtp_port'),
(98, '', 'smtp_config', 'smtp_name', '', 0, 1, 6, 'email.config_smtp.smtp_name'),
(99, '', 'smtp_config', 'smtp_from', '', 0, 1, 7, 'email.config_smtp.smtp_from'),
(100, '', 'url_config', 'SUFFIX_URL', '.html', 0, 1, 0, 'admin.env.SUFFIX_URL'),
(101, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 1, 0, 'admin.env.PREFIX_SHOP'),
(102, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 1, 0, 'admin.env.PREFIX_BRAND'),
(103, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 1, 0, 'admin.env.PREFIX_CATEGORY'),
(104, '', 'url_config', 'PREFIX_CATEGORY_VENDOR', 'category-vendor', 0, 1, 0, 'admin.env.PREFIX_CATEGORY_VENDOR'),
(105, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, 1, 0, 'admin.env.PREFIX_SUB_CATEGORY'),
(106, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 1, 0, 'admin.env.PREFIX_PRODUCT'),
(107, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 1, 0, 'admin.env.PREFIX_SEARCH'),
(108, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 1, 0, 'admin.env.PREFIX_CONTACT'),
(109, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 1, 0, 'admin.env.PREFIX_NEWS'),
(110, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, 1, 0, 'admin.env.PREFIX_MEMBER'),
(111, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 1, 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST'),
(112, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 1, 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD'),
(113, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 1, 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO'),
(114, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 1, 0, 'admin.env.PREFIX_CMS_CATEGORY'),
(115, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 1, 0, 'admin.env.PREFIX_CMS_ENTRY'),
(116, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 1, 0, 'admin.env.PREFIX_CART_WISHLIST'),
(117, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 1, 0, 'admin.env.PREFIX_CART_COMPARE'),
(118, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 1, 0, 'admin.env.PREFIX_CART_DEFAULT'),
(119, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 1, 0, 'admin.env.PREFIX_CART_CHECKOUT'),
(120, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, 1, 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM'),
(121, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 1, 0, 'admin.env.PREFIX_ORDER_SUCCESS'),
(122, '', 'captcha_config', 'captcha_mode', '0', 0, 1, 20, 'admin.captcha.captcha_mode'),
(123, '', 'captcha_config', 'captcha_page', '[]', 0, 1, 10, 'captcha.captcha_page'),
(124, '', 'captcha_config', 'captcha_method', '', 0, 1, 0, 'admin.captcha.captcha_method');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_log`
--

CREATE TABLE `sc_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_log`
--

INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:26:43', '2021-09-09 11:26:43'),
(2, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:26:51', '2021-09-09 11:26:51'),
(3, 1, 'sc_admin/store_config/update', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"ADMIN_NAME\",\"value\":\"BenStore\",\"pk\":null,\"_token\":\"Vrbcgflf2LWT67jOytJw1rVzqg7ofbA0ghaDyDmS\",\"storeId\":\"1\"}', '2021-09-09 11:27:31', '2021-09-09 11:27:31'),
(4, 1, 'sc_admin/store_config/update', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"ADMIN_TITLE\",\"value\":\"BenStore\",\"pk\":null,\"_token\":\"Vrbcgflf2LWT67jOytJw1rVzqg7ofbA0ghaDyDmS\",\"storeId\":\"1\"}', '2021-09-09 11:27:40', '2021-09-09 11:27:40'),
(5, 1, 'sc_admin/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:28:03', '2021-09-09 11:28:03'),
(6, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"avatar\"}', '2021-09-09 11:28:07', '2021-09-09 11:28:07'),
(7, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631186887984\"}', '2021-09-09 11:28:08', '2021-09-09 11:28:08'),
(8, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631186887983\"}', '2021-09-09 11:28:08', '2021-09-09 11:28:08'),
(9, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631186887985\"}', '2021-09-09 11:28:08', '2021-09-09 11:28:08'),
(10, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"avatar\"}', '2021-09-09 11:29:56', '2021-09-09 11:29:56'),
(11, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631186996346\"}', '2021-09-09 11:29:56', '2021-09-09 11:29:56'),
(12, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631186996347\"}', '2021-09-09 11:29:56', '2021-09-09 11:29:56'),
(13, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631186996348\"}', '2021-09-09 11:29:57', '2021-09-09 11:29:57'),
(14, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"avatar\"}', '2021-09-09 11:30:08', '2021-09-09 11:30:08'),
(15, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631187008972\"}', '2021-09-09 11:30:09', '2021-09-09 11:30:09'),
(16, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631187008973\"}', '2021-09-09 11:30:09', '2021-09-09 11:30:09'),
(17, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631187008974\"}', '2021-09-09 11:30:09', '2021-09-09 11:30:09'),
(18, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"Vrbcgflf2LWT67jOytJw1rVzqg7ofbA0ghaDyDmS\"}', '2021-09-09 11:30:53', '2021-09-09 11:30:53'),
(19, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_\":\"1631187008975\"}', '2021-09-09 11:30:53', '2021-09-09 11:30:53'),
(20, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631187008976\"}', '2021-09-09 11:30:54', '2021-09-09 11:30:54'),
(21, 1, 'sc_admin/auth/setting', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:33:07', '2021-09-09 11:33:07'),
(22, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"avatar\"}', '2021-09-09 11:33:09', '2021-09-09 11:33:09'),
(23, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631187189934\"}', '2021-09-09 11:33:10', '2021-09-09 11:33:10'),
(24, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631187189933\"}', '2021-09-09 11:33:10', '2021-09-09 11:33:10'),
(25, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631187189935\"}', '2021-09-09 11:33:10', '2021-09-09 11:33:10'),
(26, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"avatar\"}', '2021-09-09 11:33:21', '2021-09-09 11:33:21'),
(27, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631187201466\"}', '2021-09-09 11:33:21', '2021-09-09 11:33:21'),
(28, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1631187201465\"}', '2021-09-09 11:33:21', '2021-09-09 11:33:21'),
(29, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631187201467\"}', '2021-09-09 11:33:22', '2021-09-09 11:33:22'),
(30, 1, 'sc_admin/auth/setting', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"Administrator\",\"avatar\":\"\\/data\\/avatar\\/logo-default-336x120.png\",\"password\":null,\"password_confirmation\":null,\"_token\":\"Vrbcgflf2LWT67jOytJw1rVzqg7ofbA0ghaDyDmS\"}', '2021-09-09 11:33:26', '2021-09-09 11:33:26'),
(31, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:33:26', '2021-09-09 11:33:26'),
(32, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:33:37', '2021-09-09 11:33:37'),
(33, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:33:49', '2021-09-09 11:33:49'),
(34, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:33:53', '2021-09-09 11:33:53'),
(35, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"logo\"}', '2021-09-09 11:33:56', '2021-09-09 11:33:56'),
(36, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1631187236342\"}', '2021-09-09 11:33:56', '2021-09-09 11:33:56'),
(37, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1631187236341\"}', '2021-09-09 11:33:56', '2021-09-09 11:33:56'),
(38, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631187236343\"}', '2021-09-09 11:33:56', '2021-09-09 11:33:56'),
(39, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"logo\"}', '2021-09-09 11:34:33', '2021-09-09 11:34:33'),
(40, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1631187273475\"}', '2021-09-09 11:34:33', '2021-09-09 11:34:33'),
(41, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1631187273474\"}', '2021-09-09 11:34:33', '2021-09-09 11:34:33'),
(42, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631187273476\"}', '2021-09-09 11:34:34', '2021-09-09 11:34:34'),
(43, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"9kwfCp20gtTNLtjZ5U0nJzWzkXIBeYha8DBuVNse\"}', '2021-09-09 11:34:44', '2021-09-09 11:34:44'),
(44, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1631187273477\"}', '2021-09-09 11:34:44', '2021-09-09 11:34:44'),
(45, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631187273478\"}', '2021-09-09 11:34:45', '2021-09-09 11:34:45'),
(46, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"logo\",\"value\":\"\\/data\\/logo\\/logo-default-336x120.png\",\"_token\":\"9kwfCp20gtTNLtjZ5U0nJzWzkXIBeYha8DBuVNse\",\"storeId\":\"1\"}', '2021-09-09 11:34:51', '2021-09-09 11:34:51'),
(47, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:34:56', '2021-09-09 11:34:56'),
(48, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:35:01', '2021-09-09 11:35:01'),
(49, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:40:58', '2021-09-09 11:40:58'),
(50, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 11:41:06', '2021-09-09 11:41:06'),
(51, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:40:43', '2021-09-09 14:40:43'),
(52, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:41:43', '2021-09-09 14:41:43'),
(53, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:42:22', '2021-09-09 14:42:22'),
(54, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:42:33', '2021-09-09 14:42:33'),
(55, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:42:56', '2021-09-09 14:42:56'),
(56, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:43:01', '2021-09-09 14:43:01'),
(57, 1, 'sc_admin/template/online', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:46:38', '2021-09-09 14:46:38'),
(58, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:46:40', '2021-09-09 14:46:40'),
(59, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:55:41', '2021-09-09 14:55:41'),
(60, 1, 'sc_admin/template/refresh', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"key\":\"s-cart-light\"}', '2021-09-09 14:55:48', '2021-09-09 14:55:48'),
(61, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:55:49', '2021-09-09 14:55:49'),
(62, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:56:11', '2021-09-09 14:56:11'),
(63, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"benshop-template\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 14:56:16', '2021-09-09 14:56:16'),
(64, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 14:59:42', '2021-09-09 14:59:42'),
(65, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 14:59:44', '2021-09-09 14:59:44'),
(66, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"benshop-template\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 14:59:49', '2021-09-09 14:59:49'),
(67, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 15:00:24', '2021-09-09 15:00:24'),
(68, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:00:26', '2021-09-09 15:00:26'),
(69, 1, 'sc_admin/cache_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:00:35', '2021-09-09 15:00:35'),
(70, 1, 'sc_admin/cache_config/clear_cache', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"action\":\"cache_all\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 15:00:37', '2021-09-09 15:00:37'),
(71, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:00:42', '2021-09-09 15:00:42'),
(72, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:01:26', '2021-09-09 15:01:26'),
(73, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"benstore-template\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 15:01:31', '2021-09-09 15:01:31'),
(74, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:12:10', '2021-09-09 15:12:10'),
(75, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:13:10', '2021-09-09 15:13:10'),
(76, 1, 'sc_admin/customer', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:13:44', '2021-09-09 15:13:44'),
(77, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:13:50', '2021-09-09 15:13:50'),
(78, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:13:58', '2021-09-09 15:13:58'),
(79, 1, 'sc_admin/store_config/update', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"ADMIN_LOGO\",\"value\":\"BenStore <span class=\\\"brand-text font-weight-light\\\">Admin<\\/span>\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 15:14:26', '2021-09-09 15:14:26'),
(80, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:14:37', '2021-09-09 15:14:37'),
(81, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"BenStore - D\\u1ecbch v\\u1ee5 ch\\u0103m s\\u00f3c ch\\u1ea5t l\\u01b0\\u1ee3ng cho v\\u1eadt nu\\u00f4i\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 15:15:23', '2021-09-09 15:15:23'),
(82, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"BenStore - D\\u1ecbch v\\u1ee5 ch\\u0103m s\\u00f3c ch\\u1ea5t l\\u01b0\\u1ee3ng cho v\\u1eadt nu\\u00f4i\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 15:15:27', '2021-09-09 15:15:27'),
(83, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"description__en\",\"value\":\"BenStore - D\\u1ecbch v\\u1ee5 ch\\u0103m s\\u00f3c ch\\u1ea5t l\\u01b0\\u1ee3ng cho v\\u1eadt nu\\u00f4i\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 15:15:38', '2021-09-09 15:15:38'),
(84, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"description__vi\",\"value\":\"BenStore - D\\u1ecbch v\\u1ee5 ch\\u0103m s\\u00f3c ch\\u1ea5t l\\u01b0\\u1ee3ng cho v\\u1eadt nu\\u00f4i\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 15:15:42', '2021-09-09 15:15:42'),
(85, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:15:47', '2021-09-09 15:15:47'),
(86, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:18:05', '2021-09-09 15:18:05'),
(87, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:18:36', '2021-09-09 15:18:36'),
(88, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:18:52', '2021-09-09 15:18:52'),
(89, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:19:06', '2021-09-09 15:19:06'),
(90, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:19:10', '2021-09-09 15:19:10'),
(91, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:19:42', '2021-09-09 15:19:42'),
(92, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 15:20:08', '2021-09-09 15:20:08'),
(93, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"address\",\"value\":\"\\u0110\\u01b0\\u1eddng Z115  Th\\u00e1i Nguy\\u00ean\",\"pk\":null,\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"storeId\":\"1\"}', '2021-09-09 16:41:21', '2021-09-09 16:41:21'),
(94, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:50:44', '2021-09-09 16:50:44'),
(95, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:50:55', '2021-09-09 16:50:55'),
(96, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:51:06', '2021-09-09 16:51:06'),
(97, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:51:09', '2021-09-09 16:51:09'),
(98, 1, 'sc_admin/store_block', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:51:41', '2021-09-09 16:51:41'),
(99, 1, 'sc_admin/template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:51:52', '2021-09-09 16:51:52'),
(100, 1, 'sc_admin/env/config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:52:07', '2021-09-09 16:52:07'),
(101, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:52:10', '2021-09-09 16:52:10'),
(102, 1, 'sc_admin/store_block', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:52:15', '2021-09-09 16:52:15'),
(103, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:52:20', '2021-09-09 16:52:20'),
(104, 1, 'sc_admin/menu', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:54:21', '2021-09-09 16:54:21'),
(105, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:54:28', '2021-09-09 16:54:28'),
(106, 1, 'sc_admin/env/config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:54:36', '2021-09-09 16:54:36'),
(107, 1, 'sc_admin/config/update', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"name\":\"ADMIN_FOOTER_OFF\",\"value\":\"1\"}', '2021-09-09 16:54:42', '2021-09-09 16:54:42'),
(108, 1, 'sc_admin/config/update', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\",\"name\":\"ADMIN_FOOTER_OFF\",\"value\":\"0\"}', '2021-09-09 16:54:48', '2021-09-09 16:54:48'),
(109, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:54:55', '2021-09-09 16:54:55'),
(110, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:54:59', '2021-09-09 16:54:59'),
(111, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:55:27', '2021-09-09 16:55:27'),
(112, 1, 'sc_admin/store_block', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:55:34', '2021-09-09 16:55:34'),
(113, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:55:45', '2021-09-09 16:55:45'),
(114, 1, 'sc_admin/store_link/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:55:55', '2021-09-09 16:55:55'),
(115, 1, 'sc_admin/store_link/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:56:31', '2021-09-09 16:56:31'),
(116, 1, 'sc_admin/store_link/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.about\",\"url\":\"route::page.detail::about\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"50\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 16:56:43', '2021-09-09 16:56:43'),
(117, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:56:43', '2021-09-09 16:56:43'),
(118, 1, 'sc_admin/store_link/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:56:56', '2021-09-09 16:56:56'),
(119, 1, 'sc_admin/store_link/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.about\",\"url\":\"route::page.detail::about\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"50\",\"status\":\"on\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 16:57:00', '2021-09-09 16:57:00'),
(120, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:57:00', '2021-09-09 16:57:00'),
(121, 1, 'sc_admin/store_link/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:58:58', '2021-09-09 16:58:58'),
(122, 1, 'sc_admin/store_link/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.blog\",\"url\":\"route::news\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"60\",\"status\":\"on\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 16:59:02', '2021-09-09 16:59:02'),
(123, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:59:02', '2021-09-09 16:59:02'),
(124, 1, 'sc_admin/store_link/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:59:06', '2021-09-09 16:59:06'),
(125, 1, 'sc_admin/store_link/edit/3', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.about\",\"url\":\"route::page.detail::about\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"30\",\"status\":\"on\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 16:59:10', '2021-09-09 16:59:10'),
(126, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:59:10', '2021-09-09 16:59:10'),
(127, 1, 'sc_admin/store_link/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:59:18', '2021-09-09 16:59:18'),
(128, 1, 'sc_admin/store_link/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.contact\",\"url\":\"route::contact\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"50\",\"status\":\"on\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 16:59:22', '2021-09-09 16:59:22'),
(129, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:59:22', '2021-09-09 16:59:22'),
(130, 1, 'sc_admin/store_link/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:59:26', '2021-09-09 16:59:26'),
(131, 1, 'sc_admin/store_link/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.blog\",\"url\":\"route::news\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"40\",\"status\":\"on\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 16:59:30', '2021-09-09 16:59:30'),
(132, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:59:30', '2021-09-09 16:59:30'),
(133, 1, 'sc_admin/store_link/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 16:59:49', '2021-09-09 16:59:49'),
(134, 1, 'sc_admin/store_link/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:00:27', '2021-09-09 17:00:27'),
(135, 1, 'sc_admin/store_link/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:00:35', '2021-09-09 17:00:35'),
(136, 1, 'sc_admin/store_link/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:00:42', '2021-09-09 17:00:42'),
(137, 1, 'sc_admin/store_link/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.shop\",\"url\":\"route::shop\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"40\",\"status\":\"on\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 17:01:26', '2021-09-09 17:01:26'),
(138, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:01:26', '2021-09-09 17:01:26'),
(139, 1, 'sc_admin/store_link/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:01:54', '2021-09-09 17:01:54'),
(140, 1, 'sc_admin/store_link/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.shop\",\"url\":\"route::shop\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"50\",\"status\":\"on\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 17:01:59', '2021-09-09 17:01:59'),
(141, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:01:59', '2021-09-09 17:01:59'),
(142, 1, 'sc_admin/store_link/edit/7', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:02:12', '2021-09-09 17:02:12'),
(143, 1, 'sc_admin/store_link/edit/7', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.shop\",\"url\":\"route::shop\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"40\",\"status\":\"on\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 17:02:16', '2021-09-09 17:02:16'),
(144, 1, 'sc_admin/store_link', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:02:16', '2021-09-09 17:02:16'),
(145, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:34:02', '2021-09-09 17:34:02'),
(146, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:39:48', '2021-09-09 17:39:48'),
(147, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:40:03', '2021-09-09 17:40:03'),
(148, 1, 'sc_admin/banner/edit/4', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:46:48', '2021-09-09 17:46:48'),
(149, 1, 'sc_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:47:17', '2021-09-09 17:47:17'),
(150, 1, 'sc_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:47:51', '2021-09-09 17:47:51'),
(151, 1, 'sc_admin/banner/edit/2', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:47:55', '2021-09-09 17:47:55'),
(152, 1, 'sc_admin/banner/edit/2', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/Main-banner-3-1903x600.jpg\",\"url\":null,\"title\":\"Banner 2\",\"target\":\"_self\",\"html\":\"<h1 class=\\\"swiper-title-1\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"100\\\">Top-notch Furniture<\\/h1><p class=\\\"biggest text-white-70\\\" data-caption-animate=\\\"fadeScale\\\" data-caption-delay=\\\"200\\\">Sofa Store provides the best furniture and accessories for homes and offices.<\\/p><div class=\\\"button-wrap\\\" data-caption-animate=\\\"fadeInUp\\\" data-caption-delay=\\\"300\\\"> <span class=\\\"button button-zachem-tak-delat button-white button-zakaria\\\"> Shop now<\\/span> <\\/div>\",\"type\":\"banner\",\"sort\":\"0\",\"_token\":\"laQQYmzU5ZeMPdAnrCGDzixePgCZyEQ2s96EMt83\"}', '2021-09-09 17:47:58', '2021-09-09 17:47:58'),
(153, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:47:58', '2021-09-09 17:47:58'),
(154, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:48:03', '2021-09-09 17:48:03'),
(155, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 17:48:06', '2021-09-09 17:48:06'),
(156, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631209686299\"}', '2021-09-09 17:48:06', '2021-09-09 17:48:06'),
(157, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631209686300\"}', '2021-09-09 17:48:06', '2021-09-09 17:48:06'),
(158, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631209686301\"}', '2021-09-09 17:48:06', '2021-09-09 17:48:06'),
(159, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 17:48:13', '2021-09-09 17:48:13'),
(160, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631209693287\"}', '2021-09-09 17:48:13', '2021-09-09 17:48:13'),
(161, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631209693286\"}', '2021-09-09 17:48:13', '2021-09-09 17:48:13'),
(162, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631209693288\"}', '2021-09-09 17:48:13', '2021-09-09 17:48:13'),
(163, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 17:48:24', '2021-09-09 17:48:24'),
(164, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631209704264\"}', '2021-09-09 17:48:24', '2021-09-09 17:48:24'),
(165, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631209704265\"}', '2021-09-09 17:48:24', '2021-09-09 17:48:24'),
(166, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631209704266\"}', '2021-09-09 17:48:24', '2021-09-09 17:48:24'),
(167, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 17:55:24', '2021-09-09 17:55:24'),
(168, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210124641\"}', '2021-09-09 17:55:24', '2021-09-09 17:55:24'),
(169, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210124642\"}', '2021-09-09 17:55:25', '2021-09-09 17:55:25'),
(170, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631210124643\"}', '2021-09-09 17:55:25', '2021-09-09 17:55:25'),
(171, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 17:56:41', '2021-09-09 17:56:41'),
(172, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 17:56:44', '2021-09-09 17:56:44'),
(173, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210204135\"}', '2021-09-09 17:56:44', '2021-09-09 17:56:44'),
(174, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210204136\"}', '2021-09-09 17:56:44', '2021-09-09 17:56:44'),
(175, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631210204137\"}', '2021-09-09 17:56:44', '2021-09-09 17:56:44'),
(176, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:00:09', '2021-09-09 18:00:09'),
(177, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210409859\"}', '2021-09-09 18:00:10', '2021-09-09 18:00:10'),
(178, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210409860\"}', '2021-09-09 18:00:10', '2021-09-09 18:00:10'),
(179, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631210409861\"}', '2021-09-09 18:00:10', '2021-09-09 18:00:10'),
(180, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:02:51', '2021-09-09 18:02:51'),
(181, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:02:54', '2021-09-09 18:02:54'),
(182, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210574177\"}', '2021-09-09 18:02:54', '2021-09-09 18:02:54'),
(183, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210574178\"}', '2021-09-09 18:02:54', '2021-09-09 18:02:54'),
(184, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631210574179\"}', '2021-09-09 18:02:54', '2021-09-09 18:02:54'),
(185, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:05:37', '2021-09-09 18:05:37'),
(186, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:05:42', '2021-09-09 18:05:42');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(187, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:05:44', '2021-09-09 18:05:44'),
(188, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210744169\"}', '2021-09-09 18:05:44', '2021-09-09 18:05:44'),
(189, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631210744170\"}', '2021-09-09 18:05:44', '2021-09-09 18:05:44'),
(190, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631210744171\"}', '2021-09-09 18:05:44', '2021-09-09 18:05:44'),
(191, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:21:45', '2021-09-09 18:21:45'),
(192, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:21:48', '2021-09-09 18:21:48'),
(193, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631211708592\"}', '2021-09-09 18:21:48', '2021-09-09 18:21:48'),
(194, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631211708591\"}', '2021-09-09 18:21:48', '2021-09-09 18:21:48'),
(195, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631211708593\"}', '2021-09-09 18:21:49', '2021-09-09 18:21:49'),
(196, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:23:00', '2021-09-09 18:23:00'),
(197, 1, 'sc_admin/auth/logout', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:23:03', '2021-09-09 18:23:03'),
(198, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:23:10', '2021-09-09 18:23:10'),
(199, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:23:12', '2021-09-09 18:23:12'),
(200, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:23:15', '2021-09-09 18:23:15'),
(201, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:23:16', '2021-09-09 18:23:16'),
(202, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631211796613\"}', '2021-09-09 18:23:16', '2021-09-09 18:23:16'),
(203, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631211796614\"}', '2021-09-09 18:23:16', '2021-09-09 18:23:16'),
(204, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631211796615\"}', '2021-09-09 18:23:17', '2021-09-09 18:23:17'),
(205, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:24:19', '2021-09-09 18:24:19'),
(206, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631211859839\"}', '2021-09-09 18:24:20', '2021-09-09 18:24:20'),
(207, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631211859840\"}', '2021-09-09 18:24:20', '2021-09-09 18:24:20'),
(208, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631211859841\"}', '2021-09-09 18:24:20', '2021-09-09 18:24:20'),
(209, 1, 'sc_admin/store_link/edit/3', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:27:48', '2021-09-09 18:27:48'),
(210, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:27:51', '2021-09-09 18:27:51'),
(211, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:27:53', '2021-09-09 18:27:53'),
(212, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:27:55', '2021-09-09 18:27:55'),
(213, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212075469\"}', '2021-09-09 18:27:55', '2021-09-09 18:27:55'),
(214, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212075470\"}', '2021-09-09 18:27:55', '2021-09-09 18:27:55'),
(215, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631212075471\"}', '2021-09-09 18:27:56', '2021-09-09 18:27:56'),
(216, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:28:29', '2021-09-09 18:28:29'),
(217, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:29:00', '2021-09-09 18:29:00'),
(218, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:32:00', '2021-09-09 18:32:00'),
(219, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:32:03', '2021-09-09 18:32:03'),
(220, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:32:05', '2021-09-09 18:32:05'),
(221, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:32:07', '2021-09-09 18:32:07'),
(222, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:32:08', '2021-09-09 18:32:08'),
(223, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212328951\"}', '2021-09-09 18:32:09', '2021-09-09 18:32:09'),
(224, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212328950\"}', '2021-09-09 18:32:09', '2021-09-09 18:32:09'),
(225, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631212328952\"}', '2021-09-09 18:32:09', '2021-09-09 18:32:09'),
(226, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:33:58', '2021-09-09 18:33:58'),
(227, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:34:03', '2021-09-09 18:34:03'),
(228, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212443549\"}', '2021-09-09 18:34:03', '2021-09-09 18:34:03'),
(229, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212443550\"}', '2021-09-09 18:34:03', '2021-09-09 18:34:03'),
(230, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631212443551\"}', '2021-09-09 18:34:04', '2021-09-09 18:34:04'),
(231, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:34:14', '2021-09-09 18:34:14'),
(232, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212454378\"}', '2021-09-09 18:34:14', '2021-09-09 18:34:14'),
(233, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212454379\"}', '2021-09-09 18:34:14', '2021-09-09 18:34:14'),
(234, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631212454380\"}', '2021-09-09 18:34:14', '2021-09-09 18:34:14'),
(235, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"MUXhgu0wMT1l3gICiXaaaSy8gCRsCMEcaxJKfbwm\"}', '2021-09-09 18:34:23', '2021-09-09 18:34:23'),
(236, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1631212454381\"}', '2021-09-09 18:34:23', '2021-09-09 18:34:23'),
(237, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631212454382\"}', '2021-09-09 18:34:23', '2021-09-09 18:34:23'),
(238, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:40:10', '2021-09-09 18:40:10'),
(239, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:40:12', '2021-09-09 18:40:12'),
(240, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212812267\"}', '2021-09-09 18:40:12', '2021-09-09 18:40:12'),
(241, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631212812268\"}', '2021-09-09 18:40:12', '2021-09-09 18:40:12'),
(242, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631212812269\"}', '2021-09-09 18:40:12', '2021-09-09 18:40:12'),
(243, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:44:42', '2021-09-09 18:44:42'),
(244, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631213083717\"}', '2021-09-09 18:44:44', '2021-09-09 18:44:44'),
(245, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631213083716\"}', '2021-09-09 18:44:44', '2021-09-09 18:44:44'),
(246, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631213083718\"}', '2021-09-09 18:44:44', '2021-09-09 18:44:44'),
(247, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:54:51', '2021-09-09 18:54:51'),
(248, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 18:54:53', '2021-09-09 18:54:53'),
(249, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631213693347\"}', '2021-09-09 18:54:53', '2021-09-09 18:54:53'),
(250, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631213693348\"}', '2021-09-09 18:54:53', '2021-09-09 18:54:53'),
(251, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631213693349\"}', '2021-09-09 18:54:53', '2021-09-09 18:54:53'),
(252, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 18:55:13', '2021-09-09 18:55:13'),
(253, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:05:41', '2021-09-09 19:05:41'),
(254, 1, 'sc_admin/banner/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:06:30', '2021-09-09 19:06:30'),
(255, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 19:06:33', '2021-09-09 19:06:33'),
(256, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631214393122\"}', '2021-09-09 19:06:33', '2021-09-09 19:06:33'),
(257, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631214393123\"}', '2021-09-09 19:06:33', '2021-09-09 19:06:33'),
(258, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631214393124\"}', '2021-09-09 19:06:33', '2021-09-09 19:06:33'),
(259, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 19:07:54', '2021-09-09 19:07:54'),
(260, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631214474512\"}', '2021-09-09 19:07:54', '2021-09-09 19:07:54'),
(261, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631214474511\"}', '2021-09-09 19:07:54', '2021-09-09 19:07:54'),
(262, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631214474513\"}', '2021-09-09 19:07:55', '2021-09-09 19:07:55'),
(263, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:07:59', '2021-09-09 19:07:59'),
(264, 1, 'sc_admin/banner', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:08:02', '2021-09-09 19:08:02'),
(265, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:08:09', '2021-09-09 19:08:09'),
(266, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:08:11', '2021-09-09 19:08:11'),
(267, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 19:08:18', '2021-09-09 19:08:18'),
(268, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631214498124\"}', '2021-09-09 19:08:18', '2021-09-09 19:08:18'),
(269, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631214498123\"}', '2021-09-09 19:08:18', '2021-09-09 19:08:18'),
(270, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631214498125\"}', '2021-09-09 19:08:18', '2021-09-09 19:08:18'),
(271, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:08:45', '2021-09-09 19:08:45'),
(272, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 19:08:50', '2021-09-09 19:08:50'),
(273, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631214530283\"}', '2021-09-09 19:08:50', '2021-09-09 19:08:50'),
(274, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631214530284\"}', '2021-09-09 19:08:50', '2021-09-09 19:08:50'),
(275, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631214530285\"}', '2021-09-09 19:08:50', '2021-09-09 19:08:50'),
(276, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:09:18', '2021-09-09 19:09:18'),
(277, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 19:09:21', '2021-09-09 19:09:21'),
(278, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631214561092\"}', '2021-09-09 19:09:21', '2021-09-09 19:09:21'),
(279, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631214561093\"}', '2021-09-09 19:09:21', '2021-09-09 19:09:21'),
(280, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631214561094\"}', '2021-09-09 19:09:21', '2021-09-09 19:09:21'),
(281, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 19:17:33', '2021-09-09 19:17:33'),
(282, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 19:17:36', '2021-09-09 19:17:36'),
(283, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631215056448\"}', '2021-09-09 19:17:36', '2021-09-09 19:17:36'),
(284, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631215056449\"}', '2021-09-09 19:17:36', '2021-09-09 19:17:36'),
(285, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631215056450\"}', '2021-09-09 19:17:37', '2021-09-09 19:17:37'),
(286, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 19:34:10', '2021-09-09 19:34:10'),
(287, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631216051027\"}', '2021-09-09 19:34:11', '2021-09-09 19:34:11'),
(288, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631216051028\"}', '2021-09-09 19:34:11', '2021-09-09 19:34:11'),
(289, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631216051029\"}', '2021-09-09 19:34:11', '2021-09-09 19:34:11'),
(290, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 20:02:36', '2021-09-09 20:02:36'),
(291, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 20:02:55', '2021-09-09 20:02:55'),
(292, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 20:02:57', '2021-09-09 20:02:57'),
(293, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 20:02:59', '2021-09-09 20:02:59'),
(294, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631217780788\"}', '2021-09-09 20:03:01', '2021-09-09 20:03:01'),
(295, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631217780789\"}', '2021-09-09 20:03:01', '2021-09-09 20:03:01'),
(296, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631217780790\"}', '2021-09-09 20:03:01', '2021-09-09 20:03:01'),
(297, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 20:42:14', '2021-09-09 20:42:14'),
(298, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 20:42:19', '2021-09-09 20:42:19'),
(299, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 20:44:14', '2021-09-09 20:44:14'),
(300, 1, 'sc_admin/banner/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 20:44:17', '2021-09-09 20:44:17'),
(301, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-09 20:44:19', '2021-09-09 20:44:19'),
(302, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631220259703\"}', '2021-09-09 20:44:19', '2021-09-09 20:44:19'),
(303, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631220259704\"}', '2021-09-09 20:44:20', '2021-09-09 20:44:20'),
(304, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631220259705\"}', '2021-09-09 20:44:20', '2021-09-09 20:44:20'),
(305, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 20:45:08', '2021-09-09 20:45:08'),
(306, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1631220259706\"}', '2021-09-09 20:45:09', '2021-09-09 20:45:09'),
(307, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631220259707\"}', '2021-09-09 20:45:09', '2021-09-09 20:45:09'),
(308, 1, 'sc_admin/banner/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/home-bg-1.jpg\",\"url\":null,\"title\":\"Banner 1\",\"target\":\"_self\",\"html\":\"<h1 class=\\\"lt-spacing-normal\\\">Puffles<\\/h1>\\r\\n<h3 class=\\\"lt-spacing-75 offset-top-10 text-transform-uppercase heading-devider\\\">L\\u00e0m cho th\\u00fa c\\u01b0ng c\\u1ee7a b\\u1ea1n h\\u1ea1nh ph\\u00fac<\\/h3>\\r\\n<h4 class=\\\"lt-spacing-100 offset-top-25 fw-regular\\\">C\\u1eeda h\\u00e0ng th\\u00fa c\\u01b0ng c\\u1ee7a ch\\u00fang t\\u00f4i coi tr\\u1ecdng ch\\u1ea5t l\\u01b0\\u1ee3ng, s\\u1ef1 tho\\u1ea3i m\\u00e1i v\\u00e0 t\\u00ednh c\\u00e1 nh\\u00e2n c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m v\\u00e0 d\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/h4>\",\"type\":\"banner\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 20:46:18', '2021-09-09 20:46:18'),
(309, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 20:46:19', '2021-09-09 20:46:19'),
(310, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:38:17', '2021-09-09 21:38:17'),
(311, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:50:47', '2021-09-09 21:50:47'),
(312, 1, 'sc_admin/category/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"13,12,11,10,9,8,7,6,5,4,3,2,1\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:50:53', '2021-09-09 21:50:53'),
(313, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-09 21:50:53', '2021-09-09 21:50:53'),
(314, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:50:58', '2021-09-09 21:50:58'),
(315, 1, 'sc_admin/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:51:02', '2021-09-09 21:51:02'),
(316, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-09 21:51:03', '2021-09-09 21:51:03'),
(317, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:51:08', '2021-09-09 21:51:08'),
(318, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:51:10', '2021-09-09 21:51:10'),
(319, 1, 'sc_admin/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"7,6,2,1\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:51:14', '2021-09-09 21:51:14'),
(320, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-09 21:51:14', '2021-09-09 21:51:14'),
(321, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:51:18', '2021-09-09 21:51:18'),
(322, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:51:20', '2021-09-09 21:51:20'),
(323, 1, 'sc_admin/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:53:22', '2021-09-09 21:53:22'),
(324, 1, 'sc_admin/env/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:53:28', '2021-09-09 21:53:28'),
(325, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:53:31', '2021-09-09 21:53:31'),
(326, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:54:22', '2021-09-09 21:54:22'),
(327, 1, 'sc_admin/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:54:33', '2021-09-09 21:54:33'),
(328, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:54:37', '2021-09-09 21:54:37'),
(329, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:54:43', '2021-09-09 21:54:43'),
(330, 1, 'sc_admin/config/webhook', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:55:23', '2021-09-09 21:55:23'),
(331, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:55:40', '2021-09-09 21:55:40'),
(332, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:55:43', '2021-09-09 21:55:43'),
(333, 1, 'sc_admin/language/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:55:49', '2021-09-09 21:55:49'),
(334, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:55:49', '2021-09-09 21:55:49'),
(335, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:55:54', '2021-09-09 21:55:54'),
(336, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:55:58', '2021-09-09 21:55:58'),
(337, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"\\u0110\\u1ed3 ch\\u01a1i\",\"keyword\":null,\"description\":\"\\u0110\\u1ed3 ch\\u01a1i\"}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:56:20', '2021-09-09 21:56:20'),
(338, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:56:20', '2021-09-09 21:56:20'),
(339, 1, 'sc_admin/category/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:56:23', '2021-09-09 21:56:23'),
(340, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"category\"}', '2021-09-09 21:56:25', '2021-09-09 21:56:25'),
(341, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631224585832\"}', '2021-09-09 21:56:26', '2021-09-09 21:56:26'),
(342, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631224585833\"}', '2021-09-09 21:56:26', '2021-09-09 21:56:26'),
(343, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631224585834\"}', '2021-09-09 21:56:26', '2021-09-09 21:56:26'),
(344, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:56:33', '2021-09-09 21:56:33'),
(345, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1631224585835\"}', '2021-09-09 21:56:34', '2021-09-09 21:56:34'),
(346, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631224585836\"}', '2021-09-09 21:56:34', '2021-09-09 21:56:34'),
(347, 1, 'sc_admin/category/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"\\u0110\\u1ed3 ch\\u01a1i\",\"keyword\":null,\"description\":\"\\u0110\\u1ed3 ch\\u01a1i\"}},\"parent\":\"0\",\"alias\":\"do-choi\",\"image\":\"\\/data\\/category\\/about-1-370x276.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:56:40', '2021-09-09 21:56:40'),
(348, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:56:40', '2021-09-09 21:56:40'),
(349, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:56:42', '2021-09-09 21:56:42'),
(350, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"category\"}', '2021-09-09 21:57:41', '2021-09-09 21:57:41'),
(351, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631224661608\"}', '2021-09-09 21:57:41', '2021-09-09 21:57:41'),
(352, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631224661609\"}', '2021-09-09 21:57:42', '2021-09-09 21:57:42'),
(353, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631224661610\"}', '2021-09-09 21:57:42', '2021-09-09 21:57:42'),
(354, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:58:00', '2021-09-09 21:58:00'),
(355, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1631224661611\"}', '2021-09-09 21:58:00', '2021-09-09 21:58:00'),
(356, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631224661612\"}', '2021-09-09 21:58:01', '2021-09-09 21:58:01'),
(357, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Th\\u1ee9c \\u0103n\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/about-2-370x276.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:58:09', '2021-09-09 21:58:09'),
(358, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:58:09', '2021-09-09 21:58:09'),
(359, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:58:19', '2021-09-09 21:58:19'),
(360, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"category\"}', '2021-09-09 21:58:52', '2021-09-09 21:58:52'),
(361, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631224732598\"}', '2021-09-09 21:58:52', '2021-09-09 21:58:52'),
(362, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631224732599\"}', '2021-09-09 21:58:53', '2021-09-09 21:58:53'),
(363, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631224732600\"}', '2021-09-09 21:58:53', '2021-09-09 21:58:53'),
(364, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:59:24', '2021-09-09 21:59:24'),
(365, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1631224732601\"}', '2021-09-09 21:59:25', '2021-09-09 21:59:25'),
(366, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631224732602\"}', '2021-09-09 21:59:25', '2021-09-09 21:59:25'),
(367, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":\"Ph\\u1ee5 ki\\u1ec7n\"}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/about-3-370x276.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 21:59:31', '2021-09-09 21:59:31');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(368, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 21:59:32', '2021-09-09 21:59:32'),
(369, 1, 'sc_admin/category/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:06:37', '2021-09-09 22:06:37'),
(370, 1, 'sc_admin/category/edit/15', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:06:41', '2021-09-09 22:06:41'),
(371, 1, 'sc_admin/category/edit/15', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Th\\u1ee9c \\u0103n\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"thuc-an\",\"image\":\"\\/data\\/category\\/about-2-370x276.jpg\",\"sort\":\"1\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:06:45', '2021-09-09 22:06:45'),
(372, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:06:45', '2021-09-09 22:06:45'),
(373, 1, 'sc_admin/category/edit/16', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:06:47', '2021-09-09 22:06:47'),
(374, 1, 'sc_admin/category/edit/16', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"keyword\":null,\"description\":\"Ph\\u1ee5 ki\\u1ec7n\"}},\"parent\":\"0\",\"alias\":\"phu-kien\",\"image\":\"\\/data\\/category\\/about-3-370x276.jpg\",\"sort\":\"2\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:06:53', '2021-09-09 22:06:53'),
(375, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:06:53', '2021-09-09 22:06:53'),
(376, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:07:22', '2021-09-09 22:07:22'),
(377, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"category\"}', '2021-09-09 22:07:29', '2021-09-09 22:07:29'),
(378, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631225250078\"}', '2021-09-09 22:07:30', '2021-09-09 22:07:30'),
(379, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631225250079\"}', '2021-09-09 22:07:30', '2021-09-09 22:07:30'),
(380, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225250080\"}', '2021-09-09 22:07:30', '2021-09-09 22:07:30'),
(381, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"H\\u00f3a Ph\\u1ea9m\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/about-3-370x276.jpg\",\"sort\":\"3\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:07:39', '2021-09-09 22:07:39'),
(382, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:07:39', '2021-09-09 22:07:39'),
(383, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:07:52', '2021-09-09 22:07:52'),
(384, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"category\"}', '2021-09-09 22:08:05', '2021-09-09 22:08:05'),
(385, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631225285455\"}', '2021-09-09 22:08:05', '2021-09-09 22:08:05'),
(386, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1631225285456\"}', '2021-09-09 22:08:05', '2021-09-09 22:08:05'),
(387, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225285457\"}', '2021-09-09 22:08:06', '2021-09-09 22:08:06'),
(388, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Thu\\u1ed1c v\\u00e0 vacxin\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/about-3-370x276.jpg\",\"sort\":\"4\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:08:14', '2021-09-09 22:08:14'),
(389, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:08:14', '2021-09-09 22:08:14'),
(390, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:15:30', '2021-09-09 22:15:30'),
(391, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:15:31', '2021-09-09 22:15:31'),
(392, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:16:19', '2021-09-09 22:16:19'),
(393, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225779139\"}', '2021-09-09 22:16:19', '2021-09-09 22:16:19'),
(394, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225779140\"}', '2021-09-09 22:16:19', '2021-09-09 22:16:19'),
(395, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779141\"}', '2021-09-09 22:16:20', '2021-09-09 22:16:20'),
(396, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-1.png\"],\"_\":\"1631225779142\"}', '2021-09-09 22:16:30', '2021-09-09 22:16:30'),
(397, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779143\"}', '2021-09-09 22:16:30', '2021-09-09 22:16:30'),
(398, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779144\"}', '2021-09-09 22:16:31', '2021-09-09 22:16:31'),
(399, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-10.png\"],\"_\":\"1631225779145\"}', '2021-09-09 22:16:34', '2021-09-09 22:16:34'),
(400, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779146\"}', '2021-09-09 22:16:35', '2021-09-09 22:16:35'),
(401, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779147\"}', '2021-09-09 22:16:35', '2021-09-09 22:16:35'),
(402, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-11.png\"],\"_\":\"1631225779148\"}', '2021-09-09 22:16:38', '2021-09-09 22:16:38'),
(403, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779149\"}', '2021-09-09 22:16:39', '2021-09-09 22:16:39'),
(404, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779150\"}', '2021-09-09 22:16:39', '2021-09-09 22:16:39'),
(405, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-12.png\"],\"_\":\"1631225779151\"}', '2021-09-09 22:16:43', '2021-09-09 22:16:43'),
(406, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779152\"}', '2021-09-09 22:16:43', '2021-09-09 22:16:43'),
(407, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779153\"}', '2021-09-09 22:16:43', '2021-09-09 22:16:43'),
(408, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-4.png\"],\"_\":\"1631225779154\"}', '2021-09-09 22:16:46', '2021-09-09 22:16:46'),
(409, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779155\"}', '2021-09-09 22:16:47', '2021-09-09 22:16:47'),
(410, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779156\"}', '2021-09-09 22:16:47', '2021-09-09 22:16:47'),
(411, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-5.png\"],\"_\":\"1631225779157\"}', '2021-09-09 22:16:50', '2021-09-09 22:16:50'),
(412, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779158\"}', '2021-09-09 22:16:51', '2021-09-09 22:16:51'),
(413, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779159\"}', '2021-09-09 22:16:51', '2021-09-09 22:16:51'),
(414, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-7.png\"],\"_\":\"1631225779160\"}', '2021-09-09 22:16:54', '2021-09-09 22:16:54'),
(415, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779161\"}', '2021-09-09 22:16:54', '2021-09-09 22:16:54'),
(416, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779162\"}', '2021-09-09 22:16:55', '2021-09-09 22:16:55'),
(417, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-3.png\"],\"_\":\"1631225779163\"}', '2021-09-09 22:16:57', '2021-09-09 22:16:57'),
(418, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779164\"}', '2021-09-09 22:16:58', '2021-09-09 22:16:58'),
(419, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779165\"}', '2021-09-09 22:16:58', '2021-09-09 22:16:58'),
(420, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-8.png\"],\"_\":\"1631225779166\"}', '2021-09-09 22:17:01', '2021-09-09 22:17:01'),
(421, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779167\"}', '2021-09-09 22:17:01', '2021-09-09 22:17:01'),
(422, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779168\"}', '2021-09-09 22:17:02', '2021-09-09 22:17:02'),
(423, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-14.png\"],\"_\":\"1631225779169\"}', '2021-09-09 22:17:04', '2021-09-09 22:17:04'),
(424, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779170\"}', '2021-09-09 22:17:05', '2021-09-09 22:17:05'),
(425, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779171\"}', '2021-09-09 22:17:05', '2021-09-09 22:17:05'),
(426, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-16.png\"],\"_\":\"1631225779172\"}', '2021-09-09 22:17:07', '2021-09-09 22:17:07'),
(427, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779173\"}', '2021-09-09 22:17:08', '2021-09-09 22:17:08'),
(428, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779174\"}', '2021-09-09 22:17:08', '2021-09-09 22:17:08'),
(429, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-15.png\"],\"_\":\"1631225779175\"}', '2021-09-09 22:17:11', '2021-09-09 22:17:11'),
(430, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779176\"}', '2021-09-09 22:17:11', '2021-09-09 22:17:11'),
(431, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779177\"}', '2021-09-09 22:17:12', '2021-09-09 22:17:12'),
(432, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-2.png\"],\"_\":\"1631225779178\"}', '2021-09-09 22:17:14', '2021-09-09 22:17:14'),
(433, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779179\"}', '2021-09-09 22:17:15', '2021-09-09 22:17:15'),
(434, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779180\"}', '2021-09-09 22:17:15', '2021-09-09 22:17:15'),
(435, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-13.png\"],\"_\":\"1631225779181\"}', '2021-09-09 22:17:18', '2021-09-09 22:17:18'),
(436, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779182\"}', '2021-09-09 22:17:18', '2021-09-09 22:17:18'),
(437, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779183\"}', '2021-09-09 22:17:19', '2021-09-09 22:17:19'),
(438, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-9.png\"],\"_\":\"1631225779184\"}', '2021-09-09 22:17:21', '2021-09-09 22:17:21'),
(439, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779185\"}', '2021-09-09 22:17:22', '2021-09-09 22:17:22'),
(440, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779186\"}', '2021-09-09 22:17:22', '2021-09-09 22:17:22'),
(441, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-6.png\"],\"_\":\"1631225779187\"}', '2021-09-09 22:17:25', '2021-09-09 22:17:25'),
(442, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779188\"}', '2021-09-09 22:17:25', '2021-09-09 22:17:25'),
(443, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779189\"}', '2021-09-09 22:17:26', '2021-09-09 22:17:26'),
(444, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:54', '2021-09-09 22:17:54'),
(445, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:54', '2021-09-09 22:17:54'),
(446, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:55', '2021-09-09 22:17:55'),
(447, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:55', '2021-09-09 22:17:55'),
(448, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:55', '2021-09-09 22:17:55'),
(449, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779190\"}', '2021-09-09 22:17:55', '2021-09-09 22:17:55'),
(450, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:56', '2021-09-09 22:17:56'),
(451, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779191\"}', '2021-09-09 22:17:56', '2021-09-09 22:17:56'),
(452, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:56', '2021-09-09 22:17:56'),
(453, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779192\"}', '2021-09-09 22:17:57', '2021-09-09 22:17:57'),
(454, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:57', '2021-09-09 22:17:57'),
(455, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779193\"}', '2021-09-09 22:17:57', '2021-09-09 22:17:57'),
(456, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:58', '2021-09-09 22:17:58'),
(457, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779194\"}', '2021-09-09 22:17:58', '2021-09-09 22:17:58'),
(458, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:58', '2021-09-09 22:17:58'),
(459, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779195\"}', '2021-09-09 22:17:59', '2021-09-09 22:17:59'),
(460, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779196\"}', '2021-09-09 22:17:59', '2021-09-09 22:17:59'),
(461, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:17:59', '2021-09-09 22:17:59'),
(462, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779197\"}', '2021-09-09 22:18:00', '2021-09-09 22:18:00'),
(463, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779198\"}', '2021-09-09 22:18:00', '2021-09-09 22:18:00'),
(464, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779199\"}', '2021-09-09 22:18:01', '2021-09-09 22:18:01'),
(465, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779200\"}', '2021-09-09 22:18:01', '2021-09-09 22:18:01'),
(466, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779201\"}', '2021-09-09 22:18:01', '2021-09-09 22:18:01'),
(467, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779202\"}', '2021-09-09 22:18:02', '2021-09-09 22:18:02'),
(468, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779203\"}', '2021-09-09 22:18:02', '2021-09-09 22:18:02'),
(469, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779204\"}', '2021-09-09 22:18:03', '2021-09-09 22:18:03'),
(470, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779205\"}', '2021-09-09 22:18:03', '2021-09-09 22:18:03'),
(471, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631225779206\"}', '2021-09-09 22:18:04', '2021-09-09 22:18:04'),
(472, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779207\"}', '2021-09-09 22:18:04', '2021-09-09 22:18:04'),
(473, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779208\"}', '2021-09-09 22:18:05', '2021-09-09 22:18:05'),
(474, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779209\"}', '2021-09-09 22:18:06', '2021-09-09 22:18:06'),
(475, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779210\"}', '2021-09-09 22:18:06', '2021-09-09 22:18:06'),
(476, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225779211\"}', '2021-09-09 22:18:07', '2021-09-09 22:18:07'),
(477, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:18:23', '2021-09-09 22:18:23'),
(478, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225903205\"}', '2021-09-09 22:18:23', '2021-09-09 22:18:23'),
(479, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225903206\"}', '2021-09-09 22:18:23', '2021-09-09 22:18:23'),
(480, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225903207\"}', '2021-09-09 22:18:24', '2021-09-09 22:18:24'),
(481, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:18:30', '2021-09-09 22:18:30'),
(482, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225910234\"}', '2021-09-09 22:18:30', '2021-09-09 22:18:30'),
(483, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225910235\"}', '2021-09-09 22:18:30', '2021-09-09 22:18:30'),
(484, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225910236\"}', '2021-09-09 22:18:31', '2021-09-09 22:18:31'),
(485, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:18:39', '2021-09-09 22:18:39'),
(486, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225919979\"}', '2021-09-09 22:18:40', '2021-09-09 22:18:40'),
(487, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225919980\"}', '2021-09-09 22:18:40', '2021-09-09 22:18:40'),
(488, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225919981\"}', '2021-09-09 22:18:40', '2021-09-09 22:18:40'),
(489, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:18:51', '2021-09-09 22:18:51'),
(490, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225931905\"}', '2021-09-09 22:18:52', '2021-09-09 22:18:52'),
(491, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631225931906\"}', '2021-09-09 22:18:52', '2021-09-09 22:18:52'),
(492, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631225931907\"}', '2021-09-09 22:18:52', '2021-09-09 22:18:52'),
(493, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\"}},\"category\":[\"14\",\"16\"],\"image\":\"\\/data\\/product\\/product-mini-1-100x90.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-mini-1-106x104.jpg\",\"\\/data\\/product\\/product-mini-2-100x90 (2).jpg\"],\"sku\":null,\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"199000\",\"price\":\"180000\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:20:01', '2021-09-09 22:20:01'),
(494, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:20:01', '2021-09-09 22:20:01'),
(495, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\"}},\"category\":[\"14\",\"16\"],\"image\":\"\\/data\\/product\\/product-mini-1-100x90.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-mini-1-106x104.jpg\",\"\\/data\\/product\\/product-mini-2-100x90 (2).jpg\"],\"sku\":\"sp1\",\"alias\":\"ban-chai-cho-cho\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"199000\",\"price\":\"180000\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:20:14', '2021-09-09 22:20:14'),
(496, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:20:14', '2021-09-09 22:20:14'),
(497, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:20:20', '2021-09-09 22:20:20'),
(498, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:21:06', '2021-09-09 22:21:06'),
(499, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226066717\"}', '2021-09-09 22:21:07', '2021-09-09 22:21:07'),
(500, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226066718\"}', '2021-09-09 22:21:07', '2021-09-09 22:21:07'),
(501, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226066719\"}', '2021-09-09 22:21:07', '2021-09-09 22:21:07'),
(502, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:21:20', '2021-09-09 22:21:20'),
(503, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226080396\"}', '2021-09-09 22:21:20', '2021-09-09 22:21:20'),
(504, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226080397\"}', '2021-09-09 22:21:20', '2021-09-09 22:21:20'),
(505, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226080398\"}', '2021-09-09 22:21:21', '2021-09-09 22:21:21'),
(506, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:21:57', '2021-09-09 22:21:57'),
(507, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226117932\"}', '2021-09-09 22:21:58', '2021-09-09 22:21:58'),
(508, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226117933\"}', '2021-09-09 22:21:58', '2021-09-09 22:21:58'),
(509, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226117934\"}', '2021-09-09 22:21:58', '2021-09-09 22:21:58'),
(510, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"V\\u00f2ng c\\u1ed5 cho ch\\u00f3 vui v\\u1ebb\",\"keyword\":null,\"description\":\"V\\u00f2ng c\\u1ed5 cho ch\\u00f3 vui v\\u1ebb\",\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\"}},\"category\":[\"14\",\"16\"],\"image\":\"\\/data\\/product\\/product-02-200x200.png\",\"sub_image\":[\"\\/data\\/product\\/product-mini-1-100x90.jpg\"],\"sku\":\"sp2\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"190000\",\"price\":\"180000\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:22:05', '2021-09-09 22:22:05'),
(511, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:22:05', '2021-09-09 22:22:05'),
(512, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:22:10', '2021-09-09 22:22:10'),
(513, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:22:49', '2021-09-09 22:22:49'),
(514, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226169306\"}', '2021-09-09 22:22:49', '2021-09-09 22:22:49'),
(515, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226169307\"}', '2021-09-09 22:22:49', '2021-09-09 22:22:49'),
(516, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226169308\"}', '2021-09-09 22:22:50', '2021-09-09 22:22:50'),
(517, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:22:55', '2021-09-09 22:22:55'),
(518, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226175334\"}', '2021-09-09 22:22:55', '2021-09-09 22:22:55'),
(519, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226175335\"}', '2021-09-09 22:22:55', '2021-09-09 22:22:55'),
(520, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226175336\"}', '2021-09-09 22:22:56', '2021-09-09 22:22:56'),
(521, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:23:01', '2021-09-09 22:23:01');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(522, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226181786\"}', '2021-09-09 22:23:02', '2021-09-09 22:23:02'),
(523, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226181787\"}', '2021-09-09 22:23:02', '2021-09-09 22:23:02'),
(524, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226181788\"}', '2021-09-09 22:23:02', '2021-09-09 22:23:02'),
(525, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"keyword\":null,\"description\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"content\":\"B&agrave;n ch\\u1ea3i cho ch&oacute;\"}},\"image\":\"\\/data\\/product\\/product-03-200x200.png\",\"sub_image\":[\"\\/data\\/product\\/product-big-3-328x330.jpg\",\"\\/data\\/product\\/product-mini-2-100x90 (1).jpg\"],\"sku\":\"sp3\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"180000\",\"price\":\"150000\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:23:30', '2021-09-09 22:23:30'),
(526, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:23:30', '2021-09-09 22:23:30'),
(527, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"keyword\":null,\"description\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"content\":\"B&agrave;n ch\\u1ea3i cho ch&oacute;\"}},\"category\":[\"14\",\"15\",\"17\"],\"image\":\"\\/data\\/product\\/product-03-200x200.png\",\"sub_image\":[\"\\/data\\/product\\/product-big-3-328x330.jpg\",\"\\/data\\/product\\/product-mini-2-100x90 (1).jpg\"],\"sku\":\"sp3\",\"alias\":\"ban-chai-cho-cho\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"180000\",\"price\":\"150000\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:23:41', '2021-09-09 22:23:41'),
(528, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:23:42', '2021-09-09 22:23:42'),
(529, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:24:00', '2021-09-09 22:24:00'),
(530, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:24:19', '2021-09-09 22:24:19'),
(531, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226259457\"}', '2021-09-09 22:24:19', '2021-09-09 22:24:19'),
(532, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226259458\"}', '2021-09-09 22:24:20', '2021-09-09 22:24:20'),
(533, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226259459\"}', '2021-09-09 22:24:20', '2021-09-09 22:24:20'),
(534, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:24:27', '2021-09-09 22:24:27'),
(535, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226268014\"}', '2021-09-09 22:24:28', '2021-09-09 22:24:28'),
(536, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226268015\"}', '2021-09-09 22:24:28', '2021-09-09 22:24:28'),
(537, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226268016\"}', '2021-09-09 22:24:28', '2021-09-09 22:24:28'),
(538, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:24:33', '2021-09-09 22:24:33'),
(539, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226273509\"}', '2021-09-09 22:24:33', '2021-09-09 22:24:33'),
(540, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226273510\"}', '2021-09-09 22:24:34', '2021-09-09 22:24:34'),
(541, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226273511\"}', '2021-09-09 22:24:34', '2021-09-09 22:24:34'),
(542, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":\"Pet Food Bowl\",\"keyword\":null,\"description\":\"Pet Food Bowl\",\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\"}},\"category\":[\"14\",\"15\",\"16\"],\"image\":\"\\/data\\/product\\/product-04-200x200.png\",\"sub_image\":[\"\\/data\\/product\\/product-mini-1-100x90.jpg\",\"\\/data\\/product\\/product-04-200x200.png\"],\"sku\":\"sp4\",\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"210000\",\"price\":\"200000\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:25:09', '2021-09-09 22:25:09'),
(543, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:25:09', '2021-09-09 22:25:09'),
(544, 1, 'sc_admin/product/edit/18', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:29:07', '2021-09-09 22:29:07'),
(545, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:29:13', '2021-09-09 22:29:13'),
(546, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226553697\"}', '2021-09-09 22:29:13', '2021-09-09 22:29:13'),
(547, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226553698\"}', '2021-09-09 22:29:14', '2021-09-09 22:29:14'),
(548, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226553699\"}', '2021-09-09 22:29:14', '2021-09-09 22:29:14'),
(549, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-09 22:29:36', '2021-09-09 22:29:36'),
(550, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226576814\"}', '2021-09-09 22:29:37', '2021-09-09 22:29:37'),
(551, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631226576815\"}', '2021-09-09 22:29:37', '2021-09-09 22:29:37'),
(552, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226576816\"}', '2021-09-09 22:29:37', '2021-09-09 22:29:37'),
(553, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:30:06', '2021-09-09 22:30:06'),
(554, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1631226576817\"}', '2021-09-09 22:30:07', '2021-09-09 22:30:07'),
(555, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631226576818\"}', '2021-09-09 22:30:07', '2021-09-09 22:30:07'),
(556, 1, 'sc_admin/product/edit/18', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\"}},\"category\":[\"14\",\"16\"],\"image\":\"\\/data\\/product\\/product-01-200x200.png\",\"sub_image\":[\"\\/data\\/product\\/product-mini-1-106x104.jpg\",\"\\/data\\/product\\/product-mini-2-100x90 (2).jpg\"],\"sku\":\"sp1\",\"alias\":\"ban-chai-cho-cho\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"199000\",\"price\":\"180000\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"vqLwwcjrluPI3edMYiZnlE7N6Acz4HhdACGyoOb8\"}', '2021-09-09 22:30:19', '2021-09-09 22:30:19'),
(557, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-09 22:30:19', '2021-09-09 22:30:19'),
(558, 1, 'sc_admin/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:28:58', '2021-09-10 09:28:58'),
(559, 1, 'sc_admin/store_link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:29:24', '2021-09-10 09:29:24'),
(560, 1, 'sc_admin/store_link/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:29:42', '2021-09-10 09:29:42'),
(561, 1, 'sc_admin/store_link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:30:45', '2021-09-10 09:30:45'),
(562, 1, 'sc_admin/store_link/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"front.home\",\"url\":\"route::home\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"20\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 09:31:11', '2021-09-10 09:31:11'),
(563, 1, 'sc_admin/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:31:11', '2021-09-10 09:31:11'),
(564, 1, 'sc_admin/store_link/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 09:31:55', '2021-09-10 09:31:55'),
(565, 1, 'sc_admin/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 09:31:55', '2021-09-10 09:31:55'),
(566, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:42:14', '2021-09-10 09:42:14'),
(567, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"domain\",\"value\":\"benstore.com.vn\",\"pk\":null,\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\",\"storeId\":\"1\"}', '2021-09-10 09:42:44', '2021-09-10 09:42:44'),
(568, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"email\",\"value\":\"benstore@gmail.com\",\"pk\":null,\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\",\"storeId\":\"1\"}', '2021-09-10 09:45:01', '2021-09-10 09:45:01'),
(569, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:45:20', '2021-09-10 09:45:20'),
(570, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:57:58', '2021-09-10 09:57:58'),
(571, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 09:58:01', '2021-09-10 09:58:01'),
(572, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:11:21', '2021-09-10 10:11:21'),
(573, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:11:33', '2021-09-10 10:11:33'),
(574, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-10 10:18:33', '2021-09-10 10:18:33'),
(575, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631269114559\"}', '2021-09-10 10:18:34', '2021-09-10 10:18:34'),
(576, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631269114560\"}', '2021-09-10 10:18:35', '2021-09-10 10:18:35'),
(577, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269114561\"}', '2021-09-10 10:18:35', '2021-09-10 10:18:35'),
(578, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:18:48', '2021-09-10 10:18:48'),
(579, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1631269114562\"}', '2021-09-10 10:18:49', '2021-09-10 10:18:49'),
(580, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269114563\"}', '2021-09-10 10:18:49', '2021-09-10 10:18:49'),
(581, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-10 10:18:59', '2021-09-10 10:18:59'),
(582, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631269139497\"}', '2021-09-10 10:18:59', '2021-09-10 10:18:59'),
(583, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631269139498\"}', '2021-09-10 10:19:00', '2021-09-10 10:19:00'),
(584, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269139499\"}', '2021-09-10 10:19:00', '2021-09-10 10:19:00'),
(585, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/breadcrumbs-bg.jpg\",\"url\":null,\"title\":\"Banner 3\",\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:19:02', '2021-09-10 10:19:02'),
(586, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:19:02', '2021-09-10 10:19:02'),
(587, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:20:08', '2021-09-10 10:20:08'),
(588, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:20:10', '2021-09-10 10:20:10'),
(589, 1, 'sc_admin/page/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:20:17', '2021-09-10 10:20:17'),
(590, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:20:17', '2021-09-10 10:20:17'),
(591, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:20:45', '2021-09-10 10:20:45'),
(592, 1, 'sc_admin/news/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:21:12', '2021-09-10 10:21:12'),
(593, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 10:21:20', '2021-09-10 10:21:20'),
(594, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631269280585\"}', '2021-09-10 10:21:20', '2021-09-10 10:21:20'),
(595, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631269280586\"}', '2021-09-10 10:21:21', '2021-09-10 10:21:21'),
(596, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280587\"}', '2021-09-10 10:21:21', '2021-09-10 10:21:21'),
(597, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:45', '2021-09-10 10:21:45'),
(598, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:46', '2021-09-10 10:21:46'),
(599, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:46', '2021-09-10 10:21:46'),
(600, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:46', '2021-09-10 10:21:46'),
(601, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280588\"}', '2021-09-10 10:21:47', '2021-09-10 10:21:47'),
(602, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280589\"}', '2021-09-10 10:21:47', '2021-09-10 10:21:47'),
(603, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:47', '2021-09-10 10:21:47'),
(604, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:48', '2021-09-10 10:21:48'),
(605, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280590\"}', '2021-09-10 10:21:48', '2021-09-10 10:21:48'),
(606, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:48', '2021-09-10 10:21:48'),
(607, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280591\"}', '2021-09-10 10:21:49', '2021-09-10 10:21:49'),
(608, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:49', '2021-09-10 10:21:49'),
(609, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:49', '2021-09-10 10:21:49'),
(610, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280592\"}', '2021-09-10 10:21:50', '2021-09-10 10:21:50'),
(611, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280593\"}', '2021-09-10 10:21:50', '2021-09-10 10:21:50'),
(612, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280594\"}', '2021-09-10 10:21:51', '2021-09-10 10:21:51'),
(613, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280595\"}', '2021-09-10 10:21:51', '2021-09-10 10:21:51'),
(614, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:51', '2021-09-10 10:21:51'),
(615, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280596\"}', '2021-09-10 10:21:52', '2021-09-10 10:21:52'),
(616, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280597\"}', '2021-09-10 10:21:52', '2021-09-10 10:21:52'),
(617, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:52', '2021-09-10 10:21:52'),
(618, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280598\"}', '2021-09-10 10:21:53', '2021-09-10 10:21:53'),
(619, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:21:53', '2021-09-10 10:21:53'),
(620, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280599\"}', '2021-09-10 10:21:53', '2021-09-10 10:21:53'),
(621, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280600\"}', '2021-09-10 10:21:54', '2021-09-10 10:21:54'),
(622, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280601\"}', '2021-09-10 10:21:54', '2021-09-10 10:21:54'),
(623, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280602\"}', '2021-09-10 10:21:55', '2021-09-10 10:21:55'),
(624, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280603\"}', '2021-09-10 10:21:55', '2021-09-10 10:21:55'),
(625, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280604\"}', '2021-09-10 10:21:56', '2021-09-10 10:21:56'),
(626, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280605\"}', '2021-09-10 10:21:56', '2021-09-10 10:21:56'),
(627, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631269280606\"}', '2021-09-10 10:21:57', '2021-09-10 10:21:57'),
(628, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280607\"}', '2021-09-10 10:21:57', '2021-09-10 10:21:57'),
(629, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280608\"}', '2021-09-10 10:21:58', '2021-09-10 10:21:58'),
(630, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280609\"}', '2021-09-10 10:21:58', '2021-09-10 10:21:58'),
(631, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280610\"}', '2021-09-10 10:21:59', '2021-09-10 10:21:59'),
(632, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631269280611\"}', '2021-09-10 10:21:59', '2021-09-10 10:21:59'),
(633, 1, 'sc_admin/news/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-1\",\"image\":\"\\/data\\/content\\/post-1-370x239.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 10:22:10', '2021-09-10 10:22:10'),
(634, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 10:22:11', '2021-09-10 10:22:11'),
(635, 1, 'sc_admin/news/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:17:17', '2021-09-10 11:17:17'),
(636, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 11:17:17', '2021-09-10 11:17:17'),
(637, 1, 'sc_admin/news/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:17:20', '2021-09-10 11:17:20'),
(638, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 11:17:20', '2021-09-10 11:17:20'),
(639, 1, 'sc_admin/news/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:17:24', '2021-09-10 11:17:24'),
(640, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 11:17:24', '2021-09-10 11:17:24'),
(641, 1, 'sc_admin/news/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:17:34', '2021-09-10 11:17:34'),
(642, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 11:17:37', '2021-09-10 11:17:37'),
(643, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272657216\"}', '2021-09-10 11:17:37', '2021-09-10 11:17:37'),
(644, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272657217\"}', '2021-09-10 11:17:37', '2021-09-10 11:17:37'),
(645, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631272657218\"}', '2021-09-10 11:17:38', '2021-09-10 11:17:38'),
(646, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 11:17:56', '2021-09-10 11:17:56'),
(647, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272676604\"}', '2021-09-10 11:17:56', '2021-09-10 11:17:56'),
(648, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272676605\"}', '2021-09-10 11:17:57', '2021-09-10 11:17:57'),
(649, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631272676606\"}', '2021-09-10 11:17:57', '2021-09-10 11:17:57'),
(650, 1, 'sc_admin/news/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 3\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-3\",\"image\":\"\\/data\\/content\\/post-2-270x215.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:18:07', '2021-09-10 11:18:07'),
(651, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:18:07', '2021-09-10 11:18:07'),
(652, 1, 'sc_admin/news/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:18:09', '2021-09-10 11:18:09'),
(653, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 11:18:11', '2021-09-10 11:18:11'),
(654, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272691400\"}', '2021-09-10 11:18:11', '2021-09-10 11:18:11'),
(655, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272691401\"}', '2021-09-10 11:18:11', '2021-09-10 11:18:11'),
(656, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631272691402\"}', '2021-09-10 11:18:12', '2021-09-10 11:18:12'),
(657, 1, 'sc_admin/news/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 2\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-2\",\"image\":\"\\/data\\/content\\/post-3-270x215.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:18:17', '2021-09-10 11:18:17'),
(658, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:18:17', '2021-09-10 11:18:17'),
(659, 1, 'sc_admin/news/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:18:35', '2021-09-10 11:18:35'),
(660, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 11:18:38', '2021-09-10 11:18:38'),
(661, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272718951\"}', '2021-09-10 11:18:39', '2021-09-10 11:18:39'),
(662, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272718952\"}', '2021-09-10 11:18:39', '2021-09-10 11:18:39'),
(663, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631272718953\"}', '2021-09-10 11:18:39', '2021-09-10 11:18:39'),
(664, 1, 'sc_admin/news/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:19:02', '2021-09-10 11:19:02'),
(665, 1, 'sc_admin/news/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 2\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-2\",\"image\":\"\\/data\\/content\\/post-3-270x215.jpg\",\"sort\":\"2\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:19:11', '2021-09-10 11:19:11'),
(666, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:19:11', '2021-09-10 11:19:11'),
(667, 1, 'sc_admin/news/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:19:13', '2021-09-10 11:19:13');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(668, 1, 'sc_admin/news/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 3\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-3\",\"image\":\"\\/data\\/content\\/post-2-270x215.jpg\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:19:17', '2021-09-10 11:19:17'),
(669, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:19:18', '2021-09-10 11:19:18'),
(670, 1, 'sc_admin/news/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:19:46', '2021-09-10 11:19:46'),
(671, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 11:19:48', '2021-09-10 11:19:48'),
(672, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272788596\"}', '2021-09-10 11:19:48', '2021-09-10 11:19:48'),
(673, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631272788597\"}', '2021-09-10 11:19:49', '2021-09-10 11:19:49'),
(674, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631272788598\"}', '2021-09-10 11:19:49', '2021-09-10 11:19:49'),
(675, 1, 'sc_admin/news/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 1\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-1\",\"image\":\"\\/data\\/content\\/post-1-570x461.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:19:54', '2021-09-10 11:19:54'),
(676, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:19:54', '2021-09-10 11:19:54'),
(677, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:23:53', '2021-09-10 11:23:53'),
(678, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:23:55', '2021-09-10 11:23:55'),
(679, 1, 'sc_admin/page/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<p>S\\u1ee9 m\\u1ec7nh c\\u1ee7a Pet Shop ch&uacute;ng t&ocirc;i l&agrave; cung c\\u1ea5p d\\u1ecbch v\\u1ee5 ch\\u0103m s&oacute;c ch\\u1ea5t l\\u01b0\\u1ee3ng cho v\\u1eadt nu&ocirc;i.<\\/p>\\r\\n\\r\\n<p>Ch&uacute;ng t&ocirc;i mu\\u1ed1n kh&aacute;ch h&agrave;ng v&agrave; v\\u1eadt nu&ocirc;i c\\u1ee7a h\\u1ecd nh\\u1eadn \\u0111\\u01b0\\u1ee3c d\\u1ecbch v\\u1ee5 v&agrave; h&agrave;ng h&oacute;a t\\u1ed1t nh\\u1ea5t, \\u0111&oacute; l&agrave; l&yacute; do t\\u1ea1i sao ch&uacute;ng t&ocirc;i ch\\u1ec9 l&agrave;m vi\\u1ec7c v\\u1edbi c&aacute;c nh&agrave; s\\u1ea3n xu\\u1ea5t \\u0111&atilde; \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh v&agrave; c&oacute; uy t&iacute;n.<\\/p>\"}},\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"omkZRgvlB0Kuipb51BlwUldTDrkZI2EqcTvcx989\"}', '2021-09-10 11:24:45', '2021-09-10 11:24:45'),
(680, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 11:24:45', '2021-09-10 11:24:45'),
(681, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:15:32', '2021-09-10 16:15:32'),
(682, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:15:34', '2021-09-10 16:15:34'),
(683, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 16:17:01', '2021-09-10 16:17:01'),
(684, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290621348\"}', '2021-09-10 16:17:01', '2021-09-10 16:17:01'),
(685, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290621349\"}', '2021-09-10 16:17:01', '2021-09-10 16:17:01'),
(686, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631290621350\"}', '2021-09-10 16:17:02', '2021-09-10 16:17:02'),
(687, 1, 'sc_admin/news/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy tricks to teach your dog\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/post-mini-1-260x254.jpg\",\"sort\":\"5\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:17:23', '2021-09-10 16:17:23'),
(688, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:17:23', '2021-09-10 16:17:23'),
(689, 1, 'sc_admin/news/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:17:26', '2021-09-10 16:17:26'),
(690, 1, 'sc_admin/news/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy tricks to teach your dog\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":\"easy-tricks-to-teach-your-dog\",\"image\":\"\\/data\\/content\\/post-mini-1-260x254.jpg\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:17:31', '2021-09-10 16:17:31'),
(691, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:17:31', '2021-09-10 16:17:31'),
(692, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:18:33', '2021-09-10 16:18:33'),
(693, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 16:18:45', '2021-09-10 16:18:45'),
(694, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290725247\"}', '2021-09-10 16:18:45', '2021-09-10 16:18:45'),
(695, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290725248\"}', '2021-09-10 16:18:45', '2021-09-10 16:18:45'),
(696, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631290725249\"}', '2021-09-10 16:18:46', '2021-09-10 16:18:46'),
(697, 1, 'sc_admin/news/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"8 tips for taking the perfect photo of your pet\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/post-6-370x239.jpg\",\"sort\":\"5\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:18:56', '2021-09-10 16:18:56'),
(698, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:18:56', '2021-09-10 16:18:56'),
(699, 1, 'sc_admin/news/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:19:00', '2021-09-10 16:19:00'),
(700, 1, 'sc_admin/news/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"8 tips for taking the perfect photo of your pet\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":\"8-tips-for-taking-the-perfect-photo-of-your-pet\",\"image\":\"\\/data\\/content\\/post-6-370x239.jpg\",\"sort\":\"4\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:19:04', '2021-09-10 16:19:04'),
(701, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:19:04', '2021-09-10 16:19:04'),
(702, 1, 'sc_admin/news/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:20:13', '2021-09-10 16:20:13'),
(703, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 16:20:16', '2021-09-10 16:20:16'),
(704, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290816282\"}', '2021-09-10 16:20:16', '2021-09-10 16:20:16'),
(705, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290816283\"}', '2021-09-10 16:20:16', '2021-09-10 16:20:16'),
(706, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631290816284\"}', '2021-09-10 16:20:17', '2021-09-10 16:20:17'),
(707, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:20:35', '2021-09-10 16:20:35'),
(708, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1631290816285\"}', '2021-09-10 16:20:36', '2021-09-10 16:20:36'),
(709, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631290816286\"}', '2021-09-10 16:20:36', '2021-09-10 16:20:36'),
(710, 1, 'sc_admin/news/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"8 tips for taking the perfect photo of your pet\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":\"8-tips-for-taking-the-perfect-photo-of-your-pet\",\"image\":\"\\/data\\/content\\/post-6-370x239.jpg\",\"sort\":\"4\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:20:42', '2021-09-10 16:20:42'),
(711, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:20:42', '2021-09-10 16:20:42'),
(712, 1, 'sc_admin/news/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:20:51', '2021-09-10 16:20:51'),
(713, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 16:20:54', '2021-09-10 16:20:54'),
(714, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290854174\"}', '2021-09-10 16:20:54', '2021-09-10 16:20:54'),
(715, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290854175\"}', '2021-09-10 16:20:54', '2021-09-10 16:20:54'),
(716, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631290854176\"}', '2021-09-10 16:20:55', '2021-09-10 16:20:55'),
(717, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:21:12', '2021-09-10 16:21:12'),
(718, 1, 'sc_admin/news/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy tricks to teach your dog\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":\"easy-tricks-to-teach-your-dog\",\"image\":\"\\/data\\/content\\/post-5-370x239.jpg\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:21:19', '2021-09-10 16:21:19'),
(719, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:21:19', '2021-09-10 16:21:19'),
(720, 1, 'sc_admin/news/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:21:30', '2021-09-10 16:21:30'),
(721, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:21:34', '2021-09-10 16:21:34'),
(722, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 16:21:57', '2021-09-10 16:21:57'),
(723, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290917844\"}', '2021-09-10 16:21:58', '2021-09-10 16:21:58'),
(724, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631290917845\"}', '2021-09-10 16:21:58', '2021-09-10 16:21:58'),
(725, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631290917846\"}', '2021-09-10 16:21:58', '2021-09-10 16:21:58'),
(726, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:22:20', '2021-09-10 16:22:20'),
(727, 1, 'sc_admin/news/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy tricks to teach your dog 2\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/post-4-370x239.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:22:27', '2021-09-10 16:22:27'),
(728, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:22:27', '2021-09-10 16:22:27'),
(729, 1, 'sc_admin/news/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:22:47', '2021-09-10 16:22:47'),
(730, 1, 'sc_admin/news/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy tricks to teach your dog 2\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":\"easy-tricks-to-teach-your-dog-2\",\"image\":\"\\/data\\/content\\/post-4-370x239.jpg\",\"sort\":\"5\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:22:51', '2021-09-10 16:22:51'),
(731, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:22:52', '2021-09-10 16:22:52'),
(732, 1, 'sc_admin/news/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:31:00', '2021-09-10 16:31:00'),
(733, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:31:08', '2021-09-10 16:31:08'),
(734, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:31:10', '2021-09-10 16:31:10'),
(735, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:31:42', '2021-09-10 16:31:42'),
(736, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:31:57', '2021-09-10 16:31:57'),
(737, 1, 'sc_admin/env/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:32:02', '2021-09-10 16:32:02'),
(738, 1, 'sc_admin/custom_field', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:32:11', '2021-09-10 16:32:11'),
(739, 1, 'sc_admin/config/webhook', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:32:19', '2021-09-10 16:32:19'),
(740, 1, 'sc_admin/log', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:32:24', '2021-09-10 16:32:24'),
(741, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:32:48', '2021-09-10 16:32:48'),
(742, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:33:44', '2021-09-10 16:33:44'),
(743, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:38:52', '2021-09-10 16:38:52'),
(744, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:40:38', '2021-09-10 16:40:38'),
(745, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"logo\"}', '2021-09-10 16:40:44', '2021-09-10 16:40:44'),
(746, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1631292044798\"}', '2021-09-10 16:40:45', '2021-09-10 16:40:45'),
(747, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1631292044799\"}', '2021-09-10 16:40:45', '2021-09-10 16:40:45'),
(748, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631292044800\"}', '2021-09-10 16:40:45', '2021-09-10 16:40:45'),
(749, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"logo\"}', '2021-09-10 16:42:49', '2021-09-10 16:42:49'),
(750, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1631292169734\"}', '2021-09-10 16:42:50', '2021-09-10 16:42:50'),
(751, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1631292169735\"}', '2021-09-10 16:42:50', '2021-09-10 16:42:50'),
(752, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631292169736\"}', '2021-09-10 16:42:50', '2021-09-10 16:42:50'),
(753, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"icon\",\"value\":\"\\/data\\/logo\\/logo-default-336x120.png\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\",\"storeId\":\"1\"}', '2021-09-10 16:43:18', '2021-09-10 16:43:18'),
(754, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:43:20', '2021-09-10 16:43:20'),
(755, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:43:35', '2021-09-10 16:43:35'),
(756, 1, 'sc_admin/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:54:17', '2021-09-10 16:54:17'),
(757, 1, 'sc_admin/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:54:46', '2021-09-10 16:54:46'),
(758, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:55:01', '2021-09-10 16:55:01'),
(759, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:55:02', '2021-09-10 16:55:02'),
(760, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 16:55:19', '2021-09-10 16:55:19'),
(761, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631292919213\"}', '2021-09-10 16:55:19', '2021-09-10 16:55:19'),
(762, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631292919214\"}', '2021-09-10 16:55:19', '2021-09-10 16:55:19'),
(763, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631292919215\"}', '2021-09-10 16:55:20', '2021-09-10 16:55:20'),
(764, 1, 'sc_admin/news/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"How To Brighten Your Wardrobe With A Dash Of Lime\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/post-mini-2-260x254.jpg\",\"sort\":\"5\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:55:33', '2021-09-10 16:55:33'),
(765, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:55:34', '2021-09-10 16:55:34'),
(766, 1, 'sc_admin/news/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"10\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 16:55:44', '2021-09-10 16:55:44'),
(767, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-10 16:55:44', '2021-09-10 16:55:44'),
(768, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 16:59:36', '2021-09-10 16:59:36'),
(769, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 16:59:52', '2021-09-10 16:59:52'),
(770, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631293192449\"}', '2021-09-10 16:59:52', '2021-09-10 16:59:52'),
(771, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631293192450\"}', '2021-09-10 16:59:52', '2021-09-10 16:59:52'),
(772, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631293192451\"}', '2021-09-10 16:59:53', '2021-09-10 16:59:53'),
(773, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:00:00', '2021-09-10 17:00:00'),
(774, 1, 'sc_admin/news/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:00:08', '2021-09-10 17:00:08'),
(775, 1, 'sc_admin/data_not_found', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:00:09', '2021-09-10 17:00:09'),
(776, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:00:13', '2021-09-10 17:00:13'),
(777, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:00:19', '2021-09-10 17:00:19'),
(778, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"content\"}', '2021-09-10 17:00:29', '2021-09-10 17:00:29'),
(779, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631293229244\"}', '2021-09-10 17:00:29', '2021-09-10 17:00:29'),
(780, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1631293229245\"}', '2021-09-10 17:00:29', '2021-09-10 17:00:29'),
(781, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631293229246\"}', '2021-09-10 17:00:30', '2021-09-10 17:00:30'),
(782, 1, 'sc_admin/news/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"How To Brighten Your Wardrobe With A Dash Of Lime\",\"keyword\":null,\"description\":\"How To Brighten Your Wardrobe With A Dash Of Lime\",\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/post-3-370x239.jpg\",\"sort\":\"5\",\"status\":\"on\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 17:00:36', '2021-09-10 17:00:36'),
(783, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:00:36', '2021-09-10 17:00:36'),
(784, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:11:07', '2021-09-10 17:11:07'),
(785, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:14:04', '2021-09-10 17:14:04'),
(786, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/store-1.jpg\",\"url\":null,\"title\":\"Banner 4\",\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 17:14:08', '2021-09-10 17:14:08'),
(787, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:14:08', '2021-09-10 17:14:08'),
(788, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:17:02', '2021-09-10 17:17:02'),
(789, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-10 17:17:04', '2021-09-10 17:17:04'),
(790, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631294224338\"}', '2021-09-10 17:17:04', '2021-09-10 17:17:04'),
(791, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631294224339\"}', '2021-09-10 17:17:04', '2021-09-10 17:17:04'),
(792, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631294224340\"}', '2021-09-10 17:17:05', '2021-09-10 17:17:05'),
(793, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/breadcrumbs-bg.jpg\",\"url\":null,\"title\":\"Banner 4\",\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"_token\":\"1pnhZsP6oBl1e2N7NB4FXstGPNJQCBmAIlNNPB5s\"}', '2021-09-10 17:17:11', '2021-09-10 17:17:11'),
(794, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:17:11', '2021-09-10 17:17:11'),
(795, 1, 'sc_admin/auth/logout', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:45:20', '2021-09-10 17:45:20'),
(796, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:45:33', '2021-09-10 17:45:33'),
(797, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:52:05', '2021-09-10 17:52:05'),
(798, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:52:57', '2021-09-10 17:52:57'),
(799, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:53:08', '2021-09-10 17:53:08'),
(800, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 17:56:58', '2021-09-10 17:56:58'),
(801, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"address\",\"value\":\"\\u0110\\u01b0\\u1eddng Z115  Th\\u00e1i Nguy\\u00eannn\",\"pk\":null,\"_token\":\"kbXGIi74MDgDqJUqZ4Vi8xAeDYx2LeWuQukgo35L\",\"storeId\":\"1\"}', '2021-09-10 17:58:51', '2021-09-10 17:58:51'),
(802, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 18:36:26', '2021-09-10 18:36:26'),
(803, 1, 'sc_admin/product/edit/18', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 18:36:28', '2021-09-10 18:36:28'),
(804, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-10 18:36:33', '2021-09-10 18:36:33'),
(805, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631298993483\"}', '2021-09-10 18:36:33', '2021-09-10 18:36:33'),
(806, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631298993484\"}', '2021-09-10 18:36:33', '2021-09-10 18:36:33'),
(807, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631298993485\"}', '2021-09-10 18:36:34', '2021-09-10 18:36:34'),
(808, 1, 'sc_admin/product/edit/18', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\"}},\"category\":[\"14\",\"16\"],\"image\":\"\\/data\\/product\\/product-big-1-328x330.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-mini-1-106x104.jpg\",\"\\/data\\/product\\/product-mini-2-100x90 (2).jpg\"],\"sku\":\"sp1\",\"alias\":\"ban-chai-cho-cho\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"199000\",\"price\":\"180000\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"kbXGIi74MDgDqJUqZ4Vi8xAeDYx2LeWuQukgo35L\"}', '2021-09-10 18:36:55', '2021-09-10 18:36:55'),
(809, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 18:36:55', '2021-09-10 18:36:55'),
(810, 1, 'sc_admin/product/edit/18', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 18:37:49', '2021-09-10 18:37:49'),
(811, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"product\"}', '2021-09-10 18:37:52', '2021-09-10 18:37:52'),
(812, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631299072812\"}', '2021-09-10 18:37:53', '2021-09-10 18:37:53'),
(813, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1631299072813\"}', '2021-09-10 18:37:53', '2021-09-10 18:37:53'),
(814, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631299072814\"}', '2021-09-10 18:37:53', '2021-09-10 18:37:53'),
(815, 1, 'sc_admin/product/edit/18', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"B\\u00e0n ch\\u1ea3i cho ch\\u00f3\",\"keyword\":null,\"description\":null,\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\"}},\"category\":[\"14\",\"16\"],\"image\":\"\\/data\\/product\\/product-01-200x200.png\",\"sub_image\":[\"\\/data\\/product\\/product-mini-1-106x104.jpg\",\"\\/data\\/product\\/product-mini-2-100x90 (2).jpg\"],\"sku\":\"sp1\",\"alias\":\"ban-chai-cho-cho\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"199000\",\"price\":\"180000\",\"tax_id\":\"0\",\"stock\":\"100\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2021-09-10\",\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"kbXGIi74MDgDqJUqZ4Vi8xAeDYx2LeWuQukgo35L\"}', '2021-09-10 18:38:02', '2021-09-10 18:38:02'),
(816, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 18:38:02', '2021-09-10 18:38:02'),
(817, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 18:57:08', '2021-09-10 18:57:08'),
(818, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"kbXGIi74MDgDqJUqZ4Vi8xAeDYx2LeWuQukgo35L\",\"storeId\":\"1\"}', '2021-09-10 18:57:13', '2021-09-10 18:57:13'),
(819, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"benstore-template\",\"pk\":null,\"_token\":\"kbXGIi74MDgDqJUqZ4Vi8xAeDYx2LeWuQukgo35L\",\"storeId\":\"1\"}', '2021-09-10 18:58:24', '2021-09-10 18:58:24'),
(820, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 19:16:11', '2021-09-10 19:16:11'),
(821, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 19:16:16', '2021-09-10 19:16:16'),
(822, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"product_list\",\"value\":\"3\",\"pk\":\"product_list\",\"_token\":\"kbXGIi74MDgDqJUqZ4Vi8xAeDYx2LeWuQukgo35L\",\"storeId\":\"1\"}', '2021-09-10 19:16:31', '2021-09-10 19:16:31');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(823, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"product_list\",\"value\":\"6\",\"pk\":\"product_list\",\"_token\":\"kbXGIi74MDgDqJUqZ4Vi8xAeDYx2LeWuQukgo35L\",\"storeId\":\"1\"}', '2021-09-10 19:16:56', '2021-09-10 19:16:56'),
(824, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 19:24:56', '2021-09-10 19:24:56'),
(825, 1, 'sc_admin/product/edit/21', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-10 19:24:58', '2021-09-10 19:24:58'),
(826, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:42:08', '2021-09-11 10:42:08'),
(827, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:42:22', '2021-09-11 10:42:22'),
(828, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"action\",\"lang\":\"vi\",\"keyword\":null}', '2021-09-11 10:43:25', '2021-09-11 10:43:25'),
(829, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"contact\",\"lang\":\"vi\",\"keyword\":null}', '2021-09-11 10:44:04', '2021-09-11 10:44:04'),
(830, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"admin.menu_titles\",\"lang\":\"vi\",\"keyword\":null}', '2021-09-11 10:45:07', '2021-09-11 10:45:07'),
(831, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"admin.menu_titles\",\"lang\":\"en\",\"keyword\":null}', '2021-09-11 10:45:54', '2021-09-11 10:45:54'),
(832, 1, 'sc_admin/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:46:07', '2021-09-11 10:46:07'),
(833, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:46:12', '2021-09-11 10:46:12'),
(834, 1, 'sc_admin/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:46:22', '2021-09-11 10:46:22'),
(835, 1, 'sc_admin/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:46:26', '2021-09-11 10:46:26'),
(836, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:46:34', '2021-09-11 10:46:34'),
(837, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:46:45', '2021-09-11 10:46:45'),
(838, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:46:51', '2021-09-11 10:46:51'),
(839, 1, 'sc_admin/menu/edit/30', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:46:55', '2021-09-11 10:46:55'),
(840, 1, 'sc_admin/menu/edit/30', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"parent_id\":\"9\",\"title\":\"admin.menu_titles.localization\",\"icon\":\"fab fa-shirtsinbulk\",\"uri\":null,\"sort\":\"5\",\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\"}', '2021-09-11 10:47:04', '2021-09-11 10:47:04'),
(841, 1, 'sc_admin/menu/edit/30', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:47:05', '2021-09-11 10:47:05'),
(842, 1, 'sc_admin/menu/edit/30', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:47:10', '2021-09-11 10:47:10'),
(843, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:47:18', '2021-09-11 10:47:18'),
(844, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"long_phone\",\"value\":\"0987654321\",\"pk\":null,\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\",\"storeId\":\"1\"}', '2021-09-11 10:47:44', '2021-09-11 10:47:44'),
(845, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"address\",\"value\":\"\\u0110\\u01b0\\u1eddng Z115  Th\\u00e1i Nguy\\u00ean\",\"pk\":null,\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\",\"storeId\":\"1\"}', '2021-09-11 10:49:52', '2021-09-11 10:49:52'),
(846, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 10:54:14', '2021-09-11 10:54:14'),
(847, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:08:20', '2021-09-11 11:08:20'),
(848, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"facebook\",\"value\":\"https:\\/\\/www.facebook.com\\/\",\"pk\":null,\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\",\"storeId\":\"1\"}', '2021-09-11 11:09:35', '2021-09-11 11:09:35'),
(849, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:12:05', '2021-09-11 11:12:05'),
(850, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:12:40', '2021-09-11 11:12:40'),
(851, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:13:16', '2021-09-11 11:13:16'),
(852, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:13:42', '2021-09-11 11:13:42'),
(853, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"instagram\",\"value\":\"https:\\/\\/www.instagram.com\\/\",\"pk\":null,\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\",\"storeId\":\"1\"}', '2021-09-11 11:14:00', '2021-09-11 11:14:00'),
(854, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"skype\",\"value\":\"https:\\/\\/www.skype.com\\/en\\/\",\"pk\":null,\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\",\"storeId\":\"1\"}', '2021-09-11 11:14:19', '2021-09-11 11:14:19'),
(855, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:15:40', '2021-09-11 11:15:40'),
(856, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:15:51', '2021-09-11 11:15:51'),
(857, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"map\",\"value\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3710.02316671819!2d105.80423471489316!3d21.58501878569979!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1631358986941!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"pk\":null,\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\",\"storeId\":\"1\"}', '2021-09-11 11:16:52', '2021-09-11 11:16:52'),
(858, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:19:07', '2021-09-11 11:19:07'),
(859, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:19:57', '2021-09-11 11:19:57'),
(860, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:22:15', '2021-09-11 11:22:15'),
(861, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:23:06', '2021-09-11 11:23:06'),
(862, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"map\",\"value\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3710.02316671819!2d105.80423471489316!3d21.58501878569979!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1631359740026!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"pk\":null,\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\",\"storeId\":\"1\"}', '2021-09-11 11:29:40', '2021-09-11 11:29:40'),
(863, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"map\",\"value\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3710.02316671819!2d105.80423471489316!3d21.58501878569979!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1631359740026!5m2!1svi!2s\\\" width=\\\"100%\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"><\\/iframe>\",\"pk\":null,\"_token\":\"xplL6fwGKKvEbnGVeFoFLir23KgADyCBKv5Z20Pa\",\"storeId\":\"1\"}', '2021-09-11 11:31:30', '2021-09-11 11:31:30'),
(864, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 11:48:06', '2021-09-11 11:48:06'),
(865, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:45:38', '2021-09-11 14:45:38'),
(866, 1, 'sc_admin/menu/edit/67', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:45:50', '2021-09-11 14:45:50'),
(867, 1, 'sc_admin/menu/edit/37', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:46:05', '2021-09-11 14:46:05'),
(868, 1, 'sc_admin/menu/edit/26', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:52:55', '2021-09-11 14:52:55'),
(869, 1, 'sc_admin/menu/edit/26', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:53:41', '2021-09-11 14:53:41'),
(870, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:54:03', '2021-09-11 14:54:03'),
(871, 1, 'sc_admin/menu/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"parent_id\":\"7\",\"title\":\"admin.menu_titles.service\",\"icon\":\"fas fa-archive\",\"uri\":\"admin::service\",\"sort\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 14:56:07', '2021-09-11 14:56:07'),
(872, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:56:07', '2021-09-11 14:56:07'),
(873, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:59:09', '2021-09-11 14:59:09'),
(874, 1, 'sc_admin/menu/edit/33', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:59:13', '2021-09-11 14:59:13'),
(875, 1, 'sc_admin/menu/edit/70', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:59:40', '2021-09-11 14:59:40'),
(876, 1, 'sc_admin/menu/edit/70', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"parent_id\":\"7\",\"title\":\"admin.menu_titles.service\",\"icon\":\"fas fa-archive\",\"uri\":\"admin::service\",\"sort\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 14:59:44', '2021-09-11 14:59:44'),
(877, 1, 'sc_admin/menu/edit/70', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:59:44', '2021-09-11 14:59:44'),
(878, 1, 'sc_admin/menu/edit/70', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 14:59:49', '2021-09-11 14:59:49'),
(879, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 15:00:02', '2021-09-11 15:00:02'),
(880, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"admin\",\"lang\":\"vi\",\"keyword\":null}', '2021-09-11 15:00:10', '2021-09-11 15:00:10'),
(881, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"admin\",\"lang\":\"vi\",\"keyword\":\"service\"}', '2021-09-11 15:00:19', '2021-09-11 15:00:19'),
(882, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"admin\",\"lang\":\"vi\",\"keyword\":null}', '2021-09-11 15:00:23', '2021-09-11 15:00:23'),
(883, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"admin\",\"lang\":null,\"keyword\":null}', '2021-09-11 15:00:38', '2021-09-11 15:00:38'),
(884, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"admin\",\"lang\":\"en\",\"keyword\":null}', '2021-09-11 15:00:41', '2021-09-11 15:00:41'),
(885, 1, 'sc_admin/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"position\":\"admin\",\"lang\":\"vi\",\"keyword\":null}', '2021-09-11 15:01:02', '2021-09-11 15:01:02'),
(886, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 15:01:54', '2021-09-11 15:01:54'),
(887, 1, 'sc_admin/menu/edit/70', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 15:03:58', '2021-09-11 15:03:58'),
(888, 1, 'sc_admin/menu/edit/70', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"parent_id\":\"7\",\"title\":\"D\\u1ecbch v\\u1ee5\",\"icon\":\"fas fa-archive\",\"uri\":\"admin::service\",\"sort\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 15:04:28', '2021-09-11 15:04:28'),
(889, 1, 'sc_admin/menu/edit/70', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 15:04:28', '2021-09-11 15:04:28'),
(890, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 15:34:03', '2021-09-11 15:34:03'),
(891, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 15:49:15', '2021-09-11 15:49:15'),
(892, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 15:49:24', '2021-09-11 15:49:24'),
(893, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:25:34', '2021-09-11 16:25:34'),
(894, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:44:39', '2021-09-11 16:44:39'),
(895, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:44:49', '2021-09-11 16:44:49'),
(896, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:45:18', '2021-09-11 16:45:18'),
(897, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:46:41', '2021-09-11 16:46:41'),
(898, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:47:10', '2021-09-11 16:47:10'),
(899, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:47:12', '2021-09-11 16:47:12'),
(900, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:48:11', '2021-09-11 16:48:11'),
(901, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:49:51', '2021-09-11 16:49:51'),
(902, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 16:57:11', '2021-09-11 16:57:11'),
(903, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:01:20', '2021-09-11 17:01:20'),
(904, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:01:32', '2021-09-11 17:01:32'),
(905, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:06:40', '2021-09-11 17:06:40'),
(906, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:06:42', '2021-09-11 17:06:42'),
(907, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:06:44', '2021-09-11 17:06:44'),
(908, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:08:11', '2021-09-11 17:08:11'),
(909, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:08:13', '2021-09-11 17:08:13'),
(910, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:08:34', '2021-09-11 17:08:34'),
(911, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:09:37', '2021-09-11 17:09:37'),
(912, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:09:55', '2021-09-11 17:09:55'),
(913, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:25:13', '2021-09-11 17:25:13'),
(914, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:28:10', '2021-09-11 17:28:10'),
(915, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:28:35', '2021-09-11 17:28:35'),
(916, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:42:31', '2021-09-11 17:42:31'),
(917, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:42:43', '2021-09-11 17:42:43'),
(918, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:43:20', '2021-09-11 17:43:20'),
(919, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:46:23', '2021-09-11 17:46:23'),
(920, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:46:38', '2021-09-11 17:46:38'),
(921, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:47:09', '2021-09-11 17:47:09'),
(922, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:55:27', '2021-09-11 17:55:27'),
(923, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:55:29', '2021-09-11 17:55:29'),
(924, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 17:55:33', '2021-09-11 17:55:33'),
(925, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:00:36', '2021-09-11 18:00:36'),
(926, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:00:40', '2021-09-11 18:00:40'),
(927, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:01:02', '2021-09-11 18:01:02'),
(928, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:01:09', '2021-09-11 18:01:09'),
(929, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:02:44', '2021-09-11 18:02:44'),
(930, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:03:07', '2021-09-11 18:03:07'),
(931, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:03:55', '2021-09-11 18:03:55'),
(932, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:04:40', '2021-09-11 18:04:40'),
(933, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:04:41', '2021-09-11 18:04:41'),
(934, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:04:49', '2021-09-11 18:04:49'),
(935, 1, 'sc_admin/news/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:04:50', '2021-09-11 18:04:50'),
(936, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:08:39', '2021-09-11 18:08:39'),
(937, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:08:41', '2021-09-11 18:08:41'),
(938, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:08:53', '2021-09-11 18:08:53'),
(939, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:08:56', '2021-09-11 18:08:56'),
(940, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:12:53', '2021-09-11 18:12:53'),
(941, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 18:13:15', '2021-09-11 18:13:15'),
(942, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631383996845\"}', '2021-09-11 18:13:17', '2021-09-11 18:13:17'),
(943, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631383996846\"}', '2021-09-11 18:13:17', '2021-09-11 18:13:17'),
(944, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631383996847\"}', '2021-09-11 18:13:17', '2021-09-11 18:13:17'),
(945, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:14:56', '2021-09-11 18:14:56'),
(946, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:14:58', '2021-09-11 18:14:58'),
(947, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:15:02', '2021-09-11 18:15:02'),
(948, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:15:04', '2021-09-11 18:15:04'),
(949, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:26:46', '2021-09-11 18:26:46'),
(950, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":null,\"title\":null,\"description\":null,\"content\":null,\"sort\":\"0\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:26:50', '2021-09-11 18:26:50'),
(951, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:26:50', '2021-09-11 18:26:50'),
(952, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:27:50', '2021-09-11 18:27:50'),
(953, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 18:28:02', '2021-09-11 18:28:02'),
(954, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631384882511\"}', '2021-09-11 18:28:02', '2021-09-11 18:28:02'),
(955, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631384882512\"}', '2021-09-11 18:28:03', '2021-09-11 18:28:03'),
(956, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631384882513\"}', '2021-09-11 18:28:03', '2021-09-11 18:28:03'),
(957, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 18:28:59', '2021-09-11 18:28:59'),
(958, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631384939881\"}', '2021-09-11 18:29:00', '2021-09-11 18:29:00'),
(959, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631384939882\"}', '2021-09-11 18:29:00', '2021-09-11 18:29:00'),
(960, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631384939883\"}', '2021-09-11 18:29:00', '2021-09-11 18:29:00'),
(961, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:29:34', '2021-09-11 18:29:34'),
(962, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_\":\"1631384939884\"}', '2021-09-11 18:29:34', '2021-09-11 18:29:34'),
(963, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631384939885\"}', '2021-09-11 18:29:34', '2021-09-11 18:29:34'),
(964, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631384939886\"}', '2021-09-11 18:30:01', '2021-09-11 18:30:01'),
(965, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631384939887\"}', '2021-09-11 18:30:06', '2021-09-11 18:30:06'),
(966, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:30:26', '2021-09-11 18:30:26'),
(967, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:30:28', '2021-09-11 18:30:28'),
(968, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-11 18:30:29', '2021-09-11 18:30:29'),
(969, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631385029552\"}', '2021-09-11 18:30:29', '2021-09-11 18:30:29'),
(970, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631385029553\"}', '2021-09-11 18:30:30', '2021-09-11 18:30:30'),
(971, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631385029554\"}', '2021-09-11 18:30:30', '2021-09-11 18:30:30'),
(972, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:30:36', '2021-09-11 18:30:36'),
(973, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:30:38', '2021-09-11 18:30:38'),
(974, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:33:41', '2021-09-11 18:33:41'),
(975, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:33:43', '2021-09-11 18:33:43'),
(976, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-11 18:33:44', '2021-09-11 18:33:44'),
(977, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631385224650\"}', '2021-09-11 18:33:44', '2021-09-11 18:33:44'),
(978, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631385224651\"}', '2021-09-11 18:33:45', '2021-09-11 18:33:45'),
(979, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631385224652\"}', '2021-09-11 18:33:45', '2021-09-11 18:33:45'),
(980, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:33:59', '2021-09-11 18:33:59'),
(981, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:34:01', '2021-09-11 18:34:01'),
(982, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 18:34:03', '2021-09-11 18:34:03'),
(983, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631385243100\"}', '2021-09-11 18:34:03', '2021-09-11 18:34:03'),
(984, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631385243101\"}', '2021-09-11 18:34:03', '2021-09-11 18:34:03'),
(985, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631385243102\"}', '2021-09-11 18:34:03', '2021-09-11 18:34:03'),
(986, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-01-50x50.png\",\"title\":\"Ch\\u1ea3i l\\u00f4ng\",\"description\":\"H\\u00e3y \\u0111\\u1ec3 th\\u00fa c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c\\u00e1c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l\\u00f4ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h\\u00f3a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v\\u00e0 c\\u00f3 kinh nghi\\u1ec7m c\\u1ee7a ch\\u00fang t\\u00f4i.\",\"content\":\"H&atilde;y \\u0111\\u1ec3 th&uacute; c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c&aacute;c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l&ocirc;ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h&oacute;a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v&agrave; c&oacute; kinh nghi\\u1ec7m c\\u1ee7a ch&uacute;ng t&ocirc;i.<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:36:29', '2021-09-11 18:36:29'),
(987, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-01-50x50.png\",\"title\":\"Ch\\u1ea3i l\\u00f4ng\",\"description\":\"H\\u00e3y \\u0111\\u1ec3 th\\u00fa c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c\\u00e1c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l\\u00f4ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h\\u00f3a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v\\u00e0 c\\u00f3 kinh nghi\\u1ec7m c\\u1ee7a ch\\u00fang t\\u00f4i.\",\"content\":\"H&atilde;y \\u0111\\u1ec3 th&uacute; c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c&aacute;c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l&ocirc;ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h&oacute;a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v&agrave; c&oacute; kinh nghi\\u1ec7m c\\u1ee7a ch&uacute;ng t&ocirc;i.<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:36:53', '2021-09-11 18:36:53'),
(988, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-01-50x50.png\",\"title\":\"Ch\\u1ea3i l\\u00f4ng\",\"description\":\"H\\u00e3y \\u0111\\u1ec3 th\\u00fa c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c\\u00e1c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l\\u00f4ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h\\u00f3a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v\\u00e0 c\\u00f3 kinh nghi\\u1ec7m c\\u1ee7a ch\\u00fang t\\u00f4i.\",\"content\":\"H&atilde;y \\u0111\\u1ec3 th&uacute; c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c&aacute;c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l&ocirc;ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h&oacute;a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v&agrave; c&oacute; kinh nghi\\u1ec7m c\\u1ee7a ch&uacute;ng t&ocirc;i.<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:36:55', '2021-09-11 18:36:55'),
(989, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:36:56', '2021-09-11 18:36:56'),
(990, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:46:12', '2021-09-11 18:46:12'),
(991, 1, 'sc_admin/service/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:46:14', '2021-09-11 18:46:14'),
(992, 1, 'sc_admin/service/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:47:08', '2021-09-11 18:47:08'),
(993, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:47:48', '2021-09-11 18:47:48'),
(994, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:47:50', '2021-09-11 18:47:50'),
(995, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 18:47:51', '2021-09-11 18:47:51'),
(996, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:47:54', '2021-09-11 18:47:54'),
(997, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:50:03', '2021-09-11 18:50:03'),
(998, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 18:50:04', '2021-09-11 18:50:04'),
(999, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:50:08', '2021-09-11 18:50:08'),
(1000, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:50:17', '2021-09-11 18:50:17');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1001, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:50:25', '2021-09-11 18:50:25'),
(1002, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:56:25', '2021-09-11 18:56:25'),
(1003, 1, 'sc_admin/service/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:56:28', '2021-09-11 18:56:28'),
(1004, 1, 'sc_admin/service/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-01-50x50.png\",\"title\":\"Ch\\u1ea3i l\\u00f4ngs\",\"description\":\"H\\u00e3y \\u0111\\u1ec3 th\\u00fa c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c\\u00e1c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l\\u00f4ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3s t\\u1ea1p h\\u00f3a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v\\u00e0 c\\u00f3 kinh nghi\\u1ec7m c\\u1ee7a ch\\u00fang t\\u00f4i.\",\"content\":\"H&atilde;y \\u0111\\u1ec3 th&uacute; c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c&aacute;c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l&ocirc;ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h&oacute;a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v&agrave; c&oacute; kinh nghi\\u1ec7m c\\u1ee7a ch&uacute;ng t&ocirc;i.<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.s\",\"sort\":\"1\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:56:53', '2021-09-11 18:56:53'),
(1005, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:56:53', '2021-09-11 18:56:53'),
(1006, 1, 'sc_admin/service/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:57:00', '2021-09-11 18:57:00'),
(1007, 1, 'sc_admin/service/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:57:13', '2021-09-11 18:57:13'),
(1008, 1, 'sc_admin/service/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-01-50x50.png\",\"title\":\"Ch\\u1ea3i l\\u00f4ng\",\"description\":\"H\\u00e3y \\u0111\\u1ec3 th\\u00fa c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c\\u00e1c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l\\u00f4ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h\\u00f3a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v\\u00e0 c\\u00f3 kinh nghi\\u1ec7m c\\u1ee7a ch\\u00fang t\\u00f4i.\",\"content\":\"H&atilde;y \\u0111\\u1ec3 th&uacute; c\\u01b0ng c\\u1ee7a b\\u1ea1n t\\u1eadn h\\u01b0\\u1edfng c&aacute;c d\\u1ecbch v\\u1ee5 ch\\u1ea3i l&ocirc;ng h\\u1ea1ng nh\\u1ea5t \\u0111\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u1eefng ng\\u01b0\\u1eddi th\\u1ee3 t\\u1ea1p h&oacute;a \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng nh\\u1eadn v&agrave; c&oacute; kinh nghi\\u1ec7m c\\u1ee7a ch&uacute;ng t&ocirc;i.<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:57:27', '2021-09-11 18:57:27'),
(1009, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:57:27', '2021-09-11 18:57:27'),
(1010, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:57:58', '2021-09-11 18:57:58'),
(1011, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 18:58:05', '2021-09-11 18:58:05'),
(1012, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631386685750\"}', '2021-09-11 18:58:06', '2021-09-11 18:58:06'),
(1013, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631386685751\"}', '2021-09-11 18:58:06', '2021-09-11 18:58:06'),
(1014, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631386685752\"}', '2021-09-11 18:58:06', '2021-09-11 18:58:06'),
(1015, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631386685753\"}', '2021-09-11 18:58:10', '2021-09-11 18:58:10'),
(1016, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631386685754\"}', '2021-09-11 18:58:12', '2021-09-11 18:58:12'),
(1017, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:58:20', '2021-09-11 18:58:20'),
(1018, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_\":\"1631386685755\"}', '2021-09-11 18:58:20', '2021-09-11 18:58:20'),
(1019, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631386685756\"}', '2021-09-11 18:58:20', '2021-09-11 18:58:20'),
(1020, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-02-50x42.png\",\"title\":\"\\u0110\\u1ec7m n\\u1eb1m\",\"description\":\"ch\\u00fang t\\u00f4i cung c\\u1ea5p m\\u1ed9t m\\u00f4i tr\\u01b0\\u1eddng an to\\u00e0n v\\u00e0 s\\u1ea1ch s\\u1ebd v\\u1edbi gi\\u1edd ch\\u01a1i, b\\u00e0i t\\u1eadp, b\\u1eefa \\u0103n l\\u00e0nh m\\u1ea1nh v\\u00e0 h\\u01a1n th\\u1ebf n\\u1eefa.\",\"content\":\"Ch&uacute;ng t&ocirc;i cung c\\u1ea5p m\\u1ed9t m&ocirc;i tr\\u01b0\\u1eddng an to&agrave;n v&agrave; s\\u1ea1ch s\\u1ebd v\\u1edbi gi\\u1edd ch\\u01a1i, b&agrave;i t\\u1eadp, b\\u1eefa \\u0103n l&agrave;nh m\\u1ea1nh v&agrave; h\\u01a1n th\\u1ebf n\\u1eefa.<br \\/>\\r\\n<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:59:20', '2021-09-11 18:59:20'),
(1021, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:59:21', '2021-09-11 18:59:21'),
(1022, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:59:24', '2021-09-11 18:59:24'),
(1023, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 18:59:26', '2021-09-11 18:59:26'),
(1024, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631386766518\"}', '2021-09-11 18:59:26', '2021-09-11 18:59:26'),
(1025, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631386766519\"}', '2021-09-11 18:59:27', '2021-09-11 18:59:27'),
(1026, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631386766520\"}', '2021-09-11 18:59:27', '2021-09-11 18:59:27'),
(1027, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:59:33', '2021-09-11 18:59:33'),
(1028, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_\":\"1631386766521\"}', '2021-09-11 18:59:34', '2021-09-11 18:59:34'),
(1029, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631386766522\"}', '2021-09-11 18:59:34', '2021-09-11 18:59:34'),
(1030, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/clients-3-111x98.png\",\"title\":\"fdsfd\",\"description\":\"fsdf\",\"content\":\"fsdfds\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:59:43', '2021-09-11 18:59:43'),
(1031, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:59:43', '2021-09-11 18:59:43'),
(1032, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:59:47', '2021-09-11 18:59:47'),
(1033, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 18:59:47', '2021-09-11 18:59:47'),
(1034, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:59:50', '2021-09-11 18:59:50'),
(1035, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 18:59:52', '2021-09-11 18:59:52'),
(1036, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 18:59:53', '2021-09-11 18:59:53'),
(1037, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 18:59:57', '2021-09-11 18:59:57'),
(1038, 1, 'sc_admin/role', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:00:06', '2021-09-11 19:00:06'),
(1039, 1, 'sc_admin/user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:00:17', '2021-09-11 19:00:17'),
(1040, 1, 'sc_admin/user/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:00:20', '2021-09-11 19:00:20'),
(1041, 1, 'sc_admin/role', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:00:26', '2021-09-11 19:00:26'),
(1042, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:06:01', '2021-09-11 19:06:01'),
(1043, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:06:06', '2021-09-11 19:06:06'),
(1044, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:08:04', '2021-09-11 19:08:04'),
(1045, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:08:05', '2021-09-11 19:08:05'),
(1046, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:08:22', '2021-09-11 19:08:22'),
(1047, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:08:26', '2021-09-11 19:08:26'),
(1048, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:08:30', '2021-09-11 19:08:30'),
(1049, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:11:25', '2021-09-11 19:11:25'),
(1050, 1, 'sc_admin/service/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:11:29', '2021-09-11 19:11:29'),
(1051, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:11:34', '2021-09-11 19:11:34'),
(1052, 1, 'sc_admin/service/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:11:39', '2021-09-11 19:11:39'),
(1053, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:12:35', '2021-09-11 19:12:35'),
(1054, 1, 'sc_admin/user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:12:57', '2021-09-11 19:12:57'),
(1055, 1, 'sc_admin/user/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:12:59', '2021-09-11 19:12:59'),
(1056, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:15:52', '2021-09-11 19:15:52'),
(1057, 1, 'sc_admin/service/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:15:57', '2021-09-11 19:15:57'),
(1058, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 19:15:58', '2021-09-11 19:15:58'),
(1059, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:16:54', '2021-09-11 19:16:54'),
(1060, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:17:09', '2021-09-11 19:17:09'),
(1061, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:17:24', '2021-09-11 19:17:24'),
(1062, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 19:17:28', '2021-09-11 19:17:28'),
(1063, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631387848460\"}', '2021-09-11 19:17:28', '2021-09-11 19:17:28'),
(1064, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631387848461\"}', '2021-09-11 19:17:28', '2021-09-11 19:17:28'),
(1065, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631387848462\"}', '2021-09-11 19:17:29', '2021-09-11 19:17:29'),
(1066, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:17:34', '2021-09-11 19:17:34'),
(1067, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 19:17:40', '2021-09-11 19:17:40'),
(1068, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631387860827\"}', '2021-09-11 19:17:41', '2021-09-11 19:17:41'),
(1069, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631387860828\"}', '2021-09-11 19:17:41', '2021-09-11 19:17:41'),
(1070, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631387860829\"}', '2021-09-11 19:17:41', '2021-09-11 19:17:41'),
(1071, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/clients-3-111x98.png\",\"title\":\"Dog daycare\",\"description\":\"M\\u1ed9t m\\u00f4i tr\\u01b0\\u1eddng an to\\u00e0n v\\u00e0 vui v\\u1ebb.\",\"content\":\"M\\u1ed9t m&ocirc;i tr\\u01b0\\u1eddng an to&agrave;n v&agrave; vui v\\u1ebb.<br \\/>\\r\\n<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:21:51', '2021-09-11 19:21:51'),
(1072, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:21:51', '2021-09-11 19:21:51'),
(1073, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:21:54', '2021-09-11 19:21:54'),
(1074, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 19:22:11', '2021-09-11 19:22:11'),
(1075, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388131395\"}', '2021-09-11 19:22:11', '2021-09-11 19:22:11'),
(1076, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388131396\"}', '2021-09-11 19:22:11', '2021-09-11 19:22:11'),
(1077, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388131397\"}', '2021-09-11 19:22:12', '2021-09-11 19:22:12'),
(1078, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 19:23:10', '2021-09-11 19:23:10'),
(1079, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388190663\"}', '2021-09-11 19:23:10', '2021-09-11 19:23:10'),
(1080, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388190664\"}', '2021-09-11 19:23:11', '2021-09-11 19:23:11'),
(1081, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388190665\"}', '2021-09-11 19:23:11', '2021-09-11 19:23:11'),
(1082, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:24:06', '2021-09-11 19:24:06'),
(1083, 1, 'sc_admin/service/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:24:08', '2021-09-11 19:24:08'),
(1084, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 19:24:10', '2021-09-11 19:24:10'),
(1085, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388250770\"}', '2021-09-11 19:24:11', '2021-09-11 19:24:11'),
(1086, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388250771\"}', '2021-09-11 19:24:11', '2021-09-11 19:24:11'),
(1087, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388250772\"}', '2021-09-11 19:24:11', '2021-09-11 19:24:11'),
(1088, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"items\":[\"clients-3-111x98.png\"],\"_\":\"1631388250773\"}', '2021-09-11 19:24:27', '2021-09-11 19:24:27'),
(1089, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_\":\"1631388250774\"}', '2021-09-11 19:24:27', '2021-09-11 19:24:27'),
(1090, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388250775\"}', '2021-09-11 19:24:28', '2021-09-11 19:24:28'),
(1091, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:24:36', '2021-09-11 19:24:36'),
(1092, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_\":\"1631388250776\"}', '2021-09-11 19:24:37', '2021-09-11 19:24:37'),
(1093, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388250777\"}', '2021-09-11 19:24:37', '2021-09-11 19:24:37'),
(1094, 1, 'sc_admin/service/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-03-48x50.png\",\"title\":\"Dog daycare\",\"description\":\"M\\u1ed9t m\\u00f4i tr\\u01b0\\u1eddng an to\\u00e0n v\\u00e0 vui v\\u1ebb.\",\"content\":\"M\\u1ed9t m&ocirc;i tr\\u01b0\\u1eddng an to&agrave;n v&agrave; vui v\\u1ebb.<br \\/>\\r\\n<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:24:43', '2021-09-11 19:24:43'),
(1095, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:24:43', '2021-09-11 19:24:43'),
(1096, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:24:46', '2021-09-11 19:24:46'),
(1097, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 19:24:53', '2021-09-11 19:24:53'),
(1098, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388293440\"}', '2021-09-11 19:24:53', '2021-09-11 19:24:53'),
(1099, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388293441\"}', '2021-09-11 19:24:53', '2021-09-11 19:24:53'),
(1100, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388293442\"}', '2021-09-11 19:24:54', '2021-09-11 19:24:54'),
(1101, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:24:59', '2021-09-11 19:24:59'),
(1102, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_\":\"1631388293443\"}', '2021-09-11 19:25:00', '2021-09-11 19:25:00'),
(1103, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388293444\"}', '2021-09-11 19:25:00', '2021-09-11 19:25:00'),
(1104, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-04-42x50.png\",\"title\":\"Dog training\",\"description\":\"Our accredited pet trainers teach fun & e\\ufb00ective group & private classes through positive reinforcement.\",\"content\":\"Our accredited pet trainers teach fun &amp; e\\ufb00ective group &amp; private classes through positive reinforcement.<br \\/>\\r\\n<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:28:10', '2021-09-11 19:28:10'),
(1105, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:28:10', '2021-09-11 19:28:10'),
(1106, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:28:18', '2021-09-11 19:28:18'),
(1107, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 19:28:20', '2021-09-11 19:28:20'),
(1108, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388500856\"}', '2021-09-11 19:28:21', '2021-09-11 19:28:21'),
(1109, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388500857\"}', '2021-09-11 19:28:21', '2021-09-11 19:28:21'),
(1110, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388500858\"}', '2021-09-11 19:28:21', '2021-09-11 19:28:21'),
(1111, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:28:31', '2021-09-11 19:28:31'),
(1112, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_\":\"1631388500859\"}', '2021-09-11 19:28:32', '2021-09-11 19:28:32'),
(1113, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388500860\"}', '2021-09-11 19:28:32', '2021-09-11 19:28:32'),
(1114, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-05-42x50.png\",\"title\":\"Veterinary care\",\"description\":\"Save your pet the discomfort of advanced illness & help save you the stress & expense of treatment.\",\"content\":\"Save your pet the discomfort of advanced illness &amp; help save you the stress &amp; expense of treatment.<br \\/>\\r\\n<br \\/>\\r\\n<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:28:57', '2021-09-11 19:28:57'),
(1115, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:28:57', '2021-09-11 19:28:57'),
(1116, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:29:03', '2021-09-11 19:29:03'),
(1117, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"service\"}', '2021-09-11 19:29:08', '2021-09-11 19:29:08'),
(1118, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388548182\"}', '2021-09-11 19:29:08', '2021-09-11 19:29:08'),
(1119, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"_\":\"1631388548183\"}', '2021-09-11 19:29:08', '2021-09-11 19:29:08'),
(1120, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388548184\"}', '2021-09-11 19:29:09', '2021-09-11 19:29:09'),
(1121, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:29:15', '2021-09-11 19:29:15'),
(1122, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"_\":\"1631388548185\"}', '2021-09-11 19:29:16', '2021-09-11 19:29:16'),
(1123, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"service\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631388548186\"}', '2021-09-11 19:29:16', '2021-09-11 19:29:16'),
(1124, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-06-50x44.png\",\"title\":\"Adoption\",\"description\":\"Whether you adopt online or at a Puffles store near you, you\\u2019re helping change the life of a pet in need.\",\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 19:29:33', '2021-09-11 19:29:33'),
(1125, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:29:33', '2021-09-11 19:29:33'),
(1126, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"keyword\":\"chai long\",\"_pjax\":\"#pjax-container\"}', '2021-09-11 19:29:43', '2021-09-11 19:29:43'),
(1127, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"keyword\":\"chai long\",\"_pjax\":\"#pjax-container\"}', '2021-09-11 19:29:46', '2021-09-11 19:29:46'),
(1128, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:29:48', '2021-09-11 19:29:48'),
(1129, 1, 'sc_admin/banner/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:29:58', '2021-09-11 19:29:58'),
(1130, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"keyword\":\"banner\",\"_pjax\":\"#pjax-container\"}', '2021-09-11 19:30:07', '2021-09-11 19:30:07'),
(1131, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"keyword\":\"Banner 3\",\"_pjax\":\"#pjax-container\"}', '2021-09-11 19:30:15', '2021-09-11 19:30:15'),
(1132, 1, 'sc_admin/banner_type', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:30:22', '2021-09-11 19:30:22'),
(1133, 1, 'sc_admin/banner_type', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 19:30:33', '2021-09-11 19:30:33'),
(1134, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"keyword\":\"Banner 3\"}', '2021-09-11 19:30:36', '2021-09-11 19:30:36'),
(1135, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"keyword\":\"Banner 3\"}', '2021-09-11 21:11:21', '2021-09-11 21:11:21'),
(1136, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:11:22', '2021-09-11 21:11:22'),
(1137, 1, 'sc_admin/service/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:11:25', '2021-09-11 21:11:25'),
(1138, 1, 'sc_admin/service/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-06-50x44.png\",\"title\":\"Adoption\",\"description\":\"Whether you adopt online or at a Puffles store near you, you\\u2019re helping change the life of a pet in need.\",\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\",\"sort\":\"0\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:11:28', '2021-09-11 21:11:28'),
(1139, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:11:28', '2021-09-11 21:11:28'),
(1140, 1, 'sc_admin/service/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:11:37', '2021-09-11 21:11:37'),
(1141, 1, 'sc_admin/service/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/icon-06-50x44.png\",\"title\":\"Adoption\",\"description\":\"Whether you adopt online or at a Puffles store near you, you\\u2019re helping change the life of a pet in need.\",\"content\":\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:11:40', '2021-09-11 21:11:40'),
(1142, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:11:40', '2021-09-11 21:11:40'),
(1143, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:14:49', '2021-09-11 21:14:49'),
(1144, 1, 'sc_admin/menu/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"parent_id\":\"7\",\"title\":\"\\u0110\\u1ed9i ng\\u0169 th\\u00e0nh vi\\u00ean\",\"icon\":\"fas fa-users\",\"uri\":\"admin::our_team\",\"sort\":null,\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:16:18', '2021-09-11 21:16:18'),
(1145, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:16:18', '2021-09-11 21:16:18'),
(1146, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:23:31', '2021-09-11 21:23:31'),
(1147, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:23:33', '2021-09-11 21:23:33'),
(1148, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:24:21', '2021-09-11 21:24:21'),
(1149, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:24:23', '2021-09-11 21:24:23'),
(1150, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:32:31', '2021-09-11 21:32:31'),
(1151, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:32:33', '2021-09-11 21:32:33'),
(1152, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:32:58', '2021-09-11 21:32:58'),
(1153, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:33:28', '2021-09-11 21:33:28'),
(1154, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396008616\"}', '2021-09-11 21:33:28', '2021-09-11 21:33:28'),
(1155, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396008617\"}', '2021-09-11 21:33:29', '2021-09-11 21:33:29'),
(1156, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396008618\"}', '2021-09-11 21:33:30', '2021-09-11 21:33:30'),
(1157, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:34:20', '2021-09-11 21:34:20'),
(1158, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:34:22', '2021-09-11 21:34:22');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1159, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-11 21:34:23', '2021-09-11 21:34:23'),
(1160, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631396064062\"}', '2021-09-11 21:34:24', '2021-09-11 21:34:24'),
(1161, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631396064063\"}', '2021-09-11 21:34:24', '2021-09-11 21:34:24'),
(1162, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396064064\"}', '2021-09-11 21:34:24', '2021-09-11 21:34:24'),
(1163, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"banner\"}', '2021-09-11 21:34:59', '2021-09-11 21:34:59'),
(1164, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631396100075\"}', '2021-09-11 21:35:00', '2021-09-11 21:35:00'),
(1165, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1631396100076\"}', '2021-09-11 21:35:00', '2021-09-11 21:35:00'),
(1166, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396100077\"}', '2021-09-11 21:35:01', '2021-09-11 21:35:01'),
(1167, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:35:02', '2021-09-11 21:35:02'),
(1168, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:35:03', '2021-09-11 21:35:03'),
(1169, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:35:05', '2021-09-11 21:35:05'),
(1170, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396105684\"}', '2021-09-11 21:35:05', '2021-09-11 21:35:05'),
(1171, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396105685\"}', '2021-09-11 21:35:06', '2021-09-11 21:35:06'),
(1172, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396105686\"}', '2021-09-11 21:35:06', '2021-09-11 21:35:06'),
(1173, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396105687\"}', '2021-09-11 21:35:11', '2021-09-11 21:35:11'),
(1174, 1, 'sc_admin/uploads/newfolder', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"our_team\",\"name\":\"our_team\",\"_\":\"1631396105688\"}', '2021-09-11 21:35:20', '2021-09-11 21:35:20'),
(1175, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"our_team\",\"_\":\"1631396105689\"}', '2021-09-11 21:35:20', '2021-09-11 21:35:20'),
(1176, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396105690\"}', '2021-09-11 21:35:21', '2021-09-11 21:35:21'),
(1177, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396105691\"}', '2021-09-11 21:35:24', '2021-09-11 21:35:24'),
(1178, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:35:50', '2021-09-11 21:35:50'),
(1179, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"_\":\"1631396105692\"}', '2021-09-11 21:35:50', '2021-09-11 21:35:50'),
(1180, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396105693\"}', '2021-09-11 21:35:51', '2021-09-11 21:35:51'),
(1181, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:36:01', '2021-09-11 21:36:01'),
(1182, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:36:02', '2021-09-11 21:36:02'),
(1183, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"_\":\"1631396105694\"}', '2021-09-11 21:36:02', '2021-09-11 21:36:02'),
(1184, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"_\":\"1631396105695\"}', '2021-09-11 21:36:02', '2021-09-11 21:36:02'),
(1185, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396105696\"}', '2021-09-11 21:36:03', '2021-09-11 21:36:03'),
(1186, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396105697\"}', '2021-09-11 21:36:03', '2021-09-11 21:36:03'),
(1187, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-8-249x249.jpg\",\"name\":\"Nguy\\u1ec5n V\\u0103n A\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:37:25', '2021-09-11 21:37:25'),
(1188, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-8-249x249.jpg\",\"name\":\"Nguy\\u1ec5n V\\u0103n A\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:37:49', '2021-09-11 21:37:49'),
(1189, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:37:56', '2021-09-11 21:37:56'),
(1190, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:38:25', '2021-09-11 21:38:25'),
(1191, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:38:26', '2021-09-11 21:38:26'),
(1192, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396306726\"}', '2021-09-11 21:38:27', '2021-09-11 21:38:27'),
(1193, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396306727\"}', '2021-09-11 21:38:27', '2021-09-11 21:38:27'),
(1194, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396306728\"}', '2021-09-11 21:38:27', '2021-09-11 21:38:27'),
(1195, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396306729\"}', '2021-09-11 21:38:29', '2021-09-11 21:38:29'),
(1196, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-8-249x249.jpg\",\"name\":\"Nguyen Van A\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:38:54', '2021-09-11 21:38:54'),
(1197, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:38:54', '2021-09-11 21:38:54'),
(1198, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:38:58', '2021-09-11 21:38:58'),
(1199, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:39:01', '2021-09-11 21:39:01'),
(1200, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396341489\"}', '2021-09-11 21:39:01', '2021-09-11 21:39:01'),
(1201, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396341490\"}', '2021-09-11 21:39:02', '2021-09-11 21:39:02'),
(1202, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396341491\"}', '2021-09-11 21:39:02', '2021-09-11 21:39:02'),
(1203, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396341492\"}', '2021-09-11 21:39:03', '2021-09-11 21:39:03'),
(1204, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-9-249x249.jpg\",\"name\":\"Nguyen Van B\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:39:16', '2021-09-11 21:39:16'),
(1205, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:39:17', '2021-09-11 21:39:17'),
(1206, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:39:22', '2021-09-11 21:39:22'),
(1207, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:39:24', '2021-09-11 21:39:24'),
(1208, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396364954\"}', '2021-09-11 21:39:25', '2021-09-11 21:39:25'),
(1209, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396364955\"}', '2021-09-11 21:39:25', '2021-09-11 21:39:25'),
(1210, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396364956\"}', '2021-09-11 21:39:25', '2021-09-11 21:39:25'),
(1211, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396364957\"}', '2021-09-11 21:39:27', '2021-09-11 21:39:27'),
(1212, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-10-249x249.jpg\",\"name\":\"Nguyen Van C\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:39:40', '2021-09-11 21:39:40'),
(1213, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:39:40', '2021-09-11 21:39:40'),
(1214, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:42:07', '2021-09-11 21:42:07'),
(1215, 1, 'sc_admin/our_team/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:42:09', '2021-09-11 21:42:09'),
(1216, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:42:36', '2021-09-11 21:42:36'),
(1217, 1, 'sc_admin/our_team/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:42:37', '2021-09-11 21:42:37'),
(1218, 1, 'sc_admin/our_team/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-8-249x249.jpg\",\"name\":\"Nguyen Van As\",\"description\":\"Mega positive shop assistant who is always ready to help you make the rights choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/s\",\"instagram\":\"https:\\/\\/www.instagram.com\\/s\",\"sort\":\"1\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:42:49', '2021-09-11 21:42:49'),
(1219, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:42:49', '2021-09-11 21:42:49'),
(1220, 1, 'sc_admin/our_team/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:42:53', '2021-09-11 21:42:53'),
(1221, 1, 'sc_admin/our_team/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-8-249x249.jpg\",\"name\":\"Nguyen Van A\",\"description\":\"Mega positive shop assistant who is alway ready to help you make the rights choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:43:03', '2021-09-11 21:43:03'),
(1222, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:43:03', '2021-09-11 21:43:03'),
(1223, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:43:28', '2021-09-11 21:43:28'),
(1224, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:43:31', '2021-09-11 21:43:31'),
(1225, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396611181\"}', '2021-09-11 21:43:31', '2021-09-11 21:43:31'),
(1226, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396611182\"}', '2021-09-11 21:43:31', '2021-09-11 21:43:31'),
(1227, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396611183\"}', '2021-09-11 21:43:32', '2021-09-11 21:43:32'),
(1228, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":null,\"name\":null,\"description\":null,\"facebook\":null,\"instagram\":null,\"sort\":\"0\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:43:33', '2021-09-11 21:43:33'),
(1229, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:43:33', '2021-09-11 21:43:33'),
(1230, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:44:09', '2021-09-11 21:44:09'),
(1231, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":null,\"name\":null,\"description\":null,\"facebook\":null,\"instagram\":null,\"sort\":\"0\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:44:11', '2021-09-11 21:44:11'),
(1232, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:44:11', '2021-09-11 21:44:11'),
(1233, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":null,\"name\":\"H\\u00f9ng V\\u0103n \\u0110\\u1ed7\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":null,\"sort\":\"0\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:44:22', '2021-09-11 21:44:22'),
(1234, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:45:11', '2021-09-11 21:45:11'),
(1235, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":null,\"name\":null,\"description\":null,\"facebook\":null,\"instagram\":null,\"sort\":\"0\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:45:13', '2021-09-11 21:45:13'),
(1236, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:45:13', '2021-09-11 21:45:13'),
(1237, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:45:16', '2021-09-11 21:45:16'),
(1238, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396716408\"}', '2021-09-11 21:45:16', '2021-09-11 21:45:16'),
(1239, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396716409\"}', '2021-09-11 21:45:16', '2021-09-11 21:45:16'),
(1240, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396716410\"}', '2021-09-11 21:45:17', '2021-09-11 21:45:17'),
(1241, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396716411\"}', '2021-09-11 21:45:18', '2021-09-11 21:45:18'),
(1242, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-8-249x249.jpg\",\"name\":\"Nguyen Van B\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:45:27', '2021-09-11 21:45:27'),
(1243, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:45:29', '2021-09-11 21:45:29'),
(1244, 1, 'sc_admin/our_team/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:45:32', '2021-09-11 21:45:32'),
(1245, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 21:45:33', '2021-09-11 21:45:33'),
(1246, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:45:39', '2021-09-11 21:45:39'),
(1247, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:45:41', '2021-09-11 21:45:41'),
(1248, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396741830\"}', '2021-09-11 21:45:42', '2021-09-11 21:45:42'),
(1249, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396741831\"}', '2021-09-11 21:45:42', '2021-09-11 21:45:42'),
(1250, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396741832\"}', '2021-09-11 21:45:42', '2021-09-11 21:45:42'),
(1251, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396741833\"}', '2021-09-11 21:45:44', '2021-09-11 21:45:44'),
(1252, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-8-249x249.jpg\",\"name\":\"E-Commerce\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:45:55', '2021-09-11 21:45:55'),
(1253, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:45:55', '2021-09-11 21:45:55'),
(1254, 1, 'sc_admin/our_team/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:45:59', '2021-09-11 21:45:59'),
(1255, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 21:45:59', '2021-09-11 21:45:59'),
(1256, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:46:37', '2021-09-11 21:46:37'),
(1257, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:46:39', '2021-09-11 21:46:39'),
(1258, 1, 'sc_admin/service/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":null,\"title\":null,\"description\":null,\"content\":null,\"sort\":\"0\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:46:41', '2021-09-11 21:46:41'),
(1259, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:46:41', '2021-09-11 21:46:41'),
(1260, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:46:43', '2021-09-11 21:46:43'),
(1261, 1, 'sc_admin/our_team/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:46:47', '2021-09-11 21:46:47'),
(1262, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"our_team\"}', '2021-09-11 21:46:49', '2021-09-11 21:46:49'),
(1263, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396809514\"}', '2021-09-11 21:46:49', '2021-09-11 21:46:49'),
(1264, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"_\":\"1631396809515\"}', '2021-09-11 21:46:50', '2021-09-11 21:46:50'),
(1265, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396809516\"}', '2021-09-11 21:46:50', '2021-09-11 21:46:50'),
(1266, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/our_team\",\"type\":\"our_team\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631396809517\"}', '2021-09-11 21:46:51', '2021-09-11 21:46:51'),
(1267, 1, 'sc_admin/our_team/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"image\":\"\\/data\\/file\\/our_team\\/team-8-249x249.jpg\",\"name\":\"Nguyen Van D\",\"description\":\"Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:47:05', '2021-09-11 21:47:05'),
(1268, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:47:06', '2021-09-11 21:47:06'),
(1269, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:53:59', '2021-09-11 21:53:59'),
(1270, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:54:04', '2021-09-11 21:54:04'),
(1271, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"type\":\"page\"}', '2021-09-11 21:54:07', '2021-09-11 21:54:07'),
(1272, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1631397247828\"}', '2021-09-11 21:54:08', '2021-09-11 21:54:08'),
(1273, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"_\":\"1631397247829\"}', '2021-09-11 21:54:08', '2021-09-11 21:54:08'),
(1274, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":null,\"type\":\"page\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631397247830\"}', '2021-09-11 21:54:08', '2021-09-11 21:54:08'),
(1275, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:54:15', '2021-09-11 21:54:15'),
(1276, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"_\":\"1631397247831\"}', '2021-09-11 21:54:15', '2021-09-11 21:54:15'),
(1277, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"page\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1631397247832\"}', '2021-09-11 21:54:16', '2021-09-11 21:54:16'),
(1278, 1, 'sc_admin/page/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<p>S\\u1ee9 m\\u1ec7nh c\\u1ee7a Pet Shop ch&uacute;ng t&ocirc;i l&agrave; cung c\\u1ea5p d\\u1ecbch v\\u1ee5 ch\\u0103m s&oacute;c ch\\u1ea5t l\\u01b0\\u1ee3ng cho v\\u1eadt nu&ocirc;i.<\\/p>\\r\\n\\r\\n<p>Ch&uacute;ng t&ocirc;i mu\\u1ed1n kh&aacute;ch h&agrave;ng v&agrave; v\\u1eadt nu&ocirc;i c\\u1ee7a h\\u1ecd nh\\u1eadn \\u0111\\u01b0\\u1ee3c d\\u1ecbch v\\u1ee5 v&agrave; h&agrave;ng h&oacute;a t\\u1ed1t nh\\u1ea5t, \\u0111&oacute; l&agrave; l&yacute; do t\\u1ea1i sao ch&uacute;ng t&ocirc;i ch\\u1ec9 l&agrave;m vi\\u1ec7c v\\u1edbi c&aacute;c nh&agrave; s\\u1ea3n xu\\u1ea5t \\u0111&atilde; \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh v&agrave; c&oacute; uy t&iacute;n.<\\/p>\"}},\"image\":\"\\/data\\/page\\/about-4-570x511.jpg\",\"alias\":\"about\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 21:54:19', '2021-09-11 21:54:19'),
(1279, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:54:20', '2021-09-11 21:54:20'),
(1280, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 21:54:26', '2021-09-11 21:54:26'),
(1281, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:02:37', '2021-09-11 22:02:37'),
(1282, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:02:38', '2021-09-11 22:02:38'),
(1283, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:02:39', '2021-09-11 22:02:39'),
(1284, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:03:30', '2021-09-11 22:03:30'),
(1285, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:03:32', '2021-09-11 22:03:32'),
(1286, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:03:34', '2021-09-11 22:03:34'),
(1287, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:04:15', '2021-09-11 22:04:15'),
(1288, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:04:18', '2021-09-11 22:04:18'),
(1289, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:04:20', '2021-09-11 22:04:20'),
(1290, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:05:12', '2021-09-11 22:05:12'),
(1291, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:05:22', '2021-09-11 22:05:22'),
(1292, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:05:59', '2021-09-11 22:05:59'),
(1293, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:06:00', '2021-09-11 22:06:00'),
(1294, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:06:10', '2021-09-11 22:06:10'),
(1295, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:06:11', '2021-09-11 22:06:11'),
(1296, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:08:50', '2021-09-11 22:08:50'),
(1297, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:08:52', '2021-09-11 22:08:52'),
(1298, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:09:00', '2021-09-11 22:09:00'),
(1299, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:09:44', '2021-09-11 22:09:44'),
(1300, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:10:37', '2021-09-11 22:10:37'),
(1301, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:13:02', '2021-09-11 22:13:02'),
(1302, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:18:21', '2021-09-11 22:18:21'),
(1303, 1, 'sc_admin/page/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:18:25', '2021-09-11 22:18:25'),
(1304, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:18:47', '2021-09-11 22:18:47'),
(1305, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:20:16', '2021-09-11 22:20:16'),
(1306, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:26:00', '2021-09-11 22:26:00'),
(1307, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:26:01', '2021-09-11 22:26:01'),
(1308, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:27:44', '2021-09-11 22:27:44'),
(1309, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:27:46', '2021-09-11 22:27:46'),
(1310, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:28:46', '2021-09-11 22:28:46'),
(1311, 1, 'sc_admin/page/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"keyword\":\"S\\u1ee9 m\\u1ec7nh c\\u1ee7a Pet Shop ch\\u00fang t\\u00f4i l\\u00e0 cung c\\u1ea5p d\\u1ecbch v\\u1ee5 ch\\u0103m s\\u00f3c ch\\u1ea5t l\\u01b0\\u1ee3ng cho v\\u1eadt nu\\u00f4i.\",\"description\":\"Ch\\u00fang t\\u00f4i mu\\u1ed1n kh\\u00e1ch h\\u00e0ng v\\u00e0 v\\u1eadt nu\\u00f4i c\\u1ee7a h\\u1ecd nh\\u1eadn \\u0111\\u01b0\\u1ee3c d\\u1ecbch v\\u1ee5 v\\u00e0 h\\u00e0ng h\\u00f3a t\\u1ed1t nh\\u1ea5t, \\u0111\\u00f3 l\\u00e0 l\\u00fd do t\\u1ea1i sao ch\\u00fang t\\u00f4i ch\\u1ec9 l\\u00e0m vi\\u1ec7c v\\u1edbi c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh v\\u00e0 c\\u00f3 uy t\\u00edn.\",\"content\":\"<p>S\\u1ee9 m\\u1ec7nh c\\u1ee7a Pet Shop ch&uacute;ng t&ocirc;i l&agrave; cung c\\u1ea5p d\\u1ecbch v\\u1ee5 ch\\u0103m s&oacute;c ch\\u1ea5t l\\u01b0\\u1ee3ng cho v\\u1eadt nu&ocirc;i.<\\/p>\\r\\n\\r\\n<p>Ch&uacute;ng t&ocirc;i mu\\u1ed1n kh&aacute;ch h&agrave;ng v&agrave; v\\u1eadt nu&ocirc;i c\\u1ee7a h\\u1ecd nh\\u1eadn \\u0111\\u01b0\\u1ee3c d\\u1ecbch v\\u1ee5 v&agrave; h&agrave;ng h&oacute;a t\\u1ed1t nh\\u1ea5t, \\u0111&oacute; l&agrave; l&yacute; do t\\u1ea1i sao ch&uacute;ng t&ocirc;i ch\\u1ec9 l&agrave;m vi\\u1ec7c v\\u1edbi c&aacute;c nh&agrave; s\\u1ea3n xu\\u1ea5t \\u0111&atilde; \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh v&agrave; c&oacute; uy t&iacute;n.<br \\/>\\r\\n<br \\/>\\r\\nLorem issum...<\\/p>\"}},\"image\":\"\\/data\\/page\\/about-4-570x511.jpg\",\"alias\":\"about\",\"status\":\"on\",\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\"}', '2021-09-11 22:30:01', '2021-09-11 22:30:01'),
(1312, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:30:01', '2021-09-11 22:30:01'),
(1313, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:30:29', '2021-09-11 22:30:29'),
(1314, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:32:23', '2021-09-11 22:32:23'),
(1315, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:55:37', '2021-09-11 22:55:37'),
(1316, 1, 'sc_admin/plugin/disable', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\",\"key\":\"Cash\",\"code\":\"Payment\"}', '2021-09-11 22:55:42', '2021-09-11 22:55:42'),
(1317, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 22:55:43', '2021-09-11 22:55:43'),
(1318, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-11 22:55:47', '2021-09-11 22:55:47'),
(1319, 1, 'sc_admin/plugin/disable', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\",\"key\":\"ShippingStandard\",\"code\":\"Shipping\"}', '2021-09-11 22:55:50', '2021-09-11 22:55:50'),
(1320, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 22:55:50', '2021-09-11 22:55:50');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1321, 1, 'sc_admin/plugin/enable', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\",\"key\":\"ShippingStandard\",\"code\":\"Shipping\"}', '2021-09-11 23:02:27', '2021-09-11 23:02:27'),
(1322, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 23:02:28', '2021-09-11 23:02:28'),
(1323, 1, 'sc_admin/plugin/disable', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"wjAELvCrD5LTKnjBzDTV1sas0zHpvGschpWjBg5e\",\"key\":\"ShippingStandard\",\"code\":\"Shipping\"}', '2021-09-11 23:02:49', '2021-09-11 23:02:49'),
(1324, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-11 23:02:50', '2021-09-11 23:02:50'),
(1325, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 08:50:09', '2021-09-12 08:50:09'),
(1326, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 09:23:06', '2021-09-12 09:23:06'),
(1327, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 09:23:09', '2021-09-12 09:23:09'),
(1328, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\",\"name\":\"customer_address1\",\"storeId\":\"1\",\"value\":\"0\"}', '2021-09-12 09:23:23', '2021-09-12 09:23:23'),
(1329, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\",\"name\":\"customer_address2\",\"storeId\":\"1\",\"value\":\"0\"}', '2021-09-12 09:23:24', '2021-09-12 09:23:24'),
(1330, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\",\"name\":\"customer_address1_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2021-09-12 09:23:29', '2021-09-12 09:23:29'),
(1331, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\",\"name\":\"customer_address2_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2021-09-12 09:23:30', '2021-09-12 09:23:30'),
(1332, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\",\"name\":\"customer_country\",\"storeId\":\"1\",\"value\":\"0\"}', '2021-09-12 09:23:32', '2021-09-12 09:23:32'),
(1333, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\",\"name\":\"customer_country_required\",\"storeId\":\"1\",\"value\":\"0\"}', '2021-09-12 09:23:33', '2021-09-12 09:23:33'),
(1334, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 10:39:31', '2021-09-12 10:39:31'),
(1335, 1, 'sc_admin/plugin/enable', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\",\"key\":\"Cash\",\"code\":\"Payment\"}', '2021-09-12 10:39:36', '2021-09-12 10:39:36'),
(1336, 1, 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-12 10:39:37', '2021-09-12 10:39:37'),
(1337, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 10:39:40', '2021-09-12 10:39:40'),
(1338, 1, 'sc_admin/plugin/enable', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\",\"key\":\"ShippingStandard\",\"code\":\"Shipping\"}', '2021-09-12 10:39:43', '2021-09-12 10:39:43'),
(1339, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-09-12 10:39:43', '2021-09-12 10:39:43'),
(1340, 1, 'sc_admin/plugin/shipping', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:24:11', '2021-09-12 12:24:11'),
(1341, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"order_status\":\"1\"}', '2021-09-12 12:24:16', '2021-09-12 12:24:16'),
(1342, 1, 'sc_admin/order/detail/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:24:22', '2021-09-12 12:24:22'),
(1343, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:24:47', '2021-09-12 12:24:47'),
(1344, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:24:51', '2021-09-12 12:24:51'),
(1345, 1, 'sc_admin/currency/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"0\",\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\"}', '2021-09-12 12:24:54', '2021-09-12 12:24:54'),
(1346, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:24:55', '2021-09-12 12:24:55'),
(1347, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"order_status\":\"1\"}', '2021-09-12 12:25:04', '2021-09-12 12:25:04'),
(1348, 1, 'sc_admin/order/detail/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:25:12', '2021-09-12 12:25:12'),
(1349, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:25:23', '2021-09-12 12:25:23'),
(1350, 1, 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:25:26', '2021-09-12 12:25:26'),
(1351, 1, 'sc_admin/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"20\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"yFNPtvGL1BBZfYMYAYE3sc8MR8kUECM7VoVgicOf\"}', '2021-09-12 12:25:34', '2021-09-12 12:25:34'),
(1352, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 12:25:35', '2021-09-12 12:25:35'),
(1353, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:16:24', '2021-09-12 16:16:24'),
(1354, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"order_status\":\"1\"}', '2021-09-12 16:16:31', '2021-09-12 16:16:31'),
(1355, 1, 'sc_admin/order/detail/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:16:39', '2021-09-12 16:16:39'),
(1356, 1, 'sc_admin/order/detail/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:21:09', '2021-09-12 16:21:09'),
(1357, 1, 'sc_admin/order/detail/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:21:23', '2021-09-12 16:21:23'),
(1358, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:21:57', '2021-09-12 16:21:57'),
(1359, 1, 'sc_admin/product/edit/21', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:22:00', '2021-09-12 16:22:00'),
(1360, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:22:36', '2021-09-12 16:22:36'),
(1361, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:22:49', '2021-09-12 16:22:49'),
(1362, 1, 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:22:51', '2021-09-12 16:22:51'),
(1363, 1, 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:22:57', '2021-09-12 16:22:57'),
(1364, 1, 'sc_admin/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"w6PT0AsCPOu9L9rUpyF1xljn5t25kBwNb1FOSQJr\"}', '2021-09-12 16:23:03', '2021-09-12 16:23:03'),
(1365, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:23:03', '2021-09-12 16:23:03'),
(1366, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:36:49', '2021-09-12 16:36:49'),
(1367, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"order_status\":\"1\"}', '2021-09-12 16:36:55', '2021-09-12 16:36:55'),
(1368, 1, 'sc_admin/order/detail/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:37:01', '2021-09-12 16:37:01'),
(1369, 1, 'sc_admin/order/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"w6PT0AsCPOu9L9rUpyF1xljn5t25kBwNb1FOSQJr\"}', '2021-09-12 16:37:08', '2021-09-12 16:37:08'),
(1370, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"order_status\":\"1\",\"_pjax\":\"#pjax-container\"}', '2021-09-12 16:37:09', '2021-09-12 16:37:09'),
(1371, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:45:48', '2021-09-12 16:45:48'),
(1372, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:48:24', '2021-09-12 16:48:24'),
(1373, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:48:47', '2021-09-12 16:48:47'),
(1374, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-12 16:49:19', '2021-09-12 16:49:19'),
(1375, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 17:31:44', '2021-09-13 17:31:44'),
(1376, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 17:31:52', '2021-09-13 17:31:52'),
(1377, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"s-cart-light\",\"pk\":null,\"_token\":\"21mSoo0xvjuGIMwbOktGGaCFdnCwwZpBYQ70Q3t1\",\"storeId\":\"1\"}', '2021-09-13 17:31:58', '2021-09-13 17:31:58'),
(1378, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"name\":\"template\",\"value\":\"benstore-template\",\"pk\":null,\"_token\":\"21mSoo0xvjuGIMwbOktGGaCFdnCwwZpBYQ70Q3t1\",\"storeId\":\"1\"}', '2021-09-13 17:34:57', '2021-09-13 17:34:57'),
(1379, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:17:32', '2021-09-13 18:17:32'),
(1380, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:21:25', '2021-09-13 18:21:25'),
(1381, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '{\"order_status\":\"1\"}', '2021-09-13 18:21:30', '2021-09-13 18:21:30'),
(1382, 1, 'sc_admin/order/detail/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:21:36', '2021-09-13 18:21:36'),
(1383, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:23:04', '2021-09-13 18:23:04'),
(1384, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:23:07', '2021-09-13 18:23:07'),
(1385, 1, 'sc_admin/category/edit/18', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:23:11', '2021-09-13 18:23:11'),
(1386, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:23:27', '2021-09-13 18:23:27'),
(1387, 1, 'sc_admin/product/edit/21', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:23:33', '2021-09-13 18:23:33'),
(1388, 1, 'sc_admin/service', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:24:02', '2021-09-13 18:24:02'),
(1389, 1, 'sc_admin/service/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:24:07', '2021-09-13 18:24:07'),
(1390, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:24:41', '2021-09-13 18:24:41'),
(1391, 1, 'sc_admin/page/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:24:44', '2021-09-13 18:24:44'),
(1392, 1, 'sc_admin/our_team', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:25:04', '2021-09-13 18:25:04'),
(1393, 1, 'sc_admin/our_team/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:25:08', '2021-09-13 18:25:08'),
(1394, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:25:29', '2021-09-13 18:25:29'),
(1395, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '[]', '2021-09-13 18:25:55', '2021-09-13 18:25:55'),
(1396, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:12:48', '2021-09-23 00:12:48'),
(1397, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '{\"order_status\":\"1\"}', '2021-09-23 00:15:07', '2021-09-23 00:15:07'),
(1398, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '{\"order_status\":\"1\"}', '2021-09-23 00:15:40', '2021-09-23 00:15:40'),
(1399, 1, 'sc_admin/order/detail/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:20:57', '2021-09-23 00:20:57'),
(1400, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:23:43', '2021-09-23 00:23:43'),
(1401, 1, 'sc_admin/product/edit/21', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:23:57', '2021-09-23 00:23:57'),
(1402, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:26:07', '2021-09-23 00:26:07'),
(1403, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:26:08', '2021-09-23 00:26:08'),
(1404, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:30:39', '2021-09-23 00:30:39'),
(1405, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:30:49', '2021-09-23 00:30:49'),
(1406, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:31:36', '2021-09-23 00:31:36'),
(1407, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:31:41', '2021-09-23 00:31:41'),
(1408, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 00:31:43', '2021-09-23 00:31:43'),
(1409, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', '[]', '2021-09-23 03:37:28', '2021-09-23 03:37:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_menu`
--

CREATE TABLE `sc_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_menu`
--

INSERT INTO `sc_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `hidden`, `key`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, NULL),
(2, 6, 2, 'admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, NULL),
(3, 25, 3, 'admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, NULL),
(4, 8, 201, 'admin.menu_titles.template_layout', 'fab fa-windows', '', 0, 0, 'TEMPLATE', NULL, NULL),
(5, 9, 2, 'admin.menu_titles.admin_global', 'fab fa-whmcs', '', 0, 0, 'CONFIG_SYSTEM', NULL, NULL),
(6, 0, 10, 'admin.menu_titles.ADMIN_SHOP', 'fab fa-shopify', '', 0, 0, 'ADMIN_SHOP', NULL, NULL),
(7, 0, 100, 'admin.menu_titles.ADMIN_CONTENT', 'fas fa-file-signature', '', 0, 0, 'ADMIN_CONTENT', NULL, NULL),
(8, 0, 300, 'admin.menu_titles.ADMIN_EXTENSION', 'fas fa-th', '', 0, 0, 'ADMIN_EXTENSION', NULL, NULL),
(9, 0, 400, 'admin.menu_titles.ADMIN_SYSTEM', 'fas fa-cogs', '', 0, 0, 'ADMIN_SYSTEM', NULL, NULL),
(10, 7, 102, 'admin.menu_titles.page_manager', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, NULL),
(11, 27, 2, 'admin.menu_titles.shipping_status', 'fas fa-truck', 'admin::shipping_status', 0, 0, NULL, NULL, NULL),
(12, 1, 3, 'admin.menu_titles.order', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, NULL),
(13, 27, 1, 'admin.menu_titles.order_status', 'fas fa-asterisk', 'admin::order_status', 0, 0, NULL, NULL, NULL),
(14, 27, 3, 'admin.menu_titles.payment_status', 'fas fa-recycle', 'admin::payment_status', 0, 0, NULL, NULL, NULL),
(15, 2, 0, 'admin.menu_titles.product', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, NULL),
(16, 2, 0, 'admin.menu_titles.category', 'fas fa-folder-open', 'admin::category', 0, 0, NULL, NULL, NULL),
(17, 27, 4, 'admin.menu_titles.supplier', 'fas fa-user-secret', 'admin::supplier', 0, 0, NULL, NULL, NULL),
(18, 27, 5, 'admin.menu_titles.brand', 'fas fa-university', 'admin::brand', 0, 0, NULL, NULL, NULL),
(19, 27, 8, 'admin.menu_titles.attribute_group', 'fas fa-bars', 'admin::attribute_group', 0, 0, NULL, NULL, NULL),
(20, 3, 0, 'admin.menu_titles.customer', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, NULL),
(21, 3, 0, 'admin.menu_titles.subscribe', 'fas fa-user-circle', 'admin::subscribe', 0, 0, NULL, NULL, NULL),
(22, 67, 1, 'admin.menu_titles.block_content', 'far fa-newspaper', 'admin::store_block', 0, 0, NULL, NULL, NULL),
(23, 67, 2, 'admin.menu_titles.block_link', 'fab fa-chrome', 'admin::store_link', 0, 0, NULL, NULL, NULL),
(24, 4, 0, 'admin.menu_titles.template', 'fas fa-columns', 'admin::template', 0, 0, NULL, NULL, NULL),
(25, 0, 200, 'admin.menu_titles.ADMIN_MARKETING', 'fas fa-sort-amount-up', '', 0, 0, 'MARKETING', NULL, NULL),
(26, 65, 1, 'admin.menu_titles.store_info', 'fas fa-h-square', 'admin::store_info', 0, 0, NULL, NULL, NULL),
(27, 9, 3, 'admin.menu_titles.setting_system', 'fas fa-tools', '', 0, 0, 'SETTING_SYSTEM', NULL, NULL),
(28, 9, 4, 'admin.menu_titles.error_log', 'far fa-clone', '', 0, 0, '', NULL, NULL),
(29, 25, 0, 'admin.menu_titles.email_template', 'fas fa-bars', 'admin::email_template', 0, 0, NULL, NULL, NULL),
(30, 9, 5, 'admin.menu_titles.localization', 'fab fa-shirtsinbulk', NULL, 0, 0, NULL, NULL, '2021-09-11 10:47:04'),
(31, 30, 1, 'admin.menu_titles.language', 'fas fa-language', 'admin::language', 0, 0, NULL, NULL, NULL),
(32, 30, 3, 'admin.menu_titles.currency', 'far fa-money-bill-alt', 'admin::currency', 0, 0, NULL, NULL, NULL),
(33, 7, 101, 'admin.menu_titles.banner', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, NULL),
(34, 5, 5, 'admin.menu_titles.backup_restore', 'fas fa-save', 'admin::backup', 0, 0, NULL, NULL, NULL),
(35, 8, 202, 'admin.menu_titles.plugin', 'fas fa-puzzle-piece', '', 0, 0, 'PLUGIN', NULL, NULL),
(36, 28, 2, 'admin.menu_titles.webhook', 'fab fa-diaspora', 'admin::config/webhook', 0, 0, NULL, NULL, NULL),
(37, 25, 5, 'admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, NULL),
(38, 9, 1, 'admin.menu_titles.user_permission', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, NULL),
(39, 35, 0, 'admin.menu_titles.plugin_payment', 'far fa-money-bill-alt', 'admin::plugin/payment', 0, 0, NULL, NULL, NULL),
(40, 35, 0, 'admin.menu_titles.plugin_shipping', 'fas fa-ambulance', 'admin::plugin/shipping', 0, 0, NULL, NULL, NULL),
(41, 35, 0, 'admin.menu_titles.plugin_total', 'fas fa-cog', 'admin::plugin/total', 0, 0, NULL, NULL, NULL),
(42, 35, 100, 'admin.menu_titles.plugin_other', 'far fa-circle', 'admin::plugin/other', 0, 0, NULL, NULL, NULL),
(43, 35, 0, 'admin.menu_titles.plugin_cms', 'fab fa-modx', 'admin::plugin/cms', 0, 0, NULL, NULL, NULL),
(44, 67, 2, 'admin.menu_titles.css', 'far fa-file-code', 'admin::store_css', 0, 0, NULL, NULL, NULL),
(45, 25, 4, 'admin.menu_titles.seo_manager', 'fab fa-battle-net', '', 0, 0, 'SEO_MANAGER', NULL, NULL),
(46, 38, 0, 'admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, NULL),
(47, 38, 0, 'admin.menu_titles.roles', 'fas fa-user-tag', 'admin::role', 0, 0, NULL, NULL, NULL),
(48, 38, 0, 'admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, NULL),
(49, 5, 0, 'admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, NULL),
(50, 28, 0, 'admin.menu_titles.operation_log', 'fas fa-history', 'admin::log', 0, 0, NULL, NULL, NULL),
(51, 45, 0, 'admin.menu_titles.seo_config', 'fas fa-bars', 'admin::seo/config', 0, 0, NULL, NULL, NULL),
(52, 7, 103, 'admin.menu_titles.news', 'far fa-file-powerpoint', 'admin::news', 0, 0, NULL, NULL, NULL),
(53, 5, 0, 'admin.menu_titles.env_config', 'fas fa-tasks', 'admin::env/config', 0, 0, NULL, NULL, NULL),
(54, 37, 0, 'admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, NULL),
(57, 65, 2, 'admin.menu_titles.store_config', 'fas fa-cog', 'admin::store_config', 0, 0, NULL, NULL, NULL),
(58, 5, 5, 'admin.menu_titles.cache_manager', 'fab fa-tripadvisor', 'admin::cache_config', 0, 0, NULL, NULL, NULL),
(59, 9, 7, 'admin.menu_titles.api_manager', 'fas fa-plug', '', 0, 0, 'API_MANAGER', NULL, NULL),
(60, 65, 3, 'admin.menu_titles.store_maintain', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, NULL),
(61, 27, 9, 'admin.menu_titles.tax', 'far fa-calendar-minus', 'admin::tax', 0, 0, NULL, NULL, NULL),
(62, 27, 6, 'admin.menu_titles.weight', 'fas fa-balance-scale', 'admin::weight_unit', 0, 0, NULL, NULL, NULL),
(63, 27, 7, 'admin.menu_titles.length', 'fas fa-minus', 'admin::length_unit', 0, 0, NULL, NULL, NULL),
(65, 0, 250, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'fas fa-store-alt', '', 0, 0, 'ADMIN_SHOP_SETTING', NULL, NULL),
(66, 59, 1, 'admin.menu_titles.api_config', 'fas fa fa-cog', 'admin::api_connection', 0, 0, NULL, NULL, NULL),
(67, 65, 5, 'admin.menu_titles.layout', 'far fa-object-group', '', 0, 0, NULL, NULL, NULL),
(68, 27, 5, 'admin.menu_titles.custom_field', 'fa fa-american-sign-language-interpreting', 'admin::custom_field', 0, 0, NULL, NULL, NULL),
(69, 30, 2, 'admin.menu_titles.language_manager', 'fa fa-universal-access', 'admin::language_manager', 0, 0, NULL, NULL, NULL),
(70, 7, 4, 'Dịch vụ', 'fas fa-archive', 'admin::service', 0, 0, NULL, '2021-09-11 14:56:07', '2021-09-11 15:04:28'),
(71, 7, 0, 'Đội ngũ thành viên', 'fas fa-users', 'admin::our_team', 0, 0, NULL, '2021-09-11 21:16:18', '2021-09-11 21:16:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_permission`
--

CREATE TABLE `sc_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_permission`
--

INSERT INTO `sc_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', '2021-09-09 11:00:14', NULL),
(2, 'Dashboard', 'dashboard', 'GET::sc_admin', '2021-09-09 11:00:14', NULL),
(3, 'Base setting', 'base.setting', 'ANY::sc_admin/order_status/*,ANY::sc_admin/shipping_status/*,ANY::sc_admin/payment_status/*,ANY::sc_admin/supplier/*,ANY::sc_admin/brand/*,ANY::sc_admin/custom_field/*,ANY::sc_admin/weight_unit/*,ANY::sc_admin/length_unit/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/tax/*', '2021-09-09 11:00:14', NULL),
(4, 'Store manager', 'store.full', 'ANY::sc_admin/store_info/*,ANY::sc_admin/store_maintain/*,ANY::sc_admin/store_config/*,ANY::sc_admin/store_css/*,ANY::sc_admin/store_block/*,ANY::sc_admin/store_link/*', '2021-09-09 11:00:14', NULL),
(5, 'Product manager', 'product.full', 'ANY::sc_admin/product/*,ANY::sc_admin/product_property/*,ANY::sc_admin/product_tag/*', '2021-09-09 11:00:14', NULL),
(6, 'Category manager', 'category.full', 'ANY::sc_admin/category/*', '2021-09-09 11:00:14', NULL),
(7, 'Order manager', 'order.full', 'ANY::sc_admin/order/*', '2021-09-09 11:00:14', NULL),
(8, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', '2021-09-09 11:00:14', NULL),
(9, 'Extension manager', 'extension.full', 'ANY::sc_admin/template/*,ANY::sc_admin/plugin/*', '2021-09-09 11:00:14', NULL),
(10, 'Marketing manager', 'marketing.full', 'ANY::sc_admin/shop_discount/*,ANY::sc_admin/email_template/*,ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*,ANY::sc_admin/seo/*', '2021-09-09 11:00:14', NULL),
(11, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', '2021-09-09 11:00:14', NULL),
(12, 'CMS manager', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/banner_type/*, ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', '2021-09-09 11:00:14', NULL),
(13, 'Update config', 'change.config', 'POST::sc_admin/store_config/update', '2021-09-09 11:00:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_role`
--

CREATE TABLE `sc_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_role`
--

INSERT INTO `sc_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-09-09 11:00:14', NULL),
(2, 'Group only View', 'view.all', '2021-09-09 11:00:14', NULL),
(3, 'Manager', 'manager', '2021-09-09 11:00:14', NULL),
(4, 'CMS', 'cms', '2021-09-09 11:00:14', NULL),
(5, 'Accountant', 'accountant', '2021-09-09 11:00:14', NULL),
(6, 'Marketing', 'maketing', '2021-09-09 11:00:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_role_permission`
--

CREATE TABLE `sc_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_role_permission`
--

INSERT INTO `sc_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2021-09-09 11:00:14', NULL),
(3, 2, '2021-09-09 11:00:14', NULL),
(3, 3, '2021-09-09 11:00:14', NULL),
(3, 4, '2021-09-09 11:00:14', NULL),
(3, 5, '2021-09-09 11:00:14', NULL),
(3, 6, '2021-09-09 11:00:14', NULL),
(3, 7, '2021-09-09 11:00:14', NULL),
(3, 8, '2021-09-09 11:00:14', NULL),
(3, 9, '2021-09-09 11:00:14', NULL),
(3, 10, '2021-09-09 11:00:14', NULL),
(3, 11, '2021-09-09 11:00:14', NULL),
(3, 12, '2021-09-09 11:00:14', NULL),
(3, 13, '2021-09-09 11:00:14', NULL),
(4, 1, '2021-09-09 11:00:14', NULL),
(4, 12, '2021-09-09 11:00:14', NULL),
(5, 1, '2021-09-09 11:00:14', NULL),
(5, 2, '2021-09-09 11:00:14', NULL),
(5, 7, '2021-09-09 11:00:14', NULL),
(5, 11, '2021-09-09 11:00:14', NULL),
(6, 1, '2021-09-09 11:00:14', NULL),
(6, 2, '2021-09-09 11:00:14', NULL),
(6, 8, '2021-09-09 11:00:14', NULL),
(6, 10, '2021-09-09 11:00:14', NULL),
(6, 11, '2021-09-09 11:00:14', NULL),
(6, 12, '2021-09-09 11:00:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_role_user`
--

CREATE TABLE `sc_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_role_user`
--

INSERT INTO `sc_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_store`
--

CREATE TABLE `sc_admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Use for multi-store, multi-vendor',
  `partner` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Use for multi-vendor',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'Use for multi-store, multi-vendor',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active',
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_store`
--

INSERT INTO `sc_admin_store` (`id`, `logo`, `icon`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `partner`, `code`, `language`, `timezone`, `currency`, `status`, `active`, `map`, `facebook`, `instagram`, `skype`) VALUES
(1, '/data/logo/logo-default-336x120.png', '/data/logo/logo-default-336x120.png', '0123456789', '0987654321', 'benstore@gmail.com', '', 'Đường Z115  Thái Nguyên', NULL, NULL, 'benstore-template', 'benstore.com.vn', '0', 's-cart', 'vi', 'Asia/Ho_Chi_Minh', 'USD', 1, 1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3710.02316671819!2d105.80423471489316!3d21.58501878569979!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1631359740026!5m2!1svi!2s\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.skype.com/en/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_store_description`
--

CREATE TABLE `sc_admin_store_description` (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_note` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_store_description`
--

INSERT INTO `sc_admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`, `maintain_note`) VALUES
(1, 'en', 'BenStore - Dịch vụ chăm sóc chất lượng cho vật nuôi', 'BenStore - Dịch vụ chăm sóc chất lượng cho vật nuôi', '', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n</center>', 'Website is in maintenance mode!'),
(1, 'vi', 'BenStore - Dịch vụ chăm sóc chất lượng cho vật nuôi', 'BenStore - Dịch vụ chăm sóc chất lượng cho vật nuôi', '', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\n</center>', 'Website đang trong chế độ bảo trì!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_user`
--

CREATE TABLE `sc_admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_user`
--

INSERT INTO `sc_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$F3791tJxHy7THsbrb555v.Jnk8YO03/ECGCx7VN8fucDUwbrsamSW', 'Administrator', 'dohung28599@gmail.com', '/data/avatar/logo-default-336x120.png', 'IfWoM8o90jA7nvcQGwkMTY9GXFRxRnWpGRMKTCzbGrYrFU4KNRntEuhha1ik', NULL, '2021-09-09 11:00:14', '2021-09-09 11:33:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_user_permission`
--

CREATE TABLE `sc_admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_api_connection`
--

CREATE TABLE `sc_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_api_connection`
--

INSERT INTO `sc_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '1c0ceb2a-115d-11ec-82e4-2cf05db3710f', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_languages`
--

CREATE TABLE `sc_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_languages`
--

INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(1, 'action.edit', 'Edit', 'action', 'en'),
(2, 'action.edit', 'Chỉnh sửa', 'action', 'vi'),
(3, 'action.update', 'Update', 'action', 'en'),
(4, 'action.update', 'Cập nhật', 'action', 'vi'),
(5, 'action.add', 'Thêm mới', 'action', 'vi'),
(6, 'action.add', 'Add new', 'action', 'en'),
(7, 'action.create', 'Create new', 'action', 'en'),
(8, 'action.create', 'Tạo mới', 'action', 'vi'),
(9, 'action.create_success', 'Tạo mới thành công', 'action', 'vi'),
(10, 'action.create_success', 'Create success', 'action', 'en'),
(11, 'action.edit_success', 'Edit success', 'action', 'en'),
(12, 'action.edit_success', 'Tạo mới thành công', 'action', 'vi'),
(13, 'action.update_success', 'Update success', 'action', 'en'),
(14, 'action.update_success', 'Cập nhật thành công', 'action', 'vi'),
(15, 'action.add_success', 'Add new success', 'action', 'en'),
(16, 'action.add_success', 'Thêm mới thành công', 'action', 'vi'),
(17, 'action.remote_success', 'Remove success', 'action', 'en'),
(18, 'action.remote_success', 'Gỡ bỏ thành công', 'action', 'vi'),
(19, 'action.delete_success', 'Delete success', 'action', 'en'),
(20, 'action.delete_success', 'Xóa thành công', 'action', 'vi'),
(21, 'action.remote', 'Gỡ bỏ', 'action', 'vi'),
(22, 'action.remote', 'Remove', 'action', 'en'),
(23, 'action.delete', 'Xóa', 'action', 'vi'),
(24, 'action.delete', 'Delete', 'action', 'en'),
(25, 'action.uninstall', 'Delete', 'action', 'en'),
(26, 'action.uninstall', 'Gỡ cài đặt', 'action', 'vi'),
(27, 'action.install', 'Cài đặt', 'action', 'vi'),
(28, 'action.install', 'Install', 'action', 'en'),
(29, 'action.click', 'Click', 'action', 'en'),
(30, 'action.click', 'Bấm', 'action', 'vi'),
(31, 'action.click_here', 'Click here', 'action', 'en'),
(32, 'action.click_here', 'Bấm vào đây', 'action', 'vi'),
(33, 'action.view', 'Xem', 'action', 'vi'),
(34, 'action.view', 'View', 'action', 'en'),
(35, 'action.view_more', 'View more', 'action', 'en'),
(36, 'action.view_more', 'Xem thêm', 'action', 'vi'),
(37, 'action.detail', 'Chi tiết', 'action', 'vi'),
(38, 'action.detail', 'Detail', 'action', 'en'),
(39, 'action.hidden', 'Hidden', 'action', 'en'),
(40, 'action.hidden', 'Ẩn', 'action', 'vi'),
(41, 'action.show', 'Hiển thị', 'action', 'vi'),
(42, 'action.show', 'Show', 'action', 'en'),
(43, 'action.submit', 'Submit', 'action', 'en'),
(44, 'action.submit', 'Gửi', 'action', 'vi'),
(45, 'action.save', 'Save', 'action', 'en'),
(46, 'action.save', 'Lưu lại', 'action', 'vi'),
(47, 'action.reset', 'Làm lại', 'action', 'vi'),
(48, 'action.reset', 'Reset', 'action', 'en'),
(49, 'action.logout', 'Đăng xuất', 'action', 'vi'),
(50, 'action.logout', 'Logout', 'action', 'en'),
(51, 'action.login', 'Đăng nhập', 'action', 'vi'),
(52, 'action.login', 'Login', 'action', 'en'),
(53, 'action.refresh', 'Làm mới', 'action', 'vi'),
(54, 'action.refresh', 'Refresh', 'action', 'en'),
(55, 'action.confirm', 'Xác nhận', 'action', 'vi'),
(56, 'action.confirm', 'Confirmation', 'action', 'en'),
(57, 'action.add_to_cart', 'Add to cart', 'action', 'en'),
(58, 'action.add_to_cart', 'Thêm vào giỏ hàng', 'action', 'vi'),
(59, 'action.add_to_wishlist', 'Thêm yêu thích', 'action', 'vi'),
(60, 'action.add_to_wishlist', 'Add to wishlist', 'action', 'en'),
(61, 'action.add_to_compare', 'Add to compare', 'action', 'en'),
(62, 'action.add_to_compare', 'Thêm so sánh', 'action', 'vi'),
(63, 'action.buy_now', 'Mua ngay', 'action', 'vi'),
(64, 'action.buy_now', 'Buy now', 'action', 'en'),
(65, 'action.re_order', 'Re-order', 'action', 'en'),
(66, 'action.re_order', 'Mua lại', 'action', 'vi'),
(67, 'action.order', 'Đặt hàng', 'action', 'vi'),
(68, 'action.order', 'Order', 'action', 'en'),
(69, 'action.title', 'Action', 'action', 'en'),
(70, 'action.title', 'Thao tác', 'action', 'vi'),
(71, 'action.confirm_agree', 'Agree', 'action', 'en'),
(72, 'action.confirm_agree', 'Đồng ý', 'action', 'vi'),
(73, 'action.confirm_cancel', 'Hủy bỏ', 'action', 'vi'),
(74, 'action.confirm_cancel', 'Cancel', 'action', 'en'),
(75, 'action.confirm_yes', 'Yes', 'action', 'en'),
(76, 'action.confirm_yes', 'Có', 'action', 'vi'),
(77, 'action.confirm_no', 'Không', 'action', 'vi'),
(78, 'action.confirm_no', 'No', 'action', 'en'),
(79, 'action.delete_confirm', 'Are you sure to delete it?', 'action', 'en'),
(80, 'action.delete_confirm', 'Bạn có chắc chắn sẽ xóa nó?', 'action', 'vi'),
(81, 'action.delete_confirm_deleted', 'Deleted', 'action', 'en'),
(82, 'action.delete_confirm_deleted', 'Đã xóa', 'action', 'vi'),
(83, 'action.delete_confirm_deleted_msg', 'Item has deleted', 'action', 'en'),
(84, 'action.delete_confirm_deleted_msg', 'Item này đã được xóa.', 'action', 'vi'),
(85, 'action.remove_confirm', 'Are you sure to remove it?', 'action', 'en'),
(86, 'action.remove_confirm', 'Bạn có chắc chắn gỡ nó?', 'action', 'vi'),
(87, 'action.action_confirm', 'Bạn có chắc chắn thao tác này?', 'action', 'vi'),
(88, 'action.action_confirm', 'Are you sure you do this?', 'action', 'en'),
(89, 'action.action_confirm_warning', 'Hành động này sẽ không thể phục hồi', 'action', 'vi'),
(90, 'action.action_confirm_warning', 'This action will not be restore', 'action', 'en'),
(91, 'action.warning', 'Warning', 'action', 'en'),
(92, 'action.warning', 'Cảnh báo', 'action', 'vi'),
(93, 'action.notify', 'Thông báo', 'action', 'vi'),
(94, 'action.notify', 'Notify', 'action', 'en'),
(95, 'action.sort', 'Sort items', 'action', 'en'),
(96, 'action.sort', 'Sắp xếp', 'action', 'vi'),
(97, 'action.search', 'Tìm kiếm', 'action', 'vi'),
(98, 'action.search', 'Search', 'action', 'en'),
(99, 'action.copy', 'Sao chép', 'action', 'vi'),
(100, 'action.copy', 'Copy', 'action', 'en'),
(101, 'action.duplicate', 'Duplicate', 'action', 'en'),
(102, 'action.duplicate', 'Nhân bản', 'action', 'vi'),
(103, 'front.home', 'Trang chủ', 'front', 'vi'),
(104, 'front.home', 'Home', 'front', 'en'),
(105, 'front.shop', 'Cửa hàng', 'front', 'vi'),
(106, 'front.shop', 'Shop', 'front', 'en'),
(107, 'front.store', 'Cửa hàng', 'front', 'vi'),
(108, 'front.store', 'Store', 'front', 'en'),
(109, 'front.store_list', 'Danh sách cửa hàng', 'front', 'vi'),
(110, 'front.store_list', 'Store list', 'front', 'en'),
(111, 'front.link_useful', 'Liên kết hữu ích', 'front', 'vi'),
(112, 'front.link_useful', 'Link useful', 'front', 'en'),
(113, 'front.brands', 'Nhãn hàng', 'front', 'vi'),
(114, 'front.brands', 'Brands', 'front', 'en'),
(115, 'front.categories', 'Danh mục', 'front', 'vi'),
(116, 'front.categories', 'Categries', 'front', 'en'),
(117, 'front.sub_categories', 'Danh mục nhỏ', 'front', 'vi'),
(118, 'front.sub_categories', 'Subcategory', 'front', 'en'),
(119, 'front.blog', 'Blog', 'front', 'vi'),
(120, 'front.blog', 'Blogs', 'front', 'en'),
(121, 'front.news', 'Tin tức', 'front', 'vi'),
(122, 'front.news', 'News', 'front', 'en'),
(123, 'front.about', 'About us', 'front', 'en'),
(124, 'front.about', 'Giới thiệu', 'front', 'vi'),
(125, 'front.contact', 'Contact us', 'front', 'en'),
(126, 'front.contact', 'Liên hệ', 'front', 'vi'),
(127, 'front.cms_category', 'Danh mục CMS', 'front', 'vi'),
(128, 'front.cms_category', 'CMS category', 'front', 'en'),
(129, 'front.my_profile', 'Tài khoản', 'front', 'vi'),
(130, 'front.my_profile', 'My profile', 'front', 'en'),
(131, 'front.my_account', 'Tài khoản', 'front', 'vi'),
(132, 'front.my_account', 'My account', 'front', 'en'),
(133, 'front.account', 'Tài khoản', 'front', 'vi'),
(134, 'front.account', 'customer', 'front', 'en'),
(135, 'front.currency', 'Tiền tệ', 'front', 'vi'),
(136, 'front.currency', 'Currency', 'front', 'en'),
(137, 'front.language', 'Ngôn ngữ', 'front', 'vi'),
(138, 'front.language', 'Language', 'front', 'en'),
(139, 'front.cart', 'Giỏ hàng', 'front', 'vi'),
(140, 'front.cart', 'Cart', 'front', 'en'),
(141, 'front.compare', 'So sánh', 'front', 'vi'),
(142, 'front.compare', 'Compare', 'front', 'en'),
(143, 'front.compare_page', 'Sản phẩm so sánh', 'front', 'vi'),
(144, 'front.compare_page', 'Product compare', 'front', 'en'),
(145, 'front.wishlist', 'Yêu thích', 'front', 'vi'),
(146, 'front.wishlist', 'Wishlist', 'front', 'en'),
(147, 'front.wishlist_page', 'Sản phẩm yêu thich', 'front', 'vi'),
(148, 'front.wishlist_page', 'Product Wishlist', 'front', 'en'),
(149, 'front.login', 'Đăng nhập', 'front', 'vi'),
(150, 'front.login', 'Login', 'front', 'en'),
(151, 'front.logout', 'Đăng xuất', 'front', 'vi'),
(152, 'front.logout', 'Logout', 'front', 'en'),
(153, 'front.maintenace', 'Bảo trì', 'front', 'vi'),
(154, 'front.maintenace', 'Maintenace', 'front', 'en'),
(155, 'front.products_hot', 'Hot Products', 'front', 'en'),
(156, 'front.products_hot', 'Sản phẩm nổi bật', 'front', 'vi'),
(157, 'front.products_promotion', 'Promotion Products', 'front', 'en'),
(158, 'front.products_promotion', 'Sản phẩm khuyến mãi', 'front', 'vi'),
(159, 'front.products_special', 'Special products', 'front', 'en'),
(160, 'front.products_special', 'Sản phẩm đặc biệt', 'front', 'vi'),
(161, 'front.products_last_view', 'Last view products', 'front', 'en'),
(162, 'front.products_last_view', 'Sản phẩm mới xem', 'front', 'vi'),
(163, 'front.products_build', 'Product bundle', 'front', 'en'),
(164, 'front.products_build', 'Sản phẩm bộ', 'front', 'vi'),
(165, 'front.products_bundle', 'Product bundle', 'front', 'en'),
(166, 'front.products_bundle', 'Sản phẩm bộ', 'front', 'vi'),
(167, 'front.products_single', 'Product single', 'front', 'en'),
(168, 'front.products_single', 'Sản phẩm đơn', 'front', 'vi'),
(169, 'front.products_group', 'Product group', 'front', 'en'),
(170, 'front.products_group', 'Sản phẩm nhóm', 'front', 'vi'),
(171, 'front.products_new', 'New products', 'front', 'en'),
(172, 'front.products_new', 'Sản phẩm mới', 'front', 'vi'),
(173, 'front.products_recommend', 'Recommend products', 'front', 'en'),
(174, 'front.products_recommend', 'Sản phẩm đề xuất', 'front', 'vi'),
(175, 'front.product_detail', 'Product detail', 'front', 'en'),
(176, 'front.product_detail', 'Chi tiết sản phẩm', 'front', 'vi'),
(177, 'front.categories_store', 'Categories', 'front', 'en'),
(178, 'front.categories_store', 'Danh mục', 'front', 'vi'),
(179, 'front.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'front', 'en'),
(180, 'front.result_item', 'Hiển thị <b>:item_from</b>-<b>:item_to</b> của <b>:total</b> kết quả</b>', 'front', 'vi'),
(181, 'front.all_product', 'Tất cả sản phẩm', 'front', 'vi'),
(182, 'front.all_product', 'All products', 'front', 'en'),
(183, 'front.data_notfound', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(184, 'front.data_notfound', 'Data not found!', 'front', 'en'),
(185, 'front.data_not_found', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(186, 'front.data_not_found', 'Data not found!', 'front', 'en'),
(187, 'front.data_not_found_title', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(188, 'front.data_not_found_title', 'Data not found!', 'front', 'en'),
(189, 'front.page_notfound', 'Không tìm thấy trang!', 'front', 'vi'),
(190, 'front.page_notfound', 'Page not found!', 'front', 'en'),
(191, 'front.page_not_found', 'Không tìm thấy trang!', 'front', 'vi'),
(192, 'front.page_not_found', 'Page not found!', 'front', 'en'),
(193, 'front.flash_stock', 'Available', 'front', 'en'),
(194, 'front.flash_sold', 'Already Sold', 'front', 'en'),
(195, 'front.flash_title', 'Flash sale', 'front', 'en'),
(196, 'front.flash_stock', 'Còn lại', 'front', 'vi'),
(197, 'front.flash_sold', 'Đã bán', 'front', 'vi'),
(198, 'front.flash_title', 'Flash sale', 'front', 'vi'),
(199, 'front.products_best_seller', 'Sản phẩm thịnh hành', 'front', 'vi'),
(200, 'front.products_best_seller', 'Trending products', 'front', 'en'),
(201, 'front.products_trending', 'Sản phẩm bán chạy nhất', 'front', 'vi'),
(202, 'front.products_trending', 'Product best seller', 'front', 'en'),
(203, 'front.search_result', 'Kết quả tìm kiếm', 'front', 'vi'),
(204, 'front.search_result', 'Search result', 'front', 'en'),
(205, 'front.view_not_exist', 'Không có view :view', 'front', 'vi'),
(206, 'front.view_not_exist', 'View not found :view', 'front', 'en'),
(207, 'search.placeholder', 'Nhập từ khóa', 'search', 'vi'),
(208, 'search.placeholder', 'Input keyword', 'search', 'en'),
(209, 'store.deny_help_1', 'Sorry, this domain does not exist on the system!', 'store', 'en'),
(210, 'store.deny_help_1', 'Xin lỗi, tên miền này không có trên hệ thống!', 'store', 'vi'),
(211, 'store.deny_help_2', 'Return to home page', 'store', 'en'),
(212, 'store.deny_help_2', 'Trở về trang chủ', 'store', 'vi'),
(213, 'store.address', 'Address', 'store', 'en'),
(214, 'store.address', 'Địa chỉ', 'store', 'vi'),
(215, 'store.phone', 'Phone', 'store', 'en'),
(216, 'store.phone', 'Số điện thoại', 'store', 'vi'),
(217, 'store.hotline', 'Hotline', 'store', 'en'),
(218, 'store.hotline', 'Số điện thoại', 'store', 'vi'),
(219, 'store.email', 'Email', 'store', 'vi'),
(220, 'store.email', 'Email', 'store', 'en'),
(221, 'store.title', 'Tên cửa hàng', 'store', 'vi'),
(222, 'store.title', 'Store title', 'store', 'en'),
(223, 'store.keyword', 'Từ khóa', 'store', 'vi'),
(224, 'store.keyword', 'Keyword', 'store', 'en'),
(225, 'store.description', 'Mô tả', 'store', 'vi'),
(226, 'store.description', 'Description', 'store', 'en'),
(227, 'store.language', 'Ngôn ngữ', 'store', 'vi'),
(228, 'store.language', 'Language', 'store', 'en'),
(229, 'store.currency', 'Tiền tệ', 'store', 'vi'),
(230, 'store.currency', 'Currency', 'store', 'en'),
(231, 'store.timezone', 'Múi giờ', 'store', 'vi'),
(232, 'store.timezone', 'Timezone', 'store', 'en'),
(233, 'store.admin.template', 'Giao diện', 'store.admin', 'vi'),
(234, 'store.admin.template', 'Template', 'store.admin', 'en'),
(235, 'store.admin.domain', 'Tên miền', 'store.admin', 'vi'),
(236, 'store.admin.domain', 'Domain', 'store.admin', 'en'),
(237, 'store.admin.domain_help', 'Ví dụ: https://abc.com', 'store.admin', 'vi'),
(238, 'store.admin.domain_help', 'For example: https://abc.com', 'store.admin', 'en'),
(239, 'store.admin.domain_invalid', 'Tên miền không hợp lệ', 'store.admin', 'vi'),
(240, 'store.admin.domain_invalid', 'Domain invalid', 'store.admin', 'en'),
(241, 'store.warehouse', 'Nhà kho', 'store', 'vi'),
(242, 'store.warehouse', 'Warehouse', 'store', 'en'),
(243, 'store.office', 'Văn phòng', 'store', 'vi'),
(244, 'store.office', 'Office', 'store', 'en'),
(245, 'store.time_active', 'Thời gian làm việc', 'store', 'vi'),
(246, 'store.time_active', 'Time active', 'store', 'en'),
(247, 'store.long_phone', 'Số điện thoại', 'store', 'vi'),
(248, 'store.long_phone', 'Full phone', 'store', 'en'),
(249, 'store.logo', 'Logo', 'store', 'vi'),
(250, 'store.logo', 'Logo', 'store', 'en'),
(251, 'store.icon', 'Icon', 'store', 'vi'),
(252, 'store.icon', 'Icon', 'store', 'en'),
(253, 'store.maintenance', 'Bảo trì', 'store', 'vi'),
(254, 'store.maintenance', 'Maintenance', 'store', 'en'),
(255, 'store.admin.code', 'Store code', 'store.admin', 'en'),
(256, 'store.admin.code', 'Mã cửa hàng', 'store.admin', 'vi'),
(257, 'store.admin.css', 'Edit CSS', 'store.admin', 'en'),
(258, 'store.admin.css', 'Chỉnh sửa CSS', 'store.admin', 'vi'),
(259, 'store.admin.title', 'Thông tin cửa hàng', 'store.admin', 'vi'),
(260, 'store.admin.config_store', 'Cấu hình cửa hàng #:id', 'store.admin', 'vi'),
(261, 'store.admin.config_store_detail', 'Cấu hình cửa hàng', 'store.admin', 'vi'),
(262, 'store.admin.list', 'Danh sách cửa hàng', 'store.admin', 'vi'),
(263, 'store.admin.field', 'Các trường', 'store.admin', 'vi'),
(264, 'store.admin.value', 'Giá trị', 'store.admin', 'vi'),
(265, 'store.admin.config_mode', 'Cấu hình mode', 'store.admin', 'vi'),
(266, 'store.admin.config_display', 'Cấu hình hiển thị', 'store.admin', 'vi'),
(267, 'store.admin.config_customize', 'Cấu hình tùy chỉnh', 'store.admin', 'vi'),
(268, 'store.admin.status', 'Status', 'store.admin', 'vi'),
(269, 'store.admin.action', 'Hành động', 'store.admin', 'vi'),
(270, 'store.admin.add_new', 'Thêm mới', 'store.admin', 'vi'),
(271, 'store.admin.sort', 'Sắp xếp', 'store.admin', 'vi'),
(272, 'store.admin.search', 'Tìm kiếm', 'store.admin', 'vi'),
(273, 'store.admin.add_new_title', 'Tạo cửa hàng', 'store.admin', 'vi'),
(274, 'store.admin.add_new_des', 'Tạo mới một cửa hàng', 'store.admin', 'vi'),
(275, 'store.admin.config_info', 'Thông tin', 'store.admin', 'vi'),
(276, 'store.admin.config_product', 'Sản phẩm', 'store.admin', 'vi'),
(277, 'store.admin.config_customer', 'Khách hàng', 'store.admin', 'vi'),
(278, 'store.admin.config_email', 'Email', 'store.admin', 'vi'),
(279, 'store.admin.config_url', 'URL', 'store.admin', 'vi'),
(280, 'store.admin.config_api', 'API', 'store.admin', 'vi'),
(281, 'store.admin.config_order', 'Đơn hàng', 'store.admin', 'vi'),
(282, 'store.admin.config_other', 'Khác', 'store.admin', 'vi'),
(283, 'store.admin.switch_store', 'Chuyển đổi cửa hàng', 'store.admin', 'vi'),
(284, 'store.admin.config_admin_other', 'Cấu hình admin', 'store.admin', 'vi'),
(285, 'store.admin.active_strict', 'Kích hoạt chế độ kiểm tra tên miền', 'store.admin', 'vi'),
(286, 'store.admin.active_domain', 'Kích hoạt tên miền', 'store.admin', 'vi'),
(287, 'store.admin.active_maintain', 'Kích hoạt chế độ bảo trì', 'store.admin', 'vi'),
(288, 'store.admin.domain_exist', 'Tên miền đã có rồi', 'store.admin', 'vi'),
(289, 'store.admin.code_exist', 'Mã code đã có rồi', 'store.admin', 'vi'),
(290, 'store.admin.value_cannot_change', 'Giá trị này không thể thay đổi', 'store.admin', 'vi'),
(291, 'store.admin.title', 'Store infomation', 'store.admin', 'en'),
(292, 'store.admin.config_store', 'Config store #:id', 'store.admin', 'en'),
(293, 'store.admin.config_store_detail', 'Config store', 'store.admin', 'en'),
(294, 'store.admin.list', 'Store list', 'store.admin', 'en'),
(295, 'store.admin.field', 'Field', 'store.admin', 'en'),
(296, 'store.admin.value', 'Value', 'store.admin', 'en'),
(297, 'store.admin.config_mode', 'Store mode', 'store.admin', 'en'),
(298, 'store.admin.config_display', 'Store display', 'store.admin', 'en'),
(299, 'store.admin.config_customize', 'Config customize', 'store.admin', 'en'),
(300, 'store.admin.status', 'Status', 'store.admin', 'en'),
(301, 'store.admin.action', 'Action', 'store.admin', 'en'),
(302, 'store.admin.sort', 'Sort', 'store.admin', 'en'),
(303, 'store.admin.search', 'Search', 'store.admin', 'en'),
(304, 'store.admin.add_new', 'Add new', 'store.admin', 'en'),
(305, 'store.admin.add_new_title', 'Add new store', 'store.admin', 'en'),
(306, 'store.admin.add_new_des', 'Create a new store', 'store.admin', 'en'),
(307, 'store.admin.config_info', 'Infomation', 'store.admin', 'en'),
(308, 'store.admin.config_order', 'Order', 'store.admin', 'en'),
(309, 'store.admin.config_product', 'Product', 'store.admin', 'en'),
(310, 'store.admin.config_customer', 'Customer', 'store.admin', 'en'),
(311, 'store.admin.config_email', 'Email', 'store.admin', 'en'),
(312, 'store.admin.config_url', 'URL', 'store.admin', 'en'),
(313, 'store.admin.config_api', 'API', 'store.admin', 'en'),
(314, 'store.admin.config_other', 'Other', 'store.admin', 'en'),
(315, 'store.admin.switch_store', 'Switch store', 'store.admin', 'en'),
(316, 'store.admin.config_admin_other', 'Config admin', 'store.admin', 'en'),
(317, 'store.admin.active_strict', 'Activate domain check mode', 'store.admin', 'en'),
(318, 'store.admin.active_domain', 'Activate the domain name', 'store.admin', 'en'),
(319, 'store.admin.active_maintain', 'Activate maintenance mode', 'store.admin', 'en'),
(320, 'store.admin.domain_exist', 'Domain exist already', 'store.admin', 'en'),
(321, 'store.admin.code_exist', 'Code exist already', 'store.admin', 'en'),
(322, 'store.admin.value_cannot_change', 'This value cannot be changed', 'store.admin', 'en'),
(323, 'store.display.product_top', 'Top product', 'store.admin', 'en'),
(324, 'store.display.product_top', 'Top sản phẩm', 'store.admin', 'vi'),
(325, 'store.display.list_product', 'List product', 'store.admin', 'en'),
(326, 'store.display.list_product', 'Danh sách sản phẩm', 'store.admin', 'vi'),
(327, 'store.display.relation_product', 'Relation product', 'store.admin', 'en'),
(328, 'store.display.relation_product', 'Sản phẩm liên quan', 'store.admin', 'vi'),
(329, 'store.display.viewed_product', 'Product viewed', 'store.admin', 'en'),
(330, 'store.display.viewed_product', 'Sản phẩm đã xem', 'store.admin', 'vi'),
(331, 'store.display.item_list', 'List item', 'store.admin', 'en'),
(332, 'store.display.item_list', 'Danh sách item', 'store.admin', 'vi'),
(333, 'store.display.item_top', 'Top item', 'store.admin', 'en'),
(334, 'store.display.item_top', 'Top item', 'store.admin', 'vi'),
(335, 'cart.checkout', 'Checkout', 'cart', 'en'),
(336, 'cart.checkout', 'Thanh toán', 'cart', 'vi'),
(337, 'cart.back_to_cart', 'Back to cart', 'cart', 'en'),
(338, 'cart.back_to_cart', 'Trở lại giỏ hàng', 'cart', 'vi'),
(339, 'cart.confirm', 'Confirm', 'cart', 'en'),
(340, 'cart.confirm', 'Xác nhận', 'cart', 'vi'),
(341, 'cart.cart_title', 'Shopping cart', 'cart', 'en'),
(342, 'cart.cart_title', 'Trang giỏ hàng', 'cart', 'vi'),
(343, 'cart.page_title', 'Shopping cart', 'cart', 'en'),
(344, 'cart.page_title', 'Trang giỏ hàng', 'cart', 'vi'),
(345, 'cart.back_to_shop', 'Back to shop', 'cart', 'en'),
(346, 'cart.back_to_shop', 'Trở về của hàng', 'cart', 'vi'),
(347, 'cart.remove_all', 'Remove cart', 'cart', 'en'),
(348, 'cart.remove_all', 'Xóa giỏ hàng', 'cart', 'vi'),
(349, 'cart.minimum_value', 'Minimum :value items', 'cart', 'en'),
(350, 'cart.minimum_value', 'Tối thiểu :value item', 'cart', 'vi'),
(351, 'cart.note', 'Note', 'cart', 'en'),
(352, 'cart.note', 'Ghi chú', 'cart', 'vi'),
(353, 'cart.coupon', 'Coupon', 'cart', 'en'),
(354, 'cart.coupon', 'Mã giảm giá', 'cart', 'vi'),
(355, 'cart.remove_coupon', 'Remove coupon', 'cart', 'en'),
(356, 'cart.remove_coupon', 'Xóa mã giảm giá', 'cart', 'vi'),
(357, 'cart.coupon_empty', 'Coupon empty', 'cart', 'en'),
(358, 'cart.coupon_empty', 'Không có mã giảm giá', 'cart', 'vi'),
(359, 'cart.apply', 'Apply', 'cart', 'en'),
(360, 'cart.apply', 'Áp dụng', 'cart', 'vi'),
(361, 'cart.change_address', 'Change address', 'cart', 'en'),
(362, 'cart.change_address', 'Thay đổi địa chỉ', 'cart', 'vi'),
(363, 'cart.add_new_address', 'Add new address', 'cart', 'en'),
(364, 'cart.add_new_address', 'Thêm địa chỉ mới', 'cart', 'vi'),
(365, 'cart.page_wishlist_title', 'Page wishlist', 'cart', 'en'),
(366, 'cart.page_wishlist_title', 'Trang sản phẩm yêu thich', 'cart', 'vi'),
(367, 'cart.page_compare_title', 'Page compare', 'cart', 'en'),
(368, 'cart.page_compare_title', 'Trang so sánh sản phẩm', 'cart', 'vi'),
(369, 'cart.shipping_address', 'Shipping address', 'cart', 'en'),
(370, 'cart.shipping_address', 'Địa chỉ giao hàng', 'cart', 'vi'),
(371, 'cart.payment_address', 'Payment address', 'cart', 'en'),
(372, 'cart.payment_address', 'Địa chỉ thanh toán', 'cart', 'vi'),
(373, 'cart.payment_method', 'Phương thức thanh toán', 'cart', 'vi'),
(374, 'cart.payment_method', 'Payment method', 'cart', 'en'),
(375, 'cart.shipping_method', 'Phương thức vận chuyển', 'cart', 'vi'),
(376, 'cart.shipping_method', 'Shipping method', 'cart', 'en'),
(377, 'cart.country', 'Country', 'cart', 'en'),
(378, 'cart.country', 'Quốc gia', 'cart', 'vi'),
(379, 'cart.company', 'Công ty', 'cart', 'vi'),
(380, 'cart.company', 'Company', 'cart', 'en'),
(381, 'cart.address3', 'Địa chỉ nhà', 'cart', 'vi'),
(382, 'cart.address3', 'Address 3', 'cart', 'en'),
(383, 'cart.address2', 'Quận/Huyện', 'cart', 'vi'),
(384, 'cart.address2', 'Address 2', 'cart', 'en'),
(385, 'cart.address1', 'Tỉnh/Thành', 'cart', 'vi'),
(386, 'cart.address1', 'Address 1', 'cart', 'en'),
(387, 'cart.postcode', 'Mã bưu điện', 'cart', 'vi'),
(388, 'cart.postcode', 'Post code', 'cart', 'en'),
(389, 'cart.phone', 'Phone', 'cart', 'en'),
(390, 'cart.phone', 'Điện thoại', 'cart', 'vi'),
(391, 'cart.last_name_kana', 'Họ kana', 'cart', 'vi'),
(392, 'cart.last_name_kana', 'Last name kana', 'cart', 'en'),
(393, 'cart.first_name_kana', 'First name kana', 'cart', 'en'),
(394, 'cart.first_name_kana', 'Tên Kana', 'cart', 'vi'),
(395, 'cart.full_name', 'Full name', 'cart', 'en'),
(396, 'cart.full_name', 'Tên đầy đủ', 'cart', 'vi'),
(397, 'cart.name', 'Name', 'cart', 'en'),
(398, 'cart.name', 'Tên', 'cart', 'vi'),
(399, 'cart.midle_name', 'Tên đệm', 'cart', 'vi'),
(400, 'cart.midle_name', 'Midle name', 'cart', 'en'),
(401, 'cart.last_name', 'Họ', 'cart', 'vi'),
(402, 'cart.last_name', 'Last name', 'cart', 'en'),
(403, 'cart.first_name', 'Tên', 'cart', 'vi'),
(404, 'cart.first_name', 'First name', 'cart', 'en'),
(405, 'cart.email', 'Email', 'cart', 'vi'),
(406, 'cart.email', 'Email', 'cart', 'en'),
(407, 'cart.sex', 'Giới tính', 'cart', 'vi'),
(408, 'cart.sex', 'Sex', 'cart', 'en'),
(409, 'cart.birthday', 'Ngày sinh', 'cart', 'vi'),
(410, 'cart.birthday', 'Birthday', 'cart', 'en'),
(411, 'cart.validation.shippingMethod_required', 'Shipping method required', 'cart', 'en'),
(412, 'cart.validation.shippingMethod_required', 'Giao thức giao hàng là bắt buộc', 'cart', 'vi'),
(413, 'cart.validation.paymentMethod_required', 'Payment method required', 'cart', 'en'),
(414, 'cart.validation.paymentMethod_required', 'Phương thức thanh toán là bắt buộc', 'cart', 'vi'),
(415, 'cart.add_to_cart_success', 'Thêm vào :instance thành công', 'cart', 'vi'),
(416, 'cart.add_to_cart_success', 'Add to :instance success', 'cart', 'en'),
(417, 'cart.item_exist_in_cart', 'This item is already in stock in the :instance', 'cart', 'en'),
(418, 'cart.item_exist_in_cart', 'Item này đã có trong :instance rồi', 'cart', 'vi'),
(419, 'cart.item_over_qty', 'The number of :sku must not exceed :qty', 'cart', 'en'),
(420, 'cart.item_over_qty', 'Số lượng của :sku không được vượt quá :qty', 'cart', 'vi'),
(421, 'cart.have_error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại.', 'cart', 'vi'),
(422, 'cart.have_error', 'Have an error. Please check again.', 'cart', 'en'),
(423, 'cart.cart_store_id_notfound', 'Không tìm thấy ID cửa hàng.', 'cart', 'vi'),
(424, 'cart.cart_store_id_notfound', 'Store ID not found', 'cart', 'en'),
(425, 'cart.cart_empty', 'Giỏ hàng rỗng.', 'cart', 'vi'),
(426, 'cart.cart_empty', 'The shopping cart is empty', 'cart', 'en'),
(427, 'cart.cart_store_empty', 'Giỏ hàng trong shop rỗng.', 'cart', 'vi'),
(428, 'cart.cart_store_empty', 'The shopping cart in the shop is empty', 'cart', 'en'),
(429, 'checkout.title', 'Checkout', 'checkout', 'en'),
(430, 'checkout.title', 'Xác nhận thanh toán', 'checkout', 'vi'),
(431, 'checkout.order_success_msg', 'Thank you for your purchase!', 'checkout', 'en'),
(432, 'checkout.order_success_msg', 'Cảm ơn vì đơn hàng của bạn!', 'checkout', 'vi'),
(433, 'checkout.order_success_order_info', 'Your order #:order_id', 'checkout', 'en'),
(434, 'checkout.order_success_order_info', 'Đơn hàng của bạn là #:order_id', 'checkout', 'vi'),
(435, 'checkout.page_title', 'Checkout page', 'checkout', 'en'),
(436, 'checkout.page_title', 'Xác nhận thanh toán', 'checkout', 'vi'),
(437, 'checkout.success_title', 'Order success', 'checkout', 'en'),
(438, 'checkout.success_title', 'Đặt hàng thành công', 'checkout', 'vi'),
(439, 'product.name', 'Name', 'product', 'en'),
(440, 'product.name', 'Tên', 'product', 'vi'),
(441, 'product.keyword', 'Keyword ', 'product', 'en'),
(442, 'product.keyword', 'Từ khóa', 'product', 'vi'),
(443, 'product.content', 'Main content', 'product', 'en'),
(444, 'product.content', 'Nội dung chính', 'product', 'vi'),
(445, 'product.sku', 'SKU code', 'product', 'en'),
(446, 'product.sku', 'Mã SKU', 'product', 'vi'),
(447, 'product.stock', 'Stock', 'product', 'en'),
(448, 'product.stock', 'Số lượng trong kho', 'product', 'vi'),
(449, 'product.cost', 'Price cost', 'product', 'en'),
(450, 'product.cost', 'Giá cost', 'product', 'vi'),
(451, 'product.price', 'Price', 'product', 'en'),
(452, 'product.price', 'Giá', 'product', 'vi'),
(453, 'product.image', 'Image', 'product', 'en'),
(454, 'product.image', 'Hình ảnh', 'product', 'vi'),
(455, 'product.view', 'Viewed', 'product', 'en'),
(456, 'product.view', 'Lượt xem', 'product', 'vi'),
(457, 'product.kind', 'Kind', 'product', 'en'),
(458, 'product.kind', 'Kiểu', 'product', 'vi'),
(459, 'product.sold', 'Sold', 'product', 'en'),
(460, 'product.sold', 'Đã bán', 'product', 'vi'),
(461, 'product.minimum', 'Minimum', 'product', 'en'),
(462, 'product.minimum', 'Tối thiểu', 'product', 'vi'),
(463, 'product.minimum_help', 'Minimum quantity to order', 'product', 'en'),
(464, 'product.minimum_help', 'Số lượng tối thiểu đề đặt hàng', 'product', 'vi'),
(465, 'product.width', 'Width', 'product', 'en'),
(466, 'product.width', 'Chiều rộng', 'product', 'vi'),
(467, 'product.status', 'Status', 'product', 'en'),
(468, 'product.status', 'Trạng thái', 'product', 'vi'),
(469, 'product.quantity', 'Quantity', 'product', 'en'),
(470, 'product.quantity', 'Số lượng', 'product', 'vi'),
(471, 'product.weight', 'Weight', 'product', 'en'),
(472, 'product.weight', 'Khối lượng', 'product', 'vi'),
(473, 'product.length', 'Length', 'product', 'en'),
(474, 'product.length', 'Kích thước', 'product', 'vi'),
(475, 'product.height', 'Height', 'product', 'en'),
(476, 'product.height', 'Chiều cao', 'product', 'vi'),
(477, 'product.property', 'Property', 'product', 'en'),
(478, 'product.property', 'Đặc tính', 'product', 'vi'),
(479, 'product.download_path', 'Url or path to file', 'product', 'en'),
(480, 'product.download_path', 'Liên kết hoặc đường dẫn tới tập tin', 'product', 'vi'),
(481, 'product.attribute', 'Attribute', 'product', 'en'),
(482, 'product.attribute', 'Thuộc tính', 'product', 'vi'),
(483, 'product.tax', 'Tax', 'product', 'en'),
(484, 'product.tax', 'Thuế', 'product', 'vi'),
(485, 'product.price_group', 'Click view price', 'product', 'en'),
(486, 'product.price_group', 'Bấm xem giá', 'product', 'vi'),
(487, 'product.price_group_chose', 'Click choose product', 'product', 'en'),
(488, 'product.price_group_chose', 'Bấm chọn sản phẩm', 'product', 'vi'),
(489, 'product.subtotal', 'Subtotal', 'product', 'en'),
(490, 'product.subtotal', 'Giá sản phẩm', 'product', 'vi'),
(491, 'product.sub_total', 'Subtotal', 'product', 'en'),
(492, 'product.sub_total', 'Giá sản phẩm', 'product', 'vi'),
(493, 'product.total_price', 'Total price', 'product', 'en'),
(494, 'product.total_price', 'Tổng tiền', 'product', 'vi'),
(495, 'product.stock_status', 'Stock status', 'product', 'en'),
(496, 'product.stock_status', 'Trạng thái tồn', 'product', 'vi'),
(497, 'product.out_stock', 'Out of stock', 'product', 'en'),
(498, 'product.out_stock', 'Hết hàng', 'product', 'vi'),
(499, 'product.in_stock', 'In stock', 'product', 'en'),
(500, 'product.in_stock', 'Còn hàng', 'product', 'vi'),
(501, 'product.date_available', 'Date available', 'product', 'en'),
(502, 'product.date_available', 'Ngày bán', 'product', 'vi'),
(503, 'product.category', 'Category', 'product', 'en'),
(504, 'product.category', 'Danh mục', 'product', 'vi'),
(505, 'product.category_store', 'Category store', 'product', 'en'),
(506, 'product.category_store', 'Danh mục riêng', 'product', 'vi'),
(507, 'product.brand', 'Brand', 'product', 'en'),
(508, 'product.brand', 'Nhãn hàng', 'product', 'vi'),
(509, 'product.supplier', 'Supplier', 'product', 'en'),
(510, 'product.supplier', 'Nhà cung cấp', 'product', 'vi'),
(511, 'product.kind_group', 'Group', 'product', 'en'),
(512, 'product.kind_group', 'Sản phẩm nhóm', 'product', 'vi'),
(513, 'product.kind_bundle', 'Bundle', 'product', 'en'),
(514, 'product.kind_bundle', 'Sản phẩm bộ', 'product', 'vi'),
(515, 'product.kind_single', 'Single', 'product', 'en'),
(516, 'product.kind_single', 'Sản phẩm đơn', 'product', 'vi'),
(517, 'product.description', 'Description', 'product', 'en'),
(518, 'product.description', 'Mô tả', 'product', 'vi'),
(519, 'product.product_detail', 'Product detail', 'product', 'en'),
(520, 'product.product_detail', 'Chi tiết sản phẩm', 'product', 'vi'),
(521, 'product.dont_allow_sale', 'Product :sku dont allow for sale', 'product', 'en'),
(522, 'product.dont_allow_sale', 'Sản phẩm :sku không bán', 'product', 'vi'),
(523, 'product.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en'),
(524, 'product.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi'),
(525, 'product.sku_unique', 'SKU already exists', 'product', 'en'),
(526, 'product.sku_unique', 'SKU đã có rồi', 'product', 'vi'),
(527, 'product.product_specifications', 'Additional infomation', 'product', 'en'),
(528, 'product.product_specifications', 'Thông tin bổ sung', 'product', 'vi'),
(529, 'product.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'en'),
(530, 'product.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'vi'),
(531, 'product.sku_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en'),
(532, 'product.sku_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi'),
(533, 'product.price_promotion', 'Price promotion', 'product', 'en'),
(534, 'product.price_promotion', 'Giá khuyến mãi', 'product', 'vi'),
(535, 'product.price_promotion_start', 'Start date', 'product', 'en'),
(536, 'product.price_promotion_start', 'Ngày bắt đầu', 'product', 'vi'),
(537, 'product.price_promotion_end', 'End date', 'product', 'en'),
(538, 'product.price_promotion_end', 'Ngày kết thúc', 'product', 'vi'),
(539, 'product.edit_product', 'Edit product', 'product', 'en'),
(540, 'product.edit_product', 'Chỉnh sửa sản phẩm', 'product', 'vi'),
(541, 'product.admin.title', 'Quản lý sản phẩm', 'product.admin', 'vi'),
(542, 'product.admin.create_success', 'Tạo item thành công!', 'product.admin', 'vi'),
(543, 'product.admin.edit_success', 'chỉnh sửa item thành công!', 'product.admin', 'vi'),
(544, 'product.admin.list', 'Danh sách sản phẩm', 'product.admin', 'vi'),
(545, 'product.admin.action', 'Hành động', 'product.admin', 'vi'),
(546, 'product.admin.delete', 'Xóa', 'product.admin', 'vi'),
(547, 'product.admin.edit', 'Sửa', 'product.admin', 'vi'),
(548, 'product.admin.add_new', 'Thêm mới', 'product.admin', 'vi'),
(549, 'product.admin.add_new_title', 'Tạo sản phẩm', 'product.admin', 'vi'),
(550, 'product.admin.add_new_title_build', 'Tạo sản phẩm bộ', 'product.admin', 'vi'),
(551, 'product.admin.add_new_title_group', 'Tạo sản phẩm nhóm', 'product.admin', 'vi'),
(552, 'product.admin.add_new_des', 'Tạo mới một sản phẩm', 'product.admin', 'vi'),
(553, 'product.admin.export', 'Xuất', 'product.admin', 'vi'),
(554, 'product.admin.refresh', 'Làm mới', 'product.admin', 'vi'),
(555, 'product.admin.select_kind', 'Chọn loại sản phẩm', 'product.admin', 'vi'),
(556, 'product.admin.select_supplier', 'Chọn nhà cung cấp', 'product.admin', 'vi'),
(557, 'product.admin.sort', 'Thứ tự', 'product.admin', 'vi'),
(558, 'product.admin.select_category', 'Chọn danh mục', 'product.admin', 'vi'),
(559, 'product.admin.select_store', 'Chọn cửa hàng', 'product.admin', 'vi'),
(560, 'product.admin.select_product_in_group', 'Chọn sản phẩm trong nhóm', 'product.admin', 'vi'),
(561, 'product.admin.select_product_in_build', 'Chọn sản phẩm trong bộ', 'product.admin', 'vi'),
(562, 'product.admin.add_product', 'Thêm sản phẩm', 'product.admin', 'vi'),
(563, 'product.admin.add_attribute', 'Thêm thuộc tính', 'product.admin', 'vi'),
(564, 'product.admin.add_attribute_place', 'Nhập một thuộc tính', 'product.admin', 'vi'),
(565, 'product.admin.add_sub_image', 'Thêm ảnh', 'product.admin', 'vi'),
(566, 'product.admin.add_product_promotion', 'Thêm giá khuyến mãi', 'product.admin', 'vi'),
(567, 'product.admin.choose_image', 'Chọn hình', 'product.admin', 'vi'),
(568, 'product.admin.add_price_place', 'Thêm tiền', 'product.admin', 'vi'),
(569, 'product.admin.setting_info', 'Thiết lập sản phẩm', 'product.admin', 'vi'),
(570, 'product.admin.config_info', 'Cấu hình thông tin', 'product.admin', 'vi'),
(571, 'product.admin.title', 'Product manager', 'product.admin', 'en'),
(572, 'product.admin.create_success', 'Create new item success!', 'product.admin', 'en'),
(573, 'product.admin.edit_success', 'Edit item success!', 'product.admin', 'en'),
(574, 'product.admin.list', 'Product list', 'product.admin', 'en'),
(575, 'product.admin.action', 'Action', 'product.admin', 'en'),
(576, 'product.admin.delete', 'Delete', 'product.admin', 'en'),
(577, 'product.admin.edit', 'Edit', 'product.admin', 'en'),
(578, 'product.admin.add_new', 'Add new', 'product.admin', 'en'),
(579, 'product.admin.add_new_title', 'Add new product', 'product.admin', 'en'),
(580, 'product.admin.add_new_title_build', 'Add new product build', 'product.admin', 'en'),
(581, 'product.admin.add_new_title_group', 'Add new product group', 'product.admin', 'en'),
(582, 'product.admin.add_new_des', 'Create a new product', 'product.admin', 'en'),
(583, 'product.admin.export', 'Export', 'product.admin', 'en'),
(584, 'product.admin.refresh', 'Refresh', 'product.admin', 'en'),
(585, 'product.admin.select_kind', 'Select product kind', 'product.admin', 'en'),
(586, 'product.admin.select_supplier', 'Select supplier', 'product.admin', 'en'),
(587, 'product.admin.result_item', 'Showing <b>:item_from</b> to <b>:item_to</b> of <b>:total</b> items</b>', 'product.admin', 'en'),
(588, 'product.admin.sort', 'Sort', 'product.admin', 'en'),
(589, 'product.admin.select_category', 'Select category', 'product.admin', 'en'),
(590, 'product.admin.select_store', 'Select store', 'product.admin', 'en'),
(591, 'product.admin.select_product_in_group', 'Select products in group', 'product.admin', 'en'),
(592, 'product.admin.select_product_in_build', 'Select products build', 'product.admin', 'en'),
(593, 'product.admin.select_weight', 'Select weight class', 'product.admin', 'en'),
(594, 'product.admin.select_weight', 'Chọn đơn vị khối lượng', 'product.admin', 'vi'),
(595, 'product.admin.select_length', 'Select length class', 'product.admin', 'en'),
(596, 'product.admin.select_length', 'Chọn đơn vị kích thước', 'product.admin', 'vi'),
(597, 'product.admin.add_product', 'Add product', 'product.admin', 'en'),
(598, 'product.admin.add_attribute', 'Add attribute', 'product.admin', 'en'),
(599, 'product.admin.add_attribute_place', 'Add an attribute value', 'product.admin', 'en'),
(600, 'product.admin.add_sub_image', 'Add more images', 'product.admin', 'en'),
(601, 'product.admin.add_product_promotion', 'Add promotion price', 'product.admin', 'en'),
(602, 'product.admin.choose_image', 'Choose', 'product.admin', 'en'),
(603, 'product.admin.add_price_place', 'Add price', 'product.admin', 'en'),
(604, 'product.admin.setting_info', 'Setting product', 'product.admin', 'en'),
(605, 'product.admin.config_info', 'Config info product', 'product.admin', 'en'),
(606, 'product.admin.search_place', 'Search Name, SKU', 'product.admin', 'en'),
(607, 'product.admin.search_place', 'Tìm tên và SKU', 'product.admin', 'vi'),
(608, 'product.admin.length_class', 'Length class', 'product.admin', 'en'),
(609, 'product.admin.length_class', 'Đơn vị kích thước', 'product.admin', 'vi'),
(610, 'product.admin.weight_class', 'Weight class', 'product.admin', 'en'),
(611, 'product.admin.weight_class', 'Đơn vị khối lượng', 'product.admin', 'vi'),
(612, 'product.admin.cant_remove_child', 'Please delete product parent before remove this product', 'product.admin', 'en'),
(613, 'product.admin.cant_remove_child', 'Xóa các sản phẩm cha trước khi xóa sản phẩm này', 'product.admin', 'vi'),
(614, 'product.config_manager.title', 'Config product', 'product.admin', 'en'),
(615, 'product.config_manager.field', 'Field config', 'product.admin', 'en'),
(616, 'product.config_manager.value', 'Value', 'product.admin', 'en'),
(617, 'product.config_manager.brand', 'Use BRAND', 'product.admin', 'en'),
(618, 'product.config_manager.supplier', 'Use SUPPLIER', 'product.admin', 'en'),
(619, 'product.config_manager.price', 'Use PRICE', 'product.admin', 'en'),
(620, 'product.config_manager.stock', 'Use STOCK', 'product.admin', 'en'),
(621, 'product.config_manager.cost', 'Use COST PRICE', 'product.admin', 'en'),
(622, 'product.config_manager.type', 'Use TYPE (new, hot,...)', 'product.admin', 'en'),
(623, 'product.config_manager.kind', 'Use STRUCTURE TYPE (single, group, bundle)', 'product.admin', 'en'),
(624, 'product.config_manager.property', 'Use Product Property: download, property, physical', 'product.admin', 'en'),
(625, 'product.config_manager.attribute', 'Use ATTRIBUTE (color, size,...)', 'product.admin', 'en'),
(626, 'product.config_manager.promotion', 'Use PROMOTION PRICE', 'product.admin', 'en'),
(627, 'product.config_manager.available', 'Use Time to start selling', 'product.admin', 'en'),
(628, 'product.config_manager.tax', 'Tax configuration', 'product.admin', 'en'),
(629, 'product.config_manager.product_display_price_include_tax', 'Display price include tax', 'product.admin', 'en'),
(630, 'product.config_manager.weight', 'Use Weight', 'product.admin', 'en'),
(631, 'product.config_manager.length', 'Use Length', 'product.admin', 'en'),
(632, 'product.config_manager.required', 'Required', 'product.admin', 'en'),
(633, 'product.config_manager.title', ' Cấu hình sản phẩm', 'product.admin', 'vi'),
(634, 'product.config_manager.field', 'Trường cấu hình', 'product.admin', 'vi'),
(635, 'product.config_manager.value', 'Giá trị', 'product.admin', 'vi'),
(636, 'product.config_manager.brand', 'Sử dụng NHÃN HIỆU', 'product.admin', 'vi'),
(637, 'product.config_manager.supplier', 'Sử dụng NHÀ CUNG CẤP', 'product.admin', 'vi'),
(638, 'product.config_manager.price', 'Sử dụng GIÁ', 'product.admin', 'vi'),
(639, 'product.config_manager.cost', 'Sử dụng GIÁ GỐC', 'product.admin', 'vi'),
(640, 'product.config_manager.stock', 'Sử dụng SỐ LƯỢNG', 'product.admin', 'vi'),
(641, 'product.config_manager.type', 'Sử dụng PHÂN LOẠI TÌNH TRẠNG(mới, hot,...)', 'product.admin', 'vi'),
(642, 'product.config_manager.kind', 'Sử dụng PHÂN LOẠI THEO CẤU TRÚC (sản phẩm đơn, nhóm, bộ)', 'product.admin', 'vi'),
(643, 'product.config_manager.property', 'Sử dụng PHÂN LOẠI ĐẶC TÍNH: download, vật lý, dịch vụ,..', 'product.admin', 'vi'),
(644, 'product.config_manager.attribute', 'Sử dụng THUỘC TÍNH (màu sắc, kích thước,...)', 'product.admin', 'vi'),
(645, 'product.config_manager.promotion', 'Sử dụng GIÁ KHUYẾN MÃI', 'product.admin', 'vi'),
(646, 'product.config_manager.available', 'Sử dụng THỜI GIAN MỞ BÁN', 'product.admin', 'vi'),
(647, 'product.config_manager.tax', 'Cấu hình thuế', 'product.admin', 'vi'),
(648, 'product.config_manager.product_display_price_include_tax', 'Hiển thị giá bao gồm thuế', 'product.admin', 'vi'),
(649, 'product.config_manager.weight', 'Sử dụng Khối lượng', 'product.admin', 'vi'),
(650, 'product.config_manager.length', 'Sử dụng Kích thước', 'product.admin', 'vi'),
(651, 'product.config_manager.required', 'Bắt buộc', 'product.admin', 'vi'),
(652, 'product.config_manager.show_date_available', 'Hiện thời gian bán hàng', 'product.admin', 'vi'),
(653, 'product.config_manager.show_date_available', 'Display date available', 'product.admin', 'en'),
(654, 'product.config_manager.product_display_out_of_stock', 'Hiện sản phẩm hết hàng', 'product.admin', 'vi'),
(655, 'product.config_manager.product_display_out_of_stock', 'Display product out of stock', 'product.admin', 'en'),
(656, 'customer.my_account', 'My page', 'customer', 'en'),
(657, 'customer.my_account', 'Trang cá nhân', 'customer', 'vi'),
(658, 'customer.password', 'Password', 'customer', 'en'),
(659, 'customer.password', 'Mật khẩu', 'customer', 'vi'),
(660, 'customer.password_new', 'New password', 'customer', 'en'),
(661, 'customer.password_new', 'Mật khẩu mới', 'customer', 'vi'),
(662, 'customer.password_old', 'Old password', 'customer', 'en'),
(663, 'customer.password_old', 'Mật khẩu cũ', 'customer', 'vi'),
(664, 'customer.password_old_required', 'Old password required', 'customer', 'en'),
(665, 'customer.password_old_required', 'Mật khẩu cũ là bắt buộc', 'customer', 'vi'),
(666, 'customer.password_old_notcorrect', 'Old password incorrect', 'customer', 'en'),
(667, 'customer.password_old_notcorrect', 'Mật khẩu cũ chưa đúng', 'customer', 'vi'),
(668, 'customer.remember_me', 'Remember', 'customer', 'en'),
(669, 'customer.remember_me', 'Ghi nhớ', 'customer', 'vi'),
(670, 'customer.change_password', 'Change password', 'customer', 'en'),
(671, 'customer.change_password', 'Đổi mật khẩu', 'customer', 'vi'),
(672, 'customer.update_success', 'Update success', 'customer', 'en'),
(673, 'customer.update_success', 'Cập nhật thành công', 'customer', 'vi'),
(674, 'customer.update_infomation', 'Update infomation', 'customer', 'en'),
(675, 'customer.update_infomation', 'Cập nhật thông tin', 'customer', 'vi'),
(676, 'customer.change_infomation', 'Change infomation', 'customer', 'en'),
(677, 'customer.change_infomation', 'Thay đổi thông tin', 'customer', 'vi'),
(678, 'customer.order_history', 'Order history', 'customer', 'en'),
(679, 'customer.order_history', 'Lịch sử mua hàng', 'customer', 'vi'),
(680, 'customer.order_detail', 'Order detail', 'customer', 'en'),
(681, 'customer.order_detail', 'Chi tiết đơn hàng', 'customer', 'vi'),
(682, 'customer.address_list', 'Address list', 'customer', 'en'),
(683, 'customer.address_list', 'Danh sách địa chỉ', 'customer', 'vi'),
(684, 'customer.address_detail', 'Address detail', 'customer', 'en'),
(685, 'customer.address_detail', 'Danh sách địa chỉ', 'customer', 'vi'),
(686, 'customer.address_default', 'Address default', 'customer', 'en'),
(687, 'customer.address_default', 'Địa chỉ mặc định', 'customer', 'vi'),
(688, 'customer.address_set_default', 'Set address default', 'customer', 'en'),
(689, 'customer.address_set_default', 'Đặt địa chỉ mặc định', 'customer', 'vi'),
(690, 'customer.delete_address_success', 'Delete address success', 'customer', 'en'),
(691, 'customer.delete_address_success', 'Xóa địa chỉ thành công', 'customer', 'vi'),
(692, 'customer.verify_email.title_page', 'Email verification', 'customer', 'en'),
(693, 'customer.verify_email.title_page', 'Xác thực email', 'customer', 'vi'),
(694, 'customer.verify_email.link_invalid', 'Link invalid', 'customer', 'en'),
(695, 'customer.verify_email.link_invalid', 'Link không hợp lệ', 'customer', 'vi'),
(696, 'customer.verify_email.verify_success', 'Successful verification', 'customer', 'en'),
(697, 'customer.verify_email.verify_success', 'Xác thực thành công', 'customer', 'vi'),
(698, 'customer.verify_email.msg_sent', 'Verification link sent.', 'customer', 'en'),
(699, 'customer.verify_email.msg_sent', 'Đã gửi liên kết xác minh!', 'customer', 'vi'),
(700, 'customer.verify_email.msg_page_2', 'click here to request another.', 'customer', 'en'),
(701, 'customer.verify_email.msg_page_2', 'hãy nhấp vào đây để yêu cầu.', 'customer', 'vi'),
(702, 'customer.verify_email.msg_page_1', 'Before proceeding, please check your email for a verification link. If you did not receive the email,', 'customer', 'en'),
(703, 'customer.verify_email.msg_page_1', 'Trước khi tiếp tục, vui lòng kiểm tra email của bạn để biết liên kết xác minh. Nếu bạn không nhận được email,', 'customer', 'vi'),
(704, 'customer.verify_email.title_header', 'Successful verification', 'customer', 'en'),
(705, 'customer.verify_email.title_header', 'Xác thực thành công', 'customer', 'vi'),
(706, 'customer.password_forgot', 'Forgot password', 'customer', 'en'),
(707, 'customer.password_forgot', 'Quên mật khẩu', 'customer', 'vi'),
(708, 'customer.login_title', 'Login page', 'customer', 'en'),
(709, 'customer.login_title', 'Trang đăng nhập', 'customer', 'vi'),
(710, 'customer.register_success', 'Successful register', 'customer', 'en'),
(711, 'customer.register_success', 'Đăng ký thành công', 'customer', 'vi'),
(712, 'customer.signup', 'Signup', 'customer', 'en'),
(713, 'customer.signup', 'Đăng ký', 'customer', 'vi'),
(714, 'customer.title_register', 'Account register', 'customer', 'en'),
(715, 'customer.title_register', 'Đăng ký tài khoản', 'customer', 'vi'),
(716, 'customer.password_reset', 'Password reset', 'customer', 'en'),
(717, 'customer.password_reset', 'Reset mật khẩu', 'customer', 'vi'),
(718, 'customer.password_confirm', 'Password confirm', 'customer', 'en'),
(719, 'customer.password_confirm', 'Xác nhận mật khẩu', 'customer', 'vi'),
(720, 'customer.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'customer', 'en'),
(721, 'customer.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'customer', 'vi'),
(722, 'customer.country', 'Country', 'customer', 'en'),
(723, 'customer.country', 'Quốc gia', 'customer', 'vi'),
(724, 'customer.company', 'Công ty', 'customer', 'vi'),
(725, 'customer.company', 'Company', 'customer', 'en'),
(726, 'customer.address3', 'Địa chỉ nhà', 'customer', 'vi'),
(727, 'customer.address3', 'Address 3', 'customer', 'en'),
(728, 'customer.address2', 'Quận/Huyện', 'customer', 'vi'),
(729, 'customer.address2', 'Address 2', 'customer', 'en'),
(730, 'customer.address1', 'Tỉnh/Thành', 'customer', 'vi'),
(731, 'customer.address1', 'Address 1', 'customer', 'en'),
(732, 'customer.postcode', 'Mã bưu điện', 'customer', 'vi'),
(733, 'customer.postcode', 'Post code', 'customer', 'en'),
(734, 'customer.phone', 'Phone', 'customer', 'en'),
(735, 'customer.phone', 'Điện thoại', 'customer', 'vi'),
(736, 'customer.last_name_kana', 'Họ kana', 'customer', 'vi'),
(737, 'customer.last_name_kana', 'Last name kana', 'customer', 'en'),
(738, 'customer.first_name_kana', 'First name kana', 'customer', 'en'),
(739, 'customer.first_name_kana', 'Tên Kana', 'customer', 'vi'),
(740, 'customer.full_name', 'Full name', 'customer', 'en'),
(741, 'customer.full_name', 'Tên đầy đủ', 'customer', 'vi'),
(742, 'customer.name', 'Name', 'customer', 'en'),
(743, 'customer.name', 'Tên', 'customer', 'vi'),
(744, 'customer.midle_name', 'Tên đệm', 'customer', 'vi'),
(745, 'customer.midle_name', 'Midle name', 'customer', 'en'),
(746, 'customer.last_name', 'Họ', 'customer', 'vi'),
(747, 'customer.last_name', 'Last name', 'customer', 'en'),
(748, 'customer.first_name', 'Tên', 'customer', 'vi'),
(749, 'customer.first_name', 'First name', 'customer', 'en'),
(750, 'customer.email', 'Email', 'customer', 'vi'),
(751, 'customer.email', 'Email', 'customer', 'en'),
(752, 'customer.sex', 'Giới tính', 'customer', 'vi'),
(753, 'customer.sex', 'Sex', 'customer', 'en'),
(754, 'customer.sex_women', 'Women', 'customer', 'en'),
(755, 'customer.sex_women', 'Nữ', 'customer', 'vi'),
(756, 'customer.sex_other', 'Other', 'customer', 'en'),
(757, 'customer.sex_other', 'Khác', 'customer', 'vi'),
(758, 'customer.sex_men', 'Men', 'customer', 'en'),
(759, 'customer.sex_men', 'Nam', 'customer', 'vi'),
(760, 'customer.birthday', 'Ngày sinh', 'customer', 'vi'),
(761, 'customer.birthday', 'Birthday', 'customer', 'en'),
(762, 'customer.title_login', 'Login account', 'customer', 'en'),
(763, 'customer.title_login', 'Đăng nhập', 'customer', 'vi'),
(764, 'customer.my_profile', 'Tài khoản', 'customer', 'vi'),
(765, 'customer.my_profile', 'My profile', 'customer', 'en'),
(766, 'customer.status', 'Trạng thái', 'customer', 'vi'),
(767, 'customer.status', 'Status', 'customer', 'en'),
(768, 'customer.group', 'Nhóm', 'customer', 'en'),
(769, 'customer.group', 'Group', 'customer', 'vi'),
(770, 'customer.admin.add_new_title', 'Thêm mới khách hàng', 'customer.admin', 'vi'),
(771, 'customer.admin.add_new_title', 'Add new customer', 'customer.admin', 'en'),
(772, 'customer.admin.add_new_des', 'Thêm mới', 'customer.admin', 'vi');
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(773, 'customer.admin.add_new_des', 'Add new', 'customer.admin', 'en'),
(774, 'customer.admin.provider', 'Provider', 'customer.admin', 'vi'),
(775, 'customer.admin.provider', 'Provider', 'customer.admin', 'en'),
(776, 'customer.admin.field', 'Trường dữ liệu', 'customer.admin', 'vi'),
(777, 'customer.admin.field', 'Field data', 'customer.admin', 'en'),
(778, 'customer.admin.value', 'Giá trị', 'customer.admin', 'vi'),
(779, 'customer.admin.value', 'Value', 'customer.admin', 'en'),
(780, 'customer.admin.required', 'Bắt buộc', 'customer.admin', 'vi'),
(781, 'customer.admin.required', 'Required', 'customer.admin', 'en'),
(782, 'customer.admin.keep_password', 'Giữ mật khẩu', 'customer.admin', 'vi'),
(783, 'customer.admin.keep_password', 'Keep password', 'customer.admin', 'en'),
(784, 'customer.admin.list', 'Danh sách khách hàng', 'customer.admin', 'vi'),
(785, 'customer.admin.list', 'Customer list', 'customer.admin', 'en'),
(786, 'customer.config_manager.title', ' Config customer', 'customer.admin', 'en'),
(787, 'customer.config_manager.field', 'Field config', 'customer.admin', 'en'),
(788, 'customer.config_manager.value', 'Value', 'customer.admin', 'en'),
(789, 'customer.config_manager.lastname', 'Use last name', 'customer.admin', 'en'),
(790, 'customer.config_manager.name_kana', 'Use name KANA', 'customer.admin', 'en'),
(791, 'customer.config_manager.firstname_kana', 'Use first name KANA', 'customer.admin', 'en'),
(792, 'customer.config_manager.lastname_kana', 'Use last name KANA', 'customer.admin', 'en'),
(793, 'customer.config_manager.address1', 'Use ADDRESS 1', 'customer.admin', 'en'),
(794, 'customer.config_manager.address2', 'Use ADDRESS 2', 'customer.admin', 'en'),
(795, 'customer.config_manager.address3', 'Use ADDRESS 3', 'customer.admin', 'en'),
(796, 'customer.config_manager.company', 'Use COMPANY', 'customer.admin', 'en'),
(797, 'customer.config_manager.postcode', 'Use POSTCODE', 'customer.admin', 'en'),
(798, 'customer.config_manager.country', 'Use COUNTRY', 'customer.admin', 'en'),
(799, 'customer.config_manager.group', 'Use GROUP', 'customer.admin', 'en'),
(800, 'customer.config_manager.birthday', 'Use BIRTHDAY', 'customer.admin', 'en'),
(801, 'customer.config_manager.sex', 'Use SEX', 'customer.admin', 'en'),
(802, 'customer.config_manager.phone', 'Use PHONE', 'customer.admin', 'en'),
(803, 'customer.config_manager.reqired', 'Required', 'customer.admin', 'en'),
(804, 'customer.config_manager.title', ' Cấu hình khách hàng', 'customer.admin', 'vi'),
(805, 'customer.config_manager.lastname', 'Sử dụng HỌ', 'customer.admin', 'vi'),
(806, 'customer.config_manager.name_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi'),
(807, 'customer.config_manager.firstname_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi'),
(808, 'customer.config_manager.lasttname_kana', 'Sử dụng họ KANA', 'customer.admin', 'vi'),
(809, 'customer.config_manager.address1', 'Sử dụng Tỉnh/Thành', 'customer.admin', 'vi'),
(810, 'customer.config_manager.address2', 'Sử dụng Quận/Huyện', 'customer.admin', 'vi'),
(811, 'customer.config_manager.address3', 'Địa chỉ nhà', 'customer.admin', 'vi'),
(812, 'customer.config_manager.company', 'Sử dụng Công Ty', 'customer.admin', 'vi'),
(813, 'customer.config_manager.postcode', 'Sử dụng Mã bưu chính', 'customer.admin', 'vi'),
(814, 'customer.config_manager.country', 'Sử dụng Quốc Gia', 'customer.admin', 'vi'),
(815, 'customer.config_manager.group', 'Sử dụng Nhóm', 'customer.admin', 'vi'),
(816, 'customer.config_manager.birthday', 'Sử dụng NGÀY SINH', 'customer.admin', 'vi'),
(817, 'customer.config_manager.sex', 'Sử dụng GIỚI TÍNH', 'customer.admin', 'vi'),
(818, 'customer.config_manager.phone', 'Sử dụng SỐ ĐIỆN THOẠI', 'customer.admin', 'vi'),
(819, 'customer.config_manager.required', 'Bắt buộc', 'customer.admin', 'vi'),
(820, 'order.order_status', 'Trạng thái đơn hàng', 'order', 'vi'),
(821, 'order.order_status', 'Order status', 'order', 'en'),
(822, 'order.shipping_status', 'Trạng thái vận chuyển', 'order', 'vi'),
(823, 'order.shipping_status', 'Shipping status', 'order', 'en'),
(824, 'order.payment_status', 'Trạng thái thanh toán', 'order', 'vi'),
(825, 'order.payment_status', 'Payment status', 'order', 'en'),
(826, 'order.payment_method', 'Phương thức thanh toán', 'order', 'vi'),
(827, 'order.payment_method', 'Payment method', 'order', 'en'),
(828, 'order.shipping_method', 'Phương thức vận chuyển', 'order', 'vi'),
(829, 'order.shipping_method', 'Shipping method', 'order', 'en'),
(830, 'order.currency', 'Tiền tệ', 'order', 'vi'),
(831, 'order.currency', 'Currency', 'order', 'en'),
(832, 'order.exchange_rate', 'Tỉ giá', 'order', 'vi'),
(833, 'order.exchange_rate', 'Exchange rate', 'order', 'en'),
(834, 'order.balance', 'Còn lại', 'order', 'vi'),
(835, 'order.balance', 'Balance', 'order', 'en'),
(836, 'order.total', 'Tổng tiền', 'order', 'vi'),
(837, 'order.total', 'Total', 'order', 'en'),
(838, 'order.sub_total', 'Tiền hàng', 'order', 'vi'),
(839, 'order.sub_total', 'SubTotal', 'order', 'en'),
(840, 'order.subtotal', 'Tiền hàng', 'order', 'vi'),
(841, 'order.subtotal', 'SubTotal', 'order', 'en'),
(842, 'order.tax', 'Thuế', 'order', 'vi'),
(843, 'order.tax', 'Tax', 'order', 'en'),
(844, 'order.shipping', 'Vận chuyển', 'order', 'vi'),
(845, 'order.shipping', 'Shipping', 'order', 'en'),
(846, 'order.received', 'Đã nhận', 'order', 'vi'),
(847, 'order.received', 'Received', 'order', 'en'),
(848, 'order.discount', 'Giảm giá', 'order', 'vi'),
(849, 'order.discount', 'Discount', 'order', 'en'),
(850, 'order.totals.total', 'Tổng tiền', 'order', 'vi'),
(851, 'order.totals.total', 'Total', 'order', 'en'),
(852, 'order.totals.sub_total', 'Tiền hàng', 'order', 'vi'),
(853, 'order.totals.sub_total', 'SubTotal', 'order', 'en'),
(854, 'order.totals.tax', 'Thuế', 'order', 'vi'),
(855, 'order.totals.tax', 'Tax', 'order', 'en'),
(856, 'order.totals.discount', 'Giảm giá', 'order', 'vi'),
(857, 'order.totals.discount', 'Discount', 'order', 'en'),
(858, 'order.totals.shipping', 'Vận chuyển', 'order', 'vi'),
(859, 'order.totals.shipping', 'Shipping', 'order', 'en'),
(860, 'order.totals.received', 'Đã nhận', 'order', 'vi'),
(861, 'order.totals.received', 'Received', 'order', 'en'),
(862, 'order.detail', 'Chi tiết', 'order', 'vi'),
(863, 'order.detail', 'Order detail', 'order', 'en'),
(864, 'order.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'order', 'en'),
(865, 'order.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'order', 'vi'),
(866, 'order.country', 'Country', 'order', 'en'),
(867, 'order.country', 'Quốc gia', 'order', 'vi'),
(868, 'order.company', 'Công ty', 'order', 'vi'),
(869, 'order.company', 'Company', 'order', 'en'),
(870, 'order.address3', 'Địa chỉ nhà', 'order', 'vi'),
(871, 'order.address3', 'Address 3', 'order', 'en'),
(872, 'order.address2', 'Quận/Huyện', 'order', 'vi'),
(873, 'order.address2', 'Address 2', 'order', 'en'),
(874, 'order.address1', 'Tỉnh/Thành', 'order', 'vi'),
(875, 'order.address1', 'Address 1', 'order', 'en'),
(876, 'order.address', 'Địa chỉ', 'order', 'vi'),
(877, 'order.address', 'Address', 'order', 'en'),
(878, 'order.postcode', 'Mã bưu điện', 'order', 'vi'),
(879, 'order.postcode', 'Post code', 'order', 'en'),
(880, 'order.phone', 'Phone', 'order', 'en'),
(881, 'order.phone', 'Điện thoại', 'order', 'vi'),
(882, 'order.last_name_kana', 'Họ kana', 'order', 'vi'),
(883, 'order.last_name_kana', 'Last name kana', 'order', 'en'),
(884, 'order.first_name_kana', 'First name kana', 'order', 'en'),
(885, 'order.first_name_kana', 'Tên Kana', 'order', 'vi'),
(886, 'order.full_name', 'Full name', 'order', 'en'),
(887, 'order.full_name', 'Tên đầy đủ', 'order', 'vi'),
(888, 'order.name', 'Name', 'order', 'en'),
(889, 'order.name', 'Tên', 'order', 'vi'),
(890, 'order.midle_name', 'Tên đệm', 'order', 'vi'),
(891, 'order.midle_name', 'Midle name', 'order', 'en'),
(892, 'order.last_name', 'Họ', 'order', 'vi'),
(893, 'order.last_name', 'Last name', 'order', 'en'),
(894, 'order.first_name', 'Tên', 'order', 'vi'),
(895, 'order.first_name', 'First name', 'order', 'en'),
(896, 'order.email', 'Email', 'order', 'vi'),
(897, 'order.email', 'Email', 'order', 'en'),
(898, 'order.sex', 'Giới tính', 'order', 'vi'),
(899, 'order.sex', 'Sex', 'order', 'en'),
(900, 'order.sex_women', 'Women', 'order', 'en'),
(901, 'order.sex_women', 'Nữ', 'order', 'vi'),
(902, 'order.sex_other', 'Other', 'order', 'en'),
(903, 'order.sex_other', 'Khác', 'order', 'vi'),
(904, 'order.sex_men', 'Men', 'order', 'en'),
(905, 'order.sex_men', 'Nam', 'order', 'vi'),
(906, 'order.birthday', 'Ngày sinh', 'order', 'vi'),
(907, 'order.birthday', 'Birthday', 'order', 'en'),
(908, 'order.status', 'Trạng thái đơn hàng', 'order', 'vi'),
(909, 'order.status', 'Order status', 'order', 'en'),
(910, 'order.order_detail', 'Chi tiết đơn hàng', 'order', 'vi'),
(911, 'order.order_detail', 'Order detail', 'order', 'en'),
(912, 'order.note', 'Note', 'order', 'en'),
(913, 'order.note', 'Ghi chú', 'order', 'vi'),
(914, 'order.order_note', 'Note', 'order', 'en'),
(915, 'order.order_note', 'Ghi chú', 'order', 'vi'),
(916, 'order.domain', 'Domain', 'order', 'en'),
(917, 'order.domain', 'Tên miền', 'order', 'vi'),
(918, 'order.admin.order_history', 'Order history', 'order.admin', 'en'),
(919, 'order.admin.history_staff', 'Staff', 'order.admin', 'en'),
(920, 'order.admin.history_content', 'Content', 'order.admin', 'en'),
(921, 'order.admin.history_time', 'Time', 'order.admin', 'en'),
(922, 'order.admin.order_history', 'Lịch sử đơn hàng', 'order.admin', 'vi'),
(923, 'order.admin.history_staff', 'Nhân viên', 'order.admin', 'vi'),
(924, 'order.admin.history_content', 'Nội dung', 'order.admin', 'vi'),
(925, 'order.admin.history_time', 'Thời gian', 'order.admin', 'vi'),
(926, 'order.admin.title', 'Quản lý đơn hàng', 'order.admin', 'vi'),
(927, 'order.admin.config_title', 'Cấu hình đơn hàng', 'order.admin', 'vi'),
(928, 'order.admin.list', 'Danh sách đơn hàng', 'order.admin', 'vi'),
(929, 'order.admin.payment_method', 'Phương thức thanh toán', 'order.admin', 'vi'),
(930, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'vi'),
(931, 'order.admin.currency', 'Tiền tệ', 'order.admin', 'vi'),
(932, 'order.admin.exchange_rate', 'Tỉ giá', 'order.admin', 'vi'),
(933, 'order.admin.order_new', 'Thêm mới', 'order.admin', 'vi'),
(934, 'order.admin.add_new', 'Thêm mới', 'order.admin', 'vi'),
(935, 'order.admin.add_new_title', 'Tạo đơn hàng', 'order.admin', 'vi'),
(936, 'order.admin.add_new_des', 'Tạo mới một đơn hàng', 'order.admin', 'vi'),
(937, 'order.admin.export_batch', 'Xuất', 'order.admin', 'vi'),
(938, 'order.admin.config_info', 'Cấu hình đơn hàng', 'order.admin', 'vi'),
(939, 'order.admin.store', 'Cửa hàng', 'order.admin', 'vi'),
(940, 'order.admin.title', 'Order manager', 'order.admin', 'en'),
(941, 'order.admin.config_title', 'Config info order', 'order.admin', 'en'),
(942, 'order.admin.list', 'Order list', 'order.admin', 'en'),
(943, 'order.admin.payment_method', 'Payment method', 'order.admin', 'en'),
(944, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'en'),
(945, 'order.admin.currency', 'Currency', 'order.admin', 'en'),
(946, 'order.admin.exchange_rate', 'Exchange rate', 'order.admin', 'en'),
(947, 'order.admin.status', 'Status', 'order.admin', 'en'),
(948, 'order.admin.status', 'Trạng thái', 'order.admin', 'vi'),
(949, 'order.admin.created_at', 'Created at', 'order.admin', 'en'),
(950, 'order.admin.created_at', 'Tạo lúc', 'order.admin', 'vi'),
(951, 'order.admin.order_new', 'Add new', 'order.admin', 'en'),
(952, 'order.admin.add_new', 'Add new', 'order.admin', 'en'),
(953, 'order.admin.add_new_title', 'Add new order', 'order.admin', 'en'),
(954, 'order.admin.add_new_des', 'Create a new order', 'order.admin', 'en'),
(955, 'order.admin.export_batch', 'Export', 'order.admin', 'en'),
(956, 'order.admin.config_info', 'Config order', 'order.admin', 'en'),
(957, 'order.admin.store', 'Store', 'order.admin', 'en'),
(958, 'order.admin.search_order_status', 'Search order status', 'order.admin', 'en'),
(959, 'order.admin.search_order_status', 'Tìm trạng thái đơn hàng', 'order.admin', 'vi'),
(960, 'order.admin.search_email', 'Search email', 'order.admin', 'en'),
(961, 'order.admin.search_email', 'Tìm email', 'order.admin', 'vi'),
(962, 'order.admin.search_id', 'Search id', 'order.admin', 'en'),
(963, 'order.admin.search_id', 'Tìm ID', 'order.admin', 'vi'),
(964, 'order.admin.select_product', 'Select product', 'order.admin', 'en'),
(965, 'order.admin.select_product', 'Chọn sản phẩm', 'order.admin', 'vi'),
(966, 'order.admin.product_buy_out_of_stock', 'Allow buy out of stock', 'order.admin', 'en'),
(967, 'order.admin.product_buy_out_of_stock', 'Cho phép mua hàng đã hết', 'order.admin', 'vi'),
(968, 'order.admin.shipping_off', 'Dont use shipping method', 'order.admin', 'en'),
(969, 'order.admin.shipping_off', 'Không sử dụng phương thức vận chuyển', 'order.admin', 'vi'),
(970, 'order.admin.payment_off', 'Dont use payment method', 'order.admin', 'en'),
(971, 'order.admin.payment_off', 'Không sử dụng phương thức thanh toán', 'order.admin', 'vi'),
(972, 'order.admin.product_preorder', 'Allow pre-order', 'order.admin', 'en'),
(973, 'order.admin.product_preorder', 'Cho phép đặt hàng trước', 'order.admin', 'vi'),
(974, 'order.admin.shop_allow_guest', 'Allow buy no need login', 'order.admin', 'en'),
(975, 'order.admin.shop_allow_guest', 'Cho phép mua không cần đăng nhập', 'order.admin', 'vi'),
(976, 'order.admin.select_customer', 'Select customer', 'order.admin', 'en'),
(977, 'order.admin.select_customer', 'Chọn khách hàng', 'order.admin', 'vi'),
(978, 'contact.name', 'Tên', 'contact', 'vi'),
(979, 'contact.name', 'Name', 'contact', 'en'),
(980, 'contact.email', 'Email', 'contact', 'vi'),
(981, 'contact.email', 'Email', 'contact', 'en'),
(982, 'contact.phone', 'Điện thoại', 'contact', 'vi'),
(983, 'contact.phone', 'Phone', 'contact', 'en'),
(984, 'contact.subject', 'Tiêu đề', 'contact', 'vi'),
(985, 'contact.subject', 'Subject', 'contact', 'en'),
(986, 'contact.content', 'Nội dung', 'contact', 'vi'),
(987, 'contact.content', 'content', 'contact', 'en'),
(988, 'contact.page_title', 'Liên hệ', 'contact', 'vi'),
(989, 'contact.page_title', 'Contact page', 'contact', 'en'),
(990, 'contact.thank_contact', 'Cảm ơn vì bạn đã liên hệ', 'contact', 'vi'),
(991, 'contact.thank_contact', 'Thank you for your contact', 'contact', 'en'),
(992, 'filter_sort.sort', 'Thứ tự', 'filter_sort', 'vi'),
(993, 'filter_sort.sort', 'Sort', 'filter_sort', 'en'),
(994, 'filter_sort.price_asc', 'Giá tăng dần', 'filter_sort', 'vi'),
(995, 'filter_sort.price_asc', 'Price ascending', 'filter_sort', 'en'),
(996, 'filter_sort.price_desc', 'Giá giảm dần', 'filter_sort', 'vi'),
(997, 'filter_sort.price_desc', 'Price descending', 'filter_sort', 'en'),
(998, 'filter_sort.sort_asc', 'Sort tăng dần', 'filter_sort', 'vi'),
(999, 'filter_sort.sort_asc', 'Sort ascending', 'filter_sort', 'en'),
(1000, 'filter_sort.sort_desc', 'Sort giảm dần', 'filter_sort', 'vi'),
(1001, 'filter_sort.sort_desc', 'Sort descending', 'filter_sort', 'en'),
(1002, 'filter_sort.id_asc', 'ID tăng dần', 'filter_sort', 'vi'),
(1003, 'filter_sort.id_asc', 'ID ascending', 'filter_sort', 'en'),
(1004, 'filter_sort.id_desc', 'ID giảm dần', 'filter_sort', 'vi'),
(1005, 'filter_sort.id_desc', 'ID descending', 'filter_sort', 'en'),
(1006, 'filter_sort.name_desc', 'Tên theo thứ tự z-a', 'filter_sort', 'vi'),
(1007, 'filter_sort.name_desc', 'Name in z-a order', 'filter_sort', 'en'),
(1008, 'filter_sort.name_asc', 'Tên theo thứ tự a-z', 'filter_sort', 'vi'),
(1009, 'filter_sort.name_asc', 'Name in a-z order', 'filter_sort', 'en'),
(1010, 'filter_sort.first_name_desc', 'Tên theo thứ tự z-a', 'filter_sort', 'vi'),
(1011, 'filter_sort.first_name_desc', 'First name in z-a order', 'filter_sort', 'en'),
(1012, 'filter_sort.first_name_asc', 'Tên theo thứ tự a-z', 'filter_sort', 'vi'),
(1013, 'filter_sort.first_name_asc', 'First name in a-z order', 'filter_sort', 'en'),
(1014, 'filter_sort.last_name_desc', 'Họ theo thứ tự z-a', 'filter_sort', 'vi'),
(1015, 'filter_sort.last_name_desc', 'Last name in z-a order', 'filter_sort', 'en'),
(1016, 'filter_sort.last_name_asc', 'Họ theo thứ tự a-z', 'filter_sort', 'vi'),
(1017, 'filter_sort.last_name_asc', 'Last name in a-z order', 'filter_sort', 'en'),
(1018, 'filter_sort.title_desc', 'Tiêu đề theo thứ tự z-a', 'filter_sort', 'vi'),
(1019, 'filter_sort.title_desc', 'Title in z-a order', 'filter_sort', 'en'),
(1020, 'filter_sort.title_asc', 'Tiêu đề theo thứ tự a-z', 'filter_sort', 'vi'),
(1021, 'filter_sort.title_asc', 'Title in a-z order', 'filter_sort', 'en'),
(1022, 'filter_sort.sold_asc', 'Bán ra tăng dần', 'filter_sort', 'vi'),
(1023, 'filter_sort.sold_asc', 'Sold ascending', 'filter_sort', 'en'),
(1024, 'filter_sort.sold_desc', 'Bán ra giảm dần', 'filter_sort', 'vi'),
(1025, 'filter_sort.sold_desc', 'Sold descending', 'filter_sort', 'en'),
(1026, 'filter_sort.view_desc', 'Lượt xem giảm dần', 'filter_sort', 'vi'),
(1027, 'filter_sort.view_desc', 'View descending', 'filter_sort', 'en'),
(1028, 'filter_sort.view_asc', 'Lượt xem tăng dần', 'filter_sort', 'vi'),
(1029, 'filter_sort.view_asc', 'View ascending', 'filter_sort', 'en'),
(1030, 'filter_sort.alpha_desc', ':alpha theo thứ tự z-a', 'filter_sort', 'vi'),
(1031, 'filter_sort.alpha_desc', ':alpha in z-a order', 'filter_sort', 'en'),
(1032, 'filter_sort.alpha_asc', ':alpha theo thứ tự a-z', 'filter_sort', 'vi'),
(1033, 'filter_sort.alpha_asc', ':alpha in a-z order', 'filter_sort', 'en'),
(1034, 'filter_sort.value_asc', ':value tăng dần', 'filter_sort', 'vi'),
(1035, 'filter_sort.value_asc', ':value ascending', 'filter_sort', 'en'),
(1036, 'filter_sort.value_desc', ':value giảm dần', 'filter_sort', 'vi'),
(1037, 'filter_sort.value_desc', ':value descending', 'filter_sort', 'en'),
(1038, 'subscribe.email', 'Email', 'subscribe', 'en'),
(1039, 'subscribe.action', 'Subscribe', 'subscribe', 'en'),
(1040, 'subscribe.title', 'Subscribe email', 'subscribe', 'en'),
(1041, 'subscribe.subscribe_des', 'Get the most recent updates from us', 'subscribe', 'en'),
(1042, 'subscribe.subscribe_email', 'Your email', 'subscribe', 'en'),
(1043, 'subscribe.subscribe_success', 'Subscribe email successful!', 'subscribe', 'en'),
(1044, 'subscribe.email', 'Email', 'subscribe', 'vi'),
(1045, 'subscribe.action', 'Đăng ký', 'subscribe', 'vi'),
(1046, 'subscribe.title', 'Đăng ký email', 'subscribe', 'vi'),
(1047, 'subscribe.subscribe_des', 'Nhận cập nhật mới nhất', 'subscribe', 'vi'),
(1048, 'subscribe.subscribe_email', 'Email của bạn', 'subscribe', 'vi'),
(1049, 'subscribe.subscribe_success', 'Đăng ký email thành công!', 'subscribe', 'vi'),
(1050, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'vi'),
(1051, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'en'),
(1052, 'subscribe.admin.list', 'Danh sách đang ký', 'subscribe.admin', 'vi'),
(1053, 'subscribe.admin.list', 'Subscribe list', 'subscribe.admin', 'en'),
(1054, 'subscribe.admin.status', 'Trạng thái', 'subscribe.admin', 'vi'),
(1055, 'subscribe.admin.status', 'Status', 'subscribe.admin', 'en'),
(1056, 'subscribe.admin.add_new_title', 'Thêm đăng ký', 'subscribe.admin', 'vi'),
(1057, 'subscribe.admin.add_new_title', 'Add subscribe', 'subscribe.admin', 'en'),
(1058, 'subscribe.admin.add_new_des', 'Thêm tài khoản đăng ký', 'subscribe.admin', 'vi'),
(1059, 'subscribe.admin.add_new_des', 'Add a new subscribe', 'subscribe.admin', 'en'),
(1060, 'subscribe.admin.search_place', 'Search ID or email', 'subscribe.admin', 'en'),
(1061, 'subscribe.admin.search_place', 'Tìm ID hoặc email', 'admin.subscribe', 'vi'),
(1062, 'about.page_title', 'About us', 'about', 'en'),
(1063, 'about.page_title', 'Giới thiệu', 'about', 'vi'),
(1064, 'admin.user.setting', 'Setting', 'admin.user', 'en'),
(1065, 'admin.user.setting', 'Cài đặt', 'admin.user', 'vi'),
(1066, 'admin.user.logout', 'Logout', 'admin.user', 'en'),
(1067, 'admin.user.logout', 'Đăng xuất', 'admin.user', 'vi'),
(1068, 'admin.user.username', 'User name', 'admin.user', 'en'),
(1069, 'admin.user.username', 'Tên đăng nhập', 'admin.user', 'vi'),
(1070, 'admin.user.password', 'Password', 'admin.user', 'en'),
(1071, 'admin.user.password', 'Mật khẩu', 'admin.user', 'vi'),
(1072, 'admin.user.remember_me', 'Remember', 'admin.user', 'en'),
(1073, 'admin.user.remember_me', 'Ghi nhớ', 'admin.user', 'vi'),
(1074, 'admin.user.login', 'Login', 'admin.user', 'en'),
(1075, 'admin.user.login', 'Đăng nhập', 'admin.user', 'vi'),
(1076, 'admin.user.keep_password', 'Để trống nếu không muốn thay đổi mật khẩu', 'admin.user', 'vi'),
(1077, 'admin.user.select_roles', 'Chọn vai trò', 'admin.user', 'vi'),
(1078, 'admin.user.select_permission', 'Chọn quyền hạn', 'admin.user', 'vi'),
(1079, 'admin.user.add_permission', 'Thêm quyền hạn', 'admin.user', 'vi'),
(1080, 'admin.user.select_store', 'Chọn cửa hàng', 'admin.user', 'vi'),
(1081, 'admin.user.name', 'Tên đầy đủ', 'admin.user', 'vi'),
(1082, 'admin.user.user_name', 'Tên đăng nhập', 'admin.user', 'vi'),
(1083, 'admin.user.email', 'Email', 'admin.user', 'vi'),
(1084, 'admin.user.avatar', 'Hình đại diện', 'admin.user', 'vi'),
(1085, 'admin.user.roles', 'vai trò', 'admin.user', 'vi'),
(1086, 'admin.user.permission', 'Quyền hạn', 'admin.user', 'vi'),
(1087, 'admin.user.created_at', 'Tạo lúc', 'admin.user', 'vi'),
(1088, 'admin.user.updated_at', 'Cập nhật', 'admin.user', 'vi'),
(1089, 'admin.user.member_since', 'Tham gia từ', 'admin.user', 'vi'),
(1090, 'admin.user.password_confirmation', 'Xác nhận mật khẩu', 'admin.user', 'vi'),
(1091, 'admin.user.username_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'vi'),
(1092, 'admin.user.title', 'Quản lý người dùng', 'admin.user', 'vi'),
(1093, 'admin.user.list', 'Danh sách người dùng', 'admin.user', 'vi'),
(1094, 'admin.user.add_new', 'Thêm mới', 'admin.user', 'vi'),
(1095, 'admin.user.add_new_title', 'Tạo người dùng', 'admin.user', 'vi'),
(1096, 'admin.user.add_new_des', 'Tạo mới người dùng', 'admin.user', 'vi'),
(1097, 'admin.user.name', 'Full name', 'admin.user', 'en'),
(1098, 'admin.user.user_name', 'User name', 'admin.user', 'en'),
(1099, 'admin.user.email', 'Email', 'admin.user', 'en'),
(1100, 'admin.user.avatar', 'Avatar', 'admin.user', 'en'),
(1101, 'admin.user.roles', 'Roles', 'admin.user', 'en'),
(1102, 'admin.user.permission', 'Permission', 'admin.user', 'en'),
(1103, 'admin.user.created_at', 'Created at', 'admin.user', 'en'),
(1104, 'admin.user.updated_at', 'Updated at', 'admin.user', 'en'),
(1105, 'admin.user.member_since', 'Member since', 'admin.user', 'en'),
(1106, 'admin.user.password_confirmation', 'Confirmation', 'admin.user', 'en'),
(1107, 'admin.user.username_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'en'),
(1108, 'admin.user.keep_password', 'Leave blank if you dont want to change the password', 'admin.user', 'en'),
(1109, 'admin.user.select_roles', 'Select roles', 'admin.user', 'en'),
(1110, 'admin.user.select_permission', 'Select permission', 'admin.user', 'en'),
(1111, 'admin.user.add_permission', 'Add permission', 'admin.user', 'en'),
(1112, 'admin.user.select_store', 'Select store', 'admin.user', 'en'),
(1113, 'admin.user.add_new', 'Add new', 'admin.user', 'en'),
(1114, 'admin.user.add_new_title', 'Add new user', 'admin.user', 'en'),
(1115, 'admin.user.add_new_des', 'Create a new user', 'admin.user', 'en'),
(1116, 'admin.user.list', 'User list', 'admin.user', 'en'),
(1117, 'admin.user.title', 'User manager', 'admin.user', 'en'),
(1118, 'admin.user.search_place', 'Search name', 'admin.user', 'en'),
(1119, 'admin.user.search_place', 'Tìm tên', 'admin.user', 'vi'),
(1120, 'admin.menu_titles.order_manager', 'Quản lý đơn hàng', 'admin.menu_titles', 'vi'),
(1121, 'admin.menu_titles.order_manager', 'Order manager', 'admin.menu_titles', 'en'),
(1122, 'admin.menu_titles.catalog_mamager', 'Sản phẩm & danh mục', 'admin.menu_titles', 'vi'),
(1123, 'admin.menu_titles.catalog_mamager', 'Product & category', 'admin.menu_titles', 'en'),
(1124, 'admin.menu_titles.customer_manager', 'Quản lý khách hàng', 'admin.menu_titles', 'vi'),
(1125, 'admin.menu_titles.customer_manager', 'Customer manager', 'admin.menu_titles', 'en'),
(1126, 'admin.menu_titles.admin_global', 'Quản lý chung', 'admin.menu_titles', 'vi'),
(1127, 'admin.menu_titles.admin_global', 'Admin global', 'admin.menu_titles', 'en'),
(1128, 'admin.menu_titles.ADMIN_SHOP', 'Cửa hàng', 'admin.menu_titles', 'vi'),
(1129, 'admin.menu_titles.ADMIN_SHOP', 'Admin shop', 'admin.menu_titles', 'en'),
(1130, 'admin.menu_titles.ADMIN_CONTENT', 'Nội dung', 'admin.menu_titles', 'vi'),
(1131, 'admin.menu_titles.ADMIN_CONTENT', 'Content', 'admin.menu_titles', 'en'),
(1132, 'admin.menu_titles.ADMIN_EXTENSION', 'Phần mở rộng', 'admin.menu_titles', 'vi'),
(1133, 'admin.menu_titles.ADMIN_EXTENSION', 'Extension', 'admin.menu_titles', 'en'),
(1134, 'admin.menu_titles.ADMIN_SYSTEM', 'Cấu hình hệ thống', 'admin.menu_titles', 'vi'),
(1135, 'admin.menu_titles.ADMIN_SYSTEM', 'System config', 'admin.menu_titles', 'en'),
(1136, 'admin.menu_titles.page_manager', 'Quản lý trang', 'admin.menu_titles', 'vi'),
(1137, 'admin.menu_titles.page_manager', 'Page manager', 'admin.menu_titles', 'en'),
(1138, 'admin.menu_titles.order', 'Đơn hàng', 'admin.menu_titles', 'vi'),
(1139, 'admin.menu_titles.order', 'Order', 'admin.menu_titles', 'en'),
(1140, 'admin.menu_titles.order_status', 'Trạng thái đơn hàng', 'admin.menu_titles', 'vi'),
(1141, 'admin.menu_titles.order_status', 'Order status', 'admin.menu_titles', 'en'),
(1142, 'admin.menu_titles.payment_status', 'Trạng thái thanh toán', 'admin.menu_titles', 'vi'),
(1143, 'admin.menu_titles.payment_status', 'Payment status', 'admin.menu_titles', 'en'),
(1144, 'admin.menu_titles.shipping_status', 'Trạng thái vận chuyển', 'admin.menu_titles', 'vi'),
(1145, 'admin.menu_titles.shipping_status', 'Shipping status', 'admin.menu_titles', 'en'),
(1146, 'admin.menu_titles.product', 'Sản phẩm', 'admin.menu_titles', 'vi'),
(1147, 'admin.menu_titles.product', 'Products', 'admin.menu_titles', 'en'),
(1148, 'admin.menu_titles.category', 'Danh mục', 'admin.menu_titles', 'vi'),
(1149, 'admin.menu_titles.category', 'Categories', 'admin.menu_titles', 'en'),
(1150, 'admin.menu_titles.supplier', 'Nhà cung cấp', 'admin.menu_titles', 'vi'),
(1151, 'admin.menu_titles.supplier', 'Suppliers', 'admin.menu_titles', 'en'),
(1152, 'admin.menu_titles.brand', 'Nhãn hiệu', 'admin.menu_titles', 'vi'),
(1153, 'admin.menu_titles.brand', 'Brands', 'admin.menu_titles', 'en'),
(1154, 'admin.menu_titles.attribute_group', 'Nhóm thuộc tính', 'admin.menu_titles', 'vi'),
(1155, 'admin.menu_titles.attribute_group', 'Attribute group', 'admin.menu_titles', 'en'),
(1156, 'admin.menu_titles.customer', 'Khách hàng', 'admin.menu_titles', 'vi'),
(1157, 'admin.menu_titles.customer', 'Customers', 'admin.menu_titles', 'en'),
(1158, 'admin.menu_titles.subscribe', 'Đăng ký', 'admin.menu_titles', 'vi'),
(1159, 'admin.menu_titles.subscribe', 'Subscribe', 'admin.menu_titles', 'en'),
(1160, 'admin.menu_titles.block_content', 'Khối nội dung', 'admin.menu_titles', 'vi'),
(1161, 'admin.menu_titles.block_content', 'Block content', 'admin.menu_titles', 'en'),
(1162, 'admin.menu_titles.block_link', 'Quản lý liên kết', 'admin.menu_titles', 'vi'),
(1163, 'admin.menu_titles.block_link', 'Link manager', 'admin.menu_titles', 'en'),
(1164, 'admin.menu_titles.template_layout', 'Quản lý giao diện', 'admin.menu_titles', 'vi'),
(1165, 'admin.menu_titles.template_layout', 'Template manager', 'admin.menu_titles', 'en'),
(1166, 'admin.menu_titles.template', 'Giao diện', 'admin.menu_titles', 'vi'),
(1167, 'admin.menu_titles.template', 'Template', 'admin.menu_titles', 'en'),
(1168, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'vi'),
(1169, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'en'),
(1170, 'admin.menu_titles.store_info', 'Thông tin cửa hàng', 'admin.menu_titles', 'vi'),
(1171, 'admin.menu_titles.store_info', 'Store infomation', 'admin.menu_titles', 'en'),
(1172, 'admin.menu_titles.setting_system', 'Thiết lập hệ thống', 'admin.menu_titles', 'vi'),
(1173, 'admin.menu_titles.setting_system', 'Setting system', 'admin.menu_titles', 'en'),
(1174, 'admin.menu_titles.error_log', 'Lỗi & Nhật ký', 'admin.menu_titles', 'vi'),
(1175, 'admin.menu_titles.error_log', 'Error & Logs', 'admin.menu_titles', 'en'),
(1176, 'admin.menu_titles.email_template', 'Mẫu email', 'admin.menu_titles', 'vi'),
(1177, 'admin.menu_titles.email_template', 'Email template', 'admin.menu_titles', 'en'),
(1178, 'admin.menu_titles.language', 'Ngôn ngữ', 'admin.menu_titles', 'vi'),
(1179, 'admin.menu_titles.language', 'Languages', 'admin.menu_titles', 'en'),
(1180, 'admin.menu_titles.language_manager', 'Quản lý ngôn ngữ', 'admin.menu_titles', 'vi'),
(1181, 'admin.menu_titles.language_manager', 'Language manager', 'admin.menu_titles', 'en'),
(1182, 'admin.menu_titles.currency', 'Tiền tệ', 'admin.menu_titles', 'vi'),
(1183, 'admin.menu_titles.currency', 'Currencies', 'admin.menu_titles', 'en'),
(1184, 'admin.menu_titles.banner', 'Banner', 'admin.menu_titles', 'vi'),
(1185, 'admin.menu_titles.banner', 'Banners', 'admin.menu_titles', 'en'),
(1186, 'admin.menu_titles.backup_restore', 'Sao lưu & Phục hồi', 'admin.menu_titles', 'vi'),
(1187, 'admin.menu_titles.backup_restore', 'Backup & Restore', 'admin.menu_titles', 'en'),
(1188, 'admin.menu_titles.plugin', 'Tiện ích', 'admin.menu_titles', 'vi'),
(1189, 'admin.menu_titles.plugin', 'Plugins', 'admin.menu_titles', 'en'),
(1190, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'vi'),
(1191, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'en'),
(1192, 'admin.menu_titles.report_manager', 'Quản lý báo cáo', 'admin.menu_titles', 'vi'),
(1193, 'admin.menu_titles.report_manager', 'Report manager', 'admin.menu_titles', 'en'),
(1194, 'admin.menu_titles.user_permission', 'Quyền hạn người dùng', 'admin.menu_titles', 'vi'),
(1195, 'admin.menu_titles.user_permission', 'User permission', 'admin.menu_titles', 'en'),
(1196, 'admin.menu_titles.css', 'Chỉnh sửa CSS', 'admin.menu_titles', 'vi'),
(1197, 'admin.menu_titles.css', 'CSS style', 'admin.menu_titles', 'en'),
(1198, 'admin.menu_titles.seo_manager', 'Quản lý SEO', 'admin.menu_titles', 'vi'),
(1199, 'admin.menu_titles.seo_manager', 'SEO manager', 'admin.menu_titles', 'en'),
(1200, 'admin.menu_titles.users', 'Người dùng', 'admin.menu_titles', 'vi'),
(1201, 'admin.menu_titles.users', 'Users', 'admin.menu_titles', 'en'),
(1202, 'admin.menu_titles.roles', 'Nhóm quyền', 'admin.menu_titles', 'vi'),
(1203, 'admin.menu_titles.roles', 'Roles', 'admin.menu_titles', 'en'),
(1204, 'admin.menu_titles.permission', 'Quyền hạn', 'admin.menu_titles', 'vi'),
(1205, 'admin.menu_titles.permission', 'Permission', 'admin.menu_titles', 'en'),
(1206, 'admin.menu_titles.operation_log', 'Nhật ký truy cập', 'admin.menu_titles', 'vi'),
(1207, 'admin.menu_titles.operation_log', 'Log access', 'admin.menu_titles', 'en'),
(1208, 'admin.menu_titles.seo_config', 'Cấu hình SEO', 'admin.menu_titles', 'vi'),
(1209, 'admin.menu_titles.seo_config', 'SEO config', 'admin.menu_titles', 'en'),
(1210, 'admin.menu_titles.news', 'Tin tức', 'admin.menu_titles', 'vi'),
(1211, 'admin.menu_titles.news', 'News', 'admin.menu_titles', 'en'),
(1212, 'admin.menu_titles.env_config', 'Cấu hình môi trường', 'admin.menu_titles', 'vi'),
(1213, 'admin.menu_titles.env_config', 'Environment Config', 'admin.menu_titles', 'en'),
(1214, 'admin.menu_titles.report_product', 'Báo cáo sản phẩm', 'admin.menu_titles', 'vi'),
(1215, 'admin.menu_titles.report_product', 'Report product', 'admin.menu_titles', 'en'),
(1216, 'admin.menu_titles.store_config', 'Cấu hình cửa hàng', 'admin.menu_titles', 'vi'),
(1217, 'admin.menu_titles.store_config', 'Store config', 'admin.menu_titles', 'en'),
(1218, 'admin.menu_titles.cache_manager', 'Bộ nhớ đệm', 'admin.menu_titles', 'vi'),
(1219, 'admin.menu_titles.cache_manager', 'Cache', 'admin.menu_titles', 'en'),
(1220, 'admin.menu_titles.api_manager', 'Quản lý API', 'admin.menu_titles', 'vi'),
(1221, 'admin.menu_titles.api_manager', 'API manager', 'admin.menu_titles', 'en'),
(1222, 'admin.menu_titles.store_maintain', 'Bảo trì website', 'admin.menu_titles', 'vi'),
(1223, 'admin.menu_titles.store_maintain', 'Website maintain', 'admin.menu_titles', 'en'),
(1224, 'admin.menu_titles.tax', 'Thuế', 'admin.menu_titles', 'vi'),
(1225, 'admin.menu_titles.tax', 'Tax', 'admin.menu_titles', 'en'),
(1226, 'admin.menu_titles.weight', 'Khối lượng', 'admin.menu_titles', 'vi'),
(1227, 'admin.menu_titles.weight', 'Weight', 'admin.menu_titles', 'en'),
(1228, 'admin.menu_titles.length', 'Kích thước', 'admin.menu_titles', 'vi'),
(1229, 'admin.menu_titles.length', 'Length', 'admin.menu_titles', 'en'),
(1230, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Thiết lập cửa hàng', 'admin.menu_titles', 'vi'),
(1231, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Shop setting', 'admin.menu_titles', 'en'),
(1232, 'admin.menu_titles.api_config', 'Cấu hình API', 'admin.menu_titles', 'vi'),
(1233, 'admin.menu_titles.api_config', 'API config', 'admin.menu_titles', 'en'),
(1234, 'admin.menu_titles.layout', 'Bố cục', 'admin.menu_titles', 'vi'),
(1235, 'admin.menu_titles.layout', 'Layout', 'admin.menu_titles', 'en'),
(1236, 'admin.menu_titles.custom_field', 'Tùy chỉnh dữ liệu', 'admin.menu_titles', 'vi'),
(1237, 'admin.menu_titles.custom_field', 'Custom field data', 'admin.menu_titles', 'en'),
(1238, 'admin.menu_titles.localization', 'Địa phương hóa', 'admin.menu_titles', 'vi'),
(1239, 'admin.menu_titles.localization', 'Localization', 'admin.menu_titles', 'en'),
(1240, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'vi'),
(1241, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'en'),
(1242, 'admin.menu_titles.config_store_default', 'Cấu hình mặc định', 'admin.menu_titles', 'vi'),
(1243, 'admin.menu_titles.config_store_default', 'Config default', 'admin.menu_titles', 'en'),
(1244, 'admin.login_success', 'Login success!', 'admin', 'en'),
(1245, 'admin.login_success', 'Đăng nhập thành công', 'admin', 'vi'),
(1246, 'admin.access_denied', 'Access denied!', 'admin', 'en'),
(1247, 'admin.access_denied', 'Truy cập bị từ chối', 'admin', 'vi'),
(1248, 'admin.max_c', 'Maximum :max characters', 'admin', 'en'),
(1249, 'admin.min_c', 'Minimum :min characters', 'admin', 'en'),
(1250, 'admin.min_v', 'Greater than :value', 'admin', 'en'),
(1251, 'admin.max_v', 'Less than :value', 'admin', 'en'),
(1252, 'admin.max_c', 'Tối đa :max kí tự', 'admin', 'vi'),
(1253, 'admin.min_c', 'Tối thiểu :min kí tự', 'admin', 'vi'),
(1254, 'admin.min_v', 'Lớn hơn :value', 'admin', 'vi'),
(1255, 'admin.max_v', 'Nhỏ hơn :value', 'admin', 'vi'),
(1256, 'admin.data_not_found_detail', 'Dữ liệu không tồn tại :msg', 'admin', 'vi'),
(1257, 'admin.data_not_found_detail', 'Data not found :msg', 'admin', 'en'),
(1258, 'admin.login_successful', 'Đăng nhập thành công', 'admin', 'vi'),
(1259, 'admin.login_successful', 'Login success', 'admin', 'en'),
(1260, 'admin.add_new', 'Add new', 'admin', 'en'),
(1261, 'admin.add_new', 'Thêm mới', 'admin', 'vi'),
(1262, 'admin.not_empty', 'Not empty', 'admin', 'en'),
(1263, 'admin.not_empty', 'Không được rỗng', 'admin', 'vi'),
(1264, 'admin.only_numeric', 'Enly numeric', 'admin', 'en'),
(1265, 'admin.only_numeric', 'Chỉ dùng số', 'admin', 'vi'),
(1266, 'admin.store_swicth_success', 'Switch store success!', 'admin', 'en'),
(1267, 'admin.store_swicth_success', 'Chuyển cửa hàng thành công!', 'admin', 'vi'),
(1268, 'admin.dashboard', 'Dashboard', 'admin', 'en'),
(1269, 'admin.dashboard', 'Tổng hợp', 'admin', 'vi'),
(1270, 'admin.data_not_found', 'Data not found!', 'admin', 'en'),
(1271, 'admin.data_not_found', 'Không có dữ liệu!', 'admin', 'vi'),
(1272, 'admin.data_not_found_msg', 'The data you are accessing does not exist.', 'admin', 'en'),
(1273, 'admin.data_not_found_msg', 'Dữ liệu bạn đang truy cập không tồn tại.', 'admin', 'vi'),
(1274, 'admin.deny', 'Access denied!', 'admin', 'en'),
(1275, 'admin.deny', 'Truy cập từ chối!', 'admin', 'vi'),
(1276, 'admin.setting_account', 'Setting account', 'admin', 'en'),
(1277, 'admin.setting_account', 'Thiết lập tài khoản', 'admin', 'vi'),
(1278, 'admin.failed', 'Auth failed', 'admin', 'en'),
(1279, 'admin.failed', 'Chứng thực thất bại', 'admin', 'vi'),
(1280, 'admin.maintain_enable', 'Active ', 'admin', 'en'),
(1281, 'admin.maintain_enable', 'Hoạt động', 'admin', 'vi'),
(1282, 'admin.maintain_disable', 'Maintenance ', 'admin', 'en'),
(1283, 'admin.maintain_disable', 'Bảo trì', 'admin', 'vi'),
(1284, 'admin.position_all', 'All pages', 'admin', 'en'),
(1285, 'admin.position_all', 'Tất cả các trang', 'admin', 'vi'),
(1286, 'admin.theme', 'Theme', 'admin', 'en'),
(1287, 'admin.theme', 'Mẫu', 'admin', 'vi'),
(1288, 'admin.select_store', 'Select store', 'admin', 'en'),
(1289, 'admin.select_store', 'Chọn cửa hàng', 'admin', 'vi'),
(1290, 'admin.welcome_dasdboard', 'Welcome to admin system!', 'admin', 'en'),
(1291, 'admin.welcome_dasdboard', 'Chào mừng đến với hệ thống!', 'admin', 'vi'),
(1292, 'admin.deny_msg', 'You need permission to access the system!', 'admin', 'en'),
(1293, 'admin.deny_content', 'Permission denied!', 'admin', 'en'),
(1294, 'admin.deny_msg', 'Bạn cần thêm quyền hạn để truy cập hệ thống!', 'admin', 'vi'),
(1295, 'admin.deny_content', 'Bạn không có đủ quyền hạn!', 'admin', 'vi'),
(1296, 'admin.home', 'Trang chủ', 'admin', 'vi'),
(1297, 'admin.home', 'Home', 'admin', 'en'),
(1298, 'admin.choose_icon', 'Chọn icon', 'admin', 'vi'),
(1299, 'admin.choose_icon', 'Chose icon', 'admin', 'en'),
(1300, 'admin.file_manager', 'Quản lý file', 'admin', 'vi'),
(1301, 'admin.file_manager', 'File manager', 'admin', 'en'),
(1302, 'admin.notice_new_order', 'Bạn có :total đơn hàng mới', 'admin', 'vi'),
(1303, 'admin.notice_new_order', 'You have :total new orders', 'admin', 'en'),
(1304, 'admin.gt_numeric_0', 'Giá trị  phải lớn hơn 0!', 'admin', 'vi'),
(1305, 'admin.gt_numeric_0', 'Value must greater zero!', 'admin', 'en'),
(1306, 'admin.api_connection.api_mode_help', 'ON/OFF API', 'admin.api_connection', 'en'),
(1307, 'admin.api_connection.api_mode_help', 'TẮT/MỞ API', 'admin.api_connection', 'vi'),
(1308, 'admin.api_connection.api_mode', 'ON/OFF API', 'admin.api_connection', 'en'),
(1309, 'admin.api_connection.api_mode', 'TẮT/MỞ API', 'admin.api_connection', 'vi'),
(1310, 'admin.api_connection.list', 'API connection list', 'admin.api_connection', 'en'),
(1311, 'admin.api_connection.list', 'Danh sách API connection', 'admin.api_connection', 'vi'),
(1312, 'admin.api_connection.description', 'Mô tả', 'admin.api_connection', 'vi'),
(1313, 'admin.api_connection.description', 'Description', 'admin.api_connection', 'en'),
(1314, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'vi'),
(1315, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'en'),
(1316, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'vi'),
(1317, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'en'),
(1318, 'admin.api_connection.expire', 'Hết hạn', 'admin.api_connection', 'vi'),
(1319, 'admin.api_connection.expire', 'Expire', 'admin.api_connection', 'en'),
(1320, 'admin.api_connection.last_active', 'Lần cuối truy cập', 'admin.api_connection', 'vi'),
(1321, 'admin.api_connection.last_active', 'Last active', 'admin.api_connection', 'en'),
(1322, 'admin.api_connection.status', 'Trạng thái', 'admin.api_connection', 'vi'),
(1323, 'admin.api_connection.status', 'Status', 'admin.api_connection', 'en'),
(1324, 'admin.api_connection.validate_regex', 'Chỉ sử dụng các kí tự : a-z0-9', 'admin.api_connection', 'vi'),
(1325, 'admin.api_connection.validate_regex', 'Only use characters : a-z0-9', 'admin.api_connection', 'en'),
(1326, 'admin.api_connection.create', 'Tạo mới connection', 'admin.api_connection', 'vi'),
(1327, 'admin.api_connection.create', 'Creat new connection', 'admin.api_connection', 'en'),
(1328, 'admin.api_connection.edit', 'Chỉnh sửa connection', 'admin.api_connection', 'vi'),
(1329, 'admin.api_connection.edit', 'Edit connection', 'admin.api_connection', 'en'),
(1330, 'admin.api_connection.api_connection_required_help', '<ul><li>Nếu không sử dụng API, hãy hãy chuyển sang trạng thái \"OFF API\"</li><li>Nếu không sử dụng apikey và apiconnection, hãy chuyển sang trạng thái \"OFF CONNECTION\"</li></ul>\n    <a href=\"https://s-cart.org/vi/docs/developer/about-api-scart.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\">Xem chi tiết ở đây</i></a>\n    ', 'admin.api_connection', 'vi'),
(1331, 'admin.api_connection.api_connection_required_help', '<ul><li>If not using API, please switch to \"OFF API\" state</li><li>If apikey and apiconnection are not used, switch to \"OFF CONNECTION\" state</li></ul>\n    <a href=\"https://s-cart.org/docs/developer/about-api-scart.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>See full infomation</a>\n    ', 'admin.api_connection', 'en'),
(1332, 'admin.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'admin', 'en'),
(1333, 'admin.result_item', 'Hiển thị <b>:item_from</b>-<b>:item_to</b> của <b>:total</b> kết quả</b>', 'admin', 'vi'),
(1334, 'admin.method_not_allow', 'Method not allow', 'admin', 'en'),
(1335, 'admin.method_not_allow', 'Phương thức không được phép', 'admin', 'vi'),
(1336, 'admin.back_list', 'Back list', 'admin', 'en'),
(1337, 'admin.back_list', 'Trở lại danh sách', 'admin', 'vi'),
(1338, 'admin.msg_change_success', 'All changes have been updated', 'admin', 'en'),
(1339, 'admin.msg_change_success', 'Thay đổi đã được cập nhật', 'admin', 'vi'),
(1340, 'admin.updated_at', 'Updated at', 'admin', 'en'),
(1341, 'admin.updated_at', 'Cập nhật lúc', 'admin', 'vi'),
(1342, 'admin.created_at', 'Created at', 'admin', 'en'),
(1343, 'admin.created_at', 'Tạo lúc', 'admin', 'vi'),
(1344, 'admin.remove_dont_permisison', 'Dont permission remove ', 'admin', 'en'),
(1345, 'admin.remove_dont_permisison', 'Không có quyền gỡ bỏ', 'admin', 'vi'),
(1346, 'admin.delete_dont_permisison', 'Dont permission delete ', 'admin', 'en'),
(1347, 'admin.delete_dont_permisison', 'Không có quyền xóa', 'admin', 'vi'),
(1348, 'admin.attribute_group.list', 'Danh sách nhóm thuộc tính', 'admin.attribute_group', 'vi'),
(1349, 'admin.attribute_group.list', 'Attribute group list', 'admin.attribute_group', 'en'),
(1350, 'admin.attribute_group.name', 'Tên', 'admin.attribute_group', 'vi'),
(1351, 'admin.attribute_group.name', 'Name', 'admin.attribute_group', 'en'),
(1352, 'admin.attribute_group.type', 'Loại', 'admin.attribute_group', 'vi'),
(1353, 'admin.attribute_group.type', 'Type', 'admin.attribute_group', 'en'),
(1354, 'admin.order.search', 'Tìm đơn hàng', 'admin.order', 'vi'),
(1355, 'admin.order.search', 'Search order', 'admin.order', 'en'),
(1356, 'admin.permission.name', 'Tên', 'admin.permission', 'vi'),
(1357, 'admin.permission.name', 'Name', 'admin.permission', 'en'),
(1358, 'admin.permission.list', 'Dánh sách quyền', 'admin.permission', 'vi'),
(1359, 'admin.permission.list', 'Permission list', 'admin.permission', 'en'),
(1360, 'admin.permission.slug', 'Slug', 'admin.permission', 'vi'),
(1361, 'admin.permission.slug', 'Slug', 'admin.permission', 'en'),
(1362, 'admin.permission.select_http_uri', 'Chọn http uri', 'admin.permission', 'vi'),
(1363, 'admin.permission.select_http_uri', 'Select http uri', 'admin.permission', 'en'),
(1364, 'admin.permission.method_placeholder', 'Các quyền', 'admin.permission', 'vi'),
(1365, 'admin.permission.method_placeholder', 'Permission detail', 'admin.permission', 'en'),
(1366, 'admin.permission.http_path', 'Http path', 'admin.permission', 'vi'),
(1367, 'admin.permission.http_path', 'Http path', 'admin.permission', 'en'),
(1368, 'admin.permission.slug_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'vi'),
(1369, 'admin.permission.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'en'),
(1370, 'admin.permission.add_new_des', 'Tạo mới một quyền', 'admin.permission', 'vi'),
(1371, 'admin.permission.add_new_des', 'Create new permission', 'admin.permission', 'en'),
(1372, 'admin.permission.add_new_title', 'Tạo quyền', 'admin.permission', 'vi'),
(1373, 'admin.permission.add_new_title', 'Create permission', 'admin.permission', 'en'),
(1374, 'admin.backup.title', 'Danh sách sao lưu', 'admin.backup', 'vi'),
(1375, 'admin.backup.title', 'Backup list', 'admin.backup', 'en'),
(1376, 'admin.backup.processing', 'Đang xử lý...', 'admin.backup', 'vi'),
(1377, 'admin.backup.processing', 'Processing...', 'admin.backup', 'en'),
(1378, 'admin.backup.guide', '<span class=\"text-danger\">Chú ý: Bạn cần phải cài đặt đường dẫn hệ thống chính xác. Xem hướng dẫn <a target=_new href=\"https://s-cart.org/guide/backup.html?lang=vi\">TẠI ĐÂY</a></span>', 'admin.backup', 'vi'),
(1379, 'admin.backup.generate_now', 'Tạo một backup ngay', 'admin.backup', 'vi'),
(1380, 'admin.backup.manager', 'Quản lý sao lưu', 'admin.backup', 'vi'),
(1381, 'admin.backup.name', 'Tên file', 'admin.backup', 'vi'),
(1382, 'admin.backup.sort', 'Thứ tự', 'admin.backup', 'vi'),
(1383, 'admin.backup.date', 'Thời gian', 'admin.backup', 'vi'),
(1384, 'admin.backup.size', 'Kích thước', 'admin.backup', 'vi'),
(1385, 'admin.backup.download', 'Tải về', 'admin.backup', 'vi'),
(1386, 'admin.backup.remove', 'Gỡ bỏ', 'admin.backup', 'vi'),
(1387, 'admin.backup.restore', 'Phục hồi', 'admin.backup', 'vi'),
(1388, 'admin.backup.remove_success', 'Xóa file thành công!', 'admin.backup', 'vi'),
(1389, 'admin.backup.restore_success', 'Phục hồi dữ liệu thành công!', 'admin.backup', 'vi'),
(1390, 'admin.backup.generate_success', 'Tạo file backup thành công!', 'admin.backup', 'vi'),
(1391, 'admin.backup.limit_backup', 'Bạn chỉ được tạo tối đa 10 bản sao lưu!', 'admin.backup', 'vi'),
(1392, 'admin.backup.guide', '<span class=\"text-danger\">NOTE: To use MySQL server on the command line, you must have the correct system path. This is usually done automatically. Read document in <a target=_new href=\"https://s-cart.org/guide/backup.html\">HERE</a></span>', 'admin.backup', 'en'),
(1393, 'admin.backup.generate_now', 'Gererate a backup now', 'admin.backup', 'en'),
(1394, 'admin.backup.manager', 'Backup management', 'admin.backup', 'en'),
(1395, 'admin.backup.name', 'File name', 'admin.backup', 'en'),
(1396, 'admin.backup.sort', 'Sort', 'admin.backup', 'en'),
(1397, 'admin.backup.date', 'Date', 'admin.backup', 'en'),
(1398, 'admin.backup.size', 'Size', 'admin.backup', 'en'),
(1399, 'admin.backup.download', 'Download', 'admin.backup', 'en'),
(1400, 'admin.backup.remove', 'Remove', 'admin.backup', 'en'),
(1401, 'admin.backup.restore', 'Restore', 'admin.backup', 'en'),
(1402, 'admin.backup.remove_success', 'Remove successful!', 'admin.backup', 'en'),
(1403, 'admin.backup.restore_success', 'Restore successful!', 'admin.backup', 'en'),
(1404, 'admin.backup.generate_success', 'Create successful backup file!', 'admin.backup', 'en'),
(1405, 'admin.backup.limit_backup', 'You cannot create more than 10 copies', 'admin.backup', 'en'),
(1406, 'admin.banner.type', 'Loại', 'admin.banner', 'vi'),
(1407, 'admin.banner.type', 'Type', 'admin.banner', 'en'),
(1408, 'admin.banner.add_new', 'Thêm mới banner', 'admin.banner', 'vi'),
(1409, 'admin.banner.add_new', 'Add new banner', 'admin.banner', 'en'),
(1410, 'admin.banner.image', 'Hình ảnh', 'admin.banner', 'vi'),
(1411, 'admin.banner.image', 'Image', 'admin.banner', 'en'),
(1412, 'admin.banner.title', 'Tiêu đề', 'admin.banner', 'vi'),
(1413, 'admin.banner.title', 'Title', 'admin.banner', 'en'),
(1414, 'admin.banner.url', 'URL', 'admin.banner', 'vi'),
(1415, 'admin.banner.url', 'URL', 'admin.banner', 'en'),
(1416, 'admin.banner.sort', 'Thứ tự', 'admin.banner', 'vi'),
(1417, 'admin.banner.sort', 'Sort', 'admin.banner', 'en'),
(1418, 'admin.banner.status', 'Trạng thái', 'admin.banner', 'vi'),
(1419, 'admin.banner.status', 'Status', 'admin.banner', 'en'),
(1420, 'admin.banner.click', 'Bấm chuột', 'admin.banner', 'vi'),
(1421, 'admin.banner.click', 'Click', 'admin.banner', 'en'),
(1422, 'admin.banner.target', 'Target', 'admin.banner', 'vi'),
(1423, 'admin.banner.target', 'Target', 'admin.banner', 'en'),
(1424, 'admin.banner.select_target', 'Chọn target', 'admin.banner', 'vi'),
(1425, 'admin.banner.select_target', 'Select target', 'admin.banner', 'en'),
(1426, 'admin.banner.list', 'Danh sách banner', 'admin.banner', 'vi'),
(1427, 'admin.banner.list', 'Banner list', 'admin.banner', 'en'),
(1428, 'admin.banner_type.list', 'Loại banner', 'admin.banner', 'vi'),
(1429, 'admin.banner_type.list', 'Banner type list', 'admin.banner', 'en'),
(1430, 'admin.banner_type.add_new_title', 'Thêm loại mới', 'admin.banner', 'vi'),
(1431, 'admin.banner_type.add_new_title', 'Add new type', 'admin.banner', 'en'),
(1432, 'admin.banner_type.code', 'Mã', 'admin.banner', 'vi'),
(1433, 'admin.banner_type.code', 'Code', 'admin.banner', 'en'),
(1434, 'admin.banner_type.name', 'Tên', 'admin.banner', 'vi'),
(1435, 'admin.banner_type.name', 'Name', 'admin.banner', 'en'),
(1436, 'admin.brand.list', 'Danh sách nhãn hiệu', 'admin.brand', 'vi'),
(1437, 'admin.brand.list', 'Brand list', 'admin.brand', 'en'),
(1438, 'admin.brand.add_new_title', 'Thêm mới nhãn hiệu', 'admin.brand', 'vi'),
(1439, 'admin.brand.add_new_title', 'Add new brand', 'admin.brand', 'en'),
(1440, 'admin.brand.image', 'Hình ảnh', 'admin.brand', 'vi'),
(1441, 'admin.brand.image', 'Image', 'admin.brand', 'en'),
(1442, 'admin.brand.name', 'Tên', 'admin.brand', 'vi'),
(1443, 'admin.brand.name', 'Name', 'admin.brand', 'en'),
(1444, 'admin.brand.sort', 'Thứ tự', 'admin.brand', 'vi'),
(1445, 'admin.brand.sort', 'Sort', 'admin.brand', 'en'),
(1446, 'admin.brand.status', 'Trạng thái', 'admin.brand', 'vi'),
(1447, 'admin.brand.status', 'Status', 'admin.brand', 'en'),
(1448, 'admin.brand.alias', 'Alias', 'admin.brand', 'vi'),
(1449, 'admin.brand.alias', 'Alias', 'admin.brand', 'en'),
(1450, 'admin.brand.url', 'Url', 'admin.brand', 'vi'),
(1451, 'admin.brand.url', 'Url', 'admin.brand', 'en'),
(1452, 'admin.brand.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'vi'),
(1453, 'admin.brand.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'en'),
(1454, 'admin.cache.title', 'Cấu hình bộ nhớ Cache', 'admin.cache', 'vi'),
(1455, 'admin.cache.title', 'config cache manager', 'admin.cache', 'en'),
(1456, 'admin.cache.cache_clear_processing', 'Đang xóa Cache', 'admin.cache', 'vi'),
(1457, 'admin.cache.cache_clear_processing', 'Cache clearing', 'admin.cache', 'en'),
(1458, 'admin.cache.cache_status', 'Trạng thái', 'admin.cache', 'vi'),
(1459, 'admin.cache.cache_status', 'Status', 'admin.cache', 'en'),
(1460, 'admin.cache.cache_clear_all', 'Xóa tất cả Cache', 'admin.cache', 'vi'),
(1461, 'admin.cache.cache_clear_all', 'Clear all cache', 'admin.cache', 'en'),
(1462, 'admin.cache.cache_clear_success', 'Đã xóa cache xong', 'admin.cache', 'vi');
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(1463, 'admin.cache.cache_clear_success', 'Clear cache success', 'admin.cache', 'en'),
(1464, 'admin.cache.cache_refresh', 'Làm mới cache', 'admin.cache', 'vi'),
(1465, 'admin.cache.cache_refresh', 'Cache refresh', 'admin.cache', 'en'),
(1466, 'admin.cache.cache_clear', 'Xóa cache', 'admin.cache', 'vi'),
(1467, 'admin.cache.cache_clear', 'Clear cache', 'admin.cache', 'en'),
(1468, 'admin.cache.cache_all', 'Cache tất cả', 'admin.cache', 'vi'),
(1469, 'admin.cache.cache_all', 'Cache all', 'admin.cache', 'en'),
(1470, 'admin.cache.cache_time', 'Thời gian cache (giây)', 'admin.cache', 'vi'),
(1471, 'admin.cache.cache_time', 'Cache time (s)', 'admin.cache', 'en'),
(1472, 'admin.cache.value', 'Giá trị', 'admin.cache', 'vi'),
(1473, 'admin.cache.value', 'Value', 'admin.cache', 'en'),
(1474, 'admin.cache.field', 'Trường', 'admin.cache', 'vi'),
(1475, 'admin.cache.field', 'Field', 'admin.cache', 'en'),
(1476, 'admin.cache.cache_category', 'Cache Danh mục sản phẩm', 'admin.cache', 'vi'),
(1477, 'admin.cache.cache_product', 'Cache Sản phẩm', 'admin.cache', 'vi'),
(1478, 'admin.cache.cache_news', 'Cache Tin tức/Blog', 'admin.cache', 'vi'),
(1479, 'admin.cache.cache_category_cms', 'Cache Danh mục CMS', 'admin.cache', 'vi'),
(1480, 'admin.cache.cache_content_cms', 'Cache Nội dung CMS', 'admin.cache', 'vi'),
(1481, 'admin.cache.cache_page', 'Cache Trang viết', 'admin.cache', 'vi'),
(1482, 'admin.cache.cache_store', 'Cache Cửa hàng', 'admin.cache', 'vi'),
(1483, 'admin.cache.cache_country', 'Cache Quốc gia', 'admin.cache', 'vi'),
(1484, 'admin.cache.cache_category', 'Cache categoty', 'admin.cache', 'en'),
(1485, 'admin.cache.cache_product', 'Cache product', 'admin.cache', 'en'),
(1486, 'admin.cache.cache_news', 'Cache News/Blog', 'admin.cache', 'en'),
(1487, 'admin.cache.cache_category_cms', 'Cache Category CMS', 'admin.cache', 'en'),
(1488, 'admin.cache.cache_content_cms', 'Cache CMS content', 'admin.cache', 'en'),
(1489, 'admin.cache.cache_page', 'Cache page', 'admin.cache', 'en'),
(1490, 'admin.cache.cache_store', 'Cache Store', 'admin.cache', 'en'),
(1491, 'admin.cache.cache_country', 'Cache country', 'admin.cache', 'en'),
(1492, 'admin.category.list', 'Danh sách danh mục', 'admin.category', 'vi'),
(1493, 'admin.category.list', 'Category list', 'admin.category', 'en'),
(1494, 'admin.category.add_new_title', 'Thêm mới danh mục', 'admin.category', 'vi'),
(1495, 'admin.category.add_new_title', 'Add new category', 'admin.category', 'en'),
(1496, 'admin.category.add_new_des', 'Thêm mới', 'admin.category', 'vi'),
(1497, 'admin.category.add_new_des', 'Add new', 'admin.category', 'en'),
(1498, 'admin.category.image', 'Hình ảnh', 'admin.category', 'vi'),
(1499, 'admin.category.image', 'Image', 'admin.category', 'en'),
(1500, 'admin.category.title', 'Tên', 'admin.category', 'vi'),
(1501, 'admin.category.title', 'Name', 'admin.category', 'en'),
(1502, 'admin.category.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'vi'),
(1503, 'admin.category.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'vi'),
(1504, 'admin.category.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'en'),
(1505, 'admin.category.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'en'),
(1506, 'admin.category.keyword', 'Từ khóa', 'admin.category', 'vi'),
(1507, 'admin.category.keyword', 'Keyword', 'admin.category', 'en'),
(1508, 'admin.category.description', 'Mô tả', 'admin.category', 'vi'),
(1509, 'admin.category.description', 'Description', 'admin.category', 'en'),
(1510, 'admin.category.top', 'Công cộng', 'admin.category', 'vi'),
(1511, 'admin.category.top', 'Public', 'admin.category', 'en'),
(1512, 'admin.category.parent', 'Cấp cha', 'admin.category', 'vi'),
(1513, 'admin.category.parent', 'Parent', 'admin.category', 'en'),
(1514, 'admin.category.sort', 'Thứ tự', 'admin.category', 'vi'),
(1515, 'admin.category.sort', 'Sort', 'admin.category', 'en'),
(1516, 'admin.category.status', 'Trạng thái', 'admin.category', 'vi'),
(1517, 'admin.category.status', 'Status', 'admin.category', 'en'),
(1518, 'admin.category.select_category', 'Chọn danh mục', 'admin.category', 'vi'),
(1519, 'admin.category.select_category', 'Select category', 'admin.category', 'en'),
(1520, 'admin.category.top_help', 'Danh mục này sẽ hiển thị ra ngoài trang chủ. Mặc định chỉ dành cho những danh mục Root.', 'admin.category', 'vi'),
(1521, 'admin.category.top_help', 'This category will display outside the homepage. The default is for Root items only.', 'admin.category', 'en'),
(1522, 'admin.config.webhook', 'Webhook', 'admin.config', 'vi'),
(1523, 'admin.config.webhook', 'Webhook', 'admin.config', 'en'),
(1524, 'admin.config.setting_website', 'Cài đặt website', 'admin.config', 'vi'),
(1525, 'admin.config.setting_website', 'Setting website', 'admin.config', 'en'),
(1526, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Gửi tới Slack webhook', 'admin.config', 'vi'),
(1527, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Report error to Slack webhook', 'admin.config', 'en'),
(1528, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Gửi tới Google webhook', 'admin.config', 'vi'),
(1529, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Report error to Google webhook', 'admin.config', 'en'),
(1530, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Gửi tới Chatword webhook', 'admin.config', 'vi'),
(1531, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Report error to Chatword webhook', 'admin.config', 'en'),
(1532, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'vi'),
(1533, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'en'),
(1534, 'admin.currency.list', 'Danh sách tiền tệ', 'admin.currency', 'vi'),
(1535, 'admin.currency.list', 'Currencies list', 'admin.currency', 'en'),
(1536, 'admin.currency.name', 'Tên', 'admin.currency', 'vi'),
(1537, 'admin.currency.name', 'Name', 'admin.currency', 'en'),
(1538, 'admin.currency.code', 'Mã', 'admin.currency', 'vi'),
(1539, 'admin.currency.code', 'Code', 'admin.currency', 'en'),
(1540, 'admin.currency.symbol', 'Ký hiệu', 'admin.currency', 'vi'),
(1541, 'admin.currency.symbol', 'Symbol', 'admin.currency', 'en'),
(1542, 'admin.currency.exchange_rate', 'Tỉ giá', 'admin.currency', 'vi'),
(1543, 'admin.currency.exchange_rate', 'Exchange rate', 'admin.currency', 'en'),
(1544, 'admin.currency.precision', 'Số chữ số thập phân', 'admin.currency', 'vi'),
(1545, 'admin.currency.precision', 'Precision', 'admin.currency', 'en'),
(1546, 'admin.currency.symbol_first', 'Hiện kí hiệu đầu tiên', 'admin.currency', 'vi'),
(1547, 'admin.currency.symbol_first', 'Symbol first', 'admin.currency', 'en'),
(1548, 'admin.currency.thousands', 'Ngăn cách phần nghìn', 'admin.currency', 'vi'),
(1549, 'admin.currency.thousands', 'Thousands separator', 'admin.currency', 'en'),
(1550, 'admin.currency.status', 'Trạng thái', 'admin.currency', 'vi'),
(1551, 'admin.currency.status', 'Status', 'admin.currency', 'en'),
(1552, 'admin.currency.sort', 'Thứ tự', 'admin.currency', 'vi'),
(1553, 'admin.currency.sort', 'Sort', 'admin.currency', 'en'),
(1554, 'admin.currency.add_new_title', 'Thêm mới tiền tệ', 'admin.currency', 'vi'),
(1555, 'admin.currency.add_new_title', 'Add new currency', 'admin.currency', 'en'),
(1556, 'admin.currency.add_new_des', 'Thêm mới', 'admin.currency', 'vi'),
(1557, 'admin.currency.add_new_des', 'Add new', 'admin.currency', 'en'),
(1558, 'admin.custom_field.title', 'Field dữ liệu tùy chỉnh', 'admin.custom_field', 'vi'),
(1559, 'admin.custom_field.title', 'Custom field', 'admin.custom_field', 'en'),
(1560, 'admin.custom_field.list', 'Danh sách field tùy chỉnh', 'admin.custom_field', 'vi'),
(1561, 'admin.custom_field.list', 'Custom field list', 'admin.custom_field', 'en'),
(1562, 'admin.custom_field.status', 'Trạng thái', 'admin.custom_field', 'vi'),
(1563, 'admin.custom_field.status', 'Status', 'admin.custom_field', 'en'),
(1564, 'admin.custom_field.sort', 'Thứ tự', 'admin.custom_field', 'vi'),
(1565, 'admin.custom_field.sort', 'Sort', 'admin.custom_field', 'en'),
(1566, 'admin.custom_field.add_new_title', 'Thêm mới field', 'admin.custom_field', 'vi'),
(1567, 'admin.custom_field.add_new_title', 'Add new field', 'admin.custom_field', 'en'),
(1568, 'admin.custom_field.add_new_des', 'Thêm mới', 'admin.custom_field', 'vi'),
(1569, 'admin.custom_field.add_new_des', 'Add new', 'admin.custom_field', 'en'),
(1570, 'admin.custom_field.name', 'Tên', 'admin.custom_field', 'vi'),
(1571, 'admin.custom_field.name', 'Name', 'admin.custom_field', 'en'),
(1572, 'admin.custom_field.code', 'Mã', 'admin.custom_field', 'vi'),
(1573, 'admin.custom_field.code', 'Code', 'admin.custom_field', 'en'),
(1574, 'admin.custom_field.type', 'Loại', 'admin.custom_field', 'vi'),
(1575, 'admin.custom_field.type', 'Type', 'admin.custom_field', 'en'),
(1576, 'admin.custom_field.required', 'Bắt buộc', 'admin.custom_field', 'vi'),
(1577, 'admin.custom_field.required', 'Required', 'admin.custom_field', 'en'),
(1578, 'admin.custom_field.option', 'Tùy chọn', 'admin.custom_field', 'vi'),
(1579, 'admin.custom_field.option', 'Option', 'admin.custom_field', 'en'),
(1580, 'admin.custom_field.default', 'Mặc định', 'admin.custom_field', 'vi'),
(1581, 'admin.custom_field.default', 'Default', 'admin.custom_field', 'en'),
(1582, 'admin.custom_field.default_help', 'Định dạng cho \"Tùy chọn\" là Radio hoặc Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'vi'),
(1583, 'admin.custom_field.default_help', 'Format for \"Option\" is Radio or Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'en'),
(1584, 'admin.env.APP_DEBUG', 'DEBUG mode', 'admin.env', 'en'),
(1585, 'admin.env.APP_URL', 'URL app', 'admin.env', 'en'),
(1586, 'admin.env.APP_ENV', 'Environment mode', 'admin.env', 'en'),
(1587, 'admin.env.ADMIN_PREFIX', 'Admin prefix', 'admin.env', 'en'),
(1588, 'admin.env.ADMIN_NAME', 'Admin name', 'admin.env', 'en'),
(1589, 'admin.env.ADMIN_LOGO', 'Admin logo', 'admin.env', 'en'),
(1590, 'admin.env.ADMIN_LOGO_MINI', 'Admin logo mini', 'admin.env', 'en'),
(1591, 'admin.env.ADMIN_TITLE', 'Admin title', 'admin.env', 'en'),
(1592, 'admin.env.ADMIN_LOG', 'Admin log', 'admin.env', 'en'),
(1593, 'admin.env.field', 'Field', 'admin.env', 'en'),
(1594, 'admin.env.value', 'Value', 'admin.env', 'en'),
(1595, 'admin.env.title', 'Config environment', 'admin.env', 'en'),
(1596, 'admin.env.SUFFIX_URL', 'Suffix URL', 'admin.env', 'en'),
(1597, 'admin.env.PREFIX_BRAND', 'Prefix url BRAND', 'admin.env', 'en'),
(1598, 'admin.env.PREFIX_SUPPLIER', 'Prefix url SUPPLIER', 'admin.env', 'en'),
(1599, 'admin.env.PREFIX_CATEGORY', 'Prefix url CATEGORY ', 'admin.env', 'en'),
(1600, 'admin.env.PREFIX_SUB_CATEGORY', 'Prefix url sub CATEGORY', 'admin.env', 'en'),
(1601, 'admin.env.PREFIX_PRODUCT', 'Prefix url PRODUCT', 'admin.env', 'en'),
(1602, 'admin.env.PREFIX_SEARCH', 'Prefix url SEARCH', 'admin.env', 'en'),
(1603, 'admin.env.PREFIX_CONTACT', 'Prefix url CONTACT', 'admin.env', 'en'),
(1604, 'admin.env.PREFIX_NEWS', 'Prefix url NEWS', 'admin.env', 'en'),
(1605, 'admin.env.PREFIX_MEMBER', 'Prefix url CUSTOMER', 'admin.env', 'en'),
(1606, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Prefix url CUSTOMER ORDER', 'admin.env', 'en'),
(1607, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Prefix url CHANGE PASSWOD', 'admin.env', 'en'),
(1608, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Prefix url CHANGE INFO', 'admin.env', 'en'),
(1609, 'admin.env.PREFIX_CMS_CATEGORY', 'Prefix url CMS CATEGORY', 'admin.env', 'en'),
(1610, 'admin.env.PREFIX_CMS_ENTRY', 'Prefix url CMS ENTRY', 'admin.env', 'en'),
(1611, 'admin.env.PREFIX_CART_WISHLIST', 'Prefix url WISHLIST', 'admin.env', 'en'),
(1612, 'admin.env.PREFIX_CART_COMPARE', 'Prefix url COMPARE', 'admin.env', 'en'),
(1613, 'admin.env.PREFIX_CART_DEFAULT', 'Prefix url CART', 'admin.env', 'en'),
(1614, 'admin.env.PREFIX_CART_CHECKOUT', 'Prefix url CHECKOUT', 'admin.env', 'en'),
(1615, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Prefix url CHECKOUT CONFIRM', 'admin.env', 'en'),
(1616, 'admin.env.PREFIX_ORDER_SUCCESS', 'Prefix url ORDER SUCCESS', 'admin.env', 'en'),
(1617, 'admin.env.PREFIX_SHOP', 'Link shop', 'admin.env', 'en'),
(1618, 'admin.env.ADMIN_FOOTER_OFF', 'Hidden footer of page admin', 'admin.env', 'en'),
(1619, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Customize template admin', 'admin.env', 'en'),
(1620, 'admin.env.APP_DEBUG', 'Chế độ sửa lỗi', 'admin.env', 'vi'),
(1621, 'admin.env.APP_URL', 'URL website', 'admin.env', 'vi'),
(1622, 'admin.env.APP_ENV', 'Môi trường', 'admin.env', 'vi'),
(1623, 'admin.env.ADMIN_PREFIX', 'Tiền tố admin', 'admin.env', 'vi'),
(1624, 'admin.env.ADMIN_NAME', 'Tên trang admin', 'admin.env', 'vi'),
(1625, 'admin.env.ADMIN_LOGO', 'Logo admin', 'admin.env', 'vi'),
(1626, 'admin.env.ADMIN_LOGO_MINI', 'Logo nhỏ', 'admin.env', 'vi'),
(1627, 'admin.env.ADMIN_TITLE', 'Tiêu đề admin', 'admin.env', 'vi'),
(1628, 'admin.env.ADMIN_LOG', 'Lịch sử truy cập admin', 'admin.env', 'vi'),
(1629, 'admin.env.field', 'Trường dữ liệu', 'admin.env', 'vi'),
(1630, 'admin.env.value', 'Giá trị', 'admin.env', 'vi'),
(1631, 'admin.env.title', 'Cấu hình môi trường', 'admin.env', 'vi'),
(1632, 'admin.env.SUFFIX_URL', 'Hậu tố URL', 'admin.env', 'vi'),
(1633, 'admin.env.PREFIX_BRAND', 'Tiền tố trang BRAND', 'admin.env', 'vi'),
(1634, 'admin.env.PREFIX_SUPPLIER', 'Tiền tố trang SUPPLIER', 'admin.env', 'vi'),
(1635, 'admin.env.PREFIX_CATEGORY', 'Tiền tố trang CATEGORY ', 'admin.env', 'vi'),
(1636, 'admin.env.PREFIX_SUB_CATEGORY', 'Tiền tố trang CATEGORY nhỏ', 'admin.env', 'vi'),
(1637, 'admin.env.PREFIX_PRODUCT', 'Tiền tố trang PRODUCT', 'admin.env', 'vi'),
(1638, 'admin.env.PREFIX_SEARCH', 'Tiền tố trang SEARCH', 'admin.env', 'vi'),
(1639, 'admin.env.PREFIX_CONTACT', 'Tiền tố trang CONTACT', 'admin.env', 'vi'),
(1640, 'admin.env.PREFIX_NEWS', 'Tiền tố trang NEWS', 'admin.env', 'vi'),
(1641, 'admin.env.PREFIX_MEMBER', 'Tiền tố trang CUSTOMER', 'admin.env', 'vi'),
(1642, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Tiền tố trang CUSTOMER ORDER', 'admin.env', 'vi'),
(1643, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Tiền tố trang CHANGE PASSWOD', 'admin.env', 'vi'),
(1644, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Tiền tố trang CHANGE INFO', 'admin.env', 'vi'),
(1645, 'admin.env.PREFIX_CMS_CATEGORY', 'Tiền tố trang CMS CATEGORY', 'admin.env', 'vi'),
(1646, 'admin.env.PREFIX_CMS_ENTRY', 'Tiền tố trang CMS ENTRY', 'admin.env', 'vi'),
(1647, 'admin.env.PREFIX_CART_WISHLIST', 'Tiền tố trang WISHLIST', 'admin.env', 'vi'),
(1648, 'admin.env.PREFIX_CART_COMPARE', 'Tiền tố trang COMPARE', 'admin.env', 'vi'),
(1649, 'admin.env.PREFIX_CART_DEFAULT', 'Tiền tố trang CART', 'admin.env', 'vi'),
(1650, 'admin.env.PREFIX_CART_CHECKOUT', 'Tiền tố trang CHECKOUT', 'admin.env', 'vi'),
(1651, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Tiền tố trang CHECKOUT CONFIRM', 'admin.env', 'vi'),
(1652, 'admin.env.PREFIX_ORDER_SUCCESS', 'Tiền tố trang ORDER SUCCESS', 'admin.env', 'vi'),
(1653, 'admin.env.PREFIX_SHOP', 'Link Cửa hàng', 'admin.env', 'vi'),
(1654, 'admin.env.ADMIN_FOOTER_OFF', 'Ẩn footer của trang admin', 'admin.env', 'vi'),
(1655, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Tùy chỉnh giao diện Admin', 'admin.env', 'vi'),
(1656, 'admin.email_template.name', 'Tên', 'admin.email_template', 'vi'),
(1657, 'admin.email_template.list', 'Danh sách mẫu email', 'admin.email_template', 'vi'),
(1658, 'admin.email_template.list', 'Email template list', 'admin.email_template', 'en'),
(1659, 'admin.email_template.status', 'Trạng thái', 'admin.email_template', 'vi'),
(1660, 'admin.email_template.group', 'Nhóm', 'admin.email_template', 'vi'),
(1661, 'admin.email_template.html', 'HTML', 'admin.email_template', 'vi'),
(1662, 'admin.email_template.text', 'Nội dung', 'admin.email_template', 'vi'),
(1663, 'admin.email_template.name', 'Name', 'admin.email_template', 'en'),
(1664, 'admin.email_template.lits', 'Email template list', 'admin.email_template', 'en'),
(1665, 'admin.email_template.group', 'Group', 'admin.email_template', 'en'),
(1666, 'admin.email_template.text', 'Content', 'admin.email_template', 'en'),
(1667, 'admin.email_template.html', 'HTML', 'admin.email_template', 'en'),
(1668, 'admin.email_template.status', 'Status', 'admin.email_template', 'en'),
(1669, 'admin.email_template.add_new_title', 'Add template', 'admin.email_template', 'en'),
(1670, 'admin.email_template.add_new_des', 'Create a new template', 'admin.email_template', 'en'),
(1671, 'admin.email_template.variable_support', 'Variables support:', 'admin.email_template', 'en'),
(1672, 'admin.email_template.add_new_title', 'Tạo template', 'admin.email_template', 'vi'),
(1673, 'admin.email_template.add_new_des', 'Tạo mới template', 'admin.email_template', 'vi'),
(1674, 'admin.email_template.variable_support', 'Các biến hỗ trợ', 'admin.email_template', 'vi'),
(1675, 'admin.language.list', 'Language list', 'admin.language', 'en'),
(1676, 'admin.language.list', 'Danh sách ngôn ngữ', 'admin.language', 'vi'),
(1677, 'admin.language.select_lang', 'Select language', 'admin.language', 'en'),
(1678, 'admin.language.select_lang', 'Chọn ngôn ngữ', 'admin.language', 'vi'),
(1679, 'admin.language.select_position', 'Select position', 'admin.language', 'en'),
(1680, 'admin.language.select_position', 'Chọn vị trí ngôn ngữ', 'admin.language', 'vi'),
(1681, 'admin.language.name', 'Name', 'admin.language', 'en'),
(1682, 'admin.language.icon', 'Icon', 'admin.language', 'en'),
(1683, 'admin.language.code', 'Code', 'admin.language', 'en'),
(1684, 'admin.language.sort', 'Sort', 'admin.language', 'en'),
(1685, 'admin.language.status', 'Status', 'admin.language', 'en'),
(1686, 'admin.language.layout_rtl', 'Layout RTL', 'admin.language', 'en'),
(1687, 'admin.language.add_new_title', 'Add language', 'admin.language', 'en'),
(1688, 'admin.language.add_new_des', 'Create a new language', 'admin.language', 'en'),
(1689, 'admin.language.name', 'Tên ngôn ngữ', 'admin.language', 'vi'),
(1690, 'admin.language.icon', 'Icon', 'admin.language', 'vi'),
(1691, 'admin.language.code', 'Code', 'admin.language', 'vi'),
(1692, 'admin.language.sort', 'Thứ tự', 'admin.language', 'vi'),
(1693, 'admin.language.status', 'Status', 'admin.language', 'vi'),
(1694, 'admin.language.layout_rtl', 'Giao diện RTL', 'admin.language', 'vi'),
(1695, 'admin.language.add_new_title', 'Tạo ngôn ngữ', 'admin.language', 'vi'),
(1696, 'admin.language.add_new_des', 'Tạo mới ngôn ngữ', 'admin.language', 'vi'),
(1697, 'admin.language_manager.title', 'Quản lý ngôn ngữ', 'admin.language', 'vi'),
(1698, 'admin.language_manager.title', 'Language manager', 'admin.language', 'en'),
(1699, 'admin.language_manager.add', 'Thêm giá trị mới', 'admin.language', 'vi'),
(1700, 'admin.language_manager.add', 'Add new record language', 'admin.language', 'en'),
(1701, 'admin.language_manager.position', 'Vị trí mới ngôn ngữ', 'admin.language', 'vi'),
(1702, 'admin.language_manager.position', 'Position language', 'admin.language', 'en'),
(1703, 'admin.language_manager.new_position', 'Hoặc thêm vị trí mới', 'admin.language', 'vi'),
(1704, 'admin.language_manager.new_position', 'Or add new position', 'admin.language', 'en'),
(1705, 'admin.language_manager.code', 'Mã code', 'admin.language', 'vi'),
(1706, 'admin.language_manager.code', 'Code', 'admin.language', 'en'),
(1707, 'admin.language_manager.text', 'Nội dung ngôn ngữ', 'admin.language', 'vi'),
(1708, 'admin.language_manager.text', 'Language content', 'admin.language', 'en'),
(1709, 'admin.language_manager.text_help', 'Mặc định, giá trị mới chỉ được thêm cho tiếng Anh. <br>Để cập nhật cho ngôn ngữ khác, tìm giá trị mới thêm và chỉnh sửa <a href=\":link\">Ở ĐÂY</a>', 'admin.language', 'vi'),
(1710, 'admin.language_manager.text_help', 'By default, the new value is only added for English. <br>To update for other languages, find the newly added value and edit <a href=\":link\">HERE</a>', 'admin.language', 'en'),
(1711, 'admin.language_manager.select_position', 'Chọn vị trí ngôn ngữ', 'admin.language', 'vi'),
(1712, 'admin.language_manager.select_position', 'Select position of language', 'admin.language', 'en'),
(1713, 'admin.menu.list', 'Quản lý menu', 'admin.emnu', 'vi'),
(1714, 'admin.menu.create', 'Tạo mới menu', 'admin.emnu', 'vi'),
(1715, 'admin.menu.edit', 'Chỉnh sửa menu', 'admin.emnu', 'vi'),
(1716, 'admin.menu.error_have_child', 'Cần xóa các menu bên trong trước khi làm điều này!', 'admin.emnu', 'vi'),
(1717, 'admin.menu.parent', 'Cha', 'admin.emnu', 'vi'),
(1718, 'admin.menu.title', 'Tiêu đề', 'admin.emnu', 'vi'),
(1719, 'admin.menu.icon', 'Icon', 'admin.emnu', 'vi'),
(1720, 'admin.menu.uri', 'URI', 'admin.emnu', 'vi'),
(1721, 'admin.menu.roles', 'Vai trò', 'admin.emnu', 'vi'),
(1722, 'admin.menu.permissions', 'Quyền', 'admin.emnu', 'vi'),
(1723, 'admin.menu.create_success', 'Tạo mới thành công!', 'admin.emnu', 'vi'),
(1724, 'admin.menu.edit_success', 'Cập nhật thành công!', 'admin.emnu', 'vi'),
(1725, 'admin.menu.sort', 'Thứ tự', 'admin.emnu', 'vi'),
(1726, 'admin.menu.list', 'Menu manager', 'admin.emnu', 'en'),
(1727, 'admin.menu.create', 'Create new menu', 'admin.emnu', 'en'),
(1728, 'admin.menu.edit', 'Edit menu', 'admin.emnu', 'en'),
(1729, 'admin.menu.error_have_child', 'Need to delete the internal menus before doing this!', 'admin.emnu', 'en'),
(1730, 'admin.menu.parent', 'Parent', 'admin.emnu', 'en'),
(1731, 'admin.menu.title', 'Title', 'admin.emnu', 'en'),
(1732, 'admin.menu.icon', 'Icon', 'admin.emnu', 'en'),
(1733, 'admin.menu.uri', 'URI', 'admin.emnu', 'en'),
(1734, 'admin.menu.roles', 'Roles', 'admin.emnu', 'en'),
(1735, 'admin.menu.permissions', 'Permissions', 'admin.emnu', 'en'),
(1736, 'admin.menu.create_success', 'Create new item success!', 'admin.emnu', 'en'),
(1737, 'admin.menu.edit_success', 'Edit item success!', 'admin.emnu', 'en'),
(1738, 'admin.menu.sort', 'Sort', 'admin.emnu', 'en'),
(1739, 'email.admin.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en'),
(1740, 'email.admin.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en'),
(1741, 'email.admin.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en'),
(1742, 'email.admin.forgot_password', 'Send email forgot', 'email.admin', 'en'),
(1743, 'email.admin.welcome_customer', 'Send email welcome', 'email.admin', 'en'),
(1744, 'email.admin.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en'),
(1745, 'email.admin.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en'),
(1746, 'email.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en'),
(1747, 'email.admin.other', 'Other', 'email.admin', 'en'),
(1748, 'email.admin.customer_verify', 'Send account verification email', 'email.admin', 'en'),
(1749, 'email.admin.order_success_to_admin', 'Gửi đơn hàng thành công cho admin', 'email.admin', 'vi'),
(1750, 'email.admin.order_success_to_cutomer_pdf', 'Gửi đơn hàng thành công cho khách kèm PDF', 'email.admin', 'vi'),
(1751, 'email.admin.order_success_to_cutomer', 'Gửi đơn hàng thành công cho khách', 'email.admin', 'vi'),
(1752, 'email.admin.forgot_password', 'Gửi mail quên mật khẩu', 'email.admin', 'vi'),
(1753, 'email.admin.welcome_customer', 'Gửi mail chào mừng', 'email.admin', 'vi'),
(1754, 'email.admin.contact_to_customer', 'Gửi mail form liên hệ cho khách', 'email.admin', 'vi'),
(1755, 'email.admin.contact_to_admin', 'Gửi mail form liên hệ cho admin', 'email.admin', 'vi'),
(1756, 'email.email_action_queue', 'Gửi mail qua hàng đợi <span class=\"text-red\">(*)</span>', 'email.admin', 'vi'),
(1757, 'email.admin.config_smtp', 'Cấu hình SMTP', 'email.admin', 'vi'),
(1758, 'email.admin.other', 'Loại khác', 'email.admin', 'vi'),
(1759, 'email.admin.customer_verify', 'Gửi email xác thực tài khoản', 'email.admin', 'vi'),
(1760, 'email.admin.config_mode', 'Config mode', 'email.admin', 'en'),
(1761, 'email.admin.config_smtp', 'Config SMTP', 'email.admin', 'en'),
(1762, 'email.admin.config_mode', 'Cấu hình mode', 'email.admin', 'vi'),
(1763, 'email.email_action.type', 'Action type', 'email.admin', 'en'),
(1764, 'email.email_action.mode', 'Action mode', 'email.admin', 'en'),
(1765, 'email.email_action.sort', 'Action sort', 'email.admin', 'en'),
(1766, 'email.email_action.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en'),
(1767, 'email.email_action.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en'),
(1768, 'email.email_action.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en'),
(1769, 'email.email_action.forgot_password', 'Send email forgot', 'email.admin', 'en'),
(1770, 'email.email_action.customer_verify', 'Customer verification', 'email.admin', 'en'),
(1771, 'email.email_action.welcome_customer', 'Send email welcome', 'email.admin', 'en'),
(1772, 'email.email_action.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en'),
(1773, 'email.email_action.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en'),
(1774, 'email.email_action.email_action_mode', 'ON/OFF send mail', 'email.admin', 'en'),
(1775, 'email.email_action.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en'),
(1776, 'email.email_action.email_action_smtp_mode', 'SMTP mode', 'email.admin', 'en'),
(1777, 'email.email_action.config_smtp', 'Config SMTP', 'email.admin', 'en'),
(1778, 'email.email_action.type', 'Loại gửi mail', 'email.admin', 'vi'),
(1779, 'email.email_action.mode', 'Chế độ', 'email.admin', 'vi'),
(1780, 'email.email_action.sort', 'Sắp xếp', 'email.admin', 'vi'),
(1781, 'email.email_action.order_success_to_admin', 'Gửi đơn hàng thành công cho admin', 'email.admin', 'vi'),
(1782, 'email.email_action.order_success_to_cutomer_pdf', 'Gửi đơn hàng thành công cho khách kèm PDF', 'email.admin', 'vi'),
(1783, 'email.email_action.order_success_to_cutomer', 'Gửi đơn hàng thành công cho khách', 'email.admin', 'vi'),
(1784, 'email.email_action.forgot_password', 'Gửi mail quên mật khẩu', 'email.admin', 'vi'),
(1785, 'email.email_action.welcome_customer', 'Gửi mail chào mừng', 'email.admin', 'vi'),
(1786, 'email.email_action.contact_to_customer', 'Gửi mail form liên hệ cho khách', 'email.admin', 'vi'),
(1787, 'email.email_action.contact_to_admin', 'Gửi mail form liên hệ cho admin', 'email.admin', 'vi'),
(1788, 'email.email_action.email_action_mode', 'Tắt/Mở chức năng gửi mail', 'email.admin', 'vi'),
(1789, 'email.email_action.email_action_queue', 'Gửi mail qua hàng đợi <span class=\"text-red\">(*)</span>', 'email.admin', 'vi'),
(1790, 'email.email_action.email_action_smtp_mode', 'Sử dụng SMTP', 'email.admin', 'vi'),
(1791, 'email.email_action.config_smtp', 'Cấu hình SMTP', 'email.admin', 'vi'),
(1792, 'email.email_action.customer_verify', 'Gửi email xác thực tài khoản', 'email.admin', 'vi'),
(1793, 'email.email_action.smtp_mode', 'Sử dụng cấu hình SMTP', 'email.admin', 'vi'),
(1794, 'email.email_action.smtp_mode', 'Use SMTP config', 'email.admin', 'en'),
(1795, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Email sẽ không được gửi trực tiếp, mà thông qua hàng đợi. Bạn cần phải cài đặt \"artisan schedule:run\" trước,  chi tiết <a href=\"https://s-cart.org/docs/master/email.html\">TẠI ĐÂY</a>', 'email.admin', 'vi'),
(1796, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Emails will not be sent directly, but through a queue. You need to set up \"artisan schedule: run\" first, details <a href=\"https://s-cart.org/docs/master/email.html\">HERE</a>', 'email.admin', 'en'),
(1797, 'email.config_smtp.smtp_host', 'SMTP host', 'email.admin', 'en'),
(1798, 'email.config_smtp.smtp_user', 'SMTP user', 'email.admin', 'en'),
(1799, 'email.config_smtp.smtp_password', 'SMTP password', 'email.admin', 'en'),
(1800, 'email.config_smtp.smtp_security', 'SMTP security', 'email.admin', 'en'),
(1801, 'email.config_smtp.smtp_port', 'SMTP port', 'email.admin', 'en'),
(1802, 'email.config_smtp.smtp_name', 'Email name', 'email.admin', 'en'),
(1803, 'email.config_smtp.smtp_from', 'Send mail from', 'email.admin', 'en'),
(1804, 'email.config_smtp.smtp_host', 'Server SMTP', 'email.admin', 'vi'),
(1805, 'email.config_smtp.smtp_user', 'Tài khoản SMTP', 'email.admin', 'vi'),
(1806, 'email.config_smtp.smtp_password', 'Mật khẩu SMTP', 'email.admin', 'vi'),
(1807, 'email.config_smtp.smtp_security', 'Bảo mật SMTP', 'email.admin', 'vi'),
(1808, 'email.config_smtp.smtp_port', 'Cổng kết nối SMTP', 'email.admin', 'vi'),
(1809, 'email.config_smtp.smtp_name', 'Tên gửi mail', 'email.admin', 'vi'),
(1810, 'email.config_smtp.smtp_from', 'Địa chỉ email gửi', 'email.admin', 'vi'),
(1811, 'email.welcome', 'Chào mừng!', 'email', 'vi'),
(1812, 'email.welcome', 'Welcome!', 'email', 'en'),
(1813, 'email.msg_goodbye', 'Trân trọng!', 'email', 'vi'),
(1814, 'email.msg_goodbye', 'Best regards!', 'email', 'en'),
(1815, 'email.forgot_password.title', 'Hello!', 'email.forgot_password', 'en'),
(1816, 'email.forgot_password.reset_button', 'Reset password', 'email.forgot_password', 'en'),
(1817, 'email.forgot_password.reason_sendmail', 'You are receiving this email because we received a password reset request for your account.', 'email.forgot_password', 'en'),
(1818, 'email.forgot_password.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not request a password reset, no further action is required.', 'email.forgot_password', 'en'),
(1819, 'email.forgot_password.note_access_link', 'If you’re having trouble clicking the \":reset_button\" button, copy and paste the URL below into your web browser :url', 'email.forgot_password', 'en'),
(1820, 'email.forgot_password.title', 'Xin chào!', 'email.forgot_password', 'vi'),
(1821, 'email.forgot_password.reset_button', 'Tạo lại mật khẩu', 'email.forgot_password', 'vi'),
(1822, 'email.forgot_password.reason_sendmail', 'Bạn đang nhận email này vì chúng tôi nhận được yêu cầu thiết lập lại mật khẩu cho tài khoản của bạn.', 'email.forgot_password', 'vi'),
(1823, 'email.forgot_password.note_sendmail', 'Liên kết mật khẩu này sẽ hết hạn trong vòng :count phút.<br><br>Nếu bạn không yêu cầu một thiết lập lại mật khẩu, bạn không cần làm gì cả.<br>', 'email.forgot_password', 'vi'),
(1824, 'email.forgot_password.note_access_link', 'Nếu bạn gặp sự cố cách nhấn vào nút \":reset_button\", sao chép và dán URL dưới đây vào trình duyệt web của bạn :url', 'email.forgot_password', 'vi'),
(1825, 'email.verification_content.title', 'Hello!', 'email.verification_content', 'en'),
(1826, 'email.verification_content.button', 'Verify Email Address', 'email.verification_content', 'en'),
(1827, 'email.verification_content.reason_sendmail', 'Please click the button below to verify your email address.', 'email.verification_content', 'en'),
(1828, 'email.verification_content.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not create an account, no further action is required.', 'email.verification_content', 'en'),
(1829, 'email.verification_content.note_access_link', 'If you’re having trouble clicking the \":button\" button, copy and paste the URL below into your web browser :url', 'email.verification_content', 'en'),
(1830, 'email.verification_content.title', 'Xin chào!', 'email.verification_content', 'vi'),
(1831, 'email.verification_content.button', 'Xác nhận địa chỉ email', 'email.verification_content', 'vi'),
(1832, 'email.verification_content.reason_sendmail', 'Vui lòng nhấp vào nút bên dưới để xác minh địa chỉ email của bạn.', 'email.verification_content', 'vi'),
(1833, 'email.verification_content.note_sendmail', 'Liên kết mật khẩu này sẽ hết hạn trong vòng :count phút.<br><br>Nếu bạn chưa tạo tài khoản, bạn không cần thực hiện thêm hành động nào.', 'email.verification_content', 'vi'),
(1834, 'email.verification_content.note_access_link', 'Nếu bạn gặp sự cố khi nhấp vào button \":button\", sao chép và dán URL bên dưới vào trình duyệt web của bạn :url', 'email.verification_content', 'vi'),
(1835, 'email.order.title_1', 'Hi! Website :website has new order!', 'email.order', 'en'),
(1836, 'email.order.order_id', 'Order ID', 'email.order', 'en'),
(1837, 'email.order.toname', 'Customer name', 'email.order', 'en'),
(1838, 'email.order.address', 'Address', 'email.order', 'en'),
(1839, 'email.order.phone', 'Phone', 'email.order', 'en'),
(1840, 'email.order.note', 'Note', 'email.order', 'en'),
(1841, 'email.order.order_detail', 'Order detail', 'email.order', 'en'),
(1842, 'email.order.sort', 'No.', 'email.order', 'en'),
(1843, 'email.order.sku', 'SKU', 'email.order', 'en'),
(1844, 'email.order.price', 'Price', 'email.order', 'en'),
(1845, 'email.order.name', 'Name', 'email.order', 'en'),
(1846, 'email.order.qty', 'Qty', 'email.order', 'en'),
(1847, 'email.order.total', 'Total', 'email.order', 'en'),
(1848, 'email.order.sub_total', 'Sub total', 'email.order', 'en'),
(1849, 'email.order.shipping_fee', 'Shipping fee', 'email.order', 'en'),
(1850, 'email.order.discount', 'Discount', 'email.order', 'en'),
(1851, 'email.order.order_total', 'Order total', 'email.order', 'en'),
(1852, 'email.order.title_1', 'Xin chào! :website trang web có đơn hàng mới!', 'email.order', 'vi'),
(1853, 'email.order.order_id', 'Mã đơn hàng', 'email.order', 'vi'),
(1854, 'email.order.toname', 'Tên khách hàng', 'email.order', 'vi'),
(1855, 'email.order.address', 'Địa chỉ', 'email.order', 'vi'),
(1856, 'email.order.phone', 'Điện thoại', 'email.order', 'vi'),
(1857, 'email.order.note', 'Ghi chú', 'email.order', 'vi'),
(1858, 'email.order.order_detail', 'Chi tiết đặt hàng', 'email.order', 'vi'),
(1859, 'email.order.sort', 'Thứ tự', 'email.order', 'vi'),
(1860, 'email.order.sku', 'SKU', 'email.order', 'vi'),
(1861, 'email.order.price', 'Giá', 'email.order', 'vi'),
(1862, 'email.order.name', 'Tên', 'email.order', 'vi'),
(1863, 'email.order.qty', 'Số lượng', 'email.order', 'vi'),
(1864, 'email.order.total', 'Tổng', 'email.order', 'vi'),
(1865, 'email.order.sub_total', 'Tiền hàng', 'email.order', 'vi'),
(1866, 'email.order.shipping_fee', 'Phí vận chuyển', 'email.order', 'vi'),
(1867, 'email.order.discount', 'Giảm giá', 'email.order', 'vi'),
(1868, 'email.order.order_total', 'Tổng số đơn hàng', 'email.order', 'vi'),
(1869, 'email.order.email_subject_customer', 'Có đơn hàng mới', 'email.order', 'vi'),
(1870, 'email.order.email_subject_customer', 'Have a new order', 'email.order', 'en'),
(1871, 'admin.store_block.list', 'Danh sách block', 'admin.store_block', 'vi'),
(1872, 'admin.store_block.list', 'Block list', 'admin.store_block', 'en'),
(1873, 'admin.store_block.name', 'Tên', 'admin.store_block', 'vi'),
(1874, 'admin.store_block.position', 'Vị trí', 'admin.store_block', 'vi'),
(1875, 'admin.store_block.page', 'Trang', 'admin.store_block', 'vi'),
(1876, 'admin.store_block.type', 'Loại', 'admin.store_block', 'vi'),
(1877, 'admin.store_block.text', 'Nội dung', 'admin.store_block', 'vi'),
(1878, 'admin.store_block.status', 'Trạng thái', 'admin.store_block', 'vi'),
(1879, 'admin.store_block.name', 'Name', 'admin.store_block', 'en'),
(1880, 'admin.store_block.position', 'Position', 'admin.store_block', 'en'),
(1881, 'admin.store_block.page', 'Page', 'admin.store_block', 'en'),
(1882, 'admin.store_block.type', 'Type', 'admin.store_block', 'en'),
(1883, 'admin.store_block.text', 'Text', 'admin.store_block', 'en'),
(1884, 'admin.store_block.status', 'Status', 'admin.store_block', 'en'),
(1885, 'admin.store_block.sort', 'Sort', 'admin.store_block', 'en'),
(1886, 'admin.store_block.sort', 'Sắp xếp', 'admin.store_block', 'vi'),
(1887, 'admin.store_block.add_new_title', 'Add layout', 'admin.store_block', 'en'),
(1888, 'admin.store_block.add_new_des', 'Create a new layout', 'admin.store_block', 'en'),
(1889, 'admin.store_block.select_position', 'Select position', 'admin.store_block', 'en'),
(1890, 'admin.store_block.select_page', 'Select page', 'admin.store_block', 'en'),
(1891, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'en'),
(1892, 'admin.store_block.helper_view', 'View files are in \"resources/views/templates/:template/block\" directory.', 'admin.store_block', 'en'),
(1893, 'admin.store_block.helper_module', 'File in \"app/Plugins/Block\". Module must have render() method available to display content.', 'admin.store_block', 'en'),
(1894, 'admin.store_block.add_new_title', 'Tạo bố cục', 'admin.store_block', 'vi'),
(1895, 'admin.store_block.add_new_des', 'Tạo mới bố cục', 'admin.store_block', 'vi'),
(1896, 'admin.store_block.select_position', 'Chọn vị trí', 'admin.store_block', 'vi'),
(1897, 'admin.store_block.select_page', 'Chọn trang', 'admin.store_block', 'vi'),
(1898, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'vi'),
(1899, 'admin.store_block.helper_view', 'File trong thư mục \"resources/views/templates/:template/block\".', 'admin.store_block', 'vi'),
(1900, 'admin.store_block.helper_module', 'File trong \"app/Plugins/Block\". Module phải có hàm render().', 'admin.store_block', 'vi'),
(1901, 'admin.log.list', 'Danh sách nhật ký', 'admin.log', 'vi'),
(1902, 'admin.log.list', 'Logs list', 'admin.log', 'en'),
(1903, 'admin.log.user', 'Người dùng', 'admin.log', 'vi'),
(1904, 'admin.log.user', 'User', 'admin.log', 'en'),
(1905, 'admin.log.method', 'Phương thức', 'admin.log', 'vi'),
(1906, 'admin.log.path', 'Path', 'admin.log', 'vi'),
(1907, 'admin.log.ip', 'IP', 'admin.log', 'vi'),
(1908, 'admin.log.user_agent', 'User agent', 'admin.log', 'vi'),
(1909, 'admin.log.input', 'Input', 'admin.log', 'vi'),
(1910, 'admin.log.created_at', 'Thời gian', 'admin.log', 'vi'),
(1911, 'admin.log.method', 'Method', 'admin.log', 'en'),
(1912, 'admin.log.path', 'Path', 'admin.log', 'en'),
(1913, 'admin.log.ip', 'IP', 'admin.log', 'en'),
(1914, 'admin.log.user_agent', 'User agent', 'admin.log', 'en'),
(1915, 'admin.log.input', 'Input', 'admin.log', 'en'),
(1916, 'admin.log.created_at', 'Time', 'admin.log', 'en'),
(1917, 'admin.page.title', 'Tiêu đề', 'admin.page', 'vi'),
(1918, 'admin.page.image', 'Hình ảnh', 'admin.page', 'vi'),
(1919, 'admin.page.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'vi'),
(1920, 'admin.page.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'vi'),
(1921, 'admin.page.key_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'vi'),
(1922, 'admin.page.status', 'Trạng thái', 'admin.page', 'vi'),
(1923, 'admin.page.keyword', 'Từ khóa', 'admin.page', 'vi'),
(1924, 'admin.page.description', 'Mô tả', 'admin.page', 'vi'),
(1925, 'admin.page.content', 'Nội dung', 'admin.page', 'vi'),
(1926, 'admin.page.title', 'Title', 'admin.page', 'en'),
(1927, 'admin.page.image', 'Image', 'admin.page', 'en'),
(1928, 'admin.page.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'en'),
(1929, 'admin.page.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'en'),
(1930, 'admin.page.status', 'Status', 'admin.page', 'en'),
(1931, 'admin.page.keyword', 'Keyword', 'admin.page', 'en'),
(1932, 'admin.page.description', 'Description', 'admin.page', 'en'),
(1933, 'admin.page.content', 'Content', 'admin.page', 'en'),
(1934, 'admin.page.key_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'en'),
(1935, 'admin.page.add_new', 'Add new', 'admin.page', 'en'),
(1936, 'admin.page.add_new_title', 'Add page', 'admin.page', 'en'),
(1937, 'admin.page.add_new_des', 'Create a new page', 'admin.page', 'en'),
(1938, 'admin.page.add_new_title', 'Tạo trang', 'admin.page', 'vi'),
(1939, 'admin.page.add_new_des', 'Tạo mới trang', 'admin.page', 'vi'),
(1940, 'admin.page.choose_image', 'Chọn ảnh', 'admin.page', 'vi'),
(1941, 'admin.page.choose_image', 'Chose image', 'admin.page', 'en'),
(1942, 'admin.page.list', 'Danh sách trang', 'admin.page', 'vi'),
(1943, 'admin.page.list', 'Page list', 'admin.page', 'en'),
(1944, 'admin.page.search_place', 'Tìm tên', 'admin.page', 'vi'),
(1945, 'admin.page.search_place', 'Search name', 'admin.page', 'en'),
(1946, 'admin.news.add_new_title', 'Add new blog', 'admin.news', 'en'),
(1947, 'admin.news.add_new_des', 'Create a new blog', 'admin.news', 'en'),
(1948, 'admin.news.title', 'Title', 'admin.news', 'en'),
(1949, 'admin.news.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'en'),
(1950, 'admin.news.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'en'),
(1951, 'admin.news.keyword', 'Keyword', 'admin.news', 'en'),
(1952, 'admin.news.description', 'Description', 'admin.news', 'en'),
(1953, 'admin.news.content', 'Content', 'admin.news', 'en'),
(1954, 'admin.news.image', 'Image', 'admin.news', 'en'),
(1955, 'admin.news.status', 'Status', 'admin.news', 'en'),
(1956, 'admin.news.sort', 'Sort', 'admin.news', 'en'),
(1957, 'admin.news.list', 'Blog/News manager', 'admin.news', 'en'),
(1958, 'admin.news.edit', 'Edit', 'admin.news', 'en'),
(1959, 'admin.news.search_place', 'Search title', 'admin.news', 'en'),
(1960, 'admin.news.title', 'Tiêu đề', 'admin.news', 'vi'),
(1961, 'admin.news.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'vi'),
(1962, 'admin.news.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'vi'),
(1963, 'admin.news.keyword', 'Từ khóa', 'admin.news', 'vi'),
(1964, 'admin.news.description', 'Mô tả', 'admin.news', 'vi'),
(1965, 'admin.news.content', 'Nội dung', 'admin.news', 'vi'),
(1966, 'admin.news.image', 'Hình ảnh', 'admin.news', 'vi'),
(1967, 'admin.news.parent', 'Danh mục cha', 'admin.news', 'vi'),
(1968, 'admin.news.top', 'Hiển thị ưu tiên', 'admin.news', 'vi'),
(1969, 'admin.news.status', 'Trạng thái', 'admin.news', 'vi'),
(1970, 'admin.news.sort', 'Sắp xếp', 'admin.news', 'vi'),
(1971, 'admin.news.list', 'Danh sách', 'admin.news', 'vi'),
(1972, 'admin.news.add_new_title', 'Tạo Blog/News', 'admin.news', 'vi'),
(1973, 'admin.news.add_new_des', 'Tạo mới một Blog/News', 'admin.news', 'vi'),
(1974, 'admin.news.search_place', 'Tìm tiêu đề', 'admin.news', 'vi'),
(1975, 'admin.length.name', 'Tên', 'admin.length', 'vi'),
(1976, 'admin.length.name', 'Name', 'admin.length', 'en'),
(1977, 'admin.length.description', 'Mô tả', 'admin.length', 'vi'),
(1978, 'admin.length.description', 'Description', 'admin.length', 'en'),
(1979, 'admin.length.list', 'Danh sách kích thước', 'admin.length', 'vi'),
(1980, 'admin.length.list', 'Length list', 'admin.length', 'en'),
(1981, 'admin.length.add_new_title', 'Thêm kích thước', 'admin.length', 'vi'),
(1982, 'admin.length.add_new_title', 'Add Length', 'admin.length', 'en'),
(1983, 'admin.weight.name', 'Tên', 'admin.weight', 'vi'),
(1984, 'admin.weight.name', 'Name', 'admin.weight', 'en'),
(1985, 'admin.weight.description', 'Mô tả', 'admin.weight', 'vi'),
(1986, 'admin.weight.description', 'Description', 'admin.weight', 'en'),
(1987, 'admin.weight.list', 'Danh sách khối lượng', 'admin.weight', 'vi'),
(1988, 'admin.weight.list', 'Weight list', 'admin.weight', 'en'),
(1989, 'admin.weight.add_new_title', 'Thêm khối lượng', 'admin.weight', 'vi'),
(1990, 'admin.weight.add_new_title', 'Add weight', 'admin.weight', 'en'),
(1991, 'admin.product_property.name', 'Tên', 'admin.product_property', 'vi'),
(1992, 'admin.product_property.name', 'Name', 'admin.product_property', 'en'),
(1993, 'admin.product_property.list', 'Danh sách thuộc tính', 'admin.product_property', 'vi'),
(1994, 'admin.product_property.list', 'Product property list', 'admin.product_property', 'en'),
(1995, 'admin.product_property.status', 'Trạng thái', 'admin.product_property', 'vi'),
(1996, 'admin.product_property.status', 'Status', 'admin.product_property', 'en'),
(1997, 'admin.product_property.add_new_title', 'Thêm thuộc tính', 'admin.product_property', 'vi'),
(1998, 'admin.product_property.add_new_title', 'Add product property', 'admin.product_property', 'en'),
(1999, 'admin.order_status.name', 'Tên', 'admin.order_status', 'vi'),
(2000, 'admin.order_status.name', 'Name', 'admin.order_status', 'en'),
(2001, 'admin.order_status.list', 'Danh sách trạng thái', 'admin.order_status', 'vi'),
(2002, 'admin.order_status.list', 'Order status list', 'admin.order_status', 'en'),
(2003, 'admin.order_status.status', 'Trạng thái', 'admin.order_status', 'vi'),
(2004, 'admin.order_status.status', 'Status', 'admin.order_status', 'en'),
(2005, 'admin.order_status.add_new_title', 'Thêm trạng thái', 'admin.order_status', 'vi'),
(2006, 'admin.order_status.add_new_title', 'Add status', 'admin.order_status', 'en'),
(2007, 'admin.payment_status.name', 'Tên', 'admin.payment_status', 'vi'),
(2008, 'admin.payment_status.name', 'Name', 'admin.payment_status', 'en'),
(2009, 'admin.payment_status.list', 'Danh sách trạng thái', 'admin.payment_status', 'vi'),
(2010, 'admin.payment_status.list', 'Payment status list', 'admin.payment_status', 'en'),
(2011, 'admin.payment_status.status', 'Trạng thái', 'admin.payment_status', 'vi'),
(2012, 'admin.payment_status.status', 'Status', 'admin.payment_status', 'en'),
(2013, 'admin.payment_status.add_new_title', 'Thêm trạng thái', 'admin.payment_status', 'vi'),
(2014, 'admin.payment_status.add_new_title', 'Add status', 'admin.payment_status', 'en'),
(2015, 'admin.shipping_status.name', 'Tên', 'admin.shipping_status', 'vi'),
(2016, 'admin.shipping_status.name', 'Name', 'admin.shipping_status', 'en'),
(2017, 'admin.shipping_status.list', 'Danh sách trạng thái', 'admin.shipping_status', 'vi'),
(2018, 'admin.shipping_status.list', 'Shipping status list', 'admin.shipping_status', 'en'),
(2019, 'admin.shipping_status.status', 'Trạng thái', 'admin.shipping_status', 'vi'),
(2020, 'admin.shipping_status.status', 'Status', 'admin.shipping_status', 'en'),
(2021, 'admin.shipping_status.add_new_title', 'Thêm trạng thái', 'admin.shipping_status', 'vi'),
(2022, 'admin.shipping_status.add_new_title', 'Add status', 'admin.shipping_status', 'en'),
(2023, 'admin.tax.name', 'Tên', 'admin.tax', 'vi'),
(2024, 'admin.tax.name', 'Name', 'admin.tax', 'en'),
(2025, 'admin.tax.value', 'Giá trị', 'admin.tax', 'vi'),
(2026, 'admin.tax.value', 'Value', 'admin.tax', 'en'),
(2027, 'admin.tax.non_tax', 'Không thuế', 'admin.tax', 'vi'),
(2028, 'admin.tax.non_tax', 'None tax', 'admin.tax', 'en'),
(2029, 'admin.tax.auto', 'Tự động', 'admin.tax', 'vi'),
(2030, 'admin.tax.auto', 'Auto', 'admin.tax', 'en'),
(2031, 'admin.tax.list', 'Danh sách thuế', 'admin.tax', 'vi'),
(2032, 'admin.tax.list', 'Tax list', 'admin.tax', 'en'),
(2033, 'admin.tax.status', 'Trạng thái', 'admin.tax', 'vi'),
(2034, 'admin.tax.status', 'Status', 'admin.tax', 'en'),
(2035, 'admin.tax.add_new_title', 'Thêm thuế', 'admin.tax', 'vi'),
(2036, 'admin.tax.add_new_title', 'Add tax', 'admin.tax', 'en'),
(2037, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'en'),
(2038, 'admin.captcha.captcha_mode', 'Use Captcha', 'admin.captcha', 'en'),
(2039, 'admin.captcha.captcha_method', 'Captcha method', 'admin.captcha', 'en'),
(2040, 'admin.captcha.captcha_method_help', 'Select method Captcha', 'admin.captcha', 'en'),
(2041, 'admin.captcha.captcha_page', 'Captcha', 'admin.captcha', 'en'),
(2042, 'admin.captcha.captcha_page_help', 'Select page use Captcha', 'admin.captcha', 'en'),
(2043, 'admin.captcha.captcha_page_contact', 'Contact', 'admin.captcha', 'en'),
(2044, 'admin.captcha.captcha_page_register', 'Register', 'admin.captcha', 'en'),
(2045, 'admin.captcha.captcha_page_forgot_password', 'Forgot pasword', 'admin.captcha', 'en'),
(2046, 'admin.captcha.captcha_page_checkout', 'Checkout', 'admin.captcha', 'en'),
(2047, 'admin.captcha.captcha_page_review', 'Review product', 'admin.captcha', 'en'),
(2048, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'vi'),
(2049, 'admin.captcha.captcha_mode', 'Sử dụng Captcha', 'admin.captcha', 'vi'),
(2050, 'admin.captcha.captcha_method', 'Loại Captcha', 'admin.captcha', 'vi'),
(2051, 'admin.captcha.captcha_method_help', 'Chọn loại Captcha', 'admin.captcha', 'vi'),
(2052, 'admin.captcha.captcha_page', 'Trang sử dụng captcha', 'admin.captcha', 'vi'),
(2053, 'admin.captcha.captcha_page_help', 'Chọn trang sử dụng Captcha', 'admin.captcha', 'vi'),
(2054, 'admin.captcha.captcha_page_contact', 'Liên hệ', 'admin.captcha', 'vi'),
(2055, 'admin.captcha.captcha_page_register', 'Đăng ký', 'admin.captcha', 'vi'),
(2056, 'admin.captcha.captcha_page_forgot_password', 'Quên mật khẩu', 'admin.captcha', 'vi'),
(2057, 'admin.captcha.captcha_page_checkout', 'Đặt hàng', 'admin.captcha', 'vi'),
(2058, 'admin.captcha.captcha_page_review', 'Đánh giá sản phẩm', 'admin.captcha', 'vi'),
(2059, 'admin.link.list', 'Danh sách liên kết', 'admin.link', 'vi'),
(2060, 'admin.link.list', 'Link list', 'admin.link', 'en'),
(2061, 'admin.link.name', 'Tên', 'admin.link', 'vi'),
(2062, 'admin.link.url', 'Đường dẫn', 'admin.link', 'vi'),
(2063, 'admin.link.target', 'Target', 'admin.link', 'vi'),
(2064, 'admin.link.group', 'Nhóm', 'admin.link', 'vi'),
(2065, 'admin.link.sort', 'Thứ tự', 'admin.link', 'vi'),
(2066, 'admin.link.status', 'Trạng thái', 'admin.link', 'vi'),
(2067, 'admin.link.add_new', 'Thêm mới', 'admin.link', 'vi'),
(2068, 'admin.link.add_new_title', 'Tạo url', 'admin.link', 'vi'),
(2069, 'admin.link.add_new_des', 'Tạo mới url', 'admin.link', 'vi'),
(2070, 'admin.link.select_group', 'Chọn nhóm', 'admin.link', 'vi'),
(2071, 'admin.link.select_target', 'Chọn target', 'admin.link', 'vi'),
(2072, 'admin.link.helper_url', 'Ví dụ: url, path, hoặc route::name', 'admin.link', 'vi'),
(2073, 'admin.link.name', 'Name', 'admin.link', 'en'),
(2074, 'admin.link.url', 'Url', 'admin.link', 'en'),
(2075, 'admin.link.target', 'Target', 'admin.link', 'en'),
(2076, 'admin.link.group', 'Group', 'admin.link', 'en'),
(2077, 'admin.link.status', 'Status', 'admin.link', 'en'),
(2078, 'admin.link.sort', 'Sort', 'admin.link', 'en'),
(2079, 'admin.link.add_new', 'Add new', 'admin.link', 'en'),
(2080, 'admin.link.add_new_title', 'Add layout url', 'admin.link', 'en'),
(2081, 'admin.link.add_new_des', 'Create a new layout url', 'admin.link', 'en'),
(2082, 'admin.link.select_group', 'Select group', 'admin.link', 'en'),
(2083, 'admin.link.select_target', 'Select target', 'admin.link', 'en'),
(2084, 'admin.link.helper_url', 'Ex: url, path, or route::name', 'admin.link', 'en'),
(2085, 'admin.link_position.menu', 'Menu', 'admin.link', 'vi'),
(2086, 'admin.link_position.menu_left', 'Menu trái', 'admin.link', 'vi'),
(2087, 'admin.link_position.menu_right', 'Menu phải', 'admin.link', 'vi');
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(2088, 'admin.link_position.footer', 'Footer', 'admin.link', 'vi'),
(2089, 'admin.link_position.footer_left', 'Footer trái', 'admin.link', 'vi'),
(2090, 'admin.link_position.footer_right', 'Footer phải', 'admin.link', 'vi'),
(2091, 'admin.link_position.sidebar', 'Thanh bên', 'admin.link', 'vi'),
(2092, 'admin.link_position.menu', 'Menu', 'admin.link', 'en'),
(2093, 'admin.link_position.menu_left', 'Menu left', 'admin.link', 'en'),
(2094, 'admin.link_position.menu_right', 'Menu right', 'admin.link', 'en'),
(2095, 'admin.link_position.footer', 'Footer', 'admin.link', 'en'),
(2096, 'admin.link_position.footer_left', 'Footer left', 'admin.link', 'en'),
(2097, 'admin.link_position.footer_right', 'Footer right', 'admin.link', 'en'),
(2098, 'admin.link_position.sidebar', 'Sidebar', 'admin.link', 'en'),
(2099, 'admin.supplier.name', 'Name', 'admin.supplier', 'en'),
(2100, 'admin.supplier.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'en'),
(2101, 'admin.supplier.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'en'),
(2102, 'admin.supplier.email', 'Email', 'admin.supplier', 'en'),
(2103, 'admin.supplier.phone', 'Phone', 'admin.supplier', 'en'),
(2104, 'admin.supplier.address', 'Address', 'admin.supplier', 'en'),
(2105, 'admin.supplier.image', 'Image', 'admin.supplier', 'en'),
(2106, 'admin.supplier.url', 'Website', 'admin.supplier', 'en'),
(2107, 'admin.supplier.sort', 'Sort', 'admin.supplier', 'en'),
(2108, 'admin.supplier.status', 'Status', 'admin.supplier', 'en'),
(2109, 'admin.supplier.add_new', 'Add new', 'admin.supplier', 'en'),
(2110, 'admin.supplier.add_new_title', 'Add supplier', 'admin.supplier', 'en'),
(2111, 'admin.supplier.add_new_des', 'Create a new supplier', 'admin.supplier', 'en'),
(2112, 'admin.supplier.list', 'Suppliers list', 'admin.supplier', 'en'),
(2113, 'admin.supplier.name', 'Tên nhà cung cấp', 'admin.supplier', 'vi'),
(2114, 'admin.supplier.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'vi'),
(2115, 'admin.supplier.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'vi'),
(2116, 'admin.supplier.email', 'Email', 'admin.supplier', 'vi'),
(2117, 'admin.supplier.phone', 'Số điện thoại', 'admin.supplier', 'vi'),
(2118, 'admin.supplier.address', 'Địa chỉ', 'admin.supplier', 'vi'),
(2119, 'admin.supplier.image', 'Hình ảnh', 'admin.supplier', 'vi'),
(2120, 'admin.supplier.url', 'Website', 'admin.supplier', 'vi'),
(2121, 'admin.supplier.sort', 'Sắp xếp', 'admin.supplier', 'vi'),
(2122, 'admin.supplier.status', 'Status', 'admin.supplier', 'vi'),
(2123, 'admin.supplier.add_new_title', 'Tạo nhà cung cấp', 'admin.supplier', 'vi'),
(2124, 'admin.supplier.add_new_des', 'Tạo mới nhà cung cấp', 'admin.supplier', 'vi'),
(2125, 'admin.supplier.list', 'Danh sách nhà cung cấp', 'admin.supplier', 'vi'),
(2126, 'admin.supplier.search_place', 'Tìm tên hoặc email', 'admin.supplier', 'vi'),
(2127, 'admin.supplier.search_place', 'Search name or email', 'admin.supplier', 'en'),
(2128, 'admin.role.name', 'Name', 'admin.role', 'en'),
(2129, 'admin.role.slug', 'Slug', 'admin.role', 'en'),
(2130, 'admin.role.permission', 'Permission', 'admin.role', 'en'),
(2131, 'admin.role.http_path', 'HTTP path', 'admin.role', 'en'),
(2132, 'admin.role.http_method', 'HTTP method', 'admin.role', 'en'),
(2133, 'admin.role.created_at', 'Created at', 'admin.role', 'en'),
(2134, 'admin.role.updated_at', 'Updated at', 'admin.role', 'en'),
(2135, 'admin.role.password_confirmation', 'Confirmation', 'admin.role', 'en'),
(2136, 'admin.role.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'en'),
(2137, 'admin.role.list', 'Role manager', 'admin.role', 'en'),
(2138, 'admin.role.edit', 'Edit', 'admin.role', 'en'),
(2139, 'admin.role.add_new', 'Add new', 'admin.role', 'en'),
(2140, 'admin.role.add_new_title', 'Add new role', 'admin.role', 'en'),
(2141, 'admin.role.add_new_des', 'Create a new role', 'admin.role', 'en'),
(2142, 'admin.role.select_http_method', 'Select method', 'admin.role', 'en'),
(2143, 'admin.role.select_permission', 'Select permission', 'admin.role', 'en'),
(2144, 'admin.role.select_user', 'Select user', 'admin.role', 'en'),
(2145, 'admin.role.slug', 'Slug', 'admin.role', 'vi'),
(2146, 'admin.role.name', 'Tên', 'admin.role', 'vi'),
(2147, 'admin.role.roles', 'vai trò', 'admin.role', 'vi'),
(2148, 'admin.role.permission', 'Quyền hạn', 'admin.role', 'vi'),
(2149, 'admin.role.http_path', 'HTTP path', 'admin.role', 'vi'),
(2150, 'admin.role.http_method', 'HTTP method', 'admin.role', 'vi'),
(2151, 'admin.role.created_at', 'Tạo lúc', 'admin.role', 'vi'),
(2152, 'admin.role.updated_at', 'Cập nhật', 'admin.role', 'vi'),
(2153, 'admin.role.slug_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'vi'),
(2154, 'admin.role.add_new', 'Thêm mới', 'admin.role', 'vi'),
(2155, 'admin.role.add_new_title', 'Tạo quyền', 'admin.role', 'vi'),
(2156, 'admin.role.add_new_des', 'Tạo mới một quyền', 'admin.role', 'vi'),
(2157, 'admin.role.select_permission', 'Chọn quyền hạn', 'admin.role', 'vi'),
(2158, 'admin.role.select_user', 'Chọn người dùng', 'admin.role', 'vi'),
(2159, 'admin.template.import', 'Import Template', 'admin.template', 'en'),
(2160, 'admin.template.file_format', 'File format', 'admin.template', 'en'),
(2161, 'admin.template.choose_file', 'Choose File', 'admin.template', 'en'),
(2162, 'admin.template.import_submit', 'Import', 'admin.template', 'en'),
(2163, 'admin.template.import_note', 'File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>', 'admin.template', 'en'),
(2164, 'admin.template.error_unzip', 'Error while unzip', 'admin.template', 'en'),
(2165, 'admin.template.error_upload', 'Error while uploading file', 'admin.template', 'en'),
(2166, 'admin.template.error_check_config', 'Cannot find config file', 'admin.template', 'en'),
(2167, 'admin.template.error_config_format', 'The config file is not in the right format', 'admin.template', 'en'),
(2168, 'admin.template.import_success', 'Import success!', 'admin.template', 'en'),
(2169, 'admin.template.error_exist', 'Template exist!', 'admin.template', 'en'),
(2170, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Template</span></a>', 'admin.template', 'en'),
(2171, 'admin.template.template_more', '<a href=\"https://s-cart.org/en/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.template', 'en'),
(2172, 'admin.template.manager', 'Template management', 'admin.template', 'en'),
(2173, 'admin.template.title', 'Template list', 'admin.template', 'en'),
(2174, 'admin.template.name', 'Template name', 'admin.template', 'en'),
(2175, 'admin.template.auth', 'Author', 'admin.template', 'en'),
(2176, 'admin.template.email', 'Email', 'admin.template', 'en'),
(2177, 'admin.template.website', 'Website', 'admin.template', 'en'),
(2178, 'admin.template.activated', 'Activated', 'admin.template', 'en'),
(2179, 'admin.template.inactive', 'Inactive', 'admin.template', 'en'),
(2180, 'admin.template.download', 'Download', 'admin.template', 'en'),
(2181, 'admin.template.remove', 'Remove', 'admin.template', 'en'),
(2182, 'admin.template.status', 'Status', 'admin.template', 'en'),
(2183, 'admin.template.action', 'Action', 'admin.template', 'en'),
(2184, 'admin.template.installing', 'Installing', 'admin.template', 'en'),
(2185, 'admin.template.local', 'Save local', 'admin.template', 'en'),
(2186, 'admin.template.online', 'From library', 'admin.template', 'en'),
(2187, 'admin.template.version', 'Version', 'admin.template', 'en'),
(2188, 'admin.template.link', 'Link', 'admin.template', 'en'),
(2189, 'admin.template.image', 'Image', 'admin.template', 'en'),
(2190, 'admin.template.empty', 'Empty template!', 'admin.template', 'en'),
(2191, 'admin.template.downloaded', 'Downloaded', 'admin.template', 'en'),
(2192, 'admin.template.rated', 'Rated', 'admin.template', 'en'),
(2193, 'admin.template.price', 'Price', 'admin.template', 'en'),
(2194, 'admin.template.free', 'Free', 'admin.template', 'en'),
(2195, 'admin.template.date', 'Date', 'admin.template', 'en'),
(2196, 'admin.template.click_here', 'Click here', 'admin.template', 'en'),
(2197, 'admin.template.located', 'Located', 'admin.template', 'en'),
(2198, 'admin.template.code', 'Code', 'admin.template', 'en'),
(2199, 'admin.template.image_demo', 'Image demo', 'admin.template', 'en'),
(2200, 'admin.template.only_version_current', 'Only this version', 'admin.template', 'en'),
(2201, 'admin.template.compatible', 'Compatible', 'admin.template', 'en'),
(2202, 'admin.template.used', 'Template used', 'admin.template', 'en'),
(2203, 'admin.template.list', 'Template list', 'admin.template', 'en'),
(2204, 'admin.template.import', 'Import Giao diện', 'admin.template', 'vi'),
(2205, 'admin.template.file_format', 'File mẫu', 'admin.template', 'vi'),
(2206, 'admin.template.choose_file', 'Chọn file', 'admin.template', 'vi'),
(2207, 'admin.template.import_submit', 'Import', 'admin.template', 'vi'),
(2208, 'admin.template.import_note', 'Là file <span style=\"color:red\">.zip</span>, dung lượng tối đa <span style=\"color:red\">50MB</span>', 'admin.template', 'vi'),
(2209, 'admin.template.error_unzip', 'Lỗi trong khi unzip', 'admin.template', 'vi'),
(2210, 'admin.template.error_upload', 'Lỗi trong khi upload file', 'admin.template', 'vi'),
(2211, 'admin.template.error_check_config', 'Không tìm thấy hoặc không thể đọc file config', 'admin.template', 'vi'),
(2212, 'admin.template.error_config_format', 'File config không đúng định dạng', 'admin.template', 'vi'),
(2213, 'admin.template.import_success', 'Import thành công!', 'admin.template', 'vi'),
(2214, 'admin.template.error_exist', 'Giao diện đã tồn tại!', 'admin.template', 'vi'),
(2215, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.template', 'vi'),
(2216, 'admin.template.template_more', '<a href=\"https://s-cart.org/vi/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download đầy đủ Ở ĐÂY</a>', 'admin.template', 'vi'),
(2217, 'admin.template.manager', 'Quản lý giao diện', 'admin.template', 'vi'),
(2218, 'admin.template.title', 'Danh sách giao diện', 'admin.template', 'vi'),
(2219, 'admin.template.name', 'Tên giao diện', 'admin.template', 'vi'),
(2220, 'admin.template.email', 'Email', 'admin.template', 'vi'),
(2221, 'admin.template.website', 'Website', 'admin.template', 'vi'),
(2222, 'admin.template.activated', 'Đang hoạt động', 'admin.template', 'vi'),
(2223, 'admin.template.inactive', 'Đang ẩn', 'admin.template', 'vi'),
(2224, 'admin.template.download', 'Tải về', 'admin.template', 'vi'),
(2225, 'admin.template.remove', 'Gỡ bỏ', 'admin.template', 'vi'),
(2226, 'admin.template.status', 'Trạng thái', 'admin.template', 'vi'),
(2227, 'admin.template.action', 'Hành động', 'admin.template', 'vi'),
(2228, 'admin.template.installing', 'Đang cài đặt', 'admin.template', 'vi'),
(2229, 'admin.template.local', 'Đã lưu trên máy', 'admin.template', 'vi'),
(2230, 'admin.template.online', 'Tải từ thư viện', 'admin.template', 'vi'),
(2231, 'admin.template.auth', 'Tác giả', 'admin.template', 'vi'),
(2232, 'admin.template.version', 'Phiên bản', 'admin.template', 'vi'),
(2233, 'admin.template.link', 'Liên kết', 'admin.template', 'vi'),
(2234, 'admin.template.image', 'Hình ảnh', 'admin.template', 'vi'),
(2235, 'admin.template.empty', 'Chưa có template nào!', 'admin.template', 'vi'),
(2236, 'admin.template.downloaded', 'Số lần tải', 'admin.template', 'vi'),
(2237, 'admin.template.rated', 'Đánh giá', 'admin.template', 'vi'),
(2238, 'admin.template.price', 'Giá', 'admin.template', 'vi'),
(2239, 'admin.template.free', 'Miễn phí', 'admin.template', 'vi'),
(2240, 'admin.template.date', 'Ngày tạo', 'admin.template', 'vi'),
(2241, 'admin.template.located', 'Đã tải về', 'admin.template', 'vi'),
(2242, 'admin.template.code', 'Mã code', 'admin.template', 'vi'),
(2243, 'admin.template.click_here', 'Bấm vào đây', 'admin.template', 'vi'),
(2244, 'admin.template.image_demo', 'Hình mẫu', 'admin.template', 'vi'),
(2245, 'admin.template.only_version_current', 'Chỉ phiên bản này', 'admin.template', 'vi'),
(2246, 'admin.template.compatible', 'Tương thích', 'admin.template', 'vi'),
(2247, 'admin.template.used', 'Đang sử dụng', 'admin.template', 'vi'),
(2248, 'admin.template.list', 'Danh sách giao diện', 'admin.template', 'vi'),
(2249, 'admin.plugin.compatible', 'Tương thích', 'admin.plugin', 'vi'),
(2250, 'admin.plugin.code', 'Mã code', 'admin.plugin', 'vi'),
(2251, 'admin.plugin.name', 'Tên chức năng', 'admin.plugin', 'vi'),
(2252, 'admin.plugin.sort', 'Thứ tự', 'admin.plugin', 'vi'),
(2253, 'admin.plugin.action', 'Hành động', 'admin.plugin', 'vi'),
(2254, 'admin.plugin.status', 'Trạng thái', 'admin.plugin', 'vi'),
(2255, 'admin.plugin.enable', 'Kích hoạt', 'admin.plugin', 'vi'),
(2256, 'admin.plugin.disable', 'Tắt', 'admin.plugin', 'vi'),
(2257, 'admin.plugin.remove', 'Gỡ bỏ', 'admin.plugin', 'vi'),
(2258, 'admin.plugin.only_delete_data', 'Chỉ xóa dữ liệu', 'admin.plugin', 'vi'),
(2259, 'admin.plugin.install', 'Cài đặt', 'admin.plugin', 'vi'),
(2260, 'admin.plugin.config', 'Cấu hình', 'admin.plugin', 'vi'),
(2261, 'admin.plugin.actived', 'Hoạt động', 'admin.plugin', 'vi'),
(2262, 'admin.plugin.disabled', 'Bị tắt', 'admin.plugin', 'vi'),
(2263, 'admin.plugin.not_install', 'Chưa cài đặt', 'admin.plugin', 'vi'),
(2264, 'admin.plugin.auth', 'Tác giả', 'admin.plugin', 'vi'),
(2265, 'admin.plugin.version', 'Phiên bản', 'admin.plugin', 'vi'),
(2266, 'admin.plugin.link', 'Liên kết', 'admin.plugin', 'vi'),
(2267, 'admin.plugin.image', 'Hình ảnh', 'admin.plugin', 'vi'),
(2268, 'admin.plugin.empty', 'Chưa có extension nào!', 'admin.plugin', 'vi'),
(2269, 'admin.plugin.local', 'Đã lưu trên máy', 'admin.plugin', 'vi'),
(2270, 'admin.plugin.online', 'Tải từ thư viện', 'admin.plugin', 'vi'),
(2271, 'admin.plugin.downloaded', 'Số lần tải', 'admin.plugin', 'vi'),
(2272, 'admin.plugin.rated', 'Đánh giá', 'admin.plugin', 'vi'),
(2273, 'admin.plugin.price', 'Giá', 'admin.plugin', 'vi'),
(2274, 'admin.plugin.free', 'Miễn phí', 'admin.plugin', 'vi'),
(2275, 'admin.plugin.date', 'Ngày tạo', 'admin.plugin', 'vi'),
(2276, 'admin.plugin.located', 'Đã tải về', 'admin.plugin', 'vi'),
(2277, 'admin.plugin.only_free', 'Là miễn phí', 'admin.plugin', 'vi'),
(2278, 'admin.plugin.only_version', 'Cùng phiên bản', 'admin.plugin', 'vi'),
(2279, 'admin.plugin.all_version', 'Tất cả phiên bản', 'admin.plugin', 'vi'),
(2280, 'admin.plugin.sort_price_asc', 'Giá tăng', 'admin.plugin', 'vi'),
(2281, 'admin.plugin.sort_price_desc', 'Giá giảm', 'admin.plugin', 'vi'),
(2282, 'admin.plugin.sort_rating', 'Bình chọn', 'admin.plugin', 'vi'),
(2283, 'admin.plugin.sort_download', 'Lượt tải', 'admin.plugin', 'vi'),
(2284, 'admin.plugin.search_keyword', 'Từ khóa', 'admin.plugin', 'vi'),
(2285, 'admin.plugin.enter_search_keyword', 'Nhập từ khóa', 'admin.plugin', 'vi'),
(2286, 'admin.plugin.search_submit', 'Lọc kết quả', 'admin.plugin', 'vi'),
(2287, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'vi'),
(2288, 'admin.plugin.file_format', 'File mẫu', 'admin.plugin', 'vi'),
(2289, 'admin.plugin.choose_file', 'Chọn file', 'admin.plugin', 'vi'),
(2290, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'vi'),
(2291, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'vi'),
(2292, 'admin.plugin.import_note', 'Là file <span style=\"color:red\">.zip</span>, dung lượng tối đa <span style=\"color:red\">50MB</span>', 'admin.plugin', 'vi'),
(2293, 'admin.plugin.error_unzip', 'Lỗi trong khi unzip', 'admin.plugin', 'vi'),
(2294, 'admin.plugin.error_upload', 'Lỗi trong khi upload file', 'admin.plugin', 'vi'),
(2295, 'admin.plugin.error_check_config', 'Không tìm thấy hoặc không thể đọc file config', 'admin.plugin', 'vi'),
(2296, 'admin.plugin.error_config_format', 'File config không đúng định dạng', 'admin.plugin', 'vi'),
(2297, 'admin.plugin.import_success', 'Import thành công!', 'admin.plugin', 'vi'),
(2298, 'admin.plugin.error_exist', 'Plugin đã tồn tại!', 'admin.plugin', 'vi'),
(2299, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'vi'),
(2300, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/vi/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download đầy đủ Ở ĐÂY</a>', 'admin.plugin', 'vi'),
(2301, 'admin.plugin.Shipping_plugin', 'Shipping extension', 'admin.plugin', 'en'),
(2302, 'admin.plugin.Payment_plugin', 'Payment extension', 'admin.plugin', 'en'),
(2303, 'admin.plugin.Total_plugin', 'Total extension', 'admin.plugin', 'en'),
(2304, 'admin.plugin.Other_plugin', 'Other plugin', 'admin.plugin', 'en'),
(2305, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'en'),
(2306, 'admin.plugin.Cms_plugin', 'Cms plugins', 'admin.plugin', 'en'),
(2307, 'admin.plugin.Block_plugin', 'Block plugins', 'admin.plugin', 'en'),
(2308, 'admin.plugin.Shipping_plugin', 'Chức năng vận chuyển', 'admin.plugin', 'vi'),
(2309, 'admin.plugin.Payment_plugin', 'Chức năng thanh toán', 'admin.plugin', 'vi'),
(2310, 'admin.plugin.Total_plugin', 'Chức năng giá trị đơn hàng', 'admin.plugin', 'vi'),
(2311, 'admin.plugin.Other_plugin', 'Chức năng khác', 'admin.plugin', 'vi'),
(2312, 'admin.plugin.Cms_plugin', 'Module CMS', 'admin.plugin', 'vi'),
(2313, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'vi'),
(2314, 'admin.plugin.Block_plugin', 'Module Block', 'admin.plugin', 'vi'),
(2315, 'admin.plugin.compatible', 'Compatible', 'admin.plugin', 'en'),
(2316, 'admin.plugin.code', 'Code', 'admin.plugin', 'en'),
(2317, 'admin.plugin.name', 'Name', 'admin.plugin', 'en'),
(2318, 'admin.plugin.sort', 'Sort', 'admin.plugin', 'en'),
(2319, 'admin.plugin.action', 'Action', 'admin.plugin', 'en'),
(2320, 'admin.plugin.status', 'Status', 'admin.plugin', 'en'),
(2321, 'admin.plugin.enable', 'Enable', 'admin.plugin', 'en'),
(2322, 'admin.plugin.disable', 'Disable', 'admin.plugin', 'en'),
(2323, 'admin.plugin.remove', 'Remove', 'admin.plugin', 'en'),
(2324, 'admin.plugin.only_delete_data', 'Only remove data', 'admin.plugin', 'en'),
(2325, 'admin.plugin.install', 'Install', 'admin.plugin', 'en'),
(2326, 'admin.plugin.config', 'Config', 'admin.plugin', 'en'),
(2327, 'admin.plugin.actived', 'Actived', 'admin.plugin', 'en'),
(2328, 'admin.plugin.disabled', 'Disabled', 'admin.plugin', 'en'),
(2329, 'admin.plugin.not_install', 'Not install', 'admin.plugin', 'en'),
(2330, 'admin.plugin.auth', 'Auth', 'admin.plugin', 'en'),
(2331, 'admin.plugin.version', 'Version', 'admin.plugin', 'en'),
(2332, 'admin.plugin.link', 'Link', 'admin.plugin', 'en'),
(2333, 'admin.plugin.image', 'Image', 'admin.plugin', 'en'),
(2334, 'admin.plugin.empty', 'Empty extension!', 'admin.plugin', 'en'),
(2335, 'admin.plugin.local', 'Save local', 'admin.plugin', 'en'),
(2336, 'admin.plugin.online', 'From library', 'admin.plugin', 'en'),
(2337, 'admin.plugin.downloaded', 'Downloaded', 'admin.plugin', 'en'),
(2338, 'admin.plugin.rated', 'Rated', 'admin.plugin', 'en'),
(2339, 'admin.plugin.price', 'Price', 'admin.plugin', 'en'),
(2340, 'admin.plugin.free', 'Free', 'admin.plugin', 'en'),
(2341, 'admin.plugin.date', 'Date', 'admin.plugin', 'en'),
(2342, 'admin.plugin.located', 'Located', 'admin.plugin', 'en'),
(2343, 'admin.plugin.only_free', 'Is free', 'admin.plugin', 'en'),
(2344, 'admin.plugin.only_version', 'Only version', 'admin.plugin', 'en'),
(2345, 'admin.plugin.all_version', 'All version', 'admin.plugin', 'en'),
(2346, 'admin.plugin.sort_price_asc', 'Price asc', 'admin.plugin', 'en'),
(2347, 'admin.plugin.sort_price_desc', 'Price desc', 'admin.plugin', 'en'),
(2348, 'admin.plugin.sort_rating', 'Rating', 'admin.plugin', 'en'),
(2349, 'admin.plugin.sort_download', 'Download', 'admin.plugin', 'en'),
(2350, 'admin.plugin.search_keyword', 'Keyword', 'admin.plugin', 'en'),
(2351, 'admin.plugin.enter_search_keyword', 'Enter keyword', 'admin.plugin', 'en'),
(2352, 'admin.plugin.search_submit', 'Filter result', 'admin.plugin', 'en'),
(2353, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'en'),
(2354, 'admin.plugin.file_format', 'File format', 'admin.plugin', 'en'),
(2355, 'admin.plugin.choose_file', 'Choose File', 'admin.plugin', 'en'),
(2356, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'en'),
(2357, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'en'),
(2358, 'admin.plugin.import_note', 'File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>', 'admin.plugin', 'en'),
(2359, 'admin.plugin.error_unzip', 'Error while unzip', 'admin.plugin', 'en'),
(2360, 'admin.plugin.error_upload', 'Error while uploading file', 'admin.plugin', 'en'),
(2361, 'admin.plugin.error_check_config', 'Cannot find config file', 'admin.plugin', 'en'),
(2362, 'admin.plugin.error_config_format', 'The config file is not in the right format', 'admin.plugin', 'en'),
(2363, 'admin.plugin.import_success', 'Import success!', 'admin.plugin', 'en'),
(2364, 'admin.plugin.error_exist', 'Plugin exist!', 'admin.plugin', 'en'),
(2365, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'en'),
(2366, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/en/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.plugin', 'en'),
(2367, 'admin.plugin.install_success', 'Installed successfully', 'admin.plugin', 'en'),
(2368, 'admin.plugin.install_faild', 'Installation failed', 'admin.plugin', 'en'),
(2369, 'admin.plugin.table_exist', 'Table :table already exists', 'admin.plugin', 'en'),
(2370, 'admin.plugin.plugin_exist', 'This plugin already exists', 'admin.plugin', 'en'),
(2371, 'admin.plugin.action_error', 'There was an error while :action', 'admin.plugin', 'en'),
(2372, 'admin.plugin.install_success', 'Cài đặt thành công', 'admin.plugin', 'vi'),
(2373, 'admin.plugin.install_faild', 'Cài đặt thất bại', 'admin.plugin', 'vi'),
(2374, 'admin.plugin.table_exist', 'Bảng :table đã tồn tại rồi', 'admin.plugin', 'vi'),
(2375, 'admin.plugin.plugin_exist', 'Plugin này đã tồn tại rồi', 'admin.plugin', 'vi'),
(2376, 'admin.plugin.action_error', 'Có lỗi trong khi :action', 'admin.plugin', 'vi'),
(2377, 'admin.chart.static_month', 'Thống kê trong 12 tháng', 'admin.chart', 'vi'),
(2378, 'admin.chart.static_30_day', 'Thống kê trong 1 tháng', 'admin.chart', 'vi'),
(2379, 'admin.chart.static_month_help', 'Dữ liệu so sánh bằng tổng số tiền của đơn hàng, đơn vị Bit', 'admin.chart', 'vi'),
(2380, 'admin.chart.amount', 'Tổng số tiền (Bit)', 'admin.chart', 'vi'),
(2381, 'admin.chart.order', 'Tổng đơn hàng', 'admin.chart', 'vi'),
(2382, 'admin.chart.static_country', 'Đơn hàng theo quốc gia', 'admin.chart', 'vi'),
(2383, 'admin.chart.country', 'Quốc gia', 'admin.chart', 'vi'),
(2384, 'admin.chart.static_month', 'Statistics for 12 months', 'admin.chart', 'en'),
(2385, 'admin.chart.static_30_day', 'Statistics for 30 days', 'admin.chart', 'en'),
(2386, 'admin.chart.static_month_help', 'The comparison data is equal to the total amount of the order and the Bit units', 'admin.chart', 'en'),
(2387, 'admin.chart.amount', 'Total amount (Bit)', 'admin.chart', 'en'),
(2388, 'admin.chart.order', 'Total order', 'admin.chart', 'en'),
(2389, 'admin.chart.static_country', 'Statistics of orders by country', 'admin.chart', 'en'),
(2390, 'admin.chart.country', 'Country', 'admin.chart', 'en'),
(2391, 'admin.chart.static_device', 'Statistics of orders by device', 'admin.chart', 'en'),
(2392, 'admin.chart.static_device', 'Thống kê đơn hàng theo thiết bị', 'admin.chart', 'vi'),
(2393, 'admin.chart.device', 'Device type', 'admin.chart', 'en'),
(2394, 'admin.chart.device', 'Loại thiết bị', 'admin.chart', 'vi'),
(2395, 'admin.maintain.title', 'Maintenance page', 'admin.maintain', 'en'),
(2396, 'admin.maintain.content', 'Maintenance content of the store', 'admin.maintain', 'en'),
(2397, 'admin.maintain.description', 'Description', 'admin.maintain', 'en'),
(2398, 'admin.maintain.description_note', 'Maintenance note', 'admin.maintain', 'en'),
(2399, 'admin.maintain.title', 'Trang bảo trì', 'admin.maintain', 'vi'),
(2400, 'admin.maintain.content', 'Nội dung bảo trì của cửa hàng', 'admin.maintain', 'vi'),
(2401, 'admin.maintain.description', 'Nội dung', 'admin.maintain', 'vi'),
(2402, 'admin.maintain.description_note', 'Ghi chú bảo trì', 'admin.maintain', 'vi'),
(2403, 'admin.seo.config', 'Cấu hình SEO', 'admin.seo', 'vi'),
(2404, 'admin.seo.config', 'SEO config', 'admin.seo', 'en'),
(2405, 'admin.seo.url_seo_lang', 'Thêm ngôn ngữ trên URL', 'admin.seo', 'vi'),
(2406, 'admin.seo.url_seo_lang', 'Add language on URL', 'admin.seo', 'en'),
(2407, 'admin.dashboard.total_order', 'Tổng đơn hàng', 'admin.dashboard', 'vi'),
(2408, 'admin.dashboard.total_order', 'Order total', 'admin.dashboard', 'en'),
(2409, 'admin.dashboard.total_product', 'Tổng sản phẩm', 'admin.dashboard', 'vi'),
(2410, 'admin.dashboard.total_product', 'Product total', 'admin.dashboard', 'en'),
(2411, 'admin.dashboard.total_customer', 'Tổng khách hàng', 'admin.dashboard', 'vi'),
(2412, 'admin.dashboard.total_customer', 'Customer total', 'admin.dashboard', 'en'),
(2413, 'admin.dashboard.total_blog', 'Tổng blog', 'admin.dashboard', 'vi'),
(2414, 'admin.dashboard.total_blog', 'Blog total', 'admin.dashboard', 'en'),
(2415, 'admin.dashboard.order_month', 'Đơn hàng trong tháng', 'admin.dashboard', 'vi'),
(2416, 'admin.dashboard.order_month', 'Order in month', 'admin.dashboard', 'en'),
(2417, 'admin.dashboard.order_year', 'Đơn hàng trong năm', 'admin.dashboard', 'vi'),
(2418, 'admin.dashboard.order_year', 'Order in year', 'admin.dashboard', 'en'),
(2419, 'admin.dashboard.top_order_new', 'Đơn hàng mới', 'admin.dashboard', 'vi'),
(2420, 'admin.dashboard.top_order_new', 'New orders', 'admin.dashboard', 'en'),
(2421, 'admin.dashboard.top_customer_new', 'Khách hàng mới mới', 'admin.dashboard', 'vi'),
(2422, 'admin.dashboard.top_customer_new', 'New customers', 'admin.dashboard', 'en'),
(2423, 'admin.layout_page_position.all', 'All Page', 'admin.layout_page_position', 'en'),
(2424, 'admin.layout_page_position.home', 'Home page', 'admin.layout_page_position', 'en'),
(2425, 'admin.layout_page_position.shop_home', 'Home shop', 'admin.layout_page_position', 'en'),
(2426, 'admin.layout_page_position.store_home', 'Store: home', 'admin.layout_page_position', 'en'),
(2427, 'admin.layout_page_position.store_product_list', 'Store: product list', 'admin.layout_page_position', 'en'),
(2428, 'admin.layout_page_position.product_list', 'List: product', 'admin.layout_page_position', 'en'),
(2429, 'admin.layout_page_position.product_detail', 'Detail: product', 'admin.layout_page_position', 'en'),
(2430, 'admin.layout_page_position.shop_cart', 'Cart: cart, wishlist, compare, checkout', 'admin.layout_page_position', 'en'),
(2431, 'admin.layout_page_position.shop_auth', 'Auth: login, forgot, register', 'admin.layout_page_position', 'en'),
(2432, 'admin.layout_page_position.shop_profile', 'Customer profile', 'admin.layout_page_position', 'en'),
(2433, 'admin.layout_page_position.item_list', 'List: category, brand, supplier', 'admin.layout_page_position', 'en'),
(2434, 'admin.layout_page_position.item_detail', 'Detail: item', 'admin.layout_page_position', 'en'),
(2435, 'admin.layout_page_position.news_list', 'List:  Blog/news', 'admin.layout_page_position', 'en'),
(2436, 'admin.layout_page_position.news_detail', 'Detail: entry Blog', 'admin.layout_page_position', 'en'),
(2437, 'admin.layout_page_position.content_list', 'List: content CMS', 'admin.layout_page_position', 'en'),
(2438, 'admin.layout_page_position.content_detail', 'Detail: entry CMS', 'admin.layout_page_position', 'en'),
(2439, 'admin.layout_page_position.shop_contact', 'Page contact', 'admin.layout_page_position', 'en'),
(2440, 'admin.layout_page_position.shop_page', 'Other page: about...', 'admin.layout_page_position', 'en'),
(2441, 'admin.layout_page_position.all', 'Tất cả trang', 'admin.layout_page_position', 'vi'),
(2442, 'admin.layout_page_position.home', 'Trang chủ', 'admin.layout_page_position', 'vi'),
(2443, 'admin.layout_page_position.shop_home', 'Trang chủ Shop', 'admin.layout_page_position', 'vi'),
(2444, 'admin.layout_page_position.store_home', 'Cửa hàng: trang chủ', 'admin.layout_page_position', 'vi'),
(2445, 'admin.layout_page_position.store_product_list', 'Cửa hàng: danh sách sản phẩm', 'admin.layout_page_position', 'vi'),
(2446, 'admin.layout_page_position.product_list', 'Danh sách: sản phẩm', 'admin.layout_page_position', 'vi'),
(2447, 'admin.layout_page_position.product_detail', 'Chi tiết: sản phẩm', 'admin.layout_page_position', 'vi'),
(2448, 'admin.layout_page_position.shop_cart', 'Giỏ hàng: giỏ hàng, wishlist, compare, checkout', 'admin.layout_page_position', 'vi'),
(2449, 'admin.layout_page_position.shop_auth', 'Chứng thực: đăng nhập, đăng ký, quên mật khẩu', 'admin.layout_page_position', 'vi'),
(2450, 'admin.layout_page_position.shop_profile', 'Tài khoản khách hàng', 'admin.layout_page_position', 'vi'),
(2451, 'admin.layout_page_position.item_list', 'Danh sách item: danh mục, nhãn hiệu, nhà cung cấp', 'admin.layout_page_position', 'vi'),
(2452, 'admin.layout_page_position.item_detail', 'Chi tiết: item', 'admin.layout_page_position', 'vi'),
(2453, 'admin.layout_page_position.news_list', 'Danh sách: bài viết Blog', 'admin.layout_page_position', 'vi'),
(2454, 'admin.layout_page_position.news_detail', 'Chi tiết: bài viết Blog', 'admin.layout_page_position', 'vi'),
(2455, 'admin.layout_page_position.content_list', 'Danh sách: bài viết CMS', 'admin.layout_page_position', 'vi'),
(2456, 'admin.layout_page_position.content_detail', 'Chi tiết: bài viết CMS', 'admin.layout_page_position', 'vi'),
(2457, 'admin.layout_page_position.shop_contact', 'Trang liên hệ', 'admin.layout_page_position', 'vi'),
(2458, 'admin.layout_page_position.shop_page', 'Các trang viết: giới thiệu...', 'admin.layout_page_position', 'vi'),
(2459, 'admin.layout_page_block.header', 'Header - Phía trên </header> :meta, css, javascript,...', 'admin.layout_page_block', 'vi'),
(2460, 'admin.layout_page_block.top', 'Top - Phía dưới thẻ <body>', 'admin.layout_page_block', 'vi'),
(2461, 'admin.layout_page_block.bottom', 'Bottom - Phía trên <footer>', 'admin.layout_page_block', 'vi'),
(2462, 'admin.layout_page_block.left', 'Left - Cột trái', 'admin.layout_page_block', 'vi'),
(2463, 'admin.layout_page_block.right', 'Right - Cột phải', 'admin.layout_page_block', 'vi'),
(2464, 'admin.layout_page_block.banner_top', 'Top banner - Ngay phía dưới <body>', 'admin.layout_page_block', 'vi'),
(2465, 'admin.layout_page_block.header', 'Header - Above </header>: meta, css, javascript, ...', 'admin.layout_page_block', 'en'),
(2466, 'admin.layout_page_block.top', 'Top - Below the <body> tag', 'admin.layout_page_block', 'en'),
(2467, 'admin.layout_page_block.bottom', 'Bottom - Above <footer>', 'admin.layout_page_block', 'en'),
(2468, 'admin.layout_page_block.left', 'Left - Left column', 'admin.layout_page_block', 'en'),
(2469, 'admin.layout_page_block.right', 'Right - Right column', 'admin.layout_page_block', 'en'),
(2470, 'admin.layout_page_block.banner_top', 'Top banner - Right below <body>', 'admin.layout_page_block', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_our_team`
--

CREATE TABLE `sc_our_team` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sc_our_team`
--

INSERT INTO `sc_our_team` (`id`, `image`, `name`, `description`, `facebook`, `instagram`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, '/data/file/our_team/team-8-249x249.jpg', 'Nguyen Van A', 'Mega positive shop assistant who is alway ready to help you make the rights choice and charm you with a smile.', 'https://www.facebook.com/', 'https://www.instagram.com/', 0, 1, '2021-09-11 21:38:54', '2021-09-11 21:43:03'),
(2, '/data/file/our_team/team-9-249x249.jpg', 'Nguyen Van B', 'Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.', 'https://www.facebook.com/', 'https://www.instagram.com/', 0, 1, '2021-09-11 21:39:16', '2021-09-11 21:39:16'),
(3, '/data/file/our_team/team-10-249x249.jpg', 'Nguyen Van C', 'Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.', 'https://www.facebook.com/', 'https://www.instagram.com/', 0, 1, '2021-09-11 21:39:40', '2021-09-11 21:39:40'),
(6, '/data/file/our_team/team-8-249x249.jpg', 'Nguyen Van D', 'Mega positive shop assistant who is always ready to help you make the right choice and charm you with a smile.', 'https://www.facebook.com/', 'https://www.instagram.com/', 0, 1, '2021-09-11 21:47:05', '2021-09-11 21:47:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_service`
--

CREATE TABLE `sc_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sc_service`
--

INSERT INTO `sc_service` (`id`, `title`, `description`, `content`, `image`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chải lông', 'Hãy để thú cưng của bạn tận hưởng các dịch vụ chải lông hạng nhất được cung cấp bởi những người thợ tạp hóa được chứng nhận và có kinh nghiệm của chúng tôi.', 'H&atilde;y để th&uacute; cưng của bạn tận hưởng c&aacute;c dịch vụ chải l&ocirc;ng hạng nhất được cung cấp bởi những người thợ tạp h&oacute;a được chứng nhận v&agrave; c&oacute; kinh nghiệm của ch&uacute;ng t&ocirc;i.<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '/data/file/icon-01-50x50.png', 0, 1, '2021-09-11 18:36:54', '2021-09-11 18:57:27'),
(3, 'Đệm nằm', 'chúng tôi cung cấp một môi trường an toàn và sạch sẽ với giờ chơi, bài tập, bữa ăn lành mạnh và hơn thế nữa.', 'Ch&uacute;ng t&ocirc;i cung cấp một m&ocirc;i trường an to&agrave;n v&agrave; sạch sẽ với giờ chơi, b&agrave;i tập, bữa ăn l&agrave;nh mạnh v&agrave; hơn thế nữa.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;', '/data/file/icon-02-50x42.png', 0, 1, '2021-09-11 18:59:20', '2021-09-11 18:59:20'),
(5, 'Dog daycare', 'Một môi trường an toàn và vui vẻ.', 'Một m&ocirc;i trường an to&agrave;n v&agrave; vui vẻ.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;', '/data/file/icon-03-48x50.png', 0, 1, '2021-09-11 19:21:51', '2021-09-11 19:24:43'),
(6, 'Dog training', 'Our accredited pet trainers teach fun & eﬀective group & private classes through positive reinforcement.', 'Our accredited pet trainers teach fun &amp; eﬀective group &amp; private classes through positive reinforcement.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;', '/data/file/icon-04-42x50.png', 0, 1, '2021-09-11 19:28:10', '2021-09-11 19:28:10'),
(7, 'Veterinary care', 'Save your pet the discomfort of advanced illness & help save you the stress & expense of treatment.', 'Save your pet the discomfort of advanced illness &amp; help save you the stress &amp; expense of treatment.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;', '/data/file/icon-05-42x50.png', 0, 1, '2021-09-11 19:28:57', '2021-09-11 19:28:57'),
(8, 'Adoption', 'Whether you adopt online or at a Puffles store near you, you’re helping change the life of a pet in need.', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;', '/data/file/icon-06-50x44.png', 0, 1, '2021-09-11 19:29:33', '2021-09-11 21:11:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_attribute_group`
--

CREATE TABLE `sc_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_attribute_group`
--

INSERT INTO `sc_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`) VALUES
(1, 'Color', 1, 1, 'radio'),
(2, 'Size', 1, 2, 'select');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_banner`
--

CREATE TABLE `sc_shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_banner`
--

INSERT INTO `sc_shop_banner` (`id`, `title`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', '/data/banner/home-bg-1.jpg', NULL, '_self', '<h1 class=\"lt-spacing-normal\">Puffles</h1>\r\n<h3 class=\"lt-spacing-75 offset-top-10 text-transform-uppercase heading-devider\">Làm cho thú cưng của bạn hạnh phúc</h3>\r\n<h4 class=\"lt-spacing-100 offset-top-25 fw-regular\">Cửa hàng thú cưng của chúng tôi coi trọng chất lượng, sự thoải mái và tính cá nhân của các sản phẩm và dịch vụ của chúng tôi.</h4>', 1, 0, 0, 'banner', NULL, '2021-09-09 20:46:18'),
(3, 'Banner 3', '/data/banner/breadcrumbs-bg.jpg', NULL, '_self', NULL, 1, 0, 0, 'breadcrumb', NULL, '2021-09-10 10:19:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_banner_store`
--

CREATE TABLE `sc_shop_banner_store` (
  `banner_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_banner_store`
--

INSERT INTO `sc_shop_banner_store` (`banner_id`, `store_id`) VALUES
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_banner_type`
--

CREATE TABLE `sc_shop_banner_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_banner_type`
--

INSERT INTO `sc_shop_banner_type` (`id`, `code`, `name`) VALUES
(1, 'banner', 'Banner website'),
(2, 'background', 'Background website'),
(3, 'breadcrumb', 'Breadcrumb website'),
(4, 'banner-store', 'Banner store'),
(5, 'other', 'Other');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_brand`
--

CREATE TABLE `sc_shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_brand`
--

INSERT INTO `sc_shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`) VALUES
(1, 'Husq', 'husq', '/data/brand/01-181x52.png', '', 1, 0),
(2, 'Ideal', 'ideal', '/data/brand/02-181x52.png', '', 1, 0),
(3, 'Apex', 'apex', '/data/brand/03-181x52.png', '', 1, 0),
(4, 'CST', 'cst', '/data/brand/04-181x52.png', '', 1, 0),
(5, 'Klein', 'klein', '/data/brand/05-181x52.png', '', 1, 0),
(6, 'Metabo', 'metabo', '/data/brand/06-181x52.png', '', 1, 0),
(7, 'Avatar', 'avatar', '/data/brand/07-181x52.png', '', 1, 0),
(8, 'Brand KA', 'brand-ka', '/data/brand/08-181x52.png', '', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_brand_store`
--

CREATE TABLE `sc_shop_brand_store` (
  `brand_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_brand_store`
--

INSERT INTO `sc_shop_brand_store` (`brand_id`, `store_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_category`
--

CREATE TABLE `sc_shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_category`
--

INSERT INTO `sc_shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`) VALUES
(14, '/data/category/about-1-370x276.jpg', 'do-choi', 0, 1, 1, 0),
(15, '/data/category/about-2-370x276.jpg', 'thuc-an', 0, 1, 1, 1),
(16, '/data/category/about-3-370x276.jpg', 'phu-kien', 0, 1, 1, 2),
(17, '/data/category/about-3-370x276.jpg', 'hoa-pham', 0, 1, 1, 3),
(18, '/data/category/about-3-370x276.jpg', 'thuoc-va-vacxin', 0, 1, 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_category_description`
--

CREATE TABLE `sc_shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_category_description`
--

INSERT INTO `sc_shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
(14, 'vi', 'Đồ chơi', NULL, 'Đồ chơi'),
(15, 'vi', 'Thức ăn', NULL, NULL),
(16, 'vi', 'Phụ kiện', NULL, 'Phụ kiện'),
(17, 'vi', 'Hóa Phẩm', NULL, NULL),
(18, 'vi', 'Thuốc và vacxin', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_category_store`
--

CREATE TABLE `sc_shop_category_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_country`
--

CREATE TABLE `sc_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_country`
--

INSERT INTO `sc_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic Peoples Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao Peoples Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_currency`
--

CREATE TABLE `sc_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_currency`
--

INSERT INTO `sc_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 0, 1, ',', 0, 0),
(2, 'VietNam Dong', 'VND', '₫', 1.00, 0, 0, ',', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_customer`
--

CREATE TABLE `sc_shop_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_customer_address`
--

CREATE TABLE `sc_shop_customer_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_custom_field`
--

CREATE TABLE `sc_shop_custom_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'product, customer',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `option` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'radio, select, input',
  `default` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"value1":"name1", "value2":"name2"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_custom_field_detail`
--

CREATE TABLE `sc_shop_custom_field_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_email_template`
--

CREATE TABLE `sc_shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_email_template`
--

INSERT INTO `sc_shop_email_template` (`id`, `name`, `group`, `text`, `store_id`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody><tr>\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n      <tbody><tr>\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <tbody><tr>\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n              <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n              </td>\n          </tr>\n          </tbody>\n      </table>\n      </td>\n      </tr>\n  </tbody>\n  </table>\n  </td>\n</tr>\n</tbody>\n</table>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n{{$note_sendmail}}\n</p>\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n<tbody><tr>\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n  </td>\n  </tr>\n</tbody>\n</table>', 1, 1),
(2, 'Customer verification', 'customer_verify', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody><tr>\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n      <tbody><tr>\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <tbody><tr>\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n              <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n              </td>\n          </tr>\n          </tbody>\n      </table>\n      </td>\n      </tr>\n  </tbody>\n  </table>\n  </td>\n</tr>\n</tbody>\n</table>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n{{$note_sendmail}}\n</p>\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n<tbody><tr>\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n  </td>\n  </tr>\n</tbody>\n</table>', 1, 1),
(3, 'Welcome new customer', 'welcome_customer', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 1, 1),
(4, 'Send form contact to admin', 'contact_to_admin', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<b>Name</b>: {{$name}}<br>\n<b>Email</b>: {{$email}}<br>\n<b>Phone</b>: {{$phone}}<br>\n</td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td>{{$content}}</td>\n</tr>\n</table>', 1, 1),
(5, 'New order to admin', 'order_success_to_admin', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n  <tr>\n      <td>\n          <b>Order ID</b>: {{$orderID}}<br>\n          <b>Customer name</b>: {{$toname}}<br>\n          <b>Email</b>: {{$email}}<br>\n          <b>Address</b>: {{$address}}<br>\n          <b>Phone</b>: {{$phone}}<br>\n          <b>Order note</b>: {{$comment}}\n      </td>\n  </tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n===================================<br></p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n  {{$orderDetail}}\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n      <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n      <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n      <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n      <td colspan=\"2\" align=\"right\">{{$total}}</td>\n  </tr>\n</table>', 1, 1),
(6, 'New order to customr', 'order_success_to_customer', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n  <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n  </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n===================================<br></p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n  <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n  <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n  <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n  <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_language`
--

CREATE TABLE `sc_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_language`
--

INSERT INTO `sc_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 0, 0, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_layout_page`
--

CREATE TABLE `sc_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_layout_page`
--

INSERT INTO `sc_shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'home', 'admin.layout_page_position.home'),
(2, 'shop_home', 'admin.layout_page_position.shop_home'),
(3, 'shop_product_list', 'admin.layout_page_position.product_list'),
(4, 'product_detail', 'admin.layout_page_position.product_detail'),
(5, 'shop_cart', 'admin.layout_page_position.shop_cart'),
(6, 'shop_item_list', 'admin.layout_page_position.item_list'),
(7, 'shop_item_detail', 'admin.layout_page_position.item_detail'),
(8, 'shop_news', 'admin.layout_page_position.news_list'),
(9, 'shop_news_detail', 'admin.layout_page_position.news_detail'),
(10, 'shop_auth', 'admin.layout_page_position.shop_auth'),
(11, 'shop_profile', 'admin.layout_page_position.shop_profile'),
(12, 'shop_page', 'admin.layout_page_position.shop_page'),
(13, 'shop_contact', 'admin.layout_page_position.shop_contact'),
(14, 'content_list', 'admin.layout_page_position.content_list'),
(15, 'content_detail', 'admin.layout_page_position.content_detail'),
(16, 'store_home', 'admin.layout_page_position.store_home'),
(17, 'store_product_list', 'admin.layout_page_position.store_product_list');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_layout_position`
--

CREATE TABLE `sc_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_layout_position`
--

INSERT INTO `sc_shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'header', 'admin.layout_page_block.header'),
(2, 'top', 'admin.layout_page_block.top'),
(3, 'bottom', 'admin.layout_page_block.bottom'),
(4, 'left', 'admin.layout_page_block.left'),
(5, 'right', 'admin.layout_page_block.right'),
(6, 'banner_top', 'admin.layout_page_block.banner_top');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_length`
--

CREATE TABLE `sc_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_length`
--

INSERT INTO `sc_shop_length` (`id`, `name`, `description`) VALUES
(1, 'mm', 'Millimeter'),
(2, 'cm', 'Centimeter'),
(3, 'm', 'Meter'),
(4, 'in', 'Inch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_link`
--

CREATE TABLE `sc_shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_link`
--

INSERT INTO `sc_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`) VALUES
(1, 'front.blog', 'route::news', '_self', 'menu', '', 1, 40),
(2, 'front.contact', 'route::contact', '_self', 'menu', '', 1, 50),
(3, 'front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 30),
(4, 'front.my_profile', 'route::login', '_self', 'footer', '', 1, 60),
(5, 'front.compare_page', 'route::compare', '_self', 'footer', '', 1, 70),
(6, 'front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 80),
(7, 'front.shop', 'route::shop', '_self', 'menu', NULL, 1, 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_link_store`
--

CREATE TABLE `sc_shop_link_store` (
  `link_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_link_store`
--

INSERT INTO `sc_shop_link_store` (`link_id`, `store_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_news`
--

CREATE TABLE `sc_shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_news`
--

INSERT INTO `sc_shop_news` (`id`, `image`, `alias`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, '/data/content/post-1-570x461.jpg', 'demo-alias-blog-1', 0, 1, '2021-09-09 11:00:14', '2021-09-10 11:19:54'),
(2, '/data/content/post-3-270x215.jpg', 'demo-alias-blog-2', 2, 1, '2021-09-09 11:00:14', '2021-09-10 11:19:11'),
(3, '/data/content/post-2-270x215.jpg', 'demo-alias-blog-3', 1, 1, '2021-09-09 11:00:14', '2021-09-10 11:19:17'),
(7, '/data/content/post-5-370x239.jpg', 'easy-tricks-to-teach-your-dog', 3, 1, '2021-09-10 16:17:23', '2021-09-10 16:21:19'),
(8, '/data/content/post-6-370x239.jpg', '8-tips-for-taking-the-perfect-photo-of-your-pet', 4, 1, '2021-09-10 16:18:56', '2021-09-10 16:19:04'),
(9, '/data/content/post-4-370x239.jpg', 'easy-tricks-to-teach-your-dog-2', 5, 1, '2021-09-10 16:22:27', '2021-09-10 16:22:51'),
(11, '/data/content/post-3-370x239.jpg', 'how-to-brighten-your-wardrobe-with-a-dash-of-lime', 5, 1, '2021-09-10 17:00:36', '2021-09-10 17:00:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_news_description`
--

CREATE TABLE `sc_shop_news_description` (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_news_description`
--

INSERT INTO `sc_shop_news_description` (`news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'vi', 'Easy Polo Black Edition 1', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Easy Polo Black Edition 2', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'vi', 'Easy Polo Black Edition 3', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(7, 'vi', 'Easy tricks to teach your dog', NULL, NULL, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;'),
(8, 'vi', '8 tips for taking the perfect photo of your pet', NULL, NULL, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;'),
(9, 'vi', 'Easy tricks to teach your dog 2', NULL, NULL, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;'),
(11, 'vi', 'How To Brighten Your Wardrobe With A Dash Of Lime', NULL, 'How To Brighten Your Wardrobe With A Dash Of Lime', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_news_store`
--

CREATE TABLE `sc_shop_news_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_news_store`
--

INSERT INTO `sc_shop_news_store` (`news_id`, `store_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order`
--

CREATE TABLE `sc_shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT 0,
  `shipping` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'other',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order`
--

INSERT INTO `sc_shop_order` (`id`, `customer_id`, `domain`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `address1`, `address2`, `address3`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `device_type`, `ip`, `transaction`, `store_id`, `created_at`, `updated_at`, `address`, `province`, `district`, `ward`) VALUES
(2, 0, 'http://127.0.0.1:8000', 700000, 0, 0, 1, 1, 1, 0, 700000, 'VND', 1.00, 0, 700000, 'HungDev', 'Đỗ', NULL, NULL, NULL, NULL, NULL, 'VN', NULL, NULL, '+84396645809', 'dohung28599@gmail.com', 'fgfdfg', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'desktop', '127.0.0.1', NULL, 1, '2021-09-12 16:36:35', '2021-09-12 16:36:35', 'Xã Quyết Thắng- Thành Phố Thái Nguyên- tỉnh Thái Nguyên', 'Thái Nguyên', 'Thành phố Thái Nguyên', 'Phường Thịnh Đán'),
(3, 0, 'http://127.0.0.1:8000', 940000, 0, 0, 1, 1, 1, 0, 940000, 'VND', 1.00, 0, 940000, 'HungDev', 'Đỗ', NULL, NULL, NULL, NULL, NULL, 'VN', NULL, NULL, '0396645809', 'dohung28599@gmail.com', 'jjhh', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'desktop', '127.0.0.1', NULL, 1, '2021-09-13 18:21:18', '2021-09-13 18:21:18', 'Xã Quyết Thắng- Thành Phố Thái Nguyên- tỉnh Thái Nguyên, gfdg', 'Thái Nguyên', 'Thành phố Thái Nguyên', 'Phường Trưng Vương');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order_detail`
--

CREATE TABLE `sc_shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order_detail`
--

INSERT INTO `sc_shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `store_id`, `total_price`, `tax`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
(3, 2, 20, 'Bàn chải cho chó', 150000, 2, 1, 300000, 0, 'sp3', 'VND', 1.00, '[]', '2021-09-12 16:36:35', '2021-09-12 16:36:35'),
(4, 2, 21, 'Pet Food Bowl', 200000, 2, 1, 400000, 0, 'sp4', 'VND', 1.00, '[]', '2021-09-12 16:36:35', '2021-09-12 16:36:35'),
(5, 3, 19, 'Vòng cổ cho chó vui vẻ', 180000, 2, 1, 360000, 0, 'sp2', 'VND', 1.00, '[]', '2021-09-13 18:21:18', '2021-09-13 18:21:18'),
(6, 3, 18, 'Bàn chải cho chó', 180000, 1, 1, 180000, 0, 'sp1', 'VND', 1.00, '[]', '2021-09-13 18:21:18', '2021-09-13 18:21:18'),
(7, 3, 21, 'Pet Food Bowl', 200000, 2, 1, 400000, 0, 'sp4', 'VND', 1.00, '[]', '2021-09-13 18:21:18', '2021-09-13 18:21:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order_history`
--

CREATE TABLE `sc_shop_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order_history`
--

INSERT INTO `sc_shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `customer_id`, `order_status_id`, `add_date`) VALUES
(2, 2, 'New order', 0, 0, 1, '2021-09-12 23:36:35'),
(3, 3, 'New order', 0, 0, 1, '2021-09-14 01:21:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order_status`
--

CREATE TABLE `sc_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order_status`
--

INSERT INTO `sc_shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order_total`
--

CREATE TABLE `sc_shop_order_total` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order_total`
--

INSERT INTO `sc_shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
(7, 2, 'Tiền hàng', 'subtotal', 700000, '700,000₫', 1, '2021-09-12 16:36:35', NULL),
(8, 2, 'Thuế', 'tax', 0, '0₫', 2, '2021-09-12 16:36:35', NULL),
(9, 2, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2021-09-12 16:36:35', NULL),
(10, 2, 'Giảm giá', 'discount', 0, '0', 20, '2021-09-12 16:36:35', NULL),
(11, 2, 'Tổng tiền', 'total', 700000, '700,000₫', 100, '2021-09-12 16:36:35', NULL),
(12, 2, 'Đã nhận', 'received', 0, '0', 200, '2021-09-12 16:36:35', NULL),
(13, 3, 'Tiền hàng', 'subtotal', 940000, '940,000₫', 1, '2021-09-13 18:21:18', NULL),
(14, 3, 'Thuế', 'tax', 0, '0₫', 2, '2021-09-13 18:21:18', NULL),
(15, 3, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2021-09-13 18:21:18', NULL),
(16, 3, 'Giảm giá', 'discount', 0, '0', 20, '2021-09-13 18:21:18', NULL),
(17, 3, 'Tổng tiền', 'total', 940000, '940,000₫', 100, '2021-09-13 18:21:18', NULL),
(18, 3, 'Đã nhận', 'received', 0, '0', 200, '2021-09-13 18:21:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_page`
--

CREATE TABLE `sc_shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_page`
--

INSERT INTO `sc_shop_page` (`id`, `image`, `alias`, `status`) VALUES
(1, '/data/page/about-4-570x511.jpg', 'about', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_page_description`
--

CREATE TABLE `sc_shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_page_description`
--

INSERT INTO `sc_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'vi', 'Về chúng tôi', 'Sứ mệnh của Pet Shop chúng tôi là cung cấp dịch vụ chăm sóc chất lượng cho vật nuôi.', 'Chúng tôi muốn khách hàng và vật nuôi của họ nhận được dịch vụ và hàng hóa tốt nhất, đó là lý do tại sao chúng tôi chỉ làm việc với các nhà sản xuất đã được chứng minh và có uy tín.', '<p>Sứ mệnh của Pet Shop ch&uacute;ng t&ocirc;i l&agrave; cung cấp dịch vụ chăm s&oacute;c chất lượng cho vật nu&ocirc;i.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i muốn kh&aacute;ch h&agrave;ng v&agrave; vật nu&ocirc;i của họ nhận được dịch vụ v&agrave; h&agrave;ng h&oacute;a tốt nhất, đ&oacute; l&agrave; l&yacute; do tại sao ch&uacute;ng t&ocirc;i chỉ l&agrave;m việc với c&aacute;c nh&agrave; sản xuất đ&atilde; được chứng minh v&agrave; c&oacute; uy t&iacute;n.<br />\r\n<br />\r\nLorem issum...</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_page_store`
--

CREATE TABLE `sc_shop_page_store` (
  `page_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_page_store`
--

INSERT INTO `sc_shop_page_store` (`page_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_password_resets`
--

CREATE TABLE `sc_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_payment_status`
--

CREATE TABLE `sc_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_payment_status`
--

INSERT INTO `sc_shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product`
--

CREATE TABLE `sc_shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `supplier_id` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product`
--

INSERT INTO `sc_shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `property`, `tax_id`, `status`, `sort`, `view`, `alias`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
(18, 'sp1', NULL, NULL, NULL, NULL, NULL, '/data/product/product-01-200x200.png', 0, 0, 180000, 199000, 99, 1, 1, 'kg', 2, 'in', 0, 0, 0, 0, 'physical', '0', 1, 0, 40, 'ban-chai-cho-cho', '2021-09-14 00:39:54', '2021-09-10', '2021-09-09 22:20:14', '2021-09-13 18:21:18'),
(19, 'sp2', NULL, NULL, NULL, NULL, NULL, '/data/product/product-02-200x200.png', 0, 0, 180000, 190000, 98, 2, 1, 'oz', 0, 'in', 0, 0, 0, 0, 'physical', '0', 1, 0, 0, 'vong-co-cho-cho-vui-ve', NULL, '2021-09-10', '2021-09-09 22:22:05', '2021-09-13 18:21:18'),
(20, 'sp3', NULL, NULL, NULL, NULL, NULL, '/data/product/product-03-200x200.png', 0, 0, 150000, 180000, -2, 2, 1, 'oz', 0, 'in', 0, 0, 0, 0, 'physical', '0', 1, 0, 0, 'ban-chai-cho-cho', NULL, '2021-09-10', '2021-09-09 22:23:42', '2021-09-12 16:37:08'),
(21, 'sp4', NULL, NULL, NULL, NULL, NULL, '/data/product/product-04-200x200.png', 0, 0, 200000, 210000, -4, 4, 0, 'oz', 0, 'in', 0, 0, 0, 0, 'physical', '0', 1, 0, 6, 'pet-food-bowl', '2021-09-15 22:12:48', '2021-09-10', '2021-09-09 22:25:09', '2021-09-15 15:12:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_attribute`
--

CREATE TABLE `sc_shop_product_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_build`
--

CREATE TABLE `sc_shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_category`
--

CREATE TABLE `sc_shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_category`
--

INSERT INTO `sc_shop_product_category` (`product_id`, `category_id`) VALUES
(18, 14),
(18, 16),
(19, 14),
(19, 16),
(20, 14),
(20, 15),
(20, 17),
(21, 14),
(21, 15),
(21, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_description`
--

CREATE TABLE `sc_shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_description`
--

INSERT INTO `sc_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
(18, 'vi', 'Bàn chải cho chó', NULL, NULL, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;'),
(19, 'vi', 'Vòng cổ cho chó vui vẻ', NULL, 'Vòng cổ cho chó vui vẻ', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;'),
(20, 'vi', 'Bàn chải cho chó', NULL, 'Bàn chải cho chó', 'B&agrave;n chải cho ch&oacute;'),
(21, 'vi', 'Pet Food Bowl', NULL, 'Pet Food Bowl', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_download`
--

CREATE TABLE `sc_shop_product_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_group`
--

CREATE TABLE `sc_shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_image`
--

CREATE TABLE `sc_shop_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_image`
--

INSERT INTO `sc_shop_product_image` (`id`, `image`, `product_id`) VALUES
(23, '/data/product/product-mini-1-100x90.jpg', 19),
(24, '/data/product/product-big-3-328x330.jpg', 20),
(25, '/data/product/product-mini-2-100x90 (1).jpg', 20),
(26, '/data/product/product-mini-1-100x90.jpg', 21),
(27, '/data/product/product-04-200x200.png', 21),
(32, '/data/product/product-mini-1-106x104.jpg', 18),
(33, '/data/product/product-mini-2-100x90 (2).jpg', 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_promotion`
--

CREATE TABLE `sc_shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_property`
--

CREATE TABLE `sc_shop_product_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_property`
--

INSERT INTO `sc_shop_product_property` (`id`, `code`, `name`) VALUES
(1, 'physical', 'Product physical'),
(2, 'download', 'Product download');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_store`
--

CREATE TABLE `sc_shop_product_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_sessions`
--

CREATE TABLE `sc_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_shipping_standard`
--

CREATE TABLE `sc_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_shipping_standard`
--

INSERT INTO `sc_shop_shipping_standard` (`id`, `fee`, `shipping_free`) VALUES
(1, 20, 10000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_shipping_status`
--

CREATE TABLE `sc_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_shipping_status`
--

INSERT INTO `sc_shop_shipping_status` (`id`, `name`) VALUES
(1, 'Not sent'),
(2, 'Sending'),
(3, 'Shipping done');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_shoppingcart`
--

CREATE TABLE `sc_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_store_block`
--

CREATE TABLE `sc_shop_store_block` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_store_block`
--

INSERT INTO `sc_shop_store_block` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`, `store_id`) VALUES
(1, 'Facebook code', 'top', '*', 'html', '\n<div id=\"fb-root\"></div>\n<script>(function(d, s, id) {\nvar js, fjs = d.getElementsByTagName(s)[0];\nif (d.getElementById(id)) return;\njs = d.createElement(s); js.id = id;\njs.src = \"//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\";\nfjs.parentNode.insertBefore(js, fjs);\n}(document, \"script\", \"facebook-jssdk\"));\n</script>', 1, 0, 1),
(2, 'Google Analytics', 'header', '*', 'html', '\n<!-- Global site tag (gtag.js) - Google Analytics -->\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\n<script>\nwindow.dataLayer = window.dataLayer || [];\nfunction gtag(){dataLayer.push(arguments);}\ngtag(\"js\", new Date());\ngtag(\"config\", \"UA-128658138-1\");\n</script>', 1, 0, 1),
(3, 'Product special', 'left', '*', 'view', 'product_special', 1, 1, 1),
(4, 'Brands', 'left', '*', 'view', 'brands_left', 1, 3, 1),
(5, 'Banner home', 'banner_top', 'home', 'view', 'banner_image', 1, 0, 1),
(6, 'Categories', 'left', 'home,shop_home', 'view', 'categories', 1, 0, 1),
(7, 'Product last view', 'left', '*', 'view', 'product_lastview', 1, 0, 1),
(8, 'Products new', 'bottom', 'home', 'view', 'product_new', 1, 9, 1),
(9, 'Top news', 'bottom', 'home', 'view', 'top_news', 1, 999, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_store_css`
--

CREATE TABLE `sc_shop_store_css` (
  `css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_store_css`
--

INSERT INTO `sc_shop_store_css` (`css`, `store_id`) VALUES
('\n.sc-overlay {\n  position: fixed;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%);\n  transform: -webkit-translate(-50%, -50%);\n  transform: -moz-translate(-50%, -50%);\n  transform: -ms-translate(-50%, -50%);\n  color:#1f222b;\n  z-index: 9999;\n  background: rgba(255,255,255,0.7);\n}\n  \n#sc-loading{\n  display: none;\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  z-index: 50;\n  background: rgba(255,255,255,0.7);\n}\n/*end loading */\n  \n/*price*/\n.sc-new-price{\n  color:#FE980F;\n  font-size: 14px;\n  padding: 10px 5px;\n  font-weight:bold;\n  }\n  .sc-old-price {\n  text-decoration: line-through;\n  color: #a95d5d;\n  font-size: 13px;\n  padding: 10px;\n  }\n  /*end price*/\n.sc-product-build{\n  font-size: 20px;\n  font-weight: bold;\n}\n.sc-product-build img{\n  width: 50px;\n}\n.sc-product-group  img{\n  width: 100px;\n  cursor: pointer;\n  }\n.sc-product-group:hover{\n  box-shadow: 0px 0px 2px #999;\n}\n.sc-product-group:active{\n  box-shadow: 0px 0px 2px #ff00ff;\n}\n.sc-product-group.active{\n  box-shadow: 0px 0px 2px #ff00ff;\n}\n\n.sc-shipping-address td{\n  padding: 3px !important;\n}\n.sc-shipping-address textarea,\n.sc-shipping-address input[type=\"text\"],\n.sc-shipping-address option{\n  width: 100%;\n  padding: 7px !important;\n}\n.row_cart>td{\n  vertical-align: middle !important;\n}\ninput[type=\"number\"]{\n  text-align: center;\n  padding:2px;\n}\n.sc-notice{\n  clear: both;\n  clear: both;\n  font-size: 20px;\n  background: #f3f3f3;\n  width: 100%;\n}\nimg.new {\n  position: absolute;\n  right: 0px;\n  top: 0px;\n  padding: 0px !important;\n}\n.pointer {\n  cursor: pointer;\n}\n.add-to-cart-list {\n  padding: 5px 10px !important;\n  margin: 2px !important;\n  letter-spacing: 0px !important;\n  font-size: 12px !important;\n  border-radius: 5px;\n}\n.help-block {\n  font-size: 12px;\n  color: red;\n  font-style: italic;\n}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_subscribe`
--

CREATE TABLE `sc_shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_supplier`
--

CREATE TABLE `sc_shop_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_supplier`
--

INSERT INTO `sc_shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `store_id`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0),
(2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_tax`
--

CREATE TABLE `sc_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_tax`
--

INSERT INTO `sc_shop_tax` (`id`, `name`, `value`) VALUES
(1, 'Tax default (10%)', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_weight`
--

CREATE TABLE `sc_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_weight`
--

INSERT INTO `sc_shop_weight` (`id`, `name`, `description`) VALUES
(1, 'g', 'Gram'),
(2, 'kg', 'Kilogram'),
(3, 'lb', 'Pound '),
(4, 'oz', 'Ounce ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `sc_admin_config_code_index` (`code`);

--
-- Chỉ mục cho bảng `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_admin_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_menu_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `sc_admin_permission_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_role_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `sc_admin_role_permission`
--
ALTER TABLE `sc_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `sc_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `sc_admin_role_user`
--
ALTER TABLE `sc_admin_role_user`
  ADD KEY `sc_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_store_code_unique` (`code`),
  ADD KEY `sc_admin_store_domain_index` (`domain`),
  ADD KEY `sc_admin_store_partner_index` (`partner`);

--
-- Chỉ mục cho bảng `sc_admin_store_description`
--
ALTER TABLE `sc_admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `sc_admin_store_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `sc_admin_user_email_unique` (`email`);

--
-- Chỉ mục cho bảng `sc_admin_user_permission`
--
ALTER TABLE `sc_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `sc_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_api_connection_apiconnection_unique` (`apiconnection`);

--
-- Chỉ mục cho bảng `sc_languages`
--
ALTER TABLE `sc_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_languages_code_location_unique` (`code`,`location`),
  ADD KEY `sc_languages_code_index` (`code`),
  ADD KEY `sc_languages_position_index` (`position`),
  ADD KEY `sc_languages_location_index` (`location`);

--
-- Chỉ mục cho bảng `sc_our_team`
--
ALTER TABLE `sc_our_team`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_service`
--
ALTER TABLE `sc_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_banner_type_index` (`type`);

--
-- Chỉ mục cho bảng `sc_shop_banner_store`
--
ALTER TABLE `sc_shop_banner_store`
  ADD PRIMARY KEY (`banner_id`,`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_banner_type_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_brand_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `sc_shop_brand_store`
--
ALTER TABLE `sc_shop_brand_store`
  ADD PRIMARY KEY (`brand_id`,`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_category_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `sc_shop_category_description`
--
ALTER TABLE `sc_shop_category_description`
  ADD UNIQUE KEY `sc_shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  ADD KEY `sc_shop_category_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `sc_shop_category_store`
--
ALTER TABLE `sc_shop_category_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_country_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_currency_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `sc_shop_customer_address_id_index` (`address_id`),
  ADD KEY `sc_shop_customer_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_customer_address_customer_id_index` (`customer_id`);

--
-- Chỉ mục cho bảng `sc_shop_custom_field`
--
ALTER TABLE `sc_shop_custom_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_type_index` (`type`),
  ADD KEY `sc_shop_custom_field_code_index` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_custom_field_detail`
--
ALTER TABLE `sc_shop_custom_field_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_detail_custom_field_id_index` (`custom_field_id`),
  ADD KEY `sc_shop_custom_field_detail_rel_id_index` (`rel_id`);

--
-- Chỉ mục cho bảng `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_email_template_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_language_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_page_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_position_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_length_name_unique` (`name`);

--
-- Chỉ mục cho bảng `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_link_store`
--
ALTER TABLE `sc_shop_link_store`
  ADD PRIMARY KEY (`link_id`,`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_news_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `sc_shop_news_description`
--
ALTER TABLE `sc_shop_news_description`
  ADD UNIQUE KEY `sc_shop_news_description_news_id_lang_unique` (`news_id`,`lang`);

--
-- Chỉ mục cho bảng `sc_shop_news_store`
--
ALTER TABLE `sc_shop_news_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_order_customer_id_index` (`customer_id`),
  ADD KEY `sc_shop_order_device_type_index` (`device_type`),
  ADD KEY `sc_shop_order_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_page_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `sc_shop_page_description`
--
ALTER TABLE `sc_shop_page_description`
  ADD UNIQUE KEY `sc_shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  ADD KEY `sc_shop_page_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `sc_shop_page_store`
--
ALTER TABLE `sc_shop_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_password_resets`
--
ALTER TABLE `sc_shop_password_resets`
  ADD KEY `sc_shop_password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_sku_index` (`sku`),
  ADD KEY `sc_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `sc_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `sc_shop_product_kind_index` (`kind`),
  ADD KEY `sc_shop_product_property_index` (`property`),
  ADD KEY `sc_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `sc_shop_product_status_index` (`status`),
  ADD KEY `sc_shop_product_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_build`
--
ALTER TABLE `sc_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_category`
--
ALTER TABLE `sc_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_description`
--
ALTER TABLE `sc_shop_product_description`
  ADD UNIQUE KEY `sc_shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  ADD KEY `sc_shop_product_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `sc_shop_product_download`
--
ALTER TABLE `sc_shop_product_download`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_product_group`
--
ALTER TABLE `sc_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_image_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_promotion`
--
ALTER TABLE `sc_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_product_property_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_product_store`
--
ALTER TABLE `sc_shop_product_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_sessions`
--
ALTER TABLE `sc_shop_sessions`
  ADD UNIQUE KEY `sc_shop_sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_shoppingcart`
--
ALTER TABLE `sc_shop_shoppingcart`
  ADD KEY `sc_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  ADD KEY `sc_shop_shoppingcart_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_store_block_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_store_css`
--
ALTER TABLE `sc_shop_store_css`
  ADD UNIQUE KEY `sc_shop_store_css_store_id_unique` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_subscribe_email_index` (`email`),
  ADD KEY `sc_shop_subscribe_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_supplier_alias_index` (`alias`),
  ADD KEY `sc_shop_supplier_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_weight_name_unique` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT cho bảng `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1410;

--
-- AUTO_INCREMENT cho bảng `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_languages`
--
ALTER TABLE `sc_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2471;

--
-- AUTO_INCREMENT cho bảng `sc_our_team`
--
ALTER TABLE `sc_our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sc_service`
--
ALTER TABLE `sc_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_custom_field`
--
ALTER TABLE `sc_shop_custom_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_custom_field_detail`
--
ALTER TABLE `sc_shop_custom_field_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product_download`
--
ALTER TABLE `sc_shop_product_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
