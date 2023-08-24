-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2023 a las 07:07:06
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_tienda_virtual`
--
CREATE DATABASE IF NOT EXISTS `admin_tienda_virtual` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_tienda_virtual`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_18_114022_create_permission_tables', 1),
(6, '2023_07_18_114416_create_productos_table', 2),
(7, '2014_10_12_100000_create_password_resets_table', 3),
(8, '2023_07_19_184111_create_permission_tables', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 7),
(5, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-07-19 23:46:40', '2023-07-19 23:46:40'),
(2, 'role-create', 'web', '2023-07-19 23:46:41', '2023-07-19 23:46:41'),
(3, 'role-edit', 'web', '2023-07-19 23:46:41', '2023-07-19 23:46:41'),
(4, 'role-delete', 'web', '2023-07-19 23:46:41', '2023-07-19 23:46:41'),
(5, 'producto-list', 'web', '2023-07-19 23:46:41', '2023-07-19 23:46:41'),
(6, 'producto-create', 'web', '2023-07-19 23:46:41', '2023-07-19 23:46:41'),
(7, 'producto-edit', 'web', '2023-07-19 23:46:41', '2023-07-19 23:46:41'),
(8, 'producto-delete', 'web', '2023-07-19 23:46:41', '2023-07-19 23:46:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `disponibilidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detalles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `img`, `precio`, `disponibilidad`, `detalles`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Arroz integral', NULL, '2400.00', 'si', 'cereal', NULL, '2023-07-20 01:24:48', NULL),
(3, 'Helado', 'imagen.jpg', '1800.00', 'si', 'Helado de frutas', '2023-07-20 00:10:27', '2023-07-20 01:23:02', NULL),
(4, 'café', NULL, '7000.00', 'si', 'Café descremado', '2023-07-20 00:12:17', '2023-07-20 00:12:17', NULL),
(5, 'Azucar', NULL, '1500.00', 'si', 'Endulzante', '2023-07-20 00:13:13', '2023-07-20 01:24:40', NULL),
(7, 'Monster', 'algo.jpg', '6000.00', 'si', 'Bebida energizante', '2023-07-22 00:02:15', '2023-07-22 00:02:15', NULL),
(8, 'Alpinito de Chocolate', NULL, '5000.00', 'si', NULL, '2023-08-24 01:51:05', '2023-08-24 01:51:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-07-19 23:49:00', '2023-07-19 23:49:00'),
(2, 'Gerente', 'web', '2023-07-20 06:22:15', '2023-07-20 06:22:15'),
(3, 'Supervisor', 'web', '2023-07-20 06:22:34', '2023-07-20 06:22:34'),
(5, 'Invitado', 'web', '2023-07-20 06:52:46', '2023-07-20 09:34:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(5, 5),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Freddy Krueguer', 'admin@admintiendavirtual.com', NULL, '$2y$10$MqKiO8sX2Z..ibajD/T1IO7IYXV2OxyWlYqBJ0ibjXo82qJfOGPv2', NULL, '2023-07-19 23:49:00', '2023-07-20 09:32:50'),
(5, 'Jason', 'gerente@admintiendavirtual.com', NULL, '$2y$10$iL5S8fYw.k/RhffdrOsNrOkxCLrlgM5E/FUN.xps9tWHMma077cSe', NULL, '2023-07-20 09:09:13', '2023-07-20 09:25:31'),
(6, 'Michael Mayer', 'supervisor@admintiendavirtual.com', NULL, '$2y$10$fcwtRIu8f4zCL3SgRQ5S/O90IUkjVlJq9K.1lH9jV790BcGyMDWhK', NULL, '2023-07-20 09:25:04', '2023-07-20 09:25:04'),
(7, 'Jefry', 'ymejia@seguridadatlas.com', NULL, '$2y$10$erx0RkCg3A88LRtQegsuHu8LefMOam44ZEkCDV9BN/ZtwFgL0m/GC', NULL, '2023-07-20 09:35:52', '2023-07-20 09:35:52'),
(8, 'Invitado', 'invitado@admintiendavirtual.com', NULL, '$2y$10$K3cKBjD6LYtPhsJfqUuGB.H/RHN7zGMFE8BwBkotuhV1yOKbW2nhy', NULL, '2023-08-24 09:57:08', '2023-08-24 09:57:08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `crudlaravel10`
--
CREATE DATABASE IF NOT EXISTS `crudlaravel10` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crudlaravel10`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_11_084546_create_productos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `stock`, `img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cereales', '5000', '20', 'ZrpCl767cxYp3JI0DS2d4mF0WURNVVQQoN5GO1rH.png', NULL, '2023-05-25 10:30:54', NULL),
(2, 'mantequilla', '2500', '80', 'fEKsPmfBmyFckpgSi1Okeaj0XYRQeCaE7oZySgB9.png', '2023-04-25 00:16:20', '2023-05-25 10:31:28', NULL),
(4, 'Lacteos', '3500', '100', 'HKeDeJRmv7ydEryhUdZTKui7ss67GozdLt3UfluW.png', '2023-05-25 10:42:03', '2023-05-25 10:42:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `crud_roles_stisla`
--
CREATE DATABASE IF NOT EXISTS `crud_roles_stisla` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud_roles_stisla`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `contenido` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_22_012813_create_permission_tables', 1),
(6, '2021_08_22_020736_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'admin@inventorysoftware.com', NULL, '$2y$10$vwWU1jrHBKbp/lFCP3/xb.KDDYASz7D/4zzWJd8RyVPeCDV7xSzHe', NULL, '2023-07-18 16:01:39', '2023-07-18 16:01:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `db_curso_php_int`
--
CREATE DATABASE IF NOT EXISTS `db_curso_php_int` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_curso_php_int`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) DEFAULT NULL,
  `gamertag` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `juego` varchar(25) DEFAULT NULL,
  `miembros` int(1) DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `color` varchar(15) NOT NULL,
  `creado` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `gamertag`, `nombre`, `email`, `juego`, `miembros`, `url`, `color`, `creado`) VALUES
(NULL, 'Moxtrip', 'John Doe', 'jslocal@locahost.com', 'Valorant', 5, '', 'ebebeb', '2023-08-22 02:23:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) UNSIGNED NOT NULL,
  `oferta` tinyint(1) DEFAULT 0,
  `creado` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `oferta`, `creado`) VALUES
(1, 'Casco Metal Gear Solid 2023', '190000.99', 1, '2023-08-17 20:45:30'),
(2, 'Chaleco invisible', '199000.50', 0, '2023-08-17 20:59:42'),
(3, 'Chamarra de cuero', '99999.99', 1, '2023-08-17 20:59:42'),
(4, 'Metal Gear Solid 4 Videojuego', '120000.00', 1, '2023-08-17 21:25:47'),
(5, 'Playera Spiderman Marvel', '49900.00', 1, '2023-08-17 21:25:47'),
(6, 'Playera Manga Larga Shazam DC Comics', '79900.00', 0, '2023-08-17 21:25:47'),
(7, 'Playera Nightwing 2023 DC Comics', '39900.00', 1, '2023-08-17 21:25:47'),
(8, 'Leggins Dama Negro Vital Army', '89900.00', 0, '2023-08-17 21:25:47'),
(9, 'Valorant Videojuego', '9999.99', 1, '2023-08-17 21:25:47'),
(10, 'Warzone 2', '19900.00', 1, '2023-08-17 21:25:47'),
(11, 'Pack de 50 Stickers League Of Legends', '9900.00', 1, '2023-08-17 21:25:47'),
(12, 'Impresión digital tabloide por pieza', '2200.00', 1, '2023-08-17 21:25:47'),
(13, 'Goma de borrar mediana', '550.45', 1, '2023-08-17 21:25:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Base de datos: `elfisgon`
--
CREATE DATABASE IF NOT EXISTS `elfisgon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `elfisgon`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificados`
--

CREATE TABLE `clasificados` (
  `oid` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `tipo` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `telefono` int(11) NOT NULL,
  `nombreContacto` varchar(220) NOT NULL,
  `precio` int(11) NOT NULL,
  `ubicacion` int(11) NOT NULL,
  `condicion` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clasificados`
--

INSERT INTO `clasificados` (`oid`, `fecha`, `tipo`, `descripcion`, `telefono`, `nombreContacto`, `precio`, `ubicacion`, `condicion`, `categoria`) VALUES
(16, '2022-06-09 00:00:00', 1, 'asd', 0, 'dasd', 0, 0, 1, 1),
(17, '0000-00-00 00:00:00', 0, 'asd', 1233, 'dasd', 123, 123, 1, 1),
(18, '2022-06-14 00:00:00', 0, '', 0, '', 0, 0, 0, 0),
(19, '0000-00-00 00:00:00', 0, 'asd', 123, 'dasd', 3123, 3123, 1, 1),
(20, '2022-11-03 00:00:00', 0, 'la paz total', 32131654, 'pedro', 5000, 2, 0, 0),
(21, '2022-11-11 00:00:00', 0, 'cereales', 234345, 'francisco', 5656, 3, 2, 2),
(22, '0000-00-00 00:00:00', 0, '', 0, '', 0, 0, 0, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clasificados`
--
ALTER TABLE `clasificados`
  ADD PRIMARY KEY (`oid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clasificados`
--
ALTER TABLE `clasificados`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Base de datos: `my_shop`
--
CREATE DATABASE IF NOT EXISTS `my_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_shop`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_identificacion` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_facturas`
--

CREATE TABLE `detalle_facturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_factura` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidadPedida` double NOT NULL,
  `precioUnitario` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_identificacion` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `numero_identificacion`, `nombre`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, 23613883, 'mariana', 'veracruz', '3206410615', 'marianadelmar@correo.com', '2023-02-21 06:28:56', '2023-02-21 06:28:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_cliente` bigint(20) UNSIGNED NOT NULL,
  `id_empleado` bigint(20) UNSIGNED NOT NULL,
  `totalFactura` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_04_062200_categorias', 1),
(7, '2022_06_04_062635_proveedores', 1),
(8, '2022_06_04_064933_productos', 1),
(9, '2022_06_16_052916_clientes', 1),
(10, '2022_06_17_031337_empleados', 1),
(11, '2022_06_17_031749_facturas', 1),
(12, '2022_06_17_031846_detalle_facturas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('joseph.giraldo@correounivalle.edu.co', '$2y$10$JyokxgqjR/BOBTqXceniF.1M8LVskaQAmIbDUOfXaJNEms7Ht5Iba', '2022-06-21 09:08:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_proveedor` bigint(20) UNSIGNED NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_identificacion` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'admin@inventorysoftware.com', NULL, '$2y$10$lmX1ly1L1b4Scv6hbdiZs.HTR5h5Q8fWRudUgZ4bN7KoLjDZ6VOre', NULL, NULL, NULL, 'FQk1JhjodX86tisXmcAAWN4vAPRaVff50jjzSs30zceLQV9hkZsN4EKe6fsK', '2022-06-21 09:05:50', '2022-06-21 09:05:50'),
(2, 'Joseph', 'joseph.giraldo@correounivalle.edu.co', NULL, '$2y$10$1ouvvaxvPci6fxhE60jfkeZTJG/ITLiXKJ4s6HBuFp21dVJUOmPEC', NULL, NULL, NULL, NULL, '2022-06-21 09:08:10', '2022-06-21 09:08:10'),
(3, 'Tester', 'tester@inventorysoftware.com', NULL, '$2y$10$nikKJF/lKMOeJjJ/T3yA3.J9IZmO22KdPjEUuU6sRG4zxJo/S6Oly', NULL, NULL, NULL, NULL, '2022-06-21 10:44:51', '2022-06-21 10:44:51'),
(4, 'Jefry', 'ymejia@seguridadatlas.com', NULL, '$2y$10$6KJBYNnJhx4./IWlFTExQ.dV/8OMOz1KW4J/2xFSGaJ9Gu9/M62sW', NULL, NULL, NULL, NULL, '2023-02-21 06:30:51', '2023-02-21 06:30:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_facturas_id_factura_foreign` (`id_factura`),
  ADD KEY `detalle_facturas_id_producto_foreign` (`id_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturas_id_cliente_foreign` (`id_cliente`),
  ADD KEY `facturas_id_empleado_foreign` (`id_empleado`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_id_proveedor_foreign` (`id_proveedor`),
  ADD KEY `productos_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD CONSTRAINT `detalle_facturas_id_factura_foreign` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_facturas_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `facturas_id_empleado_foreign` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_id_proveedor_foreign` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `periodico_elfisgon`
--
CREATE DATABASE IF NOT EXISTS `periodico_elfisgon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `periodico_elfisgon`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `oid` int(11) NOT NULL,
  `titular` text NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `autor` varchar(220) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`oid`, `titular`, `fecha`, `autor`, `contenido`) VALUES
(1, 'Petro el mejor presi', '2022-12-07 20:35:27', 'El Fisgoneador', 'En sus 100 dias ha hecho más que otros presidentes'),
(2, 'probando', '2022-12-21 21:17:24', 'probador', 'probando ando'),
(3, 'probando 2', '0000-00-00 00:00:00', 'el probador 2', 'probando ando 2'),
(4, 'prueba', '2022-12-29 00:00:00', 'el raro', 'las cosas raras de porque no registra fecha');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`oid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'virtual_tienda', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"elfisgon\",\"my_shop\",\"periodico_elfisgon\",\"phpmyadmin\",\"simv\",\"sire\",\"test\",\"tienda\",\"univalle\",\"virtual_tienda\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('sire', 1, 'MER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"admin_tienda_virtual\",\"table\":\"users\"},{\"db\":\"db_curso_php_int\",\"table\":\"productos\"},{\"db\":\"admin_tienda_virtual\",\"table\":\"productos\"},{\"db\":\"db_curso_php_int\",\"table\":\"equipos\"},{\"db\":\"admin_tienda_virtual\",\"table\":\"role_has_permissions\"},{\"db\":\"admin_tienda_virtual\",\"table\":\"model_has_permissions\"},{\"db\":\"admin_tienda_virtual\",\"table\":\"model_has_roles\"},{\"db\":\"admin_tienda_virtual\",\"table\":\"permissions\"},{\"db\":\"admin_tienda_virtual\",\"table\":\"roles\"},{\"db\":\"admin_tienda_virtual\",\"table\":\"personal_access_tokens\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('sire', 'detallepedidos', 1, 651, 509),
('sire', 'mesa', 1, 539, 126),
('sire', 'mesero', 1, 664, 229),
('sire', 'pedidos', 1, 462, 547),
('sire', 'productos', 1, 232, 382),
('sire', 'usuarios', 1, 122, 262);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('sire', 'pedidos', 'id_mesero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sire', 'detallepedidos', '{\"sorted_col\":\"`detallepedidos`.`id_pedidos` ASC\"}', '2021-04-15 01:40:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-08-24 04:55:45', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `simv`
--
CREATE DATABASE IF NOT EXISTS `simv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `simv`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_identificacion`
--

CREATE TABLE `tipo_identificacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_identificacion`
--

INSERT INTO `tipo_identificacion` (`id`, `nombre`) VALUES
(1, 'Cedula de ciudadania'),
(2, 'Tarjeta de identidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Auxiliar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `id_identificacion` int(11) NOT NULL,
  `numero_identificacion` int(11) NOT NULL,
  `nombre1` varchar(50) NOT NULL,
  `nombre2` varchar(50) DEFAULT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `celular` varchar(15) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_tipo_usuario`, `id_identificacion`, `numero_identificacion`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `direccion`, `telefono`, `celular`, `correo`, `password`) VALUES
(1, 1, 1, 1193597712, 'juan', 'Camilo', 'marquez', 'marroquin', 'cr', NULL, '3177754483', 'jcamilom8@gmail.com', '1234'),
(2, 1, 1, 1234567812, 'franklin', 'pepito', 'ramirez', 'ortega', 'mi casa', 1234455678, '0987654432', 'correo@correo.com', '12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`),
  ADD KEY `id_identificacion` (`id_identificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_identificacion`) REFERENCES `tipo_identificacion` (`id`);
--
-- Base de datos: `sire`
--
CREATE DATABASE IF NOT EXISTS `sire` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sire`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedidos`
--

CREATE TABLE `detallepedidos` (
  `id_pedidos` int(22) NOT NULL,
  `id_producto` int(22) NOT NULL,
  `cantidad` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detallepedidos`
--

INSERT INTO `detallepedidos` (`id_pedidos`, `id_producto`, `cantidad`) VALUES
(2, 4, 2),
(2, 2, 4),
(2, 3, 2),
(4, 9, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(11) NOT NULL,
  `numeroMesa` text NOT NULL,
  `numeroPersonas` int(11) NOT NULL,
  `lugar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `numeroMesa`, `numeroPersonas`, `lugar`) VALUES
(1, 'Mesa', 2, 'Mesa'),
(2, 'Barra', 4, 'Barra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesero`
--

CREATE TABLE `mesero` (
  `id_mesero` int(11) NOT NULL,
  `nombreMesero` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mesero`
--

INSERT INTO `mesero` (`id_mesero`, `nombreMesero`) VALUES
(1, 'FEDERICO'),
(2, 'SANTIAGO'),
(3, 'JEFRY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL,
  `id_mesero` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `tiempoEstimado` int(22) NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedidos`, `id_mesero`, `id_mesa`, `tiempoEstimado`, `estado`) VALUES
(2, 1, 1, 13000, 'EN PROCESO'),
(3, 1, 2, 20, 'PAGADO'),
(4, 1, 2, 40, 'ENTREGADO'),
(5, 2, 2, 60, 'EN PROCESO'),
(6, 3, 2, 30, 'PAGADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` blob NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `imagen`, `estado`) VALUES
(1, 'Jugo Hit', 'bebidas', 1500, 0xffd8ffe000104a46494600010100000100010000ffdb0084000906071213061313121312121312191815181717171518171a1f1a1b1c18181a1e19181d2a201a1e251b1316233121252a2b2e2e2e171f3338362d37282d2e2b010a0a0a0e0d0e1b10101b2d2520262b2d2d2d2d2f2d2d2d2d2d2d302f2d2f2d2d312d2d2d2d2d2d2b2d2d2e2d2d2d322d2d322d2d2d2d2d2d2d2d2e2d2d2d2d2dffc000110800ff00c503012200021101031101ffc4001b00010003010101010000000000000000000004060705030201ffc400411000020102030407050506040700000000000102031104122105063141132251617181b107143291a14282c1d1f01523335272e1346292f124255363a2c2d2ffc4001a010100030101010000000000000000000000030405060201ffc400331100020102040209030207000000000000000102031104122131415105132261718191a1f032c1d1b1e11423245272b2f1ffda000c03010002110311003f00dc4000000000000000000000000000000000000000000000000000000000000000000000000000000000038db777870f84a49d693ccf8462af37df6e4bbdd91f252515767ba74e7524a30576f823b20a4c3da560f3a5931093e7969d97caa5fe48b56cfc7d3ad848d4a535383e0d7d534f54fb9ea7885584fe97725af84af415eac1a5edea4c001215c0000000000000000000000000000000000000000000001867b41c437bdb5b3759a718a4b92495977737f78dcafa187ef9e0a1fb7ebce15633e926e7ceeae969d8acefe2ac54c67d0afccdae82965af2ff001b7baf4d8ad67d7589a57b20c437ef1152eaacb2cbd8f557f356ff004a33df7695f8c4bffb29c14218dab53a48669414142eeefad99bb34ada28e9af32a61add6a36ba5a7fd24d37cbf54f91a7800d638b000000000000000000000000000000000000000000073b6de3ba1d9d39f3e11f17fabf91f1b495d9f63172692dd953dfcde3717eef45eaf4935e9e452a96152d65abe3dbfa67dcaa39e2e551f7afd7d7e87854acefa18b56a39caecebf0d875460a9c7cfbd922308f3575d9a1faa12a75955a0dc651d52b90736a4ac3622cf5234c9e506969e86a9babb7638ac027c2a47492fc4ee9916c0c7bc36db8ca2fa9538af5fa1ad4249c135aa7aa35f0d57ac8ebba396c7e1951a9d9fa5eabf1e47d800b0510000000000000000000000000000000000000527da2e36d4e14efc9c9fa2f465d8cd3da645bc735db056fa95b16ed4d97fa320a5898dca9c27fb94be67a470b26b85bc6c88180ad7b7758b1d04b2f0463b3a9aadd33951c35db4a54db5c52926d721eed25cafe1a9e7b0ff00c6d5f97fe5fd8ef60b0ceae3a14934b3e977adbb74e7a7a1f545b7647cad374e4d37a2fc5ce1d49d947ba4ac6b7ba38be936241be31eabf2e1f466338e9ffc5a8c5f197d2ff91aafb3bbfeca9f6665e85bc1b6aa5b9a33ba6292fe1e32ef2d800354e6400000000000000000000000000000000000014df68981cd838d55cbaafd57e25c8e66f0d053d8b557645cbe5afe0455a39a0d1630b53abad197798442f1c44bb2e5970ce4e9269ad5763ecf12bf8c8db1cfbedf97e04ba151aa4acdaf06d73315a3b6af1ce9324e03095218dacda566f47c13bb72d0918eaee341e967cb520cb153fe67f323e26ac9f16d9f2c47d5ca535295b87b1e3868e6c7aee5ebfa66d5ba583e8b6243b67d77e7c3e89190ec2c3e6da097f334bf5f3375a54d2a692e0924bc8d0c14757231fa76afd34d7cf973d000681ce800000000000000000000000000000000000020ed9a8a3b26b37fc925f356fc49c55f7ef68286cd54d3d6a71f05fdedf23c549658364b420e756315cccab1b0be33bddd1f53865497612a942d5333b5ecfc93d1f9bf4bf6a2356a97918cd1dac677d391e2270bc34e281e9427699e491b6b625eefcf26d1837f66517e8cdc4c27e1c4e65c1faa360ddac7aadb1e12beb15965e2bf3567e65fc14b7473fd3506f2d45b6c758005f304000000000000000000000000000000000000192fb40c7396d69ebf03505dd6d3d6ecd68c5b7d62ded9ac926ff792e0aefe22a631f611afd0d0cd5df87dce6c3f863a2d0fbc3e0310e2ad4aabfb92fc8ebd1d9151475c3d793d38d397e4653a915c57a9d0ca797e7ee711c1769f74a08ece1f098875651961aac629acbfbb95fbefde7a54c055e8f5a155dbfedb7f80eb21cd7a9e1d5b69f73838895a9b2edeccf18fa69d3be928e6f356fc1b2978dc0d654a4fa2aa95b4bc24bf02c5ecc1ff00cd977c1fa1670d259d34c831d052c2cfe779ab000d7391000000000000000000000000000000000000056f68e32953ab2cd52943577bca31e7decb219e6f1ece84f155337da9caeed434e29fc6eed6abcca1d2143aea6a37e3f62ce1a0a4ddfe6a4cda38fa35366ce0ab516e51ff00ab0d6fe7aa39b88b3ce954a191d38d0ead482d165939285f459b3d95efaf9952a199e26ace69a8464e94232e2f2697b5d2d6cddd5fc2c79d56e74ed16959fc4e708af9369bf2322182b4b2e6492b5dbd978bbdbc38b37707051a39b5beba69abd36b724b8e8af7659766d571c567954a35279dd57fbd82bb72a33b777f0e4bee9ef8dc64655a525528dad5b4e9237fdf3a9e5ce0f5b702934f0edc545d784e4dfc14e351cbb95dc527f37c4f674725069392e374d24eeb46adcb81ea78584237cf777fed695b9dddbf4f32faa552a54578b8ab6ed59eab64bc1b57d15ee5db0f8fa30ddf9d3955a4a596aab2946dab93596cf45aab23d3d9de269cf1517170cd2a6e4e2a396d78d256e1db0969cbeae811b38ea9bbf24aefe49af5343dced9d5a963a83a9573a9434568e99a0e5f67fa3bbc0b7d1f05152d75baf9b3bf0e2b6e3b193d2b8154e59efbe66efcf7d0d00006c9800000000000000000000000000000000000000c5b7ff1328edba894ea45677f0c92bddf049bd74bf0ed5e7b49956f7e1e2f6a55795e6cd257567db7fa493b7795b152cb14cb5858676e37b15dd9d4e33c751a3554ad39c6126e49cde6ef8e8b5e4be87776becd8436262d746a392be5a7271b4b2351b2537ab5d67af895ca74dc36c50eead4a49aece913e5f22f1bd18a5576263a9e5b4a8656afadd59544edcbe19ab771939a79a16dafaeba279a1afba5e1dd7376b3ea2bd28a6dc6d06edcb34afebf8d9d9a8dbadb5e9aa54e8ca8d4a55561a1533ca315d22514a4d34eeefc75b5d5ca9d7da0aa54ace7922ea394f4cff13d6d18c6f1d5e9792e7c51dbc2538ade9d9f25770ab868fc6dcb4953946daf2b4625795354f19523359b26656bb5c2e9ea937cbb571e245d5c57692fa95fc1e79a7fea9fed64a6e8a8c62e76d5da0d73daefdc91b1b073a9593866592d26e29392b3d2c9f177e5e3c781a26ec52a8ab51739ba916a2e1756718747532a7a2d6cd71b73d0afee9c12d8e9a5ad497a7557a7d4b3eede1ea7bce6a951cb5bc5349658e5764addd35fe9f376f012ed3f1b777fd28f4c5773ab28f08dd7e4b6800d93000000000000000000000000000000000000001946f955cbb5aaa726929eab5e12d5bd3bb29ab94ddb782a33c64a5569a9c9376bdecd5f4bae12f3b94b1f38c69a72daff0062de0e7966ddafa146da9424e8e1eb6595aebadc9b4f3c7c568f53cb15b72b65c4b94233f798a84ec9f05170564a5a3b4fbf82f02e78ba6eae12504f2b9acab4bd973d2eb92b799c2a7bb519e154ba5718c95e378a8b69a4d357970b331e8d4724de5bae5af73e167ba5e8b91bd47118794575f6525a2d1b76bdf935a3654f07b5eaca787caa69e1611a74e7d1c96914d2be6b27c7b2c49c554a93a4fa4cb27293a926a30bb6eff6ad793d5e97b1ddc06c4c35e4fde1b71728b5d5bde32c8f4d5f1b7cd769276e6eeb86ce6e875eb26a4b338a6bb526adc7bfe84d2b4ac9c6cb9bd5eedefa5b7be896ba923c7e1a976a8a5269689472fbd9bd35b6beacfadd5c42fd9fd1dace37cd7e5d6bae3fd497996cddca7516253a9373526dc55a2b2c6cf2ab47b1596bd8bc5d636160a74f64ba95732ab5a577769b51836a0aeb4e39e4bc576162ddaa552388cd52aba8a6d3826a0b2472d92eaf1e3c5eaede6e7c2a50ab282e0d330f1555d6bd5b59b6dd8b7000d8338000000000000000000000000000000000000148dabb4a4b133b3d1ca56bf1d1b4ff00d92932ee641b776aca3b46adf2b829cdf5b32b759bb5e29dd78c6453c6252824cbd80a79e6eeaff3e77f22655da29d6552352ca329aa8a39257c94e5524baf1ba95e9db973f13cf684e8d3c3649526a4a2a9e93a49ae8a32a926e595a4e716d689b936b85b31cedd6c4d0a78ec96a9494eea5d2ba72846c9d9e64d3bf15aafb45c717d0cea425d3d0bc259d5a70d5e59435eb6ba4dfd0ce528d2d387cf3f525ad42a66d535e4dab775d79956c3d683ccad9e4b32cae6ef9b34e56c94e377172728b7fcd24adc11d0ad88af1c2ca346134b34dc538357cd5672f8a6ad159322bd9fc7c1d9e5ecc7174a37bd7a5e5287ff00478e376b518d1bbad07df9937f247896323c2373cc30d393d13f24cf5dad888aa11b5e5963aa4ad6babf17a703e776ab55f7b59e79a3292514a2928c7569665c5eaaef5e0b86b7e06d2db587c9993cebe24d475d125ceda68f569f7703db73f6c4eb6d5a0ac942fc179eafbec4b875db52d75b5fdbf05d9e11aa2db5b5f7f3e06a60036cc1000000000000000000000000000000000000061fbcb4af8eacb9a9cd7d59b818d6f7da9ef1d7849a59a6e4afa7c494ff00f62ae2b646a7453fe64bc0e047f8c9f6bbf6f1f522ed6c4269475bad7c2fc9f7925472d571e395a6bfa5eabe5c0e36366e58a937addb33f89d2525dab9f5867693bb9793fcceb636ba9ec8bae6d26b9e8ffb1cdd9381e971167f0ad65f82fd761231fb2a54e0dc659a9dfbeebb1b5cfc437a9ee4e2e6937a9217f8582b708ebdfab7e8ede45c3d98616f8f84b945397cd3b7a952c5c6d8785b45957a2f5346f66946d9ecb48c229f8cb82f251bfde25c3f6aa2337a427970f2b71fcdbee5fc006a9cb0000000000000000000000000000000000000329f6c9b2daad47129755f524fb24b58b7e2aebee9ab11b1984a7570ce9d5846a425a38c9269f9323ab0cf1b1670789787acaa5afcfc0c0b033cd81d7e28756fdcef28fa4d7923915b5acecb8be06e5b6b74a87ec1ad0c350a70aad668b8a599ca2f32599ebadadc7998bba496212e0d3d53d2516b934f54d3e46755a4e9dae74b83c642b394a0acafb7cf627e1366d4a9879469351853f8a5db2e7e4b910b0d5654f14d5eeb8497292e7a336cdc5d8beedbbd18ce369d4ebcd3e57e09f822adbffb93275bde30b4f37f3d28f15fe68ae6bfcabcbbbdcb0cd42e8ad43a4e13ace9cfe97b3e1e7e3c1f9151c6d2bce9c21add46292d79e9f446c5bb1b23ddb6738369ce5273935c3924bca318af26f994cdc9dd1c43c753c46263923492c94e5f136b836becebaebae9c3534d25c2517159a4b528749e254ad4a0ee96fe3f35f10002e9920000000000000000000000000000000000000000023d5c2d3955529421294783714daf06f8120000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ffd9, 'DISPONIBLE'),
(2, 'Bandeja Paisa', 'Ejecutivo', 7000, 0xffd8ffe000104a46494600010100000100010000ffdb0084000a06071414131614141416161619161a1c1a1a1a1a221f1a1a1c191a1a191a1c191d1a212b221a1c281d1919233423282c2e3131311921373c37303b2b30312e010b0b0b0f0e0f1d11111d3228212830363030302e3030303033323030303030303030303030323030303030303030303030393030303030303030303030303030ffc000110800a5013103012200021101031101ffc4001c0000010501010100000000000000000000050002030406010708ffc4004110000102030602070505070403010000000102110003210405123141512261061332718191a152b1c1d1f0071442e1f1233362728292b21543a2c23493d216ffc4001a010003010101010000000000000000000002030401050006ffc4003111000201030302040504010500000000000102000311210412312241051351613291a1b1f0237181c1141542d1e1f1ffda000c03010002110311003f00c4aa5c71b4875a4d443008e52f13ac64f2101dcc4e33da2bd9d3160ed0b7e61af11e238aca399434cc30336f1251ce1cf0e44a516a4482cfbc6cf4814626932abe10e32831a44c9c8168ded324121071728ba104d23924d2835891223c4cd0230d9c88ea65b6913ab230e96cdce07742db2a1940e912225344cb481df0c78cdd0b6c6892fbc24d9e2cc9348ea4b981dd376890fdd5e82284fb2b130611318c57b6983463782ea2d2a59e5c5cb3d9e2bca1945e0a2209cc14126167d1e12a5aa27c41a38920d627263ec240659262d04b088504ee21c5f48f4d1264261e50e2229730ed12a555ac642114b442c0f120543840de148baa6887a9a91bd7d22dad309288d060917907547011ca26972f23ca1fa110f4a418f133c048c24c36625f289168da385348c9b6912d54e71c4aa3b3939c44f97747a649f1f2851ca428cb429e6f3b386bc3959f8c2223a2389cd324b30ce2dca4ef1159e551e1e410614d931838929401589384c5605e385358c9b2d75a1e244ac18a4d1625cb71e1197853b3466db43d25931dea080784f7c310fb46de0f124b313b1316920f8443254a1908b0824c093986a2480c30f7c366a4e43ce1a90407516ef8185254a23b2d2fe70d9534287010b233c3c5cab8728a2abe4a66757d597dd459393d19de340271082930a264d758911200d1e29c8bc4b8c406135a0cb2e65fd328babb4543167a861435c8b87f510a660b83285d33113a944476897c24c4336f1581d94bb967cb3ca915a65ee49c381209fe3247f8c129be603d061da4c101b3ac765add40738af3497cd05db550cffa62dd9252b13e142837b67ff88617502e4c57f8f57d25ab41348925f38b3634cb2d8d2ba6c52def7fd60b59ad1213feda8101ea82a3e181c9f08479aa71710d919790601b3d95655c29511c845f97764d2292c9f11f182c2fbb30a19a9413963e07ff00d8cf17913c10e9208dc1a4158f262b7db8100d9ee3590e404f239fa44c8b896fda4b6ff945a37a9337ab4a1440ed2dc61147a0cced046cf3a5b8c459f22f021938bcd7675cda0f45c7fc50e93702b5981b90afbe0ecc9386a4b8d08faa4390a8a7c9039931d43dae20655c19b2bcc7e7117ff9f57b607841e2a85d601ce33cb4983515601ff425376813e511aae798d467d9e34427031c32ddc626e719e52f684352e3999152161c10cc58c57933c28f9e7cb311aaff0044961df12892eea3e310de1768292100255a103df00d4881285d4a3199e5241a45696860c79c10423155b0919ece338ac6510ac24b12edcfbb9fca13da5046646c21449d4c281bccb4f3854a62c6144b3d1ac444474c644e69c196a525d312fddf9c3e549740d290e0968418d1233666662e768ecbb36f164060e63a94308c8521ead8728924afc3943824b728ed002490902a4e400e663d69e93632d10cc959170c0d62b0b52960f5291d5eb3661211fd23b4bc8e54e701af0bc648243aad0add7c32c1fe1969cfbcd6284d393ce225eba8c0cc352ed292fd5e29841af560a86ddaecb0e6620b55e7d59e35ca97c893317e2843007faa32b6ebe262861c58523f0a3853e433f1829d18e87ccb524cc53a50038dd5a51f20faf230d6a54a92ee738f78a4a952a36d497645f0272f0cbeb6664e494ca4246a49402a3e6f16a4dd256158e5a49760ae257aac93e3cb283164b9532c049425290d4cc73aeb15fa436f50025cafde2c940df4a83bbb01dfca216d5798e1290b7bcebd2d22d25df50dcfe71074fb42a57019c5f2c21d851eacf56de1d66b399e1f185802803e2193d1601398a888ac92c896c30a96a56402f8545243a992524814a5690ad0a12802956254b989080140a48c2d330967a914564d9438d2c60e7d668ac792312dc9b290127899d9cb803bc7c19cf8c13b55dd30a49c494843350b1516385d20d5882dcf48b561bd2599aa43d5284cc48048592a4a93422a4870f4d3c0de9f3d330216a514e15909557125938b129cf12588714ed1639400a37176199e7af6365e2646d960b42258980123361ab80ad73a10604d8ed7356b48145289a6c35ee3b47a2de2b412251385643301be8523112cef4619c646efe8fce55a674a9414b52918d212c00aa4a71959012012aa3bd0738a1290cdc49aaea1b198fb3d8d24850a85a52c26ab886366347720eda1d3389a74dc0a270a91847133a8506819c684befab468aedfb3352c0ebe684310c1031102942a570f800477c69acdd02b286c5d64c0345280150457ab4a49cf7da3c680616317fe604e260ec1786200b82fb1a79c139568ef8d1afeceace0fec96b940b30a28066deb5d6ba9ac0bbd7a1d6996e50b4cc48ab80ca6e6906adc9e399a8d038248189653f11a4f65273ef2a8b4851092029ce447c0c5bb2d8e54b528cb9494296d88a433f70c8786714aecb22828ae630c2cdde6873f2f18d04db29674ebb662234539009f7b43acc97188db3d90a4be4fa7e710de33520312c1f3304132140350d2292aef40254523112f8b73bfc22b6a40258093abddae4cd15c7302e48492f4face1b800770621b9804a768f31e9ef482d322f19e89368989482864b85246294851e15020549396b1d0a40bd303d04e6bf4d46b7067a7cd9ed51511085951a7e91e4b2fa796f01bac96bfe6969ff00ae18953f68d6c1da4c820e98143dd323c6831f4842a289eb7661855c55f5f58b6b58d23c925fda94f078acf2943f854a4bf9e28d05c7f6976598c95a1725473a634ed9a78bfe31be5ba8b5a0b15637bcdc159face1aad2b1059ed499a90b96a4a92ac8a4b83a51a1cb26125a10599ebe95d5cd490400acd8d1dfdf5892621eb157a6f25253294a1d9999b905da843476c96a2b96f8424ebccef12bdc1c4e95224a0326a6d1c86f567711d81cc6e279ecc9608faa444248704ed5f08b6510c5a748b434e7958f400d0e243671cc0a60d0c1279881851c9556245a8e511ad6940c4a50035e7c8432c52a6da4e14854a95a9145a87f37e1ee1e7568625267e3880f51506799d5db1d425cb4999372c29d1fdb392477d79456bc674b92dd735a27863d5b912a551c050cd6bddf2ca085f57a4ab2a3eef6400280e3982a41f641f6b73f125b2f66b212e4f79262b4454e39923d467e64578de73ad07f68a252324818501b409140d14a659c805f3d867076c9620b708cb551cbb873ca2c7fa3b2480ee61978bb4ca5d890a9c80a1c38c383b3e463dbac4a480006a060064d1e1b68499534ee0c7a57472f39cb9681d44ecb34ca510aef3a535ca39de2d41aaaa95e04e87873a00cac6c668ef59a9420aa3056e5998a2540f1a08490681897e16e3a949de94ce34979ddb6e9ce94cb12a5fb4b5a413fd29c440ef0fca2b27a085412275a1342e5289655e4a514b7f6988f481280bbb0bfccfd2535aaee1b56e607b75b132b0f56015a544a5586aaed0054663121cf6481aef15ad17923ace1008514f6965638724a72e1aa685cd046eaebe8c5924ffb5d6ab2c535954e49002077e17e71a1fbdae8c5983060cc360d9083a9e27450d8027e915fa844f129b63b5cc9e572244fc41458a50a715c8b0611b9bbec96d4a41b44a4caa0056664baf69d825454972cff00078da758a3992601748415254e68d4e50bff00576a8422a803dcdcc99d1a9ddb764fca666d36e409df75492b5a94928624b9526871641384bbe984528447a37466ee4494a8a5d4b581896a3da21d857248c4a61ccc61fa2f3508c2b206350097d70a54b61c8711f4e51b9bbe7ba68291d2f37803f9989774dcd0fa0b277ac4d8ab4da0748b530034316d13443d5c1897a644b189b5874b5bc43881a3c3a5cd1e707bb314571045f572024cc962a4bad3b9f686c77f3ef1f2ada0b252851d096601bbda35895400be1a5ae944a83e547d7eb9c73b574150f98b8bf32cd3552dd0d9f495e6ceaf3864c9c1ab43026d979b2a8df188c5ee94d669480cff00afca20572e6c25fe5ed17861569c1525800545b402a4f2a7ba303785c122dd3576813664a9b338921584a496c20350b3247e714ba65d354cff00d949c411f888342069cfdde74b1629b890829238521b71bbc5b6a9414106d787a7a14ebdc1942f3e8f4d92596939065a52ac0a7240188860ae13c3012d08631e832ba42b0d2e6244c94ba286803060da9a135d7519c50e94745d0a9499b65415104e24a545589272527129c90d90a9c5ca29a35ef6ddde45a9d2323113116c265a45589dc67c838fa68e5b6c7365a90674a99256720b494620ece1c3d0e7df052e1b12675b2cf88e0026231856c85024176cf0b72782df6af7c09d69972105d3241248abae6328b6ec908aee4c59bba8002436c13365d19bc8097266b81d6f56958d31a8614961f8b11487d9ddd92da952896033ac79cddd2c8161b33b28ce96a50d409644c513dd87d23d20d4109a52a4e9bc43aa1d51d4ce200e92cba2002144aaa0d435310006743146c96254ba03c2e4bd752f046f9284cd40594e1292c49ae205dc8cbf488adf6ac2e2bd970a6e104a929009df8b2e4620624604ea526b208beff23db4ff00727e70a2affa34af64790f94281dd0f6fbccb60062354af1116123944536725295294430049dd8073ee8a85e4a6d1968b7225a38cb3e59927b840b37bcd50696861ed2c3a9b2700507893032c32173d4a9abd0838764d4b0a528d967583972dbd2a9899530a4123203cbf943d3c63a0941579c990bd666e302504d826cd2f3944f781e8321062d77afddace108a2d7c20e4c35572d9fe504ed8024518a48a1e5b72a460ba573dd784680fbcfca1c05f112c6d9857a3d6795682419a12c40aa4925f2a786f1b193d05b3a98ae6cd501a230a127bc10a3eb1e5bd1cbc7a99a09ecaa8ae55a2bc0fc63d9ae4bc52b48a8761e3cc6e238fe28fa8a26f4cf4fec2374e518d9a76cb7259a4f6240e78d4a5bf828b0f011a2bbee3b24c4050912df50462f453c5021e2d5cd68c13002592aa1f8472f49af7f34798490706f2aaf454a748c8964dd8897fbb42503f81213fe22219f2091a9eff9c1c9f2f94535c98e9d6d3e4993d3a988097642f9446bb38106a623381f6998073310d5d94c4a5096945286af944a110b0b9731d99318472ddf798f3d22726ad8462ba657d25230035240f32cdde609df57c92f2e5712daac453cce71919dd1b9b3961466a52a15c0a497a8677c95ad44753c3f4aaa77d536124a8956be116e3d62bbaf1c2bcd8276e547ae7946daecbceb5578b354c79e4ab14cb3cdc33284bb1d08e4634361bc00a92000de9f59c76180e54e212295e922d69b7956aa70241393bf81c23f482165bc46449d98fc1a3149b41c5880c5936ceee2b04917aa7223886aeccfddf1de0012388c2a0cd849b6853105f42198bea62c2a7529a0ce3188e90212681c1390cdc6d17ac57d9a2490a7c81151e27f1469d401d260ff0088c46e5189a844e24736f08c8fda8da264ab3a674b00942c05382c52b0d98ec97c39d348d0a27058a29880ec736f88ee8ccfda34d52acd2d99a6cd420850c83296e362e915da1c486166c889a68438b60cf3a574967ac809944a8fb3979b1a44579dd96e9a925490c334a55c47bdf3ee8d65c977b1382721ca8530d2a18025f91ab4477f5ed324bcb5a485e805719c86003b598cbc6255a967fd341f9f69d36d3ad8f98c7edfd6660aebbb8cc5364067b88372d0659001ae7dc39d397a8ee81f66330cc5aea851528a9243104d723df941dbb65952941600524d5fb9a9be50fd431193c466929a6d016e0c56796a2f50ccfdc32d347f7c6c6ebb5a4cb485a0a5281852b00e9f85c5480d9d3d200aacd5156c4924b6c1f7eecf9c692e4973652138a5132d45f1024e10d92f514d728809b98ed400133cf6cfda79874d6c024da5612ac6998f3016d16a552800cc10fb3445d1b903adeb1754cbe25778a81cf887fc4c5de9ddda8976a5225294ac602ea5c051514e14ab50c28f90de0af466e1eb662647fb680173cfb5eccbf13fe2ae51d8570298627b4f9da89fa8544d47402ee5294bb6ce04158c3292734cbf6a8f551f4a46aad5380482a2123573150da0229b0a0f7003c2339d21b72e7292848708983405f2dc3867394729aa9aac65b4e85bf6905f13553a6850eca48484b6270e78b6c4fb18269b4e35096dd800adeb8680a53c95a91a520389ebc7d4c9acdfc4acd32c1cdfda5ff0e9aed07ac3621293843926aa512e547524ea602a580b4a94e711ec63913b4289e3374c619c0c54b4cb0b42d0dda494bbd43868eb474ac0a92c39f38bd71c489b331922dab945482e920b280fe1fa78b37959d4b4a6d32bb492cb0343520b6caad0f31b3dee915d0660eb65a7880a8f69235d9c0f4f080175de8a92b7a1490ca49c9493983e423ad4d838dcb399514a1b34d55c57c85a0a547b4ea4b9aa559ad2fa82f8878c05bf523ae552b4af2dbce0826c928813a49e12a279a544552be7b1d45778ab79d9dc85ed4f511bde666d337390ca220adc7d259b67600e243f64e637c274eecb942b45de5640482a51c800ea27600549e504a57d9cdb8a31ae57563651e26df0876ee2d1ae11d6cfc7bc5d88389b5e8cf4d25cee17e2f64d15dedaf846a24dad0b1c2a07ba3c8e5745552882a0bc40f680296e63097782d65b75a651ec2963535c47c75f10f1f3facf0ba64de91b7b4b68ea1d7e213d56cf7acc4067046c6beb9c4eabf547f00f58c35d37ece5d3ab5ff520b7f725c4184db26eb2fd639ccda9a5d3bbeb2b094db3b614b4db96b15a0d844080d581536f19a54c25abc12a3fe20c559a2dabec59e6f88091e6b2fe918ba5af5cdce679aba53160216b75e68962a630dd26e9be10a423b5b0351fcdb7767166f7e8ade134100895cb7ef58a8f0f28c849e894e4ce1267214853e27a149402ca20efd96efa88ece93c329521bea1e240f52a556da07335fd1cb11ea92b98e56b1895e350337a08d05964cb5d144b370a87692771afd6b14e4e100258a694a50f711482532c83a84ae5b624aaa3f1286a9e6751dcdac44c4bb93fc8ff0089f441453a4a9c76ff00b996e9821e4926ab428540ceb423bc7be05d90a9292552d9b52d99e59bd74da0df4830ad6918b0a16c4f70389bd487817d23b682812a52095998198392c0b003bcbf845da727604f5bc4d7a6bbb79ec04d2dd16744e41427854470a80d40a823581961b12d5882a704cc04d1d8023307634da295d36b9f2148eb254c4bf65c501e4453f483963bb654e9ca5296a42d65e84324b681b53ce072bd37fdbbc228a7aed8b7ca00b54a9d242664c96529a80aa1049af11492c7be23ff005e24d4c14bc6609499b227ab1a4a82581cc820829f0ac519f75588ca5293314856025357a8ab54eb978c182adf103e98e212ab20e9c8e7de697a3d7ecc5baaa5081c4ac854301e67c8472f154bb64b09eb08095058c0a0ee1c805f2ccd20558ef34c9949918192b04a8a81e2c867a967cb7105ae7bea54b1c0801a800c86941a0802c578247bcc34b75db6dfda66acb69321665072d309e2a12e12c4f2a378468e7de38fab2b357087d4d09f7068a9d2258b62a5e129414a9ca9b24b1c41a8e49c347801d3054c906480b0b97550580dc4064a156201f1f08df2c556014f3cc26a829adea0e3fbf79a5e95ad0969a915013858660ab0b16ae84f80e703ecb24aa664012123fe21f2a660c53b0ce9b3a5a4ac821c1008724660b1c84696ec90115232092360e598f83b3c0be2e0ff0031b4fa1430e3b4826490a9a2503a04be83551ee61eb06976c54b050a502e9273212a4a784d054286d952224597a9e205c90028b03c249a87caa52e35006d00ba489338a64a4a5381a64d989384a10ac5c1b95280c89c802464c14e99a8e0091ea2a8b5ce40fbccef598d6ab52838c604896c1c9a096121ab843789abd4c6cee4b27512424f6d671cc583f8cb03cd8500fe57d6057462c8998b13d5c3265704807f1a8062b1bea4789d284ed1354ebc40a6583da51d124951561a04d75d0738a754dbad4d781cc934d4f26a37264f794de03fb40996dc6a2ccd4cb4197af380f664cdb512992152a4eb315fbc5ee47b20f9f7413b3583ef3856a7125238505c05d471293b060c08a78c1d44a090000c368985a98b0e650cdbb8e3ef2b5d1764b909c084b6e753df16ca5f287a93a8866268431b9b9983da2eae14498e1405e6dccf3eb3c852aa0708cce90c9d286cecf5568fc8b53eb98b6b94b53134d9f6d800df5e115a74c4a41003f7fd7ba3a17f48ab0121988ad4e21cf2a72143973678cf5fd740592b9638f5480c0f31cfdf05a7daf425db41f2f9c545cf3965c87c4c3e916437111542b8b199cbb2f25c85b8a8c94939286a08fa68d6c8c168965728386e24fe24f7ee398f4348057ad912ba8ed6fa1e4605d8ed73244cc48514a927f2f18e8022a0bf79cf6050dbb4f73fb2e916532bf672d29b4a411309aad409a2924b9c043503005e993ec97244783dc3d27066256957533d268a144ab77d03ea323ab47b0745fa508b50c0a1d5cf03891a29bf1cb7ed279663b989123b199ee213163979948a67002dd7885122580946e0712b9be839413be2d0421491a8351b738cd470fc4f52548a6b8f59d3d0d00c0bb67d24d08188dc4382a38569d4b4b3665a9c61707967e907eebb7e3742c71a7d4659687e7032eab4cb407243c2916bc7680a40e4798d49f778475344ed44ab037b9b11fdce6ea13ccb82bc0e616b481b463ba532de6a0b3b24e41ea48dbba35179cf611829f302e795151ccb0c835057ca3a7ada9d3b66787d2bbeef4966c3814a6a2853106a8f03ac5cbceedea5c266152140100f692fa1dc73f3e766c17189b2ca8a8a660aa540174ec15ed0a65ce8c6075e56a998596f8d142336c8d0ea08f4883cbd94ee473c1f49d2f33ccabd278e47f73197c489968b5140525294240528fb46a586aacb6ef83377f45702933113ce301b880c356dbb3967581d64ba544254a2a43a94545dcac92e70e89ae45b26ce36974d82526529c542281eafb939bf38addc8b22116033fde7de0ed0a0b9bdefff0083f8992e905e33a5ac4a9cc30ba9384ba15cd2466cf9661e2c59658480a9934254e3841a83ccd6b13a6cd2e62d29b67190ae11c4961902086254de1b42b75c966eb5025cd5ac54a92736d01398195756d204ec2b6e2df988c52cad917bf161f3bc2f75da2ce312df11031281a28b06a1c89e166e421932ee9368575d28a12a61c24769aa3116cc10e0b40fb459ac6b460c2500d3121441cea487c8f8d209ddd70c84b7533d400192aa0b8df36d33a4780b8b2fcb8fac061b4dcdc7d60be92db7aeb2f54996f31252180e2c6141c9f6433d49ad6285d5d119cb9788cf4a14d904e263b3e20e72cbf5257e58085aa6c80eb609520a87161a621907d33a803c73d68bd6685e05e20b4fe063887209198ad348626eb5973f9f69ec017bda42bb1cdb3accb52c2893882c6441f71719728bea50992825402862762977a1c877b433eed3272d0b502920360190739a8ebdd05655884b0cbe118b09dc9190f51a8a40547008279f68d44b2d8f1dafc99cbb6ccc709767cf215386a72dfb9a0c4c9a2a827858a4bb167008228ce337ce85a04def6b98652a58960a909252433709aa480f98040c9cb454b3ddd3ef042664c2ab3c82818d64315a43b265839820b951ce99e51ea741aa9bf022351a85419e7b08e937cceb61167b3a88502a136733a108048e17152a6007d1105b132d6a164904f54923ae98f5555c827f12d44b78c36d16c47fe258004c9ff7260cd4723539ecfe022ee295679624211d64c5d70a730742b53f08af326b48b4eda43620cfe73397d559b73f1f9c4b2bb721099695b265a0fecc02cee0a1827f150bfd3c5db9eef54d4a573814ca1544a25eba2a67a32720c3be1b73dc20284e9e44c9b8400e2890344ed5f8c1dc74a446ec0604b002799d0b032d23b8e1120e50d29899a305a4c95c30886171ef8700686164ccb5a77018ec2f185193d733016bb6be64f9b7ba06daad83bfeb730c5cb39a8e5b98ab32a59bcf38ea2a8913398973c56ac3c879ef1566db1c1084f89a796a7f2898d97772d9be50c9f240e4f967f0f08a17688a62c6535283d5c9ad3ebe3114f47581b0b6dafae8390a522d75600a8cb76f744336615765db97cf2e74da1ca7d225876303cc4149639882d75f48a6ca290495049749721493ba542a3c0c579d650d5207c3be079114021849882a67addc1f68e998026d1c5b4c00621fce9a0577863c898d3d92c6274beb244c44e1a8496297c8106a92da168f9f92a232304aeebfa74a505256a0464a04850ee526b11ea34295b99451d5bd3e27b2ae5281a823c2398147207ca327d1ff00b575a593684a668dcf02bfb9218f8a5f9c6deecfb40b0cd01d4a964fb6971fdd2f1003bda3987c22c7e2fa4e80f13b8f87eb1596ea98acc611cfe420f592c69948381ca9aa4fc368e58ef291347ec674b99fc8b4a9bbc02e2196c98c0d62aa3a4a747205cfa99356d53d5c1c0822ff00b73214c74fd632d60920d4823f89d95dee33f58bfd215e34a93f54afc200d82d61c623cc72689f54a4e44e9787b285b19bbb9ed5812012a1eca99b0e8316c09fd202de4b51537e2258bb6849663ce9c9e0a5ca3ac96ac2b7511ee2c05797c231dd22bdc4ab4a10bcd29c45f776ff00ac27cb77da39193189b12a313cc8ba476ec2b968427880e20fc45daa068c01a449d1dbd544a90a344a8679ef5e515ac77b4beb17354e4ac2121446694a42784ece9ab6b1a25a5169972d4941c415424b0525890fa9ae50e75006c23f98e0c79be0c92febd64fddd285252a256082ee4331f07af8537865dd79c999c0ba24d0ee1f58af6bb259569eaa720218e4385493bf0f6bd60475726c73984deb538410fda43e84e4a7a547311e0bb96fdc76822cbd1d8e6f78eb67432d1d711669a99893572482391212c75da045e169b6d90a84d94a4e1a125f0d72a82c4469c74c508ec9034247c223e955a5768b363002c4c480918b8f418f0b3a92c34ad21c8fbac1d6f9f4b4454dea090ddbf737999b074b26065382a0410fa3170046991d2055ad04a90312425d4cdda2d9b1a72cbd62bf47aecb1c84933acc09c22b358071ab4c5067e4220be6fab02461494caaba849255886832094b6f586b520ff0023e9006ac25bcd2091dc66119b6c972c872002e9c6ec9428d43b1efcf2f75291d6cd2b0cb54b582951a00820865f58a64b8231376a9004f4be4a09326ca14a25f1cd38cbfb55a03e0207db6fab5da884a965b44a6891e5fa4153d184ea631157c499c1541ccd17deec9652f3a67dee706fd9a3f7493fc4fdbf1ef688ed77bda6dc405fece57b09cbfab7f740bb05c6940c5348006ff00082d2d2a98c943cb97a96e250e5ec8cf9d74826a8385f9c995598ddf265dbbd294a4cb93fbcc816a21db889c896341dde3a0bbac28952f75e6546a5f3781763929948213a0f1260859d542f57ac46d9e2569885645a029888b128f779c03b0ac85341149843ad8c6a1b896b180a09df101e847c6240a8196e9f85493cd3e84bfbe2dcb99964c4f9b83f5e100c30210ef2d2954063a9a8686034fae51d418499eb48dbba1449846deb1c8cb4f5e79c26439a9faf08ad31494964a79b8fce2da92a2388809daa3f58a5695200009db2a7a671d45cc8da55b4da00714f0f9fd78c5555a4abb21f73b79e5f944f3969344a3cf7ee1ac5799380cea7d919c52a3da218fbc8fab1f8abf5ce219b6c48a67c87b9e1d392b5e6c84d6835884ca4a05039dcef0f503bc51bf6902e5295c4a2c39c46a219921f9fe5179324afb5f5e7f1864d5014479fd7c20c3768b29074d92539fe7e50c062cce4eaa50f0abf8c404f2610d198861631b487cb5a925d248ee3119851b3d2e0bc660ccbb6e0182523a616a4e53660e426280fed76f4806166162e502541ed3771f59a597d369c7b654afedf908aa6f9964bf187ee6fca01d239026921ed0d6b545e0cd8587a6225e1c25430f2f7d6b0af5e90596d04aa6a4a96476c24823c8ee4c645a13400d35307701631a757588b31b8f7134f26f6b3248754c5e1ece24e5e0ec62c9e9a3170b9bc804a7966eaeff0048c861e71cc3ce34d043c89e1abac38335779f4b65ce2954c33d4a4a7086c09a3bd4b28981b32f7b392ff77528eea9a7dc90203e11bc758412d345e0406ad51b968653d26c3fbbb3c846c7062579ade21b4f49ad2ba19cb03649c23c90c0f8c0d1861e85a446d80ed02e4f2646b2545cb93bc4f22c6a3a3733124b9e7f0a478c3cda0fe257808c627b43545e4cb322c884556627937904d2527fa8c511c4f461a0f9ef16112aa36fd210c07fbb31c09ed095992544296711ae7a770d20f594c06b24b2e3bcfc7e506ac88891e534e5f674fbfebca2edde5d2dcbf48ad213489eeca288d1a107831e3912c5950ec7c2084b00eb14d29f0fa316651ac25f31c98905ea97c3f5f5a476cac69b37fc70fe70af41d9ef6fa3e110d966b2ce8c1ffb4827c1a9e31e03a66136685a40348b08457ce2292a3eb0e94b623be27309af27ea21475e14645dccf2d9f226a9c173e9f5df151776a8395161b7cf78d0da2dcc186171987603cabe1ca29a2575aa72024675cbc0019c74d1984999560054a7eca69bebf59c715674a3360fbe706ad1365cb2d88726a93dc06b1426cb5cd2181039803bf873f3687063de05bd25229c5d94f89f944532504824073a9fccd0776705a75965a3854712b44e9e2050f8bc40ab2159c9c0f21dda794687130a98115897c87d6ff288d7270e553b982d69b1b72e4d5fc84573dc7c3ca1cb53d228a7ac16b945eb53f59c45350326f9412287a61ae9fa4569f2c0a6b0e578a6412aae58153e510345c5599b3862ecca390830c22d90cab0a275486a1cf68e750467e50571036990c2890a219863d32d390a3ad0b098d9e9c850f4ca261fd41fae71979eda64309a27448f87ac5ab3c94a6aaa17d7e5ac6160210a64ca92e41353e1b9ee8b52e4a5238b3dbe7bf708532d1ec8fea39f86d0c4cb26a4bc0924f31aaa07114d98ecc32f2f2874896e7c62795678b967b3342daa00310c212636cd67e51765d9eb9687e11359a4d00e50464d9a872e512354cca024e59255477fbde0c59a46d4886cd2838e63ebdf062cb200d226a8f29a69192a53793fd56389410497f3068efb1e50451246d4d7d6205485612e07c284fc1bd612af1a523a5e2c39034cc1efd0b5624b3125a9a72df93c765cbe11dc21e91b69184c3023ed00902833f81f9c0d92906677850a6ae939f908bf685709d5abcfd205a13fb56c996cff00d407f88546af0663e2d0ed90ba4103300fd7a44a15588ecc96a0fad7e312cc1589ef99bde4ee21445879428f5e05a7982a661287189d44007b2180a919abce2fdee540a4294e5487a0c2919d0015d3da850a3aa70a247dccad75dd6852f0f64125f0d320f176dab080508484b035cc9ef7850a01cf54203a652b1d8028d4d4bd5b99f945fb748c09001ab66dce142816399aa3103cbb3e2c454496f58aa53888197742850d116636d366480c3c79c36458d2c4e6d5850a0c9368204ad6a941c9d8b45327172ab42850ca7f0c5b73269763012ef5de215d9c561428256379e618902acc37d61df720f9fa42850db98ab46cbb18df7f4394139173a1c0249aff00d5e14285b3b5b986aa22165485616d097f2d3c4c72df242145aaca1fe2290a140827747585a0d993b091407bfebbfce21592a24930a145024e4c9132b9c5f9164d317a42850aa866acb52acbfc5e913d942987169b4761426365eb20682966944ebb68214289ea47d38424caa8a9c8edf2e5056425b53e9f2850a24a8656925b4d1048dc7f90f9c34964a7f988f0189bdd0a1400e219e63d21c0d3e84449a1ef850a3c214990333c9fd229aece028119948578d13ff626390a3ca7305a1997ca95872758ec28577827bcebc721428f409fffd9, 'DISPONIBLE');
INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `imagen`, `estado`) VALUES
(3, 'Ensalada de Frutas', 'postre', 12000, 0xffd8ffe000104a46494600010101004800480000ffdb0043000a07070807060a0808080b0a0a0b0e18100e0d0d0e1d15161118231f2524221f2221262b372f26293429212230413134393b3e3e3e252e4449433c48373d3e3bffdb0043010a0b0b0e0d0e1c10101c3b2822283b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3bffc0001108021402ef03012200021101031101ffc4001c0000020203010100000000000000000000050603040102070008ffc40049100002010302040403060503030302020b0102030004110521061231411322516132718107144291a1b1152352c1d13362e12472f01643f134538225921726446373b23554c2d2ffc4001b01000203010101000000000000000000000304010205000607ffc4003011000202010401040103040203010100000102000311041221314105132251321423614271819115b124a1d133f0ffda000c03010002110311003f00e66057ab1d2bc4d5bcc1753344344d0ef7887514b1b04cbb6ece479631ea6a9dadbcd797315b5ba73cd2b8445f526bbe70870b5b70b692b080ad72e39a79bbb1ff0002ae07995c9324e19e18b1e19d385bdaaf34cfbcb337c4e7fc556e25e33d2f8711926904d758f2c119c9fafa52cf1b7da4fddde4d3743901619596e47e13e8bebf3ae5b2cb24d33cd348d248e72ccc724fd6aa5a4f5d460d778e759d718abdc34101e90c27940f99ea6970b77c924f5f7ac57aa333b133e9b560e77dfad673b562a24cf138ef58e63eb5eed9359edd2ad23998fd6bc3e559f4cd63af6cd44e026457bf09f6ac67147748d215556f6f9709d6385bbfbb7a0aab36d1cc2d685ce04ada66906e00b8bb056023289d1a5ff03de9b20b091248a010a9b92b98e023c902f6671fb0fceb6b68f9e40d022cd78df0071e4887f5b7f6157d556de1916067903b1f167c79e77f41ed4abb9271e66b534aa2e4f5ff007209258b4b8cc70bf8b70e7f9939ee7be2855dea8a0308c79c7c4dd403ed9a8b54d6a285cc30f23ca07292374887a0fea3ef41e29de566566f230ea6a1536f26119f7496577b84924639973d73d45696702bdc2abbaa293e62cd818ee2b2f85f28cefbe7d6a0770a304d1256493caa93cab13b7841cf264e76ced559a4233bef5a1948db6c7cabc54b618b027d3d2ae041b30599073f2ad80e63b8ad1148eb52000039353c0806cb19aedd146feb583b1009c93d856ceea3607f4a8f0e4e40603a835c25826064cde48dd00e752a0f4cd7b9b3b75ed5b2c4ce8496391dbad4a90a84e663cb56c41971d098b7b796eae1225c9048c9df614c2c8f70a23995d041296877ce14803976ed52f0fe95363c6cf851c83ab0c31f603d29916de08be1404fa9eb546b9561e9d2bd87278114ee8adaa8c2b193233ce323f2a922ba91ed1ae19e3411f5ce06fed9ab1c40d1855403cd9cd08ba9e08f4311b72f8866e6c63cc476a56ad431b79ea7a0d57a6d47d3f2ab861e6666d5895564f3bf72cb83fe2a9cb7f33bbb730f30c152361f4aa1e3ee7145f4fe1ed4b51b65bcf05e1b22d83395ce7d79477ad3df99e30d78ee0f1348aa32edca0f3633b512486eaebcd041e2789ba8c6ec3d7d85193c39a55888bef7e2b3b90a82694042c4edd3d476abb7535d477d25b4707c188d55542838e8bcddbdaac332a5441967a3b46bf78b8d4c5bcab81ca91f36323d7a0a396ad1da48f049733cf372f2f873728cb75c01b6ff00ad2d5b5f43aa5dbe99aa06b679dcc714e87054938e5917a119d89eb57ec247beb68346bdba89ef30f144f1b0673c87caad91d76d8f5abcae312f36b11dcdd400dd451c9203ca93790fc837e1f91a21a4b6a3730dddadbdc35bdc212c2c6e88789f1de375dc1aa374d1de58cb7cdc92456a399cba2b346d8c6e3a839eb9a12759448a6945d7ddaea078da1545c9efcdec7d08aa1651d9864ad9f8519852db59bbd5ee5f4efbdcb697c3994d95db0920b8c754391907d2a7b7fb8eafa6490c3a6b3a5813f7ad2a73978d7bb42fd477da9675dd56d35392d35181593508d81979930182eebd3a9156a7e2c58f5cb0d56d12512c4b8b85739e704f9949ee31d283efd7f71cff008fd4f7b0c293dd370a5b992de29ee349b9983c12e030543d549ea186fb1f4a32978b34b1a4443f891878544609994f4c64fc5edd696ec35dd2ae2ef53d3199e2d2f52de359cf2f82fd49f415069b143a7b5d5bf8c97f013984a9da370767f9e3d2b8ea2b45dcc788b3e9ed43865c47163a800f9b5b8815083cf2a228c7a75a8c5dcdcf990c80742a1147f7a1a9a8caecad34cd2b0feb391f9512378b7c23408aa51794720dc93eb587a8f586e7db18fefe653dbc772a5e5a586a8fff005d6e3a615d802c07cc76a1971a23c50088ce97f6a47298e4522441d8ab7f9a2ef13ae124047a1f4af22b8051f07d1877a48fac5f8e409428a628def0f3916a6090932734620700321033d47c40f6a151d8ca0f9f9114ae73cd91e98f9d7448db94861e574391ea0fad0f9f4286e1e6991cab5c67c4561cca4fafb1a6a9f58423168c194357d459b6b18e64589e4589b242b6fe6f4f6abba6dd4ba4df35bdda4571657588a74fc0474c83d9875cd6d79a0df69b035d1c4d0c583cca338f98aa169a9da2c9e0de42d35acbf1056e52a7b11f2ad6aaf4b0650e654a625ae20d13f856a8d1c1278903a8686527a8f6ec687fde668b0530ae3a902acf8f369f325bcb319ed1983785227e1f607be3b8a9ef34f864d3bf89d831920f10a4d1e0f3447f093ec451b7b01f19db01803c3957661b1ed9a39a77105c416e2cb50b5fe21a7aede1c9bb443d51bb55649bc1ca1456120049ee2b17091a42324b1718254fc2335296130bedf120bb487999adc486107c9cfbb0153d91b1f054cab347283b4f0bee3e6a7fb1a2ba39b6b0d3aeb540e1e40fe04124899e424673cbdcff008abda1bd97115eff000ad6ad545c4b9f0eea00236e603a301b1f9d3006605b8e256b5e6bc78d24961bd5520f3b12245f7c8c30fd6aed95ec56b7b246ea97114991e0c8792661fed71b3fc8f5ad755b7d2746d793499ac22fbac5165a7959b99c9190723bf6a28fa3688bc350de45a85c780e39bc19c0907375e5e5ea0fcb156f1222d5e70f47a9315d12d5bef09bc96be26e07b236187d09141ae6daf74f6f02eeda5b593fa6542a69cbee53bd8c57c238aead33cb14b139254fb1f890fcf353aab5cacb6b7e92dec122f2c8dcc7c6807f5729ce48f518a19ac789c0e673d85229a6549e5102b6dceca481f31e959b8b6922cc5f0b0dc807208ed4d173c1925acab3da226a509f3081651e2151dc63afca81cf6ef3cd2c907f31f9896879791d7d472ff8a090567182d4a83870411be454be3e4601ce3d7b51dd61f48bbb992386cd6d3215a19622791b23a3a9e8739191416eac66b691bc588c6c870d193e64f4f983ea2a732a56604ad8e56c927bd4eae4a8071f3aa8338c9a9d02a2b1e427986c41f871d6a844e93049080d83cac701bb67de8e69d34da5dccf02dc3b46d856688ff2dd88c8c83fbd005939e4f31ef9c7614e7a4f0649aae911dcf88d033745e4cf30f5f9548073812c066559f8923bb8eda38a3314911f3162173f5e99fd2a63a95b6a2c244260bd5c83328d88ff007a771ff8282eaba61d37506b332a4ce8b96f0f7aad0bc4f223303132fe253d7e75c65d4907997355d28c05ae2da258a40bcd35b2eeac3bba1eebfb543a7ea621b57b596dfef9a549bcd687ac67faa3f4228fd9cd15daa5b4ae12273cd04d9c18dfd8f6f4c1d8f7a0daf68d75a45c35c246415de4541b30feb5fee3b7ca895f1c4267220bd6b875ac6de3d534f9fefba54cde4b81d63cfe071d8d026058927e94e7a36a93e973fdeac824f04fff00d559b8cc772bdf03b356788f84ed6e34dffd43c31cd369e4e6e2dfac96addc63d07e94e01e0c03af911288c1c743d302b03b107a1db1524514970eb1431991d982aaa0c963ed446ff87758d2acc5cea1632db427014b6373e9538e710426ba0e8b2ebdaedbe968fe1f8a7cedd79147535d5f883523c13a75a58689a4195a5f22b226c08c75c7526b9c7026ab0e8dc5f6d717042432030b31fc3cdd09fad776600ae7620f7eb5463cc320e209d3fc1d5b4d86cf5b1697379cbcf340b860a7e5ed5cc7ed234fd3f4de218e1b18d220d1788f1aec14e7d29b754b2d2382751b8e25333b4d202b1db737566fd6b976a5ab4fac6a7717f70332ccf93e807603e55283994b0f183dcabd3aee49ce2b682213de456e67581647543231f2a64f53ed51e72c323bee055a922b11a6994cce2f0cd8f0797cbc98eb9f5a318b89a6ab63fc33519ec96e52e044f8e78fe163eb5ad8da4d7d7515a5b2979a6902281ea6bd12158f99ce39b651dcd743fb30e176693f8fdd20112065b707bb776ff154270332ea371c466d5a78f82f8052da261e32c4218cfab9ea7f735c5d8f3be7a9c927dcd347da1712aebbacfddaddb9ad6cc9453d99fbb7f6a560abcd8e6c2f76ef56418126c39381e26319caf7ead8af60fa7280bdfb0add1557cce3986761fe6b5ca9c64e58b7d00ab660f12324c63a9c9db1e82b0e4b119db0302b12733c8727726b23a0db3f3a8906573b9cd608aecdae7d9568fa873c9a73be9f311b05398c9f91ae5faef0beb1c38e7eff006ac22190264dd1bebdab3c031e68e3f649a089af67d6664cac23c3849feaee688fda671949667f8169f21495d737120eaa0fe114c3c076a34be07b2e720e633331f9ef5c5b5cbe7d4b5bbcbd6dccd2b303ed9daa5bac4e0302506df6ec6b15e39af554cb7f69eed58acd62a27667ab3b7a57ab18a99d338ef5efa55bd334bbdd62f16d2c2dda794f65e83dc9ed4ed67f641a9cbc86ef528200464ac68588f6debb932273eea76ac1381bed4fdc4ff664ba1e8f26a569a8c93f8001912540323d46286e89a02d8410ea9a945cd7128e7b3b471b63b4ae3d3d077a8271dcbaa96ea52d2b4536e12eefa3c3f2f3470bf451fd4c3f61466d6de6d4ae824472df1167d822f776f41e82acc3a4ea1aaea02da1432cce7c47690ec3d5dfd147614616d60b488db425de0e6c33747bb93fff00914b30727334ea08a313d1456d05b623665b566ddbff0072e5bfb0a03c55ad4691a436522344e396578f6017d17d8f73de86f11ebad757ad6b15c0108fe5c8e9f0919f847fb47eb57f84787a3d6f5345bacbe9f06f20270246fc280fefed57550389766c9dc600d3747d435abb8e2b3b490ac870ae50841f5aebdc37c2fa468f6a2158e1bbb903134af8624f700761466e265b0b096455091c319c2a0c0000db005247036a3e3ea77ae79ddee24c8db6000ff9a20001c455ec2c09115b8cf4d8b48d7a48e1255255e7553bf267b669658966dcfd6baf71a70f4facd91fbb40998132a49c331ebf975cd72768c23b2ed907008fed50530732cb71231316d6c67b8589582f31c163daa59eda382e1e386412aaff00ee0ef5eb682593c42a70b1af339ce020f5269e74be06b5fe1b1dddcc866b91897c32de1a2ae32031eb8ee6a3338f1cb456b7d18ae9a352bd2d6b6b9c876c0330f48c1ebf33b50f9c2bb978637585be0e639c8f9f7a66d7b58d3e5b979109d4eeb602690e2de0c768d3f101ea69780b9be944858904e0cafb0f901fd857004991bc0199596239cb7d3d6ac46a9825dd936ec3afb54b3cb0d9bb2440492291fcc3823e95734fd2eeb5190cf784c71b1e6391866f90ec2a6c2958cb19c8b6ded85129dbdbcd78e21b588b30ea7b01ee698f4dd061b46124dfcf986fd3cabf21446c74e8ede2f0e087913a9c77ff0034452258c636a42cbd9f85e04d7a34695f2dc9914711c066cd55d43514b4889cefe82b7d46f8dac2580c803a8df14a57b7ed752731d876a559b1c09b9a5d31b0ee6ea66f2edaee62eddba50fd4593eecaaa849e5dd8eddf3b7cba54eee880089d999970c71b7c87ad52b8ba9d25960982e0a785891774df231e946d3564b886f54d4a53a62079e04a0b919e99ed9ef4eeb3467846eaff4eba9e08e099310c6c4889b6c9ebb29df6e94a96ba74f7773e0468090705f3e5fcfbd36e89c3b7ba4ddbbb3acf05c44629a020859148eff002eb5adee2a9c4f0834f65832048748d7ff008bfdeb45d4945cc376bfc999d4068df1b63e67156e0537d689690cccf72607591c3e5c3a0eb8ec7602ab3704dd585dc37369721fc2903a2e30460e71561edaff004ed727d56df4f9226b8cff00a0c098f3f11191be6ac2e4f32a7496fd41baa83afe98388a08d61beb1658ef1571872375900edef59e2383c4b5b0e2fd3cf846e98199176314ebd4fd4d57d3eeae747d4677b9b0966b4ba431dcc7ddc1efec41ace8f796df71bed22f1a71613e5e32532d1b8f84fd7bd48bebfb943a4b876b0f5f5e4714b69c516d02fdd356b5786fa2036f131d4fbe714929d31903bef47346b986fb42bde1eba67528c6e6de45dc2b01ba9f634bfcf91496a8ee208ea7a0f451ed870c3992737bd684b6700e2b190289f0edb4777ab2a4a81d4293ca46c4d25d73371ece3260976228de97a8472a78790b28dcae319f71466f783ada7819ad418a41d8138fca9766e1bbbb37e66720a9d99474a8b151970dc4c9bc0bc710ca4ec5bafd68c585db00a048ca430618f5a5482ea65e5599771b7363afbd12d33518ae2e9edd4e193624fafb5665d41c1c78989769d94e0ce80b770ea5651a4aa5678830320180df3aa734261c2ca319191bfeb4b6ba9b5b2c8d04a7c6452cbca77040ab9c21af4dae0bafbc9459277648cb0c85246c33d86682f43debb8f6303fbc48a1427ea132013cc48cfef5b471e15803ee2a4fe057af74638c059028664e6ce3f2a9974dbd8d4f3460edd8d21651627624af3c891ac8e988cee186fb50ad5f846cb543e3da38b3bb1d794791cfb8fee29862b760799d4ab63039ab3f75756caa966ebcddaa29bada5b72cb6273b9b47d52c54e9fa84690c6efccb72e0b2e40e8187ed50687accba35cbb2f2cb13f9668ceeb22d753554963305d2aba36cca4641a48e31e0e3620ea5a3c19b5e5fe742992c9fee03b8af4da5d7fb98dddce0820ce28b482cef20bbb1522d2fa31346a4fc3ea280cd7aec4f940f439a69d288e28e1e1a4baa34d651bbc4e0e1940dc67d41e94a2ca73bec7d2b600f30e000b83dcbb613cb75e1e9ef731dbc0f2f3f34a0f2ab1db2714efc29c32d69c4715e4fa8d95da4618a982704f31e9906b9ec4a7ae3a54aaed0b2ba820730391b1dbd0d103e3b88b019cce81f683a75ccfacc376658adadc4213c677f88e4ed81b934ad0710dc69b6973a5dd40b7697186cc8595d0818041f4c511d7b8de4d56de18ed2ccc0d18016577e66f707b114b3a8dedcdfdc4735dbf88eb1845200015476ab6ec7502c013986b86b8925d0e5990a09ecee17135b16c03db23d0d13d3f5f826ffa6bd8a78e18c9fbb5e23e65847607fa87b523062186091835389e58891cd8e619c66afee0f303caf13aadb45f79b6fbd6997b6ff7e817cb2a30632e7a8eb919ee08cfa505d46d5f578cdcdec69617a8c489658ca89b1e8ebdfe633491138c797cbbe7ad158758ba0c166b87b98491cd14ae4838e841ec47ad4920f10aad9925f5b5ca5b8fbfc66589765951817c1fdc7cea3599d20093c71ea164a700364347e986ea9f2e94e56d7ba7dfd98919e48c2031875505a23d7af503e7b507bdd184d70c74e9218af541731172b24831e87ca7fbe6866af32d02ff00095bb569f4bccab0a96910ed2a0f75ee3dd6a9c115c4d719b318758d99980c0e5032c4e7b62ad2c72adcfc2d697519d8fc233edfd27f4ab925dd95cc4b15e34b63aa85224b944cc7267a074fdc8da86463b904095786b487d5afed60880215834bcdd3941e82ba6f10eac9c3ba47856cacd3c80a40b9dc7bfd297b40d5ed346b2fba6a56d0db6472c53c2c184a0ef9cfe78a07c49ac0bfd587865a48a08c2a236c7a6ff3a280313bf1105dbdbaccb7571712baca50b44c4e32fd4e7daa5d0f47935ae7852f21827e5e689673ca241e80faff008aa579765f9a340154f5c1cd6897700b2f0a64679237060753f0efe607d477f9d0b68138730b4515c58dcc9613c47c607965841e6cfe547b46d5a2b94fe11ac3f8889bc739d9e21d067d40e99eddf6a4882e26b5bc17504ac9283ccaf9c9069e6c23b4e32b0fbccae96ba95b7c7321c321ed263ba9ee3b5597061071296b3c3571a2c81e35e6b576cacabf0eff00d8fe950e957f7ba1df7df6c0e5ced3c0ff0004ebe847afa1a3fa16be6c6e27e1dd761521369141ca11d9d3d88df1dbb50ae29e1e9f44bb5beb27fbc594b86439c800f63ec699a9c1f8b48707b123d63438888b8cf84548581f9ee6cb97cd6efdce3d3d47d696f5de36d6388edbee974d125bf386e48c753d8d1fd3755b9d2ef86a9a59e62de59addfa4ebdd48fea1d8f7ad38b785acef74f6e28e1a1cd6ae73756aa3781bb9c761edda8c460e0ff00881ef3b6231050e46c4e467bd16b1e30e21d36dbeeb6fa94ab18d806f3607ccd07ddc818dfdab04f292707dbbd411f72a0e24d797f777f7066bcb992690f52e726a05c17dba646c3a9acbf349966ec37ed8abd73a508345b4d496f2194dd123c08ce1e223d6bba95c679935899344d5eda7bfd303aab0730ceb80eb552fa45b8bf9ae1630ab2b16545e8a0f6acddea775a8bc725eccd33a4623566eca3a0abfa268d79c4da8a5959a2800733b630a80773539f2646d27812c70df0d5cf136a096d165225399e6032117d3e66ba371b7115af0b70fae8fa7e16e9a211c68bff00b698c731ab44e99f673c2a553964970484ce0cd21fedfdab8fdfea336a77f2df5ec8649a76cb3f5c7a01ed541f23984fc171e6518c61c73104fb9d87cea500000f37b938d854200e6c632c4ef5207512609042f6cf5a27982c7199ba82efcca99551d09fd2b2f188b9ff00984baaf403604f6ad62394c3372a03cdb0dc9ad9a412e55bca9d82ff007ab095e312271cadc9d86db0ac6c075240d854d0dbcf7370b0dbc0ef34870b1a6e4d3b689f657a9dee26d5a6165111b44879a4cfbf6155271dc90a5ba81f87fed235ad11963b890dfdb6778e56f30f935756d1b5dd1f8c34c668024c83025b79541287d08fef5f3de6ade97aadee8f7d1ded85c3432c64630766f623b8acf063d3bf7103a5a70bdf98c2c6b1dbb0500600dabe77c83bd75ab9e37b3e25e05d4b97fe9ef6384096163ebdd7d457245c0a93c991e67bbe6bd5e38af66a24f998cef59ad6bddaba4773345340d0aef887538acad54f2939924ed1af72685741935dc7ecf387e2d1b87a19994fde6f14492337500f41f9548199c254d4afb46fb38d1059d8c21ef255ca83f139fea6ae5f79c4bacdfdc9b99f51b8f13b157200f962adf1c6a926adc53772b921626f0a35f402aae8ba48be6fbddca9fbac6d8e51ff00badfd23fbd51dc28c9920163811e744e32d5a4e19f0f5385279243cb6ef20de45f561e9efdeade95653df5cc77139fbc5e5d3ff255ff00163ab91d9452c5e5cbaccb6fcac667c00a06c076514e9a54afa1d8b899836a5380b2ca37f093b46beff2a08258fca1c10bc084af56cb40b296ceda42d24adcd7530dde56fe907d3b63b573bd6757bcd46eff008769c864b99cf8588b7c03ff00b6bfdcd5de20d698c8d6b6ef993e1761bf87fed1efea6a2955b843879ae201cbaadec67f98079a18bbe3d09f5a2730c8707987f84381f46b6f15ef5a1d4af6360926d98e06c6eabea7de8168168f6dc791da4723456d15d48d143cdb743da9a7ecfec64d2b8512e2e54896e4b5c153d707e1fd3f7ae6fa9ddddc1abcd7520686669bc51cadb8deb8f18c490492d933b7dca09ace584609742a39ba6e2b8d78faa68daba4501119b6943042d8590e76cfa835d6f4bd45751d2a0bbe509e24418ae7e1dab8edd6a26d35a7b98b925314a483212e1b076ebd47f8a96c03982404f0274ee22d5d2cb8753efd388ae6e6301a18be37cf555f4f4cd73796cf9bff00ccb5746b2b63e58608d70f263f0a83d07ab1ada0b99aeee5b59d5ee5999b223cecd237fb7fa40f5fcabcba7ea7c457ca1d768d7cb1824054cfc4cc7e107d4ee6a85b7750eb58419325bc71a69b678e3b5e54c49e073f3c7d362d8f8981f5fd2a1d4788b57d6a35b59ae246899b686350a5cfc876f6ad9f48496e45a69d30ba317fab322f2c111f45eec7f7ab06ef4ed1229228e337170415663ebfee3e9fed1f535655328f603d094174e4b6b75b8bd65e5ce028f873e9fee3ec36f53558cf717f28b7823c963b280338fec2acc1677daf5c19e695921e81d876f451d314d1a6e856f6a0781172f37c4c4e49f9d2f76a420da9dc6b4da16b0efb38105e91c3cb6b20b8b9612cc3e055f853dfdcd33c16bb73b0f31ab1159a2f5c66a491d621b918f4cf4a48ee73b9e6caaad636a09af86a17941c50bd55a58226656db1b62b3a96a1e0479423f3a58bdd7ee274310c053b67bd51d81ca88f69b4ecc771ea412ea570e1979f01b6343a4930719ac4b2e17351a5bcf332b3ab221dc64639ab913c99a375c106d41ccf1bbb9f1e16b724b44432f9738c1a66ba834ee22d67efc6da4899d078a848e577c6e6865be992dbef80a186f47b4bb5114831e9d71d68a2e2bf1498d769c39f72e393e078125b4d2d21b85f0f7df0a314f71680af6d1b16612a8dcf6f9503d22d81ba1236e1771f3a76b4cf20c8a94e09993acbcf016736e26d5f57e1dd4d17ee903d9b0d9db24e7e751c9c5b12de25bce9c85f1cae17cbbf4ae89ace956fa8da324d1abfa0619a41d523d260d4a3864f0cdc01fcb04673f2355b2d75e221ee933d732f393e33023b1141efecbc5f244864663e50a37353cd70667f06342ce4ed8a3fa558adb4639cf34a7e26ff00159b559631f9184adda50e1ee0f489166bc896395832b843f1a1ecdee3da9a7ff4870f5eda0b69b4b81500c2b46bc8c3ea37a9adf18028841918ad15b09c665cbb0248389c438c38627e17d58dbb33496d28e6b7988c732f707dc554d0aec5a5e09483e99aedfc61c38389f8725b342a97084490bb0e8c3b7d46d5c1911ede668a5529246c55d4f620e08a2d8bf19b3e9f7fbff17ec47c1a9bc7273a9f29ab11eab0dc65268c608a5cb1bb87eed89a4f285dc9ab1a5eb1671b4897313105b119c6d8f7acd06d04cd37d2263812c6a305948c7910063d08e94196c84177e2a1c13d7dcd58babd4f10ac679867ad6d2b2dcdae0310c06cc2aa19c77e60ecf4fca094160905e49331ca9cf5fc59a60e1eb9b3b3e446b776024e648e3214038d8fcc1a5b79e641c980c075357b48be895f964f2c9db3d288fbc2ee1e2646a7d2d87f69d834a912484dd23e26988f119bd71bae28888d6700f2814a1c377ca92ae49f9fd29d2d886c95f84806ae2c17d7cff9988f49a5b13536513285750c3dfb55516203378441407b9ab9757096f03caec00519c9a58bfe29d374bd3ff88cd75e2237955632097607a014a9a573802460986869f6ebbbe33f99ab31a42bb2a64552d3ee9af74e8ae5e0680ca39bc37ea076a9bef114232ec3a556a50ad8027046271395ea66d345e3dbd103c96b199400f11da2ce0938eebed5438af4cb785befd6f68d6a25970a037346e3af303db3e957b88ac9eeefb53d42d9c382ff00cd4277e5cec4554d2666d4f4c9f40b990af8c43d9331f28917f0fb66bd2e9d81ac0127508d5b6186203b78831e5925e45e9cc173599a348e46549048a3a36319a9de092091a1951a374386561820d46464e4efdaae4c50cac4107fc5651c0752515f07a3743ec4579c1e73bedd3e751e794e00a90608893dbc569fc4634bee78edb9f12143b85ed8a3573c276d239b9d0b5382e6df6fe44cdfcd563d171df7a5c3373b64124d5ab1d4ef74e7f16ce668c87573f31ea7ad14110465fd1a77d175095ae6cd5e65051ade65d81efd7a1f422aac655da490e638c658617206fb0a3f35d5a715d835dcb1496d7d6bb4ad1f9d594efcc57ae06373436f34ebed22002784a248379d1c3c72a1dd7a554e41e270fe26b697935b3896095d1d70460ec7e63a11ec68bd8f113da384bdb654dbf95285dd10efcb8ee99e9e943a6d345ae8e2f679312cae1618d7046319dcfae3b5555fbcc90c932a33c31f95dfaa8f6ab25c0f065f047319ae52d2f2d165565661b1857aeff890fa7b74aa2fa75a18a3b2b962aeee3c09ba2e0f639f84e7b1d8d5cd0b47d42e6c85dd949048ae083097d87cfd287dc3c8d70d657b6e629149015baae7f7a36d064932b325de96efa6dd78725b33f2b24ca7951bd41eaadff9bd49672496ba7dc5cc10c5a85a60c73c6fbb423f71ea186c6a63a7dddb979a589eead8ae25c799917b1c775f7fdaa9c5692c576b71692bc440e656cee17fff0065ff00c34bb8358cf897003f03b819d9448a40c0e5c6df8bdeb4c64f328e603bd305cd8c5a9a08d156daf133cb10ff004a6ffb0fe163e9d0d059ada4b4944128c4840665c1041f420f7a84b16c5f8c96aca1e67a31e2e40f880c7ceadd95d5ce9d3a4f6f2347327465fdbdfe555a39fc13ccea3953db7a222da55b64bc9a164827de32df8fe543b329c897500f108ea5aac5ae6991a4d66b05fdb60c17309c77e847a7ed4478478b0f84fa1eba4496f2f955bae2845a4562f148f34e609163cc6aa3219bb03548e9e6e13ef09caa0b728c3618375ffc342fd48381986156235eafa20d1ef8cd18f1229572854ecc3fcd43a7ea93685a89beb40668e519b980f4993b9c7f50ab1c3faea5dc0da36a8010be55247c27e759bbd30db4e6d253ca73e25bcabd0fb8fee3d2b5b4f72da36b7711bab6afe4203e33e15b75b65e24e1f3cfa5dc6ee8bffb0c7b63d3f6a50974fbbb6b18aee5b69a38261fcb9197caff002a7ed27579740bab84b8844ba55c652fad8ee2227f10f634138db4abdd2e3b5820b992e7456264b362d9080fe1f9d5d8ec215bfdca6378dcb0103a4ff04542b38d4bc5f31cff002ca7f9a1ece579800003edbd496d6b2dd4e96d6d134d3ca7ca8a3249ae85c2df65f71248b7daf80880e56d3392c7fde7d2a09120027a8b1c29c1f79c512b782ff77b68c8f12e1973bfa28ef5d55ae344fb3cd0228029240c0031cf31ee4d0de23e3bd2786616d374b8924ba55e5548d408e2f9e3f6ae5379aadf6a578f757d3bcf2b742c761fe2aa016efa966217a97f5dd6afb882fdeeef1f0a321114ec83b01430e3e2fa28cf4f7add873bf30e80ec0fee6b473b1cb0ce3b7614503ea049ccd4818d8ec3a01dfdeb4cf2b608ce3a519d0f86b58e217e4b0b73e0fe29a4f2a81f3ff15d1347fb2ed234d5173ac4ff007b913cc431e5897e9dfeb5058092aac7a9cdb49d1753d61c7dc2ce4b827baaf947d4ec29eb45fb2822357d66ec28ead0dbf7f62c7fb514d53ed1b42d0d4d9e970adc326c04439635fad256bdc75aceb7845b8fbb404ffa70ed9f99a8058f52e422f71fdb53e0fe0a8cc7008bc7c6184439e43f334a9aafdaa6a776ecba74296d186d89dd88f7f4a4791cba348cc4fa9eb93518182a48eb9ef56158ecc19b1ba1c4a5dab15e15e3bd66ac7099e07941c1232307debc2bd5eab48fe6676ac57abc4d749c4f0c115eaf7cab15de644b7a55a9bed5ad2d7ffbd32a9f9677afa362458a2489061517940f415f39693722d359b2b82dca229d189f4debe887b98e280dc337f2c2f3123bfcaac0f1244e197da43de7155f5b97e5863999a593a72ae7f7a351f25bc6a13f971449fcb5fe95f5f99abda8c96f3dddc4f122c713485e4007fa8ddaa0b2b17bdb8264f32a366427a737651f2ef491249dc7a85031d772ce9368887eff0030224c129cc73c83d7e743b5fd7a481912d6531bb6eb8f880feafaf6ab7aeea1f76b6f06201d4b72a8ed237f81ff00140740d16e388b57f02462433f897331fc283aeffb55954f67b96ea13e0bd25351d691e67e75b71e3327aefb67eb4cfc41a1dc6a3a89b8605ad900202ee4e3a8c5274bc472e9bc53757fa514488130a4657cad1aec07e9572ef8e2e750519884573f8591cf2a0ee40f5f7a22b09d931ded2fd2ea08a2cbc71429cccae394e07406b9c713169f5396ee6551cd8015760a3fb9a3d67a82d958acd784cb107e631b1cbcc4743ff68fd4d2f45a55f7156ad3cf0c8b05a21ccb3c9b24406e703b9f6ab77381e67938cafa2d00e91062256279e6ce5d81e8a3d2b5d234769561bdba81a5490e2dad57e2b961fb20ee6bda170fa5e4935f4f9fe1b01216573c81f7f8be43bfcf1456de47d72e2e0c13341a74099bdd408e42c83a46bfd0bd828dcf7a11258e234b855cc8d6d66d4351908314f3c18fbcdd3605ad8afa0eccc3b7bfad5b9663a8c0d05a3bda68d19cbcc7cb25d91d5893dbdcec3f4a819927b1492ee3163a244dff004b649b78e7fa9bb9f9f5355f96f35e70c4343641b96355180d8ec3b6df90a26020c981666b0e04cdcea264e5d3f464223195cc6082deb8f41ee7735734ee165e68de7cbbe32632072a9fef47347d0a1b655e4882646e7a93f3347e3b78a15e8291b2e77e070269e9f4c95fc9b930643a6aaa2e57a76c74a9c272ac9caa3110cb1ac5f5ea42a40603eb4b57da9888310f80dd70db1a4ec709d7735eaa9ecea149b558d17e3e5a0d7fac2aa13e2127d282dd6a9e36405c7be7a50d925f7aa0defdcd34d3a20c996aeaf9e772598e3d2a93399182a6e4f402addbe99737582ea624f571d7e429874cd2a082dcc61433752c46f9ab6e54e3cc23bf1c70202b4d22497cd2820f6f414c515b0fbb46ae03326d9c559b5b5c79557e556278161877ebd6a50b119311bec00e041f20500038dab11dc0f156343f11c67d2a9dede88f273b74150e9b305ba125cab321232aa7071df1422e4f2225736d4c99d0b4b0888aabff00cd335b3f90b48493da92f876f526b9645c852091cdb9033d0fe947755d72db4ab52f238017f0aee49f951aa618c998161dc612d4b548ac2ca49a5c7947407ad7306d39f59e235d4a446f0948289db22ae35c5eebf74b25db725bf3663403a0f7a3f656f1c4400a06284d6b3bf1d4e54c0e657b7d352395e4112ab31c9e5181f4ab7121f14aaaecbf1122af05cd6eb093daaa500ea15789880104514b742464d568a1c751563c710c78a3d2873cc87e7a93cd72b14641602be79d7afa2bbe27d466b75c4725c315fcf19aea5c5bc4234fd3a6903f9f94f2fceb8aaca4ca6463924e49f5a73b11cd1a9a9b74316f33242e99d9bad588046e3225546cee1f6dbd73fda862cd91b1dab757cf7a58a733d5d778c712e738cd4ab33a82a09f95520db75ad8487af5a1948d0b8798534f921498bdcc6cd1f462ab9c5457f6b0c5316b7956489b7523a8f9d5649f11b286605b1b86c0c7b8ef5af882a3691d4ef896dd19787f5afba90b3480729ee7a8aea369ab5b269cb378ab8619ce739ae1d25db4c579c46391703ca0671fdeb65d72fadd0c71ddc88b8c00a7a0f6f4aaa57b5891e663eb7415ddc8389d075fe23b2e2085f4bb7be16e2404b4ec791063b64f5f9508b5ff00d2da3c119b965bdbc817c48dd417058f427381fe2926ef52b8ba8e18a698c89002b1a903ca0f5e959b282f353bb5b7b58da699fa0cff007346156044c68e95e18f13a35d71dc9612f83335adfb3286fe51211723a13dcd433f17ea779a5816b66d14ecedcdf778c951191b649ef9a57d0347961e2882cf52b6789e36e7689d7ae37fa8ae9e0a14c1e87a8ec68163ad4768114b2fd25246d4dc622c2669e016a615613b79dc9e565c75dfd2ad691c2f3dadc35e5b5d5a4b2827c15946794faffdd4d1368d65728c5a3e5247e138a187855620c21972ac7753b66a2bd635600133b57a95d4bee2311735dd3f58f14dcea36ee656386942e55bea36a0072a704107de9f56df58d2e216f073bc79c8df9b6f4c1aa5ae45a5de963776ed0483199221ca7f2e94d8d68eda67941e224b9f3ef802a17c13e5071ef46ae3875b98bd8de47749d70c395c7d284cd69736f9f1e264c75c8a6ebd456e783025489100a3a81f4acaa2e3e2c026b4cae473648f406b78f25704f439de99cc0b712cf2cb0cae88dca5863f94d8c8f4ff0034cba3ebd3a42b657da6c3730141033c9e56f0c7419f51eb4b514a030257f2356a27766e50c0637c13520ca8041cc64bae1b86feda43a1dc4d7689e64b53200d09ef907a8c77141ef24786d1ac23592052e1a4b7917186031b9a856ea78d008a668de370e8e870c0f7de8b9e20b3d52dbeedc416fcd200392f615f38ff00b877aa90a4f12e1a0f824bad04b4535b4ab70ec191b9b31327d3635766783559e3f1e6f02664c069b75dbb64741e955359b1d4beeab74b73fc434e00059a0e8bff0070ec686c529b48b0599c3e3209dbdbe54d2583a94c1ee1f8b53952210cb2490cd6a7c97a833c87d1c775351ddccb101cfc96d203ccf1a0ca1077f1223db3dd7a5436b751202a0a49247f0c99c730f423d2a48b476beb4c4770b1ccac3c28e438472c325173b823d7a1a29c624f72692d4c71a2ca03ab8e64741b30fea5fee2a2b958e758a3bfe6655398eea3de44f4ff00b87b1a8b4ed4e4d2257b2bfb676b62dfcd81b6788ff527fe6f4526b131c1e3c78b9b49370c9d7e60763ea2b2f51a66acfbb4ff00a8ed56871b1e2a5e59cb6b747ef2564490131ca9f0c83fa87fe6d5135c4ef1469e23c91c60f2216d97d7028f49cb0868268c5cda49bf2038cfba9fc2dff86b597874341f7bb36fbddb77318f3a7b3af622baad4ad8bc8e659aa20c1b6b22c8bf179891902aedbc6f2bbaa2b7906495df0055cd1783a6d5e6324171e046bbbf30dfe605337fe9ad374a87924b9791f986798e33ebd3a505b461983af5082c2bc345032488e59bc923b03e21d981eff3cd376937d06b9606c6e1b1246731cbdd1bd7e5524f3f0caea6b015912e2393915db2c14f63ee2b7b1e18806a0268f59590863e280006cfc87be0d142ba10524e430c340ba8da4d1cce5e2fe7c639658fb4abff009b8fcab4d2ae2d9e3fe01aa81369777bdb48dffb47fa73dbff003d298f52b66b884e40fbf5a1e4600fc6bd71fdc52a5e5b24c924649104db9ec6393d47fe75ad45b05c9b5bb99cc86a7c8ea3613c25c11023ac1141310797039a57fad257117da3ea3ab66dec09b3b723f01f337ccd1058471768efa2dff2c7abd92e6da63f8d7d3dc11ff9b573e92d6f1ef4d825acad721b93c255cb646dd2aa9ded6ec49b01e0a75216393924b3139639cfd7359f3348046a59b3b28192d4f5a07d94dfdd9597569fee711dfc24f339f99e829ca1d3b84b82a1372c608a45dcc92373c84fb51770f1042b38e673ed0fecfb883598d259215b484b679ee32323fedeb4f3a5fd9d681a1a35dea730ba651e66b821635f703fcd07d5bed631cd16936bcbcc369a7edf25a4bbfd7f52d6599afe779436f82d85fa0aef919c422f33a5ea5f693a2698bf77d323fbc1030bc839631ed481c41c63ab6bcfcb7332a40375823d97ebeb4bc320f519cec6b25c3963cc01fdeac1009436319e65c01e519fd8548650e4a85f2a8c6e7f5ad1d89e624ec7a515bad08da6816dabcd711a2dd65218b04b3e3ab7b0abc1f260a6dd80ce481be3a5643145047c437c9af4485d39f1b740714cbc3bc1771c4b66f736b7f6b198cf2b46e0961ee6a720732bce70225d7b358af565cd099e95ec8ac1358cd5a44ce6b06bc37acd74e9eac57abd9ae90678e394f374aea8b7faaa70c69da7dfb72dec910775e8c911f84b7fb88ed4afc0fa125ddc49addf41e258e9e7c91b749e7fc29ee0753f4a6c5b5bad42492ea7566334b89a5046c4fe1fcb618a8209e270f8f3075bd84d7f750db5b21400e232df0edbb39f6028f5ee9a34f82d74db75cdc5d12553f172f524fcfe23f414c12c569c2fa2cb7971840a80951dc8f8507ee69134ce2f5fbfdceada844f2dc4e3911c1f8133f0e3dea1828c0971927305bf0eebdae6b6f17dcded604f29966d92341dfdc9ebb56faceb765a25849a070fcbceafb5ddee7cd29f418ed50f1171bea7ac46f6b139b5b42306343bc83dcff6a5cb9b3b8b39047711846233cb9c91f3f4eb423fc42c89db6c039a9ed50c6fcccd873b027f08adadb4ebabab6b8ba8a3e68adb943b1f5638007a9a9ed2d7ef1706dc1544407c59b2485c756cd50f038904c21a48965791439f04e2377eac49e889ee7fe68f6b1790db58a68512ac3172ff00d4ac5d77fc00f73eb556d654b0b38ee638cc6e54ad8c4465914f595bd5dbb7a569670c305f0596422e9fcd249f11854fa0ef21ede94216331d82475cc21269cfa95b88ef9859d8c0066dd48e5817b64fe290fa745f9d472cb0bda42d35bf81a442f8b0d353e2bb93fadbd7e757ee638f5492de082d4b5a4447816bcdfeb377663e83a96ee76157ae340beb7d561bb65370f21e56b9c0096d10fc2a3b13eb4e0d8bc4ecb180357d0f507b78353d4a788dd4ee04162a73e5f43e981e94774eb5915e48ee1833dbb7288f6c460ef8db6a56e35e298a7d602e96caa912188b85ebec0fa7caa0e0fd6658242b2bb488ef83939c6db75a0ea3ace639a41f3e67485963893a0da836a3adac44aa1dfd3343f55d76385000fb9f4a51bebf6b8949c9e5fdeb29dcb9dabfee7a7d269777c9ba84353d6259a5c21e5c7bd0896e5e4dddcb7cea0e766708bb9638028ddae911c451e752ec771bf96aa76d632d36170061041b6f61757ac39232abfd4db0ff009a3fa7e87042a1990bcabf89ba7e5462d8aba853be3606afc36bcfb28a5cdad670bd45decdbdca8b68b244036598773576c74e2e4b05ed572cf4f7693057cb4544296d160531553fd4666ddaac7c560afb9476d193b6681ea8e5d19508031b927028fdec8307276f41d691389b88539feed11e665db6e8b457048da2090f3931675a9e792f16084b303d08db7a23369b3cba6d9b595d7237872497458ffa4a87aedbef43cdc155699f7e51cc6ae692f797924a889cc1d406287cb83f84fad5c7c5471c099daa72edc184747d7afa3d3d215cab13e5047999ba737b6d462c74e9e5613dd319243d398e40a9f48e1e8e1713c8999318e634c71daaaa018a51be449115031295ac1e1a018dbf6aba9305d8f5ed5e7411a91eb50a10ef8fca858c1851cc29031931bd12863e519343ad42c4a1dc8c545a8f10c1671b79806f734e54bc64c8da49c08567b98a05cb1c7ce96b59e238eda376e70001d696b5fe28bc588c88a579ce14bec4fb81d71ef4997779797edcd3484fe947cfd47a8d116e4cdf8935d9353930a4f2039dfbd0440ce700134405a21ddf7ab11471a630b8f955bdc55181341340ecdc9c09423b6946e7ca2b76565d81a288b6de3e65321847f48c337a0f6a8254899898d4807a02738aa6fcf2639fa40a302535765d9aa412565a2dba5681483d2bb83230e9c4dc48457bc4a216568aea1994127d698b4fd3ad959730a1cfb52ef7a21c1947bca88a31c1713ed141239f61586b0b959cc770ad191d41eb5d392c228e3f222e0f5dbad04d7f4ecc6278d4653f515736607133db56ce7062dc1a540c073027eb46ed2da28230b1a05f7154e071b0228846db5216dae7cca17261ed2ae66ba658e6c48625cc6ee32cbea01f4a2a92e36cd2ac171240dcf1b60fef5762d5a5e7c3229f71b5276333733335159cee1d467598051bd6566df19a0b1ea50c9b162a7fdd56a2941dc3023da966b9c1e4444885b9830df06a37d32cef0ff3215c9db22a9c7310db9a236b27330a35778738328441f3703c32a78969215ff6fa506b9e14bbb590a4bcb2a8fae47f7ae8567301988f461d6b60e8d845750c06013eb5aeba6add32ad832873397cbc31015c3e983cdf89148fa8a1371c30c54ac126dfd128c11f5aed4f1b2db8e5c062799b6e943ef2d2ce590c86056673f1118ab94d4523e2ff00ee46d07b9c4e6d26f6cd0996d5d57fac0e65fcc542a72c3948031b935db6e746d355c185c4248c9e5391f95217da0e9f61a7c3035bac66791f3cea39491df2298af52fbb6d807f8943501c889ed2800919daabbb16c9e99db02b5673d09a9e1b5b99d1e486de478e3f8e455242fccd36d601c932aa9938127d3353bcd2e7f1ad252ac7e253ba38f461d08a2f1c361adce5e1416972ea79edb9b11c9ff613d0fb1a0f0aaab1248dfd6ac8c608c0c7ca947d6303c751c4a063984ecf87eda6b87b68a5960b97dd639936423a8cf7f6a2573c27a8456e3c422611fc0c8775f6f6aa163ac159a36bac9311cc5328f3467d3dd7da9a3883549934db7d4b4cbdd9ce1828ca9ff9a7f4ba80e09260eea4781cc5c9241a80fb9eb2ac9716fe55b9e5c3a8fe97f51ef59b4b49a2b6f0edaf95b95f9923ce109ce391876ce320d5c8353d3f5e5f075a0b6d78de586f231853fed7ff00343eeb4dd4b42bb1e35b09226f2bef98e65f9f63ef5a2b62b0e3a313da41e64d34697104b711c25550e2eed9be284ff50f6aa90b4fa6dd2dd5a4995231cc3a30f435b497b710dc417ca8a654051b98e5997d1c77dbbf71442d5acb2b2951fc36e582dc203bda39e873fd27b1fa5666ab4673ee57c18e51a81f834b9ffad24f0462c234b923956543cabbf5da813ea37530f118990f31e666ea689eabc353da8692d48b9894efc83cca3dd68769ac79a58984641c1f31c67dbe7414b2cdd878c945c65656e6e59c3a49b83e57071583cf6f78b28760dd09077a2ba65adb3ea3cd77078b6dcc14aa8c609d81dbde986cf876c3555fbe194a5ba3b247cbb6541c6e4d5aca4b0f8c85703b82b4bd44f88448e79ce3ceddfd2b6d5ed165496551e57f2cabfd2debf23459f4be12b521269d55f38da5277fa543aa5d69b1de4496b3acb0c91f87281be31d0e7f4fcaa519aa19264305b38113ade4b9b9513c44a6a5a63f2b6f8320edf98fd69eb4bd674a1a5cdafada2f8a13370d1a032023fb529ea16874dd456f54161cbc929cfc719ee7dc1a96caf0e81ab78a406b0bbf2cab8c804f7fad6930f7143af7115ca315694758fb4fd52f8345a744b6711c8e6eaf4992c92cced34f2f88e5bab9cb7ce8e71770f7f03d57c4b55e6b2b905e06ec3fdbf4fda80b01c8a14fc4b9f951ab60c32205c303832391998973d4ec3e552c1d55491ea2b42173dc803727d6b5241c003afa74a20304449640449820658f45ed5be0b2a01120e453b8fc55e3caca37e5ce01f5a66d7f85ad346e1cb3d4ad2ee5bd375b9940c22afcaa499d8fa8ae339c63b77a6cd4923d47ecd74dbc407c4d3a5303e7d09f4a51e8a70771fad39703bff11b1d63875230ff007ab7f16363d038db15078e642724c9f84ae3f8cf076aba14aa9e2da45e340c1406237cef553ecdb531a6f1418a46020b98591f27032bb8fef55b84659b40e37821bc0d17316b6981edcdb0fd7142b59b49b49d7eeadd890f1cac5586db1ffe6a76e7227648c34022b358cd7866b3846e78d7857abd8a9e274f0acd60566ba7033d56f49d2ee75ad52df4cb35e69ee5f957d147763ec064d532715d43807453a2e8275b9540bfd5018ad03758a1eeff005fdab873244313d95b5b5bdb691a629369a7af2211ff00bb21f8dcfaef46b41d02286f4eab343e1158b902920aec720e46c4fbfa6d43f49b1375a9c3690b4b18f04c8f2a394655e6c6deb9c6f44b8c75e874ad3beeb1951cc98e5071e5ec3ea7f4cd1090a38918dc62371f6ba755d456d91d85bc209087f113f88fcfd293e79b957c343edf2a96f2e1e491e57903bb9cb37f8a974fe1ed535585a6b5b4768c7466f286f967ad2163127887031062b1475718ca9c8cd4b3cf26a379e2cec14746603381fdeadc9a15fc7706da644864f47355de27b72633ca59411b741ebbfb572038e6733435c3f64daabc5a743713c76a5cc9280b8cb6c30a7fab946e7b676a21aac9632de35b410ac5a65805528063ef0c3a2ffda0e493deac0034fb630d8ca0497b0a7ddc91ca6da003ccc7d093923d6ab41f777f0e591a4f0e0c0550a09dce171fee3be33f3aad96648ad7b95033203f79e7f1d807bc9b279df648140dd8fa607e5b0ea6b41f7649081cc513762769253ee7f0edd7fa46dd4d18bc8e4865485b95279915cc719e7f057f08f9fa0eed963d2ab47630c9309a60cb630c815a353bcee3f0827a8cfc47bd15516a5c9942093810a70cacb24d2ddb37f2db0918e52a3947a0ec07414e96d704f94ef9a591a8c2ce5892a4f5db6144ed6ee2481a669170bdf358566acd966418daaed188b9c71c1ba34a4ea16d19b5964cf8821e84ff005f2fee075a49b0d2aeac6e25cb472c25472cb19c866edb7507af5a72d5f567bfba26327906c01a08f172b16070c0e722acbac2721ba9607072202bcbb69e6f3794a8c62aa2f8d3c9e1dbc4f33ff4c6a58fe947ae6de39c44f2408d244fccc7bca3b86a3c6fd248843a4588d2addd7f9eeaa16493fda08ed4cd6d56dce66eff00ca9f6c2a8e622c114d1dd113c6d1ba1f85b620d31e91749968ae033230ebdd4f622846b117ddb5560abc91b2829ee2b36b72f0b891319f7a1da378c89bfa16f728c37663adadbba329c6475cd3269d6a64c3e30296741d4d2e23e53b1eea7b7ca99adb5682ca23ce46077ec281a6455e4ccfd6fbbca81cc34235863c8000f5a13aaea76d6713492c81401dcef40359e35551e1c2d827a523ea9ac1b97792594c8e7fab703e54e9b01e1444e9d0bfe767108eb5c612b3ba42bca9ef4a702bdf6a08ace14caf82c46c2abcf3995cef934d7c15a0c77739beb821e28f0153fa9bdfe5440bb172645ceb8c2c9347e199afd59a585a3839b66933cce3a631e99ef4df61a4db58c612289571e828cc31af86063b54334410923349da4e3332c9ccf4400ab2318aa4b28538cd6b36a090297760140dc9ed5443995da4f52cce032e2aa3c915962491803d8776a5cbfe36b1424dbb34ce3a0030296750e22bdd4183311163ba1393f5ff0014c041e63b4e92c7fed1af53e275e7649a6100538e441ccff952c5eeb6f3b30843479dfc573cd21f61d97e942149627dfad5cb53651c370d768eee63c40aa70039fc47e5451c9c09af5e952b5cf72b12d23f312ceedb649c935ec90d870763bfad797b11dabc91bc921d893d6aa63c063189b961c9caaa079b393d71e952dadbc97337871e3382c4b1c0007526a2230c47a549144f2bf871ab3b37e1519cd56180fa9ec03d0e47ad5e8adace1b21713dc49e3bef0c5181d8f5626a905c3007b7a512b7d16eef553c368f988d919fcdf97615ca40f12f660282c712b4b6c92db7df5ae03bc8f831e30d9f6ac4b1fdf3c3b5b1b252500cbc687998e3bd3ee91f67d25c59086e3088c43b11f1161efd8539e8dc27a6e9300486119ee4f5cd19559ba131353ea7457c0e4ce4569a16ad690092e6c26545ef8ced452cce37aeb171651a8c01b573bd7205b6d5582af2827b77acdd6d240dd11a757ef9c6258b493970adba1fd2b7bdb7464e80a91d6ab5b3061cbde8846a0af291e5359b56aca7c1fa916d7e4446bdb53677871fe9bfc35244e08a37ae69e1a265eebba934bb0360ee771b5367e42501c89741ef9ade19155c864e6246c73d2ab78809dab28c04e324007b9a16d82b86565e85b2082700f6a9fc468fe062a7d41aacaea5f99472a67619cd79e4cd04ae4ccb610adbdeca17cf86f7345ec3528548e7ca9f5ea296a36c45bef53c5211ed402b86dc2523b45751c84057073e86a513aa648902b8e84f6a56b7931e6538fad5d86600932733023d699ab5873b4891b6179357988e5523c3c72f2919cd5392e4bb799893ee6a1630aa1e60ca4f7f4aa81b7254e40a1ea75169ecc2a28309c72efb1ae6dc6f7ffc43881915b31dbaf86b8e99ef4eb73746dece494672149007526b97dc73fde1da456566624f3f5c9a67d2f2ec59bc4a5abc6257753cbe5ebd07bd769d1f4a8f4ad06d6c79143ac60cbb7c4e7739f5a43e01d1a1d4f559aeee23e78ac9432823ca5c9db3f2eb5d2ddb2327ad07d6f55d54b19d2d78f94a2d6164f912d9c0e0f5cc629775be108e42f73a6f95b1930763f2f4f9535939a8d9482194ee2b228d63d67931f2a0ce5255d49041461b107639a9a19651198924608ff1293b1f7a7bd57846d753b817824684b8cc8a9f88fad296b7a1cda4ccbc8c5e06f8588efe86bd1d572b8054c54a7983de324f5ce06e3d68f68fae491c234fba911e16f2c4d3ee83fdade83d0f6a088ea5487ea76cd65ed9d2212300f1fe30a7702b4749aa7a8f3c88adf48b07f309cf68924f2c56eaf15d21c49693364803bab7718edd6abda5c269d3f8ec9e2db4839258186d221f897e7dc7bd4d6b722f628e091f92e60dada6cf6fe927bfb1ac7836d2c2c8f2182f3982a872044c7dcfe135e89595c647532d9181c1ee1f8a49ac7c39ade7796350a60b8c67c48cf40dee3a1f51587bfd26eee43eaf6696d3779a11e5c7a91dff00b5472d81d1b4fb6b879cb0b4916530b3619a36eaa074600f4a1f7de13ff2a16e686e13c4b6771e6519f83f3dab3b54ad5fcd7af334287de36b7718aeb54d074bd2de1b3943bc80f2f87bb13eb9a489f59bd2a96a67616e8b811a9c0fae3bd4679e3e6c02ac363b6ff2aaf22ab8e98dfa5675ba966181c4656b0b2ef3870397a11b56f137292bb8c6d8aa504c41208e956958939ce4fad04750a21eb575d4ac0dac9833463c99ee3fe7a552f096681ed248f6418e53e9ff00151d9ccd14c9228dc7ebed44af539792f623904f9c56ae8ae23e2627aaab23709069e8baf68b71c3b7f20173079ade5ee3ba91ff009eb5ce6e2d67b3b896de78cc4f13952ac7bd3eea904da64d6fac5a1c98bcdb7e28f3b8fa75f966b6e2cd22df58d3175fb323c5f0c170370c3d7e75a20ec7fe0c488f713f911534fd1a09b4c3aa6a5706decc3945e5197623b28a9e4e1ab2bcd02e358d16eee265b77092dbcc98751ebb76abfa8c22e3ecef49bab61e4b6778e71e8f9ea6aaf065fb5843adcefcc6d0d9f2b81d0b13b7f7a3e7cc060750369da65eeaf70d0585b99a454e7201df1d2ba1d8e9573ffead6fb4dbe113cd6c4c9146ae199075c1c7be6b9de95a85e6952c97b66cc927218cb72e4283d734d5f672b79fc7279a48dcd85c40c93cd26ca4f5ea7ad4932aa06626728cfd334dbc0fc4d268b7d1d9a5ac4e97330123e3ce01f4f6a0fc41696f61abdcc369751dd460961246bb2fb54565acdc58d89b58043117ce67e405c03d40357619106a76992f125e2cfc537d756ac76b82c8d9ee3ff8a9b89b8920e209e19ce9e96d3aa012ca1b26438a08a472fb67afad44e307e5e95d241ccad8ac8ac566b3239c89e1d2b19af1f6ac54c9233339af56322bc48009ec2a27010ef0770e9e27e2186c98116b1ff36e9fb2c63afe7d2ba6ea17f1cd34d7a418ed2de329046bd046bb00077c9daa8f0b68c787b84a18a5531ea1ae1124cdde2800c807d36fde8ae9fa75b6abac45a70da1b70b713803a01f02ff007aba7dcb118e25fe16b43a4e8326ada8a84b9bb06694e7709d42fb7b0ae65c51ac49aa6a12c8edb3392a3d00dbfe2ba57165c4b7f70749b525422f349cbea47917dbd6b976a9c377f61aa5bd83113cb758e429dfd6817313d4baa810c707f0dc7a92ff0015d4547dd6327c346e9211d58fb0a6cd2f88acb58bb9ad6c524e5b75c97e5c2633818a5fe2dbf5d1b45b6d0ed1f958c60395dbca3fc9a5fe1ce267d099e31078913b733f2eccc7181f4ebf9d5036182c92731b78d6da16b1802aff00d4cd305493a720032696225b1d475992f2488269b648a65c2e0cd81800ff00b98fe94c9ad4a35cd1eda6e57469798a0ceca718c9a5c78a382d61d3a3cbc56ede25c11ffbb31e83e43a0a1ea1f68959e7bcb8ba9e7ba9f1cf7479981e8912f4cffb46db77a23a7ea91db3f89c826bacff00d2dabf67c6f2c9e981f974aa57510b1d286a97453f9b2620808cf8eebdff00fe5a7ead42a491ecce18789773106e58f61d7c3cfbf7fcaada6ab68dedd9904c6d89e2d3f4afe2ba9349e2dd13e1a670f313d5bd81e80f61516a5aa735b2cbcb105b58f91228cf954f7ffe7da80fde2ef5fd6a3fbc61b6190a30a8a3a003b01471f49432bfe38d86314a7a86ad157dbfb9280e7316a6d76f60bc8fcc5a098fc2c338f91a61babd78ad0202467b1f5ab11e9f67018a79625668983229f51d2a1b954ba90c92ae4e6b19eda9f0546310a4f1208d5b0598e4b6e6b121fcb152baf28c8e82abcadbefd0d507265419049b11ca76a92dee245f2e4f28e9f3aa73481012c7006e6bda3dd1d4c490db465e48fcc53bb0f51eb4d2d4ccb902355300799b6a7e1cf0b78ab9e50483dc7ca82412ed8a39711b3120ec4750c318a03244d6d7054f43b83eb4c51ca9533d3686e0a7830d69b7e6dd883baf5dab37baccf313e6e51d85555bb8d2db3140430d8b7500d5193c47c90adee71502b05b266d33a13bb1ccd67b824925b24f7a1d3485f3bd5a78598ef519b7f6a7136accbd40b6ce25107069938375c1a6ea5f7799f16f73b1cf456ec7fb505687dab430e37a3121860ccc6a1c713b94371b0df152dc48acbb1a43e17e276b983ee97986962030ddd97d68ebeaaa03608c76de907e32a624d59064b7d7ab6e0ef499aef1034eaf6b09393b3b7a0f4aceb5ad162e15b73d297177393b9353527f51ea3ba6a013933c3ad580a3151a282726a6005198cdaa53ee615706ac45e2266446e5c0233f3ed51aa81b9fd6ae6a1989a0b7e44548a3d99411e2677e6dff002fa557be63200181f731a759c5732486693c38a189a4723dba01f3355d58af986d9076ebb54d6b69f79058cb1c6a08cf31c93f203734560d096fa53e119238936cbeecdefe82bbc4a9b52b277180b9718f7a3ba15b5e78771f76b77134c9e1acac30a8a7a9f9d17b0d06decee3751237f530cd335b408aa30315ca09333f53ea35a8214660ad1b81acc946bb2d27a8276a6bb6d123b20bf77440a0606d52d985c6689165f094771460a009817ebaeb4fc8f124b190c6bc8cb8abe0e6a9c0ab263b115686cd8abd6cc08cf533acc1399a5cff00a7ef5cff008b6031dd24e4e735d0a55e643ed49bc596af3d996ffed9e60281ae42c1a35a26c388bb64c188345a03903271406c64c2f31a2f14be5e95e46f5e66e38926ad6a2e2d4807cf8d8d22de45f74b8c7f56f5d0d024c8546c48a43e2f8e4b2b85122f28cec7b1fad68e8ecf7005f3d44f0434acb38ec715e924564eb410ea254eca48f5ab16d7c273ca3208dcd689a18732d621db0a437328dbad4f15e65b0ea6a8282ac181cfad4c180df34064066538e615378a53954d6d0de0327273647ce834b2ee029e95bc6d01de4257dc508d231007b8d42e54280055bb79cbae32303734a6bcc9968eeb6c7e3f4a2165a80f0191cb736762a334a3e9f1cac8c4392dd730c0385f4ad04b914145f39420829f318ada0bde63c8181f5c50da963c98c28872390b000ee3d2a3bcb0b1b981fef50a94032c4ed81f3a8e07f28f5ef4238b352f0ad16c626cc92eee075e5ff9aa535bb5a154e215800b986f80ec85ae9d71791f32c57727f2d09ce11760698e4739daa968909b4d02ca065e564817987a1eb539393486adcd97b318dd4802c903d48be618a801dea5534a910844216d108616964dc7455f5a1baf69f15e69132e0152a4a91d88e9533cd248aa85b2abd056cf04cf692465488e5520ff009ad9d2ea50115aaf1f7fcc54a90724ce4b6e924937246a5989e8a326982d387b559eda457b5645c6541eae7d28cb711e8ba7425e1817ef0be4655500e46dd6855c7186a372efe09481074e51935ea96aa53966efea285989c012f687a0dbdbc135dea50801320248bb2e3bfceb5b9d5386b520f1cb632e0797c451ca4fbfff0034365e20d467b26b6b99d658df7dc0cfe741ae1cac9e4380d4d53aaa9308bd40bd4cd930adde9e3eeebf70be37f6b00388dbfd5841ebe5ee3dc546d2cf7da32431a166b161e1f86324ab1393f9e2abd95ecd14a24824f0a54070c00cd18d3ef05d6a8b776b1bc370aa7ef11a0c23a9182cb8e8475c1f4dab5080cb83d44412ad05f86350b13711ef7109c4b1f723fa850e9530770464677abd6c65d2b5e392a7279493d194f43f5a2f756f1ce823f055e27c988b754ee573589769763e075352bbb7ae62a9624ec7e1ef45749b73245e3cf0bb5b16e4051b04b7b7b0ef5adfe9a2dee19ada33c8c39953ae3d40f9519d0f52b26d3934f4831306240c13cdead9ed55ae8cbe1a119b03226f05bc16a551a0e6e6ca86cedec3353a188dbb42c46187e5ff0086b1790595a2cb7126a314d1dc4423648ce5924ce430f606845e6a6a0af85b4f9e59148db18f5f9d19b09d4aae5a5f5c0b69209f6688ec4ee00edf43d3eb55f87e68edae2e342b9ded6705a10dd390ec47d0edf956df7859e049981231e14ebdf07ff3f6a1570255449e33cd73632961bfc43f10faae0fcc5695645a933ac53559287f14bfe09bfbcd24225cda33e7c29972aca7a30a0f79ad5d5ec4f12a45696ecdce618179549f7f5a75e2db18f5de1c8f5bb64124b6c997e53f121ebf975fceb9de720038381eb46ad8b2f3dc1dcbb4f1d42ba07104dc3d7134914714e2e1395e271e53e86a3d4b88b52d5250f7370428cf2c510e5441ec050cc10c011ccc3b0ad861802483e8a3a518080c99330cc631f8bd4d46a3e22141c0f4af2b10bd400320fbd6f9d81391b51205b89af98e49ea4609f7ad71cddb7ef57a3d3eee5d3cdf2dac86dc3f2f8bcbe5cfcea9918ce726bb19952650acf5e95ae7037a78e16e0417500d4b5cfe55af2f32445b048f56f41ed59989a111b997a66b7453232a2e324803e75d0a6e34e1ad3ee0d9da6851cd6a8dca64545dfd4807ad134e15e19e2582df52d394c0bcfcede0ed9f50476ab624e269c3df673a6dac4936a7ff00593b004a9d917e9de97f42e1ab7d73ed124b38e2f0f4fb594cd38eca8a7a7d4ed5d49308a00e8a31f9501d074e6d2741b99c8c5f6bf74dca475584138fd327eb55619200971c73094f3c77b35d6a9202108e5857b786bd36f7344b4cb58b87b46b8d4667f166b8fe6c8e570ce4f418f9e00154e0b74bbbdb7b145530fc5bf645e9fafed547ed1355658e3d3a224038242f504f4fc86ff5ab31c0c4e1de64116a221bb855dd1ee6f642efe6dc83d4ff0061f2ab3736118d59357965c2db40ca131b0ee4e685e996893eb30bcd1e25b584e41ed90302b6e34bff00bae91f7653892e8f281edde839e25a73ed6b519353d527ba7ce2463c99eca3615069d6536a3a9416900f3caf8c9e8abd493f4cd4f33a846b62aa426c18f5cf7344b4802c348b9d41f692e730427a72c63e36fd8504000e4ceee5f5bb37ba94b716e08b3b65fbb5aa83b310373fdff2ab363656976cc259fc28a260491f887e36cfcb2013ef42ed2f11ad96de24e563e5887a0eedf3a9389aeff8669f1e85036259312deb03d7bac7f20373f4a5aa537ddb9ba139be329ea7af1bed69b520b12476aa12c6d98655146cb81ea3afcea7b2d12f6ef429355b991c44a498139799e6627738fef42f47b686eaec35d106da11cf20271cde8bf335d12f2e678f87a3880e69e6013006046187403d86df5ad1720024f42531e22f70dd97856cf70e32f21c0f6147522c9dfa5496f67e0d9c31a8c055c56d22b4684d788d5bb3da498741c4a33e198f603b554e45084fa0ab1392a873d4d42f3e2d1931b93b91deaa80e254ca723ff2980aa323e16a576c023724f615ad84115e092eae7c9691ab30f361a4c75007a7bd69534b39c09c0405ac5cb2c0aabb097a7b8ff142acaf67b1bc8ee2d24649d0e5397afcbe5536b77e750bf698722c6142a2c7f0a2fa0a79d1f44d363810222c5e40dcc46ee7e7eb5abc50a0798e69e8f772738902ea6ba9a48da8594915c0de3990821c7a1f5a8468c6f88e74e58c1c827ad3445a3c11c6245236ed8ac493c56df17e78a51d896dcdc4dad3d4a9c27306c3a35b4710555e9eb55aeed608e321428f5ab775a8ab03cb2601ec2815c5e23b953cdf4a135bbf8513628d3d8c72650b986259084273dc55568bdaae4b0c982e239393d48a808a329e26a7b6318955a21e950bad5d602b6bd4d3445cd6d3c85b901292ae086cf418eb465310d42aa40cd3496932cd1372b29c83441b88da58705795f1be284dcb163d6a3b7b69ae24e5861790ff00b4669a35238cb4f2f7be2ce25b1706790963bd5855db6ac47a4ddc1e692319fe9145ec3449ee50b3b2c791e552a4b7e9fde82ccbe0cd0d35a8132e60b55c6f442d606bb11c715b7390181c3e0b13d3f2a3b61c2e1c91812e47c477e5f5d86c3eb46960d3b4d613dd5c891d40558e300b63d3da845a5dfd42b5e122ec1c31a84b6eb1bcb12ae490a016c1f9fbd41a9e97a8413462fe569554722313d00eded5d021bb8a6b6596252a8dea37a5ae2875f0958119e61f5a211f0c83161ea16b3620ab08163f817e79ef4c967caa06e3703a0a5ab5908c107ad1bb19d480bfa1a52a7e7994b9cb08589fe6291d4ed9abb6d3f28c1e95ad8e9135f20919bc38f3b1ea4fd28cda6896b1ee54b11dd8e73f4a3f39883b09a5bcb098fbe7345619d1970db6de9598ed2255c0503e9532c606c0628c0c51b066f14bc9e63b2d4ed73111b483355fc215ab4602f4151bfc4aed065cfbcc3c84991761bd737e26e2932ddc9696b13722ecd232903e829f9225e5d856af0231f3a2b67d475aada5ac5c4350cb536e233394db4aa5339abf05c9029ee7d0f4cb8cf8b631127b85c1fd2835ef062952fa7cc518748e5dc7e758f6e89fb1ccd45d6d4dc1e20cb79c87500ee6afc96d05f21b7ba8d248a40558301ff8284c36b756174c97b1b46cbd33d0fcbd6b5d4359b5451666521a6f2315fc20fed59ab5d8b700b19f6f7e36ce6f7568b15c4a8bf0ab90bdf6ced55873dbbf3c640346f541a6c48b0d98919d18f348cd918f4a10d8638af5209e8cd57a51ab031378f5520f2caac077237ab3f7f899032c9d7619aa7e1e06c2a4083a9507e62aa550ccd6f4a0c7838963ef42a68e7562398edeb431ed2e24264899b0bb1c0cd4467ba823e678c3a671cc36debbd90dd4c9bf41755d88c6c79e22a879811b558d339a31e1b67afe74b363aa812f2cac541f5a6bd25d667590382074dfad27754c8304450210637d943034015d15b231822bd2e85a7cafce21f0d8f78ce2a0b77c019344a2727bd0d42e310814ca16fc3b35ac85e0bb69549cf24c7207d6a4b1d12117bf7bbdb54fbca1f29cf363d0d1989b950b1ad50f3e5ff2acfd6b8a972a79319ad73dccbb616a206bd2bd6aa6b0c0e238abc4941add4d44a6b71552254896211ccea00ce4f4a38a02c6a876f9d0bd39d118b30dc630688bdec6ca55143374c56dfa6d68a85d9b9333751b8b6009caf8d7486d2f5b95bcbe1dc9324781f9d038dc2ed9c0cf5a27c577b3de6bd706e5f261731a8ec00a0dbe703d3f2ad7cfd4819c60c9d8a8906775cf4356cdbc774018080d8f84f4a1ea7627a9145347b559c4d34b3ac71dbe0c801f3729ee077de8d500c7124f03307c8b2db5c2965db2030f4ab6239fc11790060aadd51bccb456ed23b2923b867f1a22843051bb03d0ef51691776ed342b24de1dbb17554620609e99adcd3d8546d310beb07e4255bcbb5d4d127910a5c471f2b346301c8f84fb7bd19b2747b748a53812a821c1f85fb11505ce98859cc402b29ea3a11ff351405a3b396161d10f27a83d45336a075c4056db0c96e2e214ba58ae49888dd64519c7a8fad06bdd59ff0099059c696d136c4a8f330f73562e26fbfe9ab3647888017f6f4a0721f3107bd64b3b0f8cd555046666398a9c7506883ca678564047283875f7ec68412c3a510b36e55ce723a3afad0c0855ee15b2bb12ceb1499c3af2bfb8ff00cfdab1340f05ff0031c00405623b91d0fbd5188989c483a834799926b412ca9ce15401b7e54e695f69c18beaabdcbba7b852f61b4d426d1a519b79539d14ee0a9ce47ee291b88f476d0f5d9ec8ee9cdcd131fc4877068fdc48d6ef15fc7b3db364e3fa4f5ff345f8d6c1359e1db6d6605e696d872c8475287bfd0fef4f676581bee67e37d647d4e6d96cedbe3b56a000e0018cfeb4e9c25c05171169cfa85e5cc9029729108c0df1d49aceaff665aa58af8ba7cab7d1e371f0b8ff0034c023314da711381230c7bec7deae69ba7cbab6a16f63065a599f191d00f5fa55796de6b691e0b985a2986ccae3057e95d1becaf47b648e5d5e5746b86ca44a5b745ee71ef572d819830bb8811d21e1fb28b878e8ab181018f97ebebf9d713d6b4d9b4ad467b06420c4f8c9fc5ef5f40818a50e3ee18fe2d66b7d689ff5709008c7c6a4e3f4aad4e01c185babcaf1e2735e05e1c8f5bd45aeae949b5b6df1fd6de9f2a64fb49d5a5b4b1834d83c82719723fa476a37c23a57f08e1db6b765c4ae3c493fee35ceb8f2f1aef8a6e14b6560023503a0a44c63181170900e3bd3d7d996b1e0dfcfa53e79671e247ecc3a8a433bef463842f16cf8aac647f84b9527d322aa0c9c4ee51426e265857f19c7d3bd57bbbb86e3539da31fcbb3c5b40474cf7c55cb7b84b2d2eeb5462088d0ac7ee6972469e0b048a227ef533848f1ff00de90f5fa0cfe545519e6498c5c36606d3a7d61d1a256e6405ce7c8848c8f4ce291e7bc3aa6be2e1f2ca246931ee3a7f6a68e32bc8b44d020d22db23f9614efd875fccd73e8f52686e61979155635e42abdfd4fcfbd2eee3762746fd39a47d55e766e62c8c58faffe1a54e34bc7bad68c61c725b285503b1ee7ff003d29bb42653a57df33e790166e63f0819c0ae7574c6eaf27979480ee4e339c0f9d519bac49f12bc36f2dd5c47045bcb3b855fa9a29aabc725cc7616e7fe9e0411a9ff62f7fff0011c9fcab6d063488de6a528c2da4584f776d80f9e2a14b37ba991073196e242640bd976000fdbeb4bdcdc6076612b1ce4c29c3905b5bdbdd7105f2ff00d35aae234cfc6df813e64ee7d852e4515cebfaa4efcdcf7129695cfee7e946b8bae96058741b73fcab43cd311d2498f5fa01b0a2dc2ba60d2b429aea48c7deef08452c3e11d87f734e535ed01441bb64e67ad34b5d2f4b68a107c1964c1919412e01fdf3442f6453aea99a42228a25f0d7a63d6b6bb9cc7a743320fe45b901c30f3ca7a2e3e67f4a46bdd56e2d7501e2cbe2cf348cf720ec173b2a8f4c0142d52ee52a2727dce866f2364c29dfd715116ce496cd0cd3adefdd6325e26899410e4ef8ea36aabc5d35ee95a5c735a5df2788fc8f9419fa57997d0ea6d6e4710bbb025bbe9a351cceca8a3a963814b5a8712dac40c76a0cedd32365fce95a5b99e7399a6773fee626a21e66083258f400649a7e9f4f44fc8e6563fe93c67a2dad8e27b79239caf9f9579b9cfa6697f5ce2596fad52de0b97e470c661e1841b9d947b01f9d57b5e1cbbb900c922400fe16ddbf2a35a7f0b5b40c1dc35c38eedb28fa532da8aaa1807fd42ad6cd13e0b79eedbc3b785e4276c8071f9d3fdac922430f31f322283f302a4fbb88942200aa3f0a8c0a8b94ab1c838f5acfd46a85c00031367415fb79cf98c5697c25b7f31231b50abf9e3f10ee4e2b363232797a83db150df4c9bf3228a0b3ef500cd4d300b641b7b2c3244790a86fde877290013b736f5b5cba34be5dbd6b0d1cc6dd27c663e6280fa11b914cd69813d1d642288cfa5da49f70966bc2ab6a800210733107b8f952fc9648eb757113e6da27c46fca407ff1548cccabcab230cf500e054a755b98f4e7b00e04123f3b797cc4fce8aa8075122ae8c5b3349001e43148263b85e8318ad8699aadf5ba45044af0390c24e5e500fcc8cd0b9e667c9624fccd752d25e3b9b688afc0635c7cb15676f6803f7327d475a5060451b2e048872bdeccd337758f2147f734c76ba2476f17870441157a051d28f7850c4099081ec3ad55bbd5238b68635047e23b9a56d766ff00f46ff13cc35a5b9951f438a387c5b829181b9e73827e954aef5dd234b8185ac0f712f62c7940f90ef43b56d6e5b8662d219243b12c6966499e625973f3357a7ec0e21a8a2dbb841997e7e2ad4af9dd679bc0833b450af2823df15136aaab1811217718c730c28ff3598f45b89ad45c425644e5c9ec73e98aa05306996dac67a2a7d32ae0939876df8c678d3925b3465ff63918aa9ac6b91dfc2a6357521879186ff9d0d2bdeb5e507b55830c625dfd36a272389661be0d81900fbd33f0ad94dab5f80bfe8c7bc8c7a7ca9316132cab1a2e59c8007a9aeb9c31a7a68da62db851cec017607ab50d9173999daba852bc771a2184244aaa3000c54eab8aa705cf404d5913afad10913148327159e6c5442743deb59250179bb546e95c494c87d715966ca8ef41c5ea5d4d2431b10e9dc8c03f2a9ed1a70a567c6ddd7a50379cc2fb7c42aa70b5210193237aa325c88edd9c297e504855ea6b4b4bcf1956555750c37571823e9570f8e20ca132f72d639476a8fc71cf8ced521391906881b32b82247716f05e4461b98d64423b8dc7cab9c714f09dce8a977756113dcdace0306039a481875c9fe9ae97dab2ac082ac0107620f7aed83398ce9b54fa76dcbd7d4f9d6489d012ff00cbf286c3ec483dc0ef43e77e57255b61d29cfed0b403a0ea7e2c2bcd677409889dfc323aa8fed49f63a75d6b1782d6d1417c649638551ea4d11171dcf496ead6ca832f99886f15ce0ec6aedb433de3f876f0bcade8a334d9a5fd9447720336ac4c8304811797f7cd1eb6e1db8d09cc524398c1d9d0654d52cdbfd317afd4caae1bb8976fc2fadc843241e11ec4be3f6abedf67d733c110927589813ce7e2cfc876a7cb7c30cf5cf4ab0eb95e9560063222777a95afc4e7b17d975b48e3c5d42523baaa01fad1dd3fece34bb3198e6bae61dfc53fb0a618c1e6df6a25101cb81560db860ccd7724e62fc9c38f0286b699d8ff004b6e0d691f8b01c4f1b2e3be3229a1539be5dcd693dbc6c3214918ef49dda5c7c9389d5d9ce0c1285675310900f2e7e758e7e418ad2f200a432ae0e6a05638c579ad5ee66c3789a952023892339359439a8eb68fe2a4f1c4391c49d0e4d4a06c4e338a89700d4f1c9c84907a8c74cd531cc03e7c4cae54ec7e7ef53db899dcc9146700ee7b0aaede5d8822b7d52e25b6d16416ade7085b6ea0e314d68d33673e22f61e389cef8c6d1ad789eed59c3176126dee2abe916f6971a82db5e0901914aae0e395b191f4ab17ba6ddff1281d9322e30cb96f8c0ea3e744353f0753b88f52d3ed8896d5d44b1a0dc8cec71f98af655d04f3f511271c459395664c1c8247bd5fd3aea28091296059940c6e304e0ff9fa5635fb7163accdc9cc03ff00314630403430be738c81d80ed574a4a342aaee5cc6bb8b87d2e79acefd97c4521a175190cadd4fec7f3a1daac8b1de4732f82249221e2ac4014e6e991f3eb56f8b12d67fbbddc5790b4de12249083961b75a156dc938e591030c63a53d9da7129ed874ccb56da9de47cce24dc8e539190476a2115dc1785b3104908c14ec7dc50fd2ed8334f0cafba15d8f5653e958939ed2f39957386d81ee29cadb70997629438962d6d9a1768245e561b11ec6856a960f67265b743d0d187b8795e39f3e60b822a6d410ded861541651ccbf2f4a4b515e1b747f48f91b229edf8ba1d881576dd62112b2b378aa7ce84751ea2ac5ae8ef7b03dc28caa49c9281b15db3fad32d970d473da453411f84c47290fd7635c94679877b150ca3258dbc5a45b4ff777e675e652319273be7dba62addb4897501660a148e59150602e7fe69a20b345b24b79155d55795811b1a026da0d11db4e9c116d33f34329ec1b62a7e47144f6b6caad81c1117678beef3489263973ca77f5da8c707dc89ecee746bd21b00a303dd48ebf960fd2a8f105bbf831dce3cd96864ffb80ebf518342b4ed45acf53b0d414f9261e14a3dc74fcf714d637a4cf2363cea7a469b0e95a4c1636e3091295dfae73bd5c1b8a55e21d7eef878d96a5147f78b1b8fe5ce9dc3636607dc530697a8db6afa7c77d692734720db3d54f707d0d4a1cae651861b110bed3f44e5921d660424c9fca9b1d01ec6902deea6b49964b795e3752082a4822bbf6a7a741aae9d3d8dc2f3473215f91ec6b825fd94b6179359c9f144e549f5c1a61482b8315b060e44ec7c0dc54bc47a614b82a2f60da551dc766a6818e95f3ee81ad5c681abc37f6c73c842c89d9d3b8aef5637b6fa8d9c7776d2092294732b03426189747dc3102160a85bb2826b83ea9706e755ba98b679e5639fad773b87e4b695b19c236df4ae07330333efd58fef4a187226b577440c75cb2080973328503b9cd51a75fb28d21753e348ae245cc3a7466e1b3d39ba2febbfd2aa7ea70ee74fd7316d158e90801118f1a6f73d87e75ae876c2f3882362329611999fde57d947d1727eb54a4b95bcbfbabf95b11166624f645ff00e09abd6176da3703dc6b32a1fbc5e734f8efe6f2c63e8314c3615313bb314b8defcea1adcad09cc511f0c7d33fb9c9a5667383dfb0a33adc2fa75bdb4523667994cb37b31db1f4141a09523b88a4914b22b8257d71dab32c39697c4e8d1d972e8515820f079e10b21c7c391e6fad2c6b36169a769522c2156692450c0755503207f734dd05c0b9b68e60080e3201183499c6779e36a71da290040bccd81f88f4fd3f7a3b602e64620582599a11680e211278ad81bb374dcd1ee19631c77bac4b858adb6538f89b1b63e40e7e64501e59520548873493b84551d727a534ea7682d7468745b3c33c68ad2b13b139dfeacc47d0529a606cb379e84258762e208d1ed9354d4ee5ae6dc378c8de1b48794c4c0676f5db0334caf2470e9d6d0cbccb21509186e877ebf5aa5c37688ba9dc3aca1a1d3a328ce06cce7e23fbd51bad7a6d4f886de0f2082499572079b00fbf6ad4fc41316073c4df882f8d9d92219b9e3873392360cdd235cf7df7fa522dbc32dcb19010eca798f37e23d68ef19ea31ea1aa8b1b0fe6a236098c67c490ec00f5c74fce8bf0ef056ab1857b954b507e304f3311e981b5216b7d4381005971aea3644870924632555b6e53e9f2ac3b7117174ea5a367894ec4af2c699ae8163c07a35a48d29b613484e434be6c7c874147e2b08a28c2220503a01d0551ac38c0970a3cce6f61f67a15c35fdc1977f823ca8fa9a62b4e1eb1d350fddad510ff0056324fd4d348b600fc39af34008dc00292b16c7ecc2a9022a369b2bcb9117fcd591632a819000f4147cc48bbe2a09dd50e01c7aed4b1a420c930bee6207fb90fe9c7bd45258b36c8b9f98a23f78ccbb7c39db3560ea4b081882261eb4b6ea5872712c351b4c049a4dc679879707a8aa57fa6b90473673dc8a645d4a4b89b7912241bf284d8fb5437a23b880ba0e5c8c903b1abd62a6e10f31ca75adba73abcb67b57f3631f3a87c53e185566c7523b67ff008a2fada0309efd77a55e76562bcc69fa7e6bccf4156b891c884a1bbfbb485cc51caa410c920c8350dd5cace54adb4711030793383ef8a831e40d5ae4d1c0c712cd66f399a38245741d0eef96ca02a4ec83f6a42f15951901c06ebb511d1b5a6b07f0a5398db60ddd681aaa9ac4f8f6264ebaa2e9913a1dd5de1482d9dbb1e94b9a85e9f3729f99cd4f717e9341ceac082320af4a01a85d2a2939dfb0aceaab677cb4c20b3469d5ae634739323631534d60c012aa463b509b094c97c921df0c314eb6f009495df988fa539766b2009ea7d310d156e3e62ed9dd4f66f84cf213e653dea2bb88accce07958934d43419a53cc91e01fd6a47e1b95a30a719f5ae0ec4f5348ea2a072224e36ad0d374bc32e919552a72724d0b9b43788907d7d6afbf1dc9f7eb6e8cb1c15a72dcea6d752ae52dc79723ab1ae8264cb73600cfa74a5de1c58ecb4e5846398b124fad1a1283be6a4b6e199e77599b2e265b13f2818eb5b8ba3eb43da5f435a78e3d6947639c08afb709b5e1f5ac0bedc297fa50a331c75aa8de39b912f89e5fe9ed54de449f6c4628a4446e65db9bae288c778891e7033db34b914c76c9cd4c6e8e700ec28eae441b5798c31de272e180c9ad96446d948c1a5d170cdb0353c778514649a20b33dc19aa1f58c6724835363c3193d28026a479baed56d352575e5cec7ae6acae99826ada1449639103a30653d08a8ddf97343c6a088bc8a456afa8a153cc7ad32aca4419439e209e3bd39b5ce189e08bfd784f8d103dc8ea3ea2927862d174db2194fe7cd8321efec2ba05d5dc2d6ed86c3729da95f87ecfef778188fe5c673fe297d4d8dc221ee3da76da877788f3c3d6c61b70ee3cc77a35c8ae771d6aa59288a15ab4a79b714daa80a04ceb1b73132a4fa4452e5e30237f55e87e942ae6da680f2ca847b8e86998135e6018608cfb54edfa941611dc4f18563bf7abd6f22f2e3236a1fab4d1c5a84e89850ad8c5535d4e18b72e3140dc14c6319198c2640011cd80773ef5e6b9f2f28391ed4b12f12c40e238da438f90aa136af79700e6731a9fc09b0a1dbabad47799500e6316a13c4b1ff31d509e809de857df22ed96f90a18acade6ce4f7277ad918b30551927b5605f8b5f388ea6a190604242eb98ec9f99ab76e433027eb5be93a4a4b86ba63bf4453fbd35dae95656e839205cfa919a253e9965a411c4a59ab61dc0d0dbc32ee57f2a8a71f7493957ce8db82c3bd340b7857e18d47c850ed6ac636b192541cac839b6d8539a8f4865a8b0c6441d5a9cb80dd40c6e04b1f2b81b6e0d651d278a5432c63c8d90cd8c8f4a03737e631ca8db9a8adf96e18739cd646955d6c0e66c9d1e533d4bf0e9f0df6970432f58c92adf890d23e9fac5c68dad34c8c64552637427675cf4f9d3d436e61cf2484023190692b5ce1e9b4c95a58d8cd6ce721ba95f9ff9af629a8de07183335b4bb09c1c884b8a754d1757b18ee62933763002004301df9be54b9107879b08a4918dc7362a2f2e373d476ada194af36091b6c69827773211368c09b2aaaa6f52c52f86c08a80927a7ceb0580df35c043010a5c4eabf77bb8c8e71b37b5129944f1f8bca43607329ec6973c718f0c1ce68b6937251cdb3f493707ad190e0e627aaa06ddc25ab8b46b69042cfceec3a05c63d87ad19d12d1aeec1d481e2c24f29ee57bfe471f9d5bb2d392f74b1caabe35abec4f5ffcc1fd2b7d12d6eb4db92268cbc78d9836c7b1dbe5fda99601d6652928d9121d3ad92d7550e621f76d41796452365997a7e633469af2da29c5b0914498d9055698446e1ad4b05171fe9b0fc320e87f6a55e2796e56e2d2fa1cc4efbb05ea2553861f98e9ef554eb11e75dec0fdcbbaff0013cfa76a0238572e3e1527cbf5a212bdbf1770c8b88072cf19e6e4cef1b8eabf514a9c42ff0079f0b531f0dc461f03b1ff00e72289f095a5cd840f785d638ee55731919c8ecc7df7c5736738850aa2bdde44b5791fdeade44c826e220e0fa4a9d7f31490519a0bab60a79e3613478fcffcd742be8c421fc33fcc865f1157d40ea07d0d266ad08b0d6c3a7fa6c7037fc277157af824452ee4068d36dcbc4dc0535b03cd22c7cc847f52ee3f4c8a57e04e273a0ea9f74b92c6c6e9c06cff00edbf407fcd14e04be165ab5d69ec7c81898c636c1f30fd3229638aec0697c437508244723f8917c8ef5641862bf70168ca06fa9dcf623639cd731fb4dd00437916b16ea712e239b03a376347bece75f3aae8c6cee64e6b9b3c0049dde3fc27fb5326a9a745aae9b3d9cc0112a903d8f6357076b40901d67cf6cd838ef9df14f5f66bc509a55cc9a65eb916d365e262721180c9fcc0a4ed434e9f4cd466b1b9022789886f7f4c55546e56c67968e54111504a9ccedf379a19063aa91fa5701b818ba907a3b0fd6bbf9231bee2b88712d83e9bc45796ee303c42ca7d41dc56599a060caeb5f6696c34ce00d4b56c626bf9bc28ce37e55d87ea4d72339e538ce7b5779b6d3db4ce1dd0748e9c815e41f2193fae6ad5aee2048ce0132adfa14b4fb84681deea48ed029ee18e1bf40d45f8b258d6e2c34c5188201e3ba8fe94f2a0fab7ed5069d01bbe2bb152095b6592e9c7bfc2bfa9355350b85b9e22bc2f2e478cb08ede441d07cd89abdfde24a455e34901d5a28cf58e11cdf334099a3b6b88fb94507e64d3a71045a7e9f20d6268fc4ba56558d19b663eb8f9522dc4cb712b4cc79b9c927b729cf4c7a566ba9dd0be231dbeb7a93dfbde99d6dad4855113e0829ec3d76dcd076ba6d435992760499e52d8ebb76aa6f29312ab375ea076abba4916b23df4ca5563198f3fa1aaea1be0049a864c31a25b29d5e7bcb943f77d2e32eca46fcfd87cff00cd497378f6d04b72ee0cee7c7957d1fa28fa66b1605a2d06dc4ac19efe6379281be514e101f9b6ff004aa73db49a96a36f611487c495f21b1f16fb647bee69ad3a7b680405adb98c2b24a741fb3a4914ff00d46a6db93d70772690247667cf31cfb535f1f5e2cbaa2e9f14a1e2b041180bd01eff005cd27b3545ec41da24a0cf318fecfdec538a07dea3e6729fc827708ddfeb8aec71450b2e554fe75c33861643ababc2a5a55dd001df35d974dbb32dbab1c02474cf4a545837ed8c6d38cc21e1c40e394fe75b72c3e955da527bd466420e6a4b096db2d911afe1a89e58c0d94540d212339aaf2bb11806a8ef81c4b0499b8b91d06d40ee2e0b48cd9ef57a62c41c9a0839994b052403b9ac4d6b33604eb3e224de29c67ad68cc5ba56f15b4b2c324817023eb9daa1e53cdc84107deb3f6e22a4f32c40a772db56edd4e3a1ea05606235c0ac6493540c436e1088d88bfae59cab1c92227f28ee0e7257e74912e127606bab4d124919461ccac30c3d452b6a7c142797c4b19fc3cf58e4c9fc8d6ce8b569f8bf135b4faa03e2d15d245f03973bd69cd4eda6fd9b493a869ee18faf2e1455f93eccd03811abb03d497d856a020f2399a035b52f199ce4ef513d74c9fecc53c13e1348ae0751b8a5fb8fb3fd45242a93211eea7356071dce3a9adc7062d596a6f6e0c2ed94fc39ed5add5cb393bf5a9b55e19d4b4e0d24910740704a1ce3e941c4ae363da88b5a31dcb32dc0dd98574d3860738c6f5d6386ad629ed5276009e5ae4ba7e4a823a9a77d2f88bee612356c2a8037ef4a5d81664cf42b5b3e98048f770e2253caa283cda83f310b803d6a21acc57c98e7e538e87ad0db9908e62ae0d2b75a47e32b450070f2d4ba83e718c9c6c715466b877f8c0dea8bdcc899dcf4aaafa8ca060839ebbd03f71fccd34d30f02133712469919500ed5b26b170a31f18a16359707257a74ad9b5c608a100d860f97720fbd5d6b6139f4d9ed6164d6d86ceb8f7cd65b580304ed9a5efbfe73cf8381b0c6056b25f42e79846d19f40d9153ed9300da14fa8c126a8655022705b357adaf119377191d45244ae31ce936fe80118ac47773291fcf603e756141ef3167d0f1c19d005e284c6704d67ef18db39a49b5b8bab99d63b69249242765029cb4ee16d66e23590dedba391908413f99aef6db38133eea455f9196d6e02aef514b79e6f8b15bde70c6b56aa5a3686e081d14f29fd6952ef5192d6e9e0b90d1cc9b32b7515ceae06008ba287fc4e6337df139704f5eb5b25ff0026ca4fd4d28ff1b881c971f9d5883538a4dfc41f9d28d5dbdc27b71a0ea042f5aaefa8331c7350492fc01f1546b746560a9b9355c58472654562167b99676f094f5ea69b745b05b781405018ee68070f69e679c3b2e557724f734f1141e1e0a8e94fe8ea27e6629a9703e0258039542d4f09db26ab138209a954e0629fdc331223896d5b355751d422d334eb8be9db11411976fa548af8040eb4b9c67749f718f4ce74f12e183307e9c80ff7a9670aa58ceaaa363841e67317d6354d5ae65b891cc6b231603e75ba972be7919b3ea6a5b5d26f671792a2b72403c4ca8ca84fdfe5f2aad1c9e5273bd665c1bb3e6685f41a4edce65b593181bd4cb2d5012e0e4d4892f390177f7a50a662c0665f85d9a40a9b93da8d5a42917986ec7ab50781962c63627bd5f86e40c65864f6cd56bdbbba8c2d27b8cfa6c9e71bf4e94d70b7346a7da9234e94f38ce314e16728312a8df6ad9d2598314d427996eab5fc4d369f71128059e32067d71566b15ae4065c7dc481c1cce3065769595ba838357ad65f0c0352711e97fc335f9d07fa721f113e47fe6a819790578cb50a36df227d09196ea9597a22165d4307049c1a867ba6218365a3c6f425eeb1be6b0baa2a6cedb7bd5d4dbf738693c812ccf6da75f46b0cb0a42d8c24f08c11f31de816a1a5dce972289f94c721f23afc2c3d73fdaa6bebc89b0d6eecad9dc0e95bdbebf7515b986e221716ec71cb20c83ebf5ad9d3ea180c3c05de94586faf83f525d07876e356265f116280384624e0b13d85335e700584b0ac5034d0ce1491283cc8d8fea07a7d2aef0d1d32ead63b7b78444d13897c26396047423d698cb79cae0e719f6adbad548c89e53516db5d854f189c8f5ae16bfd182c9360c4481e2a02541f7f4ab3a9e9d0dadad8eaf67206b79f9448aa40319ce3207520d75091229a368a64578d87995864115c8358d3e5d335abcb501cc0af85df230775abed1216f6b460c7fb4964b168981060b8187603e80fd28a003c1258c6ac49f84f42296785e7fbff000f9b4704bc04f29277c51c8e549111b72d26ce87f0b28fee2b97ea216aed6906a91896d7c44051d7ce083dc508d4d1b56b29235039e74fbc458ffef26d22fd460d1fba5079803b38e651fda96e291ade79e38c1f12d2417510ef81f18faa9fd2a3a68d507756479131a269116a1c32d6b3659a291bc3df7504e719f9e6886b9a54b631dbf2af34b02290a064103b7bd1ed12cad52e99e003c19bf9bcb8d8e7718ac6bd7104da843873e45fe663a7b5598f3883f70ee94e148b589ace44cc7e2f3312c3cc3037534a1c55a6bc0919c737860ae7d86e3f4fda9aadde686f1a3191229f104ca30a33f871f2a1faecf1ea5a2b3f281242ec187cb6fdb3553c30324f2a4449b5bb6b2d7acee9760ea14efd4a9c8fd0d1afb48b359a1b3d41076e4661dc7514b37a592c048a01781c30fa1c1fd29d2e31ad70315f8dd63db07a95dc7e945270c1a05572a5621e87ac4da0eb30ea30124467ce83f127706bbddaddc37b690dd40dcd14e81d587a1af9d9589c63ca0e7207a5744fb31e2178ee0e8372d98d94c96b93f0faaff7a3d83238885471c196fed434033d9c5acdba7f3adcf2ca14755f5fa572e3e603946075c0afa36e618ee2078a540f1baf2b2b7420d70ae2bd0e4e1dd725b40a7c090f3c2deabe9f4a9ace46275cb8e63cf08ebe9af68f1bb30fbcc6396751d9bd71e86a8718f06bebd2c779672225ca2f2b2bec1c7cfd6b98695ab5ee8d782eec673148060fa30f423d29ce0fb54bb0b8b8d32176f54720567771bccbbc29f66d28d520975731b95705208ce41237c93f4e95d0b556327104a07c36d6e136e9ccc40fd81a59fb38e24bfe26e28b99664486cecadcbf8683f1138193df6068fc6c25b8ba9d8ef2ce727d9063f72698a0724cabf004b3a0b2c13eb1a8c9b25b22c418ff00b54b1fdc5724d4f88ee3c286489c89e699a62e3aaef803f3cd747d7af3f867d99dedc2ed25f33b67bf99b03f415c499d9db99892696b8e4c3d292e5ceab7b7ad9b999e565eee726a3171231c13bb1dcd421b99546371b67d6a58400cc4fa629755c986600093a4aed3e1fe11b1a3490cb7d7165a4c27135e4a23cff483fe07ed41f4f84c972b9c104e4fca98f430cdabde5ea8ded2dfc289bd2493cb9fa0e634bbaefb82cec6c42d0b5dca2e6f992d88f0d488adc1e8b1af910fe8cd5a239d3a5b8d4a1c8302f3abf4e42472a0fcb7fad416b79069f30bb942b248a4dac60e7381caa0fa6d43b88ae4da68f05b310d7172c6699877f4ff00e2b52b181ba679f91c45eb8b8e691fcdcc58e493be77aaecddab36f08b89482e23451cceedf847fe74abd1dbe9924a7c1795d390ff00aa3043636c63de907e5b31b00000423c38ed6b6e6e616e494b11cded4e9c39abb34e6da62013ba91fa8a58b5816d2c238c80c5540247ad5be47b429246f892339d8e7f5ac87b08b0b4715415c4e8e5b23ae6b463eb4b96bc53018717398d80df6ce7e556e3e24d325f20b9556f4738a703ab752056df50a3b855a80cb9e83f5a1b3ea4b30e68dd4afaf30a133eaad1f9d26e5fad431861518c123673b7eb412f50dbc9951e463d7d2853f1a470b9497f98a3ba75a925e24d32f203e1ca49c7c2c3047ce94ba92eb9c48b286c752e0b96cf307208f7a9ada4f10f51e41d4d2f47a8a37372367152c77ae80393807a7bd20d43631335d30706310939c939adc1c0a19657dcea4336c7a8ab6b373b7b528d5953882ce25c401b73d6b2db7ceb48e50a9bf5a89e425a83839970f0959dfbc385c9c0a3f6b78264e6041f6a51190001d4f6abb6b706d1632dcc093e607a60f4ad4d26add4ed63c43021a3524fdea58dd0b65941cd0e8a612202a763532360f5adb0e6580936a3a058ea76cca630ac47c4bd6b92f1a7d9c5dd9f89776718911773ca37c5761b7b8c1c13b1af6a975696da7cd73772ac70c485a476e807bd1d5558ee1c1974b194e0f227cd7a79c210762a7157cc981b9a11797e1f52b9b88072c724accab8c0c676a85afa66fc58a87a4b1ccf43a7f534a6a0a4730e8bb70c087391d37a9ff89dc839129a5b5ba9ced9a9a3699cfc64d08e9c798c2fa907e963147abb9da401bdc6d524d790b0520730619f7142620dc8a1ce71d2ac0420038d8d2cd5283c4d4a896e7a9bb303d36ad0be3a9ad971bf367db15e789645c6707b1152311a6dc47c7b911947ad6865f7aa172b3dacbcae720f43eb5a249348c1507331e805322ae33315b5e431561832f99855fd2b4f93519b2494841f337afb0ace9da1190092e988ff0062ff00734cf6b0a44aa88a1157a0036a4751a854184ee41d43110a69f041650ac56f10441e9d4fccd36e8ac32334a96d93803a53368c70c09a574d6966c998fa91904987ae03649e5edbfbd719fb4d548f5bb791060bc4431f91ff009aed170df09ea315c5fed5d19753b470c394ab0c7be6b77b112d2b15b33121a5a8dae08e951124d6b83560a268bdcc7a96219ee4c815257c9f7a79e1db37902e4132352e687a6f348259067fa45754e17d2bc351348372361e959fa922c615ac196d8b930e6996a2cadd500f311bd1789bca013d6a9b9031ea2a781f2734ca00abb44cb6f91ccb580db1acf211b8a84487c43bd5a41cc40ae20191d4c6562469a46e5441ccc4f602b98df5cbeb3accd7d29210b72c60f4551d29a38eb57fbbdbc7a4c2de79bcd2907a2fa7d680dbda29b6caee31b0a5ec397f6febb9b3e9d56c437379e045cd46f6f6cd26fba5d49024cf89151b0187bd047d42388639851fe21b568eddb1b7563edb573679a491b7271565a7dcee5b5acad8c43efa9991f0ad81eb5347aaa5bfc24bb63a0e94b880e3ad598d71446a13a83d3d009c987e3e209da360e8bcf9f291d3eb57b4a375a95d24b3be638fe1036c9a5d8c138006493b53ce8169e1c0abcbb8f6a46f55ad7e2393356c0955790398cd61f87b536696f8033d314b7630f22827a0a28b7a113950803d6a68053933cfda37f02336411d6bd4b1fc504637723eb5a3f12476e72d274ed9ad0fd6a8ec45c68ac6fc655fb44b622dedaf957e026363f3e95cf64b901725a9cf893891357d21ecd411cec3a8f4a40bb8bc2c0e6cd665e6bb6d2cbe67b2f45a9d68d968c106664ba2edcb18c92703dea2bbb7b8b5b9686ea368e55c655ba8a25c296d15df11db453b2ac4798bb374000a9f8d401ae0655c23c2a57e5bd156a02bdd353f50135434e078cc014cda65b68f7bc3b6f677d73f77ba79de485946f8e9be76c52c0dc8144665fbaea71c32ca92780a4640c1518c8c9ef8a2523991ad1bc01bb0473fea4939b8d13599c0bb7170ac00923f8990ef91e86afc5c77aac210dcf25d5bb39057659303dc743ef4bfa94c66b932993c4638cc80e798636a1e58e7726b7285d8a04f0fac6f7ec2cdcf89d9742d5cea16f6dcf0c816e2032c6ee413807055bdc75a05f683a319211acc084f80a04fca7a28e8defe941f8075973aec56b70dcea60fbbc1feddf9b18efdf7ae84cf05e5ab2f2acb1cea549cece3a119a60cc9c7b6f12b866768358921528f09c3b32b6072b8c8c7d68f0b636b3c3307e67bd66f0f27e1c6ea0fcfa7d690ee9ff836a53409792bcd023247b7fa601f2839ea397a62ba26a51c93e876b799e69ed95275db01b6dea08c1ccb5c3233312664b67014a32eff002ced8fa1a01a80fbadddb6a3185202ff003501edd181fd68ddb5d0bdba739c0953982e411b8ce47b50aba562d346c32a10ba003bf7a975c883d33ecb217d16f0d9da4b02ff00305abf2263a98cf990fe471f4acd9dab4f76f713864cbe4293be7dfda83e8f7082e622cc40954c4c3b657cca7f2247d29895b95f2bdfa7bd5073ccbd8bb5888b5ae3cb6da6c32433bb734c6298af5254903e5b1ac78cb71a45bdc7560e619f1d18fafd454bc736928d0def6d4ba98db32a29d8a9db2696f86b526b8b0bab0958126259e3247753822a48e2335a6eaf741b710e5e7b770064943f5da8df015d19b479ad58f9d0671f2d8ff6a19aaaf2ea4d22f4940906dff9dea5e0f985a712cd6c4e16463d4ff50cfef53d88a8f8bcbfc77c30a9630ebba743849006b8451b237f563b0a4cb3bc974ebdb7be80f2cd0307073d48edf5afa01acadcdbc962c80c134792877d9ba8fceb84ebda3c9a1eb53d81c91192509df2bda8f5b6e5c446e5c1244edfa3ea916b5a45bea30ec265c9407e03dc555e21e1eb3e21b116d72a0329051fbad24fd956b2b0de5ce8d34a489878b103d3987c407d2ba6e01f7aa72a65948659f2b0ad874ad4567381ec29312f3b17d915b8b1e0fd5b5461833cdc8a7fdaa3fe4d1f85f93470d8dfc0e6f7cbe4ff007154743b63a57d9358c072af75173103ae5cff00c8a24ebcd1882319e7b98e1007a0207f634e523159321ff20204fb599059f0c695a547d5b9491eb81fe6b9205ef9ae91f6c52b4daedb80ca63823c15ee0935ce4c6401cc08c8d87ad67b9e63f50f8cf2039d867d2a654f2104905f6c8dfad4f059e13c470eca1798720fcb7a9e58e3b58a39376982ae01ecdf8891f5c0a81c0cc9723204b7a640a229262b8e4246e7d0515b222cf83cdc163e2df5d36397a9c0c6c7d979bea685264693195ff52525147a9635735595ad75d8b4f5b868acb4e4445c79b9720731c7a93da96d329676683bdb6a813516e65d5a0b70a561b751cc1fa8cef8f9f4a11c453bdd6a7c883241e55ff029874a6ffa5d4358b825864ee4756c64ff006a5b5b696f677914856750448db2a6739dfe95a16b6c402274265cb4ace1a1b2e520812bf7fc5cbb7e849acd832add296f846e7bd59b1beb28e05b3d42d99d139c2c919dc64f5c55ab2d320b8bd63652b3443cc4b765f43ee4d6758700931becc3a2379b99146540e66c1c607ad7a58e38f9042e48e5f303d33ec7d2b59e30c39030f29db1d287dc6a704398b9cb3ffb0671f5ac6552fd4d0aab2c7899bfbe8ed0729ddcf4407f7f4a09717325e11ceaa00e80579e35690b2b3b67bb75357ac6d9668ca98f273f153caa952e66e53a6da32d2a5bc0646e5e6603be0d194d25fee26490bf2e090093d28de95a242912c92a0c7502aeeaa8069d2f2803c9818abafcf932b6baf4a27326386206c2b11c861943f6ef5b94e6726b59d179472039ef9a383e243a1c665f864e46ca9c035656eb9530493bd0bb79818406eabb7d2a72e08de80e9ccc4d5d583bbee158af8aaaae7aee68d596aac89c8ce3958f4ef49d1cc3c4c93803a55cb69dde5e71f214b5ba7044cb658f51ca243e439fed53f87cbe63b9f4a5bd36f84770a164ce3a9a6312197186041df20d62dd514303d4d903b49818e71d8d66ed0c7182a0649ce39b3cbb74af34817ceca92927014fc44fb553bb95a1612bd9ac40a90b8ebf5157ad46d3c43567987748d455a32a5be1ed4545d237e202b96df7118d2195c29676cf2a8ef4b9a9717eb3a88646ba68626dbc38bcbb7a67ad6e6912c64198e6ccf33aa6bbf683a4e81cd1890dddd0ff00d9848383fee3d07ef5cc789b8e759e28fe4dd48b0da06e65b688617ffc47ab7d6979559d82a2966638000c934f7c21f67535fc8977ad23436fd56dfa3c9f3fe91fad6880b58e65b68889ca4d4b1c23bd76cb8fb2be1b9ed488a09ede41b878e524fe46b976bfa05cf0eea8f693e5a327314b8d9d7fcd496e388ce9c239e60d4880ab480120850b818daa04a9d0ef4bb1266ed08a3a9623ab0a36c556435610d2cd36e9c4db9335e0396b715b2c7e248a8081cc7193da8798ded1dc867b78eea2f0dc7c88ed52d9e92d642395a3fe5c9f0bf5cd6e9180ccad2018077c6c48a2cb7725c686b6863f2c1273890b6ff2a92e42904c475742362c0bcfdff1368b6031442db9880286c47a53168ba735e30e66e45f96e6b31d4b1c098d761464cb5636ac406c51cb675b70011563f8518215f08f31f7ed417599a5d3e2e790155fea1d29e4a0d2bccc67b05878878eab160063b8ae67f6a51c37096d788fe65728476208ebfa566eb5e76271211f2a57e24d5bef10240cfccc5b9b7ec299a2e6760b8902a09f28bfdeacd95b9b8b955033deab42ad2c81146e69cb857407bbba50aa4e77271d05337582b5fe61d482330df0d68cd2b091d365fd2ba25844218b0001b56da66810416cb1a330603ad6f7113da6633f43eb4a54857e6d12b6c0e71226932e6acc23c99a1e0d5b8e4d828a2860608ae25a45cb6d5666b98ac2c65bcb86e58e25e635eb38c32e5a903ed0b5f966d55344b762b0c5869b1f8d8f41f4a927629684d3d0da9b854bfe7fb41f7774fabea72debfc52b6429fc23b0a3fa641cd085604efd052ed840dcca474ef4dfa7a94b70e07439acfd2e5ec2c67a0d5e2bac22f88b9c610ac5a6ccc7af86d93f4ae38177aedfc4a82e2d27790610a367f2ae5f1d85b281fca0c48ef5a42c158c1994586066044ab099a3915ac5cd8f0d31f2157e08515be15fca84fa951e211352ab076836bf78bae661b274f9d3f5aaada461b1cd91d050eb18e35192abbfb5184b65b84099dbd2b35ad16d9995b357ee1e7a95e4d698121f9502fbd4127122053e102e7d7b505d6ac26b2ba77910f84c72a5771429ef08f2a2f4f5a22863e66be9b475d8a18730ecbae5ccb90cfca0f61550ea1ced859093ef420dc3104377ad39f977077a9f673dcdaaf4e89e25f9afe766201e502ab3396dd8927dea30c5ce06493f9d48b148e8eca8c447f1e07c3f3ab8403a11e528bd463e119f49b337771a95c2ab188a246475cd0ae20d55b55d5649f1ca80058d7d00aa7e14dca0ac52367a614d6058de3ee2de4faae3f7a36f3b36c4fd8ad6f37e724ff00ea44ac3b8c83d69d344e0f173c3935d5c9e49ee5331731d907627e74b5656206a307deade47b5e61e2004038ef5d0ef38bf44b3816df12ca857979638f60bf5a674c6b1f2622657aadb7b015500927b3399eab6573a64ed69729c9227a1c823d450de7c0037c1db14dfc6b6eb7be16b16ae24b375081b18f0c8ec7d2939c6fcc7607715aea411913cb9cf4ddcb3a75c4b67a843716f2847460c8e372a6bad70ceb56da969cd8015adffd58c2e307bb0f635c7edc6641ca7707a0ef4e3c1524336a32c1e3c96f712a7f21874e70770c3b82289fc45ad4c8ccb7f689a62fdfacb548970b2a787230ee46e33f4a67e1ab98af38760452e5635f04f39cb6db6ff4ad753b65d6f87eeada75586e2dc6495e81946411ec6857015d3082f6ca5c831b2b807b6460eff95549f120296ab3f526b58decfc2499c3bdaccd0f31183c84e57f51526a4bc93473a0d964048f556d8ff6ab1aa597fd61923625a684a118382ebe6527d0ed8af5cc5f7bd3c1dd59a33f30719fd28ca7222078398bb04e524b885083e0ff003a2c7aa1c9fcd49a6f8d4786b839520153ec695843c9742f162f118c45f94360b6d861f96698746b88aeb4c530373a45e45db0463b5001c7134afc300c25f5856685a29543c6ca5581ee0f5ae61a558c9a67190b0950aaacad0139ecc36fedf9d751b79430006e0ee2866a7c371ea1ac5bea492f85244ca5c633cfca76faf6a924e2450c1721ba311359465960e65c15678dbe873fde8743cf69afdade0522390050c3bb29ce3f2a66e33b4104d3941b78ab20fa8de947525e59ece7418e49797f3ae581b3879de82868ed6e5770f1e3fbd72dfb56d3c47acdbde29ffea22e523d08ae93c3f31bae13b297a911807e871493f6b29cf61a7b1600076cfbed45a4e1a2578f899cd6c2fe7d2efedef6d1823dbbf306f5f515d6b44fb47d2351558af49d3ee319224f85be46b8f77e9d3b7a56a581fc3d6996407b89a585606519ad9633232c6bd5d828fa9c56338dfa53070a6857ba8ebba6bfdd9d6dbef519691fca08073b67af4ed59623cbc99db756b7582d745d2d0616331a91ec837fdab5d214cf7ba773632d2bcc7f22dfdc56dafca46acafbe21b4965cfa1e5c0fdea6d1a3f0f55b619cadbda31dfbfc229d036d323bb2732e3d925d438aa655230d298c1ec31d7fbd2d5cca26b65e41cea870873e65c77f9516d5207b9beb8d4a29d6452f2065271866c8181dfad09b9b7b6b5511c171e33f85966e523cddc0acc7604cd5ac61009b5a4e63b778999c2953e1907a37607dbad6fa84a81a731a05698a818df008dff005a8940568872a90abbe0fc5fe0d6a5449770469bf33677a9fe9304572d1934a8221ac69d6ee331da833c83ae028cfef4b9cf2cd3cb33f59a5321f7c9cff7a3b04ceafae6a2be5482d16da3df6e67207ed9a19a5c114fa8c29705845e2286e5ea7271b55b495ed58a6af96188c77eaba5f065ac0cac65bacbb1df0993b9c7cb1488b2c891b2798dbac9904f427181fa53df166a37b6f7c2c6ca40f1dba95d9010ca7b127b6290ee6569a6e5e62114e157b0aed4365a1285c266466424f3f379c9dc018a33c377cb6d733788c16331f9893b6d4198166545192360055afb94f001e34250f7cd276056520c7b4da76b9f0215d53586bd6315a2b2ab6ccd8c1343d222a7715b4698deac0f124e54dcfa52c36a0c2cf55a6d22d626f69646e37ce00eb4cf61631410ab3af41902ab69567e0464c8a0e4e7daaeb3995b9106d495b6f30aca5db03a84639b9e3caed8e95b5f4264d29d49c311b9a8ed62c848fafad5cd62331e99204383ca7147d292df2313bd42e144e565089187a135b4b01551918e6191562da2567e794ec0f4f5ab17845cf2bdba6e808c01dbad1cb7cb02362be39805818df6ef56a1064b766ce70706b17d6ef03f248a55b01b07d08c8aaf04e627c9dd7b8a608244c3d557c15921057e235bacce3089903dab6e5137c2363d2b2b6b2838031f5aa6479984e9897ace631e39980f6a67d3aecf2839c0a5586ce5c67949fad5fb6334633d31ea6b3f515abf5025232c976b1b0951c061d0d54e69f509f3cc49fea2687c72b4f30126ebe83a517b00cce5548507a7ad27b0d630212baa2c714e97272c662e69194e0201b93ec2ab693c19a85e1135f235adb8dc86f8dfd80fef5d22dec2147f18a73483f11dc8adee1084269d1aa7aaada23683c4afa2e996b6eb1f856d127863954851903e74d369180c3d49a0ba79e82982d4648a0d1617c1272612c1885117f97481f6956293692cee80bc47990fa1ae871aff002f1499f68d2470f0fcb238cf21076eb5b673b2074e71609c4d5b7a990d54f101738d866ac460b76aa309e829b33d4b486ac21aaea8c00245488d83bd2cc3336a96c772da9a957722aba366aed92179d36db39de80dc7334d1c626044ed304c72927f2a648b4a7fe1324300ccb228c736c2abd9da2cda9824600a678a218d86c2b2f51aa2b8c4cdd76a780a22b5a69f7303937511520ec3b7e74d3a1c9e1ca36cd5954cae00047bd4715a982ec4918f213b81d8d2f56af75a09e261dd6070418dc1c3db06029738b62f1f46b9555e6fe59200f5a2e938fbbee7071d285dddc2146527a8e86bd397056612a10d384cfaa48011dc7afad09925795cb31249a25c476ff75d7af21030a25247c8ef5370de832eb1781dc15b58cf9dfd7d87bd300d7557bcf0211d9ac6da25fe17d026bf90301ca9f8e423651fe6bb1f0f69b05b2ac76f1f2a2e373d58fa9a07a5d9c71aac5122a4518c2a8a73d1e1e52062b156e6d4dd9f10f6e2b4c433045c882a2d42d85c5b9c7c4bb8ab78c0ac1adef6d426d331f71dd98aa50804e2b68158b55cbe4e5b8318d86735e022b785a695c2451a96666e800accd87388f86c8ccafaff001143c33a31ba9073ccfe4863cfc4dfe0572a8aea5bebb7bbb972f2ccdcccc7d6a1e22d767e22d65ee9c95854f24084ecabfe4d58b18c3a823e2f7a0ea5be389ea3d3b4634f56f6fc8ffd7d43fa4b10d83d29c2dd796c9f18c05077a51d254f30e61bd34b4a160e5ec00cd4e8b8524c4b5e32f8100713e4697360edc86b9f28da9f38aa5034793d5881fad219601b97a1345bbb1326de24b1d5c88e31bd51394c11bd59898b6e46314a38cc5b30cc328d80345eca66c803f2f5a5a82600e09de8b5a4dca3afca90752a733bb8c4522b94314a8aeac30411495c45c2d369ec6e6cd1e5b53bb01b98ff00e29b2d66c95dc648a3106e30c3af6a6e8b331ad2eb2cd2be57afa9c5cb00339ad79e9f78a381bef08d79a4c4164504bc0bb06f97bd73e6cc6c51c1565d8823041ad00019eae8d725eb95934733c6e1918ab0e8451ee188cb5e34f2138231827e2f5cfad2e873211850394636ef47f4a944423e5e877a1dac517223272e863fc6b09c128394fb566e74a89c738008aa76374b3c1cb9cb0ed466d65e74e5f6ae560eb3cf59beb3c45dd4ada10a3c38c061e8281dd401c608dc74a73bc8b04f901a11269be3162bf95236a307cacd0d2ea703981ad6e4416f358dd7ff004b749c9211f80f66fa528ea10bdb5ecb172c6154e008c92a47a8f634e17b68f1e5186685cfa5a5cdac9367124206c7f12e7fb1ad3f4fd5907db683f50d2a5886f5efcc5db7389472e727b8f5a2569753d84f1dcc47f988e0f30f515b2d92a91818f7e9562dadadee6c2f9a7ba36e620a6342325cd6deff00330400674ed2b518352805ec10163337872af74c0cee3ff3ad0bd1b4b6d1f896ebc38dd2cee2325430efd703e541becf751fbbdd35848d84b9f3283fd74cfaadc49a76b7673bbffd2dc30573839423d3e79a9ce798b9435b141d196ee8b84332484162397986debbfd01a892416f1bc6c32b27991bd8effdeae48e44acc80968d19c311b0f2f4f9ef417589c8d163946ce92185bdb3d28d5f7899b671cc88db294b4986481cd903d890454fa3325a34b173732183c63caa46e09dfdf6fda87e8fa824b6621693f9b1cced8ff0069009fef50de5d4f6ba6adcdb39e686e5e1040ea8c323fbd06df8d8447b4dfb95010b70fea915c878c9de32704ed9069831bedd0f7ae63756b716723412868dc80e467b1ef5b585edd430154b89067f0f31201a17bbf71a6d30272a61ce32549d2428413e110467ba9cfed487ab0c69664ce0a84707d3714d76cad78678e5662e229376eb9e5a55bf612e8f32f754de895be629a8af63013affd9dcff79e0f44273e1c8ebfdffbd26fdaa6a5034d6760ae19e125dd47bf4a3df64d378fc3f71113f0ba37e6bff15cab5e8a5875ebc8e662ceb2b02cc7ae09a6691f3333b51c29945c8ce41cf5e95a729c7cbbd6c794e3dfad60ec480318a6a67425676f6965c14359b5b48e6bd137872bcc39c47f21d2a5e01b8bad57ed0b4b37333cde133c9ca4ecb842761dab4e01b8b79eeaef45bd412dbde47cc236270597f6a37f66b78d371e7dd2ded60b6b78e198f244bb9c0c6ec773596bdcd45ee740e20f2ea17edd0259841f5602af238b58ef2eb19290141f5ffe2867149c0d65f38296c1b3ec181fed567527e6d12edd18e1914823e44d3cc3f6c412fe6671c093adcf8dcac629b7424f53d3fe2a9dd0e4b965cf338386c1cefe9fdaa43a848b6505bbb7888170a7382a48c8dfd8ef555d0a2afae37ac8e3336f1c097b4ff0656904b17c0bcdcdcddc6e6ade8b6eb25ccd70e3fd30028f4277a1f063c2d89efbfad15b102ded4994f278d26d9db3d855dce160d572f369710f0c5db2f5bcd57947bac69fe4d4fc37661b51b62cbe732f88991d977c9f6f7aaf7e247e1fd0a154cb4de3cc00ee5a4c0fda9ce0e1ff00e0ad15da4acf88fc39036db30ec3b1068f530006667dc37319cff8a6fdeef59ba6424287f841f4a136968d77211ce5028e69188f857d7deb17b2b3de4a4f5e73bfbe6aec48d069d182395ee3ce7d7907c3f9ee696b8f24cd1d351ee32a4d2e0c6ee8b045e1c710c27f51f727d6a58c48e304b37b6735ac684ef8ab56e5d2405579bdab3dde7afd36956b1f113d14679802a77d8923a51ab2b08d64122fcb7a8a2864957cc03127b7ad1b86110458e871b9a4acb0986b1f03026923f22722607ad4b651067f5ef50f2f33e7f4a29636e790b6304d263e6d8128c4224b36708137362b1c47cc9a4cacbd421abd691617988c1aa1c49fccd22e04672ca876ad7a46d499a5b7da27325cd5810cf1da7df6295542b0c80d861e871dea200568c01ae0799b4e876e0482f65f1e5795800cfbb63a67bedda86670d8a3372b1fdd212b0a9f2152c0e087e6ce4fd318a1132f2cb8a6d260ea81ce614d2e485ff96e704741eb44c784873814b0ac558329c11deafc176f2e1704bfb502da49390663dd560e44346f15130a37f4ac431cf7326541e5f9569636524f200fe5c9fad365ad8476d00c000d24d81c0ee2e2bcc19169c22e52c77eb814574d802b8663b7a56cca01e6c649a9ec30e490296e4bf30c14010a20ed803e55b341e229c8cd6d6f113d455d4b718248dbf6a36c2d299c194acadcf30da8edae140ce322a900919049dfd3b579af420d8e2894d62bee4b3168c50b2e0ee37a46fb51253871d8287e591432e7aa9a2e356c020fe60d2971deb314ba61b40e19e5236ef8f5ad217295c4b69a866b401397c56bbf363bfe557a2840acae176a9d42ed83d680ee4cf63a5d2a275240aad6c571ba9c83549bca6ae10455795684a63575781913d1bd15d3255e70add8ed40d5b0d8ab70c8558329dc575a991895a9f70c474b78fc39d640719a3904bb52543ac1312820f30eb4d3a706165148cc4f38e6deb03555328cb44754a7196876060cb8db35b15f4d985568a41cbf2ab2a627232d8ac823072263b0c1914f34fe091160b7a1ef4ad7bac491ca63954a30ea1860d37cb0f78c83ea284ea9a541aa4623b85c32e795c6cca7fc56969f58d902c3c418553e2739bdd31757d6cdccbb45ca323bb1a6dd3ed521812181151076030050fb6d3dedee5a271e753838a3d0a08d00cd3fabd41650b9e04908abc884ac6358f940df1de9a74b9d148f96293e29794d18d3ae70c37a8d1ea023622f7d7b84710411915eaad672f8916e6ac135e945bbc0331cae0e20ed5140e593a7626b9371cf15c9a8dd36936537fd142409594ffaafe9f214f3f693aa3d870ccbe0b9595dd5548f7ebfa5715886052cd81c89e8bd234c2cf9b7896a085a4e83233476cc14208ea286e9d2f87b7ad1bb758e5dd763e9599a863d4f516b6383d43fa6e1807c608fd688cb7039719db342ac098a225b6c0ade59895565390727e544adb6a098ce9b9e09e2dba0b6d145fd4e0e2946490094741bef45f8b6ec308077e70296a7973275fa53406fe6636b176be210b89b04006ac452948b989eb409ee666be11a938c0c8f5abed26c3cc0636c555eac00226042d68dcee58d19b623b52dc371e1008a727d68b41a8c5689991b7ea00eb485d593d43574339c28cc6ab042797237346d258e15e6738a51b6e22b78ecd6546025909023638c63de825e714dddc4dfcb063519c8ef56aaa65e2335fa6df636ddb88e1ae716dae9b6e43392cdb08d4f99bfe2b965f5fcba96a12ddcb8f1256c9c76ab567a54fac6a0223391238f8df2d50dde9b2e9d792dacc019226e53cbd2b45005135b4da3f65f6f99ac4b81bd11b2995072bf41b835402b63a5795981dc9a1b8dc26ea6146311d748bb5322f9b1ef4c76d36261e6c035cf74dba68dc2f3797b535db4af246b273f4a4371a5b1e223add3f39fb8cf7219e2e6519f5a112492239c02b452c64668579b1871b6f55ee59565c903f2a66d191b8198d51dac56069fcc79a40707daa159ec12fe28248c3a4c7919738ce68bcf35b4b132f86338d8d2aeaf6fe6e641b8dd71d41a5d47b760627334e8517028dc4d75ab4fe1d7f3daaf443e52dd48a5d59c063ce0939d8533ea57e9acc10ddb42e2648bc29703e261b0352f0ef092dd78ff00c4d4c5e11c3463ab0201cfb75af4b59de323a9e7d94e9c95b3b12af09dac37da87893ced02db9f132a3a74037f5c9fcaba4cf19b89424b166342aea719cb67d3daa3b2d174ed3ed05bdadb2ac7b139dc9f99a926bb8954aac8a5f380a4f534c818110b2df71b226ba925c4d6e6280373bb0cb0f4ef4b9c4398f5168172229d158af62cbb03f3a623a9c6bf760e0837085b3d862977882613dcd9cc83392c87e60d5eb3f28adaa710144520e20b094f9639e4688e3a1ce463f5a75d08e9d1c574b3950808e459319240c1c5246b1208bc30bb34174245c7a123fc51992512c3a8440828632a9ed9cb5575230c0c2e8c6fad960fe24943eac19181290f29c1ce37271f956da3b59db4735c5d217318e68d71b16342e0f34881b0dce40f30c9ab8a84492c4148c1f8476a4c9c9ccd754c2859369f2b25e788fb33b60fbe7623f5a50bf2b1c5751e3731903e869ae30cb711920e01047bef4a5aeb2c77f34590325bf7a253dc5b543906740fb1a9b305d47be0468dfa914abf6896e2df8baf8730c33f301f3a60fb1cfe5dd4f1f3ab73407a74d9aa8fda944138b24e9fcc855bebd29ea8e2c331f50383118ffa783b64f4ad7bfd2b320e4f36363d2b5c90460f514dccb220db2be7d3efedeee2f8a170d8f5f514f1f6697b15d7da2dd5dc51982396de46099f87256b9e5377d9bcc60e239e51d56d4e3ffd34aca419389a8b9ce275ed6a35bcbfd4ad48e617166cb81dfa8a1fa65d1bee01b79b98167b640dee402a7f6ab893736b31cacbca6485c1fa3509d153c2e1ebbb4e9f779e7503d312923f46ad161fb78825e1e71ecbaed93b1e9e86ad2bac8ca09e5183d466a19d409e6cb15209206339de8b47c3ba8cb0457114693c6514e626ce063b8f5158dd19ba718134b6f378681798e7a7ccf4a2f7f2aa5e416b2aaf360b1e41b2919e95169d6b7165a8c39b7e79648898157a86df048ff3d6b3e0993544bab93e15bc6ac1ddce08d8e76ebdea6c3c095a768724fd4b33db35e59e9eab3a2ad8c0a4efbfae051e8b5892ff004b96fdd7c382d940b818eae7a72fae7dfa66957546b4fbc7358ef0f26100076f2807f5abf1dcfdcb8010b1e75b8d4c07523aaa28241a62b507b993631cf1e4c528e11737afcc7910167761be067b55fe689ee0bf864260055cf40062ad6a93c37f7f757166a1a39251ba2ec15765f9557303432344d82cadcbb1c826b32e724cf5de93a75c6f3dc91a4e60154728f402a6b7723cb14419bfa88aaf8e5383d6ac413ac2f90588ee06d49b753d28501788c3a6d9b921d8e075c5136b7f2e3141acb544d957b7524d1c4b8595411821a95c0c60f732ed0e1f244c5bda2f561bd17b5b7023f366aa45701502e06ddead457f08520b0c8ab54a8915b59d84b448863ce334a3c4f71345178b0b9f0c9c301dbe74766bc79dbc38c64568bc3b05f232dd4aeeafd546d8a235a0900750496d7a73bad3cce6a72cc58e064f6ac24524d2a451a733b9c01eb5d5e0e04d0e681ffe97940d83166249fce81dd7d995d472992c2f524009f24837c7ce98504f388cafac696ccae71fde73a752398160707b552bb551282ad919eb8a61d5b87353d19c8bbb390276910654fd7b52edc904ed4c567981d4b23d7953992595a1ba9f93a28ea6996c34c860dd53e64f5355344b6c44ac46ec726985620a36a4b55736481d4cb63999b3854480633459c9c05eb546d7690628aac3cc73495449cc13604812132b63d2aeda5b855000dbf7af61621b7a5432dfc7102036f56da14e4c1939ea1c8dd1177201ac497cabb291b52d1d48b7e2dfe7504fa83fe16145f7d470254579ee304ba80627ce2aabde03de96defe50c72d509d499b2398d57dc27c430ae1d9f50001c1a48d72e649b547e720818087da884d7db63340f50944b32b03be314c5392798fe97e0f3304725cbf8718566c67760bfbd5dd1e35935486192511248c51d88071ff003ef42546dbe7e55206c74a6489b0ae48e615bc531ce54e08fc241ceddbeb54dc6455ab7cdd5a9e76e564188b6d988eabf3ef9f6aaedd282460cd157deb28cc30d9a920973d6b332e56a98731bfb5180dc2663b7b36661656e84539e8170af61e116e6319c520097cb9e614d9c24b8d3e49c8219a4c03d8802b3f5b5fed1265f5372ba6236c5276cd598dbfda0d0b49179c28277abb1c8e806307e75e71d264b730947cdcca41c1fdeb69391ddc38efb1151dbdc2bfe1c30acb2f98b6697070711723983aef4e4998cb09e5940ee366a1b7027b47093272e7a1ec7eb4c6d6ee5cb65946399bd87ad53bb84c9672a0995e363ca4af55f43834ed4588cb752a587dc151cf9237a2761380dd77a19268f3adb34f69234a11799a323cd8f5155ad2f98b0f36e37a63db2b871285c753a269b739db357a5ba11a124f4a54d37521e1f3907a76f5a0fc5fc61f74856d60e6cb8cb391fa0adca6d05044c55ee5981297da0eae9791aa4728f2c839475e6fa526c1f76970ae9cae7b8daa0b9bd92f1ce49e4ce403eb562d2ddb69083ed4473c64f13d668e9f66ac42115844378d89ee33daae5a2f872806aa4227694630918fccd15893a6db819cd66d8c7c987773d1841a5e48464f6aaef3f2463122efb119e95567b824ee6b598452abbbcfc8b144091f8bdb03bef5ca4b1e20c2803262cf135c73111a838e7ce7e5411e776b88b6f2903eb443530647551befcdeb58b6b269b00213ca096dbb56c55b5506664eaf4cd6dfb524fa3e8f79acdf18ec620f301d5982a81ea4d5abce1ebdd3642259e19a5ce3921cb636f5c6f47387343fbe59bcb1dc496f321f2a2f47534cf0e9d70215b43033f8272ac475f91a90770e049fd1d14b61ce71df888d168d776961f7d96d7c58e40396427fd327be3dfdea25b69260cc0671fad74f5599e0961b895487f2b2a8182076c5037d223329681480c7653da817211caf334b45abaeb057681127c23cfcaca4e0ee051bfe182f74b053ac27236df1f3ab375a718db9cc457d4e2ad69eaf6a541180c3bf714a6e258031fbb501d4327714795e0ba05095746d88ea28b6b56d15c40b7b193e236edb75f5dfd6aeeada522dc78eabb36f5098c1b33030c67a60d13dedbf13259d2cdb62f701d82aade2b3ee003b541770f8372e9d06723e544e3b55877cefdf3daa1d45399239bafe12454ada09c421c17e2538cd3268d79cc810ee46c452d0d8d5eb09fc2906fde87726e587b2b165788fda64bcb2805be944eea24940246323ad2c5adce0a3834d16ae2e21c1f4aed3bef5da6794d5566b6dd054b6386203551bcd22591094218f6de8cdd5b4993cb402ee6bab5720b91e95470887e4388c69ddd88dad01da497b63acac76f1b3ca64198c7e31e94c8f7f77a5f1097b6335dc175073bc1819880ee3fedf4a55b89a47be8a7695d0f360ba1c11f5a9753d4122bb8e5b6b89b0a9caacc7cc403dcfb8ad8d05836913bd6282db1c8f18319af38e91641656845c38015ae3040cf7c2f5cd7ae35189788160f0bc4478c207392573b9c0ecd9a428af7c0d445dc2c4e1b9bf9a33bfa5128b56b917ff007b918962e645f404f715a2cd31574e8a78876e2fa51a469c1643cf13c91b0f501b22b2972d369eb2742b39231ee28599e468532be4762ca47af7ab16f2111850411df1dabaa6f9406b2b1edf13dadc7cf1f301bb0c1fceac5bccad6eb203806300827a9e87e752ead1abe99e32800f2f97142a0c358c7d760c0e3a75a2eaff001062de97c96137d37c31751493372c519cb9c64fc85584b81717d24ca397c47240cf4a1e08e618ce3353db8f0e5e7dcd219e26be39ccbf24e59e342c4f87923db2692b89bffef6ca0752db7d69b064b86f5ff349bc52e7f8b3b03bf338fd68d41f918bea4751e3ec8d82eb0554820c2e0e3b6e2a2fb5c81938aa2973947b7507dbad69f63d91aca9ff00f8527ee2af7db0a83abd8e7bdbeff9d3b51fdd98da91c19ce647e7403d36151107a0233819a9361b63a76ac3ae46e7a9cd3599930272d34fd9e909c433061b1b47fd194d2cf4a62e09575d7ce51c07b5986707fa73fdab36bfc84d2539613ad5d620d6ad3070ad24c98ebdff00e6abda2844d6131b7de1cfe7c86a7d5095d42ce41d3c763f98535ab298a6bd03712b9c8fff000ffc5689fc2087e739658e9c2ff8b96d486f084ac5f07a28c9a6b325b5a711c7a75ba9b7262578c2ee8f8ce411eb8e84505d3e0bcd3f8b3ef8c83c19ae3c1627b8719abfab3f83c7964c06fe105f5c6436f58c7b9aec720087796117134d128128555571d4281ccbfb9a0f696cb39e5970ecce03e77d8939adf4cf1ae613a8195b96599e3f0c9f8428c281fad4b6c1a291c91b96e618f6a8b3c4029c6600d69963bebd36e02aa5c3054c630091818fa51ad534e7b2e068ade49639251233c8063f96ed8db3ebb75a097d6d796b7af1dec64c9f78490b750e362483de9deeed63bc86eed6400acec4818e94ca1c77166113b8674f93ee779712ed15cdab08c7aef8cd0a99258d3c5646f0c1e42fd416a7dbb8224b63a5c285145a845e5ecb9aab059b456b676f0a73c6a4f3938d994fc5bfad256a0631ed36b2cd3b6e53fe225249cc763ef5b89076344a2d163bfb89394188cb372c6c46307738c7a578f086bf1f3e6cb210672b203cdf2f5a51abc4f53a6f55aec1c9c1946294ab821b977eb44e1d57c2971cc58038e6e99f7aafff00a7b534c78f0883201c3b6e3e952ae853f311e38c7a8434ad9edf4c63ff00a9a5fb30baea608cf374ea01a824d4390f3a3647ceb4b6d0086cbb4847718c510834cb5570af1793b8cd24c6b07bcc17bf4275ccb5a15d2dc44ce3e2e6e94d16ae18a8efde81a25bc6d10b789225e8428c518b5dd86e3e756e14e04f2bea360b2d2c230593ff00d318f3bf364e6b6924558dc1c606c48ee2aac1756f01c4b27287e848c8cd4a973148a5ade4132938273b03fdab66b71b073ccc6c1c994659c346e85799429f23ae55a9638878334dd72d0cd05a25a5d84e65921c00dff72f7a6a9675333212090a036d8c0ce2a8982471cb004ca9cb1df18cfad0955b77c4e61d6d29cce7561a74f6f2780ebe75f2e075fca8a08fcbd0e7de8f5f2fde5268d3c2336083294cb75c641a0bc5b2a585859aade1b595c83ce1001ca3018b0ee4fa548d09b771cf0214eb082011dcb169122e1b2339aba67400f2d56d02d5750b99615996e1123e6130f2f3fc85177e1b56b811896441d49c83914b269dc212070217df52d826089ae3ca77da83cf21321df63d053d4fc216532011bcd1636243673f9d03d43816f932f6574930ec92795bf3e942b28727a855758b5ce7deb52c4d62fadaf74c93c1beb696163d091907e47bd5092ec1d81c7d6842a3997dd2ccaeb8c9354659800706aadcdf88f6ce49e82a83dc34c7123614f65a72ba0f66315233f325b8bd07214926a9788de2063bfb55ebc82d12d229209d1dfa3a8ce7f5a1f919a751401c464285ea5b53cd117f106c40e4df27dff4af1c918155e075dd49dea753bd558623d53ee1dcbb693c2b64f1bc45a62e0a396d917beddf3b54930657f3a042c3980036c1f4aa61c2d58370f3451444e7c3c85f9139c7e7436e63f536c1812393a5519d6ae392320ed55e4c11529c406a70c2540c46d4fba5ca60d361846dca833eb9eb48a8b1acebe283c99df14d56d33054e539207e9da85ad5dca04caac9048318eda7cefb0dfa8a2b0cc1c60ed4b96f39db201a2d05c3728ec3debcf5d5cbc3b6e397073bd5a171cac0ee3df142edee320026ae82187ad66b021b304eb997ee2ee386268914f3c982cec3722a87dc44b0175c86cf97fdd5b24dcacbe45620ec48cfd2a691de750be13a491b731c7c3814e2b0b4ee63d788aedd9c083219e7b0939949400e245ec6876a3600dc1bfb44e5b794e580df95a99ee2c63d40a5d5b3ab96f8d1b6c9aa1703c0b4b8b362a50ecd8190bdc1fa53688ea307f182721871dcafa6c656327b0e9ef42b88b4a4d4223149b60e52403a1abb6f7aa918456e83ad580cb72be1b1c06dc1f43eb4c50718c1e62eacc8fb84e5d73653585c18261861b823a11562dee1f2aa58e074147b8be158a38c32ff00303609c52ec0e038ce315a24ee5e67b1d1dbef5218c3b69213b30abfce046c57ad0db475c038a20a39e3207d6b2ec1869571cca32c84938e9ef426f676795b9ba03471a039381b501d423e49ce06036f4d69f04c72a6060e9321c32f5145f4b55f1079d976cf32f5cd0890e0fcaa7b7ba784e637e5a79812bc4a56caae49f33a7707db5809d59a4e56391c87a67b1a60b8fe549e1233067186653ba8f4ae5561c44f0b0122fd576a74d335f8a440cb265bfdd52b76c5c1991acd33b586cce730f2694ab0acc9331643d0d6d3451cde1b08f9268f6c8e87e951dbeb810e254054fa54a2f51d9e5b6e59083f09ea3e9454746e8ccd61683f2120bab632be4280ff008b23afd2a91b02461946df090288beb6b8e5b9b70cca7183e56acff15d3a541e2a32107d2a59118e7308965ca3f181e6b50d1784ff0043e9515b70fadd38f118a463a91d4fcaaf34f1c87c84104ed57a02028c76accd4b2676f997bb59654b85ee4d069f610c2224b48881dca839ad351e15d275480116be1282378f0a48a9518e68ae9c39d6457dd7d0d7538760b31bf536ab6f0c7339f6b9f66324103dce8f3b4fc9b9824f88fb03dfeb489caf0c851d591d4e195860835f4505006dda9478db83e0d62dfefb6c0457d1a90303697d8d3cf4e17226f7a6fae3ab8af50720f9fa88da4dc2b47861938a6ed22e03e13615ceeca792d6e7c3903215382ac3753e869df47bdb5665571cad8f2b0acfaff6edfe0cd6f52a7e3b9464186af8bc49ce074a0f75736d3c6cb3c632075a622567b6df704529ea76dc9330fc3d7347d4128370e44c8d1e18e0f04457d5923420c4762687dea3cba6c570570b0bf8591f8bb8fca896a56c395a457c807a569ab5cdac7c2761696adcf33cad3dc730f85ba01f95174072d9136bd41c0d2018cf3fea02494642f2e4f5ab4b292d9c6c5761d87caa8a657cfd0839daae4449007be6b6584f3ea3063159189f49c9c968d8e71efd2b1116e70571824647a543a448ab0cf0ba822400e4fb5791cf8cc8bb6fdea13f28b6ad7f6da1cd442b68ff00cb3f0a60ff007a0d62e058127a2b114c09078bc3d3b1c1c328fdc1fed4b3679fbb383d89cd31abff00f3111f4b38733c0609ec39ab75739eff0011af215f186572011b56e1473e17214b6d9ace3d4daf32684969177fa525f131cea8fe9ccdfbd3c471f2b8cf6a43e223cda9363dcfea698d37715d4f623dfd8fafff009bf37a40dfab0ab9f6c0ca754b0404f38809c7a8cd45f64698d41cfa403f56adfed7d09d6ed88e86dbafc8d3959fdc98ba8e019cdd9bceb9ce476f5add979b2b8396df1e95ae18673df72de82ace9d6977a95c24161099e620f941c96c6f4d8332088deda4f0df045ac175756cd732c8fcbe23af3b67d40e82982c2fec757d2dae74f28c8c0a8c260a9c743e943f8e34d1a870e4c57fd4b63e2afd3ad2e7d9aea9e1ddcfa5c8072cbfcd438ee3622b317b9a63831ef562469f6d707e21e1bedea531fb8a958892790fa9561f5159bf4f13418d8afc312923fed723f6354eda6ca40e724b5b839f746c1ad15e6b81738b0c077d6fcd6f0cc18868aee3183d3e3ff9aa3afd89b9e2985d32bc902b92474018feb476ed1521b856190b2123e7cca4557b9b665bc4919ca48b9e539d88ee31deb218731e0fc4f69d6a6df86608dd795d66763dfa93be7eb54a09246bf705570a0804fe946e352748623fa83023a11ed40d486be0e3ab007db7154b3c4aab727307451dfdc711c96f7ace274e666e6391c98e83d8ed4dd1c812eae149241319f965450fb842389cdc14214db18cbe3230083f9e0d5e88f2cef35c848c49120e52e188c7fe0a607460cccdc1852f91d63324a430d8f4231b7eb5bdc32c603f29f2e08206c73da8743384d5648d8e7feb5d37edcc80e3f4a9c5cf2cff00708e101010a858e727ae3f2ce2800ce90ddbb35ddaf942f2dd0e523b8029a09c274de97feedcba8599ddf370c7e408cff6a685b7761cd8c67a7ca81603930b5c1135946ec5dfccc4f71588ac579bcabdfbd16fba12d5660b00065a94f67718f8bb68ee069605897246f416e48590ed4cfaa44426146e2952f59a3970c0f29fc5e86b3f56983b446297ddcc8967632f2a9c1f7a396121254ee39bb66969db92406982c26f22b727285dbaf5a5871880d58f31a6c10fde14b229041d8f7ab13b45117b73e56719cf2800d51b4959de3656c11dcd49a8451de81cd919fc63b0adfa8fed10064cc56ef9ea52ba9914f22345e289390077c02719fad06bcd434f96d248ee2e9a1e7df9524e7dfe5daa8eaff789afaeeded83b056c918180a3be7b555b431d9c514e915b6790334b712105df7c8c0cf946d54d358fb8a600fef25c023742d140f67a5c52433b2c2a44c1b779140f61d41e943789386e5d5758b3d64ca56031aa3a11e688f675ed9f63b5088f5768753d41f55d5a55bb9104510d3943263b6ff00daacb71369fc3c2d2def50ddcb392f205979d6dd7381d3a9ea715bb5fb42a152ff009315c5bee6f8cdc25a447a423a23b380dcbce7af2f5dfde992dce58b9eac7340349d523d4d0b42e9c8e4b46aa8558a838e623d3e74c100e9ed59b7e2b515a9cf398f53b998bb42498c6f5e6c5441b0b5a9937a42cb7698e2ae6626851d705411e84527f1af0fd8be8773751db4514f100cb222e0e73df1d69bbc5c9a19c51ca786aff9864782703df22a8b606ea5c82270fb9d35cf99a4ce36d875aac6c641b063b7b51db801902fd4541ca026c36a22ded8965b9d460181e2b2669d63624e69ab4dd260e6e511290bdf1dea85bd9a7389987330f87e74dda259ec41ee6837de4e00327dd63d99b270cda3c3cf2448763f847a573cd4ecdb4fbe9203d01f29f6aecf75cb05a01b6715cc389ed8493bb803989ce68eadb4807ccbd1aa28dcf517448735b2ca436735599994e1b6af789ef4d6cccd55d479065d79bc42599b2c7a9351b36d5543efd68c683a735fdd2bc8b9850ee0fe23e955601064cb9d4e47336b7e1bbebcb35b98cc6a1fe15638247ad5fb7d26eed630ae41e5e9cb9a74b286358c2e324562eed94ef8acbbb53663f88a8b46e8b1048e0fb8ef46aca5cece41cd50bab46462f1e323a8ad2dee1c30e9f5a55c0b17221f398c5138c81b512b7973b67e8697e19c9c6411ee2895b484819627dab32dae41854005832e41ce7146adaf21966224e6891874f5a5d89db9d467009c13e9455da151e4625d0121855b4aed5b13c6229720698842c1ad48b6cffc9639619d8547ad3c7e24aa8be674e666076aadcd2c56fe2c7b16ea7a922b02417904be2fc422c000f5de9daafca94eb3d413201cc54794c17ad160e08056af0d522b401d9d472f5c9e94378c49d16ca0ba41e287731ac836ed9c1f4a409352b9bb9733484fa28e829ed3e91d86e3c4aad6acdfc46cd76fbf8b5cf8825290a0d81fc47d7154217b58c6082d9f5143637e600d585c900e3f4a68a606099eaf4b52a205078876dee226039467fb51cd3e212293cb49b6f3782f92c71dc0a64d37578d00e5c907b9a4acaf0c0f891a9ac85f8c2e2c899c0181ef4bbad69d2a28664ebd08de988df065ca1c7a554bdb9fbcdb2c2c073ab160c0f5cf6ab0dbdac52bb5d586673aba916291958ee3b5507bb909f29c0ab1ad00bab5c0f47343cd6d568368332b55aa7672071095b5f730c12011452db539e170c24247a6696941ed56a39997626a9652a631a7d6b636d91e6d388b3e577eddcd1287558df063979587706b9eadc2f76ab105e188e533f9ed59f668f272a63eb621ea74b8f896e603fcd904a83af381d3e75646bfa76aafce20059060f86f95a46b29a4bb81fc44e5460454fa1ac3a6c8f6892f3492798e7da865ed44652d93fee257d952f2a306385bcb99811b0cf41472ddb22966c9f2d9345e3bb1b0158c1f6b126625cc5ce61a8482314634d92308c398063da9622ba1d8fcead4573cc4669ca35211b745ca131aa3c72f5eb5a16f126f0d94103cc285c379205501f2076357e394ca038eb91b0adaab52b60c08123139f7da270e1e76d6ad63000dae00efbecdfe680691399822e7cc3d2ba4f12c71cba74f0c98e4997908fdeb9169f37dd6ed932461b1bfb523a800938f13dafa3dcda8d21adbb5ebfb4ea9a6bacb6a146e48aa1a95a78c597a362a1d0eed4b050d907dfa513d5233e119141ce3a8a6411655999a41aafc7dce7fabe9d730a1f2938f4a0e5255b5649213e149f0b15ef4e87555490c7791f3201d7193525ceaba6df5ac1a55a46b6a5c10b3b30cc4fe9f2354d304072add4d9b35367b5edb57907cc418dec872a4b66ee4237c2f8cb1e87e95e44019397720631eb56af74ff0a468caf2cb1b9561ee2a0823677014ee3a56ceedc261ae0cb96ec6352dbae4e067bd4b11ccad8eb9c9a33a4c65b4efbbf870bb4685cb38c9396df1efbd56bfb316f78c6142aac012bfd39fed5641f2101a97ca3298c7600b69696d8ffea2194f4ea40dbf6a5386d9c595dcc461525e53f514d314862bed293a2b279b3e8d9a1d15bf2683a9165fff007dc7d051b567e02677a79c318be15965ebb75a9e3621f71906b611399142c6c41dc1c56201994736d8df7ef484dc1c997c0f210c086600818fc3eb5cef585692fa4907c2b81d7bef5d25626fb83ddb6cb92aa076c0cd732bdcdc6a4e17af363069ad3f9313bcfc84ea1f64f172cb732118c222fee6a2fb5fe6fe2b03153cbe085071b677a29f65f6f882e5f1f1385fc97fe6867da6ebf2c9a9c9a3f848d0a3248188f32b63a53357364c6d4fe314f53d15f87ef6c6e25b982f239d167e58fe1201f84d45ab6ad01d78ea5a1c0da62e364538e5246f8f9d57b2d3afb57ba1636914b3b9c9e51f0afd7b0ae81a37d9540a9e26b53f8ec5768a2380a7e7de9ac8032667ed2c7886a6823b885e090656452a7e46b8adb4b2683c4caeac41b5b9e539eeb9c7ed5db15b20106b96fda3695f73d5fef912e23ba5e638feb1d6b3870638675c9a24934a9a143920caa3e4c398501b462f0db77f34b1ff00fa4a18518d0ee45de8d67724e7c682290fe583416dd7c17922381e05ca1fd4ad3d4b654882b47cb324910389b9bcdcac1bf4ff008a87524413daccd931a3166c0cf6a9a7cc7763fa1d406fd47ef8aa8d75e3f0e34c7678d0a38f4607159b68c318c29c8966ca271a32c4762b91f4cd038473a4120e8621bfc8918a39a5ddfdf6d245e5f328c363e541f4f1e368f28c02d0b38c81d31bd05ba1273cc24ebcccd21dc82a41f98154b5f9beefa65bdd73147f20523d9b247caadc6de2408fdde38f1f4c8fed41f889849a4da24aa4af8b222c99dc60f7f6c5323a946389aea518d34db5ec72892396e04a181c96f53fad1b9628e4ba8e6e525c6e840d8fa6694bf98fc3b16558ac572c0311b10476a37a16a22e34d1048de787cb8cf51da961c1c49109dd9786dd65898878583820fa75a6a86f39ed2390f98328208a5848c18c47ca0205c280738157386ae8f872d84bbbdbb728cf707a1a86389706187bdb61d640a7d0d792fca9ca6fedeb589a35917040201db6aaf273a6dc9918d88a59998185520cb3732adc285f0c8c9de826a165804e33cd574dfba00922671deaacda9c1babb01f5a56e28e3e51aaf70ea2ddd45c87046f4434db867810f7037ac5fcd672c64a4a09f4ef55f4b9d4732a0d94f7acd65da3023370dd5e711c2ccb2c1cdb6d8356bef7222c71f86196527c3e51b8a176739687949e9bd12c4af6909881e65e871d3d4d6b695895056615830798a5ae6ad086ba10f99a6c73b0180483d7f2a49d42fa77c2091b957200cec33d69cb59d1e41742dff97196567e666e83aefe949f7b6e20721ca923a729c83410ce5c971cc25580388bf70d3abf34459720a9236ebd6a392540c0e017fea356ae89638036aa5e0664e76d875ad24208e61a74bfb31b66163757f2b12d349e1a7a055ff935d0e060294381edcda6810a36c5bcdf9d33ab63a52acd9e44b01cc2918e7dab631e0ef50d9b06156cae686c81866114912abc7bed55afacd6f6c66b5933c932156c75c5102b5e09405af061377113538474880e7eee5cff00fc4626a57d0b4e231f728703b72d19957cc7e75195a7028c750462fdc70d5bb906de348b1e82a5b5d2eeec8030a2cb8e8338268cee3ad6ead8343342139919311757e318a29dad67b696de58f66593a8a53d4f5682e14f2396cfaed8aea1c47c25a7f142235c3c905c44a5639a3c6467d47715c5b5dd2efb87f5396c2f930e87cae079645ecc3da8e9a6563bb32b229887cfa5556057a1daa369cf6ac2bbcac11464938029c54225d5cacb7656cf7970b129c0fc4c7b0a73b09459dbf871f29f0cf2f32f703bd01d3adc5ac3fef3f19cd5f8a5020273deb3b52dbce0750fee6637da5fc6d0960de60338ada4d40ba119033dc76a574bbe57e5524646f8ad9b55b7808124aa798e31d48359cf53b7025d5a1899cb74e942eeae23b421e5939398e01aa2baeb2df9b79147844f91bbd5abbb64bd81a294ecdb83e86aeb4fb646fe8c30b612b4b9638070c3b1a336ccc082a322946c2da5b28844d3788a0f94f7146eca6746196c52da8a87388d2b068c719f3024f4ed57e09b0c197b7ad078e65236eb576de407626b21815391e24b0ccb9f786b76dd03156e9ec7ad41770ac4f2b5b0e641d77e80ff00f35230e76e690348aaa3e13823fcd69705cc32db4000caf322c877e60361edbd355306186ff1166188bbc5b6e97160b05fabf2b3168f97b3818fda94e0d0adce0f87bd1192db5b5b8f1f5c911e5998f22acaafca076c0e82aedba8c818ad62cf42ecdd997afac89169da040b32b05dbd0d3c69ba0d9cb0ac6f6c8ca76dd684e970169416c6fd053d6976fca8a48e82ada3636b92d07a9d4381dc40e31e048e3b69750d254896252f2423a381d71e84524e816b75a9c9cf0c0c2253832b3617e43d4d77a953390771df349d259269ba8496c88ab113cc800d8035a160503a9d4fa85c1369301ff0a9605cf39618dc11493c4179a9dade342ce624fc3c9b647cebaecc9e2439c0dbad2871468e97b6e41003aeeac3f6a1ad695b03891faa76e099cb5cb339672493d49ac2a64d589a12b3321fc2715e0b815a1b863890b5127266a000b5a9addcd464e6a04bb60713c4edd68a68f64d39e771951d07ad5086d5a5c31d97f7a6dd0ecd56dd300ed4bea6d08904af8684638392050076aad0d9430ea0d78c5b9d8631e945cc3e403150cb188c0f2963ed584b69e71e656c25a4b0dc8d8038156e2bc19001cd0676553d4fd2b097231b3003e7433486e62e44668ef0061bee6ae4177920e4d2b4572837e6cd1182e8014a3d257a9c398db69779237a2b04dcac1d0ee2936dafb948dfa517b6d5101049028f45c54e0c86a8cb3c47719b70c4649cfd2b935d49ff00e63331db121ae99acddc53d93807246e0e6b993c4269de453d589a7d5b2e499e97d04edce635e897417948ce47eb4f28527b401b1e615cdf487f09d41c8036a7ed2a559adfc327040d851b48d86292bea95e1b708afade9ef148e797627ad0fd2f4db7d46e12dae948863e6791d0e18e7655fce9bef8f859f1d79a1f5ee2a84dc222596378a50a8ec24073575a08b32a3896af583d9dacd83e0c5ee33b37fbddabda42e56e10460ae4f33038ebeb8a082d6eac6ec5b4a804a3b039a72e227beb4d1ed6de451f7859599484c607cbb66972f9b9e68d880a412ce4f5e9b8cd6bd7f8ccd53cf12e69f72b6b10b895799436ca3ab1f4ab5637b1de5cdcdc5daa3bba18e28f1b64ec37f6aa6b6eb731cde015f0e24c8e66ce33bd10d2eda1fe216102c6bcc01b87903e79863383f951173b8406a40d84cb1a9131eb31468db44e88a7d80159bc609a3dca283892fa4cfbef436ea432bab16f3bca37fa8ab97e647b758946df7a6236df7346d59f8a88968172e6578f50b8b706287940208ce3240aa89e3c812d957999a5e6071e6248c75a3d79c3a2380dc45382caa0bab1dbdeb7e17d3cbdc8be9d308a3f964f73eb4a952702698b1402c245c450a69ba1c76d1b6f1c6dcc41eac700d7258b325fb637e6931f3deba27165d2b58dc5c06da49491bfa7ff001483a7a60a330c1e52f93fbfe74cd7d189d870399dafece200ba2c6f8c191dd8fbef81fb543a9702daeadc4775a8dfceef14ad910a6dd0637345f836d7ee7a3c119d8a4280fb12327f7aa36bc6ba1dc4ef6d2dd2dbcd1b95225d81dfa8357a73d899b7e338852d34fb0d22cb92d2de3b7863524f28c7e66b9b37da6eaf6f7f391141341cc7910ae3947cfbd740e20bf8ad3872f2e8112278442f29079b3b6d5c226d9b6dc127a5375a82326276360713a770b6a2753e1db4b8760d272f2c847f50aa3c7da61bfe1d2f1af33dbbf8a00eb8e86817d996a1c92de69cef8e6c4a80f43d8d742d8f94e08618208d8d67c6073067d9ecff007ce0eb0c9cb468f1ff00fa2d5ed414c7acdda0c012a738fa6ffbe6ae68b7f6c6faeecede1108b3942b2aa85079973902b6d5e153710dc8032015a6b4ec3244158380650bf72cd14a3a9231f5dc5072ea967ab42a3049e70bf5de8b5c7ff4bb60155047cc1a17b7f1587240136ce3d47fe0a5b5230d2e8789bf0edcbdb5f496dc99f1e3c8603e1207ed58d322e4bbbf83a2f39cf61b8ab70d92c5aa43711b8182415f51e943f55956cf549631e5fbdaa38f6c6734a1fc398493d84e5ec82b6cd13143f9839fd6866befe368522aa31f06fdcb0f40c36ab7a4cc556e5c80eaa4363d72083fb54a9e1f85ab23e003087e6ce08c8ff228f59caca37317ec5a47e19b8899bcb1ccb2a020f4e8df4e95068e165d5e34797c3c9c039c027b0344b45bb8af745bbb20adccb0396c8d863707dbd296db2143f4349d870c2584e93737d6761859ee110e33cbd4fe540a3e28b75e228e5b7e641ca14b9fc63e54a2f34a6532b4acd27762724d5791d99f989f37ad599c30c490799dca1b94b984488dcc187515ec93deb9f703eb73c266b69c492c0a321bd0fa5363eb6c632628397dd8e714a5b7d69f91e6315d6cdd0972e5e28a226660b9e99ef4b972a923970303d2b792492590c9239673dcd5795f1b0ac7baff0074f13529a767265494019ad74a97c1bc6463b4836f9d6f2fc26a9cac612aebd41c8ab272311b2bb94ac78d22778a5e60abb82aa18673472d26d844c0ff002d8838dc0cf402942caf8958e58ca9cf9877a62d1ee2492694464b31553b8f7e94f7a7ea36d82b9e63535e09cc0bc4d29b89b90e1646ff005413b0c7c393eb8eb48b7f172b9006fed5d1b5cb7fbbce6ef995a52f9540a39028f5f7c9a44d4542162a37f53517175d4b6e9356368c45d9d1631cc77aa91a7de2f2188f47703157265e766ce456ba7285d5ad41df320a754e16144ebba4a88edd146c00000a22ad8d8d0bd39f1128f6ab57133471f32a973fd2bd4d2e0e2bccbe32d0a594bb9144d1f2334b505c4b1b462350ecceaadbf404ee7e94711dd3a8fd6aaafc436de2592d5e0e2abbce41dc57848ac339c570696db22980e76c7ad57380704d41a8de2db5c0566ea335585e2bb673d68e2c18942865e6c5465b7c0a8c4871eb5ee6ab13912a0732cc520ce28071ef0e2710e84e5533776ca5eddbbfbafd47eb45d5b7073d2ad3c80c47d08ab56c419244f9a1a327a0dfa628a69d6660e696542b274008e94c3ae70da68bc571b85cdacf28923046cb93b8fa1a8aea00f3481be30c7cdd77f7f6a2db771b4798fe97d3df535bba76be3ee5104f2135b2498840619dfa579b012b55ec3d2968b69eaf72e15b7dc9227657563d41ed556fac92498c916dcdd57a64fad5a4915c900ee3a8acb363b66b958a9c89e95bd2a92b946c4d6cd5542452852e00c123bd16b56659304654f63da8785058301bd13857986e307d7d7de97b9b3ccc6d468edd3fe438fb8523b4595030ef5a9b5961390323d2ad589e5e504f4a390d98ba62aa07c25b27d2b346e248100ae57980adaf42121d4823ad15826475122302b50dde8e70592a8c48c84c5ba9ef41b2b07f83195b4343ed7b0247cc660015cfce846a1ac4634d90883959bca5f2773f3aa17bcf04af195dd173bfa7fe1aa12ca648d5180e42df8bd45168a021cc8cee90409fcd665db98e4fce8b5aaf9c66aa59c3df145ede1191b55ef785e043da3c1cce0fa53b5a00901ed4afa1c38c134cf2605b00ac39bbfd69df4d4c216fb997ab6cb6268e47364500e22b6062174a3cd1753feda5be2ad5f51b5e31d2ec6deee58623963c9d1df3b023b8a74ba41342f1b630ea41ad06191043e2445fb5b80f1824e76de80f14ea1059dbf2f88a5e4388c6704d04d538a27d2ee67b28531342c5096f5a53bbbdb8bfb96b8ba95a591ba935445247334a9d3963b8f520bb657bb91d010a5b20139a8a4002820e73d47a549221550c7a374deabc8f4ca88cd98512363525b5bb5d4eb128ebd4fa0a84798e298743b3e58da62a32db0aeb5c56b999b63e04916d39005e5d86c299f4a8921b4404ef8dea8c50e76c6d567c005415720d625b6efe0c5c3e0c26d222ed91542f24964c8821924c7528b9c57ac74b9af27c4923c712fc441ddbd853b58db4705bac50a04451b0fee7de950aaadf72c6ce2729bebabc53ca9112dd195b622aac1a8043cb3f2a3fa0aea9aa68367a92b19e1cb81b3aecc3eb5cf357d39747d47c09083cc3991980c915a35588c36e39950d9924339183d8d1182e7a6e31f3a0a27527071f43534770a1b63bd09eacc32f70eadc60e435594bcc75341239836f9a93c5c9c039a4da911e44cc2579a89f0591492cdb52e5ab98e73193b03de8aa45ce726a96ad64f6d225c05c249b67d08a3d1b47c3ee6d7a7854253ee19b201b071f2a6fd198732f37ca90749bc3c9863920d3b69122caaac0d5e85296c8d7a1da418cda859da5c4aab2f2aac91f28f40695247962b86b713903619cf4c0ed9a686805c5be5db181b9f6a5dd5ace0822b59adf9a77b8631e0f66ad4b81fc9661e8d954ec632aeb3612ca6c964bcf8e2768cb924b0ea07ce8647a634d751d8aaa91226656c737281dcfbe68c6ad6f25a5ce9f0bc4cf2450311ccdcd86f5fa56da6a9b0b696fa552bceacab9ea4019cfe74e53d4a3311c8f3036bb6b05bdf3c084c662890818d9f6c547a544f65697b705bcc02c6ac371e6f4fa558d725698dbde5c45feb5b216e4dbbeff00a55b63a7cb0c1696f14b6d1dc4ab2043b9db6c53083e717d53914f302dc9c4f6d1275322e07d68fe79a6851970a247949f655a15340bf7ed365039b9ee5f1f25c7f7cd11b89d6dec8c8cc033c2c17e6cdbfe82bb524165105a10704c31a2224da52318f6909273bf3555d7b537d33c186dc01ce8c0a81d07414534c5861d3ede15910948d46cc3d295b8a2532ebbe11f8502a7f9a1b9c2f11aa9775b83d458e2a939747b4b707cd20c9fa9c50ad321fbe6a2b0a0055e58e04f7df7ab7c71308f518a30768947d3ff0033567822d87f18b02e73e0a3dcbfd06d575e2bcc05e773713ae093ee9c3d7d70981e1ac8531e8060570324cae4b9e62c724fbd771e21ba1a77014cee3cd2421303fa9ab871c292cbd0fbf7a6b4dc29995a9e5a78dc49c86269a531ab64445cf28fa56a179b39dc9fa62b18c03bf4c7d73d6b5f5ced83834d66247a91f0e6a074bd7ed2eb20278811cffb4ed5dabd093915c164478a56439578db1f222bb56817a351d0ad2e837333c639893dfbd6588f895a18cdaf1a5c9e53e15fd9ab83fef8db7fd0d1cbcc4d66580c7863237aa7736a659ada6070d039faab0c1156ed1d6450ac71ce394fceac8c55c4823e2609908e500e319077f43b7ef8a13a946f04315c0387490a8fde89f316f122607c48dfc1607b67383ffe90a15ae4ac3c38ca8024c49ee0e30689ae4c2ee82a9bc4a706a575f798dcc84943d2a3d76ecdf4825917755e55236c66ab46eb1ccac4640236a96fe3cac80636dc63f3ace5e50c313cc93875d8dddd42e49e6b70e07c8ef50f1078900898bb88a64314810f5c608fdff4a1f16a1269f7d6b7a871cb98dc63e252371f955ee2f9ff00ea2d6d21567848f1629ba89030036f7144d3b656738802d269229dd55dd43ae0e0e323dea6930463d2aa3c52dbdc94950a48870ca7a8ab0de6e98f95296f0f2d8e242e45424f5cd5bfb9dcb918824dff00da6ad45a1dc0b76baba290443a073bb7d2b97389c23af0c69510d3edd4a85f28273f8988c927d6895f322406de24503396603ad6347961fe19049102d1b460820e09ad2e10e48208ef835e6eeb7e47ef3366b1d4a19db18aaf22f6a20d6e1763d71d3d2ab48a81181c97c8e5c74c77a1a9e6340ca2e320e6a8cfd055d90e2a8ca739f4a6ebee1966ba6df496f7a2dd8f3231c0c9e869b74fbf9a07124521422902e49570e3a8347b4ad40cf6dccc7cc36eb45bea3c589c18aebb4e197dc023b5d4d6da9e9ed1ac86311234853193cddb7f4cd256a1192a55939481d08c51386e5d73cad827639efed55af1432f31193dea2cd49b4a961f213112ad99114ee60e41cd81bd0f8094d46093fa5c1a3f728ad9c8da844b6f8932bb77a7e9b323997c733a7e9cf98937ea288ba829bd05d1a5e7b185f1d5051956ca0aeac029832c786cc8edb0b718ce298a242ea397d297635cdce7de9aac57f92bf2a154b9c88666f322685b1b8c1a80a95eab451d4b75a8648f345f6bea72d99ee27f13472bc90344c572082d8e942ed2e9d18c720c95d891d29af57b71e10c8ce0ed4b3390b26028dfd282d59072230ad910b5acea62c93bd6d2c831b1a168bcabdeb6694e3157f7481832bedf32f2dc72f535e7d455079b38f6a132cccbe6dcd4427326c450bf518e2196a136e25862d5b4b2226532c5fcc8c77047f9a573a7cae1ee7979d010f827e2077228ade4cf13120e08a852ec36928a010770c7e5522edc327c4d9f4d0d5390be600b98a19a576484448c72aa0e79455175685f95b7f43eb4516369652883273d2abdd40c39a27041a3abf38336751a2a988751f2107a80b2170773d6adc71f890b48597ca7e1277aa6d1b46467707bd58b3b97b7983205e60762573db18f951c8cc56b62a7189610531f0fe9177a959b8f28895bf96c776cf703da9715b1d7b53af05eab2476cf6c8819a36e619f43dc505402707a8c6bf3fa63b466518925b5b9686642aca7041a3b6531420873ff001e95638a2d52e65b6be555479a3f315e8587afce855a4a7233d7d2b32f5355bc4f1b603b437831a022cd1061d4d07d42cd5df9d472c9ebd2addbdd72a7c58f7a8aef51014e406c7af7a392acbcc494b03c45ad76e07de1a40e18483073db1da8480935c86450a00000cd7b882f2368c2f2e24e62c483d2ab593110a9c6e77ab2a9d9ba69d6bc661cb7da8bda2648a0f67938cd1eb3055415193dab2ef3884cc67d25395451c9136c0ee3ad07d092e1a2e6b8500f5c0f4a2eac79706b6f4ff1a8099571cbca32e9d6b2deade4b6e8d7118c2485775f5ac4c31b62a79e709918aae1bc4524ec2980c3a94e6722fb4db3fbbebd15daa00b7317988eecbb1fd314945bdeba67da95b736936f75de09b94fc987fc572d24b9f414c20c89a49785a86665dea2639a939011d2a37423a74a30c458dfbccdeda169ee1234192c69e6ce0486158c0a5ce1bb70d2bcec3a6c29aa353d47e5599aeb3276fd403b64e25c4b75680c8080508db3b91ed5e8a11cf5a2b36000055fb68400198d633b6d1078842c630bca08c0a39138c0140e37c300a688432ee052c96ed3cce30c22a30de94b8e3401716067541cf1a9646cfe1cee299ed589daacdcdba5ed9496d26eaea401ef8ad2a9b3823b8307067040f149746dcc6d11c6320e77f5ab4b672440299195fd08d8fd68a4ba184bc68e41c9342e4023f10ab2b63f782a501e61b6e29db2f518c47ea106dac13bb9527000cedde89c1063ad1193476b68849ebd6a482d39b62339a42dba6ad780b99eb0b5f1482075e957b5fd1269b86e59a24c9b722523d40eb45f48d349c617fe29ba1b089ad1a0917991d4ab03dc1a269283636f317b3586970c3c4e0d64e50b376cd34f0fea401c676cd2deb7a5dc687abdc69f30239189427f12f635ae9b786d66dced4c3a10770ee7ab645d4d5b979ccec7a75d078d6424118c1ad3578d4d8a4b12068924e6c28dc37ad2ef0c6b51cc8d096f71bd5abbd6e4b0678d11087d8163d29f5b54a64cf29668ec5bc8039127b964b9d5b4db8865c48e8cacb20d94e373f5a15c4371245a7f872c824b891cc63947e1db3b0e95ed4f55b6d6085824656b7049257018100503be88c178aa247ce033b7707da99a9c11c4a1a8ab80dc6214e24921e7b68b1e55b751ccbbef9e9586021d5d22076b481413fee0b927f3355c5b89b58b586550162b7135c1f520737f8aab05c4cc935d1393348572df2de9da7924cccd7b615544b2aed26ac918dc59dbb11eccdff26a3e242f12db5b1ce42ef9f415be87134fac4e66527c4644ebff00e2fd850fd62ea4bcd4dda4180be55cf71934a6a5be663be9e9f106456eef1840aec3977c8344ac653757a3c6cc877249ebf3aa30a83ccdd40db356e002d34cbabf6f8829551ff9f3a58139c4d1b30a85a25eb731d475f9573f13f2e73d0677a75e07b2f165bdb81be4c76b1fd4effa0a45d358497b3dc1e880b67ebb575ae00d3fc2d3f4fe6f8a4e7bb7fd969f73801661e7e79fa917daaea460d26df4e51ca6494b0f5e551807f7ae59d4807a0ebf234f7f6a93acfafa427ffdda00763dcf5a4350795739c9edd80ad0a86104c8b8e5a60120e41f312303d3d2b2c9893e1cedbe2b5462b286c649d80fef5b65fc328a77cf5abc01fe612e2be12d4adf55b8bbb4b579ada56e7531ee467aed4e9c13a7cfa770dc315c96596426431b0c14cf6a1bacfda1e9d648d169c1aea70081201845ff0034893f12eb57313432ea970d192491cd8ce6b30623a302753d578a747d27992e6ed5e50bb4717989ff00144f44bfb79a22479adaf6113c4c479b3ede9be6b8264e49c927dcd748e0cbe373c310a3365ece6680fb03e74fd722b9db68dc3c4b2fc9b119f508426b728ce3ef7007523fabbfeab9fad05d7232f6426c61a1933d3f0b7fce68d6a91cb73a5d9dd9255ede6c165eaa1b186fa305fa135a6a30473a3a80392652072f4df718fad3cffbb48315036d844499366071d6b789d9edd958e7936f9560219131d483823dea7b6d35e493762bcf8076d867a127e7b562a12ad88c9ea0bbab6f134f954fc6879d7dc0ed5e9357f1b85a2b168d246b77e45e71d14ee08f7ed57ef62316a935b732ff002d55577d891d6825d5b88a4ca0fe44a0bc67dbb8f983906bab255cac21e57337b4d22eb53492e20e45453f139e504fa03eb53dac6b6cb2b5f4053c1db2c7079b1b003bd675093934db1d34125208bc46f767dff418aa175a85d5ddb456f34a5d2127939ba8cfbf7a9b47cf2670e44b07522aa044ec3941383be0d50babd9ee5f32c8588ef50b331393b676daadd9e8f7f7ee56ded9881d59b602a824e23f7025efdeb86d203246f2db3b294cf99549c8fef47d2fac6f43485fc7182bce841c30db15ce65b11a0da1f0e4b792f1c7f30b31f87b002aa695ad5f8bc4b7b28f134cc155214c86c9eebfdeb3aed09662ebd98da5f80019d1ca16e67eac4e4d52b888f29245359d19608808d897c00de84d08bfb7280a488ca7fab1b56459a5b69e5a3f5daac7022cdc10cde55c13d850f9f65346a6b62119c0040ef416e810e7986c298a8e63cb064e3627d37ac69570526280e39b715b4a4b67b676aa30b7857233f85ab4946e42237580ca54c6c4bb3ca081923e215bcf741907311b0db15527123c22641b81e6c509babe311c3676e949fb1b9b898b669096e25e9b0f9deaa4d1048cb6d5417530c4990f2e3d6b126a4b202aa76f734d2d2e22cf4b2f73a1e8c3974bb707af20cd178dfc9417459d67d32ddc63063145e2dd6a4647104c312484ff00329af4f23eeeb4ab08c38f9d31d838f0c2e761e9514f0d21ba84fad46cb590d8e8735ab3d1fdc106018275d56fbaaf21c79bafa52dc91e0f6cd33eaa79e02b8cd29eaf6570d6ccb6970d0b90795bae0d09db2dc472b1f199c2f7351b0155ec2deee1b2892e65f1a5030ee7f11a2115ab95cb0fa50caee3c426712a321f4eb51bc3e828aadaed5b35a02bd2b8512c2dc456bf80baf7cd50d3e36334f6e772087507d0ec69ba7d34b02796962e08b1e23b3c802391bc373f3e9fad0d6a21b69e8cd5d25d8ea5c8ec92d51a7957a52c5e4e6e2767ed9200f6a7cd46dcc91055006063149f7fa7fddf2ede5dfa636a2102b6c4dad1dc1f258f302ca5bc3285b6ce71e86b6d34dafde95ee9d9513cd855cf311dbdbe75e95735497c92114da1e2535036bc20d278b23b9eacc4fe74c1c21711c1aa147ffde8ca293eb9cd2a873b62af5bc87018315607620e08aa1ca9cc6005bd0d7f62764bdd3ceaba5345ccab12f2e24eea05264ea6de5dc0c671cc0f5f7ab9c1b73713c6c86476b796268e48c3e487ce03007a6dbd45a9593595b5b99cb89df98729eb80762476da81ac40ea1c09e7528096369ec39fa98fbe05880f5ef42b50d47951b95bf2ef59b96325b1553861f0b7f634a179a95d45712c33c5ca7b06fdf340a683674622fa46a9f0d37d4a6fbcce98c9c9008f5a31696c428df61b0a5cb5e6bbd42103625bf6de9d6dadf1818347d51f6d02c39e060496dd19714c5a4c2ceea4d0cb7b7c91b53468f6e01181d2b2950daf04ec0087603f72b269e52046a327e552c6eaec197e12322acf801ed446c339aae91f84d8c6ddab6ac5d800132430624f99a5c421c938aa12a9442a3a1a2ad8e5de865db61b145503b919f112fed0a3f1f85ae76cf23237eb5c8793b62bb071bcbc9c317833f1055fcc8ae4bdfa51509c192d21c6d5ee5c9c7ad49ca08ade1b7ba6b9458a02c7aee36a2e65541261cd3a0fbbdb2aa8c1ea7e75a2dfcaba888c4cd331382136441fdcd5e8e16108c801b1b81eb5b59d95bdb317080336e7deb2cd8b962dcc295c42d6c8a10339f7ab4b38039450a3333300b955ed56e02a3763bd66ba793064c27016e606afc2d8c1342a19467cb44627c8148dab2219b597207af7a271b1c0653b8dc501b6739a316ef95a6b4967832ac201e28d1e46d416ee14044abccc1456ba7690bcc93f290d8dc1efef4cd305962407e24cfe55e86219e95a3ed02d98dd4c76c19aae9c3f859206ea41aa761a76581237a66bc8bc4b3640074ef5a59db2a609eb5d66983d80c656fc21962c6d1618d7006689a9c28155908040cd01e29d7beeb09b4b590090ed230ea01ec3deb4aa5c0c099ae4b981f8e3479b89e5f1f4e8c349640c63271e364ee07cab99cb0cb6d3343346d1c8870c8e3045741d3789869b1889ed8c9cdbbb07ebf4adb886ef46e20d34b18996e540e49397cc87d09ee08ed46b280c320f3373d37d55b4d8aac195ff00a88da6dfbd8dc0910edde89ea3ac7ded4090fb8c76aa12695345197560f8ea17ad53df1d36acc7420f33d85474fa922d439c466d0e2966b796e9f9590c6e09077181dea9a492dddf451c927c4e1373d17356348768345b8254a893c8adeb9ebfa0aaf6507de35bb3b653832ceb9f975ad1d301b389e6bd45bff21bf88c3ab4a2d0eaf7848266296d185ea17bfed426f396d6d45b283e40303df1bfeb57af245d5f8865b468d92decdda56df3ce17afe67143e58dae6eedd49c960667f6032dfd87e75b35018ccf21a9259c08634783c1b57ba6ea03b924fe2c607ed40620d3dc932ae5467048a24da8183864c873999b9171d7028658ccde1f31dfb564b3066267a0a6b3526d3082d8a3a786a30ee0ee0ec001927142389ae7ee9c3f05b83fcc9773fdbf7a64b3506d6e2e8a1202784a07766ebfa523716dcfdef584b584f963c28df383ff00ce6895a65c4a5d67c7129e956ad240b0c63cf75288d7e5d2bbaf0f4115a19989e58e1096e99f455dff005ae5dc21668daf42dcb9874f8cc8db756036fd48aea3776d347c28f1c0a4dd4a87971b1e76a293bac998c70849f3391712ea0ba8f115f5df31911e421141eab9c034142101d1e4fe71dd7b00b524f1c96b712472a11242e4306ec7be7eb50345e215058f3c83a93d4f6ad50380263b9cb4f4239a252ebe6724e49c0dbdeb0ee07336061ce107600518d1786752d76d6e26b3b7f112d8f2f98f2873e83de845c4534733473c6629558aba95f848db153fda54e40816b15eaf565c6ba9ea6be00b92752bad34b72fdf210c9fff0031371fa6452a6f9c0049f414cdc35c39aeff0010b5d520b7fbbc76f287f1273ca081d76f96d5d80460cb838c19d5ada249ec1ad798a8946323a839cedf950e0ae91496ce09685872827dc91f4c8c0f9d58824f06fcaaee848641d4107d3f4fccd6751416f78d226392e14107d08ffc146d1bee5287c4a6a170c1845cbc5b5b2bb96529933f2c8bb7e740a5d4e54bd5b943bae700f407b6df3a39c47113a7c774a98f01f7ff00b1bfc1a555b79aeee3c082367e63b1c741eb496a50ab710887224d7923a5d89406e7570cc08dce7ad69220f19ad6521629d8bc321e88ff00e0f43f4346974f96de437b7574b2782bfcc0bb9638db3f5a16e217b34f1e4e58dc6d263211bb123ae3b1a0d9c3061e65d3f1225736f3dc6ac96e30f24aaaa067a1c637f962ad5e70bcd1de2451dcc0e5c0caf361bdebc934b6a6e66964e5bb4842f32804819ea0f70411bd07b9f11dbc7e690e77e7dc03f5a62dc1009955e388627d6ac74c96482d74c89a484f22b97e65f73f3aa177c4daa5d4653c51129ffed8c1fceab5869579aaca45ac7ce17e372765cfa9a2dffa62c6c807d5754441d0247dcfcfd2802122d48ece4b3b1663b924e49aed5f67bc331e87a0c7753c4a2fef07892311e6453f0a67b6db9a48d167d0c6b963a5e9961f7869e608f3ca73b7723f2aec23ca800e83a7caae274cb62a09515d48600fcc56ec7bd5791fad09b10ab98aface92d1169611e43bf28ed4ad74496c38c37bd7459c8752adb834a9abe99cc59d53af5c564db4846dcbd4d6d3dde1a28dc8e54c81de85bed293eb44752826b73e43e5ceeb424cecee01381e94dd232b9135696c1cc6cb07f16c1323622836b3180ea41c8f9510d22456b10bcc7284822a96ac000399b07d3d6a838712e1716180a45aacc306ae391935564eb4fa98b6a14473e04be536b359173ce8fce01fe93e9f5a7ab76ce3e55c6349d49f4ad521ba4270ad8703f129ea2bb059dc453aab44c195d43291dc1a05c986ccc6b442110cc9f2a396009c8f5a0319c36dd09a37a6be2400d0828cc58f5098e65ac119ab402b28dab3c8b5c683994df03ddc6cc8697afb9bc60bd0538dcc20c4db76a57bb8c3cfff006d0dd0a08cd6db84ad044981e5ab891e7b56b14581565576abd7d4e7ee46b15588edf2371598d32688410606f461cc193201a7ac9160af6ae69f68166d692091362ae1863b575e50021ae75f68f6c24b727be33536800031ad0d845b89369d76b7fa7417046f2c618fcfbfeb41b5b8011d320fe950f065ef8ba246a5b3e148c9d7a77147ae2dd268ced9a058a5863ea6d54e2bb370ea73dbab52a49542077f6a0f76cb14dca09dfa12314fd7569e7f2203edda94f89ecfc231c8c47310411e98e9534673868f6a6fde9f1ee0f89bd6af89e230471c7172b2e4bc84e4b1ff00142ade64743b9e61566de392466e5c7954b1c9c6c28ccbdced3dc38221ad23537d375186e933843e603a914f9c47731ea7636535bb0e69413e6d8bf9738cfd2b994669aa7d62cef3468add84be2c08a23553b927627e9da827050a986d4d3bec4b947224705e5bc92138e50c3e1f43dc50ad76c21b95e78c0c8e9eab50b8921988738707077adaee62aab87ebd40f4a02028df193a9d329c1106e816ec354e67538453bfbd3b40402296b4a6c9638c64d31d982c45035ac59b2661db56c38866cd4669af45873ca71de96f4f8f9e455a79d36011c4bb6302a341f360265ea5b6897718daa374ef521eb5e3d2b69d376419960ca6fd08a15799e6345e652ad9ec684dee307d6820606218444fb4063ffa7a403ffbab9ae603daba1fda4dc785a54518ff00dc98647b019ae6eb2a96001c671b1a2a038cc3ec2710c69fa6991c338c9ed4cd69a772c6c40dab3a3e9ecd02b11dbad1f589238f9476ef599697b09fa86c05181013db01b15aab3a0ecb8c75a2f79ca092282dc4dcc79577c9c5295e49c4191231740372aa93d89356a100e0f375f7ab3a5e8573f7949e65013af211bd30ae876b23f39882fb0a3b267a832902412a2e077a2d6914d71810c4f27fda289268d6ca8156dd4fbe37a3fa55aa42aa02e00ec297fd2b3b60c8db81175609ed66093c6d1375c30a296cdb510e25545b185b97cde2000fa6d426dd88031417abf4f715941c8cc29180cadb90d8c81eb5e85817c66a34e8283c9acc50cb2397c0e63814fada00198de9aa6b320461ba97962f88007ad556d4a381402de6f9d2d5d6bd24e7989c20e82a825d497338f313bd51f5593f01352bf4e6dbf38f76579e3b9e63e51d2b6d4f872d354b590a22c570dbac8077f7aa5a74445bc63a36326986da50004f6ad6d3823f298daa5dadf19c7afade6d3ef24b3b94e49623823a8f9d6a92372ba7e17c647bfad3471fb58c9a8c462c7ded530e47f4f60695501c9db34c93e251464664e808dc0adc69f692b28960566eb9e953d859cd78a44602a03f1374cff9a2074ab940a520e6e41e66539cd2ee549c18d54d755ca12251bab17b8b58e3870a2224f2fb7b56da1dac01e7bc9c88d6d807576ea1fb7bfd2ae79a180b1054e70030c50ad5a692c2c63b68d94c93b094ae33cc33b7ce8d5f240106d636d3b8cdace336e9a84858b4975e1aa3b0c73066249c7d2a1855af2ee768b25a42618f946c140cb1fc8015522bb9feef29b89599baaab1c81b6322ad70d8916396fd8b724721e45ed81f11fa9c0fa56a5a7dba6675077de0995b5a22136fa7a1222b6455603b9ea7f535358db2bdb2944381d5bb024d0991deeae5e593a34a4e49ebbd5db5b8092e7c460bcebe51dc03bd65aaf199e95d898d1a95d4367a5794aa78032500d8b63d6b99daff0036e67bf93cc493cb9a64e33d58cd6de1c20e677c2a8fd2825ada34b2db69d07c7210bfe6995c0e6646a18e7688f9c05a513a7077ff0052f65c93fec5ae853481a58c29caa82d8f73b0fef42b86ec9608c01f0c29e121f97535369f343709218654721c860ad9e5f407e956a17277456e6e94789c6b8b6dcda712dec272cab2b3649ec682b024001b208ebe8053071c211c597ce7257c4c05f7c52fe7cdbfc24e4803afb56a7d4cc6ee34708719370ddb9b29a033dbc9219170794a93d77f4d8504d7352fe2daacf7614a2c8e481e9543ccf9ec00000ad4962a028edbd40e0e448272398262492790470c6f2b9380a8324d34d87044aaa971ae5f43a6407cdc8ee3c461f2ed51c9c64f66ad068561069d17f5840d237cc9a5dbaba9ef66335cccf3393d5db3ff00c566c6808e0fc49c39a0298b87f4e17537ff00e4dc0dbe99a03aa713eafabe56e6ed847ffda8fcab41ea48a392790470c6f2b9e8a8a493f9544933a4f0adf9d4785a0059bc5b1636f211d42f543f9647d29ac4925f583c3ca8278d3c500746c7c407fe771493c15a1eafa54f712dea25b5b5e4423e591f059f394207cff7a66d32f4c37f16728ad90c0f5047c43f2fff00a685bcd37871d1850059511358da2d474f688f2b4722606db153fe0e2936e2fae2c627b6b2530491e51ce3276a74be5fe17ae4b1aaaadb4ebe3a2af4e527122e3d98e7eb4bfc45a595d5567e6021b94c48fd838eff00518a7b529c6e116a9bc180f4d7124c6de41979f3824eec4f627d335bdbda4a8f35b5d43224720cee3186ff00c1525ac5a6da5c091f5069268d814550577efbd5fbcbdb69644b8092b19baf73f3f95673a66a23c8875387fef074a96eba535bcf395bd8048a15d480f1e41501bbeffbd12d175612db4d0cf0abdaa445c9997ca927e151ed55aebc15529748d2dabe19593e288faafb7b50cd4ddcdda2453f8d1c48a5307ca76eb8ab5277a0cce618693eadab3bd91862b65b6767064780f286dbd2803091c066e66f72699844b3c31b3421b9d32d91b1cf6a1f7364610bca36c6307ae6ab62106486977ecf60e7e37b12c08f0c3bedeca6bb5b3796b8cf03cc2d78c6c8b10a1b9e339dbaa9aebecdb5501f8cb8ee664936aa924d9d80deb7792aa4d205de95b1a348b35924f5aaf21561be0d6af2f5c6f54e4b98d0e1df97340dc0f7190b07eaba5473a3322e0d21ea764f6b3924637ae893dfc48c179c10d4a1addc437d72228bcc73d41dab90856cacd0d27b8ed8020db3be92ce3711aab33630c77c5569a492562f231763d49a91971b7a56879403cc33b6d4718ccdb358519955cef55dea77ea6a0908a61665dc6420734a0536f04dfcd6fad4366d21304c08e527a1c646295ad8069fe544ede57b69d2785b9648d83291d88a9b0f880a68f750cebeac72307de8a58ce032f5ce69134ee33b3b840b78bf759477ea8dfe28cdbf14e95232a45791b38e8338a508c1ccce7d358a7044e8f09ca6e7715b67de956cf8aed7c21cf2239e9946c9abe9c5160a332332e7d4517dc4fb8a352e3c43131f21f952ddc40d1ced9ea77abb73c4fa3c280cb7f6e85fca8ace3249f6aaeafe33f39e87b552dc30004ba065ec4d123c0add56a4e5152471163802a9b4893bb33781327a5138d7606abc10e319ab8a005a3a2c13b4d5b1bd737fb45b910584b2b1df05573dcf4ae893b6c40ae1df695aea6a5ac0b1b6939e1b5c8720ec5ffe2a59777119d203bf305f06ea0f6d71736c0ed228703dc7fc5742b5b913c1b1dc8ae4fa44bf77d5207ce32dca7eb5d0b4f98c6dcbe9de95d41d9703e0cdfa137527ec4233c20264753d73491c4e249165561b819534fb3b068038eb8a53d6ed0dd4e8a1820c1e676e8055b76186212bc3295339cacae8f90c41cd1ff149cca0603019c74e9406e10c73b291d0d5eb4ba691791baa803e75a16ae4644c7d05dedda558c26b283b8a35c3976b06a2ab33aac7202b9600807b668398608ed23956ed24918ef08460547b9e95aa3f98526cb89e952ddeb82615d49945fceaa55807c065e87e55418330638c85193ec2a4728146183123271dbdaa066272a0e03601f7a1011c76f8621cd16cf108761bb6f4cf6b6eaaa2866970f2c2800d8018a3508a45977924cf33a9b09630b69518370bb53b5b0c42294f448c34b9a6f894246a07a569682a0bf202626a9b27137ad4d789ad58e05356383c44c090dcb7281417506f2f367b6f452e9b20d01d62e63657118e4f2e3eb406e0663083c459d5348b1d6e653790f88b1fc396231ebd292b8a383869a45ee98ad2420e5e227253dc7a8ae81cc157154af251ca77a12dc563ab9ea09d2356b7bbb64689b0318c1ea0fa55c9ef401d6906f66934bd7276b7f2a96e6e51d083da8ddbea4b7500914e49db1dc1a05f5b0195e8c3357e6160b2ea3218e02063e263f8689e9ba0c714bcf8f1187e261d2aef0d699cb64249171ce7268ff84a83ca2875d19198ab300712b416e0003bf7357638117b66a204f354eaf914d28020db264caaa7b55eb5daa8a1cd5fb5c0a9cf32847128f153816b6c98dcbe47d0508b76ce28c7154918b0895b1ce641cbf96f40ed5ba0ac7d69ff00c9ff00126b1f0846590c3652ca3aa46cdf90ae556d757177746495c95ce40ec2ba4ead7b159e8b7334c399446571eb9dab98591e452d9f6a3563284cf4fe875655d88fa85279c00aa0d1bd02ce5b8b843ca77fda962d39ae6f02e32335d4b40b036da5f8ce81647c727ad169a37381f51df54b869aada3b32e7278102bedca46339e95adfea82c7479efd700a47b03ddba558ba9e08ecc42c0788479811d2b92eadac5e6a370e92cecf0ab9f0d46c319db6ad7e8e04f26abee0c99acf7b35dced34ce59dc9258f5ab16b90033372a13819eadf21fde8673ac455e4dc750bfd55734e637175f7a947c2395540d80f414bea2ff694edee6d693d3cdabee38f8ffdc68d33ca1724aa2f4068a2ea8b13f2019e63be280a4eee000300d5e8a30a55ba9af3a752ea720f2612da17faa1c90596b0ff00769b60eb8563d54f63483ad4cebab1691497b71e0a7a0206361f3c9a726f0a0b792e838cc632013f8bb7eb4a3a5dbc97daae58789cadcce4f4cfad7a7f4ddec01b3b985aaac6d3832b6b367358d8c45f6690f2000798b6067f7c537596930c1a4c360c809954732f427bfe64d03bde5d5388230b968ac771bfc4dffcfed44ae2f0dc6a16a04a02c40b124e0f30d80a73557866083c4051a57aebf70f9940f0ec6ae63b785898df6466c927befed428db30bc3088f939490c49ebea69c2090c12098edcbdcd2eebf7c2daca59f97f9b365517b814b83b843a5ccbdc52bc985e6b0ec3fd2b7181ee7b7f9a63e05d3cddea32ea3203c901e44f99eb4ad0dace9008d17c495cf9b90e4e4ff8aeb3c27a42d958dbda2edb6643ea7ab1fed4cb741444ac24b168c910f034f1183caf20036ea33ff19a11c39c38387e6be617267fbdc9ce3231ca3d3dcd04e3ce26b8d1b5cb58eca60ad0af8b221e8ddb94fd286ddfdab73d984b2d3cc774541632b02a3d48c53b5210bc79893b0ecc07c7e41e2dbb28a7b16cfa8c74a5b20313c8760064fee07d6ad5fea375a8ddbdf5e48249e5fc58c67e42a9b00ab823240d8d3588a9c9399960a765ca92c491dc0151b1009c1c138daa4c93caf9cb11ca7eb5a6738ce398f5dbafa5448fe2053ee6af699a26a7ac301a7d9bcc3bbe30a3ea69b8e99c1dc2cf27dfe73aaddaf4886e07d06c3eb43f50e3ebf9ad85ae996f1e9b00d808879b1fdab32392c41c11a769b6cd71c43ab2445467c085c67e5f3ad178dad3491e170fe8d0c0a171e2cc32c7dcd28bb1772eeccce772c4e49a92d6d2e6fae16dad2079a66e888326b8ce962ff58d4351bb3797172e65e60eb8270a41db03b5752d3651ace9b06a96eb9967513e06f89536917ebd7eb486384e3d37f9bc43a84564b8c88626124afec00e94cbc09aed878efa369f6b243cb9b884c927334ce3e21ec4ad732071b4c956da731bb58b0fe29a623c281ae21c4d6cdd091f8933fee00afcc0a0b2c106b3a14d6aa5b9c286b76538c775cfeaa699ad8aa968e373e138fbc5b3fb1dd87d0e0d00bd84697ac0755e482e0b3a28e8a49f3afd0e187b1a76b6df5ed300e0ab667373135c0040c127054ec411dbe745f4be7bab136ce4a5c5a92f0138c367b7d714535eb04b0d43ef7146ab15db78808e8b28dcfe7d7f3ab22d63b601d501e6fe6a7c9b72292202b4303912a490adc581183ebca474f6a5efbb9865dbe1ea0d373c0634494f379c6589ebed412e6da5935130411972e86440a3a81b9029653b1f6c21e46654b7bae4050b9283751ec6af5d85b8841723980ea0f5aa965a2ea1a9c52cd6912a44ad80ef901bd714d3a2f0f436d1892f8acb26375ce50515f278900451b7b0b9b99d0db2b070dccae01d80ee3d71ed5d3b87353bdbcb4961d4e30b750301ccbb2c8a46cc284cd369b625a3e6851554b722b6ff004f4a189c5d1aeaf13a23243ca55cb7534b9c2f399711da67c355595b2a6bcf2acd12ca8d95619154a7b958d4927f5a4ec183cc7eae448eea4e55201c50096e1a5971190e41ebd856d7b7336a5cc21768adfa19bbb7b2ff009aa66de45b5315a465506c48a5dd33ccd6d3e98b772aea774778d1bafc440eb43d1a2853a0673edb0a99ec67f14a6398fae6abc91f8671cc1be5575c01813d2554a22ed595dce49cd46c84827d2a57150caec76fd051d60ed1812a49d6ab39abb28411679bcc7b5517a700c4c0d47724b4d999aafdb320901950ba7750719aa500e5886fd77ab919df0450ec8ce907c4093f848cc4a7305f423245627b42885c1e9bee2aee9d76f64ce5111c48bca438ced56ef6e209b4c955625560074ec695de4309a365476e71c45d8a59e17cc32ba13dd4e2880d4752007fd54bf9d6b636e240494381dcf7a22b66180056bacb141c11326c500e20894493cfe3c8ecf2641e63d6bb7e90e67d3e1909c96404fbed5cabee4a36e5ae87c1578b2e99f736cf896f8196eebdb1fb5556d0cc044354329c46448f26aec310519ef55d0f28c9ab11c99a6411333064a720ed5ba9c0af6414daabb5caa1e53d6a490bccae332b6b371f77d3e790372958d8f31edb57cdae4bb331392c4927d6bbd71b098f07ea722649301002f503bd707c0ab0335b40990642328e1bb839a78b298908e4ec40237a497eb4c5a45c34b6918dc98fca7fb52daa5dc80fd4d7d2e0315fb8ed1c82684283d6846b4aad692c401d8649ef9a934fb8241527001e95ebf50ccc4f71400c4a665b1b2ce6734d523e5b90ff00d42abc04ab823ad15d6e05591954e421da8640bdeb5ab6ca098ba9ab6ea8edf3cc246e04a14850a40c103a1acab1cedd6ab052a335ba39ced412b3452d23b97a2e6c3730f8762315bc6478aa58ec1866b10deb049d5864ce0063ec2a54922587980632f377f84ae37cd0584d2adb72c7bb4445810ab0208ea2af465475602b9ddb6ab77640adbc984cec8c3205581c51a9a1dde323d0a50bdbfa9956e8ecdc4833ad68b2224ebcaf9c8a6f8db9901af9fe0e35bd81c3786b91dc1c51db3fb5bbfb6186b45913ddba51a9664e089997e86d6e44ec66a373f5ae5f69f6cc866e49f4b95b98ff00edb027f2a6d5e2cfbda0f0ad1d39941f3f6cd73b85fcb8891d35aa7910addc8a91b3bb0551dcf414937f7d1cd78c637cc63607d6a4d4a1d535199d9a63e11e8806c2879d12fcfc09cfec36a56eb9c8c2ac3d7585e499992e4019cd0dba9cb0393b549756b7d6a3f9d6b2a0f5e5c8a153ce082739a498bb1e446d40f117f8822cce938ee394d4bc29653ddea4888a4a1600fceb4d4cf8f88c11967001ae89c23a2a69f124a06022e01c7563d4d690722a09f72f638548cd044b6f0a44bd1063e75b31cd6335e06ac4e38999df330177c9adc608ad59b2302b4466cefdaa8584b4b916e055eb770494c1c819f9d0d89f0688db6398377c62a9d99c7a8bfc5ce56f6d0736c633b7d6a8d9b9fd6b7e359b9757b64cfc30ff007a1b15e2c319727a0cd64ea57f7c987a909410671a6aaeef1e9d1b7900e7931dcf6a5b56c45b8ad6f2edafaf65b963bc8d9fa560f6f96f5a2a9b5409eeb4340a695486b87a3064e639ce763e9ef5d6ad0723046003228215bbf5ae59c2d3ac3a85b9793c305b01b19c676dc7715d46eaea185219d9c1f0dff9ae3a0c0dc533a51cb34f37ebc58dc1711378c78925b5d45ad60003b2e5891d33fde9141e625b3803724f6abbad4eba86bb75736e095b89498c13ef814365004ce81b9954e01f5a3bb8ac7f2646834675242f404db225932ed85d87d28d5aba88955170a3a0f5a156b0b3c80f2123b1a331a08f03a9ac8d4367b9ea6e0aaa107885b4e81ee1ba80a28b3da3aa732ee0507b16963219761446e3596b5b57c60c854945ebf53ed4b514d76b61a79fd4efdf9583753ba669640ad88ac90bbe7bc87651fae7e9577468a2d2b4213dcae1a406694f7e51d07d76fce83dac46fee63b6981e456fbc5c9f5fe95a2bab4a93bc36e7210b092451fd2bf08fcebd5d0829ab71989a826db454251b4fe4b497732e1df32301efdab4fbd2c7bf202d26e7bf2e7b56f7c59b1803f99b95c74df6ada6b386090a0662ca00248c65bbe3dab354b1cb9f33599538496edc3cb0722cdd073153fb5256bf7c2fb54089bc306c307a9ff00e68fea77a34bd2a69b9b3249e55c525b73f2246a7334c7ea33d7fc537a719f91999aa5556dabdc60e17b6fbdea4672330c1bf5d8b5758d3268acb4d37770de400aaffda3727f3a48e1cd385bc36f631ecec72edeff00f157f8eb5fb68f404d32d18733b728c7655db27e7bd1693eed848ea2faba7daa957c9e4ce7fc43aa1d6356b8bd91b21dc95cf61d00a12d90c011824e187a1a91be36db0ac76dbf5a8dc0279b9490060fbef5b2381301f999e760e36f700f415b3798018db23bfed58206700ee0f53dc56704b2103f2ed5225261465799ba918c8ef5972c24e84b01b802b084153d719c8deb3e747ca839c673ea2ad2bd7502938392773d727ad12d3b86f58d5b94d9d84ac8c7691872a7cf26995e7e0ee171cb6d0b6b17e9ff00b8ff00003f3e9f950ad638e357d5a2fbbab2da5b74f0e0db23dcd65c6b3896df40e1de1f28facea1f7db80b9fba5b9d89f427d2a8de7175d32343a55a41a540c37f017ce7e6d403bfbd60f438ae96cccbb33bf3bb1663d589c9353d85dcf61a85bdddab159e1915d083df344f57e1c161a1d86ab6f73f7986e9478840c08dfd2820ce4107046e08ed5c0e0c8c789de21959d072288d88fbcc0b9f84ffee47f993f4615b5fdb47a95a1899822cd868dcf48e4fc2df2fc27d8d02e1dd5ceafa2dadc065372a7cd8fc3328c60ff00dcbfae28dac8922ff2d4b4530e755f9fc4bfdff3ab0b363e7c4bed0eb880845fc46ce4d3ae7314d19e4c3758dd4ec7e876fcab48d5a48511a32ae07214c7c2476fceaf6b71bc6cba9c6a59a3012e40fc49d164f9fe13f215660b882183ef2ca0a49825c0cd12f507e4252bfa32a889c69ad1dd02af0ec48192cbd8fcc74f950fb294da4b25c084cc5222542753ff0069abfa8dcc09769751119c619f19c0f4aa424862ba12da155527cd111d47aafa567da03104788c2f107dc71b816856cad024be29243a8c15efd3be682dcf165f5e42d04842a4bb30503037e83bd69c456274ed5d8c43105c0f113ebd47e741e55f367a668a7e692bd1853c62e99cee2a191b9940e51b77037355a19b97009a9424d3c823b789e490f45519aced8c1b1180b9ea31f0df131b2616778fcd036cac77e5347ee2dfef9266407c1eab18fc5f3ff143342e1916ce93dd0592e8ee31bac7ff003ef4d660444dbb77344d991833474f5ece4c0f259732f239181d140d854174f1dada1541ca71804511999573be6826a92c8d16150e2836900713734e8588cc132acb28628dcbcd42dd4a920f51565ee26562bce401b62a0c191801d49fce808089baabb44f456de2466677458d4e0e4ee7e955ef1228df11b730ade78da290c6d8e65eb50f8124a09452797ae29851cc4eecf328dc60b6c30315564040cfad5997ae3bd579412400373b014e2cf3fa8f2666170062ad45212773b9aa72412db905b183dc56d1c9d2a5973c883d3ea043104bcc067b55e742d63cb8d9dc6f41619ca91934d5c376ff00c45cc58f2c6c1cff006148d8a41c89bc352bec1cc9ed74d3c8a4aedd862afa698fd9723e54d56da322a8276dba55f4d3a15ed9da953a6b18e499e6ecd5027889d1e90ec375347b47d1a7b6905c4595c0dc0ee28f43651e4600a2b0c4aa9803b5757a33bb24c5df53c62085b900798e0fa5482ed00cf3f4aab7d6d990b26073e48a8e181949271bd5cb32b6270552330a477a6546e438c7af7a8973cf9ebef512a95d8301532820fc5562c587329803a95389599385353741cc45b3e07d2be7fed5f44ead197d0af9797c426ddfc9ebe535f3b8d947ca9b43959a1a0fea9a152d4434798c533459d9aa816af41318e757ce3b5599772911f5608e0c7986e2382d405e56908ebe9505ddd4862f29f3630283db5c31608589f4ab734988db700e2b3c865388, 'DISPONIBLE');
INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `imagen`, `estado`) VALUES
(4, 'Cerveza', 'bebidas', 4000, 0xffd8ffe000104a46494600010100000100010000ffdb0084000906070e120f10100d100f0f100d0d10100f101010100d0f0f101611161815111513181c3420181a251d131f213121252d2d2e2f2e17213338352d43282d312b010a0a0a0d0d0e1b10101b36261f262e2d2f313737352e3037372d302f2b353237332d2d2d2f2d37363530372d352d2d302d2d352d383537382d2d2f35372d3531ffc000110800e100e103011100021101031101ffc4001c0001000203010101000000000000000000000405010306020708ffc4004310000202010202040a05080b0100000000000102030411120521133141510607142261718191a1b123325272c13342435362c2d1e10815243435737482a2b2f163ffc400190101000301010000000000000000000000000102050304ffc4002c1101000103030303030305000000000000000102031104213105124151617132b1d11391f0152281c1e1ffda000c03010002110311003f00fb8800000000000000000000000000000000000000000000000000000000000000000000001a2db5a7a203cf492ef01d24bbc02bdeba3024800000000000000000000000000000000000000000011ac8b727a7a3e403a37dc03a37cc0f33adf5e9da04b00000000000000000000000000000000000000000002264e7d153fa6b6badbd74529462dfa975810ecf087097e993f546c97c90188f84784ff4def85abf740935716c69b5185f5b93ea8ef4a4fd49f302720320000000000000000000000000000000000000000021dd8754e6fa48465b631d355dee5afc80f0f83e37eaa3f1fe2063fa9b17f551f8ff00101670fa23b651ae29a9c39e9d8e493f8302c00000000000000000000000000000000000000000000d557d69fde4bfe117f881b0001a72ff00273f445bf773fc00de000000000000000000000000000000000000000000043c6be4e76a51e50b34ddaae6f6aec0246e9777c806e9777c808fc42d946a9bdbaf98f55b92e5a012ab7c97a97c80f400000000000000000000000000000000000000018934936f924b56056f03b1caa763fd3593b17a9be5f040580003565c375738fda8497bd01ab83647498f5c9f5eddb2f44a3e6bf8a026800000000000000000000000000000000000000053784395271f27ab9d972d26d7e655dadfafa8091851718c62baa292404c8c98072606ab64c0a8e1b73a2f9d73e55644f7572ec8dafae2fd60742000000000000000000000000000000000000008dc472e35552b25cf6ae4bed49f24bde043e1986d273b79db6bdd37e9ec8af42ea02c5440c80030e2045cdc38d907192e4d7bbd280d7c172e5253aad7f4b43db27f6e3f9b3f6816400000000000000000000000000000000000055f198294a8adf53b773ff6afe6058c6206581800000cb02ad45473135fa5a9a7ecff00c02d8000000000000000000000000000000000000ade26b4b6897629b5ef40582000600c81803d015962d72ebfd8ae4dfb7502d0000000000000000000000000000000000000a4f09ed94555b64a1ad8db6d27cd2e44c2b54e1af172ed71d656ebea4bf8159444cb4e4665ab5fa692f52fe45729ca1cf3723b3224f96bc936fdc90dccbc433f235d1e44f5ece4d6bef433224e3e75cf4fa793f63ebf4721932b185d6f472974bf5745ae9cbe45a119944e0d9164b29eeb14b5adeab6e8f969a7616f044ce5d290b80000000000000000000000000000000000287c2a968a9f39c7e91eba76ad09852b68c47e6fd693e5f674fc4aca21aef6f9e929ebeafe6552e6bc26e2b6c2d78f5592ad2f35ca2e4a764b5d35f3756db6f92ea4914b95cd33db0d8e9da2b77689bb5c662278fcf089c0b8dddd32ab22e94e9b77253939b963cd756926b5d35e4e2fb3e116ab9aa7b656ea5a2b56ad45db718de227df39df99fc7fbeaa99a8f3df6cfb35507526befd8d7c3526eddb56a3372b88f9963d34d557d3194ac5cfdf2b2b6d2fecf29a51dd25149afce6bce7def97ab96afc1a7ea546a753fa76be9889dfd67676aec4d16f3572f1c0dff69face5f472d355a771ade1e6a7975043a000000000000000000000000000000000003e65e3c38c65635386f16e952e775aa4e2a0f72518b5f593261130e5fc5ee7f14cc7659919d92b1e894612e8e353b6eb25ce3457e6e9abeb6fb17af94e159d9f4595f6ae5be342492d21159591feeb67e6a7ead4c9d4f59d1d899a73dd3edf9e1de8d35daf7e1cdf1178f65d3942f942fc59f9f2bf6cd39b82b3769e6a6d45a7aad743c5fd622b98aaab53113c6313e71bc6de78dda3a5aaab14d56f3989e638fda77ff3b2bf1f3b16ab656c24efbdcd422a98baebae762adadab57d6ad8bd57627da8e7a9d5ddb94cd36a268cf333b4e2339c444edbc6fbaf7751376229ab88e239dfde71bf3b6db373e299774d46987469dbb5cdc77ca1a466def93f37f356bb75ebd13e68c79b162889aae4e6719f9e38f3ebcb9f7d53b52b2e233b387f0accc895b257d957454c9bdf3e9e692dcb7772e7a7747abbf7fa3e96bef9bf553db18c531c6dce5e4d45718ec89cfab97f145e1267e47148d7939365d078f749c64ab4b7251d1f28a66fcbcb110fba109000000000000000000000000000000000007c93fa41fe4307fcebbfe9126079f17954a3c0612a36c6fbeecd7193ea53dceb527ecad2f537de63f59d4fe8daa699e2aaa2271cf6f9c7cbb69edf75533e6236f942ab2ece9553e4d7d3742ca1674e12e9a7663b85bb2c8d917ae8ec8e8fa9a4dfb306e5ab7db3722e44d3313d9b63139a731313e91c7897ae9aa738c6fe5618de0c4e7759738452f2ac7ba126ba59c6bae85075cec7d5abd79eac5aaefdea22dd9a66afedaa27c4666ace7d3ec9aa29a67354e378fb25f08f0770aa5d1d30f2897475d528d71f2a6e1094a50539bfa35a3975ebdddc8d38e97add44f75fafb7799c47acf3fcccbcf3a9b346d4465a38e78618183ba3294257eadf9362ca375fb9feb6fd3655d7cf6f9ddc69e9ba5e9ac4c4c466af59dffe438577ee5ce768f6709e1371ebf32a73bb48c2317d1530d557527d7a76b93ed93e6cd270f293e243fc5e1fe96ffdd2b2bbf44109000000000000000000000000000000000007c93fa41fe4307fcebbfe9126068f161357707e8376c78d997c67252d8eb8591e93a4d7b34d65cff64c6eb1a6b97bf4a2dc667bbcf1c79f677d3d74d3dd9f45e6566636254ef9cebc7aac96be5397badbf224975d58eb9cb9756bd9dc76b1d234f6f13723ba63f68f88e3ef3eee756a6e55f4ed0e238c78d1c6d74a31eecc92fab66759d152bd31c6afb3d0da34e31118871edcf2e7fc21f0838cdf57d3647475b8d125878b1963c542e8b956b6c16b27b746e3293e538f7e81688872f6f0fbaafca553825b357b5ed8b9c54a316d7252d1fd57cd76a03a1b7fbabfb85bc29e579e243fc5e1fe96ff00dd2b2bbf44109000000000000000000000000000000000007cd7c76703cbcaa713c929773aaeb37a8cab8b5ba2b4facd6bd44c0e47c5ff000be2b836d8b2787e5bc6c951af2211af7bda9f29adadead7776a6c9566143e1c70de31999d75f660e74e3ba50a52c6bdc6ba53f32315b792d39fadb2130a3ab81f14842cadf0ece942d95729c658796949d7bb6f38a4f4f3df2d7bbb904aca5671f937ae1667383835fd5d76de8deaba3d367d549e9a774629eba2061af3386f1dc84a36e0e6b5d2749fdcad8372d66f56f6f3e7649fae4df6b02d5f82bc52543847072b738e9a3aa51f996ca989caff00c51782bc471f89ab72b1674571c6b5373955aeb2dba2daa5afc0acaefb810000000000000000000000000000000000002b78f7e4a2fbad8013e00181800000f5d8056e1bd72aef4422be405a00000000000000000000000000000000000015dc797d03f44a2fe204cadf25ea4064000000640aee1dcf2321f76d5f002d000000000000000000000000000000000000085c663ae3d9ea4fdcd01b7165ac20fbe0be406c0000001902bb83f39e44bbedd3dda816800000000000000000000000000000000000047e20b5a6cd7f572f9011f85da9d35bfd84049dc03780dc037819735a010b803d6b9cbed5d3fc00b300000000000000000000000000000000000021f199698d7b7fa99fc62c0e7b8167695423dc9fcc0b3f2d4067cb17780f2c5de061e72034e4e7e917ea603c0a9eb8f35daaf97c63103a000000000000000000000000000000000000028bc32c8db8ae2baed9c61ecd757f2f881cfe04344bd08095393d4029303326d01e5c80c6526e3ed03778176edbafa9f54929af63d1fcfe0075e00000000000000000000000000000000000050785b8fbd51af65bf30345785b40d72c6e6063c9c03c601e4c06e58baad3403c707c550ccd7ff93f881d40000000000000000000000000000000000001038d52e556ab9bae4a7ee03646b8ca29aea924c0d53c5035f923ee01e4afb80f71c5037c31d202270eaf75f6d9d8b4ae3eceb02d4000000000000000000000000000000000000c496a9a7dab4020d95cabad282b25b7ec6d72f73034438843f3d5d1fbf0b23f801ebcbf1fedbf7cc0797e3fdb7ef98187c46ad3cd764beec6c9fe006dc4b272d7cdb92fdb4a1ee4f9fbc095898ea10515dedbf5b606e000000000000000000000000000000000000000000680c24064000000000000000000000000000000000000000000000000000000000000000000000000003fffd9, 'DISPONIBLE'),
(9, 'Snacks de Chocolate', 'postres', 2500, 0xffd8ffe000104a46494600010101012c012c0000ffe107c445786966000049492a0008000000020032010200140000002600000069870400010000003a00000040000000323031363a30393a32372031343a30333a323000000000000000030003010400010000000600000001020400010000006a00000002020400010000005207000000000000ffd8ffe000104a46494600010100000100010000ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc0001108003c003003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f9f34e8c9dc71c1200f735b36d6a491c75af5df851a2690fe0a54b8b48a6bad4e69e0796440c5517e5555f4e85beb5cfddf86edac6cec60916737539314b36ee03e48200e9c01d7d6be7b118a8a9b89f5b420a5b98d79e17bab1d0f4dd52631186fbee2a93b932bb9777d579e2b31ad48ec6bda7c5f0a5ff0085b4ef24111adeb322e3a2ac4500fcb15c8daf879aef77ef6da05520169a4dbf97ad79ff005c4d9db4e8a943999e7c6ce495b6c4859bd853ed34179ee2f04ecd125aa19656c7450339fe5f9d7b469fe05b8b3d1aeff7b69379fb64b7914e3e61db27a8e07eb54f57b45974cf10da5ac3199e431c36ef8fbf0b346ce7f001c57553c4c4e1acaf751313c017b2c1e1bb0312e52d2f26924e704138207d483fad741e2886290849aed1268ae4c919404825b276fd3deb37c2be0dd6d7c32d6d710adacf753a5d4714c76bec0a07cc3f849c6403cfae2b27c4d65a8a971771bc533b47203bb2328e33b4f707f91ae3a9caeab527d4dbce27697bade94ba6e91a5dc5cf97791c6d33a842c06481c91d3a53b58d323874317f05dc3227966e155324ba81fa74ef5c0f8d76dddbc5acdb811dce9d318e4c71e64640de3df1cb7fc04d775a1c8b71e0b8f79014c122e49ea32d5cf568469da5f2febe46b4eacadca9e9fe66f7816e23bff0cda5da8fdd92f827b0ce6b8a827f22eed6377d88629e50f9e0a0c720fd0d2787df508be0947696f1ba5fcfbe00acde5b2863c9c9e876e6b6e4d264bff0a5fda5ac21751b7b6fb45ba91cf03e603d88a6a2a12714efab467257bb65dbed6b53d6ae4fd9126b9b9930d2155c601fbaa7b0007273eb5775bf0dbde581b7d70ac3207051e1c33c2ffde52463907e872456fe973dbdde9329f0d5a79a96f210f140ca0f2323209193cf7cd713ab788355baba7b7d4ec2e74d019614fb4c7cc9df70e7a01e9fd2ae54e72fde24fd7a1842a6bc8acbcba8ed6bc33a5c314504777362e2559400ebb8f0d9ede848c563df786a6d26dbc3ba7c53cf73a2866c3c984666192165c74001c8231923f39cac32957326eb98b8850b7cec73db3dff0041f4ac9d5f55bd935b36baa4e197679b188c948d874cfe1dfdff000a4dca51e5dce9842d24ee749034974cda7c7679b48e6063739cbf182c4e78fa5743a45e5bda5ec973797d034b006da1a400b20072307b633d3f2ae3fc3f32ad95fcef2ecb7b4825b9b9981d8140438009fc0fd6ab0ba82fbc0f6c753b878f509227966c123ccc2ffac66e39dd9c28383e9daa28e1dc9f32d1263ab24bdcfeb536347b1d3fc356505aa4924f6d1664264407716392777a9f4f6ac8d6d5ee3539759884aa9304b64b48ca18c2027f785783e66093c633c0c1eb534b34817ca2c4aa6586ee73c7439e0f4ef5cfea1144fa8c7be20448ab360330c30e98c1fe79aec84b56df5381dddbc8d2d2f52b1371a8c979712d9c10b8b74694142d9504b64f6c9207d0d769a36afe166d3a2d51345b7d46eed50db477724bba29493f36558e090475038c903b8ae36d6d219b25d78910c6eb9cab29f5078ae43c57a42e95a6b47a7ddddc10dbab3a46aebb7241273c773cd5d06dcbf77a37e48751f324a7b7a9ec91eb1646610269a2381cf98624b70631dc7cbb48c7a5744ba92b40ce905c11c1db1822327dd0e71cd72ba2783f4bd2fc3f6be4b5fbbca373b3decb924e327e56007d00c565f8b2ded3c3a63b6b3b449c4e46e7bc9659db9f4dcc40fcab1b4a374a5a0fdc9d9db53fffd9ffed004850686f746f73686f7020332e30003842494d040400000000002c1c0267002035333631366337343635363435663566653663653466396638656630646536361c020000020004ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc0001108003c003003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f9f34e8c9dc71c1200f735b36d6a491c75af5df851a2690fe0a54b8b48a6bad4e69e0796440c5517e5555f4e85beb5cfddf86edac6cec60916737539314b36ee03e48200e9c01d7d6be7b118a8a9b89f5b420a5b98d79e17bab1d0f4dd52631186fbee2a93b932bb9777d579e2b31ad48ec6bda7c5f0a5ff0085b4ef24111adeb322e3a2ac4500fcb15c8daf879aef77ef6da05520169a4dbf97ad79ff005c4d9db4e8a943999e7c6ce495b6c4859bd853ed34179ee2f04ecd125aa19656c7450339fe5f9d7b469fe05b8b3d1aeff7b69379fb64b7914e3e61db27a8e07eb54f57b45974cf10da5ac3199e431c36ef8fbf0b346ce7f001c57553c4c4e1acaf751313c017b2c1e1bb0312e52d2f26924e704138207d483fad741e2886290849aed1268ae4c919404825b276fd3deb37c2be0dd6d7c32d6d710adacf753a5d4714c76bec0a07cc3f849c6403cfae2b27c4d65a8a971771bc533b47203bb2328e33b4f707f91ae3a9caeab527d4dbce27697bade94ba6e91a5dc5cf97791c6d33a842c06481c91d3a53b58d323874317f05dc3227966e155324ba81fa74ef5c0f8d76dddbc5acdb811dce9d318e4c71e64640de3df1cb7fc04d775a1c8b71e0b8f79014c122e49ea32d5cf568469da5f2febe46b4eacadca9e9fe66f7816e23bff0cda5da8fdd92f827b0ce6b8a827f22eed6377d88629e50f9e0a0c720fd0d2787df508be0947696f1ba5fcfbe00acde5b2863c9c9e876e6b6e4d264bff0a5fda5ac21751b7b6fb45ba91cf03e603d88a6a2a12714efab467257bb65dbed6b53d6ae4fd9126b9b9930d2155c601fbaa7b0007273eb5775bf0dbde581b7d70ac3207051e1c33c2ffde52463907e872456fe973dbdde9329f0d5a79a96f210f140ca0f2323209193cf7cd713ab788355baba7b7d4ec2e74d019614fb4c7cc9df70e7a01e9fd2ae54e72fde24fd7a1842a6bc8acbcba8ed6bc33a5c314504777362e2559400ebb8f0d9ede848c563df786a6d26dbc3ba7c53cf73a2866c3c984666192165c74001c8231923f39cac32957326eb98b8850b7cec73db3dff0041f4ac9d5f55bd935b36baa4e197679b188c948d874cfe1dfdff000a4dca51e5dce9842d24ee749034974cda7c7679b48e6063739cbf182c4e78fa5743a45e5bda5ec973797d034b006da1a400b20072307b633d3f2ae3fc3f32ad95fcef2ecb7b4825b9b9981d8140438009fc0fd6ab0ba82fbc0f6c753b878f509227966c123ccc2ffac66e39dd9c28383e9daa28e1dc9f32d1263ab24bdcfeb536347b1d3fc356505aa4924f6d1664264407716392777a9f4f6ac8d6d5ee3539759884aa9304b64b48ca18c2027f785783e66093c633c0c1eb534b34817ca2c4aa6586ee73c7439e0f4ef5cfea1144fa8c7be20448ab360330c30e98c1fe79aec84b56df5381dddbc8d2d2f52b1371a8c979712d9c10b8b74694142d9504b64f6c9207d0d769a36afe166d3a2d51345b7d46eed50db477724bba29493f36558e090475038c903b8ae36d6d219b25d78910c6eb9cab29f5078ae43c57a42e95a6b47a7ddddc10dbab3a46aebb7241273c773cd5d06dcbf77a37e48751f324a7b7a9ec91eb1646610269a2381cf98624b70631dc7cbb48c7a5744ba92b40ce905c11c1db1822327dd0e71cd72ba2783f4bd2fc3f6be4b5fbbca373b3decb924e327e56007d00c565f8b2ded3c3a63b6b3b449c4e46e7bc9659db9f4dcc40fcab1b4a374a5a0fdc9d9db53fffd9, 'DISPONIBLE'),
(10, 'Soda light', 'bebidas', 4000, 0xffd8ffe000104a46494600010100000100010000ffdb0084000906070e120f10100d100f0f100d0d10100f101010100d0f0f101611161815111513181c3420181a251d131f213121252d2d2e2f2e17213338352d43282d312b010a0a0a0d0d0e1b10101b36261f262e2d2f313737352e3037372d302f2b353237332d2d2d2f2d37363530372d352d2d302d2d352d383537382d2d2f35372d3531ffc000110800e100e103011100021101031101ffc4001c0001000203010101000000000000000000000405010306020708ffc4004310000202010202040a05080b0100000000000102030411120521133141510607142261718191a1b123325272c13342435362c2d1e10815243435737482a2b2f163ffc400190101000301010000000000000000000000000102050304ffc4002c1101000103030303030305000000000000000102031104213105124151617132b1d11391f0152281c1e1ffda000c03010002110311003f00fb8800000000000000000000000000000000000000000000000000000000000000000000001a2db5a7a203cf492ef01d24bbc02bdeba3024800000000000000000000000000000000000000000011ac8b727a7a3e403a37dc03a37cc0f33adf5e9da04b00000000000000000000000000000000000000000002264e7d153fa6b6badbd74529462dfa975810ecf087097e993f546c97c90188f84784ff4def85abf740935716c69b5185f5b93ea8ef4a4fd49f302720320000000000000000000000000000000000000000021dd8754e6fa48465b631d355dee5afc80f0f83e37eaa3f1fe2063fa9b17f551f8ff00101670fa23b651ae29a9c39e9d8e493f8302c00000000000000000000000000000000000000000000d557d69fde4bfe117f881b0001a72ff00273f445bf773fc00de000000000000000000000000000000000000000000043c6be4e76a51e50b34ddaae6f6aec0246e9777c806e9777c808fc42d946a9bdbaf98f55b92e5a012ab7c97a97c80f400000000000000000000000000000000000000018934936f924b56056f03b1caa763fd3593b17a9be5f040580003565c375738fda8497bd01ab83647498f5c9f5eddb2f44a3e6bf8a026800000000000000000000000000000000000000053784395271f27ab9d972d26d7e655dadfafa8091851718c62baa292404c8c98072606ab64c0a8e1b73a2f9d73e55644f7572ec8dafae2fd60742000000000000000000000000000000000000008dc472e35552b25cf6ae4bed49f24bde043e1986d273b79db6bdd37e9ec8af42ea02c5440c80030e2045cdc38d907192e4d7bbd280d7c172e5253aad7f4b43db27f6e3f9b3f6816400000000000000000000000000000000000055f198294a8adf53b773ff6afe6058c6206581800000cb02ad45473135fa5a9a7ecff00c02d8000000000000000000000000000000000000ade26b4b6897629b5ef40582000600c81803d015962d72ebfd8ae4dfb7502d0000000000000000000000000000000000000a4f09ed94555b64a1ad8db6d27cd2e44c2b54e1af172ed71d656ebea4bf8159444cb4e4665ab5fa692f52fe45729ca1cf3723b3224f96bc936fdc90dccbc433f235d1e44f5ece4d6bef433224e3e75cf4fa793f63ebf4721932b185d6f472974bf5745ae9cbe45a119944e0d9164b29eeb14b5adeab6e8f969a7616f044ce5d290b80000000000000000000000000000000000287c2a968a9f39c7e91eba76ad09852b68c47e6fd693e5f674fc4aca21aef6f9e929ebeafe6552e6bc26e2b6c2d78f5592ad2f35ca2e4a764b5d35f3756db6f92ea4914b95cd33db0d8e9da2b77689bb5c662278fcf089c0b8dddd32ab22e94e9b77253939b963cd756926b5d35e4e2fb3e116ab9aa7b656ea5a2b56ad45db718de227df39df99fc7fbeaa99a8f3df6cfb35507526befd8d7c3526eddb56a3372b88f9963d34d557d3194ac5cfdf2b2b6d2fecf29a51dd25149afce6bce7def97ab96afc1a7ea546a753fa76be9889dfd67676aec4d16f3572f1c0dff69face5f472d355a771ade1e6a7975043a000000000000000000000000000000000003e65e3c38c65635386f16e952e775aa4e2a0f72518b5f593261130e5fc5ee7f14cc7659919d92b1e894612e8e353b6eb25ce3457e6e9abeb6fb17af94e159d9f4595f6ae5be342492d21159591feeb67e6a7ead4c9d4f59d1d899a73dd3edf9e1de8d35daf7e1cdf1178f65d3942f942fc59f9f2bf6cd39b82b3769e6a6d45a7aad743c5fd622b98aaab53113c6313e71bc6de78dda3a5aaab14d56f3989e638fda77ff3b2bf1f3b16ab656c24efbdcd422a98baebae762adadab57d6ad8bd57627da8e7a9d5ddb94cd36a268cf333b4e2339c444edbc6fbaf7751376229ab88e239dfde71bf3b6db373e299774d46987469dbb5cdc77ca1a466def93f37f356bb75ebd13e68c79b162889aae4e6719f9e38f3ebcb9f7d53b52b2e233b387f0accc895b257d957454c9bdf3e9e692dcb7772e7a7747abbf7fa3e96bef9bf553db18c531c6dce5e4d45718ec89cfab97f145e1267e47148d7939365d078f749c64ab4b7251d1f28a66fcbcb110fba109000000000000000000000000000000000007c93fa41fe4307fcebbfe9126079f17954a3c0612a36c6fbeecd7193ea53dceb527ecad2f537de63f59d4fe8daa699e2aaa2271cf6f9c7cbb69edf75533e6236f942ab2ece9553e4d7d3742ca1674e12e9a7663b85bb2c8d917ae8ec8e8fa9a4dfb306e5ab7db3722e44d3313d9b63139a731313e91c7897ae9aa738c6fe5618de0c4e7759738452f2ac7ba126ba59c6bae85075cec7d5abd79eac5aaefdea22dd9a66afedaa27c4666ace7d3ec9aa29a67354e378fb25f08f0770aa5d1d30f2897475d528d71f2a6e1094a50539bfa35a3975ebdddc8d38e97add44f75fafb7799c47acf3fcccbcf3a9b346d4465a38e78618183ba3294257eadf9362ca375fb9feb6fd3655d7cf6f9ddc69e9ba5e9ac4c4c466af59dffe438577ee5ce768f6709e1371ebf32a73bb48c2317d1530d557527d7a76b93ed93e6cd270f293e243fc5e1fe96ffdd2b2bbf44109000000000000000000000000000000000007c93fa41fe4307fcebbfe9126068f161357707e8376c78d997c67252d8eb8591e93a4d7b34d65cff64c6eb1a6b97bf4a2dc667bbcf1c79f677d3d74d3dd9f45e6566636254ef9cebc7aac96be5397badbf224975d58eb9cb9756bd9dc76b1d234f6f13723ba63f68f88e3ef3eee756a6e55f4ed0e238c78d1c6d74a31eecc92fab66759d152bd31c6afb3d0da34e31118871edcf2e7fc21f0838cdf57d3647475b8d125878b1963c542e8b956b6c16b27b746e3293e538f7e81688872f6f0fbaafca553825b357b5ed8b9c54a316d7252d1fd57cd76a03a1b7fbabfb85bc29e579e243fc5e1fe96ff00dd2b2bbf44109000000000000000000000000000000000007cd7c76703cbcaa713c929773aaeb37a8cab8b5ba2b4facd6bd44c0e47c5ff000be2b836d8b2787e5bc6c951af2211af7bda9f29adadead7776a6c9566143e1c70de31999d75f660e74e3ba50a52c6bdc6ba53f32315b792d39fadb2130a3ab81f14842cadf0ece942d95729c658796949d7bb6f38a4f4f3df2d7bbb904aca5671f937ae1667383835fd5d76de8deaba3d367d549e9a774629eba2061af3386f1dc84a36e0e6b5d2749fdcad8372d66f56f6f3e7649fae4df6b02d5f82bc52543847072b738e9a3aa51f996ca989caff00c51782bc471f89ab72b1674571c6b5373955aeb2dba2daa5afc0acaefb810000000000000000000000000000000000002b78f7e4a2fbad8013e00181800000f5d8056e1bd72aef4422be405a00000000000000000000000000000000000015dc797d03f44a2fe204cadf25ea4064000000640aee1dcf2321f76d5f002d000000000000000000000000000000000000085c663ae3d9ea4fdcd01b7165ac20fbe0be406c0000001902bb83f39e44bbedd3dda816800000000000000000000000000000000000047e20b5a6cd7f572f9011f85da9d35bfd84049dc03780dc037819735a010b803d6b9cbed5d3fc00b300000000000000000000000000000000000021f199698d7b7fa99fc62c0e7b8167695423dc9fcc0b3f2d4067cb17780f2c5de061e72034e4e7e917ea603c0a9eb8f35daaf97c63103a000000000000000000000000000000000000028bc32c8db8ae2baed9c61ecd757f2f881cfe04344bd08095393d4029303326d01e5c80c6526e3ed03778176edbafa9f54929af63d1fcfe0075e00000000000000000000000000000000000050785b8fbd51af65bf30345785b40d72c6e6063c9c03c601e4c06e58baad3403c707c550ccd7ff93f881d40000000000000000000000000000000000001038d52e556ab9bae4a7ee03646b8ca29aea924c0d53c5035f923ee01e4afb80f71c5037c31d202270eaf75f6d9d8b4ae3eceb02d4000000000000000000000000000000000000c496a9a7dab4020d95cabad282b25b7ec6d72f73034438843f3d5d1fbf0b23f801ebcbf1fedbf7cc0797e3fdb7ef98187c46ad3cd764beec6c9fe006dc4b272d7cdb92fdb4a1ee4f9fbc095898ea10515dedbf5b606e000000000000000000000000000000000000000000680c24064000000000000000000000000000000000000000000000000000000000000000000000000003fffd9, 'DISPONIBLE'),
(11, 'cocacola', 'bebidas', 1200, 0xffd8ffe000104a46494600010100000100010000ffdb0084000a060815130617151513181117191a1b151b171919171713171b17181918181719171a2b2b231a21281d1717243524282d313232321921443c44313b2b31322e010b0b0b0f0e0f1d11111d31232328323131312e3131333131313131313131313b312e313131313131313131312e312e3231393231313131352e31313131313131ffc000110800e100e103012200021101031101ffc4001c0001000203010101000000000000000000000507030406080201ffc400481000020102030406060508070900000000000102031104122105063141071351617181223291a1b1c114234252d124334362728292a234536373b2b3f1081516172693c2e1f0ffc4001a010100030101010000000000000000000000020304010506ffc400321100020103030203050705000000000000000102031121041231415105619132a1c1d1f0142223527181921342b1e1f1ffda000c03010002110311003f00b980000000000000000000000000001c46f36deab1de1950a72c918c149dad772959eaf8a4935c0e1368ef1e3238e9a589aa926d259e6ed67deca27a851e87b3a5f05a95e2a4e495d27d5e1979029dddade0c54abcf3622a4acaebd36edadb83baf7162ee5ed4962b6046a4ed9aee326b44dc79db95d34769d653c146b7c32a6956e724d638bf5bb5fe193a002e3cd0000000000000000000000000000000000000000000000000000002b1de0bbdf9c4369fa94d2b26fecc3b2f6389da50fcbe5a3f59fc59696d4d91296f23b4d43ae4e4da8a94ad1564bd2d168bdc619ee2c5cdb75e5abbfa94b9f91927a793f53e974fe35469249a788c57a249f7fd8e0f7563f94cf4bfa3c94a5cd7248b1fa2dbffc36effd6cedec8ffecd7a3b9fd5e69c6bc9349fe8e93bdb5b7b898dd0c23a7b2b5cb69373cb15649be3f05a7713a545c5abf999bc47c4e9ea69ca314f2e3eebfcc9d001a0f0c0000000000000000000000000000000000000000000000000001f8de8010ede6debfeee96be327f83259ad482dd69f5b8baf5f94e7962ff00563c3dd627ae01f2e374d76ab11dbb53becb51fb92941f93bfcc934f520b635454f782bd17a667d6c7e12f8c7d8013e00000000000000000000000000000000000000000000000000000071dd2aef17d0f77b2c6cead57d5c53fbbfa493b72cba78c91d6d59a8d37293514936dbe092d5b6501bd1b565b4f7b27535eaa3e8535d94e2f8f8c9dd83a8dcc36f9e3696cc4e2e9d28d9bcaa1ecd6e6b7fccfda0a2bd283babeb05dad7c8c3b629a7816b8705ef394c4facbf657beefe641e0be11ddca5e88ec574a5b42cdfd5e967ea71d52f99f50e90b14f6952af38d3938c95ed169e5e128f1e716d1c5e1e37935db17ee59be44ce0b65b96025f796b1f147164e4e3b4f48e07151ad8385483cd19c54e2fb5495d1b0559d09ef0de9cb0551eaaf5295fb38ce9f93f4978bec2d32c286ac000000000000000000000000000000000000000000000000015f74d1b75d1d851c3d376a95dd9db8aa6bd6fe2765e172b7d874943079bef70f05f8f136fa54da0eb6fed457bc695a9c7bb246f2fe7723e292cb422bb125ee23d4b12b2446ef1e22d18c173f49f970213131fae7dd65ec491bbb6679b68beeb234ea3bd46fbdfc4a252bb3d3a54d28a3f30aad898bef5efd19d2ec2af7a0e3ce2edf2f91cd129b22a5b69c92e0eefe67612c90af4d6db9b3899cf0db7215a9bcb2525523e29eb1f07c3ccf41ec4da11c46c9a75a1ead48a9785f8af2775e4507b755f009fdd6bdfa163741b8e73ddeab45bbf5553d1ee8d4574bf8a32f697a3ce9655cb1000748000000000000000000000000000000000000000000000141efaec3bef8d7975b6cd564ed96ed5debadfbc9096c64bf4927fba66df47ff54d5fef1fc498c3ed274e924a319656da72bd966567a2b72baf331aa926de4faf9f86e9e3469ca34eeda57bc9ae8bcfb95fed1d86de31eb3d75568f14b9aed5de6bbd87aa579de5faaaeefc3c4ec715bcd28e2147ab8bca925acd3d3265f55a76fab8fbfbada1577826eb41e54b2271495d5f34141ebc6f9571e5e452e7e66d8e8d597e0ae3f33ecedeb8fd2fd7a738f61fa37729a5aabe556bae2bcacfd86eec9d8b6c6abca4b47c636e44e2de79e4b648e8db5c5f18ce3adf8e93e7d9decdbd9bbc52962add5a49defeb3be915ab7c5fa29dfb91d8cb3cfb88cf469c1de82e3a4d917b676227b39fd635aafb275dd09ecdea70f8879f3e674d7ab96d653fc48dde3c6f59b35de2a2d3e4ddb8455acfba2b99d17449fd06b78c3e122f84e4e695cf2f59a1a10d0caaa86d926bab7d579d9fa1dc800d47cc800000000000000000000000000000000000000000000154ed6c046aef7e22551b54e949d49be0ec9a4a317db26d25e66c6d87078584a3054f366d12959453b45394bd7968ddd769bfb470d196d3a907a2a98994a6ffb3c3d3cf25fcfee36a5384b072ad38bb432ce34ddb227972d2825d8d5a56b7da5c4c6a3c9f5b3d434a9dd36928a4979ab2c756e5757e128c78bbbd69b570d38e22f28c92936e2f549a5cd37f230d4c0d450bb84b8277716959f077b70677f4ea4a78355eb43ac79daa50776ead493f42567f652d125d8df61a9bc556b28d3a509669e78ca736ef9ebbb37085f47182cbdcb42974f17bfbbebebf637c3c46a39c696d5cb4ddf18e6cedd309b7fdced65696de5b64ec5ab5f1fd5a4e16d64e69c6315f79b7c3b9733a8d9d85c2d3c446308aaaaee2eacdbbcb2abce514b48c6315eb6adbe1c2e6ced9854fa37d1a9cb3549c7adc45693b5a2d59e697d94f859f2b7690fb2e8d5759d1cb04a104a55aef2e46f3c6f27a24dcd3d15de9d84b6a834b97f1edf3667fb4cb5507394b6c7a4536b1c6e6f0f32b6d8e1dba5de25e787a38bd9ee9e5542a2b34e399d3925acae9b6d595df1e4745b93838d19568474b385e37bb5a492cdcb334b334b459883c3e05c3654b4bcea4fa949738c5fa493e59a4b2df92ccf912bd1f61e54faf5371949ba73bc5de2f3c65256e1c9dfccba1edac1e7eb5df4d55467f753f66f7eb1be7b278b3bb5d1a4da3b0001a8f9b0000000000000000000000000000000000000000000002bbde2af529ed2eb2953eb5aad5e0e395ca379c29dae9777c0c981955ea2709753e9b537d74a29a969ae4bdf92d1ae4406f8e2ea4378abc6129c23297a494a4a2fc62b89f53f54c3bbef33ed7ecc9d0a6da594b3677fccbaae1b64f62618da746196342ae46e4bd67377bf0724b949faa406ede2a75b7c93aeb24e2a5685aca32e364b93bb6fb5b2036ae2ea4b1195d495a3a24dbb25c6d6e5c4d678b9f5ca599e68f3d732b70b3ee232ab95ce1f7ff4594fc2dff4a69ecbca2d6e8c76b57bf9b4f9ce15bcd1d96d3a957afaf0945d1a72a8dd4ad24d5e09aeae9c1fda6d2d16b7bf25724abc5d1a7495a3184a3d6d44f58d49b56a7462f8bca92f04afe35f6336855acd75956752dc2ee4ede19b81bdb3b1b56a62e3d65473ca9c6399bf45724afc391c5533ff003ebe99d7e1b25185dc6cb2d24f2f6a49a77bdf0ad7c46d1dab19b2b178594a6d24d25185056e11eb3f3d5573be57249f69f5b9553363314d69f59156fbb652597c959791c56d5c6d55836fad9a6da775395f4d16bdc8e9ba25fe815bf6a3f065f19dea23cad468e74b4339ca49f0b0add62de7cde7f56d9dc000d47cd0000000000000000000000000000000000000000000001e77e90317596fbe263d638a552565a592b271e3dd637a38eabd5af4efa2e51fc0f9e9930bd5efdd4972a9084fdb0c8fdf034b0956f838bee21b576362d4564925397abf9919b4f1f53e9f2f4f9fdd87e06b3c7d54fd7fe58fe07eed75f974bc99ad53f38ccce2ae7ad1d4d7b2fc497f27f333fd3eafdffe587e06fec6c7555b42dd6704fecc39791134d7d62f1448ec87f945ff006bded1d8c55f8215b555f63fbf2fe4fe64aedec755fa0a5d635792e4bbcee3a05af52783c4e7939252a76bf6da77f915bedeabe8c57749fbac8b5ba0ac2e5dd29cff00acab26bc2318c7e2a469495cf26a55ab285a526d766d9608009198000000000000000000000000000000000000000000000a87a7fc1db1986adc9c6549feeb525fe291c26c9a9f925bb3fd3e45b9d386133ee5e7e74ea425e52bc1ff008914eec7d54979fb7522f92e866261da33cd897e16304fd6f67c0d8c751cb5bc753034657c9eb53f6533e63eb1930b5b2d65ff00dc4f948fac35073ae92f33b0e4856f619936ad5cd897dc92f99e83e8eb05d4ee561e16b374d4df8d46e7ff0091e7b8507536ac69ae33a8a1ed6a2be27a8685350a118ae114a2bc12b234a3cba9d11940048a8000000000000000000000000000000000000000000000e4ba5b69747f5eff00d9dbc7ad858a4b77609ce5fb28b3ba79da6a3b1a9e193d6a4b3c97eac387b64d7f095c6ef53b5193f08ff0ab7c6e45f2591f64d6de09a8d68aee6c8d9555a781b1bcb2be3d2ec8af8b2367c7c97c0aa504d9b69d6928a36e9d559bc9fc1933b0529517dcd7c11ce50fcefb7e0c9cdd69facbba2fe28ec2293235aaca51b19763c5477ce8df87d229ff009b13d2c79876b5e1b5732d1a719a7ec69fb627a3f6163e389d8d4eb478548297836b55e4eebc8b518e777666f800e900000000000000000000000000000000000000000000003cf5d27ed1788df6abcd53975515cbeaf47ed95cfdd9f472e0e2bcc84db8dade7ad7d1f5d553ff00bb2bfc0cef6d2eb2c96840d318dec88fdafe96d09befb7b3435ea43d3f67c0d9c6cd4ab392e6616f533b6ee7a11846c7c51a7f5cbc51bdbbaedb42dda9af99a69ea6d60f10a9d573e7c8ec64ee7274d34c90de4a5ea4ff0075fc5166f417b4dcf60d5a0dddd29e68fecd4bbb7f1465ed2a4c56d3eb2838b5debc51def400dffbe311d9d5c5bf1cfa7ccd0b93ce9ab44b940048a0000000000000000000000000000000000000000000000f39f4a780ea37e6bab594e5d6aef555667fcd9d791cad37e917274ebb1d4b0f4b14becde94fc1fa50f7e65e68a6541b9e88aa4f2d1ba9c5ec52eff033c9e9a7146bf5acc917e9df9f3461a91b5468e25dc9ca6f9464558c99aecc1495e6668537295a3abe6f920ec8e294a5c98f37a65cbfecfd81b6cdc4566bd69c69afdc8b94bfcc5ec29f85071c5657a9e94dc5d93f44dd6a34ad67973cbb734de697b2f6f225069bc15578b8c6efbdbe24f800b0c8000000000000000000000000000000000000000000000466f1ecb8e2f6254a13d14e364f8e592d6325e1249f914b50e8e768d3c64975119ae0a71a90c8fbfd269af617e02138292b32da75a54f82afdd2e8b29c6b75b8db55972a306faa5df3968e6fbb45e255dbf5b33e89bd55a8c9648a9b9434b274e4f341c6fc559dbc533d427c4e09f149f8ab9d514959055a576df53ce5d156ef471fbcca3520e7461194ea59c92e19611cf1e0dc9a7c6f68b3b2db1d1755a5886f0938d5a6ddf254965ab0eecdeacd78d9f8f12dc8c525a24bc343e8e4a1192b33b1af38cb744a6b75fa36c4bde6855c4c610a54e4a6e39d4e751c758c6d1d12bdaf77c1779728076315156442a5494dde40004880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001fffd9, 'DISPONIBLE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `usuario`, `password`) VALUES
(1, 'administrador', 'lamesadivina'),
(2, 'federico', 'federico'),
(3, 'pablo', 'pablo'),
(4, 'andres', 'andres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detallepedidos`
--
ALTER TABLE `detallepedidos`
  ADD KEY `fk_pedidos_detallepedidos` (`id_pedidos`),
  ADD KEY `fk_pedidos_producto` (`id_producto`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `mesero`
--
ALTER TABLE `mesero`
  ADD PRIMARY KEY (`id_mesero`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`),
  ADD KEY `fk_pedidos_mesero` (`id_mesero`),
  ADD KEY `fk_pedidos_mesa` (`id_mesa`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mesero`
--
ALTER TABLE `mesero`
  MODIFY `id_mesero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallepedidos`
--
ALTER TABLE `detallepedidos`
  ADD CONSTRAINT `detallepedidos_ibfk_1` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos` (`id_pedidos`),
  ADD CONSTRAINT `detallepedidos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_mesero`) REFERENCES `mesero` (`id_mesero`);
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `stock`, `estado`) VALUES
(10, 'cereales', 4500, 70, 1),
(11, 'pulpa de fruta - mango', 2000, 20, 1),
(12, 'papas', 4000, 37000, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Base de datos: `univalle`
--
CREATE DATABASE IF NOT EXISTS `univalle` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `univalle`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `correo`, `password`) VALUES
(1, 'joselopez', 'alfa@gmail.com', 'jose'),
(2, 'alfa', 'alfa@gmail.com', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `virtual_tienda`
--
CREATE DATABASE IF NOT EXISTS `virtual_tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `virtual_tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Harinas', 'trigo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_proveedor` bigint(20) UNSIGNED NOT NULL,
  `id_cliente` bigint(20) UNSIGNED NOT NULL,
  `fecha_compra` datetime NOT NULL,
  `impuesto` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `estado` enum('VALIDO','CANCELADO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VALIDO',
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_compra` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_21_093143_create_categorias_table', 1),
(6, '2023_02_21_105220_create_proveedors_table', 1),
(7, '2023_02_21_125913_create_productos_table', 1),
(8, '2023_02_21_203101_create_clientes_table', 1),
(9, '2023_02_21_234742_create_compras_table', 1),
(10, '2023_02_21_235104_create_detalle_compras_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_proveedor` bigint(20) UNSIGNED NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `estado` enum('HABILITADO','DESHABILITADO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'HABILITADO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_proveedor`, `id_categoria`, `codigo`, `nombre`, `stock`, `imagen`, `precio`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '50050', 'Pan Bimbo', 20, '', '5000.00', 'HABILITADO', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedors`
--

CREATE TABLE `proveedors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedors`
--

INSERT INTO `proveedors` (`id`, `numero_identificacion`, `nombre`, `direccion`, `telefono`, `created_at`, `updated_at`) VALUES
(1, '9006894567', 'Diego Alberto', 'Bogotá', '3006547892', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_nombre_unique` (`nombre`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_identificacion_unique` (`identificacion`),
  ADD UNIQUE KEY `clientes_telefono_unique` (`telefono`),
  ADD UNIQUE KEY `clientes_email_unique` (`email`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_id_proveedor_foreign` (`id_proveedor`),
  ADD KEY `compras_id_cliente_foreign` (`id_cliente`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_compras_id_compra_foreign` (`id_compra`),
  ADD KEY `detalle_compras_id_producto_foreign` (`id_producto`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productos_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `productos_nombre_unique` (`nombre`),
  ADD KEY `productos_id_proveedor_foreign` (`id_proveedor`),
  ADD KEY `productos_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `proveedors`
--
ALTER TABLE `proveedors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proveedors_nombre_unique` (`nombre`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proveedors`
--
ALTER TABLE `proveedors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compras_id_proveedor_foreign` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedors` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_id_compra_foreign` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_compras_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_id_proveedor_foreign` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
