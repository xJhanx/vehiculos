-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-07-2021 a las 22:57:48
-- Versión del servidor: 5.7.35
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `operac_services`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renovacion_contrato` date DEFAULT NULL,
  `fin_contrato` date DEFAULT NULL,
  `inicio_contrato` date DEFAULT NULL,
  `arl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eps` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcional_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `nombre`, `apellido`, `tipo_identificacion`, `identificacion`, `renovacion_contrato`, `fin_contrato`, `inicio_contrato`, `arl`, `eps`, `cc`, `email`, `ciudad`, `departamento`, `direccion`, `barrio`, `telefono`, `opcional_telefono`, `fullname`, `created_at`, `updated_at`) VALUES
(11, 'ADMINISTRADOR', 'sas', 'Cedula', '1234567892', '2021-07-15', '2021-07-31', '2021-07-01', 'SURA', 'COOMEVA', 'CONFAMA', 'mdgrisalez@misena.edu.co', 'Barrancabermeja', 'Santander', 'Direccion', 'Barrio', '3172603279', NULL, NULL, '2021-07-19 07:14:29', '2021-07-19 07:14:29'),
(12, 'Jeferson', 'Torres', 'Cedula', '1096231702', NULL, '2021-12-31', '2021-07-22', 'Positiva', 'Nueva EPS', 'Cafaba', 'gerencia@operacionsistemica.com', 'Barrancabermeja', 'Santander', 'Carrera 22 No. 35a - 04', 'Isla del zapato', '3015739461', NULL, NULL, '2021-07-22 19:06:06', '2021-07-22 19:06:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autopartes`
--

CREATE TABLE `autopartes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_factura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_unidad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moneda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehiculo_id` int(10) UNSIGNED DEFAULT NULL,
  `proveedor_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `autopartes`
--

INSERT INTO `autopartes` (`id`, `nombre`, `descripcion`, `referencia`, `cantidad`, `num_factura`, `valor_unidad`, `moneda`, `vehiculo_id`, `proveedor_id`, `created_at`, `updated_at`) VALUES
(4, 'CINTA AISLANTE NEGRA GRANDE', 'FECHA: 30/05/2020', '207-001', '20', '5135', '2.594', NULL, NULL, 6, '2020-06-06 02:49:39', '2020-06-06 02:49:39'),
(5, 'PORTA ESCOBILLA ARRANQUE HINO 500 HONDA', 'FECHA: 30/05/2020', '223-125', '4', '5135', '15.000', NULL, NULL, 6, '2020-06-06 02:51:57', '2020-06-06 02:51:57'),
(6, 'PORTA ESCOBILLA ARRA MERCEDEZ SPRINTER', 'FECHA: 30/05/2020', '223-78', '1', '5135', '27.000', NULL, NULL, 6, '2020-06-06 02:52:53', '2020-06-06 02:52:53'),
(7, 'CUBRE BALINERA ALTERNADOR BOSCH', 'FECHA: 30/05/2020', '46-91553', '10', '5135', '5.142', NULL, NULL, 6, '2020-06-06 02:54:08', '2020-06-06 02:54:08'),
(8, 'AMARRES PLASTICOS 30 CMS', 'FECHA: 30/05/2020', '247-011', '2', '5134', '18.931', NULL, NULL, 6, '2020-06-06 02:55:00', '2020-06-06 02:55:00'),
(9, 'AMARRES PLASTICOS 40 CMS', 'FECHA: 30/05/2020', '247-013', '2', '5134', '26.870', NULL, NULL, 6, '2020-06-06 02:57:34', '2020-06-06 02:57:34'),
(10, 'BALINERA 608', 'FECHA: 30/05/2020', '6-608', '10', '5134', '3.857', NULL, NULL, 6, '2020-06-06 02:58:11', '2020-06-06 02:58:11'),
(11, 'BALINERA ALTERNADOR 6002 WAI', 'FECHA: 30/05/2020', '6-6002', '10', '5134', '7.327', NULL, NULL, 6, '2020-06-06 02:58:56', '2020-06-06 02:58:56'),
(12, 'BALINERA ALTERNADOR 6003', 'FECHA: 30/05/2020', '6-6003', '10', '5134', '8.063', NULL, NULL, 6, '2020-06-06 02:59:34', '2020-06-06 02:59:34'),
(13, 'BALINERA ALTERNADOR 6201 WAI', 'FECHA: 30/05/2020', '6-6201', '10', '5134', '4.396', NULL, NULL, 6, '2020-06-06 03:00:22', '2020-06-06 03:00:22'),
(14, 'BALINERA 6202', 'FECHA: 30/05/2020', '6-202-4W MIL', '10', '5134', '6.428', NULL, NULL, 6, '2020-06-06 03:01:03', '2020-06-06 03:01:03'),
(15, 'BALINERA ALTERNADOR CHORROTE', 'FECHA: 30/05/2020', '6203-4W MIL', '10', '5134', '6.428', NULL, NULL, 6, '2020-06-06 03:08:57', '2020-06-06 03:08:57'),
(16, 'BALINERA', 'FECHA: 30/05/2020', '6302 NSK', '8', '5134', '11.750', NULL, NULL, 6, '2020-06-06 03:09:35', '2020-06-06 03:09:35'),
(17, 'BALINERA ALTERNADOR', 'FECHA: 30/05/2020', '6303', '10', '5134', '9.639', NULL, NULL, 6, '2020-06-06 03:10:12', '2020-06-06 03:10:12'),
(18, 'BALINERA ALTERNADOR HITACHI', 'FECHA: 30/05/2020', '10-1050', '5', '5134', '6.596', NULL, NULL, 6, '2020-06-06 03:10:53', '2020-06-06 03:10:53'),
(19, 'ELEVADOR 4P 24VOLT', 'FECHA: 30/05/2020', 'LP-424/4RA-965400-0', '10', '5134', '8.100', NULL, NULL, 6, '2020-06-06 03:11:45', '2020-06-06 03:11:45'),
(20, 'ELEVADOR 5P 12VOLT', 'FECHA: 30/05/2020', '4RD-933-332-361', '9', '5134', '7.681', NULL, NULL, 6, '2020-06-06 03:12:37', '2020-07-06 19:04:27'),
(21, 'FUSIBLE ATOF-20 AMP', 'FECHA: 30/05/2020', '12020-000-SI208', '50', '5134', '403', NULL, NULL, 6, '2020-06-06 03:14:08', '2020-06-06 03:14:08'),
(22, 'FUSIBLE ATOF-25 AMP', 'FECHA: 30/05/2020', '12025-000-SI208', '50', '5134', '403', NULL, NULL, 6, '2020-06-06 03:15:02', '2020-06-06 03:15:02'),
(23, 'FUSIBLE ATOF-30 AMP', 'FECHA: 30/05/2020', '12030-000SI208', '50', '5134', '403', NULL, NULL, 6, '2020-06-06 03:16:55', '2020-06-06 03:16:55'),
(24, 'FUSIBLE MINI -10 AMP', 'FECHA: 30/05/2020', '12010-000-SI203', '50', '12010-000SI203', '403', NULL, NULL, 6, '2020-06-06 03:17:52', '2020-06-06 03:17:52'),
(25, 'FUSIBLE MINI -15 AMP', 'FECHA: 30/05/2020', '12015-000SI203', '50', '5134', '403', NULL, NULL, 6, '2020-06-06 03:18:35', '2020-06-06 03:18:35'),
(26, 'FUSIBLE MINI 20 AMP', 'FECHA: 30/05/2020', '12020-000SI203', '50', '5134', '403', NULL, NULL, 6, '2020-06-06 03:19:37', '2020-06-06 03:19:37'),
(27, 'FUSIBLE MINI 25 AMP', 'FECHA: 30/05/2020', '12025-000SI203', '50', '30/05/2020', '403', NULL, NULL, 6, '2020-06-06 03:21:21', '2020-06-06 03:21:21'),
(28, 'FUSIBLE MINI 30 AMP', 'FECHA: 30/05/2020', '12030-000-SI203', '50', '5134', '403', NULL, NULL, 6, '2020-06-06 03:22:08', '2020-06-06 03:22:08'),
(29, 'TERMINAL DE ENCHUFE', 'FECHA: 30/05/2020', '094P', '100', '2838', '110', NULL, NULL, 6, '2020-06-06 03:22:47', '2020-06-06 03:22:47'),
(30, 'PROTECTOR DE ENCHUFE', 'FECHA: 30/05/2020', '094C', '100', '2838', '110', NULL, NULL, 6, '2020-06-06 03:29:11', '2020-06-06 03:29:11'),
(32, 'EXTINTOR 10 LIBRAS', 'RECARGA DE 2 EXTINTORES DE 10 LIBRAS', '10', '2', '3661', '12.000', NULL, NULL, 15, '2020-06-08 18:37:10', '2020-06-08 18:37:10'),
(33, 'EXTINTOR 10 LIBRAS', 'RECARGA DE 4 EXTINTORES', '222', '4', '22', '12.000', NULL, NULL, 15, '2020-06-08 18:40:42', '2020-06-08 18:40:42'),
(34, 'EXTINTOR DE 20 LIBRAS', 'RECARGA DE EXTINTOR', '2222', '1', '22', '20.000', NULL, NULL, 15, '2020-06-08 18:41:30', '2020-06-08 18:41:30'),
(35, 'POWER PRO IV PP401AS - PUNTA LOGICA', 'COMPRA DE POWER PRO IV PP401AS - PUNTA LOGICA', 'PPRPPIV', '1', 'FET23', '1.272.689', NULL, NULL, 41, '2020-06-10 18:19:05', '2020-06-10 18:19:05'),
(36, 'CORREA 17500', 'CORREA 17500', '17500', '4', '0655', '18.700', NULL, NULL, 42, '2020-06-10 18:30:24', '2020-06-10 18:30:24'),
(37, 'CORREA 17505', 'CORREA 17505', '17505', '4', '0655', '18.700', NULL, NULL, 5, '2020-06-10 18:31:28', '2020-06-10 18:31:28'),
(38, 'CORREA 17435', 'CORREA 17435', '17435', '3', '0655', '17.400', NULL, NULL, 5, '2020-06-10 18:31:57', '2020-07-06 19:16:16'),
(39, 'CORREA 22400', 'CORREA 22400', '22400', '-1', '0655', '21.200', NULL, NULL, 5, '2020-06-10 18:32:24', '2020-07-07 03:48:36'),
(40, 'CORREA 22375', 'CORREA 22375', '22375', '2', '0655', '19.700', NULL, NULL, 5, '2020-06-10 18:32:54', '2020-06-10 18:32:54'),
(41, 'CORREA 22470', 'CORREA 22470', '22470', '1', '0655', '24.850', NULL, NULL, 5, '2020-06-10 18:33:24', '2020-06-10 18:33:24'),
(42, 'CORREA 22540', 'CORREA 22540', '22540', '1', '0655', '28.600', NULL, NULL, 5, '2020-06-10 18:33:57', '2020-07-06 18:43:12'),
(43, 'CORREA 22625', 'CORREA 22625', '22625', '2', '0655', '33.100', NULL, NULL, 5, '2020-06-10 18:34:28', '2020-06-10 18:34:28'),
(44, 'CORREA 22590', 'CORREA 22590', '22590', '2', '0655', '31.300', NULL, NULL, 5, '2020-06-10 18:36:30', '2020-06-10 18:36:30'),
(45, 'CORREA 22485', 'CORREA 22485', '22485', '2', '0655', '25.400', NULL, NULL, 5, '2020-06-10 18:37:10', '2020-06-10 18:37:10'),
(46, 'CORREA 17495', 'CORREA 17495', '17495', '4', '0654', '17.700', NULL, NULL, 5, '2020-06-10 18:45:30', '2020-06-10 18:45:30'),
(47, 'CORREA 17375', 'CORREA 17375', '17375', '2', '0654', '14.700', NULL, NULL, 5, '2020-06-10 18:46:05', '2020-07-07 03:34:51'),
(48, 'CORREA 17490', 'CORREA 17490', '17490', '4', '0654', '18.500', NULL, NULL, 5, '2020-06-10 18:46:33', '2020-06-10 18:46:33'),
(49, 'CORREA 17385', 'CORREA 17385', '17385', '3', '0654', '15.000', NULL, NULL, 5, '2020-06-10 18:48:06', '2020-06-20 03:02:23'),
(50, 'CORREA 17475', 'CORREA 17475', '17475', '4', '0654', '19.100', NULL, NULL, 5, '2020-06-10 18:48:35', '2020-06-10 18:48:35'),
(51, 'CORREA 17485', 'CORREA 17485', '17485', '4', '0654', '19.100', NULL, NULL, 5, '2020-06-10 18:49:05', '2020-06-10 18:49:05'),
(52, 'CORREA 17400', 'CORREA 17400', '17400', '4', '0654', '15.400', NULL, NULL, 5, '2020-06-10 18:49:42', '2020-06-10 18:49:42'),
(53, 'CORREA 17425', 'CORREA 17425', '17425', '4', '0654', '18.100', NULL, NULL, 5, '2020-06-10 18:50:08', '2020-06-10 18:50:08'),
(54, 'CORREA 17295', 'CORREA 17295', '17295', '4', '0654', '12.600', NULL, NULL, 5, '2020-06-10 18:50:35', '2020-06-10 18:50:35'),
(55, 'CORREA 17430', 'CORREA 17430', '17430', '4', '0654', '16.400', NULL, NULL, 5, '2020-06-10 18:51:08', '2020-06-10 18:51:08'),
(56, 'CORREA 22440', 'CORREA 22440', '22440', '2', '0656', '23.300', NULL, NULL, 5, '2020-06-10 18:51:45', '2020-06-10 18:51:45'),
(57, 'CORREA 22610', 'CORREA 22610', '22610', '2', '0656', '32.400', NULL, NULL, 5, '2020-06-10 18:52:11', '2020-06-10 18:52:11'),
(58, 'CORREA 7PK1125', 'CORREA 7PK1125', '7PK1125', '2', '0656', '29.600', NULL, NULL, 5, '2020-06-10 18:52:42', '2020-06-10 18:52:42'),
(59, 'CORREA 6PK2210', 'CORREA 6PK2210', '6PK2210', '2', '0656', '47.400', NULL, NULL, 5, '2020-06-10 18:53:15', '2020-06-20 00:18:02'),
(60, 'CORREA 5PK1015', 'CORREA 5PK1015', '5PK1015', '2', '0656', '19.600', NULL, NULL, 5, '2020-06-10 18:53:49', '2020-06-10 18:53:49'),
(61, 'CORREA 5PK 1005', 'CORREA 5PK 1005', '5PK1005', '2', '0656', '19.500', NULL, NULL, 5, '2020-06-10 18:54:22', '2020-06-10 18:54:22'),
(62, 'TURBOS CHIMITA', 'GARANTIA DE 4 MESES POR PASO DE ACEITE', 'MERCEDEZ SPRINTER', '1', '369', '2.100.000', NULL, NULL, 43, '2020-06-19 00:57:16', '2020-06-19 00:57:16'),
(63, 'LLANTA REENCAUCHE 235/75R17.5', 'LLANTA REENCAUCHE 235/75R17.5 - LLANTAS PROCEDENTES DEL VEHICULO TAR-383', '235/75R17.5', '1', '1286', '275.000', NULL, NULL, 45, '2020-07-08 18:25:30', '2020-07-08 19:28:26'),
(64, 'LLANTA REENCAUCHE 215/75R17.5', 'LLANTA REENCAUCHE 215/75R17.5 - LLANTAS PROCEDENTES DEL VEHICULO TAR-400', '215/75R17.5', '2', '1287', '279.999', NULL, NULL, 45, '2020-07-08 18:26:43', '2020-07-08 19:28:05'),
(65, 'LLANTA REENCAUCHE 215/75R17.5', 'LLANTA REENCAUCHE 215/75R17.5 - LLANTAS PROCEDENTES DEL VEHICULO TAR-428', '215/75R17.5', '2', '1288', '279.999', NULL, NULL, 45, '2020-07-08 18:28:01', '2020-07-08 19:27:41'),
(66, 'LLANTA REENCAUCHE 215/75R17.5 - TAR-401', 'LLANTA REENCAUCHE 215/75R17.5 - TAR-401', '215/75R17.5', '1', '1289', '280.000', NULL, NULL, 45, '2020-07-08 19:27:08', '2020-07-08 19:27:08'),
(67, 'LLANTAS REENCAUCHE REF: 9.5R17.5', 'LLANTAN PROCEDENTES DEL VEHICULO SOI-490', '9.5R17.5', '2', '1285', '275.000', NULL, NULL, 45, '2020-07-08 19:29:59', '2020-07-08 19:29:59'),
(68, 'CORREA 22490 - 07/07/2020', 'CORREA 22490 - 07/07/2020', 'CORREA 22490', '4', '1116', '27.500', NULL, NULL, 42, '2020-07-10 19:24:04', '2020-07-10 19:24:04'),
(69, 'CORREA 22535 - 02/07/2020', 'CORREA 22535 - 02/07/2020', '22535', '6', '1116', '30.250', NULL, NULL, 42, '2020-07-10 19:25:11', '2020-07-10 19:25:11'),
(70, 'CORREA 22545 - 02/07/2020', 'CORREA 22545 - 02/07/2020', '22545', '1', '1116', '31.000', NULL, NULL, 42, '2020-07-10 19:27:07', '2020-07-10 19:27:07'),
(71, 'CORREA 22540 - 02/07/2020', 'CORREA 22540 - 02/07/2020', '22540', '5', '1116', '31.000', NULL, NULL, 42, '2020-07-10 19:27:49', '2020-07-10 19:27:49'),
(72, 'CORREA 22480 - 02/07/2020', 'CORREA 22480 - 02/07/2020', '22480', '4', '1116', '31.900', NULL, NULL, 42, '2020-07-10 19:29:25', '2020-07-10 19:29:25'),
(73, 'CORREA 22375 - 02/07/2020', 'CORREA 22375 - 02/07/2020', '22375', '6', '1116', '20.900', NULL, NULL, 42, '2020-07-10 19:30:16', '2020-07-10 19:30:16'),
(74, 'CORREA 22485 - 02/07/2020', 'CORREA 22485 - 02/07/2020', '22485', '4', '1116', '29.700', NULL, NULL, 42, '2020-07-10 19:31:46', '2020-07-10 19:31:46'),
(75, 'CORREA 22400 - 02/07/2020', 'CORREA 22400 - 02/07/2020', '22400', '6', '1116', '22.000', NULL, NULL, 42, '2020-07-10 19:34:14', '2020-07-10 19:34:14'),
(76, 'CORREA 17475 - 02/07/2020', 'CORREA 17475 - 02/07/2020', '17475', '4', '1116', '19.800', NULL, NULL, 42, '2020-07-10 19:35:15', '2020-07-10 19:35:15'),
(77, 'CORREA 17435 - 02/07/2020', 'CORREA 17435 - 02/07/2020', '17435', '6', '1116', '18.700', NULL, NULL, 42, '2020-07-10 19:36:34', '2020-07-10 19:36:34'),
(78, 'CORREA 17490 - 02/07/2020', 'CORREA 17490 - 02/07/2020', '17490', '6', '1116', '23.000', NULL, NULL, 42, '2020-07-10 19:37:46', '2020-07-10 19:37:46'),
(79, 'CORREA 17385 - 02/07/2020', 'CORREA 17385 - 02/07/2020', '17385', '6', '1116', '15.950', NULL, NULL, 42, '2020-07-10 19:38:47', '2020-07-10 19:38:47'),
(80, 'CORREA 15425 - 02/07/2020', 'CORREA 15425 - 02/07/2020', '15425', '2', '1117', '14.300', NULL, NULL, 42, '2020-07-10 20:28:04', '2020-07-10 20:28:04'),
(81, 'CORREA 8PK-1525 - 02/07/2020', 'CORREA 8PK-1525 - 02/07/2020', '8PK-1525', '2', '1117', '79.200', NULL, NULL, 42, '2020-07-10 20:29:01', '2020-07-10 20:29:01'),
(82, 'CORREA 8PK-1015 - 02/07/2020', 'CORREA 8PK-1015 - 02/07/2020', 'CORREA 8PK-1015', '2', '1117', '41.800', NULL, NULL, 42, '2020-07-10 20:31:51', '2020-07-10 20:31:51'),
(83, 'CORREA 8PK-1865 - 02/07/2020', 'CORREA 8PK-1865 - 02/07/2020', '8PK-1865', '2', '1117', '75.900', NULL, NULL, 42, '2020-07-10 20:32:40', '2020-07-10 20:32:40'),
(84, 'CORREA 8PK-1385 - 02/07/2020', 'CORREA 8PK-1385 - 02/07/2020', '8PK-1385', '2', '1117', '57.200', NULL, NULL, 42, '2020-07-10 20:57:27', '2020-07-10 20:57:27'),
(85, 'CORREA 8PK-1700 - 02/07/2020', 'CORREA 8PK-1700 - 02/07/2020', '8PK-1700', '4', '1117', '68.200', NULL, NULL, 42, '2020-07-10 20:58:41', '2020-07-10 20:59:11'),
(86, 'CORREA 6PK-1120 - 02/07/2020', 'CORREA 6PK-1120 - 02/07/2020 -  QUEDARON PENDIENTES 3 CORREAS POR ENTREGAR', 'CORREA 6PK', '6', '1117', '28.600', NULL, NULL, 42, '2020-07-10 21:00:25', '2020-07-10 21:00:49'),
(87, 'CORREA 6PK-2210 - 02/07/2020', 'CORREA 6PK-2210 - 02/07/2020', '6PK-2210', '6', '1117', '55.000', NULL, NULL, 42, '2020-07-10 21:01:34', '2020-07-10 21:01:34'),
(88, 'CORREA 7PK-1515 - 02/07/2020', 'CORREA 7PK-1515 - 02/07/2020', 'PK-1515', '6', '1117', '40.000', NULL, NULL, 42, '2020-07-10 21:02:21', '2020-07-10 21:02:21'),
(89, 'CORREA 4PK-940 - 02/07/2020', 'CORREA 4PK-940 - 02/07/2020', '4PK-940', '4', '1117', '18.700', NULL, NULL, 42, '2020-07-10 21:03:19', '2020-07-10 21:03:19'),
(90, 'BOMBILLO EXPLORADORA H7 - 24 VOL', 'BOMBILLO EXPLORADORA H7 - 24 VOL', '1617', '50', '5057', '16.690', NULL, NULL, 6, '2020-07-10 22:18:23', '2020-07-10 22:18:23'),
(91, 'BOMBILLO COCUYO PARA PAREJA 12 VOL', 'BOMBILLO COCUYO PARA PAREJA 12 VOL', '0381', '30', '5057', '965', NULL, NULL, 6, '2020-07-10 22:27:09', '2020-07-10 22:27:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcional_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `email`, `identificacion`, `tipo_identificacion`, `ciudad`, `departamento`, `direccion`, `barrio`, `telefono`, `opcional_telefono`, `fullname`, `created_at`, `updated_at`) VALUES
(1, 'REFINERIA', 'ECOPETROL', 'sincorreo@gmail.com', '8999990681', 'Nit', 'BARRANCABERMEJA', 'santander', 'BARRANCABERMEJA', 'BARRANCABERMEJA', '1234567890', NULL, NULL, '2020-01-15 00:49:55', '2020-03-18 12:02:48'),
(2, 'LOS SOCIOS DEL LLANITO S.A.S', NULL, 'lossociosdelllanitoltda@yahoo.es', '8290002881', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CORREGIMIENTO EL LLANITO', 'LLANITO', '6026799', NULL, NULL, '2020-06-18 20:10:16', '2020-06-18 20:10:16'),
(3, 'IMPALA TERMINALS', 'BARRANCABERMEJA S.A', 'katherina.amaris@impalaterminals.com', '900579793', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'PUERTO IMPALA', 'VEREDA CAMPO GALAN', '+57 7 6033000 Ext. 37038', NULL, NULL, '2021-01-19 21:45:58', '2021-01-19 21:45:58'),
(4, 'CENIT TRANSPORTE', 'Y LOGISTICA DE HIDROCARBUROS S.A.S', 'edwin.perez@cenit-transporte.com', '9005312103', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'REFINERIA DE BARRANCABERMEJA', NULL, '3178791843', NULL, NULL, '2021-02-08 19:34:01', '2021-02-08 19:34:01'),
(5, 'angell', 'apell', 'admin@admin.com', '1096216530', 'Cedula', 'Barrnaca', 'Santander', '2020', 'Barrio', '3172603279', NULL, NULL, '2021-05-10 02:11:58', '2021-05-10 02:11:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_companies`
--

CREATE TABLE `cliente_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_contrato` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obj_contrato` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fin_contrato` date DEFAULT NULL,
  `admin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renovacion_contrato` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inicio_contrato` date DEFAULT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcional_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cliente_companies`
--

INSERT INTO `cliente_companies` (`id`, `nombre`, `email`, `num_contrato`, `obj_contrato`, `fin_contrato`, `admin`, `renovacion_contrato`, `inicio_contrato`, `identificacion`, `tipo_identificacion`, `ciudad`, `departamento`, `direccion`, `barrio`, `telefono`, `opcional_telefono`, `fullname`, `created_at`, `updated_at`) VALUES
(10, 'Compania', 'company@gmail.com', '12345678', 'qwertyui', '2021-07-31', 'Juan', '2021-07-15', '2021-07-01', '1234567893', 'Nit', 'Barrancabermeja', 'Santander', 'Direccion', 'Barrio', '3172603279', NULL, NULL, '2021-07-19 07:15:42', '2021-07-19 07:15:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductors`
--

CREATE TABLE `conductors` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renovacion_contrato` date DEFAULT NULL,
  `fin_contrato` date DEFAULT NULL,
  `inicio_contrato` date DEFAULT NULL,
  `arl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eps` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcional_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `conductors`
--

INSERT INTO `conductors` (`id`, `nombre`, `apellido`, `tipo_identificacion`, `identificacion`, `renovacion_contrato`, `fin_contrato`, `inicio_contrato`, `arl`, `eps`, `cc`, `email`, `ciudad`, `departamento`, `direccion`, `barrio`, `telefono`, `opcional_telefono`, `fullname`, `created_at`, `updated_at`) VALUES
(11, 'Conductors', 'Sas', 'Cedula', '1234567891', '2021-08-08', '2021-07-30', '2021-07-01', 'SURA', 'COOMEVA', 'CONFAMA', 'conductor@gmail.com', 'Barrancabermeja', 'Santander', 'Direccion', 'Barrio', '3172603279', NULL, NULL, '2021-07-19 05:34:44', '2021-07-19 06:28:52'),
(17, 'conductor', 'aprendiz', 'Cedula', '1096215650', '2021-07-30', '2021-07-25', '2021-07-20', 'SURA', 'COOMEVA', 'CONFAMA', 'conductoraprendiz@gmail.com', 'Barrancabermeja', 'Santander', 'Direccion', 'Barrio', '3172603279', NULL, NULL, '2021-07-19 19:17:56', '2021-07-19 19:17:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor_vehiculo`
--

CREATE TABLE `conductor_vehiculo` (
  `conductor_id` int(11) NOT NULL,
  `vehiculo_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `conductor_vehiculo`
--

INSERT INTO `conductor_vehiculo` (`conductor_id`, `vehiculo_id`, `created_at`, `updated_at`) VALUES
(11, 5, '2021-07-18 17:30:25', '0000-00-00 00:00:00'),
(12, 9, '2021-07-19 00:35:10', '0000-00-00 00:00:00'),
(12, 11, '2021-07-19 00:38:11', '0000-00-00 00:00:00'),
(17, 54, '2021-07-22 14:30:43', '0000-00-00 00:00:00'),
(17, 11, '2021-07-22 14:30:48', '0000-00-00 00:00:00'),
(17, 27, '2021-07-22 15:52:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `vehiculo_id` int(10) UNSIGNED NOT NULL,
  `finicio` date DEFAULT NULL,
  `ffin` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`id`, `cliente_id`, `vehiculo_id`, `finicio`, `ffin`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2016-07-07', '2020-05-09', '2020-01-15 00:51:11', '2020-01-15 00:51:11'),
(2, 2, 44, '2020-06-18', NULL, '2020-06-18 20:16:24', '2020-06-19 17:06:32'),
(3, 2, 17, NULL, NULL, '2020-06-18 20:25:58', '2021-02-08 19:38:46'),
(4, 2, 44, '2020-07-18', NULL, '2020-07-21 23:59:16', '2020-07-21 23:59:16'),
(5, 4, 34, '2020-07-01', '0201-04-20', '2021-02-08 19:36:13', '2021-02-08 19:36:13'),
(6, 4, 35, '2020-07-01', '2021-04-20', '2021-02-08 19:36:57', '2021-02-08 19:36:57'),
(7, 3, 17, '2019-02-25', '2022-02-25', '2021-02-08 19:38:27', '2021-02-08 19:38:27'),
(8, 3, 18, '2019-02-25', '2022-02-25', '2021-02-08 19:41:12', '2021-02-08 19:41:34'),
(9, 3, 36, '2019-02-25', '2022-02-25', '2021-02-08 19:42:26', '2021-02-08 19:42:26'),
(10, 3, 19, '2019-02-25', '2022-02-25', '2021-02-08 19:43:30', '2021-02-08 19:43:30'),
(11, 3, 55, '2020-08-01', '2022-02-25', '2021-02-08 19:47:27', '2021-02-08 19:47:27'),
(12, 3, 48, '2019-02-25', '2022-02-25', '2021-02-08 19:48:11', '2021-02-08 19:48:11'),
(13, 2, 54, '2020-06-18', NULL, '2021-02-08 19:51:51', '2021-02-08 19:51:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `designados`
--

CREATE TABLE `designados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcional_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `designados`
--

INSERT INTO `designados` (`id`, `nombre`, `apellido`, `email`, `identificacion`, `tipo_identificacion`, `ciudad`, `departamento`, `direccion`, `barrio`, `telefono`, `opcional_telefono`, `fullname`, `created_at`, `updated_at`, `empresa`) VALUES
(18, 'Designado', 'sas', 'designado@gmail.com', '1234567894', 'Cedula', 'Barrancabermeja', 'Santander', 'Direccion', 'Barrio', '3172603279', NULL, NULL, '2021-07-19 07:18:53', '2021-07-19 07:18:53', '1234567893');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentacions`
--

CREATE TABLE `documentacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehiculo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `documentacions`
--

INSERT INTO `documentacions` (`id`, `descripcion`, `img`, `vehiculo_id`, `created_at`, `updated_at`) VALUES
(3, 'TARJETA DE PROPIEDAD', '_1582320126.png', 41, '2020-02-22 02:22:06', '2020-02-22 02:22:06'),
(4, 'SOAT', '_1582320147.png', 41, '2020-02-22 02:22:28', '2020-02-22 02:22:28'),
(10, 'SOAT', '_1585083281.pdf', 17, '2020-03-25 01:54:41', '2020-03-25 01:54:41'),
(11, 'TARJETA DE PROPIEDAD', '_1585083312.pdf', 17, '2020-03-25 01:55:12', '2020-03-25 01:55:12'),
(12, 'RCC', '_1585083331.pdf', 17, '2020-03-25 01:55:31', '2020-03-25 01:55:31'),
(13, 'RCE', '_1585083349.pdf', 17, '2020-03-25 01:55:49', '2020-03-25 01:55:49'),
(14, 'TECNICOMECÁNICA', '_1585083368.pdf', 17, '2020-03-25 01:56:08', '2020-03-25 01:56:08'),
(15, 'RCC', '_1585084132.pdf', 18, '2020-03-25 02:08:52', '2020-03-25 02:08:52'),
(16, 'RCE', '_1585084150.pdf', 18, '2020-03-25 02:09:11', '2020-03-25 02:09:11'),
(18, 'SOAT', '_1585084189.pdf', 18, '2020-03-25 02:09:50', '2020-03-25 02:09:50'),
(19, 'TARJETA DE PROPIEDAD', '_1585084208.pdf', 18, '2020-03-25 02:10:08', '2020-03-25 02:10:08'),
(20, 'TECNICOMECÁNICA', '_1585084227.pdf', 18, '2020-03-25 02:10:27', '2020-03-25 02:10:27'),
(22, 'TARJETA DE PROPIEDAD', '_1585084360.pdf', 36, '2020-03-25 02:12:40', '2020-03-25 02:12:40'),
(23, 'PÓLIZA TODO RIESGO', '_1585084382.pdf', 36, '2020-03-25 02:13:02', '2020-03-25 02:13:02'),
(24, 'SOAT', '_1585084396.pdf', 36, '2020-03-25 02:13:17', '2020-03-25 02:13:17'),
(25, 'RCC', '_1585084769.pdf', 36, '2020-03-25 02:19:29', '2020-03-25 02:19:29'),
(26, 'RCE', '_1585084786.pdf', 36, '2020-03-25 02:19:46', '2020-03-25 02:19:46'),
(28, 'TARJETA DE PROPIEDAD', '_1585085682.pdf', 32, '2020-03-25 02:34:42', '2020-03-25 02:34:42'),
(29, 'SOAT', '_1585085705.pdf', 32, '2020-03-25 02:35:05', '2020-03-25 02:35:05'),
(30, 'RCC', '_1585085719.pdf', 32, '2020-03-25 02:35:19', '2020-03-25 02:35:19'),
(31, 'RCE', '_1585085736.pdf', 32, '2020-03-25 02:35:36', '2020-03-25 02:35:36'),
(32, 'TARJETA DE OPERACIÓN', '_1586276537.pdf', 18, '2020-04-07 21:22:17', '2020-04-07 21:22:17'),
(33, 'SOAT', '_1586276651.pdf', 19, '2020-04-07 21:24:11', '2020-04-07 21:24:11'),
(34, 'TARJETA DE PROPIEDAD', '_1586276797.pdf', 19, '2020-04-07 21:26:37', '2020-04-07 21:26:37'),
(35, 'TARJETA DE OPERACION', '_1586276811.pdf', 19, '2020-04-07 21:26:51', '2020-04-07 21:26:51'),
(36, 'TECNICOMECÁNICA', '_1586276823.pdf', 19, '2020-04-07 21:27:03', '2020-04-07 21:27:03'),
(37, 'RCC', '_1586279525.pdf', 19, '2020-04-07 22:12:05', '2020-04-07 22:12:05'),
(38, 'RCE', '_1586279535.pdf', 19, '2020-04-07 22:12:15', '2020-04-07 22:12:15'),
(39, 'RCC', '_1586280418.pdf', 20, '2020-04-07 22:26:58', '2020-04-07 22:26:58'),
(40, 'RCE', '_1586280441.pdf', 20, '2020-04-07 22:27:22', '2020-04-07 22:27:22'),
(41, 'SOAT', '_1586280475.pdf', 20, '2020-04-07 22:27:55', '2020-04-07 22:27:55'),
(42, 'TARJETA DE PROPIEDAD', '_1586280497.pdf', 20, '2020-04-07 22:28:17', '2020-04-07 22:28:17'),
(43, 'TARJETA DE OPERACION', '_1586280508.pdf', 20, '2020-04-07 22:28:28', '2020-04-07 22:28:28'),
(44, 'TECNICOMECÁNICA', '_1586286507.pdf', 20, '2020-04-08 00:08:28', '2020-04-08 00:08:28'),
(45, 'SOAT', '_1586286541.pdf', 21, '2020-04-08 00:09:03', '2020-04-08 00:09:03'),
(46, 'TARJETA DE PROPIEDAD', '_1586286559.pdf', 21, '2020-04-08 00:09:19', '2020-04-08 00:09:19'),
(47, 'TARJETA DE OPERACION', '_1586286572.pdf', 21, '2020-04-08 00:09:32', '2020-04-08 00:09:32'),
(48, 'TECNICOMECÁNICA', '_1586286593.pdf', 21, '2020-04-08 00:09:53', '2020-04-08 00:09:53'),
(49, 'RCC', '_1586287885.pdf', 21, '2020-04-08 00:31:25', '2020-04-08 00:31:25'),
(50, 'RCE', '_1586287901.pdf', 21, '2020-04-08 00:31:41', '2020-04-08 00:31:41'),
(51, 'RCC', '_1586288066.pdf', 22, '2020-04-08 00:34:26', '2020-04-08 00:34:26'),
(52, 'RCE', '_1586288077.pdf', 22, '2020-04-08 00:34:37', '2020-04-08 00:34:37'),
(53, 'SOAT', '_1586288143.pdf', 22, '2020-04-08 00:35:45', '2020-04-08 00:35:45'),
(54, 'TARJETA DE OPERACION', '_1586288671.pdf', 22, '2020-04-08 00:44:31', '2020-04-08 00:44:31'),
(55, 'TARJETA DE PROPIEDAD', '_1586288685.pdf', 22, '2020-04-08 00:44:47', '2020-04-08 00:44:47'),
(56, 'TECNICOMECÁNICA', '_1586288703.pdf', 22, '2020-04-08 00:45:03', '2020-04-08 00:45:03'),
(57, 'SOAT', '_1586288813.pdf', 23, '2020-04-08 00:47:00', '2020-04-08 00:47:00'),
(58, 'TARJETA DE OPERACION', '_1586288852.pdf', 23, '2020-04-08 00:47:32', '2020-04-08 00:47:32'),
(59, 'TARJETA DE PROPIEDAD', '_1586288860.pdf', 23, '2020-04-08 00:47:40', '2020-04-08 00:47:40'),
(60, 'TECNICOMECÁNICA', '_1586288870.pdf', 23, '2020-04-08 00:47:50', '2020-04-08 00:47:50'),
(61, 'RCC', '_1586288996.pdf', 23, '2020-04-08 00:49:58', '2020-04-08 00:49:58'),
(62, 'RCE', '_1586289007.pdf', 23, '2020-04-08 00:50:07', '2020-04-08 00:50:07'),
(63, 'SOAT', '_1586289048.pdf', 24, '2020-04-08 00:50:55', '2020-04-08 00:50:55'),
(64, 'TARJETA DE OPERACION', '_1586289067.pdf', 24, '2020-04-08 00:51:07', '2020-04-08 00:51:07'),
(65, 'TARJETA DE PROPIEDAD', '_1586289077.pdf', 24, '2020-04-08 00:51:17', '2020-04-08 00:51:17'),
(66, 'TECNICOMECÁNICA', '_1586289090.pdf', 24, '2020-04-08 00:51:30', '2020-04-08 00:51:30'),
(67, 'RCC', '_1586289237.pdf', 24, '2020-04-08 00:53:57', '2020-04-08 00:53:57'),
(68, 'RCE', '_1586289246.pdf', 24, '2020-04-08 00:54:06', '2020-04-08 00:54:06'),
(69, 'TECNICOMECÁNICA', '_1586289319.pdf', 25, '2020-04-08 00:55:19', '2020-04-08 00:55:19'),
(70, 'SOAT', '_1586289328.pdf', 25, '2020-04-08 00:55:30', '2020-04-08 00:55:30'),
(71, 'TARJETA DE OPERACION', '_1586289341.pdf', 25, '2020-04-08 00:55:41', '2020-04-08 00:55:41'),
(72, 'TARJETA DE PROPIEDAD', '_1586289350.pdf', 25, '2020-04-08 00:55:50', '2020-04-08 00:55:50'),
(73, 'RCC', '_1586289655.pdf', 25, '2020-04-08 01:00:55', '2020-04-08 01:00:55'),
(74, 'RCE', '_1586289665.pdf', 25, '2020-04-08 01:01:05', '2020-04-08 01:01:05'),
(75, 'TARJETA DE PROPIEDAD', '_1586289793.pdf', 26, '2020-04-08 01:03:13', '2020-04-08 01:03:13'),
(77, 'TARJETA DE OPERACION', '_1586289872.pdf', 26, '2020-04-08 01:04:32', '2020-04-08 01:04:32'),
(80, 'SOAT', '_1586290390.pdf', 5, '2020-04-08 01:13:12', '2020-04-08 01:13:12'),
(81, 'TARJETA DE OPERACION', '_1586290401.pdf', 5, '2020-04-08 01:13:21', '2020-04-08 01:13:21'),
(82, 'TARJETA DE PROPIEDAD', '_1586290411.pdf', 5, '2020-04-08 01:13:31', '2020-04-08 01:13:31'),
(83, 'TECNICOMECÁNICA', '_1586290422.pdf', 5, '2020-04-08 01:13:42', '2020-04-08 01:13:42'),
(84, 'RCC', '_1586290502.pdf', 5, '2020-04-08 01:15:02', '2020-04-08 01:15:02'),
(85, 'RCE', '_1586290511.pdf', 5, '2020-04-08 01:15:11', '2020-04-08 01:15:11'),
(86, 'SOAT', '_1586291340.pdf', 9, '2020-04-08 01:29:00', '2020-04-08 01:29:00'),
(87, 'TARJETA DE PROPIEDAD', '_1586291523.pdf', 9, '2020-04-08 01:32:03', '2020-04-08 01:32:03'),
(88, 'TARJETA DE OPERACION', '_1586291534.pdf', 9, '2020-04-08 01:32:14', '2020-04-08 01:32:14'),
(89, 'TECNICOMECÁNICA', '_1586291558.pdf', 9, '2020-04-08 01:32:38', '2020-04-08 01:32:38'),
(90, 'RCC', '_1586296083.pdf', 9, '2020-04-08 02:48:03', '2020-04-08 02:48:03'),
(91, 'RCE', '_1586296092.pdf', 9, '2020-04-08 02:48:12', '2020-04-08 02:48:12'),
(92, 'RCC', '_1586296281.pdf', 11, '2020-04-08 02:51:21', '2020-04-08 02:51:21'),
(93, 'RCE', '_1586296304.pdf', 11, '2020-04-08 02:51:44', '2020-04-08 02:51:44'),
(94, 'SOAT', '_1586296508.pdf', 11, '2020-04-08 02:55:08', '2020-04-08 02:55:08'),
(95, 'TARJETA DE PROPIEDAD', '_1586297290.pdf', 11, '2020-04-08 03:08:10', '2020-04-08 03:08:10'),
(96, 'TARJETA DE OPERACION', '_1586297301.pdf', 11, '2020-04-08 03:08:22', '2020-04-08 03:08:22'),
(97, 'TECNICOMECÁNICA', '_1586297316.pdf', 11, '2020-04-08 03:08:36', '2020-04-08 03:08:36'),
(98, 'RCC', '_1586347801.pdf', 12, '2020-04-08 17:10:01', '2020-04-08 17:10:01'),
(99, 'RCE', '_1586347905.pdf', 12, '2020-04-08 17:11:48', '2020-04-08 17:11:48'),
(100, 'SOAT', '_1586347923.pdf', 12, '2020-04-08 17:12:03', '2020-04-08 17:12:03'),
(101, 'TARJETA DE PROPIEDAD', '_1586347939.pdf', 12, '2020-04-08 17:12:19', '2020-04-08 17:12:19'),
(102, 'TARJETA DE OPERACION', '_1586348957.pdf', 12, '2020-04-08 17:29:17', '2020-04-08 17:29:17'),
(103, 'TECNICOMECÁNICA', '_1586348993.pdf', 12, '2020-04-08 17:29:53', '2020-04-08 17:29:53'),
(104, 'SOAT', '_1586349029.pdf', 13, '2020-04-08 17:30:30', '2020-04-08 17:30:30'),
(105, 'RCC', '_1586349044.pdf', 13, '2020-04-08 17:30:44', '2020-04-08 17:30:44'),
(106, 'RCE', '_1586353201.pdf', 13, '2020-04-08 18:40:01', '2020-04-08 18:40:01'),
(107, 'TARJETA DE PROPIEDAD', '_1586353220.pdf', 13, '2020-04-08 18:40:20', '2020-04-08 18:40:20'),
(108, 'TARJETA DE OPERACION', '_1586353233.pdf', 13, '2020-04-08 18:40:33', '2020-04-08 18:40:33'),
(109, 'TECNICOMECÁNICA', '_1586353247.pdf', 13, '2020-04-08 18:40:47', '2020-04-08 18:40:47'),
(110, 'SOAT', '_1586353291.pdf', 14, '2020-04-08 18:41:31', '2020-04-08 18:41:31'),
(111, 'RCC', '_1586353353.pdf', 14, '2020-04-08 18:42:33', '2020-04-08 18:42:33'),
(112, 'RCE', '_1586353364.pdf', 14, '2020-04-08 18:42:44', '2020-04-08 18:42:44'),
(113, 'TARJETA DE PROPIEDAD', '_1586353375.pdf', 14, '2020-04-08 18:42:55', '2020-04-08 18:42:55'),
(114, 'TARJETA DE OPERACION', '_1586353386.pdf', 14, '2020-04-08 18:43:06', '2020-04-08 18:43:06'),
(115, 'TECNICOMECÁNICA', '_1586353398.pdf', 14, '2020-04-08 18:43:18', '2020-04-08 18:43:18'),
(116, 'RCC', '_1586353519.pdf', 15, '2020-04-08 18:45:19', '2020-04-08 18:45:19'),
(117, 'RCE', '_1586353528.pdf', 15, '2020-04-08 18:45:28', '2020-04-08 18:45:28'),
(118, 'SOAT', '_1586353543.pdf', 15, '2020-04-08 18:45:43', '2020-04-08 18:45:43'),
(119, 'TARJETA DE PROPIEDAD', '_1586353559.pdf', 15, '2020-04-08 18:45:59', '2020-04-08 18:45:59'),
(120, 'TECNICOMECÁNICA', '_1586353603.pdf', 15, '2020-04-08 18:46:43', '2020-04-08 18:46:43'),
(121, 'SOAT', '_1586353654.pdf', 16, '2020-04-08 18:47:35', '2020-04-08 18:47:35'),
(122, 'TARJETA DE PROPIEDAD', '_1586353675.pdf', 16, '2020-04-08 18:47:55', '2020-04-08 18:47:55'),
(123, 'TARJETA DE OPERACION', '_1586353698.pdf', 16, '2020-04-08 18:48:18', '2020-04-08 18:48:18'),
(124, 'TECNICOMECÁNICA', '_1586353766.pdf', 16, '2020-04-08 18:49:26', '2020-04-08 18:49:26'),
(125, 'RCC', '_1586354241.pdf', 16, '2020-04-08 18:57:21', '2020-04-08 18:57:21'),
(126, 'RCE', '_1586354250.pdf', 16, '2020-04-08 18:57:30', '2020-04-08 18:57:30'),
(127, 'TARJETA DE OPERACION', '_1586354399.pdf', 17, '2020-04-08 18:59:59', '2020-04-08 18:59:59'),
(128, 'SOAT', '_1586355475.pdf', 26, '2020-04-08 19:17:55', '2020-04-08 19:17:55'),
(129, 'RCC', '_1586355623.pdf', 26, '2020-04-08 19:20:23', '2020-04-08 19:20:23'),
(130, 'RCE', '_1586355636.pdf', 26, '2020-04-08 19:20:36', '2020-04-08 19:20:36'),
(131, 'RCC', '_1586355697.pdf', 27, '2020-04-08 19:21:37', '2020-04-08 19:21:37'),
(132, 'RCE', '_1586355773.pdf', 27, '2020-04-08 19:22:53', '2020-04-08 19:22:53'),
(133, 'SOAT', '_1586355782.pdf', 27, '2020-04-08 19:23:02', '2020-04-08 19:23:02'),
(134, 'TARJETA DE PROPIEDAD', '_1586355798.pdf', 27, '2020-04-08 19:23:18', '2020-04-08 19:23:18'),
(136, 'TECNICOMECÁNICA', '_1586355822.pdf', 27, '2020-04-08 19:23:42', '2020-04-08 19:23:42'),
(137, 'SOAT', '_1586356047.pdf', 28, '2020-04-08 19:27:29', '2020-04-08 19:27:29'),
(138, 'TARJETA DE PROPIEDAD', '_1586356066.pdf', 28, '2020-04-08 19:27:46', '2020-04-08 19:27:46'),
(139, 'TARJETA DE OPERACION', '_1586356081.pdf', 28, '2020-04-08 19:28:01', '2020-04-08 19:28:01'),
(140, 'TECNICOMECÁNICA', '_1586356092.pdf', 28, '2020-04-08 19:28:12', '2020-04-08 19:28:12'),
(141, 'RCC', '_1586356164.pdf', 28, '2020-04-08 19:29:24', '2020-04-08 19:29:24'),
(142, 'RCE', '_1586356174.pdf', 28, '2020-04-08 19:29:34', '2020-04-08 19:29:34'),
(143, 'SOAT', '_1586358027.pdf', 29, '2020-04-08 20:00:30', '2020-04-08 20:00:30'),
(144, 'TARJETA DE OPERACION', '_1586358060.pdf', 29, '2020-04-08 20:01:00', '2020-04-08 20:01:00'),
(145, 'TARJETA DE PROPIEDAD', '_1586358072.pdf', 29, '2020-04-08 20:01:12', '2020-04-08 20:01:12'),
(146, 'TECNICOMECÁNICA', '_1586358081.pdf', 29, '2020-04-08 20:01:21', '2020-04-08 20:01:21'),
(147, 'RCC', '_1586358174.pdf', 29, '2020-04-08 20:02:54', '2020-04-08 20:02:54'),
(148, 'RCE', '_1586358187.pdf', 29, '2020-04-08 20:03:07', '2020-04-08 20:03:07'),
(149, 'RCC', '_1586358312.pdf', 30, '2020-04-08 20:05:12', '2020-04-08 20:05:12'),
(150, 'RCE', '_1586358326.pdf', 30, '2020-04-08 20:05:26', '2020-04-08 20:05:26'),
(151, 'SOAT', '_1586358338.pdf', 30, '2020-04-08 20:05:39', '2020-04-08 20:05:39'),
(152, 'TARJETA DE PROPIEDAD', '_1586358348.pdf', 30, '2020-04-08 20:05:50', '2020-04-08 20:05:50'),
(153, 'TARJETA DE OPERACION', '_1586358362.pdf', 30, '2020-04-08 20:06:02', '2020-04-08 20:06:02'),
(154, 'SOAT', '_1586358428.pdf', 31, '2020-04-08 20:07:08', '2020-04-08 20:07:08'),
(155, 'RCC', '_1586358439.pdf', 31, '2020-04-08 20:07:19', '2020-04-08 20:07:19'),
(156, 'RCE', '_1586358447.pdf', 31, '2020-04-08 20:07:27', '2020-04-08 20:07:27'),
(157, 'TARJETA DE PROPIEDAD', '_1586358461.pdf', 31, '2020-04-08 20:07:41', '2020-04-08 20:07:41'),
(158, 'TARJETA DE OPERACION', '_1586358474.pdf', 31, '2020-04-08 20:07:54', '2020-04-08 20:07:54'),
(159, 'TECNICOMECÁNICA', '_1586358483.pdf', 31, '2020-04-08 20:08:03', '2020-04-08 20:08:03'),
(160, 'TARJETA DE OPERACION', '_1586362610.pdf', 32, '2020-04-08 21:16:50', '2020-04-08 21:16:50'),
(161, 'TECNICOMECÁNICA', '_1586362646.pdf', 32, '2020-04-08 21:17:26', '2020-04-08 21:17:26'),
(162, 'SOAT', '_1586363628.pdf', 33, '2020-04-08 21:33:48', '2020-04-08 21:33:48'),
(163, 'TARJETA DE PROPIEDAD', '_1586363643.pdf', 33, '2020-04-08 21:34:03', '2020-04-08 21:34:03'),
(164, 'TARJETA DE OPERACION', '_1586363653.pdf', 33, '2020-04-08 21:34:13', '2020-04-08 21:34:13'),
(165, 'TECNICOMECÁNICA', '_1586363666.pdf', 33, '2020-04-08 21:34:26', '2020-04-08 21:34:26'),
(166, 'RCC', '_1586364026.pdf', 33, '2020-04-08 21:40:26', '2020-04-08 21:40:26'),
(167, 'RCE', '_1586364052.pdf', 33, '2020-04-08 21:40:52', '2020-04-08 21:40:52'),
(174, 'SOAT', '_1586364725.pdf', 34, '2020-04-08 21:52:06', '2020-04-08 21:52:06'),
(175, 'TARJETA DE PROPIEDAD', '_1586364738.pdf', 34, '2020-04-08 21:52:18', '2020-04-08 21:52:18'),
(176, 'TARJETA DE OPERACION', '_1586364750.pdf', 34, '2020-04-08 21:52:30', '2020-04-08 21:52:30'),
(177, 'RCC', '_1586374442.pdf', 34, '2020-04-09 00:34:02', '2020-04-09 00:34:02'),
(178, 'RCE', '_1586374498.pdf', 34, '2020-04-09 00:34:58', '2020-04-09 00:34:58'),
(179, 'SOAT', '_1586374550.pdf', 35, '2020-04-09 00:35:51', '2020-04-09 00:35:51'),
(180, 'TARJETA DE PROPIEDAD', '_1586374564.pdf', 35, '2020-04-09 00:36:04', '2020-04-09 00:36:04'),
(181, 'TARJETA DE OPERACION', '_1586374575.pdf', 35, '2020-04-09 00:36:15', '2020-04-09 00:36:15'),
(182, 'COLECTIVA', '_1586374613.pdf', 35, '2020-04-09 00:36:54', '2020-04-09 00:36:54'),
(183, 'RCC', '_1586374729.pdf', 35, '2020-04-09 00:38:49', '2020-04-09 00:38:49'),
(184, 'RCE', '_1586374748.pdf', 35, '2020-04-09 00:39:08', '2020-04-09 00:39:08'),
(185, 'TARJETA DE OPERACION', '_1586374835.pdf', 36, '2020-04-09 00:40:35', '2020-04-09 00:40:35'),
(186, 'SOAT', '_1586374970.pdf', 37, '2020-04-09 00:42:51', '2020-04-09 00:42:51'),
(187, 'RCE', '_1586374991.pdf', 37, '2020-04-09 00:43:11', '2020-04-09 00:43:11'),
(188, 'RCC', '_1586375000.pdf', 37, '2020-04-09 00:43:20', '2020-04-09 00:43:20'),
(189, 'TARJETA DE PROPIEDAD', '_1586375009.pdf', 37, '2020-04-09 00:43:29', '2020-04-09 00:43:29'),
(190, 'TARJETA DE OPERACION', '_1586375023.pdf', 37, '2020-04-09 00:43:43', '2020-04-09 00:43:43'),
(191, 'TECNICOMECÁNICA', '_1586375041.pdf', 37, '2020-04-09 00:44:01', '2020-04-09 00:44:01'),
(192, 'SOAT', '_1586375119.pdf', 38, '2020-04-09 00:45:20', '2020-04-09 00:45:20'),
(193, 'TARJETA DE PROPIEDAD', '_1586375131.pdf', 38, '2020-04-09 00:45:31', '2020-04-09 00:45:31'),
(194, 'TARJETA DE OPERACION', '_1586375142.pdf', 38, '2020-04-09 00:45:42', '2020-04-09 00:45:42'),
(195, 'RCE', '_1586375324.pdf', 38, '2020-04-09 00:48:44', '2020-04-09 00:48:44'),
(196, 'RCC', '_1586375410.pdf', 38, '2020-04-09 00:50:10', '2020-04-09 00:50:10'),
(197, 'SOAT', '_1586377558.pdf', 39, '2020-04-09 01:25:59', '2020-04-09 01:25:59'),
(198, 'TARJETA DE OPERACION', '_1586377571.pdf', 39, '2020-04-09 01:26:11', '2020-04-09 01:26:11'),
(199, 'TARJETA DE PROPIEDAD', '_1586377582.pdf', 39, '2020-04-09 01:26:24', '2020-04-09 01:26:24'),
(200, 'TECNICOMECÁNICA', '_1586377596.pdf', 39, '2020-04-09 01:26:36', '2020-04-09 01:26:36'),
(201, 'PÓLIZA TODO RIESGO', '_1586379181.pdf', 42, '2020-04-09 01:53:01', '2020-04-09 01:53:01'),
(202, 'RCC', '_1586379199.pdf', 42, '2020-04-09 01:53:22', '2020-04-09 01:53:22'),
(203, 'RCE', '_1586379226.pdf', 42, '2020-04-09 01:53:51', '2020-04-09 01:53:51'),
(204, 'SOAT', '_1586379401.pdf', 42, '2020-04-09 01:56:41', '2020-04-09 01:56:41'),
(205, 'TARJETA DE PROPIEDAD', '_1586379412.pdf', 42, '2020-04-09 01:56:52', '2020-04-09 01:56:52'),
(206, 'TARJETA DE OPERACION', '_1586379435.pdf', 42, '2020-04-09 01:57:15', '2020-04-09 01:57:15'),
(207, 'TODO RIESGO', '_1586379971.pdf', 43, '2020-04-09 02:06:11', '2020-04-09 02:06:11'),
(208, 'RCC', '_1586379988.pdf', 43, '2020-04-09 02:06:32', '2020-04-09 02:06:32'),
(209, 'RCE', '_1586380009.pdf', 43, '2020-04-09 02:06:53', '2020-04-09 02:06:53'),
(210, 'SOAT', '_1586380029.pdf', 43, '2020-04-09 02:07:09', '2020-04-09 02:07:09'),
(211, 'TARJETA DE PROPIEDAD', '_1586380039.pdf', 43, '2020-04-09 02:07:19', '2020-04-09 02:07:19'),
(212, 'TARJETA DE OPERACION', '_1586380048.pdf', 43, '2020-04-09 02:07:28', '2020-04-09 02:07:28'),
(213, 'TARJETA DE OPERACION', '_1586380278.pdf', 27, '2020-04-09 02:11:18', '2020-04-09 02:11:18'),
(214, 'RCC', '_1586380986.pdf', 44, '2020-04-09 02:23:06', '2020-04-09 02:23:06'),
(215, 'RCE', '_1586380993.pdf', 44, '2020-04-09 02:23:13', '2020-04-09 02:23:13'),
(216, 'SOAT', '_1586381003.pdf', 44, '2020-04-09 02:23:24', '2020-04-09 02:23:24'),
(217, 'TARJETA DE PROPIEDAD', '_1586381013.pdf', 44, '2020-04-09 02:23:33', '2020-04-09 02:23:33'),
(218, 'TARJETA DE OPERACION', '_1586381025.pdf', 44, '2020-04-09 02:23:45', '2020-04-09 02:23:45'),
(219, 'TECNICOMECÁNICA', '_1586381035.pdf', 44, '2020-04-09 02:23:55', '2020-04-09 02:23:55'),
(220, 'SOAT', '_1586383166.png', 45, '2020-04-09 02:59:27', '2020-04-09 02:59:27'),
(221, 'TARJETA DE PROPIEDAD', '_1586383180.png', 45, '2020-04-09 02:59:40', '2020-04-09 02:59:40'),
(222, 'POLIZA', '_1586383198.pdf', 45, '2020-04-09 02:59:58', '2020-04-09 02:59:58'),
(223, 'SOAT', '_1586808737.pdf', 46, '2020-04-14 01:12:19', '2020-04-14 01:12:19'),
(224, 'TARJETA DE PROPIEDAD', '_1586808757.pdf', 46, '2020-04-14 01:12:37', '2020-04-14 01:12:37'),
(225, 'TECNICOMECANICA', '_1586808778.pdf', 46, '2020-04-14 01:12:58', '2020-04-14 01:12:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_conductors`
--

CREATE TABLE `documento_conductors` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `conductor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `documento_conductors`
--

INSERT INTO `documento_conductors` (`id`, `img`, `descripcion`, `conductor_id`, `created_at`, `updated_at`) VALUES
(3, '1626656203.png', 'xx', 12, '2021-07-19 05:56:43', '2021-07-19 05:56:43'),
(5, '1626657414.png', 'xx', 12, '2021-07-19 06:16:54', '2021-07-19 06:16:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos`
--

CREATE TABLE `elementos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disponibilidad` enum('Si','No','Incompleto') COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehiculo_placa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `parentesco` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `conductor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`id`, `nombre`, `numero`, `parentesco`, `email`, `conductor_id`, `created_at`, `updated_at`) VALUES
(1, 'Danilo', '3172309', 'Tio', '1@q.com', 5, '2021-06-20 09:49:55', '2021-06-20 09:49:56'),
(2, 'Andrea', '1234567890', 'Esposa', 'andrea@gmail.com', 12, '2021-07-19 05:56:11', '2021-07-19 05:56:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hallazgos`
--

CREATE TABLE `hallazgos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehiculo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `prioridad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_c_s`
--

CREATE TABLE `historial_c_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_r_e_s`
--

CREATE TABLE `historial_r_e_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parte` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioridad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frecuencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_actual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_programado` date DEFAULT NULL,
  `fecha_ejecutado` date DEFAULT NULL,
  `cant_programdo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cant_ejecutado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recomendacion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `historial_r_e_s`
--

INSERT INTO `historial_r_e_s` (`id`, `parte`, `prioridad`, `frecuencia`, `fuente`, `km_actual`, `estado`, `fecha_programado`, `fecha_ejecutado`, `cant_programdo`, `cant_ejecutado`, `recomendacion_id`, `observacion`, `created_at`, `updated_at`) VALUES
(1, 'MANTENIMIENTO AIRE ACONDICIONADO', 'Alta', '75', 'Manual', '0', 'Ejecutado', '2020-05-04', '2020-05-04', NULL, NULL, 1, NULL, '2020-05-14 20:22:55', '2020-05-14 20:22:55'),
(2, 'MANTENIMIENTO AIRE ACONDICIONADO', 'Alta', '75', 'Manual', '0', 'Ejecutado', '2020-05-04', '2020-05-04', NULL, NULL, 2, 'Desmonte de villaret para Mtto de aire delantero y demonte de aire trasero para Mtto', '2020-05-14 21:19:57', '2020-05-14 21:19:57'),
(3, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '', 'Ejecutado', '2019-12-26', '2020-04-16', NULL, NULL, 7, 'MANTENIMIENTO PREVENTIVO', '2020-06-19 00:42:40', '2020-06-19 00:42:40'),
(4, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '', 'Ejecutado', '2020-01-15', '2020-02-15', NULL, NULL, 9, 'Desmonte de tapa para el A/C y mantenimiento del mismo', '2020-06-19 01:17:48', '2020-06-19 01:17:48'),
(5, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-23', '2020-04-23', NULL, NULL, 10, 'cambio de crochera del compresor y 1 crochera', '2020-06-19 01:57:20', '2020-06-19 01:57:20'),
(6, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-23', '2020-05-26', NULL, NULL, 10, 'MTTO PREVENTIVO Y CARGA DE GAS.', '2020-06-19 01:58:28', '2020-06-19 01:58:28'),
(7, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-02', '2020-04-30', NULL, NULL, 11, 'ALINEACION', '2020-06-19 02:55:47', '2020-06-19 02:55:47'),
(8, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-30', '2020-01-14', NULL, NULL, 11, 'BALANCEO, ALINEACION Y ROTACION', '2020-06-19 03:29:53', '2020-06-19 03:29:53'),
(9, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-24', '2020-05-04', NULL, NULL, 12, 'Desmonte de villaret para Mtto de aire delantero y demonte de aire trasero para Mtto', '2020-06-19 17:54:24', '2020-06-19 17:54:24'),
(10, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-04', '2020-01-24', NULL, NULL, 12, 'MTTO GENERAL DEL AIRE TRASERO', '2020-06-19 18:21:37', '2020-06-19 18:21:37'),
(11, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-10', '2020-01-24', NULL, NULL, 14, 'Mtto general del A/C', '2020-06-19 18:25:30', '2020-06-19 18:25:30'),
(12, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-24', '2020-05-04', NULL, NULL, 14, 'Desmonte de villaret para Mtto de aire delantero y demonte de aire trasero para Mtto', '2020-06-19 18:26:31', '2020-06-19 18:26:31'),
(13, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-09-27', '2019-12-11', NULL, NULL, 15, 'Mtto desmonte de tapa trasera de A/C', '2020-06-19 18:48:03', '2020-06-19 18:48:03'),
(14, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-11', '2020-05-04', NULL, NULL, 15, 'Desmonte de Villaret para Mtto de aire delantero y desmonte de aire trasero para Mtto', '2020-06-19 18:50:57', '2020-06-19 18:50:57'),
(15, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-01', '2020-04-08', NULL, NULL, 16, 'compra de 4 195/75R16 llantas Marathon', '2020-06-19 19:15:55', '2020-06-19 19:15:55'),
(16, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-03-28', '2020-02-13', NULL, NULL, 17, 'CAMBIO DE BATERIA POR GARANTIA', '2020-06-19 19:57:46', '2020-06-19 19:57:46'),
(17, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-31', '2020-04-29', NULL, NULL, 18, 'ALINEACION', '2020-06-19 20:52:13', '2020-06-19 20:52:13'),
(18, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-03-05', '2020-04-08', NULL, NULL, 19, 'Compra de 6 llantas 225/65R16 goodyear 08/04/2020 Fact: 1032.  (Ultimas 2 llantas  pacha izquierda 23/07/2019 KM: 181527 - 2 llantas 05/03/2019 KM: 162546 - 2 llantas 05/06/2019 KM: 175522 )', '2020-06-20 02:08:51', '2020-06-20 02:08:51'),
(19, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-30', '2020-04-28', NULL, NULL, 20, NULL, '2020-06-20 02:19:29', '2020-06-20 02:19:29'),
(20, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-09-20', '2020-01-18', NULL, NULL, 21, '2 MONTAJES, 2 BALANCEOS Y 1 ALINEACION (2 LLANTAS MICHELLIN DELANTERAS - COOCHOFERES)', '2020-06-20 03:15:48', '2020-06-20 03:15:48'),
(22, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2018-09-23', '2020-03-16', NULL, NULL, 23, 'COMPRA DE BATERIA AUTO MAC', '2020-06-26 23:27:34', '2020-06-26 23:27:34'),
(23, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-16', '2020-05-01', NULL, NULL, 24, 'MANTENIMIENTO PREVENTIVO', '2020-06-27 16:33:41', '2020-06-27 16:33:41'),
(25, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-26', '2020-05-11', NULL, NULL, 26, 'MANTENIMIENTO PREVENTIVO Y ARREGLO DE INSTALACIÓN DE EXTRACTORES', '2020-06-28 15:58:55', '2020-06-28 15:58:55'),
(26, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-26', '2020-03-10', NULL, NULL, 28, 'Desmonte de tapa para mtto general del A/C, evaporador nuevo del aire delantero, carga de 12 libras de gas, montaje de evaporador delantero', '2020-06-28 16:18:09', '2020-06-28 16:18:09'),
(27, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-10', '2020-05-11', NULL, NULL, 28, 'MTTO PREVENTIVO Y ARREGLO DE INSTALACION DE EXTRACTORES', '2020-06-28 16:19:13', '2020-06-28 16:19:13'),
(28, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-18', '2020-02-01', NULL, NULL, 29, 'Desmonte de tapa del A/C para mtto general, calibracion de gas y 3 libras de gas', '2020-06-28 17:16:41', '2020-06-28 17:16:41'),
(30, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '304931', 'Ejecutado', '2019-11-13', '2020-01-27', NULL, NULL, 31, 'MTTO GENERAL Y CAMBIO DEL FILTRO', '2020-07-02 22:57:42', '2020-07-02 22:57:42'),
(31, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '304931', 'Ejecutado', '2019-11-13', '2020-01-27', NULL, NULL, 35, 'MTTO GENERAL Y CAMBIO DE FILTROS', '2020-07-07 00:33:58', '2020-07-07 00:33:58'),
(32, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-01-27', '2020-05-23', NULL, NULL, 35, 'CAMBIO DE BALINERA DE AIRE ACONDICIONADO', '2020-07-07 00:36:05', '2020-07-07 00:36:05'),
(33, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-06', '2020-02-19', NULL, NULL, 36, 'MTTO GENERAL DEL AIRE ACONDICIONADO', '2020-07-07 00:37:28', '2020-07-07 00:37:28'),
(34, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-19', '2020-05-23', NULL, NULL, 36, 'MTTO PREVENTIVO A/C', '2020-07-07 00:37:57', '2020-07-07 00:37:57'),
(35, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-26', '2020-03-10', NULL, NULL, 38, 'Desmonte de tapa para mtto general del A/C, evaporador nuevo del aire delantero, carga de 12 libras de gas, montaje de evaporador delantero', '2020-07-07 00:41:04', '2020-07-07 00:41:04'),
(36, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-10', '2020-05-11', NULL, NULL, 38, 'MTTO PREVENTIVO Y ARREGLO DE INSTALACION DE EXTRACTORES FACT: 214', '2020-07-07 00:41:51', '2020-07-07 00:41:51'),
(37, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-11', '2020-04-30', NULL, NULL, 39, 'ALINEACION', '2020-07-07 00:43:02', '2020-07-07 00:43:02'),
(38, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-01', '2020-05-01', NULL, NULL, 24, 'MTTO PREVENTIVO A/C', '2020-07-07 00:43:47', '2020-07-07 00:43:47'),
(39, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-11', '2020-02-24', NULL, NULL, 40, 'MTTO GENERAL DEL A/C', '2020-07-07 00:44:54', '2020-07-07 00:44:54'),
(40, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-10-01', '2020-01-29', NULL, NULL, 41, 'ALINEACION', '2020-07-07 00:46:02', '2020-07-07 00:46:02'),
(41, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-14', '2020-05-28', NULL, NULL, 45, 'MTTO PREVENTIVO', '2020-07-07 00:53:52', '2020-07-07 00:53:52'),
(42, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-10-30', '2020-02-27', NULL, NULL, 46, 'ALINEACION Y BALANCEO', '2020-07-07 00:55:31', '2020-07-07 00:55:31'),
(43, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-28', '2020-02-27', NULL, NULL, 45, 'MTTO GENERAL DEL A/C', '2020-07-07 00:56:39', '2020-07-07 00:56:39'),
(44, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-14', '2020-02-27', NULL, NULL, 47, 'MTTO GENERAL DE A/C', '2020-07-07 00:58:21', '2020-07-07 00:58:21'),
(45, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-27', '2020-05-28', NULL, NULL, 47, 'MTTO PREVENTIVO', '2020-07-07 00:58:46', '2020-07-07 00:58:46'),
(46, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-24', '2020-04-22', NULL, NULL, 48, 'ALINEACION', '2020-07-07 01:00:04', '2020-07-07 01:00:04'),
(47, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2019-08-18', '2020-02-14', NULL, NULL, 49, 'MTTO GENERAL A/C Y CAMBIO DE FILTRO SECADO Y FILTRO ANTIESPAL Y 2 LIBRAS DE GAS', '2020-07-07 01:01:20', '2020-07-07 01:01:20'),
(48, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2019-08-05', '2020-02-01', NULL, NULL, 50, 'MTTO DE AIRE ACONDICIONADO', '2020-07-07 01:02:21', '2020-07-07 01:02:21'),
(50, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-09-29', '2020-01-27', NULL, NULL, 52, 'ALINEACION', '2020-07-07 01:06:14', '2020-07-07 01:06:14'),
(52, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-11', '2020-01-25', NULL, NULL, 54, 'MTTO GENERAL Y 5 LIBRAS DE GAS', '2020-07-07 01:09:23', '2020-07-07 01:09:23'),
(53, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-12', '2020-03-11', NULL, NULL, 55, 'ALINEACION', '2020-07-07 01:10:21', '2020-07-07 01:10:21'),
(54, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-11', '2020-01-25', NULL, NULL, 56, 'MTTO GENERAL Y 5 LIBRAS DE GAS', '2020-07-07 01:11:21', '2020-07-07 01:11:21'),
(55, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-09-06', '2020-01-04', NULL, NULL, 57, 'ALINEACION Y BALANCEO', '2020-07-07 01:12:43', '2020-07-07 01:12:43'),
(56, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-12-26', '2020-04-24', NULL, NULL, 58, 'ALINEACION', '2020-07-07 01:13:41', '2020-07-07 01:13:41'),
(57, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-14', '2020-03-13', NULL, NULL, 59, 'ALINEACION Y BALANCEO', '2020-07-07 01:14:45', '2020-07-07 01:14:45'),
(58, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2019-07-22', '2020-01-18', NULL, NULL, 60, 'DESMONTE DE COMPRESOR DEL AIRE ACONDICIONADO CAMBIO Y MTTO DEL SISTEMA', '2020-07-07 01:16:13', '2020-07-07 01:16:13'),
(59, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-13', '2020-02-26', NULL, NULL, 61, 'MTTO GENERAL DEL AIRE ACONDICIONADO', '2020-07-07 02:48:53', '2020-07-07 02:48:53'),
(60, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-26', '2020-05-26', NULL, NULL, 61, 'MTTO PREVENTIVO', '2020-07-07 02:50:26', '2020-07-07 02:50:26'),
(61, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-15', '2020-02-28', NULL, NULL, 62, 'MTTO GENERAL DE AIRE ACONDICIONADO', '2020-07-07 02:55:53', '2020-07-07 02:55:53'),
(62, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-19', '2020-04-17', NULL, NULL, 63, 'ALINEACION', '2020-07-07 03:26:05', '2020-07-07 03:26:05'),
(63, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-28', '2020-04-23', NULL, NULL, 62, 'MTTO PREVENTIVO', '2020-07-07 03:30:34', '2020-07-07 03:30:34'),
(64, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-27', '2020-06-16', NULL, NULL, 64, 'CAMBIO DE BATERIA POR GARANTIA DE COMPRA DEL 27/04/2020 - RECIBE JAIRO RODRIGUEZ', '2020-07-08 22:03:33', '2020-07-08 22:03:33'),
(65, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2019-08-12', '2020-02-08', NULL, NULL, 66, 'MTTO GENERAL DEL AIRE ACONDICIONADO Y 2 LIBRAS DE GAS', '2020-07-16 17:21:28', '2020-07-16 17:21:28'),
(66, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-08', '2020-04-17', NULL, NULL, 66, 'DESMONTE DE CROCHERA PARA CALIBRACION DEL COMPRESOR DEL AIRE', '2020-07-16 17:22:10', '2020-07-16 17:22:10'),
(67, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-17', '2020-06-18', NULL, NULL, 66, 'ARREGLO DE CORTO ELECTRICO DEL BLOWER Y RESISTENCIA', '2020-07-16 17:23:03', '2020-07-16 17:23:03'),
(68, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-20', '2020-03-19', NULL, NULL, 67, 'ALINEACION', '2020-07-16 17:24:39', '2020-07-16 17:24:39'),
(70, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2019-07-22', '2020-01-18', NULL, NULL, 69, 'CAMBIO DE SUICHE DEL AIRE ACONDICIONADO - MTTO DEL SISTEMA', '2020-07-16 17:43:57', '2020-07-16 17:43:57'),
(71, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-06-13', '2019-06-13', NULL, NULL, 70, '4 llantas 255/70R Goodyear, 4 montajes, 4 balanceos y 1 alineacion KM: 263004', '2020-07-16 18:00:49', '2020-07-16 18:00:49'),
(72, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-06-13', '2020-03-16', NULL, NULL, 70, '4 LLANTAS 255/70R16 GOODYEAR, 4 MONTAJES, 4 BALANCEOS Y 1 ALINEACION', '2020-07-16 18:02:11', '2020-07-16 18:02:11'),
(73, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-05', '2020-02-01', NULL, NULL, 71, 'MTTO DEL AIRE ACONDICIONADO Y 1 LIBRA DE GAS', '2020-07-16 18:03:50', '2020-07-16 18:03:50'),
(74, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '', 'Ejecutado', '2020-08-21', '2020-02-17', NULL, NULL, 72, 'MTTO GENERAL DEL AIRE ACONDICIONADO', '2020-07-16 19:15:20', '2020-07-16 19:15:20'),
(75, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '', 'Ejecutado', '2020-02-17', '2020-04-24', NULL, NULL, 72, 'DESMONTE DE VILLARET PARA CAMBIO DE EVAPORADOR', '2020-07-16 19:17:40', '2020-07-16 19:17:40'),
(76, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '218812', 'Ejecutado', '2019-02-20', '2020-02-19', NULL, NULL, 73, '4 LLANTAS 255/70R16 GOODYEAR, 4 BALANCEOS Y 4 MONTAJES', '2020-07-16 19:24:45', '2020-07-16 19:24:45'),
(77, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '218812', 'Ejecutado', '2019-10-20', '2020-02-17', NULL, NULL, 74, 'ALINEACION', '2020-07-16 19:29:11', '2020-07-16 19:29:11'),
(78, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-23', '2020-02-06', NULL, NULL, 75, 'MTTO GENERAL DEL AIRE ACONDICIONADO', '2020-07-16 19:40:16', '2020-07-16 19:40:16'),
(79, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-06', '2020-05-26', NULL, NULL, 75, 'MTTO PREVENTIVO', '2020-07-16 19:40:52', '2020-07-16 19:40:52'),
(80, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '', 'Ejecutado', '2020-02-15', '2020-06-06', NULL, NULL, 9, 'MTTO GENERAL DEL AIRE ACONDICIONADO', '2020-07-16 19:44:32', '2020-07-16 19:44:32'),
(81, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-05-23', '2020-06-06', NULL, NULL, 35, 'MTTO GENERAL DEL AIRE ACONDICIONADO', '2020-07-16 19:47:16', '2020-07-16 19:47:16'),
(82, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-01', '2020-06-10', NULL, NULL, 29, 'MTTO GENERAL DEL AIRE ACONDICIONADO', '2020-07-16 19:48:24', '2020-07-16 19:48:24'),
(83, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-24', '2020-06-09', NULL, NULL, 40, 'MTTO GENERAL DEL AIRE ACONDICIONADO', '2020-07-16 19:50:05', '2020-07-16 19:50:05'),
(84, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-09', '2020-01-23', NULL, NULL, 76, 'DESMONTE DE TAPA DEL AIRE ACONDICIONADO PARA MTTO - CAMBIO DE FILTRO SECADOR', '2020-07-16 20:02:12', '2020-07-16 20:02:12'),
(85, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-23', '2020-04-28', NULL, NULL, 76, 'MTTO PREVENTIVO', '2020-07-16 20:02:49', '2020-07-16 20:02:49'),
(86, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-29', '2020-03-13', NULL, NULL, 78, 'MTTO GENERAL AIRE ACONDICIONADO', '2020-07-16 21:42:39', '2020-07-16 21:42:39'),
(87, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-01', '2020-04-16', NULL, NULL, 79, 'ARREGLO DE AIRE TRASERO Y AIRE DELANTERO', '2020-07-17 02:38:33', '2020-07-17 02:38:33'),
(88, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-25', '2020-03-10', NULL, NULL, 80, 'cambio de valvula de presion y 2 libras de gas', '2020-07-17 02:40:17', '2020-07-17 02:40:17'),
(89, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-10', '2020-04-27', NULL, NULL, 80, 'DESMONTE DE VILLARET PARA MTTO DE AIRE DELANTERO Y DESMONTE DE AIRE TRASERO PARA MTTO', '2020-07-17 02:41:00', '2020-07-17 02:41:00'),
(90, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-01', '2020-04-30', NULL, NULL, 81, 'ALINEACION', '2020-09-13 02:49:56', '2020-09-13 02:49:56'),
(91, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-01-17', '2020-05-12', NULL, NULL, 82, 'Cambio de dos llantas 215/75 R17.5 goodyear', '2020-09-14 17:30:42', '2020-09-14 17:30:42'),
(92, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-23', '2020-08-11', NULL, NULL, 36, 'Mantenimiento general de aire acondicionados, 4 lbs de gas', '2020-09-14 18:01:58', '2020-09-14 18:01:58'),
(93, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-11', '2020-02-25', NULL, NULL, 55, 'Balanceo por cambio de dos llantas', '2020-09-14 18:27:34', '2020-09-14 18:27:34'),
(94, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-05-20', '2020-02-25', NULL, NULL, 83, 'Cambio de 2 llantas 9.5 R17.5 Goodyear', '2020-09-14 18:30:32', '2020-09-14 18:30:32'),
(95, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-25', '2020-07-23', NULL, NULL, 56, 'Mantenimiento general del aire acondicionado, 3 lbs de gas', '2020-09-14 18:38:59', '2020-09-14 18:38:59'),
(96, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-23', '2020-07-21', NULL, NULL, 56, 'Matenimiento general del aire acondicionado', '2020-09-14 18:45:23', '2020-09-14 18:45:23'),
(97, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-18', '2020-09-05', NULL, NULL, 66, 'Mantenimiento del aire de cabina y calibración de gas(1 Lb)', '2020-09-14 18:48:18', '2020-09-14 18:48:18'),
(98, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-18', '2020-08-10', NULL, NULL, 69, 'Mantenimiento general, 1Lb de gas', '2020-09-14 18:49:15', '2020-09-14 18:49:15'),
(99, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-22', '2020-05-09', NULL, NULL, 48, 'Alinación y balanceo', '2020-09-14 19:22:10', '2020-09-14 19:22:10'),
(100, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-04-11', '2020-05-09', NULL, NULL, 84, 'Cambio de 4 llantas 255/70 R16 Goodyear', '2020-09-14 19:24:37', '2020-09-14 19:24:37'),
(101, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-14', '2020-08-21', NULL, NULL, 49, 'Mantenimiento del aire de cabina y calibración de gas, 1Lb de gas', '2020-09-14 19:25:32', '2020-09-14 19:25:32'),
(102, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2018-12-13', '2020-05-05', NULL, NULL, 85, '1 Bateria auto mac 980 amp ca 22°C', '2020-09-14 19:51:20', '2020-09-14 19:51:20'),
(104, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-03-18', '2019-05-09', NULL, NULL, 86, 'cambio de 4 llantas 255/70 R16', '2020-09-14 19:54:50', '2020-09-14 19:54:50'),
(105, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-01', '2020-07-18', NULL, NULL, 50, 'Mantenimiento general del aire acondicionado, 2 Lbs de gas 134A', '2020-09-14 19:55:47', '2020-09-14 19:55:47'),
(106, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '', 'Ejecutado', '2020-08-30', '2020-08-26', NULL, NULL, 87, 'Mantenimmiento general del aire delantero, arreglo de fuga de gas, circuito electrico del ventilador, 3 Lbs de gas, 1 aceite de compresor, 1 filtro secador, 1 válvula de presión', '2020-09-14 20:16:25', '2020-09-14 20:16:25'),
(107, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-04', '2020-08-06', NULL, NULL, 15, 'Desmonte de villarec para mantenimiento del aire delantero y trasero, 1 lb de gas aire delantero, 1 lb de gas aire trasero.', '2020-09-14 20:19:11', '2020-09-14 20:19:11'),
(108, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-30', '2020-06-12', NULL, NULL, 39, 'Alineación y balanceo por cambio de 6 llantas', '2020-09-14 20:32:45', '2020-09-14 20:32:45'),
(109, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-03-21', '2020-06-12', NULL, NULL, 88, 'Cambio de 6 llantas 225/75 R16 Goodyear', '2020-09-14 20:35:49', '2020-09-14 20:35:49'),
(110, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-11', '2020-07-17', NULL, NULL, 38, 'Mantenimiento general, arreglo del blower aire acondicionado delantero', '2020-09-14 20:39:28', '2020-09-14 20:39:28'),
(111, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-13', '2020-07-18', NULL, NULL, 78, 'Mantenimiento general del aire acondicionado, 2 lbs de gas 134A', '2020-09-14 20:48:44', '2020-09-14 20:48:44'),
(112, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-14', '2020-06-12', NULL, NULL, 11, 'Alineación y balanceo por cambio de 4 llantas', '2020-09-14 20:50:16', '2020-09-14 20:50:16'),
(113, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-06-14', '2020-06-12', NULL, NULL, 89, 'Cambio de 4 llantas 205/75 R16 Goodyear', '2020-09-14 20:54:20', '2020-09-14 20:54:20'),
(114, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-16', '2020-08-12', NULL, NULL, 79, 'Desmonte de villarec para mantenimiento de aire delantero y desmonte de aire trasero para mantenimiento, 1 lb de gas delantero, 1 lb de gas trasero', '2020-09-14 21:34:42', '2020-09-14 21:34:42'),
(115, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-29', '2020-06-18', NULL, NULL, 18, 'Alineación y balanceo por cambio de 6 llantas', '2020-09-14 21:36:01', '2020-09-14 21:36:01'),
(116, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-23', '2020-06-18', NULL, NULL, 90, 'Compra de 6 llantas 195/75 R16 carga marathon 2', '2020-09-14 21:38:31', '2020-09-14 21:38:31'),
(117, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-18', '2020-06-27', NULL, NULL, 18, 'Alineación', '2020-09-14 21:40:18', '2020-09-14 21:40:18'),
(118, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '', 'Ejecutado', '2020-06-06', '2020-09-05', NULL, NULL, 9, 'Mantenimiento general de aire acondicionado, 3 lbs de gas', '2020-09-14 21:41:44', '2020-09-14 21:41:44'),
(119, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '205020', 'Ejecutado', '2018-06-29', '2020-05-05', NULL, NULL, 91, 'Cambio de 2 baterias auto mac', '2020-09-14 22:03:24', '2020-09-14 22:03:24'),
(120, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '205020', 'Ejecutado', '2019-12-07', '2020-04-09', NULL, NULL, 92, 'Mantenimiento preventivo y cambio de blower ( Correctivo)', '2020-09-14 22:11:06', '2020-09-14 22:11:06'),
(121, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-04-09', '2020-08-10', NULL, NULL, 92, 'Mantenimiento del aire acondicionado general, 3lb de gas', '2020-09-14 22:14:29', '2020-09-14 22:14:29'),
(122, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-01-17', '2020-05-11', NULL, NULL, 93, '1 Bateria auto mac silver', '2020-09-15 02:12:20', '2020-09-15 02:12:20'),
(123, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-01-17', '2020-07-02', NULL, NULL, 94, '1 Bateria Auto Mac Gold', '2020-09-15 02:32:15', '2020-09-15 02:32:15'),
(126, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-25', '2020-04-17', NULL, NULL, 55, 'Alineación por garantia de 30 dias', '2020-09-22 03:31:49', '2020-09-22 03:31:49'),
(127, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-17', '2020-08-15', NULL, NULL, 55, 'Alineación por garantia de 30 dias', '2020-09-22 03:41:00', '2020-09-22 03:41:00'),
(128, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-15', '2020-09-09', NULL, NULL, 55, 'ALINEACIÓN POR ROTACIÓN DE LLANTAS', '2020-09-22 19:13:40', '2020-09-22 19:13:40'),
(129, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '304931', 'Ejecutado', '2019-12-11', '2020-04-20', NULL, NULL, 96, 'ALINEACIÓN - Diagnostico (Adjustar splinderes delanteros y cambiar llantas delanteras)', '2020-09-22 19:23:39', '2020-09-22 19:23:39'),
(130, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-04-20', '2020-04-28', NULL, NULL, 96, 'ALINEACIÓN CON LOS HALLAZGOS ANTERIORES CERRADOS', '2020-09-22 19:24:56', '2020-09-22 19:24:56'),
(131, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-04-28', '2020-08-26', NULL, NULL, 96, 'ALINEACIÓN POR GARANTIA DE 30 DIAS \r\nHallazgos: Cambiar pines o esplinderes de tren delantero, cambiar rodamiento delantero derecho y engrasar el izquierdo', '2020-09-22 19:27:12', '2020-09-22 19:27:12'),
(136, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-27', '2020-01-10', NULL, NULL, 99, 'ALINEACIÓN, BALANCEO Y ROTACIÓN. LA ALINEACIÓN FUE LLEVADA A CABO EL 08 DE ENERO HALLAZGOS: TERMINALES AXIALES O COLOMBINASIZQUIERDA DERECHA, COLGANTES DE BARRA ESTABILIZADORA 2', '2020-09-22 19:57:27', '2020-09-22 19:57:27'),
(137, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-10', '2020-02-10', NULL, NULL, 99, 'ALINEACIÓN Y BALANCEO', '2020-09-22 19:58:19', '2020-09-22 19:58:19'),
(138, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-10', '2020-03-11', NULL, NULL, 99, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 19:59:09', '2020-09-22 19:59:09'),
(139, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-11', '2020-05-09', NULL, NULL, 99, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE 4 LLANTAS', '2020-09-22 20:13:08', '2020-09-22 20:13:08'),
(140, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-09', '2020-06-08', NULL, NULL, 99, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 20:13:49', '2020-09-22 20:13:49'),
(141, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-29', '2020-02-24', NULL, NULL, 41, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 20:16:22', '2020-09-22 20:16:22'),
(142, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-24', '2020-05-20', NULL, NULL, 41, 'ALINEACIÓN', '2020-09-22 20:36:15', '2020-09-22 20:36:15'),
(143, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-20', '2020-06-17', NULL, NULL, 41, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 20:40:36', '2020-09-22 20:40:36'),
(144, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-29', '2020-04-21', NULL, NULL, 100, 'ALINEACIÓN -DIAGNOSTICO (TERMINAL DE BARRA CORTA LADO RUEDA IZQUIERDA Y TENSIÓN DE FRENO)', '2020-09-22 20:44:20', '2020-09-22 20:44:20'),
(145, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-21', '2020-04-27', NULL, NULL, 100, 'ALINEACIÓN CIERRE DE HALLAZGOS ANTERIORES', '2020-09-22 20:45:06', '2020-09-22 20:45:06'),
(146, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-27', '2020-05-23', NULL, NULL, 100, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 20:45:42', '2020-09-22 20:45:42'),
(147, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-27', '2020-04-24', NULL, NULL, 46, 'ALINEACIÓN POR GARANTIA DE 30 DIAS (DEBIDO A LA PANDEMIA SE REALIZÓ EN ESTA FECHA)', '2020-09-22 20:49:49', '2020-09-22 20:49:49'),
(148, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-24', '2020-05-23', NULL, NULL, 46, '1 ALINEACIÓN Y 2 BALANCEOS POR CAMBIO DE DOS LLANTAS DELANTERAS', '2020-09-22 20:58:32', '2020-09-22 20:58:32'),
(149, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-24', '2020-01-25', NULL, NULL, 101, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 21:05:07', '2020-09-22 21:05:07'),
(150, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-26', '2020-01-25', NULL, NULL, 103, 'ALINEACIÓN POR GARANTIA DE 30 DIAS DEL 24/12/2019', '2020-09-22 21:10:55', '2020-09-22 21:10:55'),
(152, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-12-26', '2020-01-25', NULL, NULL, 104, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 21:13:45', '2020-09-22 21:13:45'),
(153, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-25', '2020-03-13', NULL, NULL, 104, 'ALINEACIÓN Y BALANCEO', '2020-09-22 21:14:27', '2020-09-22 21:14:27'),
(154, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-13', '2020-04-20', NULL, NULL, 104, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 21:15:00', '2020-09-22 21:15:00'),
(156, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-15', '2020-05-30', NULL, NULL, 104, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE LLANTAS DELANTERAS', '2020-09-22 21:39:03', '2020-09-22 21:39:03'),
(157, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-12-26', '2020-01-25', NULL, NULL, 105, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 21:41:23', '2020-09-22 21:41:23'),
(158, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-25', '2020-03-13', NULL, NULL, 105, 'ALINEACIÓN Y BALANCEO', '2020-09-22 21:42:25', '2020-09-22 21:42:25'),
(159, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-13', '2020-04-20', NULL, NULL, 105, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 21:44:03', '2020-09-22 21:44:03'),
(160, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-20', '2020-05-30', NULL, NULL, 105, 'ALINEACIÓN Y BALANCEO POR 2 CAMBIO DE LLANTAS DELANTERAS', '2020-09-22 21:54:46', '2020-09-22 21:54:46'),
(161, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-30', '2020-08-15', NULL, NULL, 105, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE 2 LLANTAS. ( Las 2 llantas delantera del mes de mayo se trasladaron a una pacha trasera)', '2020-09-22 21:57:03', '2020-09-22 21:57:03'),
(162, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-15', '2020-09-09', NULL, NULL, 105, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-22 22:01:26', '2020-09-22 22:01:26'),
(163, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-08', '2020-09-15', NULL, NULL, 99, 'ALINEACIÓN', '2020-09-22 22:21:03', '2020-09-22 22:21:03'),
(164, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-03', '2020-01-03', NULL, NULL, 106, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 02:35:40', '2020-09-23 02:35:40'),
(165, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-03', '2020-03-06', NULL, NULL, 106, 'ALINEACIÓN', '2020-09-23 02:36:29', '2020-09-23 02:36:29'),
(166, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-06', '2020-04-23', NULL, NULL, 106, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 02:37:18', '2020-09-23 02:37:18'),
(167, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-23', '2020-07-09', NULL, NULL, 106, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE 2 LLANTAS DELANTERAS', '2020-09-23 02:41:27', '2020-09-23 02:41:27'),
(168, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-09', '2020-08-03', NULL, NULL, 106, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 02:42:52', '2020-09-23 02:42:52'),
(169, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-03', '2020-09-19', NULL, NULL, 106, 'ALINEACIÓN DEBIDO A QUE EL VEHICULO PRESENTABA INCONSISTENCIAS. Hallazgos: Ajustar o cambiar pin o esplinder izquierdo tren delantero, arreglar o cambiar terminal de barra corta de la dirección lado atras o codo', '2020-09-23 03:27:35', '2020-09-23 03:27:35'),
(171, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-28', '2020-01-28', NULL, NULL, 108, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 03:39:05', '2020-09-23 03:39:05'),
(172, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-28', '2020-04-21', NULL, NULL, 108, 'ALINEACIÓN - BALANCEO', '2020-09-23 03:42:16', '2020-09-23 03:42:16'),
(173, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-21', '2020-05-20', NULL, NULL, 108, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 03:43:16', '2020-09-23 03:43:16'),
(174, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-20', '2020-09-17', NULL, NULL, 108, 'ALINEACIÓN', '2020-09-23 03:43:52', '2020-09-23 03:43:52'),
(175, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-12-10', '2020-02-03', NULL, NULL, 109, 'ALINEACIÓN. HALLAZGO: AJUSTAR BOTELLA DE DIRECCIÓN, BUJES DE MUELLES DELANTERO', '2020-09-23 04:01:56', '2020-09-23 04:01:56'),
(176, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-02-03', '2020-02-28', NULL, NULL, 109, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 04:02:41', '2020-09-23 04:02:41'),
(177, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-02-28', '2020-05-15', NULL, NULL, 109, 'ALINEACIÓN', '2020-09-23 04:04:39', '2020-09-23 04:04:39'),
(178, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-05-15', '2020-06-16', NULL, NULL, 109, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 04:05:47', '2020-09-23 04:05:47'),
(179, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-06-16', '2020-08-05', NULL, NULL, 109, 'ALINEACIÓN POR ROTACIÓN DE LLANTAS DELANTERAS.  HALLAZGO DEL DIAGNOSTICO : CAMBIAR TERMINALES BARRA LARGA O CENTRAL DE LA DIRECCION', '2020-09-23 04:07:46', '2020-09-23 04:07:46'),
(180, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-08-05', '2020-08-27', NULL, NULL, 109, 'ALINEACIÓN POR CIERRE DE LOS HALLAZGOS ANTERIORES', '2020-09-23 04:09:09', '2020-09-23 04:09:09'),
(181, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-28', '2020-05-20', NULL, NULL, 20, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 20:53:13', '2020-09-23 20:53:13'),
(182, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-20', '2020-09-17', NULL, NULL, 20, 'ALINEACIÓN', '2020-09-23 20:55:11', '2020-09-23 20:55:11'),
(183, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-12', '2020-06-17', NULL, NULL, 39, 'ALINEACIÓN POR CIERRE DE HALLAZGOS ANTERIORES 12/06/2020', '2020-09-23 21:09:10', '2020-09-23 21:09:10'),
(184, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-17', '2020-07-17', NULL, NULL, 39, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 21:09:46', '2020-09-23 21:09:46'),
(185, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-18', '2020-04-30', NULL, NULL, 21, 'ALINEACIÓN Y BALANCEO', '2020-09-23 21:22:48', '2020-09-23 21:22:48'),
(186, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-30', '2020-06-05', NULL, NULL, 21, 'ALIENACIÓN POR GARANTIA DE 30 DIAS Y HALLAZGO: DESGASTE EXTERNO DE LLANTA DELANTERA DERECHA', '2020-09-23 21:23:52', '2020-09-23 21:23:52'),
(187, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-05', '2020-07-28', NULL, NULL, 21, 'ALINEACIÓN BALANCEO Y MONTAJE DE 2 LLANTAS DELANTERAS', '2020-09-23 21:26:16', '2020-09-23 21:26:16'),
(188, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-28', '2020-08-03', NULL, NULL, 21, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 21:36:50', '2020-09-23 21:36:50'),
(189, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-23', '2020-04-21', NULL, NULL, 110, 'ALINEACION -DIAGNOSTICO\r\nHALLAZGO: TERMINALES AXIALES O COLOMBINA IZQUIERDA Y DERECHA', '2020-09-23 21:55:02', '2020-09-23 21:55:02'),
(190, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-21', '2020-06-16', NULL, NULL, 110, 'ALINEACIÓN POR CIERRE DE HALLAZGOS ANTERIORES', '2020-09-23 21:55:59', '2020-09-23 21:55:59'),
(191, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-16', '2020-08-01', NULL, NULL, 110, 'ALINEACION  Y BALANCEO POR CAMBIO DE LLANTAS DELANTERAS\r\nHALLAZGO: Cambiar amortiguadores delanteros', '2020-09-23 22:02:53', '2020-09-23 22:02:53'),
(192, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-01', '2020-09-02', NULL, NULL, 110, 'ALINEACIÓN POR GARANTIA DE 30 DIAS Y CIERRE DE HALLAZGOS ANTERIORES', '2020-09-23 22:03:53', '2020-09-23 22:03:53'),
(193, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-27', '2020-07-31', NULL, NULL, 18, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-23 22:07:00', '2020-09-23 22:07:00'),
(194, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-08-27', '2020-09-17', NULL, NULL, 109, 'ALINEACIÓN POR CAMBIO DE LLANTAS DELANTERAS. DIAGNOSTICO: CAMBIAR TERMINALES', '2020-09-24 01:07:53', '2020-09-24 01:07:53'),
(195, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '205020', 'Ejecutado', '2020-09-17', '2020-09-21', NULL, NULL, 109, 'ALINEACIÓN POR CIERRE DE HALLAZGOS ANTERIORES', '2020-09-24 01:14:20', '2020-09-24 01:14:20'),
(196, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-27', '2020-05-21', NULL, NULL, 52, 'ALINEACIÓN. HALLAZGO: ESFERICAS O ROTULAS INFERIORES IZQUIERDAY DERECHA', '2020-09-24 01:20:07', '2020-09-24 01:20:07'),
(197, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '218812', 'Ejecutado', '2020-02-17', '2020-02-19', NULL, NULL, 74, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE 4 LLANTAS', '2020-09-24 01:35:13', '2020-09-24 01:35:13'),
(198, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '218812', 'Ejecutado', '2020-02-19', '2020-08-06', NULL, NULL, 74, 'ALINEACIÓN - DIAGNOSTICO ( CAMBIAR BUJES Y LEVAS DE TIJERAS INFERIOR DERECHA, TRAER EL VEHICULO CON EL AIRBAG DEL VOLANTE DESACTIVADO PARA PODER CENTRAR EL VOLANTE)', '2020-09-24 01:37:22', '2020-09-24 01:37:22'),
(199, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-20', '2020-02-25', NULL, NULL, 111, 'ALINEACIÓN - DIAGNOSTICO ( ESFERICA O ROTULA INFERIOR DERECHA)', '2020-09-24 01:43:47', '2020-09-24 01:43:47'),
(200, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-25', '2020-04-22', NULL, NULL, 111, 'ALINEACIÓN', '2020-09-24 01:44:30', '2020-09-24 01:44:30'),
(201, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-19', '2020-04-27', NULL, NULL, 67, 'ALINEACIÓN POR GARANTIA DE 30 DIAS.\r\nHALLAZGO: CAMBIAR LLANTAS DELANTERAS', '2020-09-24 01:47:48', '2020-09-24 01:47:48'),
(202, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-27', '2020-05-14', NULL, NULL, 67, 'ALINEACIÓN POR CAMBIO DE 4 LLANTAS', '2020-09-24 01:50:53', '2020-09-24 01:50:53'),
(203, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-14', '2020-06-11', NULL, NULL, 67, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-24 01:52:43', '2020-09-24 01:52:43'),
(204, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-13', '2020-05-21', NULL, NULL, 59, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-24 01:56:42', '2020-09-24 01:56:42'),
(205, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-21', '2020-09-18', NULL, NULL, 59, 'ALINEACIÓN - DIAGNOSTICO (DIAGNOSTICO: CAMBIAR TERMINALES AXIALES O COLOMBINAS DERECHA)', '2020-09-24 02:03:36', '2020-09-24 02:03:36'),
(206, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-09-17', '2020-09-01', NULL, NULL, 108, 'BALANCEO', '2020-09-24 02:54:59', '2020-09-24 02:54:59'),
(207, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-28', '2020-01-13', NULL, NULL, 112, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE LLANTAS', '2020-09-24 03:11:51', '2020-09-24 03:11:51'),
(208, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-13', '2020-02-04', NULL, NULL, 112, 'ALINEACION POR GARANTIA DE 30 DIAS', '2020-09-24 03:19:26', '2020-09-24 03:19:26'),
(209, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-04', '2020-04-17', NULL, NULL, 112, 'ALINEACION', '2020-09-24 03:23:17', '2020-09-24 03:23:17'),
(210, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-17', '2020-05-15', NULL, NULL, 112, 'ALINEAION DE GARANTIA POR 30 DIAS', '2020-09-24 03:24:13', '2020-09-24 03:24:13'),
(211, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-15', '2020-06-25', NULL, NULL, 112, 'BALANEO', '2020-09-24 03:29:39', '2020-09-24 03:29:39'),
(212, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-06-25', '2020-08-04', NULL, NULL, 112, 'ALINEACION Y BALANCEO POR CAMBIO DE LLANTAS DE LANTERA', '2020-09-24 03:32:34', '2020-09-24 03:32:34'),
(213, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-04', '2020-08-18', NULL, NULL, 112, 'ALINEACION POR GARANTIA', '2020-09-24 03:36:13', '2020-09-24 03:36:13'),
(217, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-21', '2020-04-20', NULL, NULL, 114, 'ALINEACION . DIAGNOSTICO: TERMINAL DE BARRA CORTA LADO RUEDA, AJUSTAR ESPLINDERES', '2020-09-24 19:13:17', '2020-09-24 19:13:17'),
(218, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-10-24', '2020-02-21', NULL, NULL, 115, 'ALINEACION', '2020-09-24 19:14:35', '2020-09-24 19:14:35');
INSERT INTO `historial_r_e_s` (`id`, `parte`, `prioridad`, `frecuencia`, `fuente`, `km_actual`, `estado`, `fecha_programado`, `fecha_ejecutado`, `cant_programdo`, `cant_ejecutado`, `recomendacion_id`, `observacion`, `created_at`, `updated_at`) VALUES
(219, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-21', '2020-04-20', NULL, NULL, 115, 'ALINEACIO - DIAGNOSTICO: TERMINAL DE BARRA CORTA LADO RUEDA, AJUSTE DE ESPLINDERES', '2020-09-24 19:15:30', '2020-09-24 19:15:30'),
(220, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-20', '2020-04-24', NULL, NULL, 115, 'ALINEACION POR GARANTIA Y CIERRE DE HALLAZGOS ANTERIORES', '2020-09-24 19:16:40', '2020-09-24 19:16:40'),
(221, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-04', '2020-01-29', NULL, NULL, 57, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-24 21:40:04', '2020-09-24 21:40:04'),
(222, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-27', '2020-02-07', NULL, NULL, 116, 'ALINEACION\r\nHALLAZGO: Terminal axial o colombina izquierda\r\nTerminal corto de la direccion izquierda)', '2020-09-24 22:24:44', '2020-09-24 22:24:44'),
(223, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-07', '2020-02-25', NULL, NULL, 116, 'ALINEACIÓN CIERRE DE HALLAZGOS ANTERIORES', '2020-09-24 22:25:34', '2020-09-24 22:25:34'),
(224, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-25', '2020-05-08', NULL, NULL, 116, 'ALINEACION (DIAGNOSTICO) \r\nHALLAZGO: Terminales cortos de ladireccion izquierda)', '2020-09-24 22:28:15', '2020-09-24 22:28:15'),
(225, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-08', '2020-09-09', NULL, NULL, 116, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE 6 LLANTAS', '2020-09-24 22:29:47', '2020-09-24 22:29:47'),
(226, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-09', '2020-02-21', NULL, NULL, 117, 'ALINEACIÓN', '2020-09-25 00:41:51', '2020-09-25 00:41:51'),
(227, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-21', '2020-04-23', NULL, NULL, 117, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-25 00:42:31', '2020-09-25 00:42:31'),
(228, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-23', '2020-08-21', NULL, NULL, 117, 'ALINEACIÓN POR GARANTIA', '2020-09-25 00:47:18', '2020-09-25 00:47:18'),
(229, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-21', '2020-09-09', NULL, NULL, 117, 'ALIENACIÓN POR CAMBIO DE 2 LLANTAS DELANTERAS', '2020-09-25 00:48:22', '2020-09-25 00:48:22'),
(230, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-22', '2020-03-16', NULL, NULL, 118, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE LLANTAS DELANTERAS', '2020-09-25 00:55:52', '2020-09-25 00:55:52'),
(231, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-03-16', '2020-04-27', NULL, NULL, 118, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-25 00:58:06', '2020-09-25 00:58:06'),
(232, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-17', '2020-02-28', NULL, NULL, 119, 'ALINEACIÓN POR GARANTIA', '2020-09-25 01:06:57', '2020-09-25 01:06:57'),
(233, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-28', '2020-04-23', NULL, NULL, 119, 'ALINEACIÓN', '2020-09-25 01:07:36', '2020-09-25 01:07:36'),
(234, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-23', '2020-05-16', NULL, NULL, 119, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-25 01:08:36', '2020-09-25 01:08:36'),
(235, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-16', '2020-05-27', NULL, NULL, 119, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE LAS 4 LLANTAS', '2020-09-25 01:09:56', '2020-09-25 01:09:56'),
(236, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-27', '2020-09-19', NULL, NULL, 119, 'ALINEACIÓN Y BALANCEO', '2020-09-25 01:39:28', '2020-09-25 01:39:28'),
(237, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-18', '2020-01-03', NULL, NULL, 120, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-25 01:44:57', '2020-09-25 01:44:57'),
(238, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-03', '2020-04-21', NULL, NULL, 120, 'ALINEACIÓN', '2020-09-25 01:45:46', '2020-09-25 01:45:46'),
(239, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-21', '2020-05-21', NULL, NULL, 120, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-25 01:46:31', '2020-09-25 01:46:31'),
(240, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-21', '2020-07-16', NULL, NULL, 120, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE 2 LLANTAS DELANTERAS', '2020-09-25 01:47:45', '2020-09-25 01:47:45'),
(241, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-16', '2020-08-10', NULL, NULL, 120, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-25 01:48:31', '2020-09-25 01:48:31'),
(242, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-30', '2020-06-03', NULL, NULL, 81, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-25 01:57:12', '2020-09-25 01:57:12'),
(243, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-11-10', '2020-11-10', NULL, NULL, 121, 'BATERIA AUTO MAC 31T1250 - 31T1100', '2021-01-29 00:27:13', '2021-01-29 00:27:13'),
(244, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-06-06', '2020-09-12', NULL, NULL, 35, 'MANTENIMIENTO GENERAL DEL AIRE ACONDICIONADO, 3 LB DE GAS', '2021-01-29 00:29:20', '2021-01-29 00:29:20'),
(245, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-09-12', '2020-09-22', NULL, NULL, 35, 'DESMONTE DE COMPRESOR PARA REPARACIÓN, 12 LIBRAS DE GAS, 1/4 DE ACEITE, 41 EMPAQUE DE CULATINA', '2021-01-29 00:41:04', '2021-01-29 00:41:04'),
(246, 'LIMPIA PARABRISAS', 'Alta', '10000', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-10-06', '2020-10-06', NULL, NULL, 122, 'MANTENIMIENTO MOTORES LIMPIA PARABRISAS', '2021-01-29 00:53:59', '2021-01-29 00:53:59'),
(247, 'FLUIDOS DE FRENOS Y EMBRIAGUE', 'Media', '40.000', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-10-08', '2020-10-08', NULL, NULL, 124, '1 LIQUIDO DE FRENO AT ALEMAN 1/4', '2021-01-29 00:56:44', '2021-01-29 00:56:44'),
(248, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-09-22', '2020-11-09', NULL, NULL, 35, 'COMPRA 80 CM DE MANGUERA ALTA PRESION Y ACOPLES, MANTENIMIENTO DE EQUIPO, SENSORES PRESOSTATOS ALTA Y BAJA, CARGA DE GAS COMPLETA, ACEITE COMPRESOR', '2021-01-29 01:32:09', '2021-01-29 01:32:09'),
(249, 'EMBRAGUE', 'Alta', '10000', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-11-17', '2020-11-17', NULL, NULL, 126, 'Kit de embrague prensa disco balinera', '2021-01-29 01:49:27', '2021-01-29 01:49:27'),
(250, 'EMBRAGUE', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2020-09-10', '2020-09-10', NULL, NULL, 127, '1 Kit de embrague NPR', '2021-01-29 03:57:58', '2021-01-29 03:57:58'),
(251, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-11', '2020-11-26', NULL, NULL, 36, 'Mantenimiento equipo aire acondicionado', '2021-01-29 17:28:59', '2021-01-29 17:28:59'),
(253, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-09-27', '2020-09-27', NULL, NULL, 56, 'Revisión y cambio de válvula de expansión del aire acondicionado, 12 libras de gas, 2 aceite, polarizado', '2021-01-29 17:57:45', '2021-01-29 17:57:45'),
(256, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-11-05', '2020-11-28', NULL, NULL, 56, 'Bajar compresor para reparación, empaquetadura compresor, recarga gas completa, aceite, mantenimiento de equipo', '2021-01-29 19:19:09', '2021-01-29 19:19:09'),
(257, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '439008', 'Ejecutado', '2019-06-07', '2019-06-07', NULL, NULL, 128, '3 Bateria Auto Mac 31H1200', '2021-02-09 00:40:39', '2021-02-09 00:40:39'),
(259, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '439008', 'Ejecutado', '2019-12-27', '2020-04-09', NULL, NULL, 129, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 ACEITE DE MOTOR', '2021-02-09 00:48:54', '2021-02-09 00:48:54'),
(260, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '439008', 'Ejecutado', '2020-04-09', '2020-07-28', NULL, NULL, 129, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n2 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n8 1/4 ACEITE DE MOTOR', '2021-02-09 00:50:30', '2021-02-09 00:50:30'),
(261, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '439008', 'Ejecutado', '2020-07-28', '2020-10-26', NULL, NULL, 129, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n2 FILTRO DE TRAMPA\r\n9 1/4 ACEITE DE MOTOR', '2021-02-09 00:51:40', '2021-02-09 00:51:40'),
(262, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '439008', 'Ejecutado', '2020-10-26', '2021-02-01', NULL, NULL, 129, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n2 FILTRO DE TRAMPA\r\n10/4 ACEITE DE MOTOR', '2021-02-09 00:54:10', '2021-02-09 00:54:10'),
(263, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '439008', 'Ejecutado', '2020-11-26', '2021-01-12', NULL, NULL, 36, 'Cambio de pacha de fusible y corrección de cakentamiento del sistema electrico, 1 portafusible y fusible', '2021-02-09 01:02:18', '2021-02-09 01:02:18'),
(264, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '304931', 'Ejecutado', '2020-11-10', '2020-11-10', NULL, NULL, 130, '2 Bateria Auto Mac 31T1250-31T1100', '2021-02-09 01:20:59', '2021-02-09 01:20:59'),
(265, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '304931', 'Ejecutado', '2019-11-19', '2020-03-09', NULL, NULL, 131, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\n10 1/4 DE ACEITE DE MOTOR \r\nEstaban en bodega', '2021-02-09 01:23:05', '2021-02-09 01:23:05'),
(266, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '304931', 'Ejecutado', '2020-03-09', '2020-07-25', NULL, NULL, 131, '1 FILTRO DE ACEITE\r\n1 FILTRO AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA\r\n10 1/4 ACEITE DE MOTOR', '2021-02-09 01:24:15', '2021-02-09 01:24:15'),
(267, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '304931', 'Ejecutado', '2020-07-25', '2020-08-15', NULL, NULL, 131, 'ADICION DE 2 1/4 DE ACEITE DE MOTOR', '2021-02-09 01:24:54', '2021-02-09 01:24:54'),
(268, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '304931', 'Ejecutado', '2020-08-15', '2020-10-20', NULL, NULL, 131, '1 FILTRO DE ACEITE\r\n2 FILTRO AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA\r\n10 1/4 ACEITE DE MOTOR', '2021-02-09 01:26:02', '2021-02-09 01:26:02'),
(269, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '263141', 'Ejecutado', '2019-05-24', '2019-05-24', NULL, NULL, 132, '2 Bateria Auto Mac 31H1200', '2021-02-09 01:33:24', '2021-02-09 01:33:24'),
(270, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '263141', 'Ejecutado', '2019-10-08', '2020-02-07', NULL, NULL, 133, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n16 1/4 DE ACEITE DE MOTOR', '2021-02-09 01:37:27', '2021-02-09 01:37:27'),
(271, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '263141', 'Ejecutado', '2020-02-07', '2020-06-18', NULL, NULL, 133, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE TRAMPA\r\n16 1/4 DE ACEITE DE MOTOR', '2021-02-09 01:38:40', '2021-02-09 01:38:40'),
(272, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '263141', 'Ejecutado', '2020-06-18', '2020-09-02', NULL, NULL, 133, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 2 FILTROS DE ACPM\r\n16/4 ACEITE', '2021-02-09 01:39:50', '2021-02-09 01:39:50'),
(273, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '263141', 'Ejecutado', '2020-09-02', '2020-12-17', NULL, NULL, 133, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 2 FILTROS DE ACPM', '2021-02-09 01:41:14', '2021-02-09 01:41:14'),
(274, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '263141', 'Ejecutado', '2020-06-10', '2020-09-09', NULL, NULL, 29, 'Mantenimiento general del aire acondicionado, 3 lb de gas', '2021-02-09 01:44:17', '2021-02-09 01:44:17'),
(275, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '263141', 'Ejecutado', '2020-09-09', '2020-12-10', NULL, NULL, 29, 'Mantenimiento preventivo termo', '2021-02-09 01:45:45', '2021-02-09 01:45:45'),
(276, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '275425', 'Ejecutado', '2019-12-06', '2020-03-12', NULL, NULL, 134, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-09 01:51:11', '2021-02-09 01:51:11'),
(277, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '275425', 'Ejecutado', '2020-03-12', '2020-06-24', NULL, NULL, 134, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\n2 FILTRO ACPM\r\n10 1/4 DE ACEITE', '2021-02-09 01:52:59', '2021-02-09 01:52:59'),
(278, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '275425', 'Ejecutado', '2020-06-24', '2020-07-02', NULL, NULL, 134, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-09 01:53:52', '2021-02-09 01:53:52'),
(279, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '275425', 'Ejecutado', '2020-07-02', '2020-09-04', NULL, NULL, 134, '1 FILTRO DE ACEITE, 2 FILTRO DE ACPM, 2 FILTROS DE AIRE \r\n10/4 ACEITE', '2021-02-09 01:54:50', '2021-02-09 01:54:50'),
(280, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '275425', 'Ejecutado', '2020-09-04', '2020-11-17', NULL, NULL, 134, '1 FILTRO DE ACEITE DE \r\n2 FILTROS ACPM\r\n2 FILTROS AIRE DE MOTOR', '2021-02-09 02:10:21', '2021-02-09 02:10:21'),
(281, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '285790', 'Ejecutado', '2019-10-17', '2019-10-17', NULL, NULL, 135, '2 Bateria Auto Mac 271000', '2021-02-09 02:19:56', '2021-02-09 02:19:56'),
(282, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '285790', 'Ejecutado', '2019-12-18', '2020-03-12', NULL, NULL, 136, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-09 02:25:02', '2021-02-09 02:25:02'),
(283, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '285790', 'Ejecutado', '2019-12-18', '2020-03-12', NULL, NULL, 136, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-09 02:25:02', '2021-02-09 02:25:02'),
(284, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '285790', 'Ejecutado', '2020-03-12', '2020-06-17', NULL, NULL, 136, 'FILTRO DE ACPM\r\nFILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\n10/4 DE ACEITE', '2021-02-09 02:26:11', '2021-02-09 02:26:11'),
(285, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '285790', 'Ejecutado', '2020-06-17', '2020-09-04', NULL, NULL, 136, '1 FILTRO DE ACEITE \r\n2 FILTRO DE ACPM\r\n2 FILTRO AIRE \r\n10/4 ACEITE', '2021-02-09 02:29:14', '2021-02-09 02:29:14'),
(286, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '285790', 'Ejecutado', '2020-09-04', '2020-11-26', NULL, NULL, 136, '1 FILTRO DE ACEITE', '2021-02-09 02:30:36', '2021-02-09 02:30:36'),
(287, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '285790', 'Ejecutado', '2020-01-25', '2020-07-21', NULL, NULL, 54, 'Mantenimiento general del aire acondicionado', '2021-02-09 02:38:20', '2021-02-09 02:38:20'),
(288, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '285790', 'Ejecutado', '2020-07-21', '2020-11-05', NULL, NULL, 54, '1 Blower y montaje del mismo, mantenimiento preventivo, recarga refrigerante', '2021-02-09 02:39:46', '2021-02-09 02:39:46'),
(289, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '291249', 'Ejecutado', '2019-10-23', '2019-10-23', NULL, NULL, 137, '1 Bateria Auto Mac 980 amp CA 22°C', '2021-02-09 02:45:05', '2021-02-09 02:45:05'),
(290, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '291249', 'Ejecutado', '2019-12-26', '2020-03-12', NULL, NULL, 138, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-09 02:47:48', '2021-02-09 02:47:48'),
(291, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '291249', 'Ejecutado', '2020-03-12', '2020-05-07', NULL, NULL, 138, 'FILTRO DE ACEITE\r\nFILTRO DE A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-09 02:49:14', '2021-02-09 02:49:14'),
(292, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '291249', 'Ejecutado', '2020-05-07', '2020-07-17', NULL, NULL, 138, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE A/C\r\n1 FILTRO DE TRAMPA\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-09 02:51:10', '2021-02-09 02:51:10'),
(293, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '291249', 'Ejecutado', '2020-07-17', '2020-09-18', NULL, NULL, 138, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE A/C\r\n1 FILTRO DE TRAMPA\r\n7 /4 DE ACEITE DE MOTOR', '2021-02-09 02:52:14', '2021-02-09 02:52:14'),
(294, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '291249', 'Ejecutado', '2020-09-18', '2020-11-03', NULL, NULL, 138, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE A/C\r\n1 FILTRO DE TRAMPA\r\n7 /4 DE ACEITE DE MOTOR', '2021-02-09 02:53:29', '2021-02-09 02:53:29'),
(295, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '291249', 'Ejecutado', '2020-11-03', '2020-12-26', NULL, NULL, 138, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE \r\n1 FILTRO DE A/C\r\n1 FILTRO DE ACPM', '2021-02-09 02:54:09', '2021-02-09 02:54:09'),
(296, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-02-05', '2019-02-05', NULL, NULL, 139, '1 Bateria Auto Mac 27R1000', '2021-02-09 03:52:30', '2021-02-09 03:52:30'),
(297, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-02-05', NULL, NULL, NULL, 139, 'Se le instalaron bateria de segunda suministrada por la TAR-307 en buen estado', '2021-02-09 03:56:12', '2021-02-09 03:56:12'),
(298, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-12-18', '2020-02-19', NULL, NULL, 140, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-09 04:00:27', '2021-02-09 04:00:27'),
(299, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-19', '2020-10-18', NULL, NULL, 140, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-09 04:01:36', '2021-02-09 04:01:36'),
(301, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2021-01-09', '2021-01-09', NULL, NULL, 140, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7/4 DE ACEITE DE MOTOR\r\nLos filtros eran de la TAQ-524', '2021-02-09 04:04:44', '2021-02-09 04:04:44'),
(302, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-12-18', '2020-02-19', NULL, NULL, 141, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-09 04:09:03', '2021-02-09 04:09:03'),
(303, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-19', '2020-10-18', NULL, NULL, 141, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-09 04:09:59', '2021-02-09 04:09:59'),
(304, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-10-18', '2021-01-09', NULL, NULL, 141, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7/4 DE ACEITE DE MOTOR\r\nLos filtros eran de la TAQ-524', '2021-02-09 04:11:03', '2021-02-09 04:11:03'),
(305, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-01', '2020-09-26', NULL, NULL, 71, 'Arreglo de manguera del compresor del aire acondicionado, 2 lb de gas', '2021-02-09 04:20:49', '2021-02-09 04:20:49'),
(306, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-09-26', '2020-10-31', NULL, NULL, 71, '1 Evaporador original, aceite compresor, refrigerante, desmontaje y montaje de tablero para cambio de evaporador, filtro a/c cabina', '2021-02-09 04:22:47', '2021-02-09 04:22:47'),
(307, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-11-16', '2020-01-09', NULL, NULL, 142, 'FILTRO DE ACEITE, FILTRO DE AIRE DE MOTOR,  7 1/4 DE ACEITE DE MOTOR, FILTRO AIRE A/C', '2021-02-10 00:26:56', '2021-02-10 00:26:56'),
(308, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-01-09', '2020-02-29', NULL, NULL, 142, 'FILTRO DE ACEITE,\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n 7 1/4 DE ACEITE DE MOTOR', '2021-02-10 00:29:40', '2021-02-10 00:29:40'),
(309, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-29', '2020-10-31', NULL, NULL, 142, '1 FILTRO DE ACEITE \r\n1 FILTRO DE ACPM \r\nENGRASE Y TENSION DE FRENO \r\n7/4 DE ACEITE', '2021-02-10 00:32:01', '2021-02-10 00:32:01'),
(310, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-10-31', '2020-12-30', NULL, NULL, 142, 'FILTRO DE ACEITE,\r\n FILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n1 FILTRO DE TRAMPA \r\n 7 1/4 DE ACEITE DE MOTOR', '2021-02-10 00:34:17', '2021-02-10 00:34:17'),
(311, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '218812', 'Ejecutado', '2019-11-05', '2019-11-05', NULL, NULL, 143, '1 Bateria Auto Mac 980 amp CA 22°C', '2021-02-10 00:39:36', '2021-02-10 00:39:36'),
(312, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '218812', 'Ejecutado', '2019-12-10', '2020-02-16', NULL, NULL, 144, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-10 00:43:28', '2021-02-10 00:43:28'),
(313, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '218812', 'Ejecutado', '2020-02-16', '2020-07-02', NULL, NULL, 144, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE A/C\r\n1 FILTRO ACPM\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-10 00:45:01', '2021-02-10 00:45:01'),
(314, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '218812', 'Ejecutado', '2020-07-02', '2020-09-05', NULL, NULL, 144, '1 FILTRO DE ACEITE\r\n1 FILTRO AIRE\r\n1 FILTRO A/C\r\n1 FILTRO DE ACPM \r\n7 1/4 DE ACEITE', '2021-02-10 00:45:53', '2021-02-10 00:45:53'),
(315, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '218812', 'Ejecutado', '2020-09-05', '2020-11-18', NULL, NULL, 144, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE \r\n1 FILTRO DE A/C\r\n1 FILTRO DE ACPM', '2021-02-10 00:46:37', '2021-02-10 00:46:37'),
(316, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-07-04', '2019-07-04', NULL, NULL, 145, '1 Bateria Auto Mac 980 amp CA 22°C', '2021-02-10 01:18:29', '2021-02-10 01:18:29'),
(317, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-10-31', '2020-02-06', NULL, NULL, 146, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-10 01:20:50', '2021-02-10 01:20:50'),
(318, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-07-04', '2020-09-16', NULL, NULL, 145, '1 FILTRO ACEITE\r\n1 FILTRO ACPM\r\n1 FILTRO AIRE\r\n7 1/4 DE ACEITE', '2021-02-10 01:22:16', '2021-02-10 01:22:16'),
(319, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-12-12', '2020-12-12', NULL, NULL, 147, 'Servicio de desmontaje y montaje de compresor para cambio de embriague, 1 aceite compresor, 2 refrigerante 134A', '2021-02-10 01:25:24', '2021-02-10 01:25:24'),
(320, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '199883', 'Ejecutado', '2020-08-10', '2020-09-25', NULL, NULL, 92, 'Mantenimiento general del aire acondicionado, desmonte del compresor y arreglo del mismo, cambio de aceite y filtro secador, 6 libras de gas, filtro secador, 2 aceite', '2021-02-11 17:24:57', '2021-02-11 17:24:57'),
(321, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '199883', 'Ejecutado', '2020-09-25', '2020-10-13', NULL, NULL, 92, 'Empaquetadura, swllos, plato válvulas aire acondicionado, aceite compresor, refrigerante, tapa delantera compresor, mantenimiento aire acondicionado termo, montaje y desmontaje compresor para reparación', '2021-02-11 17:27:14', '2021-02-11 17:27:14'),
(322, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '199883', 'Ejecutado', '2019-11-19', '2020-02-06', NULL, NULL, 148, 'FILTRO DE ACEITE\r\nFILTRO AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-11 18:12:38', '2021-02-11 18:12:38'),
(323, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '199883', 'Ejecutado', '2020-02-06', '2020-05-20', NULL, NULL, 148, 'FILTRO DE ACEITE\r\n 2 FILTRO AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-11 18:13:29', '2021-02-11 18:13:29'),
(324, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '199883', 'Ejecutado', '2020-05-20', '2020-08-12', NULL, NULL, 148, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE  1 FILTROS DE MOTOR, 1 FILTRO DE TRAMPA \r\n10/4 ACEITE', '2021-02-11 18:14:28', '2021-02-11 18:14:28'),
(325, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '199883', 'Ejecutado', '2020-08-12', '2020-10-29', NULL, NULL, 148, '1 FILTRO DE ACEITE, 1 FILTRO DE TRAMPA  2 FILTROS DE MOTOR, 1 FILTRO DE MOTOR\r\n10/4 ACEITE', '2021-02-11 18:16:16', '2021-02-11 18:16:16'),
(326, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '215986', 'Ejecutado', '2020-04-23', '2020-07-18', NULL, NULL, 62, 'Mantenimiento general del aire acondicionado, 3 libras de gas 134A', '2021-02-11 18:40:39', '2021-02-11 18:40:39'),
(327, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '215986', 'Ejecutado', '2020-07-18', '2020-10-20', NULL, NULL, 62, 'Mantenimiento general del aire acondicionado y desmonte de compresor para cambio de aceite, 2 aceites, 3 libras de gas', '2021-02-11 18:42:54', '2021-02-11 18:42:54'),
(328, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '215986', 'Ejecutado', '2020-10-20', '2020-12-09', NULL, NULL, 62, '1 Extractor ventilador, 3 correción de fuga, mantenimiento de termo', '2021-02-11 18:48:19', '2021-02-11 18:48:19'),
(329, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '215986', 'Ejecutado', '2019-10-31', '2020-02-09', NULL, NULL, 149, 'FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-11 19:26:03', '2021-02-11 19:26:03'),
(330, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '215986', 'Ejecutado', '2020-02-09', '2020-05-12', NULL, NULL, 149, 'FILTRO DE ACEITE\r\n FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-11 19:27:08', '2021-02-11 19:27:08'),
(331, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '215986', 'Ejecutado', '2020-05-12', '2020-08-04', NULL, NULL, 149, '1 FILTRO DE ACEITE, 2 FILTROS DE MOTOR, 1 FILTROS DE AIRE\r\n10/4 ACEITE', '2021-02-11 19:28:24', '2021-02-11 19:28:24'),
(332, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '215986', 'Ejecutado', '2020-08-04', '2020-10-29', NULL, NULL, 149, '1 FILTRO DE ACEITE, 1 FILTROS DE MOTOR, 1 FILTROS DE MOTOR, 1 FILTRO DE TRAMPA \r\n10/4 ACEITE', '2021-02-11 19:29:50', '2021-02-11 19:29:50'),
(333, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '215986', 'Ejecutado', '2020-10-29', '2021-01-20', NULL, NULL, 149, '1 FILTRO DE ACEITE, 2 FILTROS DE MOTOR, 1 FILTROS DE MOTOR, 1 FILTRO DE TRAMPA \r\n10/4 ACEITE', '2021-02-11 19:31:01', '2021-02-11 19:31:01'),
(334, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-05-26', '2020-08-13', NULL, NULL, 61, 'Mantenimiento general del aire acondicionado, 4 libra de gas', '2021-02-12 04:30:22', '2021-02-12 04:30:22'),
(335, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-13', '2020-11-09', NULL, NULL, 61, 'Mantenimiento termo, instalación de extractor, recarga de gas', '2021-02-12 04:34:01', '2021-02-12 04:34:01'),
(336, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-12-03', '2020-04-03', NULL, NULL, 150, 'FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 04:39:20', '2021-02-12 04:39:20'),
(337, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-04-03', '2020-07-21', NULL, NULL, 150, 'FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 04:41:28', '2021-02-12 04:41:28'),
(338, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-07-21', '2020-10-19', NULL, NULL, 150, 'FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 04:42:38', '2021-02-12 04:42:38'),
(339, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-10-19', '2021-01-16', NULL, NULL, 150, '1 FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 04:43:43', '2021-02-12 04:43:43'),
(340, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-12', NULL, NULL, NULL, 151, '2 BATERIAS AUTO MAC 1050 AMP CA 22°C', '2021-02-12 04:54:48', '2021-02-12 04:54:48'),
(341, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '215618', 'Ejecutado', '2020-05-26', '2020-08-10', NULL, NULL, 75, 'Mantenimiento general del aire acondicionado, 3 libras de gas', '2021-02-12 05:19:09', '2021-02-12 05:19:09'),
(342, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '215618', 'Ejecutado', '2020-08-10', '2020-11-29', NULL, NULL, 75, 'Mantenimiento equipo aire acondicionado, recarga refrigerante', '2021-02-12 05:22:17', '2021-02-12 05:22:17'),
(343, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '215618', 'Ejecutado', '2019-10-29', '2020-01-13', NULL, NULL, 152, 'FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n11 1/4 DE ACEITE DE MOTOR', '2021-02-12 05:26:35', '2021-02-12 05:26:35'),
(344, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '215618', 'Ejecutado', '2020-01-13', '2020-04-16', NULL, NULL, 152, 'FILTRO DE ACEITE\r\n FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n11 1/4 DE ACEITE DE MOTOR', '2021-02-12 05:27:38', '2021-02-12 05:27:38'),
(345, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '215618', 'Ejecutado', '2020-04-16', '2020-10-29', NULL, NULL, 152, 'FILTRO DE ACEITE\r\n FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n11 1/4 DE ACEITE DE MOTOR', '2021-02-12 05:28:53', '2021-02-12 05:28:53'),
(346, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '215618', 'Ejecutado', '2019-11-20', '2019-11-20', NULL, NULL, 153, '2 Bateria Auto Mac 1050 AMP CA 22°C', '2021-02-12 05:32:47', '2021-02-12 05:32:47'),
(347, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '226414', 'Ejecutado', '2020-05-28', '2020-10-19', NULL, NULL, 47, 'Mantenimiento general termo (Lavar tuberia, secar nitrogeno), filtro secador, carga refrigerante, aceite 134A, desmontaje compresor para cambio por uno nuevo', '2021-02-12 05:38:55', '2021-02-12 05:38:55'),
(348, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '226414', 'Ejecutado', '2020-08-04', '2020-08-04', NULL, NULL, 154, '2 Bateria Auto Mac', '2021-02-12 06:22:04', '2021-02-12 06:22:04'),
(349, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '226414', 'Ejecutado', '2019-10-17', '2020-01-17', NULL, NULL, 155, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 06:27:17', '2021-02-12 06:27:17'),
(350, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '226414', 'Ejecutado', '2020-01-17', '2020-04-18', NULL, NULL, 155, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n9 1/4 DE ACEITE DE MOTOR', '2021-02-12 06:28:40', '2021-02-12 06:28:40'),
(351, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '226414', 'Ejecutado', '2020-04-18', '2020-07-13', NULL, NULL, 155, '1 FILTRO DE AIRE,\r\n 2 FILTROS DE ACPM \r\nY 1 FILTRO DE ACEITE', '2021-02-12 06:31:19', '2021-02-12 06:31:19'),
(352, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '226414', 'Ejecutado', '2020-07-13', '2020-12-01', NULL, NULL, 155, '1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE ACEITE \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA  \r\n9 1/4 ACEITE', '2021-02-12 06:35:26', '2021-02-12 06:35:26'),
(353, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-11-07', '2020-02-03', NULL, NULL, 156, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 06:47:09', '2021-02-12 06:47:09'),
(354, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-03', '2020-05-09', NULL, NULL, 156, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 06:48:18', '2021-02-12 06:48:18'),
(355, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-05-09', '2020-08-10', NULL, NULL, 156, '1 FILTRO DE ACEITE 2 FILTROS DE ACPM 1 FILTRO DE AIRE\r\n8/4 ACEITE', '2021-02-12 06:49:37', '2021-02-12 06:49:37'),
(356, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-08-10', '2020-11-07', NULL, NULL, 156, '1 FILTRO DE ACEITE 2 FILTROS DE ACPM 1 FILTRO DE AIRE\r\n8/4 ACEITE', '2021-02-12 06:50:41', '2021-02-12 06:50:41'),
(357, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-06', '2020-07-25', NULL, NULL, 157, 'Mantenimiento general del aire acondicionado, 3 libras de gas', '2021-02-12 06:58:14', '2021-02-12 06:58:14'),
(358, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-25', '2020-10-16', NULL, NULL, 157, 'Mantenimiento general al aire acondicionado y desmonte de compresor para cambio de aceite, 2 aceite, 3 libras de gas', '2021-02-12 06:59:42', '2021-02-12 06:59:42'),
(360, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '230365', 'Ejecutado', '2020-10-01', '2020-10-01', NULL, NULL, 158, '2 BATERIA AUTO MAC, GARANTIA 12 MESES', '2021-02-12 17:23:45', '2021-02-12 17:23:45'),
(361, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '230365', 'Ejecutado', '2019-10-24', '2020-01-17', NULL, NULL, 159, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 17:26:15', '2021-02-12 17:26:15'),
(362, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '230365', 'Ejecutado', '2020-01-17', '2020-04-18', NULL, NULL, 159, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n9 1/4 DE ACEITE DE MOTOR', '2021-02-12 17:28:48', '2021-02-12 17:28:48'),
(363, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '230365', 'Ejecutado', '2020-04-18', '2020-09-15', NULL, NULL, 159, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE ACPM\r\n9 1/4 DE ACEITE DE MOTOR\r\nNOTA: Filtros comprados y puestos en barranquilla no se tiene factura', '2021-02-12 17:54:00', '2021-02-12 17:54:00'),
(364, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '230365', 'Ejecutado', '2020-09-15', '2020-11-12', NULL, NULL, 159, '1 FILTRO DE ACEITE\r\n1, FILTRO DE AIRE DE ACONDICIONADO \r\n2 FILTRO DE ACPM\r\n9 1/4 DE ACEITE DE MOTOR', '2021-02-12 17:56:36', '2021-02-12 17:56:36'),
(365, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '230365', 'Ejecutado', '2020-06-09', '2020-10-09', NULL, NULL, 40, 'Mantenimiento general al aire acondicionado y desmonte de compresor para cambio de aceite, 1 filtro. 2 aceite, 5 lb de gas', '2021-02-12 17:58:44', '2021-02-12 17:58:44'),
(366, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '230365', 'Ejecutado', '2020-10-09', '2020-12-11', NULL, NULL, 40, 'Soldadura tubo en bronce en el termo, mantenimiento termo, blower, 16 refrigerante', '2021-02-12 18:03:32', '2021-02-12 18:03:32'),
(367, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-06', '2020-07-25', NULL, NULL, 160, 'Mantenimiento general del aire acondicionado, 3 libras de gas', '2021-02-12 18:10:16', '2021-02-12 18:10:16'),
(368, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-25', '2020-10-16', NULL, NULL, 160, 'Mantenimiento general al aire acondicionado y desmonte de compresor para cambio de aceite, 2 aceite, 3 libras de gas', '2021-02-12 18:11:24', '2021-02-12 18:11:24'),
(369, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '210162', 'Ejecutado', '2019-05-24', '2019-05-24', NULL, NULL, 161, '2 Bateria Auto Mac 27R1000', '2021-02-12 18:54:41', '2021-02-12 18:54:41'),
(370, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '210162', 'Ejecutado', '2019-05-24', '2020-12-04', NULL, NULL, 161, '2 Bateria Auto Mac 15 meses de garantia', '2021-02-12 19:16:49', '2021-02-12 19:16:49'),
(371, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '210162', 'Ejecutado', '2019-12-11', '2020-03-06', NULL, NULL, 162, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n11 1/4 DE ACEITE', '2021-02-12 19:35:11', '2021-02-12 19:35:11'),
(372, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '210162', 'Ejecutado', '2020-03-06', '2020-06-02', NULL, NULL, 162, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n12 1/4 DE ACEITE', '2021-02-12 19:37:30', '2021-02-12 19:37:30'),
(373, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '210162', 'Ejecutado', '2020-06-02', '2020-07-15', NULL, NULL, 162, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n12 1/4 DE ACEITE', '2021-02-12 19:38:29', '2021-02-12 19:38:29'),
(374, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '210162', 'Ejecutado', '2020-07-15', '2020-08-24', NULL, NULL, 162, '1 FILTRO DE ACEITE, 1 FILTROS DE AIRE DE MOTOR, 1 FILTRO DE MOTOR, 1 FILTRO DE TRAMPA \r\n12/4 ACEITE', '2021-02-12 19:39:35', '2021-02-12 19:39:35'),
(375, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '210162', 'Ejecutado', '2020-08-24', '2020-10-15', NULL, NULL, 162, '1 FILTRO DE ACEITE, 1 FILTROS DE AIRE DE MOTOR, 2 FILTRO DE APM\r\n12 1/4 ACEITE', '2021-02-12 19:41:19', '2021-02-12 19:41:19'),
(376, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '210162', 'Ejecutado', '2020-10-15', '2020-12-30', NULL, NULL, 162, '1 FILTRO DE ACEITE, 1 FILTROS DE AIRE DE MOTOR, 2 FILTRO DE APM', '2021-02-12 19:42:24', '2021-02-12 19:42:24'),
(377, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '210162', 'Ejecutado', '2020-01-16', '2020-01-16', NULL, NULL, 163, 'Cambio de filtro secador, calibración de gas y aceite compresor, mantenimiento general', '2021-02-12 19:51:37', '2021-02-12 19:51:37'),
(378, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '210162', 'Ejecutado', '2020-01-16', '2020-05-01', NULL, NULL, 163, 'Mantenimiento prevetivo', '2021-02-12 19:55:30', '2021-02-12 19:55:30'),
(379, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '210162', 'Ejecutado', '2020-05-01', '2020-08-01', NULL, NULL, 163, 'Mantenimiento general del aire acondicionado, 3 lb de gas', '2021-02-12 19:56:39', '2021-02-12 19:56:39'),
(380, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '210162', 'Ejecutado', '2020-08-01', '2020-11-27', NULL, NULL, 163, 'Mantenimiento equipo aire acondicionado', '2021-02-12 19:57:57', '2021-02-12 19:57:57'),
(381, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-12-09', '2020-02-03', NULL, NULL, 164, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '2021-02-12 20:25:51', '2021-02-12 20:25:51'),
(382, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-03', '2020-03-24', NULL, NULL, 164, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '2021-02-12 20:27:02', '2021-02-12 20:27:02'),
(383, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-03-24', '2020-06-04', NULL, NULL, 164, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '2021-02-12 20:28:24', '2021-02-12 20:28:24'),
(384, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-06-04', '2020-07-23', NULL, NULL, 164, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM - TRAMPA\r\n1 FILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '2021-02-12 20:29:17', '2021-02-12 20:29:17'),
(385, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-07-23', '2020-09-07', NULL, NULL, 164, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM - TRAMPA\r\n1 FILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '2021-02-12 20:30:45', '2021-02-12 20:30:45'),
(386, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-09-07', '2020-10-26', NULL, NULL, 164, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '2021-02-12 20:31:52', '2021-02-12 20:31:52'),
(387, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-10-26', '2020-12-12', NULL, NULL, 164, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n1 FILTRO A/C', '2021-02-12 20:33:18', '2021-02-12 20:33:18'),
(388, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-01-18', '2020-08-18', NULL, NULL, 60, 'Desmonte de evaporizador para mantenimiento del aire acondicionado, 1 lb de gas', '2021-02-12 20:38:00', '2021-02-12 20:38:00'),
(389, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-06-17', '2019-06-17', NULL, NULL, 165, '1 Bateria auto mac 271000', '2021-02-12 21:00:46', '2021-02-12 21:00:46'),
(390, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-06-17', '2020-07-13', NULL, NULL, 165, '1 Bateria Auto Mac por garantia de la venta 17/06/2019', '2021-02-12 21:27:35', '2021-02-12 21:27:35'),
(391, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '175389', 'Ejecutado', '2020-04-28', '2020-07-24', NULL, NULL, 76, 'Mantenimiento general del aire acondicionado, 2 libras de gas', '2021-02-12 21:35:39', '2021-02-12 21:35:39'),
(392, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '175389', 'Ejecutado', '2020-07-24', '2020-10-20', NULL, NULL, 76, 'Mantenimiento general del aire acondicionado y desmonte de compresor para cambio de aceite, 2 aceites, 3 libras de gas', '2021-02-12 21:37:25', '2021-02-12 21:37:25'),
(393, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '175389', 'Ejecutado', '2019-11-27', '2020-02-05', NULL, NULL, 166, 'FILTRO DE ACEITE\r\n1 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 21:46:27', '2021-02-12 21:46:27'),
(394, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '175389', 'Ejecutado', '2020-02-05', '2020-04-17', NULL, NULL, 166, 'FILTRO DE ACEITE\r\n1 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 21:47:57', '2021-02-12 21:47:57'),
(395, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '175389', 'Ejecutado', '2020-04-17', '2020-07-15', NULL, NULL, 166, '1 FILTRO DE ACEITE\r\n1 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 21:49:29', '2021-02-12 21:49:29'),
(396, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '175389', 'Ejecutado', '2020-07-15', '2020-10-05', NULL, NULL, 166, '1 FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-12 21:50:44', '2021-02-12 21:50:44'),
(397, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '175389', 'Ejecutado', '2020-10-05', '2020-12-28', NULL, NULL, 166, '1 FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n2 FILTRO DE ACPM', '2021-02-12 21:51:44', '2021-02-12 21:51:44'),
(398, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '175389', 'Ejecutado', '2019-09-04', '2019-09-04', NULL, NULL, 167, '2 Baterias 31H instaló saulo. Factura original(Compra de 4 baterias 31H)', '2021-02-12 22:02:48', '2021-02-12 22:02:48'),
(399, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-17', '2020-11-25', NULL, NULL, 38, 'Mantenimiento equipo aire acondicionado, recarga', '2021-02-13 01:50:46', '2021-02-13 01:50:46'),
(400, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-12-24', '2020-05-23', NULL, NULL, 168, 'FILTRO DE ACEITE \r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-13 01:52:56', '2021-02-13 01:52:56'),
(401, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-05-23', '2020-09-06', NULL, NULL, 168, '1 FILTRO DE ACEITE \r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE AIRE DE MOTOR \r\n2 FILTRODE TRAMPA \r\n9/4 ACEITE', '2021-02-13 01:53:43', '2021-02-13 01:53:43'),
(402, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-09-06', '2020-12-03', NULL, NULL, 168, '1 FILTRO DE ACEITE \r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE AIRE DE MOTOR \r\n2 FILTRODE TRAMPA \r\n9/4 ACEITE', '2021-02-13 01:56:22', '2021-02-13 01:56:22'),
(403, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2018-09-13', '2021-02-05', NULL, NULL, 169, '2 Baterias 30H1200 MAC de borne', '2021-02-13 02:12:08', '2021-02-13 02:12:08'),
(404, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-12-18', '2020-03-31', NULL, NULL, 171, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '2021-02-13 02:26:33', '2021-02-13 02:26:33'),
(405, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-03-31', '2020-07-16', NULL, NULL, 171, '1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n2 FILTROS DE TRAMPA \r\n1 FILTRO DE ACEITE\r\n10 1/4 ACEITE', '2021-02-13 02:34:01', '2021-02-13 02:34:01'),
(406, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-07-16', '2020-10-31', NULL, NULL, 171, '1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTROS DE  A/C\r\n1 FILTRO DE ACEITE\r\n10 1/4 ACEITE', '2021-02-13 02:35:02', '2021-02-13 02:35:02'),
(407, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-18', '2020-11-05', NULL, NULL, 78, 'Mantenimiento de aire acondicionado, recarga Km: 243500. No se generó factura de ese mantenimiento el proveedor no lo cobró', '2021-02-13 03:30:45', '2021-02-13 03:30:45'),
(408, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-04-01', '2019-04-01', NULL, NULL, 172, '2 Baterias 48m900 Duncan #696503 #696513', '2021-02-13 03:33:57', '2021-02-13 03:33:57'),
(409, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '0', 'Ejecutado', '2019-04-01', '2021-02-01', NULL, NULL, 172, '2 Bateria 341100 FAICO', '2021-02-13 03:37:16', '2021-02-13 03:37:16'),
(410, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-09-20', '2020-01-08', NULL, NULL, 173, 'FILTRO DE ACEITE\r\nFILTRO AIRE MOTOR\r\nFILTRO MOTOR\r\n2 FILTRO A/C\r\n8 1/4 ACEITE MOTOR', '2021-02-13 03:39:58', '2021-02-13 03:39:58'),
(411, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-01-08', '2020-04-25', NULL, NULL, 173, 'FILTRO DE ACEITE\r\nFILTRO AIRE MOTOR\r\nFILTRO MOTOR\r\n8 1/4 ACEITE MOTOR', '2021-02-13 03:41:35', '2021-02-13 03:41:35');
INSERT INTO `historial_r_e_s` (`id`, `parte`, `prioridad`, `frecuencia`, `fuente`, `km_actual`, `estado`, `fecha_programado`, `fecha_ejecutado`, `cant_programdo`, `cant_ejecutado`, `recomendacion_id`, `observacion`, `created_at`, `updated_at`) VALUES
(412, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-04-25', '2020-07-29', NULL, NULL, 173, '1 FILTRO DE ACEITE\r\n1 FILTRO AIRE MOTOR\r\n1 FILTRO MOTOR\r\n1  FILTRO A/C\r\n6 1/4 ACEITE MOTOR', '2021-02-13 03:42:26', '2021-02-13 03:42:26'),
(413, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '133695', 'Ejecutado', '2019-10-16', '2020-01-09', NULL, NULL, 174, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\n2 FILTROS DE A/C\r\n11 1/4 DE ACEIRE MOTOR', '2021-02-13 04:47:20', '2021-02-13 04:47:20'),
(414, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '133695', 'Ejecutado', '2020-01-09', '2020-08-20', NULL, NULL, 174, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 1 FILTRO DE TOMIX, 1 FILTRO DE ACPM\r\n11/4 ACEITE', '2021-02-13 04:48:04', '2021-02-13 04:48:04'),
(415, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '133695', 'Ejecutado', '2020-08-20', '2020-12-05', NULL, NULL, 174, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 1 FILTRO DE ACPM\r\n11/4 ACEITE', '2021-02-13 04:49:16', '2021-02-13 04:49:16'),
(416, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '133695', 'Ejecutado', '2019-06-07', '2020-06-07', NULL, NULL, 175, '1 Bateria Auto Mac 49ST1100', '2021-02-13 04:56:39', '2021-02-13 04:56:39'),
(417, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '133695', 'Ejecutado', '2020-06-07', '2020-12-24', NULL, NULL, 175, '1 Bateria 30H EU', '2021-02-13 04:57:33', '2021-02-13 04:57:33'),
(418, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '', 'Ejecutado', '2020-09-05', '2021-01-19', NULL, NULL, 9, 'Mantenimiento preventivo, 4 libras de gas', '2021-02-13 05:01:25', '2021-02-13 05:01:25'),
(419, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '233115', 'Ejecutado', '2020-07-02', '2020-07-02', NULL, NULL, 176, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM \r\n10 1/4 DE ACEITE', '2021-02-13 05:07:52', '2021-02-13 05:07:52'),
(420, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '233115', 'Ejecutado', '2020-07-02', '2020-12-22', NULL, NULL, 176, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n2 FILTRO DE ACPM', '2021-02-13 05:08:57', '2021-02-13 05:08:57'),
(421, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '253809', 'Ejecutado', '2020-08-21', '2020-09-08', NULL, NULL, 49, 'Desmonte de compresor para arreglo de rodillo, 1 rodillo nuevo', '2021-02-13 05:19:03', '2021-02-13 05:19:03'),
(422, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '253809', 'Ejecutado', '2020-09-08', '2020-10-31', NULL, NULL, 49, 'Evaporador original, aceite compresor, refrigerante, desmonte y montaje de tablero para cambio de compresor, filtro A/C cabina', '2021-02-13 05:20:39', '2021-02-13 05:20:39'),
(423, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-01-11', '2020-01-11', NULL, NULL, 178, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-13 05:24:17', '2021-02-13 05:24:17'),
(424, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-01-11', '2020-02-28', NULL, NULL, 178, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-13 05:25:21', '2021-02-13 05:25:21'),
(425, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-02-28', '2020-05-22', NULL, NULL, 178, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-13 05:26:28', '2021-02-13 05:26:28'),
(426, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-05-22', '2020-07-02', NULL, NULL, 178, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n1 FILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-13 05:27:55', '2021-02-13 05:27:55'),
(427, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-07-02', '2020-08-18', NULL, NULL, 178, '1 FILTRO DE ACEITE, 1 FILTRO TRAMPA, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE MOTOR\r\n7/4 ACEITE', '2021-02-13 05:32:09', '2021-02-13 05:32:09'),
(428, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-08-18', '2020-10-07', NULL, NULL, 178, '1 FILTRO DE ACEITE, 1 FILTRO TRAMPA, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE MOTOR\r\n7/4 ACEITE', '2021-02-13 05:46:15', '2021-02-13 05:46:15'),
(429, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-10-07', '2020-10-31', NULL, NULL, 178, '1 FILTRO DE ACEITE \r\n1 FILTRO DE A/C\r\n7 1/4 DE ACEITE \r\nAutorizado por el jefe armando', '2021-02-13 05:53:59', '2021-02-13 05:53:59'),
(430, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-10-31', '2020-11-26', NULL, NULL, 178, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE A/C\r\n7 1/4 DE ACEITE', '2021-02-13 05:55:02', '2021-02-13 05:55:02'),
(431, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '253809', 'Ejecutado', '2020-11-26', '2021-01-21', NULL, NULL, 178, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE A/C\r\n7 1/4 DE ACEITE', '2021-02-13 06:02:05', '2021-02-13 06:02:05'),
(432, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '253809', 'Ejecutado', '2019-11-08', '2019-11-08', NULL, NULL, 179, '1 Bateria Auto Mac 980 amp CA 22°C', '2021-02-14 01:33:56', '2021-02-14 01:33:56'),
(433, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-18', '2021-01-19', NULL, NULL, 50, 'Mantenimiento preventivo y cambio de gas, 2 libras de gas', '2021-02-14 01:45:05', '2021-02-14 01:45:05'),
(434, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-10-29', '2020-01-04', NULL, NULL, 180, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-14 01:57:49', '2021-02-14 01:57:49'),
(435, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-01-04', '2020-02-22', NULL, NULL, 180, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-14 01:59:42', '2021-02-14 01:59:42'),
(436, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-22', '2020-04-24', NULL, NULL, 180, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-14 02:01:42', '2021-02-14 02:01:42'),
(438, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-10-29', '2020-01-04', NULL, NULL, 181, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-14 02:05:36', '2021-02-14 02:05:36'),
(439, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-01-04', '2020-02-20', NULL, NULL, 181, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-14 02:07:24', '2021-02-14 02:07:24'),
(440, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-20', '2020-04-24', NULL, NULL, 181, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-14 02:08:05', '2021-02-14 02:08:05'),
(441, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-04-24', '2020-07-14', NULL, NULL, 181, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE  MOTOR\r\n1 FILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-14 02:08:53', '2021-02-14 02:08:53'),
(442, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-07-14', '2020-10-15', NULL, NULL, 181, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n1 FILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2021-02-14 02:09:45', '2021-02-14 02:09:45'),
(443, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-10-15', '2021-01-15', NULL, NULL, 181, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO A/C\r\n7/4 DE ACEITE DE MOTOR', '2021-02-14 02:10:26', '2021-02-14 02:10:26'),
(444, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '173480', 'Ejecutado', '2020-08-26', '2020-12-11', NULL, NULL, 87, 'Mantenimiento termo', '2021-02-14 02:15:04', '2021-02-14 02:15:04'),
(445, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '173480', 'Ejecutado', '2020-09-10', '2020-09-10', NULL, NULL, 182, '1 FILTRO DE ACEITE \r\n1 FILTRO ACPM - TRAMPA \r\n1 FILTRO AIRE ACONDICIONADO \r\n1 FILTRO DE AIRE DE MOTOR \r\n11/4 ACEITE', '2021-02-14 02:16:47', '2021-02-14 02:16:47'),
(446, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '173480', 'Ejecutado', '2020-09-10', '2020-12-30', NULL, NULL, 182, '1 FILTRO DE ACEITE \r\n1 FILTRO ACPM - TRAMPA \r\n1 FILTRO TAMIX\r\n1 FILTRO DE AIRE DE MOTOR', '2021-02-14 02:17:51', '2021-02-14 02:17:51'),
(447, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-08-06', '2020-09-23', NULL, NULL, 15, 'Arreglo de manguera de alto del aire trasero y mantenimiento preventivo del aire delantero, 6 libras de gas, 1 aceite', '2021-02-14 02:21:29', '2021-02-14 02:21:29'),
(448, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-09-23', '2020-12-10', NULL, NULL, 15, 'Corrección de fuga línea de alta soldadura en aluminio, 1 aceite compresor, 7 refrigerante 134A', '2021-02-14 02:23:08', '2021-02-14 02:23:08'),
(449, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-10-10', '2020-02-03', NULL, NULL, 183, '11 1/4 DE ACEITE\r\nFILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR', '2021-02-14 02:25:32', '2021-02-14 02:25:32'),
(450, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-10-10', '2020-02-03', NULL, NULL, 184, '11 1/4 DE ACEITE\r\nFILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR', '2021-02-14 02:27:22', '2021-02-14 02:27:22'),
(451, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-03', '2020-05-06', NULL, NULL, 184, '11 1/4 DE ACEITE\r\nFILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR', '2021-02-14 02:28:49', '2021-02-14 02:28:49'),
(452, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-05-06', '2020-09-10', NULL, NULL, 184, '1 FILTRO DE ACPM', '2021-02-14 02:29:49', '2021-02-14 02:29:49'),
(453, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-09-10', '2020-09-10', NULL, NULL, 184, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE \r\n2 FILTRO AIRE ACONDICIONADO', '2021-02-14 02:30:32', '2021-02-14 02:30:32'),
(454, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-11-07', '2019-11-07', NULL, NULL, 185, '1 BATERIA AUTO MAC 12V', '2021-02-14 02:39:48', '2021-02-14 02:39:48'),
(455, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-03-28', '2019-03-28', NULL, NULL, 186, '1 Bateria Auto Mac 49ST1100', '2021-02-14 02:50:08', '2021-02-14 02:50:08'),
(456, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-03-28', '2019-12-04', NULL, NULL, 186, '1 Bateria auto mac 12v GARANTIA', '2021-02-14 02:51:30', '2021-02-14 02:51:30'),
(457, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-04', NULL, NULL, NULL, 186, NULL, '2021-02-14 02:55:32', '2021-02-14 02:55:32'),
(458, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-03-28', '2019-03-28', NULL, NULL, 187, '1 Bateria Auto MAc 49ST1100', '2021-02-14 02:56:39', '2021-02-14 02:56:39'),
(459, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-03-28', '2019-12-04', NULL, NULL, 187, 'Bateria auto mac 12V cambio por garantia', '2021-02-14 02:57:49', '2021-02-14 02:57:49'),
(460, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-12-04', '2020-02-13', NULL, NULL, 187, '1 Bateria auto mac 12v cambio por garantia de la compra el 28-03-2019', '2021-02-14 02:58:40', '2021-02-14 02:58:40'),
(461, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2020-02-13', '2020-06-16', NULL, NULL, 187, '1 Bateria Auto Mac', '2021-02-14 02:59:50', '2021-02-14 02:59:50'),
(462, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-04-27', '2020-07-18', NULL, NULL, 80, 'Desmonte de villarec para mantenimiento del aire delantero y desmonte de aire trasero para mantenimiento, 1 libra de gas aire delantero, 1 libra de gas aire trasero', '2021-02-14 03:02:10', '2021-02-14 03:02:10'),
(463, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-07-18', '2020-10-19', NULL, NULL, 80, 'Mantenimiento general del aire acondicionado trasero y desmonte de villaret para mantenimiento general del aire delantero, 2 libras de gas, 1 válvula de presión del compresor', '2021-02-14 03:04:09', '2021-02-14 03:04:09'),
(464, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-10-22', '2020-01-14', NULL, NULL, 188, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n11 1/4 DE ACEITE DE MOTOR', '2021-02-14 03:16:16', '2021-02-14 03:16:16'),
(465, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-01-14', '2020-03-09', NULL, NULL, 188, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR \r\n11 1/4 DE ACEITE DE MOTOR', '2021-02-14 03:19:32', '2021-02-14 03:19:32'),
(466, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-03-09', '2020-06-06', NULL, NULL, 188, 'FILTRO DE ACEITE\r\nFILTRO DE ACPM\r\nFILTRO DE AIRE \r\n2 FILTRO A/C', '2021-02-14 03:20:16', '2021-02-14 03:20:16'),
(467, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-06-06', '2020-09-17', NULL, NULL, 188, '1 FILTRO ACEOTE \r\n1 FILTRO ACPM\r\n1 TAMIX\r\n1 FILTRO AIRE', '2021-02-14 03:20:58', '2021-02-14 03:20:58'),
(468, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-09-17', '2020-12-28', NULL, NULL, 188, '1 FILTRO ACEITE \r\n1 FILTRO ACPM\r\n1 TAMIX\r\n1 FILTRO AIRE', '2021-02-14 03:21:43', '2021-02-14 03:21:43'),
(469, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-11-16', '2020-01-08', NULL, NULL, 189, 'FILTRO ACEITE\r\nFILTRO AIRE DE MOTOR\r\nFILTRO A/C\r\n8 1/4 ACEITE DE MOTOR', '2021-02-14 03:25:06', '2021-02-14 03:25:06'),
(470, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-01-08', '2020-02-29', NULL, NULL, 189, 'FILTRO ACEITE\r\nFILTRO AIRE DE MOTOR\r\nFILTRO A/C\r\n8 1/4 ACEITE DE MOTOR', '2021-02-14 03:26:11', '2021-02-14 03:26:11'),
(471, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-29', '2020-05-19', NULL, NULL, 189, 'FILTRO ACEITE\r\nFILTRO DE MOTOR\r\n8 1/4 ACEITE DE MOTOR', '2021-02-14 03:26:57', '2021-02-14 03:26:57'),
(472, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-05-19', '2020-07-17', NULL, NULL, 189, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE TRAMPA\r\n8 1/4 ACEITE', '2021-02-14 03:27:35', '2021-02-14 03:27:35'),
(473, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-07-17', '2020-09-12', NULL, NULL, 189, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE TRAMPA\r\n8 1/4 ACEITE', '2021-02-14 03:28:14', '2021-02-14 03:28:14'),
(474, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-09-12', '2020-10-31', NULL, NULL, 189, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE TRAMPA\r\n8 1/4 ACEITE', '2021-02-14 03:28:59', '2021-02-14 03:28:59'),
(475, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-10-31', '2021-01-09', NULL, NULL, 189, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n8/4 ACEITE', '2021-02-14 03:29:35', '2021-02-14 03:29:35'),
(476, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2019-10-05', '2020-02-15', NULL, NULL, 190, 'FILTRO DE ACEITE\r\nAIRE DE MOTOR\r\nAIRE ACONDICIONADO\r\n8 1/4 DE ACEITE', '2021-02-14 03:33:43', '2021-02-14 03:33:43'),
(477, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-02-15', '2020-04-25', NULL, NULL, 190, 'FILTRO DE ACEITE\r\nAIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\nAIRE ACONDICIONADO\r\n8 1/4 DE ACEITE', '2021-02-14 03:34:29', '2021-02-14 03:34:29'),
(478, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-04-25', '2020-07-03', NULL, NULL, 190, '1 FILTRO DE ACEITE\r\n1 AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 AIRE ACONDICIONADO\r\n8 1/4 DE ACEITE', '2021-02-14 03:37:37', '2021-02-14 03:37:37'),
(479, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-07-03', '2020-08-31', NULL, NULL, 190, '1 FILTRO DE ACEITE, 1 FILTRO DE ACPM, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE AIRE\r\n8/4 ACEITE', '2021-02-14 03:40:48', '2021-02-14 03:40:48'),
(480, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-08-31', '2020-11-09', NULL, NULL, 190, '1 FILTRO DE ACEITE, 1 FILTRO DE ACPM, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE AIRE\r\n8/4 ACEITE', '2021-02-14 03:41:32', '2021-02-14 03:41:32'),
(481, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '0', 'Ejecutado', '2020-11-09', '2021-01-20', NULL, NULL, 190, '1 FILTRO DE ACEITE, 1 FILTRO DE MOTOR, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE AIRE DE MOTOR \r\n8/4 ACEITE', '2021-02-14 03:42:07', '2021-02-14 03:42:07'),
(482, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '66879', 'Ejecutado', '2020-05-04', '2020-08-20', NULL, NULL, 14, 'Desmonte de villarec para mantenimiento del aire delantero y desmonte de aire trasero para mantenimiento, 1 lb de gas', '2021-02-14 03:46:03', '2021-02-14 03:46:03'),
(483, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '66879', 'Ejecutado', '2020-08-20', '2020-12-15', NULL, NULL, 14, 'Mantenimiento termo', '2021-02-14 03:46:44', '2021-02-14 03:46:44'),
(484, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '66879', 'Ejecutado', '2019-11-02', '2020-01-11', NULL, NULL, 191, 'FILTRO ACEITE\r\nFILTRO AIRE DE MOTOR\r\nFILTRO MOTOR\r\n2 FILTRO A/C\r\n11 1/4 DE ACEITE', '2021-02-14 03:48:00', '2021-02-14 03:48:00'),
(485, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '66879', 'Ejecutado', '2020-01-11', '2020-03-19', NULL, NULL, 191, 'FILTRO A/A, \r\nTAMIZ TURBO,\r\nFILTRO AIRE, \r\nFILTRO DE COMBUSTIBLE\r\nFILTRO ACEITE\r\nFILTRO A/A TRASERO', '2021-02-14 03:49:08', '2021-02-14 03:49:08'),
(486, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '66879', 'Ejecutado', '2020-03-19', '2020-07-02', NULL, NULL, 191, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTROS DE A/C\r\n11 1/4 DE ACEITE', '2021-02-14 03:49:58', '2021-02-14 03:49:58'),
(487, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '66879', 'Ejecutado', '2020-07-02', '2020-10-26', NULL, NULL, 191, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTROS DE A/C\r\n11 1/4 DE ACEITE', '2021-02-14 03:50:40', '2021-02-14 03:50:40'),
(488, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '16953', 'Ejecutado', '2020-11-27', '2020-11-27', NULL, NULL, 192, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE \r\n1 FILTRO DE a/c\r\n1 FILTRO DE ACPM', '2021-02-14 03:56:56', '2021-02-14 03:56:56'),
(489, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '35345', 'Ejecutado', '2020-03-16', '2020-03-16', NULL, NULL, 193, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE A/C\r\n12 1/4 DE ACEITE', '2021-02-14 03:58:23', '2021-02-14 03:58:23'),
(490, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '35345', 'Ejecutado', '2020-03-16', '2020-05-13', NULL, NULL, 193, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE A/C\r\n11 1/4 DE ACEITE', '2021-02-14 03:59:16', '2021-02-14 03:59:16'),
(491, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '35345', 'Ejecutado', '2020-05-13', '2020-08-31', NULL, NULL, 193, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE,  1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE MOTOR\r\n8/4 ACEITE', '2021-02-14 03:59:58', '2021-02-14 03:59:58'),
(492, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '17722', 'Ejecutado', '2020-08-24', '2020-08-24', NULL, NULL, 194, '11/4 DE ACEITE \r\n1 FILTRO ACEITE \r\n2 FILTROS DE ACPM', '2021-02-14 04:19:17', '2021-02-14 04:19:17'),
(493, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '17722', 'Ejecutado', '2020-08-24', '2020-10-07', NULL, NULL, 194, '1 FILTRO DE ACEITE \r\n2 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR\r\n10/4 ACEITE DE MOTOR \r\nPAGADO POR TURESANDES', '2021-02-14 04:20:32', '2021-02-14 04:20:32'),
(494, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '17722', 'Ejecutado', '2020-10-07', '2020-12-03', NULL, NULL, 194, '1 FILTRO DE ACEITE  \r\n10/4 ACEITE DE MOTOR \r\nComprado por RIO GRANDE pero nunca se cobró', '2021-02-14 04:21:50', '2021-02-14 04:21:50'),
(495, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '17722', 'Ejecutado', '2021-01-16', '2021-01-16', NULL, NULL, 195, 'Mantenimiento preventivo y calibración de gas, 2 libras de gas', '2021-02-14 04:28:33', '2021-02-14 04:28:33'),
(496, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '175389', 'Ejecutado', '2020-10-20', '2021-01-09', NULL, NULL, 76, 'Mantenimiento preventivo y calibración de gas, 3 libras de gas', '2021-02-14 05:01:43', '2021-02-14 05:01:43'),
(497, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '226414', 'Ejecutado', '2020-10-19', '2021-01-15', NULL, NULL, 47, 'Mantenimiento preventivo, 4 libras de gas', '2021-02-14 05:08:04', '2021-02-14 05:08:04'),
(498, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '', 'Ejecutado', '2021-02-22', '2021-02-22', NULL, NULL, 196, 'Alineación y balanceo', '2021-02-25 01:57:59', '2021-02-25 01:57:59'),
(499, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '218812', 'Ejecutado', '2020-04-24', '2020-10-08', NULL, NULL, 72, 'Mantenimiento al aire acondicionado, cambio de filtros de cabina y calibración de gas, 1 filtro , 1 lb de gas', '2021-02-25 03:37:00', '2021-02-25 03:37:00'),
(500, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '216802', 'Ejecutado', '2020-10-16', '2021-02-16', NULL, NULL, 160, 'Mantenimiento preventivo, corrección de fuga, manguera B/32 entrada, Compresor acople, 1 aceite compresor, 8 refrigerantes 134A', '2021-02-25 22:26:44', '2021-02-25 22:26:44'),
(501, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '199883', 'Ejecutado', '2020-10-13', '2021-02-16', NULL, NULL, 92, '1 Extractor, correción de fuga en el techo cambio de acople al igual que la entrada al compresor, 1 aceite, 8 refrigerante 134A', '2021-02-25 22:29:10', '2021-02-25 22:29:10'),
(502, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '', 'Ejecutado', '2021-02-16', '2021-02-16', NULL, NULL, 197, 'Mantenimiento preventivo filtro cabina', '2021-02-26 00:05:58', '2021-02-26 00:05:58'),
(503, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '0', 'Ejecutado', '2020-11-09', '2021-02-16', NULL, NULL, 61, 'Mantenimiento preventivo, 3 recarga de gas', '2021-02-26 00:14:33', '2021-02-26 00:14:33'),
(504, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', '263141', 'Ejecutado', '2019-05-24', '2021-02-13', NULL, NULL, 132, '2 Bateria 30H1200 Mac de Borne', '2021-03-30 18:41:44', '2021-03-30 18:41:44'),
(505, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', '0', 'Ejecutado', '2019-04-26', '2021-02-01', NULL, NULL, 198, '1 Bateria 27/1000 VELKO', '2021-03-30 18:45:09', '2021-03-30 18:45:09'),
(506, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', '199883', 'Ejecutado', '2020-10-29', '2021-01-26', NULL, NULL, 148, 'FILTRO DE ACEITE\r\n 2 FILTRO AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10/4 DE ACEITE DE MOTOR', '2021-03-30 22:05:23', '2021-03-30 22:05:23'),
(508, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2021-02-05', '2021-01-06', NULL, NULL, 39, '2 Balanceo buseta corriente', '2021-03-31 19:26:11', '2021-03-31 19:26:11'),
(509, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', '0', 'Ejecutado', '2021-01-06', '2021-02-05', NULL, NULL, 39, '1 Alineación buseta NPR-NKR', '2021-03-31 19:49:20', '2021-03-31 19:49:20'),
(510, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '263141', 'Ejecutado', '2020-12-10', '2021-03-06', NULL, NULL, 29, 'Mantenimiento preventivo y calibración de gas, 4 libras de gas.\r\nObservación: Se reporta cambio de extractor pero no se hizo, pendiente por cambio)', '2021-04-01 03:30:29', '2021-04-01 03:30:29'),
(511, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', '291249', 'Ejecutado', '2020-09-05', '2021-03-05', NULL, NULL, 66, 'Mantenimiento preventivo, cambio de filtro cabina y calibración de gas. compra 1 filtro de cabina referencia 3626, 1 libra de gas', '2021-04-01 03:34:26', '2021-04-01 03:34:26'),
(512, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', '173480', 'Ejecutado', '2020-12-11', '2021-03-04', NULL, NULL, 87, 'Demonte de villarec para mantenimiento preventivo, calibración de gas y recarga al aire delantero. Mantenimiento preventivo al aire trasero, calibración y recarga de gas. 4 libras de gas', '2021-04-01 03:37:15', '2021-04-01 03:37:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe_m_g_s`
--

CREATE TABLE `informe_m_g_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kits`
--

CREATE TABLE `kits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lavados`
--

CREATE TABLE `lavados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehiculo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_registrado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_ingreso` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lavados`
--

INSERT INTO `lavados` (`id`, `vehiculo_id`, `observacion`, `km_registrado`, `f_ingreso`, `created_at`, `updated_at`) VALUES
(2, 5, NULL, '205020', '2020-01-27', '2020-06-05 03:43:39', '2020-06-05 03:43:39'),
(3, 15, 'KM Anterior: 304.185 + 746=  304931', '304.931', '2020-06-04', '2020-06-05 03:43:39', '2020-06-05 03:43:39'),
(4, 44, NULL, '218.812', '2020-02-20', '2020-07-16 19:22:20', '2020-07-16 19:22:20'),
(5, 5, NULL, '199.883', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(6, 9, NULL, '275.425', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(7, 11, NULL, '285.790', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(8, 16, NULL, '263.141', '2020-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(9, 23, NULL, '226.414', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(10, 25, NULL, '230.365', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(11, 26, NULL, '210.162', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(12, 27, NULL, '175.389', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(13, 28, NULL, '291.249', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(14, 39, NULL, '439.008', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(15, 57, NULL, '12.734', '2021-02-08', '2021-02-08 22:23:55', '2021-02-08 22:23:55'),
(16, 12, NULL, '215.986', '2021-02-08', '2021-02-09 00:13:32', '2021-02-09 00:13:32'),
(17, 32, NULL, '253.809', '2021-02-08', '2021-02-09 00:13:32', '2021-02-09 00:13:32'),
(18, 42, NULL, '35.345', '2021-02-08', '2021-02-09 00:27:01', '2021-02-09 00:27:01'),
(19, 14, NULL, '215.618', '2021-02-10', '2021-02-11 03:40:00', '2021-02-11 03:40:00'),
(20, 19, NULL, '133.695', '2021-02-12', '2021-02-12 21:08:44', '2021-02-12 21:08:44'),
(21, 24, NULL, '216.802', '2021-02-12', '2021-02-13 05:05:11', '2021-02-13 05:05:11'),
(22, 36, NULL, '66.879', '2021-02-12', '2021-02-13 05:05:11', '2021-02-13 05:05:11'),
(23, 55, NULL, '173.480', '2021-02-12', '2021-02-13 05:05:11', '2021-02-13 05:05:11'),
(24, 54, NULL, '233.115', '2020-07-02', '2021-02-13 05:06:42', '2021-02-13 05:06:42'),
(25, 43, NULL, '16.953', '2020-11-27', '2021-02-14 03:55:49', '2021-02-14 03:55:49'),
(26, 47, NULL, '17.722', '2020-08-24', '2021-02-14 04:11:32', '2021-02-14 04:11:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locacions`
--

CREATE TABLE `locacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE `mantenimientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proveedor_id` int(10) UNSIGNED DEFAULT NULL,
  `vehiculo_id` int(10) UNSIGNED DEFAULT NULL,
  `factura` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` enum('Preventivo','Correctivo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_actual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_siguiente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_ejecutado` date DEFAULT NULL,
  `short` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aux` decimal(6,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`id`, `proveedor_id`, `vehiculo_id`, `factura`, `tipo`, `km_actual`, `km_siguiente`, `descripcion`, `subtotal`, `fecha_ejecutado`, `short`, `aux`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '134', 'Preventivo', '0', NULL, 'TAPIZAR HACIENTO COJOIN CONDUCTOR Y ARREGLAR ESPALDAR DEL COJIN', '150.000', '2020-01-10', NULL, NULL, '2020-01-15 00:45:07', '2020-01-15 00:45:07'),
(2, 2, 6, '042', 'Preventivo', '92.014', NULL, '1 FILTRO DE ACEITE,1 FILTRO DE AIRE DE MOTOR,2  FILTRO AIRE ACONDICIONADO,11 1/4 ACEITE DE MOTOR', '0', '2020-01-09', NULL, NULL, '2020-01-15 01:11:46', '2020-01-15 01:11:46'),
(3, 2, 6, '042', 'Preventivo', NULL, NULL, 'ACEITE MOTOR:1 FILTRO DE ACEITE, 1 FILTRO DE AIRE DE MOTOR,2 FILTRO DE AIRE ACONDICIONADO, 11 1/4 DE ACEITE MOTOR', '0', '2020-01-09', NULL, NULL, '2020-01-15 01:29:43', '2020-01-15 01:29:43'),
(4, 2, 6, '4515', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioBLOWER', '3.200.000', '2020-01-14', NULL, NULL, '2020-01-15 01:40:04', '2020-01-15 01:40:04'),
(5, 2, 6, '4515', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioBLOWER', '430.000', '2020-01-14', NULL, NULL, '2020-01-15 01:45:30', '2020-01-15 01:45:30'),
(6, 1, 5, '104', 'Correctivo', '0', NULL, 'ARREGLAR SOBREFORRO DE COJIN', '50.000', '2019-11-11', NULL, NULL, '2020-01-15 02:10:46', '2020-01-15 02:10:46'),
(10, 2, 25, '046', 'Preventivo', '186.258', NULL, 'SE LE REALIZO CAMBIO DE 1 FILTRO DE ACEITE , 1 FILTRO DE AIRE DE MOTOR , 1 FILTRO DE MOTOR , 1 FILTRO TRAMPA , 10 1/4 ACEITE DE MOTOR \r\n\r\nPRÓXIMO CAMBIO DE ACEITE A LOS 210.258 KM', '0', '2020-01-17', NULL, NULL, '2020-02-10 23:37:17', '2020-02-10 23:37:17'),
(11, 2, 37, '035', 'Preventivo', '154.060', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n7 1/4 ACEITE DE MOTOR \r\n\r\nPRÓXIMO CAMBIO DE ACEITE A LOS 170.060 KM', '0', '2020-01-04', NULL, NULL, '2020-02-11 01:47:23', '2020-02-11 01:47:23'),
(15, 1, 39, NULL, 'Preventivo', NULL, NULL, 'LUCES O SISTEMA ELECTRICO:COMPRA DE :\r\n1 ALTERNADOR 12 VOLTIOS KODIAK\r\n1 POLEA 2 CANALES', '490.000', NULL, NULL, NULL, '2020-02-28 03:31:19', '2020-02-28 03:31:19'),
(16, 1, 39, NULL, 'Preventivo', NULL, NULL, 'LUCES O SISTEMA ELECTRICO:', '490.000', NULL, NULL, NULL, '2020-02-28 03:31:42', '2020-02-28 03:31:42'),
(20, 9, 17, 'VRC-869', 'Correctivo', NULL, NULL, 'Unión para tubos 515\r\nJunta anular manguera RAD\r\nEnfriador de aceite\r\nTermostato\r\nManguera Enfriador aceiten 515\r\nTapa deposito', '1.524.238', '2020-01-22', NULL, NULL, '2020-03-25 00:34:50', '2020-03-25 00:34:50'),
(21, 2, 17, NULL, 'Correctivo', NULL, NULL, 'Cambio de bomba hidráulica de dirección.', '0', '2020-01-06', NULL, NULL, '2020-03-25 00:36:02', '2020-03-25 00:36:02'),
(22, 2, 17, NULL, 'Preventivo', NULL, NULL, '1 Serventin\r\n1 Tapa de nivel de refrigerante\r\n1 Termostato\r\n1 Manguera curva\r\n1 Correa de accesorios cambio de serventin', '0', '2020-01-17', NULL, NULL, '2020-03-25 00:38:44', '2020-03-25 00:38:44'),
(24, 2, 17, NULL, 'Correctivo', NULL, NULL, 'Montaje llanta delantera derecha', '0', '2020-02-14', NULL, NULL, '2020-03-25 00:41:37', '2020-03-25 00:41:37'),
(26, 2, 17, '252', 'Preventivo', '253.402', NULL, 'Cambio de aceite y de filtros:\r\nFiltro de aceite\r\nFiltro de aire motor\r\n11 de 1/4 Aceite motor', '0', '2020-02-03', NULL, NULL, '2020-03-25 00:45:13', '2020-03-25 00:45:13'),
(27, 2, 17, NULL, 'Preventivo', NULL, NULL, 'Calibración de todas las llantas', '0', '2020-02-10', NULL, NULL, '2020-03-25 00:45:58', '2020-03-25 00:45:58'),
(29, 2, 18, '037', 'Preventivo', '225.728', NULL, 'Cambio de aceite motor y filtros:\r\nFiltro de aceite\r\nFiltro de aire de motor\r\nFiltro de motor\r\n11 de 1/4 de aceite motor', '0', '2020-01-04', NULL, NULL, '2020-03-25 01:50:31', '2020-03-25 01:50:31'),
(30, 2, 18, NULL, 'Correctivo', NULL, NULL, 'Cambio de lineas averiadas\r\nDesmontaje de blower para reparación', '0', '2020-01-12', NULL, NULL, '2020-03-25 01:52:25', '2020-03-25 01:52:25'),
(32, 2, 18, NULL, 'Correctivo', NULL, NULL, 'Cambio de bombillos\r\n1 Bombillo 158\r\n1 Bombillo 1141', '0', '2020-01-16', NULL, NULL, '2020-03-25 01:59:09', '2020-03-25 01:59:09'),
(33, 9, 18, 'VRC-781', 'Correctivo', NULL, NULL, 'Regulador alternador sprinter 515', '399.495', '2020-01-17', NULL, NULL, '2020-03-25 02:00:41', '2020-03-25 02:00:41'),
(34, 2, 18, NULL, 'Correctivo', NULL, NULL, 'Mantenimiento de tarro nivel refrigerante \r\n1 Galón de refrigerante\r\n1 Tapa del tanque de nivel de agua', '0', '2020-02-01', NULL, NULL, '2020-03-25 02:04:04', '2020-03-25 02:04:04'),
(35, 2, 18, '268', 'Preventivo', '238.064', NULL, 'Cambio de aceite motor y filtros:\r\nFiltro de aceite\r\nFiltro de aire de motor\r\n11 de 1/4 de aceite motor', '0', '2020-03-09', NULL, NULL, '2020-03-25 02:05:45', '2020-03-25 02:05:45'),
(36, 2, 36, '044', 'Preventivo', '20.496', NULL, 'Cambio de aceite motor y filtros:\r\nFiltro de aceite\r\nFiltro de aire de motor\r\nFiltro de motor\r\n2 Filtros de aire acondicionado \r\n11 de 1/4 de aceite de motor', '0', '2020-01-11', NULL, NULL, '2020-03-25 02:23:09', '2020-03-25 02:23:09'),
(37, 2, 36, NULL, 'Preventivo', NULL, NULL, 'Tensión de frenos y freno de mano', '0', '2020-01-28', NULL, NULL, '2020-03-25 02:25:10', '2020-03-25 02:25:10'),
(39, 1, 36, NULL, 'Preventivo', NULL, NULL, 'Montaje de llanta trasera lado izquierdo adentro', '0', '2020-02-19', NULL, NULL, '2020-03-25 02:27:38', '2020-03-25 02:27:38'),
(41, 10, 32, 'FRC-136', 'Preventivo', '188.394', NULL, 'KIT DE FILTRACIÓN COMPLETA CON AIRE ACONDICIONADO', '220.150', '2020-01-07', NULL, NULL, '2020-03-25 02:49:32', '2020-03-25 02:49:32'),
(136, 2, 14, '045', 'Preventivo', NULL, NULL, 'CAMBIO DE ACEITE:1 FILTROD DE ACEITE, 2 FILTROS DE AIRE DE MOTOR, 1 FILTRO DE MOTOR, 1 FILTRO DE TRAMPA, 11 1/4 DE ACEITE DE MOTOR KM ACTUAL: 183.789 - KM PROXIMO CAMBIO: 195.789', '0', '2020-01-13', NULL, NULL, '2020-04-15 20:24:02', '2020-04-15 20:24:02'),
(137, 12, 13, '9860', 'Preventivo', NULL, NULL, 'TAPA DE RADIADOR:TAPA PARA RADIADOR', '41.650', '2020-02-21', NULL, NULL, '2020-04-15 20:27:43', '2020-04-15 20:27:43'),
(138, 11, 13, '148', 'Preventivo', NULL, NULL, 'AIRE ACONDICIONADO:MTTO GENERAL DEL A/C', '150.000', '2020-02-26', NULL, NULL, '2020-04-15 20:35:50', '2020-04-15 20:35:50'),
(145, 11, 9, '12', 'Preventivo', '523.400', NULL, 'AIRE ACONDICIONADO:PRUEBA', '50.000', '2020-02-25', NULL, NULL, '2020-04-24 22:46:11', '2020-04-24 22:46:11'),
(146, 11, 9, '275', 'Preventivo', '183.800', NULL, 'MANTENIMIENTO AIRE ACONDICIONADO:PRUEBA', '0', '2020-05-02', NULL, NULL, '2020-04-24 23:09:30', '2020-04-24 23:09:30'),
(148, 1, 9, NULL, 'Preventivo', NULL, NULL, 'ENGRASE DE ROTULAS Y EXTREMOS:', NULL, NULL, NULL, NULL, '2020-04-28 05:18:48', '2020-04-28 05:18:48'),
(152, 28, 47, NULL, 'Preventivo', NULL, NULL, 'SUMINISTRO DE UN KIT DE DVR MOVIL INCLUYE DVR MOVIL MARCA DAHUA CLASE H CUATRO CANALES GRABACION EN FORMATO CON DISCO DURO SOLIDO DE 480 GB. FORMATO DE VIDEO FULL HD 1080P', '1.522.500', '2020-05-13', NULL, NULL, '2020-05-21 21:49:35', '2020-05-21 21:49:35'),
(154, 29, 14, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS 2 ACPM, 1 ACEITE, 1 AIRE', '173.000', '2020-04-01', NULL, NULL, '2020-06-05 21:45:22', '2020-06-05 21:45:22'),
(155, 29, 13, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE 2 FILTROS ACPM, 1 FILTRO ACEITE, 1 FILTRO DE AIRE', '173.000', '2020-04-01', NULL, NULL, '2020-06-05 21:47:33', '2020-06-05 21:47:33'),
(156, 29, 12, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE 2 FILTRO ACPM, FILTRO ACEITE Y FILTRO AIRE', '173.000', '2020-04-01', NULL, NULL, '2020-06-05 21:49:00', '2020-06-05 21:49:00'),
(157, 29, 5, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE FILTRACCION 2 FILTROS DE ACPM, FILTRO DE ACEITE, FILTRO DE AIRE', '173.000', '2020-04-01', NULL, NULL, '2020-06-05 21:50:34', '2020-06-05 21:50:34'),
(158, 29, 26, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: 2 FILTROS ACPM, FILTRO ACEITE, FILTRO DE AIRE', '148.000', '2020-04-01', NULL, NULL, '2020-06-05 21:51:47', '2020-06-05 21:51:47'),
(159, 29, 48, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: 1 ACPM, ACEITE, AIRE AC U AIRE', '370.000', '2020-04-01', NULL, NULL, '2020-06-05 22:20:36', '2020-06-05 22:20:36'),
(160, 29, 24, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: 2 FILTRO ACPM, 1 FILTRO ACEITE Y 1 FILTRO DE AIRE', '159.000', '2020-04-01', NULL, NULL, '2020-06-05 22:21:43', '2020-06-05 22:21:43'),
(161, 29, 17, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: FILTRO ACPM, FILTRO ACEITE, FILTRO A/C Y FILTRO AIRE', '370.000', '2020-04-01', NULL, NULL, '2020-06-05 22:23:48', '2020-06-05 22:23:48'),
(162, 29, 22, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: 3 FILTROS DE ACPM, 1 FILTRO DE ACEITE Y 1 FILTRO DE AIRE', '173.000', '2020-04-01', NULL, NULL, '2020-06-05 23:01:36', '2020-06-05 23:01:36'),
(163, 29, 23, '6251', 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: 2 FILTROS DE ACPM, 1 FILTRO DE ACEITE Y 1 FILTRO DE AIRE', '159.000', '2020-04-01', NULL, NULL, '2020-06-05 23:03:17', '2020-06-05 23:03:17'),
(164, 29, 29, '6251', 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: 1 FILTRO DE ACPM, 1 FILTRO DE ACEITE, 1 FILTRO DE AIRE A/C Y 1 FILTRO DE AIRE', '123.000', '2020-04-02', NULL, NULL, '2020-06-05 23:04:28', '2020-06-05 23:04:28'),
(165, 29, 34, '6251', 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: 1 FILTRO DE ACPM, 1 FILTRO DE ACEITE, 1 FILTRO DE AIRE A/C Y 1 FILTRO DE AIRE', '123.000', '2020-04-02', NULL, NULL, '2020-06-05 23:05:32', '2020-06-05 23:05:32'),
(166, 29, 28, '6251', 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: FILTRO DE ACPM, FILTRO DE ACEITE, FILTRO DE A/C Y FILTRO DE AIRE', '87.000', '2020-04-02', NULL, NULL, '2020-06-05 23:06:39', '2020-06-05 23:06:39'),
(167, 29, 31, '6251', 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: FILTRO DE ACPM, FILTRO DE ACEITE, FILTRO DE A/C Y FILTRO DE AIRE', '87.000', '2020-04-02', NULL, NULL, '2020-06-05 23:07:17', '2020-06-05 23:07:17'),
(168, 29, 20, '6251', 'Preventivo', NULL, NULL, 'COMPRA DE FILTROS: 1 FILTRO ACPM, FILTRO DE ACEITE, FILTRO DE AIRE Y FILTRO DE AIRE A/C', '99.000', '2020-04-22', NULL, NULL, '2020-06-05 23:11:25', '2020-06-05 23:11:25'),
(169, 10, 44, '391', 'Correctivo', NULL, NULL, 'STOP ORIGINAL', '289.999', '2020-05-20', NULL, NULL, '2020-06-06 00:34:42', '2020-06-06 00:34:42'),
(170, 10, 31, '390', 'Preventivo', NULL, NULL, 'ALTERNADOR REMANOFACTRURADO', '2.618.000', '2020-05-20', NULL, NULL, '2020-06-06 00:35:34', '2020-06-06 00:35:34'),
(171, 10, 21, '388', 'Preventivo', NULL, NULL, 'HOJA DE MUELLE', '320.000', '2020-05-20', NULL, NULL, '2020-06-06 00:36:29', '2020-06-06 00:36:29'),
(172, 10, 16, '389', 'Preventivo', NULL, NULL, 'BOTELLA DE DIRECCION REMANOFACTURADA', '3.308.200', '2020-05-20', NULL, NULL, '2020-06-06 00:37:27', '2020-06-06 00:37:27'),
(173, 10, 22, '387', 'Preventivo', NULL, NULL, 'TERMINAL LH Y RH', '370.328', '2020-05-20', NULL, NULL, '2020-06-06 00:39:11', '2020-06-06 00:39:11'),
(174, 11, 47, '206', 'Preventivo', NULL, NULL, 'DESMONTE DE PALOMERA DEL LADO DERECHO PARA CAMBIO DE MANGUERA DEL AIRE ACONDICIONADO Y 1 MANGUERA ORIGINAL', '200.000', '2020-06-01', NULL, NULL, '2020-06-06 02:43:38', '2020-06-06 02:43:38'),
(175, 11, 49, '161', 'Preventivo', NULL, NULL, 'Mtto general del A/C y arreglo de tuberia de baja (1 filtro Spal y 5 libras de gas)', '192.000', '2020-03-09', NULL, NULL, '2020-06-06 02:46:49', '2020-06-06 02:46:49'),
(176, 30, 41, '5907', 'Preventivo', NULL, NULL, 'BOTIQUIN COMPLETO', '190.000', '2020-03-12', NULL, NULL, '2020-06-06 03:58:19', '2020-06-06 03:58:19'),
(177, 30, 50, '5907', 'Preventivo', NULL, NULL, 'COMPRA DE INMOBILIZADOR CERVICAL', '50.000', '2020-03-12', NULL, NULL, '2020-06-06 03:59:43', '2020-06-06 03:59:43'),
(178, 1, 30, '1133|', 'Preventivo', NULL, NULL, 'FORRO DE VOLANTE', '32.500', '2020-05-14', NULL, NULL, '2020-06-08 17:47:09', '2020-06-08 17:47:09'),
(179, 1, 31, '1133', 'Preventivo', NULL, NULL, 'FORRO PARA EL VOLANTE', '32.500', '2020-05-14', NULL, NULL, '2020-06-08 17:47:47', '2020-06-08 17:47:47'),
(180, 1, 32, '1133', 'Preventivo', NULL, NULL, 'FORRO PARA EL VOLANTE', '32.500', '2020-05-14', NULL, NULL, '2020-06-08 17:48:50', '2020-06-08 17:48:50'),
(181, 1, 39, '1133', 'Preventivo', NULL, NULL, 'FORRO PARA EL VOLANTE', '32.500', '2020-05-14', NULL, NULL, '2020-06-08 17:50:17', '2020-06-08 17:50:17'),
(183, 31, 49, '2687', 'Preventivo', NULL, NULL, 'LAVADO GENERAL', '70.000', '2020-03-10', NULL, NULL, '2020-06-08 17:59:36', '2020-06-08 17:59:36'),
(184, 23, 49, '11117', 'Preventivo', NULL, NULL, 'FORRO DE VOLANTE', '35.000', '2020-03-09', NULL, NULL, '2020-06-08 18:00:04', '2021-02-05 01:17:19'),
(185, 21, 44, '2413', 'Preventivo', NULL, NULL, '2 BUJES DE MUELLE', '60.000', '2020-04-17', NULL, NULL, '2020-06-08 18:03:52', '2020-06-08 18:03:52'),
(186, 1, 51, '536', 'Preventivo', NULL, NULL, 'Revision con escaner a 8 vehiculos hino 300 y 500 (TAR-400 - TAR-401 - TAR-402 -  y mano de obra', '600.000', '2020-05-12', NULL, NULL, '2020-06-08 18:30:15', '2020-06-08 18:30:15'),
(187, 15, 50, '3693', 'Preventivo', NULL, NULL, '2 pares de taco de madera, 1 linterna, 1 par de guantes, cono retractil, extintor de 20 lbs, 1 destornillador, 3 llaves fijas, 1 alicate grande, 1 llave espansiva y cinta de peligro', '266.560', '2020-02-11', NULL, NULL, '2020-06-08 18:32:43', '2020-06-08 18:32:43'),
(188, 15, 30, '23', 'Preventivo', NULL, NULL, 'RECARGA DE EXTINTOR DE 10 LIBRAS', '14.280', '2020-03-27', NULL, NULL, '2020-06-08 18:42:42', '2020-06-08 18:42:42'),
(189, 33, 47, '247161', 'Preventivo', NULL, NULL, 'MATRICULA Y CERTIFICDO DE LIBERTAD Y TRADICION', '154.223', '2020-02-21', NULL, NULL, '2020-06-08 18:46:05', '2020-06-08 18:46:05'),
(190, 34, 38, '13203', 'Preventivo', NULL, NULL, '5 POTE 134A', '63.004', '2020-03-07', NULL, NULL, '2020-06-08 18:49:36', '2020-06-08 18:49:36'),
(191, 35, 38, '68', 'Preventivo', '16.346', NULL, 'ACE DELVAC 15W40 GRANEL SERVICIOS ADICIONALES', '235.500', '2020-02-07', NULL, NULL, '2020-06-09 03:14:01', '2020-06-09 03:14:01'),
(192, 37, 38, '8051', 'Preventivo', NULL, NULL, 'correa 15365 y correa 17375', '31.100', '2020-02-06', NULL, NULL, '2020-06-09 03:28:30', '2020-06-09 03:28:30'),
(193, 38, 38, '153', 'Preventivo', NULL, NULL, 'VIDRIO TEMPLADO CON PINZA PLANO INCOLORO 6MM.1060*1400', '523.500', '2020-01-14', NULL, NULL, '2020-06-09 03:32:21', '2020-06-09 03:32:21'),
(194, 39, 38, '219', 'Preventivo', NULL, NULL, '6 PARQUEO, 5 LAVADOS GENERALES Y 5 ENGRASES', '950.000', '2020-01-31', NULL, NULL, '2020-06-10 18:05:19', '2020-06-10 18:05:19'),
(195, 35, 38, '138', 'Preventivo', '10.263', NULL, 'ACE DEL VAC MX 15W40 GRANEL', '235.500', '2020-03-07', NULL, NULL, '2020-06-10 18:06:05', '2020-06-10 18:06:05'),
(196, 9, 38, '1165', 'Preventivo', NULL, NULL, 'FILTRO DE ACEITE, FILTRO DE AIRE, PREFILTRO DE COMBUSTIBLE, FILTRO DE COMBUSTIBLE Y PREFILTRO AIRE DE MOTOR', '1.199.898', '2020-02-05', NULL, NULL, '2020-06-10 18:10:00', '2020-06-10 18:10:00'),
(197, 40, 38, '6385', 'Preventivo', NULL, NULL, 'UREA HIDROBLUE', '63.000', '2020-01-12', NULL, NULL, '2020-06-10 18:13:18', '2020-06-10 18:13:18'),
(198, 9, 51, '1947', 'Preventivo', NULL, NULL, 'COMPRA DE 2 PASTILLAS DE FRENO DELANTERA TAR-245 - TAR-138 Y TAR-622\r\nCOMPRA DE PASTILLA DE FRENO TRASERO TAR-154 Y TAR-622\r\nCOMPRA DE RIEL DE DESLIZAMIENTO (SENSOR CADENILLA CULATA GRANDE) - TAR-245', '346.001', '2020-04-03', NULL, NULL, '2020-06-10 18:27:55', '2020-06-10 18:27:55'),
(199, 8, 52, '32E79270', 'Correctivo', '171.189', NULL, 'CAMBIO DE BATERIA', '512.201', '2020-02-03', NULL, NULL, '2020-06-10 19:07:47', '2020-06-10 19:07:47'),
(200, 2, 48, NULL, 'Preventivo', NULL, NULL, '1 juego de anillo, 1 juego de casquetes, empaque de culata, empaque de tapavalvulas, termostato, enfriador de aceite, juego de patines, correa GPK-210, filtro de combustible, filtro de aceite, 2 siliconas 11 1/4 de aceite, 4 arandelas inyectores y 1 loiter', '0', '2020-03-02', NULL, NULL, '2020-06-19 00:28:28', '2020-06-19 00:28:28'),
(202, 11, 48, '0181', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MANTENIMIENTO PREVENTIVO', '100.000', '2020-04-16', NULL, NULL, '2020-06-19 00:42:40', '2020-06-19 00:42:40'),
(203, 10, 48, '311', 'Preventivo', NULL, NULL, 'empaque de culata, ki oring, kit arandela inyector, kit poleas X5, juego de anillos, casquete de bancada, casquete de biela, medialuna, caucho valvula, reten trasero ciguieñal, reten delantero, silicona y empaque tapa de valvula', '2.010.278', '2020-03-02', NULL, NULL, '2020-06-19 01:02:27', '2020-06-19 01:02:27'),
(204, 2, 54, NULL, 'Preventivo', NULL, NULL, '4 llantas reencauchadas traseras R-205 - se pasan dos llantas traseras para parte de adelante', '0', '2020-02-25', NULL, NULL, '2020-06-19 01:12:32', '2020-06-19 01:12:32'),
(205, 11, 54, '133', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de tapa para el A/C y mantenimiento del mismo', '150.000', '2020-02-15', NULL, NULL, '2020-06-19 01:17:48', '2020-06-19 01:17:48'),
(206, 21, 54, '2415', 'Preventivo', NULL, NULL, 'compra de 8 cauchos para mulle', '60.000', '2020-04-29', NULL, NULL, '2020-06-19 01:39:21', '2020-06-19 01:39:21'),
(207, 44, 54, '1923', 'Preventivo', NULL, NULL, '2/4 DE ACEITE 15W40', '30.800', '2020-04-23', NULL, NULL, '2020-06-19 01:41:48', '2020-06-19 01:41:48'),
(208, 11, 20, '184', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:cambio de crochera del compresor y 1 crochera', '240.000', '2020-04-23', NULL, NULL, '2020-06-19 01:57:20', '2020-06-19 01:57:20'),
(209, 11, 20, '208', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO Y CARGA DE GAS.', '190.000', '2020-05-26', NULL, NULL, '2020-06-19 01:58:28', '2020-06-19 01:58:28'),
(210, 10, 20, '383', 'Preventivo', NULL, NULL, 'AMORTIGUADORE LH (izquierdo delantero)', '279.999', '2020-05-20', NULL, NULL, '2020-06-19 02:00:09', '2020-06-19 02:00:09'),
(211, 10, 20, '381', 'Preventivo', NULL, NULL, '1 JUEGO DE PASTILLAS DE FRENO', '115.000', '2020-05-20', NULL, NULL, '2020-06-19 02:00:51', '2020-06-19 02:00:51'),
(212, 45, 20, '1092', 'Preventivo', '131.260', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-04-30', NULL, NULL, '2020-06-19 02:55:47', '2020-06-19 02:55:47'),
(213, 46, 20, '174', 'Preventivo', NULL, NULL, '4 retenedores fraude de reparacion y 2 correas', '250.000', '2020-03-25', NULL, NULL, '2020-06-19 02:59:35', '2020-06-19 02:59:35'),
(214, 47, 20, '2186', 'Correctivo', NULL, NULL, 'MONTAJE DE LLANTAS TRASERAS IZQUIERDA PARA CAMBIO DE RETENEDORES Y ENGRASE DE RODAMIENTOS', '68.500', '2020-03-06', NULL, NULL, '2020-06-19 03:02:19', '2020-06-19 03:02:19'),
(215, 48, 20, NULL, 'Correctivo', NULL, NULL, 'SOLDADA DE GOLPE DELANTERO LADO DERECHO Y PINTURA DEL MISMO - INCIDENTE PUERTO IMPALA', '350.000', '2020-03-01', NULL, NULL, '2020-06-19 03:03:57', '2020-06-19 03:03:57'),
(216, 10, 20, '242', 'Preventivo', NULL, NULL, 'HOJA DE MUELLE, BUJE ENTERIZO Y BUJE PEQUEÑO', '416.642', '2020-02-12', NULL, NULL, '2020-06-19 03:05:58', '2020-06-19 03:05:58'),
(217, 49, 20, '4649', 'Correctivo', NULL, NULL, 'ARREGLO DE MANIJA CHAPA PUERTA LATERAL INTERNA', '20.000', '2020-02-11', NULL, NULL, '2020-06-19 03:09:14', '2020-06-19 03:09:14'),
(218, 2, 20, NULL, 'Preventivo', '124.514', NULL, '2 hojas principales muelle trasera, 2 tornillos centro, 2 bujes delanteros, 4 bujes traseros, desmontaje de muelle trasero para reforzar, la principal vieja se corto para 3 hojas', '0', '2020-02-08', NULL, NULL, '2020-06-19 03:13:14', '2020-06-19 03:13:14'),
(219, 1, 20, '348', 'Correctivo', NULL, NULL, 'cambio de rodillos y balineras mantenimiento de puerta', '90.000', '2020-02-04', NULL, NULL, '2020-06-19 03:15:49', '2020-06-19 03:15:49'),
(220, 25, 20, NULL, 'Correctivo', NULL, NULL, 'calibracion de llantas delanteras lado derecho', '0', '2020-02-04', NULL, NULL, '2020-06-19 03:19:45', '2020-06-19 03:19:45'),
(221, 25, 20, NULL, 'Correctivo', NULL, NULL, 'montaje de llanta delantera izquierda', '0', '2020-02-06', NULL, NULL, '2020-06-19 03:23:06', '2020-06-19 03:23:06'),
(222, 11, 20, '85', 'Correctivo', NULL, NULL, 'Desmonte de consola original para adaptacion de consola universal (6 libras de gas, 1/4 de aceite, 2 soldaduras en aluminio, 2 mts de prestite, 2 picos curvo media', '250.000', '2020-01-21', NULL, NULL, '2020-06-19 03:24:41', '2020-06-19 03:24:41'),
(223, 8, 20, '32E79128', 'Correctivo', NULL, NULL, 'CAMBIO DE BATERIA POR GARANTIA', '0', '2020-01-29', NULL, NULL, '2020-06-19 03:27:26', '2020-06-19 03:27:26'),
(224, 10, 20, '185', 'Preventivo', NULL, NULL, 'REJILLA EVAPORADOR 6 PUESTOS', '890.001', '2020-01-20', NULL, NULL, '2020-06-19 03:28:12', '2020-06-19 03:28:12'),
(225, 10, 20, '171', 'Preventivo', NULL, NULL, 'ROTULA', '180.001', '2020-01-17', NULL, NULL, '2020-06-19 03:28:41', '2020-06-19 03:28:41'),
(226, 45, 20, '142', 'Preventivo', '122.176', NULL, 'ALINEACION, BALANCEO Y ROTACION:BALANCEO, ALINEACION Y ROTACION', '63.000', '2020-01-14', NULL, NULL, '2020-06-19 03:29:53', '2020-06-19 03:29:53'),
(227, 51, 20, NULL, 'Preventivo', NULL, NULL, '2 PEDALES', '8.000', '2020-01-04', NULL, NULL, '2020-06-19 03:32:13', '2020-06-19 03:32:13'),
(234, 9, 48, '1600', 'Preventivo', NULL, NULL, 'tubuladora de refrigeracion', '265.582', '2020-03-02', NULL, NULL, '2020-06-19 17:13:22', '2020-06-19 17:13:22'),
(235, 32, 48, '510', 'Preventivo', NULL, NULL, '1 orring manguera de turbo a intecoler, codificacion de inyectores, programacion de inyectores a cero en marcha, 1 purga y encendido de vehiculo y suministro de repuestos (mano de obra)', '340.000', '2020-03-02', NULL, NULL, '2020-06-19 17:19:44', '2020-06-19 17:19:44'),
(236, 32, 48, '495', 'Preventivo', NULL, NULL, 'aditivo combustible, escaneado, revision de fallas y diagnostico, reprogramacion y calibraciion a cero de inyectores y suministro de repuesto', '200.000', '2020-02-17', NULL, NULL, '2020-06-19 17:23:39', '2020-06-19 17:23:39'),
(237, 9, 48, '1575', 'Preventivo', NULL, NULL, 'termostato', '402.023', '2020-02-28', NULL, NULL, '2020-06-19 17:24:05', '2020-06-19 17:24:05'),
(239, 52, 48, '4566', 'Preventivo', NULL, NULL, 'LAVADO DE TECHO', '105.000', '2020-03-26', NULL, NULL, '2020-06-19 17:25:13', '2020-06-19 17:25:13'),
(240, 53, 48, '75', 'Preventivo', NULL, NULL, 'cambio de colector', '80.000', '2020-01-27', NULL, NULL, '2020-06-19 17:39:16', '2020-06-19 17:39:16'),
(241, 51, 48, '19025', 'Preventivo', NULL, NULL, '2 BOMBILLOS', '24.000', '2020-04-07', NULL, NULL, '2020-06-19 17:47:39', '2020-06-19 17:47:39'),
(243, 25, 36, NULL, 'Preventivo', NULL, NULL, 'MONTAJE DE LLANTA LADO IZQUIERDO TRASERA ADENTRO', '0', '2020-02-19', NULL, NULL, '2020-06-19 18:02:12', '2020-06-19 18:02:12'),
(244, 9, 36, '1375', 'Preventivo', NULL, NULL, '*4 CHAVETA SEGURO *2 CLIP SALPICADERA 515 *4CLIP SALPICADERA 515 *TUERCA ELÁSTICA *FALDON DE GUARDABARRO DELANTERO IZQUIERO *FALDON DE GUARDABARRO DELANTERO DERECHO *FALDON DE GUARDABARRO TRASERO IZQUIERDO *FALDON DE GUARDABARRO TRASERO DERECHO *12 TORNILLOS *4 TUERCA SALPICADERA 515', '558.770', '2020-02-15', NULL, NULL, '2020-06-19 18:07:00', '2020-06-19 18:07:00'),
(245, 54, 36, '7329', 'Preventivo', NULL, NULL, 'LAVADO GENERAL A ALTA PRESION', '55.000', '2020-02-07', NULL, NULL, '2020-06-19 18:16:17', '2020-06-19 18:16:17'),
(246, 2, 36, NULL, 'Preventivo', NULL, NULL, 'TENSIONADA DE FRENOS Y FRENO DE MANO', '0', '2020-01-28', NULL, NULL, '2020-06-19 18:19:59', '2020-06-19 18:19:59'),
(247, 11, 36, '143', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL AIRE TRASERO', '100.000', '2020-01-24', NULL, NULL, '2020-06-19 18:21:37', '2020-06-19 18:21:37'),
(248, 11, 36, '143', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mtto general del A/C', '100.000', '2020-01-24', NULL, NULL, '2020-06-19 18:25:30', '2020-06-19 18:25:30'),
(249, 11, 36, '191', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de villaret para Mtto de aire delantero y demonte de aire trasero para Mtto', '220.000', '2020-05-04', NULL, NULL, '2020-06-19 18:26:31', '2020-06-19 18:26:31'),
(250, 9, 17, '2066', 'Preventivo', '0', NULL, 'RADIADOR AGUA', '1.380.000', '2020-05-04', NULL, NULL, '2020-06-19 18:28:04', '2020-06-19 18:28:04'),
(251, 4, 17, '56805', 'Preventivo', '0', NULL, 'PORTAESCOBILLAS', '25.000', '2020-04-22', NULL, NULL, '2020-06-19 18:28:50', '2020-06-19 18:28:50'),
(252, 10, 17, '281', 'Preventivo', '0', NULL, 'BRAZO AXIAL', '107.100', '2020-02-22', NULL, NULL, '2020-06-19 18:29:36', '2020-06-19 18:29:36'),
(253, 32, 17, '494', 'Preventivo', '0', NULL, 'ADITIVO COMBUSTIBLE, ESCANEADO, REVISION FALLAS Y DIAGNOSTICO, REPROGRAMACION Y CALIBRACION A CERO DE INYECTORES Y SUMINISTRO DE REPUESTOS', '200.000', '2020-02-17', NULL, NULL, '2020-06-19 18:32:40', '2020-06-19 18:32:40'),
(254, 2, 17, NULL, 'Preventivo', '0', NULL, 'SERVENTIN, TAPA NIVEL DE REFRIGERANTE, TERMOSTATO, MANGUERA CURVAN, 1 CORREA DE ACESORIO (BODEGA) CAMBIO DE SERVENTIN, 1 CORREA', '0', '2020-01-17', NULL, NULL, '2020-06-19 18:34:51', '2020-06-19 18:34:51'),
(255, 2, 17, NULL, 'Preventivo', NULL, NULL, 'MONTAJE DE LLANTA DELANTERA DERECHA', '0', '2020-02-14', NULL, NULL, '2020-06-19 18:35:57', '2020-06-19 18:35:57'),
(256, 11, 17, '55', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mtto desmonte de tapa trasera de A/C', '100.000', '2019-12-11', NULL, NULL, '2020-06-19 18:48:03', '2020-06-19 18:48:03'),
(257, 11, 17, '189', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de Villaret para Mtto de aire delantero y desmonte de aire trasero para Mtto', '220.000', '2020-05-04', NULL, NULL, '2020-06-19 18:50:57', '2020-06-19 18:50:57'),
(258, 2, 18, NULL, 'Preventivo', NULL, NULL, 'base de filtro cambio de base por fuga de agua', '0', '2020-03-02', NULL, NULL, '2020-06-19 18:55:28', '2020-06-19 18:55:28'),
(259, 55, 18, '205', 'Preventivo', '0', NULL, 'FORRO DE VOLANTE', '30.000', '2020-05-11', NULL, NULL, '2020-06-19 18:57:37', '2020-06-19 18:57:37'),
(260, 45, 18, '1033', 'Preventivo', '242.447', NULL, 'LLANTAS:compra de 4 195/75R16 llantas Marathon', '1.800.000', '2020-04-08', NULL, NULL, '2020-06-19 19:15:55', '2020-06-19 19:15:55'),
(261, 32, 18, '511', 'Preventivo', '0', NULL, 'Diagnostico y escaneo de vehiculo, diagnostico de fuga de refrigerante por base de filtro combustible, suministro de repuestos (mano de obra)', '200.000', '2020-03-02', NULL, NULL, '2020-06-19 19:39:12', '2020-06-19 19:39:12'),
(262, 9, 18, '1598', 'Preventivo', '0', NULL, 'JUNTA ANULAR MANGUERA RAD, EFRIADOR DE ACEITE', '1.000.206', '2020-02-29', NULL, NULL, '2020-06-19 19:40:43', '2020-06-19 19:40:43'),
(263, 32, 18, '493', 'Preventivo', '0', NULL, 'DIAGNOSTICO FALLA REGULACION, ESCANEADO, PROGRAMACION Y CALIBRACION INYECTORES, ADITIVO COMBUSTIBLE, SUMINISTRO DE REPUESTOS Y CONVERTIDOR DE PRESION', '520.000', '2020-02-17', NULL, NULL, '2020-06-19 19:44:04', '2020-06-19 19:44:04'),
(264, 11, 18, '93', 'Preventivo', '0', NULL, 'ARREGLO DE EXTRACTOR DEL AIRE ACONDICIONADA DELANTERO', '40.000', '2020-01-25', NULL, NULL, '2020-06-19 19:46:33', '2020-06-19 19:46:33'),
(265, 53, 18, '73', 'Preventivo', '0', NULL, 'BOBINADO DE CORONA', '200.000', '2020-01-24', NULL, NULL, '2020-06-19 19:47:24', '2020-06-19 19:47:24'),
(266, 2, 18, NULL, 'Preventivo', NULL, NULL, 'BOMBILLO 154 - BOMBILLO 1141 Y CAMBIO DE BOMBILLO', '0', '2020-01-16', NULL, NULL, '2020-06-19 19:50:16', '2020-06-19 19:50:16'),
(267, 2, 18, NULL, 'Preventivo', NULL, NULL, 'SERVICIO DE DESVARE - DESMONTE DE LLANTA POR DESPINCHADA', '0', '2020-01-15', NULL, NULL, '2020-06-19 19:51:32', '2020-06-19 19:51:32'),
(268, 8, 18, '32E79618', 'Preventivo', '0', NULL, 'BATERIA:CAMBIO DE BATERIA POR GARANTIA', '0', '2020-02-13', NULL, NULL, '2020-06-19 19:57:46', '2020-06-19 19:57:46'),
(269, 2, 19, NULL, 'Preventivo', NULL, NULL, 'DESMONTE DE MODULO DE LUCES PARA CORRECION DE SEÑAL LUZ DE PASILLO PASAJEROS', '0', '2020-02-26', NULL, NULL, '2020-06-19 20:20:27', '2020-06-19 20:20:27'),
(270, 9, 19, '2363', 'Preventivo', NULL, NULL, 'BOMBA BALINERA EMBRAGUE', '427.567', '2020-06-01', NULL, NULL, '2020-06-19 20:24:26', '2020-06-19 20:24:26'),
(271, 9, 19, '2077', 'Preventivo', NULL, NULL, 'ARANDELA INYECTOR E INYECTOR DE COMBUSTIBLE', '1.034.800', '2020-05-05', NULL, NULL, '2020-06-19 20:25:26', '2020-06-19 20:25:26'),
(272, 9, 19, '2233', 'Preventivo', NULL, NULL, 'DEPOSITO DE REFRIGERANTE', '368.000', '2020-05-19', NULL, NULL, '2020-06-19 20:26:16', '2020-06-19 20:26:16'),
(273, 43, 19, '372', 'Preventivo', NULL, NULL, 'VENTA DE CATRING - TURBO - GARANTIA DE 6 MESES POR PASO DE ACEITE', '2.100.000', '2020-05-11', NULL, NULL, '2020-06-19 20:27:21', '2020-06-19 20:27:21'),
(274, 32, 19, '535', 'Preventivo', NULL, NULL, 'CAMBIO DE INYECTOR No. 2, PROGRAMACION Y CALIBRACION INYECTOR No. 2 y SUMINISTRO DE REPUESTOS', '200.000', '2020-05-04', NULL, NULL, '2020-06-19 20:38:22', '2020-06-19 20:38:22'),
(275, 5, 19, 'FECO165996', 'Preventivo', NULL, NULL, 'MANGUERA CUACHO Y LONA, ABRAZADERA - CREMALLERA', '27.000', '2020-05-15', NULL, NULL, '2020-06-19 20:48:55', '2020-06-19 20:48:55'),
(276, 56, 19, '166117', 'Preventivo', NULL, NULL, 'MANGUERA CUACHO Y LONA, ABRAZADERA - CREMALLERA', '43.000', '2020-05-21', NULL, NULL, '2020-06-19 20:49:36', '2020-06-19 20:49:36'),
(277, 45, 19, '1888', 'Preventivo', '102.845', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-04-29', NULL, NULL, '2020-06-19 20:52:13', '2020-06-19 20:52:13'),
(278, 4, 19, '56804', 'Preventivo', NULL, NULL, '10 FUSIBLES Y 1 REGULADOR', '36.000', '2020-04-22', NULL, NULL, '2020-06-19 20:58:39', '2020-06-19 20:58:39'),
(279, 57, 19, '1493', 'Preventivo', NULL, NULL, 'MANTENIMIENTO INYECTOR', '150.000', '2020-04-22', NULL, NULL, '2020-06-19 21:11:45', '2020-06-19 21:11:45'),
(280, 32, 19, '530', 'Preventivo', NULL, NULL, '2 pastillas delanteras, 2 pastillas traseras, programacion y calibracion de inyectores y suministro de repuestos', '670.000', '2020-04-14', NULL, NULL, '2020-06-19 21:15:06', '2020-06-19 21:15:06'),
(281, 9, 19, '1947', 'Preventivo', NULL, NULL, '2 pastillas freno delantero, 2 pastillas de freno trasero y 1 riel de deslizamiento', '346.001', '2020-04-03', NULL, NULL, '2020-06-19 21:16:09', '2020-06-19 21:16:09'),
(282, 10, 19, '346', 'Preventivo', NULL, NULL, 'PEGANTE Y SILICONA LOCTILLE', '110.000', '2020-03-16', NULL, NULL, '2020-06-19 21:16:52', '2020-06-19 21:16:52'),
(283, 10, 19, '345', 'Preventivo', NULL, NULL, 'KIT DE POLEAS, KIT DE RANDELAS, EMPAQUE TAPA DE VALVULA, RETEN CIGUEÑAL, RETEN TRASERO CIGUEÑAL, KIT CAUCHOS VALVULA, CASQUETE DE BIELA, EMPAQUE DE CULATA, SOPORTE DE MOTOR, KIT ORING, KIT DE ANILLO', '2.083.077', '2020-03-16', NULL, NULL, '2020-06-19 21:20:03', '2020-06-19 21:20:03'),
(284, 9, 19, '1832', 'Preventivo', NULL, NULL, 'TERMOSTATO Y 2 TERMINAL AXIAL', '544.846', '2020-03-13', NULL, NULL, '2020-06-19 21:24:27', '2020-06-19 21:24:27'),
(285, 58, 19, '10291', 'Preventivo', NULL, NULL, 'LAVADO DE COJINERIA', '200.000', '2020-02-24', NULL, NULL, '2020-06-19 21:30:22', '2020-06-19 21:30:22'),
(286, 32, 19, '496', 'Preventivo', NULL, NULL, 'ADITIVO COMBUSTIBLE, ESCANEADO, REVISION DE FALLAS Y DIAGNOSTICO, REPROGRAMACION Y CALIBRACION A CERO DE INYECTORES Y SUMINISTRO DE REPUESTOS', '200.000', '2020-02-17', NULL, NULL, '2020-06-19 21:31:57', '2020-06-19 21:31:57'),
(287, 10, 19, '191', 'Preventivo', NULL, NULL, 'CLUCHT O POLEA', '242.760', '2020-01-22', NULL, NULL, '2020-06-19 21:35:15', '2020-06-19 21:35:15'),
(288, 59, 19, '7988', 'Preventivo', NULL, NULL, 'CONSTRUCCION DE CAMISA O TAPA DE PLANTA PARA AJUSTE DE RODILLO', '30.000', '2020-01-17', NULL, NULL, '2020-06-19 22:00:59', '2020-06-19 22:00:59'),
(289, 5, 19, '0656', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 6PK2210', '47.400', '2020-06-19', NULL, NULL, '2020-06-20 00:18:03', '2020-06-20 00:18:03'),
(290, 2, 19, NULL, 'Preventivo', NULL, NULL, '1 patin loco', '0', '2020-01-10', NULL, NULL, '2020-06-20 01:57:49', '2020-06-20 01:57:49'),
(291, 2, 19, NULL, 'Preventivo', NULL, NULL, '2 BUJES DE BARRA ESTABILIZADORA - DESMONTE DE BARRA PARA CAMBIO DE BUJES', '0', '2020-01-09', NULL, NULL, '2020-06-20 01:59:25', '2020-06-20 01:59:25'),
(292, 51, 19, NULL, 'Preventivo', NULL, NULL, '4 BOMBILLOS G7 AMARILLO, 2 BOMBILLOS BAYO, 1 JUEGO DE PLUMILLAS', '78.000', '2020-01-04', NULL, NULL, '2020-06-20 02:01:25', '2020-06-20 02:01:25'),
(293, 45, 22, '1032', 'Preventivo', '219.391', NULL, 'LLANTAS:Compra de 6 llantas 225/65R16 goodyear 08/04/2020 Fact: 1032.  (Ultimas 2 llantas  pacha izquierda 23/07/2019 KM: 181527 - 2 llantas 05/03/2019 KM: 162546 - 2 llantas 05/06/2019 KM: 175522 )', '2.760.000', '2020-04-08', NULL, NULL, '2020-06-20 02:08:51', '2020-06-20 02:08:51'),
(294, 45, 22, '1085', 'Preventivo', '221.723', NULL, 'ALINEACION, BALANCEO Y ROTACION:', '38.000', '2020-04-28', NULL, NULL, '2020-06-20 02:19:29', '2020-06-20 02:19:29'),
(295, 47, 22, '2185', 'Preventivo', NULL, NULL, '1 retenedor, 1 horran, 1 silicona, 1 grasa y gasolina', '51.500', '2020-03-06', NULL, NULL, '2020-06-20 02:20:36', '2020-06-20 02:20:36'),
(296, 60, 22, '14807', 'Preventivo', NULL, NULL, 'REVISION TECNICO MECANICA', '322.500', '2020-03-19', NULL, NULL, '2020-06-20 02:24:00', '2020-06-20 02:24:00'),
(297, 2, 22, NULL, 'Preventivo', NULL, NULL, '2 TARROS DE ADITIVO Y GRADUCACION DE CLUCHT', '0', '2020-02-10', NULL, NULL, '2020-06-20 02:24:47', '2020-06-20 02:24:47'),
(298, 2, 22, NULL, 'Preventivo', NULL, NULL, 'DESMONTAJE DE EMBRAGUE PARA REPARACION, SE EMPASTO DISCO Y CALIBRACION DE PRENSA', '0', '2020-02-14', NULL, NULL, '2020-06-20 02:25:27', '2020-06-20 02:25:27'),
(299, 61, 22, '8153', 'Preventivo', NULL, NULL, 'PRENSA DE DISCO', '250.000', '2020-02-14', NULL, NULL, '2020-06-20 02:28:06', '2020-06-20 02:28:06'),
(300, 25, 22, NULL, 'Preventivo', NULL, NULL, 'CAMBIO DE LLANTA DELANTERA IZQUIERDA PARA ATRAS ADENTRO DERECHA', '0', '2020-02-04', NULL, NULL, '2020-06-20 02:32:14', '2020-06-20 02:32:14'),
(301, 25, 22, NULL, 'Preventivo', NULL, NULL, '1 MONTAJE DE LLANTA TRASERA LADO IZQUIERDO AFUERA', '0', '2020-02-10', NULL, NULL, '2020-06-20 02:59:34', '2020-06-20 02:59:34'),
(302, 25, 22, NULL, 'Preventivo', NULL, NULL, 'CALIBRACION LLANTA TRASERA IZQUIERDA AFUERA', '0', '2020-02-11', NULL, NULL, '2020-06-20 03:00:23', '2020-06-20 03:00:23'),
(303, 25, 22, NULL, 'Preventivo', NULL, NULL, 'CAMBIO DE VALVULA LLANTA TRASERA LADO DERECHO AFUERA LADO IZQUIERDO ADENTRO', '0', '2020-02-13', NULL, NULL, '2020-06-20 03:01:18', '2020-06-20 03:01:18'),
(304, 5, 22, '0654', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 17385', '15.000', '2020-06-19', NULL, NULL, '2020-06-20 03:02:23', '2020-06-20 03:02:23'),
(305, 2, 22, NULL, 'Preventivo', NULL, NULL, 'AJUSTE DE MUELLE Y CORREAS', '0', '2020-01-14', NULL, NULL, '2020-06-20 03:03:24', '2020-06-20 03:03:24'),
(306, 15, 22, '3664', 'Preventivo', NULL, NULL, 'RECARGA DE EXTINTOR DE 20 LBS', '23.800', '2020-02-01', NULL, NULL, '2020-06-20 03:04:00', '2020-06-20 03:04:00'),
(307, 62, 27, '72', 'Preventivo', NULL, NULL, 'PASADOR MUELLE HINO - BUJE MUELLE BIMETALICO', '72.000', '2020-02-03', NULL, NULL, '2020-06-20 03:10:08', '2020-06-20 03:10:08'),
(308, 2, 27, NULL, 'Preventivo', NULL, NULL, 'HOJA MUELLE DELANTERO, 2 BUJES, 2 PASADORES - DESMONTE DE MUELLE DELANTERO PARA CAMBIO DE HOJA', '0', '2020-01-29', NULL, NULL, '2020-06-20 03:11:24', '2020-06-20 03:11:24'),
(309, 45, 27, '220', 'Preventivo', '155.745', NULL, 'ALINEACION, BALANCEO Y ROTACION:2 MONTAJES, 2 BALANCEOS Y 1 ALINEACION (2 LLANTAS MICHELLIN DELANTERAS - COOCHOFERES)', '88.000', '2020-01-18', NULL, NULL, '2020-06-20 03:15:41', '2020-06-20 03:15:41'),
(310, 2, 27, NULL, 'Preventivo', NULL, NULL, '2 BOMBILLOS H7 24 VOLTIOS Y CAMBIO DE BOMBILLOS', '0', '2020-01-16', NULL, NULL, '2020-06-20 03:16:39', '2020-06-20 03:16:39'),
(311, 45, 27, '9', 'Preventivo', NULL, NULL, 'MONTAJE', '10.000', '2020-01-03', NULL, NULL, '2020-06-20 03:17:23', '2020-06-20 03:17:23'),
(312, 2, 26, NULL, 'Preventivo', NULL, NULL, '1 BLOWER DE 24 VOLTIOS E INSTALACION (NELLY)', '0', '2020-01-11', NULL, NULL, '2020-06-20 03:21:59', '2020-06-20 03:21:59'),
(313, 11, 24, '0178', 'Preventivo', '0', NULL, 'DESMONTE DE COMPRESOR PARA MONTAR UNO NUEVO', '100.000', '2020-04-23', NULL, NULL, '2020-06-26 23:14:21', '2020-06-26 23:14:21'),
(314, 10, 24, '382', 'Preventivo', '0', NULL, 'TERMINAL DIRECCION LH Y RH', '359.998', '2020-05-20', NULL, NULL, '2020-06-26 23:17:34', '2020-06-26 23:17:34'),
(315, 45, 24, '1077', 'Preventivo', '182.646', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineacion', '38.000', '2020-04-27', NULL, NULL, '2020-06-26 23:21:03', '2020-06-26 23:21:03'),
(316, 63, 24, '27194', 'Correctivo', '0', NULL, 'COMPRA DE COMPRESOR AIRE ACONDICIONADO', '1.566.387', '2020-04-14', NULL, NULL, '2020-06-26 23:24:28', '2020-06-26 23:24:28'),
(317, 8, 24, '32E80675', 'Preventivo', '177.890', NULL, 'BATERIA:COMPRA DE BATERIA AUTO MAC', '825.601', '2020-03-16', NULL, NULL, '2020-06-26 23:27:34', '2020-06-26 23:27:34'),
(318, 1, 24, '152', 'Correctivo', NULL, NULL, 'ARREGLO DE ESPALDAR PASAJERO', '35.000', '2020-02-28', NULL, NULL, '2020-06-26 23:28:15', '2020-06-26 23:28:15'),
(319, 48, 24, '0', 'Correctivo', NULL, NULL, 'INSTALACION DE PARABRISAS LADO DEL CONDUCTOR', '100.000', '2020-02-25', NULL, NULL, '2020-06-26 23:29:30', '2020-06-26 23:29:30'),
(320, 11, 24, '145', 'Correctivo', '0', NULL, 'DESMONTE COMPRESOR PARA CAMBIO PARA UNO DE SEGUNDA', '100.000', '2020-02-22', NULL, NULL, '2020-06-26 23:30:16', '2020-06-26 23:30:16'),
(321, 2, 26, NULL, 'Correctivo', '0', NULL, '1 BLOWER 24 VOLTIOS (NELLY)', '0', '2020-12-11', NULL, NULL, '2020-06-27 16:23:30', '2020-06-27 16:23:30'),
(322, 2, 26, NULL, 'Preventivo', '0', NULL, '2 RODAMIENTOS 6003 Y BB 0050 - DESMONTE DE ALTERNADOR PARA REPARACION', '0', '2020-01-24', NULL, NULL, '2020-06-27 16:24:55', '2020-06-27 16:24:55'),
(323, 2, 26, NULL, 'Correctivo', NULL, NULL, 'BOMBILLO H7 DE 24VOLT, CAMBIO DE BOMBILLO, DESMONTE DE CREMALLERA, PUERTA DE PASAJEROS PARA REPARACION', '0', '2020-03-04', NULL, NULL, '2020-06-27 16:29:51', '2020-06-27 16:29:51'),
(324, 11, 26, '190', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MANTENIMIENTO PREVENTIVO', '150.000', '2020-05-01', NULL, NULL, '2020-06-27 16:33:41', '2020-06-27 16:33:41'),
(325, 45, 26, '926', 'Preventivo', '542.986', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIO Y 2 BALACEOS', '68.000', '2020-03-10', NULL, NULL, '2020-06-27 16:38:28', '2020-06-27 16:38:28'),
(326, 61, 26, '7926', 'Preventivo', '0', NULL, 'LIQUIDO DE FRENO ALEMAN', '35.000', '2020-01-11', NULL, NULL, '2020-06-27 16:42:58', '2020-06-27 16:42:58'),
(327, 11, 26, '83', 'Preventivo', '0', NULL, 'CAMBIO DE FILTRO SECADOR, CALIBRACIÓN DE GAS Y ACEITE COMPRESOR', '150.000', '2020-01-16', NULL, NULL, '2020-06-27 16:44:20', '2020-06-27 16:44:20'),
(328, 25, 26, NULL, 'Preventivo', NULL, NULL, 'CALIBRACION DE LLANTAS DELANTERAS', '0', '2020-02-12', NULL, NULL, '2020-06-27 16:45:40', '2020-06-27 16:45:40'),
(329, 25, 26, NULL, 'Preventivo', NULL, NULL, 'CALIBRACION DE TODAS LAS LLANTAS', '0', '2020-02-19', NULL, NULL, '2020-06-27 16:46:25', '2020-06-27 16:46:25'),
(330, 2, 21, NULL, 'Preventivo', NULL, NULL, 'CAUCHO DE MUELLE, TORNILLO SAPA DE MUELLE, DESMONTAJE DE MUELLE PARA CAMBIO DE CAUCHO Y PASADOR', '0', '2020-02-24', NULL, NULL, '2020-06-28 15:51:56', '2020-06-28 15:51:56'),
(331, 2, 21, '0', 'Preventivo', NULL, NULL, '1 JUEGO DE ANILLOS, 1 JUEGO DE CASQUETES, 1 RETENEDOR TRASERO SIGUEÑAL, CULETA COMPLETA, EMPAQUE DE CULATA, EMPAQUE DE TAPA VALVULAS, 1 TAPA DE RADIADOR, 2 SILICONAS GRIS, 1 PEGA CHELA, 1 DISCO DE CLUTCHS, BALINERA DE COLLARIN Y 10 1/4 DE ACEITE', '0', '2020-03-07', NULL, NULL, '2020-06-28 15:55:45', '2020-06-28 15:55:45'),
(332, 11, 21, '214', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MANTENIMIENTO PREVENTIVO Y ARREGLO DE INSTALACIÓN DE EXTRACTORES', '100.000', '2020-05-11', NULL, NULL, '2020-06-28 15:58:55', '2020-06-28 15:58:55'),
(333, 10, 21, '386', 'Preventivo', '0', NULL, 'TERMOSTATO', '98.000', '2020-05-20', NULL, NULL, '2020-06-28 15:59:56', '2020-06-28 15:59:56'),
(334, 64, 21, '14409', 'Preventivo', NULL, NULL, 'REVISION TECNICOMECANICA', '322.500', '2020-02-12', NULL, NULL, '2020-06-28 16:03:48', '2020-06-28 16:03:48'),
(335, 65, 21, '12130', 'Preventivo', NULL, NULL, 'PRUEBA HIDROSTATICA EN CULATA MOTOR NISSAN', '60.000', '2020-02-27', NULL, NULL, '2020-06-28 16:06:26', '2020-06-28 16:06:26'),
(336, 43, 21, '336', 'Preventivo', '0', NULL, 'MTTTO PREVENTIVO A TURBO', '2.500.000', '2020-02-18', NULL, NULL, '2020-06-28 16:07:33', '2020-06-28 16:07:33'),
(337, 61, 21, '7927', 'Preventivo', NULL, NULL, 'JUEGO DE BANDAS Y FRENO DE MANO', '20.000', '2020-01-11', NULL, NULL, '2020-06-28 16:08:38', '2020-06-28 16:08:38'),
(338, 11, 21, '167', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de tapa para mtto general del A/C, evaporador nuevo del aire delantero, carga de 12 libras de gas, montaje de evaporador delantero', '598.000', '2020-03-10', NULL, NULL, '2020-06-28 16:18:09', '2020-06-28 16:18:09'),
(339, 11, 21, '214', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO Y ARREGLO DE INSTALACION DE EXTRACTORES', '100.000', '2020-05-11', NULL, NULL, '2020-06-28 16:19:13', '2020-06-28 16:19:13'),
(340, 10, 21, '241', 'Preventivo', '0', NULL, 'GRAPA CON TUERCA', '28.560', '2020-02-12', NULL, NULL, '2020-06-28 16:23:34', '2020-06-28 16:23:34'),
(341, 10, 21, '285', 'Preventivo', '0', NULL, 'RETEN DE POLEA', '93.998', '2020-02-22', NULL, NULL, '2020-06-28 16:24:26', '2020-06-28 16:24:26'),
(342, 7, 21, '36646', 'Preventivo', '0', NULL, 'PERA TEMPERATURA DE MOTOR', '39.456', '2020-02-18', NULL, NULL, '2020-06-28 16:25:34', '2020-06-28 16:25:34'),
(343, 5, 21, '164491', 'Preventivo', '0', NULL, 'COMPRA DE MANGUERA RACOR Y CAUCHO', '45.000', '2020-02-24', NULL, NULL, '2020-06-28 16:26:50', '2020-06-28 16:26:50'),
(344, 2, 21, NULL, 'Preventivo', NULL, NULL, 'DESMONTAJE DE MUELLE TRASERO PARA SOLDAR HOJA, DESMONTAJE DE CAMPANA PARA REPARACION DE SISTEMA DE FRENO DE MANO', '0', '2020-02-10', NULL, NULL, '2020-06-28 16:28:27', '2020-06-28 16:28:27'),
(345, 2, 21, NULL, 'Preventivo', NULL, NULL, 'MANTENIMIENTO DE TARRO DE NIVEL DE REFRIGERANTE', '0', '2020-02-03', NULL, NULL, '2020-06-28 16:29:19', '2020-06-28 16:29:19'),
(346, 25, 21, NULL, 'Preventivo', NULL, NULL, 'CALIBRACIÓN LLANTA TRASERA ADENTRO PACHA DERECHA', '0', '2020-02-04', NULL, NULL, '2020-06-28 16:30:25', '2020-06-28 16:30:25'),
(347, 25, 21, NULL, 'Preventivo', NULL, NULL, 'CALIBRACION DE LLANTA LAS DELATERAS', '0', '2020-02-13', NULL, NULL, '2020-06-28 16:31:07', '2020-06-28 16:31:07'),
(348, 66, 21, '8109', 'Preventivo', NULL, NULL, 'EXTRACCION Y ENSAMBLE DE TORNILLO EN PRENSA HIDRAULICA O BASE', '25.000', '2020-02-20', NULL, NULL, '2020-06-28 16:35:36', '2020-06-28 16:35:36'),
(349, 67, 21, '765', 'Preventivo', NULL, NULL, '2 CAUCHOS DE MUELLE TRASERO', '45.000', '2020-02-24', NULL, NULL, '2020-06-28 16:38:22', '2020-06-28 16:38:22'),
(350, 68, 21, '28673', 'Preventivo', NULL, NULL, 'COMPRA DE TORNILLOS Y ARANDELAS', '16.180', '2020-02-24', NULL, NULL, '2020-06-28 16:41:37', '2020-06-28 16:41:37'),
(351, 10, 21, '322', 'Preventivo', NULL, NULL, 'CASQUETE DE BIELA, JUEGO DE ANILLOS, RETEN CON BASE TRASERO, EMPAQUE DE CULATA, CREMA LOTTITE', '1.305.550', '2020-03-05', NULL, NULL, '2020-06-28 16:43:34', '2020-06-28 16:43:34'),
(352, 61, 21, '8314', 'Preventivo', '0', NULL, 'DISCO DE CLUTCH Y BALINERA', '330.000', '2020-03-04', NULL, NULL, '2020-06-28 16:44:37', '2020-06-28 16:44:37'),
(353, 12, 21, '9855', 'Preventivo', NULL, NULL, 'SONDEO DE RADIADOR Y SOLDADA', '107.100', '2020-02-18', NULL, NULL, '2020-06-28 16:45:50', '2020-06-28 16:45:50'),
(354, 2, 21, NULL, 'Preventivo', NULL, NULL, 'TAPA RADIADOR', '30.000', '2020-03-07', NULL, NULL, '2020-06-28 16:46:33', '2020-06-28 16:46:33'),
(355, 2, 16, NULL, 'Preventivo', NULL, NULL, 'CAMBIO DE BLOWER 24 VOLTIOS', '0', '2020-03-20', NULL, NULL, '2020-06-28 16:47:54', '2020-06-28 16:47:54'),
(356, 10, 16, '384', 'Preventivo', NULL, NULL, 'TERMINALLH Y RH', '519.999', '2020-05-20', NULL, NULL, '2020-06-28 17:05:21', '2020-06-28 17:05:21'),
(358, 10, 16, '315', 'Preventivo', NULL, NULL, 'KIT DE EMBRAGUE COMPLETO', '3.189.251', '2020-03-03', NULL, NULL, '2020-06-28 17:09:51', '2020-06-28 17:09:51'),
(360, 11, 16, '107', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de tapa del A/C para mtto general, calibracion de gas y 3 libras de gas', '180.000', '2020-02-01', NULL, NULL, '2020-06-28 17:16:41', '2020-06-28 17:16:41'),
(361, 2, 15, NULL, 'Preventivo', NULL, NULL, '1 EXTRACTOR 24 VOLTIOS E INSTALACION', '0', '2020-02-22', NULL, NULL, '2020-06-28 17:18:40', '2020-06-28 17:18:40'),
(362, 2, 15, NULL, 'Preventivo', NULL, NULL, '1 RETENEDOR TRASERO, 4 CAUCHOS CILINDROS DE FRENOS, DESMONTAJE DE RUEDA TRASERA PARA CORRECION DE FUGA LIQUIDO DE FRENO', '0', '2020-03-09', NULL, NULL, '2020-06-28 17:21:39', '2020-06-28 17:21:39'),
(363, 51, 15, '19027', 'Preventivo', NULL, NULL, '1 ROLLO DE CINTA', '80.000', '2020-04-08', NULL, NULL, '2020-06-28 17:25:53', '2020-06-28 17:25:53'),
(364, 45, 16, '1084', 'Preventivo', '303.526', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-04-28', NULL, NULL, '2020-06-28 17:30:43', '2020-06-28 17:30:43'),
(365, 10, 15, '251', 'Preventivo', NULL, NULL, 'BUJES ENTRIZO, PASADOR, TORNILLO PASANTE', '148.274', '2020-02-14', NULL, NULL, '2020-06-28 17:32:09', '2020-06-28 17:32:09'),
(366, 2, 15, NULL, 'Preventivo', NULL, NULL, 'KIT DE BOMBA PRINCIPAL DE CLUCHT, DESMONTAJE DE BOMBA PARA REPARACION', '0', '2020-01-22', NULL, NULL, '2020-06-28 17:33:29', '2020-06-28 17:33:29'),
(367, 2, 15, NULL, 'Preventivo', NULL, NULL, '2 EXTRACTORES REPARADOR Y MONTAJE D EXTRACTORES', '0', '2020-01-15', NULL, NULL, '2020-06-28 17:34:47', '2020-06-28 17:34:47'),
(368, 2, 15, NULL, 'Preventivo', NULL, NULL, 'AJUSTE DE EXOSTO Y CALIBRACION DE FRENO DE RETORNO', '0', '2020-01-24', NULL, NULL, '2020-06-28 17:36:07', '2020-06-28 17:36:07'),
(369, 25, 15, NULL, 'Preventivo', NULL, NULL, 'CALIBRACION DE AIRE DE TODAS LAS LLANTAS', '0', '2020-02-06', NULL, NULL, '2020-06-28 20:59:14', '2020-06-28 20:59:14'),
(370, 25, 15, NULL, 'Preventivo', NULL, NULL, 'CALIBRACION DE TODAS LAS LLANTAS', '0', '2020-02-11', NULL, NULL, '2020-06-28 21:11:58', '2020-06-28 21:11:58'),
(372, 29, 50, '6278', 'Preventivo', '5.000', NULL, NULL, '130.000', '2020-05-20', NULL, NULL, '2020-07-03 18:16:43', '2020-07-03 18:16:43'),
(373, 11, 15, '144', 'Preventivo', NULL, NULL, NULL, '285.000', NULL, NULL, NULL, '2020-07-06 17:19:42', '2020-07-06 17:19:42'),
(374, 11, 15, '144', 'Preventivo', '0', NULL, 'Desmonte de manguera de baja para arreglo, 1 pico curvo 3/4, 1 aceite de compresor, 12 libras de gas', '285.000', '2020-02-21', NULL, NULL, '2020-07-06 17:20:38', '2020-07-06 17:20:38'),
(375, 11, 15, '132', 'Preventivo', '0', NULL, 'Desmonte del compresor para cambio de crochera y montaje del mismo (Crochera nueva)', '260.000', '2020-02-15', NULL, NULL, '2020-07-06 17:21:19', '2020-07-06 17:21:19'),
(376, 2, 39, '0', 'Preventivo', '0', NULL, 'DESMONTE DE BOMBA PARA CORREGIR FUGA DE ACEITE', '0', '2020-02-19', NULL, NULL, '2020-07-06 17:22:34', '2020-07-06 17:22:34'),
(377, 2, 39, '0', 'Preventivo', '0', NULL, 'DOS REGULADORES, DOS BOMBONAS, 1 MANGUERA BOMBONA DELANTERA IZQUIERDA, INSTALACION DE BOMBONA Y REGULADOR', '0', '2020-02-26', NULL, NULL, '2020-07-06 17:23:14', '2020-07-06 17:23:14'),
(378, 2, 39, '0', 'Preventivo', '0', NULL, 'REGULADOR KPDIAK DE 12 VOL, SWICHE UN GOLPE, CORREGICION DE CORTO EN PANEL DEL CONTROL DEL AS, DESMONTE DE ALTERNADOR PARA CAMBIO DE REGULADOR', '0', '2020-03-09', NULL, NULL, '2020-07-06 17:24:16', '2020-07-06 17:24:16'),
(379, 2, 39, '0', 'Preventivo', '0', NULL, '1 BOMBA PRINCIPAL, KIT DE BUJES DE PENAL DE FRENO, CAMBIO DE BOMBA DE FRENO Y BUJES DE PEDAL DE FRENO', '0', '2020-03-09', NULL, NULL, '2020-07-06 17:25:32', '2020-07-06 17:25:32'),
(380, 10, 39, '385', 'Preventivo', '0', NULL, 'TERMINAL LH Y RH', '140.001', '2020-05-20', NULL, NULL, '2020-07-06 17:26:17', '2020-07-06 17:26:17'),
(381, 5, 39, '165979', 'Preventivo', '0', NULL, 'MANGUERA DE CAUCHO Y LONA R6 - 5/8', '13.000', '2020-05-14', NULL, NULL, '2020-07-06 17:27:04', '2020-07-06 17:27:04'),
(382, 69, 39, '3929', 'Preventivo', '0', NULL, '2 RESORGAMARA DE 24 VOLT', '16.000', '2020-02-10', NULL, NULL, '2020-07-06 17:30:57', '2020-07-06 17:30:57'),
(383, 70, 39, '666', 'Preventivo', '0', NULL, '2 DIAGRAMAS TIPO 24', '20.000', '2020-02-10', NULL, NULL, '2020-07-06 17:33:59', '2020-07-06 17:33:59'),
(384, 10, 39, '338', 'Preventivo', '0', NULL, 'CHAPA LH', '123.105', '2020-03-11', NULL, NULL, '2020-07-06 17:35:50', '2020-07-06 17:35:50'),
(385, 71, 39, '971', 'Preventivo', '0', NULL, 'VALVULA DESCARGA  Y VALVULA DESCARGUE 3/8, RACOR BUSHING B110 1/2 * 3/4', '76.060', '2020-02-25', NULL, NULL, '2020-07-06 18:19:26', '2020-07-06 18:19:26'),
(386, 69, 39, '4144', 'Preventivo', '0', NULL, '1 RESORCLUCT EXTRA Y 1 RESORCLUCHT', '10.000', '2020-02-29', NULL, NULL, '2020-07-06 18:21:54', '2020-07-06 18:21:54'),
(387, 61, 39, '7930', 'Preventivo', '0', NULL, 'JUEGO DE MANILAS NPR', '150.000', '2020-01-11', NULL, NULL, '2020-07-06 18:23:22', '2020-07-06 18:23:22'),
(388, 71, 39, '33', 'Correctivo', '0', NULL, 'CAMARA DE FRENO DOBLE T24/24', '294.500', '2020-02-26', NULL, NULL, '2020-07-06 18:25:59', '2020-07-06 18:25:59'),
(389, 59, 39, '7963', 'Correctivo', '0', NULL, 'RECTIFICADA DE CAMPANA EN TORNO (2)', '80.000', '2020-01-20', NULL, NULL, '2020-07-06 18:27:10', '2020-07-06 18:27:10'),
(390, 10, 39, '107', 'Correctivo', '0', NULL, 'COMPRA DE BARRA DIRECCION NPR-200', '414.999', '2020-01-02', NULL, NULL, '2020-07-06 18:27:46', '2020-07-06 18:27:46');
INSERT INTO `mantenimientos` (`id`, `proveedor_id`, `vehiculo_id`, `factura`, `tipo`, `km_actual`, `km_siguiente`, `descripcion`, `subtotal`, `fecha_ejecutado`, `short`, `aux`, `created_at`, `updated_at`) VALUES
(391, 2, 39, '0', 'Correctivo', '0', NULL, 'KIT DE REPARACION BOMBA DE CLUCHT PRINCIPAL Y DESMONTAJE DE BOMBA PARA REPARACION', '0', '2020-01-21', NULL, NULL, '2020-07-06 18:28:34', '2020-07-06 18:28:34'),
(392, 2, 39, '0', 'Preventivo', '0', NULL, 'JUEGO DE BANDAS TRASERAS CEPILLADA DE CAMPANAS, DESMONTE DE RUEDA TRASERA PARA CAMBIO DE BANDAS', '0', '2020-01-10', NULL, NULL, '2020-07-06 18:29:18', '2020-07-06 18:29:18'),
(393, 2, 39, '0', 'Correctivo', '0', NULL, 'BARRA DE DIRECCION Y CAMBIO DE BARRA', '0', '2020-01-06', NULL, NULL, '2020-07-06 18:29:43', '2020-07-06 18:29:43'),
(394, 2, 39, '0', 'Correctivo', '0', NULL, 'BARRA DE DIRECCION Y CAMBIO DE BARRA', '0', '2020-01-06', NULL, NULL, '2020-07-06 18:29:44', '2020-07-06 18:29:44'),
(395, 2, 39, '0', 'Preventivo', '0', NULL, 'ROTACION DE LLANTAS DELANTERAS', '0', '2020-02-06', NULL, NULL, '2020-07-06 18:30:08', '2020-07-06 18:30:08'),
(396, 2, 39, '0', 'Correctivo', '0', NULL, '2 MONTAJES DE PACHA TRASERA Y SE CAMBIO REPUESTO', '0', '2020-02-04', NULL, NULL, '2020-07-06 18:30:40', '2020-07-06 18:30:40'),
(398, 4, 39, '56490', 'Correctivo', '0', NULL, '1 ALTERNADOR 12 VOT KODIAK Y 1 POLEA DOS CANALES', '490.000', '2020-02-20', NULL, NULL, '2020-07-06 18:32:26', '2020-07-06 18:32:26'),
(399, 68, 39, '28486', 'Preventivo', '0', NULL, 'COMPRA DE TORNILLOS Y ARANDELAS', '4.120', '2020-02-20', NULL, NULL, '2020-07-06 18:33:44', '2020-07-06 18:33:44'),
(400, 2, 39, '0296', 'Preventivo', '0', NULL, 'KIR DE REPARACION DE BOMBA DE EMBRAGUE, DESMONTAJE DE BOMBA PARA REPARACION', '0', '2020-02-11', NULL, NULL, '2020-07-06 18:34:15', '2020-07-06 18:34:15'),
(401, 72, 24, '863', 'Preventivo', '0', NULL, '12 MTS DE LAZO', '9.600', '2020-02-18', NULL, NULL, '2020-07-06 18:41:52', '2020-07-06 18:41:52'),
(402, 5, 24, '0655', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 22540', '28.600', '2020-07-06', NULL, NULL, '2020-07-06 18:43:13', '2020-07-06 18:43:13'),
(403, 2, 24, '0', 'Preventivo', '0', NULL, 'instalacion de 2 correas 17375 y 1 correa 17470 (Chain) - 1 correa 22540 (bodega)', '0', '2020-02-14', NULL, NULL, '2020-07-06 18:45:30', '2020-07-06 18:45:30'),
(404, 2, 24, '0', 'Preventivo', '0', NULL, '2 BOMBILLOS 11-41 DE 24 VOLT Y CAMBIO', '0', '2020-02-06', NULL, NULL, '2020-07-06 18:47:16', '2020-07-06 18:47:16'),
(406, 11, 24, '76', 'Preventivo', '0', NULL, 'VALVULA DE PRESION, 6 LIBRAS DE GAS, 1 ACEITE 134A, MANO DE OBRA, CAMBIO DE VALVULA Y CALIBRACION DE GAS', '304.000', '2020-01-14', NULL, NULL, '2020-07-06 18:56:10', '2020-07-06 18:56:10'),
(407, 1, 25, '170', 'Correctivo', '0', NULL, 'TAPIZAR ASIENTO COJIN DEL CONDUCTOR', '90.000', '2020-04-30', NULL, NULL, '2020-07-06 18:57:27', '2020-07-06 18:57:27'),
(408, 73, 25, '22614', 'Correctivo', '0', NULL, 'CONJUNTO DE LUZ TRASERA LD', '555.162', '2020-02-27', NULL, NULL, '2020-07-06 19:00:36', '2020-07-06 19:00:36'),
(409, 6, 25, '5134', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioELEVADOR 5P 12VOLT', '7.681', '2020-07-06', NULL, NULL, '2020-07-06 19:04:27', '2020-07-06 19:04:27'),
(410, 2, 25, '0', 'Correctivo', '0', NULL, 'CORRECCION DE SEÑAL DE CORRIENTE DE BLOWER - ELEVADOR 12VOT', '0', '2020-01-14', NULL, NULL, '2020-07-06 19:05:35', '2020-07-06 19:05:35'),
(411, 25, 25, '0', 'Preventivo', '0', NULL, 'CALIBRACION DE 6 LLANTAS', '0', '2020-02-17', NULL, NULL, '2020-07-06 19:08:02', '2020-07-06 19:08:02'),
(412, 11, 25, '1252', 'Preventivo', '0', NULL, '2 SOLDADURA DE SERPENTIN LADO IZQUIERDO, 12 LIBRAS DE GAS', '178.000', '2020-02-11', NULL, NULL, '2020-07-06 19:08:58', '2020-07-06 19:08:58'),
(413, 2, 25, '0', 'Preventivo', '0', NULL, 'TENSION DE FRENO', '0', '2020-02-12', NULL, NULL, '2020-07-06 19:09:42', '2020-07-06 19:09:42'),
(414, 2, 25, '0', 'Preventivo', '0', NULL, '1 BOMBILLO H7 - 24VOLT', '0', '2020-02-06', NULL, NULL, '2020-07-06 19:10:49', '2020-07-06 19:10:49'),
(415, 2, 25, '0296', 'Preventivo', '0', NULL, 'TUBO DE SIKAFLEX MATTO Y ROTACION DE BAETERIA', '0', '2020-02-07', NULL, NULL, '2020-07-06 19:11:35', '2020-07-06 19:11:35'),
(416, 2, 23, '0', 'Preventivo', '0', NULL, 'INSTALACION DE BLOWER 24 VOLTIOS', '0', '2020-02-21', NULL, NULL, '2020-07-06 19:13:04', '2020-07-06 19:13:04'),
(417, 2, 23, '0', 'Preventivo', '0', NULL, 'GRADUACCION DE FRENOS', '0', '2020-02-20', NULL, NULL, '2020-07-06 19:13:38', '2020-07-06 19:13:38'),
(418, 2, 12, '0', 'Preventivo', '0', NULL, 'BOMBILLO Y CAMBIO H7 - 24 VOLTIOS - MTTO Y ROTACION DE BATERIA.', '0', '2020-02-20', NULL, NULL, '2020-07-06 19:14:44', '2020-07-06 19:14:44'),
(419, 2, 19, '0', 'Preventivo', '0', NULL, 'CAMBIO DE BOMBILLO H7 - 12 VOLT', '0', '2020-02-20', NULL, NULL, '2020-07-06 19:15:22', '2020-07-06 19:15:22'),
(420, 5, 23, '0655', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 17435', '17.400', '2020-07-06', NULL, NULL, '2020-07-06 19:16:17', '2020-07-06 19:16:17'),
(421, 31, 23, '7240', 'Preventivo', '0', NULL, 'LAVADO PARCIAL, COJINERIA Y TECHO', '65.000', '2020-01-22', NULL, NULL, '2020-07-06 19:17:25', '2020-07-06 19:17:25'),
(422, 2, 32, '0', 'Preventivo', '0', NULL, 'CALIBRACION DE CLUCHT Y AJUSTE DE SILLA TRASERA, 2 BOMBILLOS 158 BALLONETA 12 VT', '0', '2020-02-07', NULL, NULL, '2020-07-06 19:19:36', '2020-07-06 19:19:36'),
(423, 25, 37, '0', 'Preventivo', '0', NULL, 'ROTACION DE TODAS LAS LLANTAS', '0', '2020-02-10', NULL, NULL, '2020-07-06 19:20:45', '2020-07-06 19:20:45'),
(424, 2, 37, '0', 'Preventivo', '160.763', NULL, '2 COLGANTES Y 2 AXIALES - CAMBIO', '0', '2020-02-08', NULL, NULL, '2020-07-06 19:21:18', '2020-07-06 19:21:18'),
(425, 2, 37, '0', 'Preventivo', '0', NULL, 'BOMBILLO H4 - 12 VOLTIOS', '0', '2020-02-06', NULL, NULL, '2020-07-06 19:21:48', '2020-07-06 19:21:48'),
(426, 2, 37, '0', 'Correctivo', '0', NULL, 'CAMBIO DE ESPARRAGOS', '0', '2020-02-10', NULL, NULL, '2020-07-06 19:22:09', '2020-07-06 19:22:09'),
(427, 2, 37, '0', 'Correctivo', '0', NULL, 'POLEA CLUCHT TOYOTA - DESMONTE DE ALTERNADOR PARA REPARACION', '0', '2020-01-17', NULL, NULL, '2020-07-06 19:22:47', '2020-07-06 19:22:47'),
(429, 1, 37, '169', 'Correctivo', '0', NULL, '2 COLOMBIANAS Y 2 COLGANTES', '330.003', '2020-01-17', NULL, NULL, '2020-07-06 19:23:50', '2020-07-06 19:23:50'),
(430, 10, 31, '397', 'Correctivo', '0', NULL, 'COMPRA DE AMORTIGUADOR DELANTERO', '404.600', '2020-05-21', NULL, NULL, '2020-07-06 19:24:54', '2020-07-06 19:24:54'),
(431, 11, 31, '82', 'Correctivo', '0', NULL, 'DESMONTE DE COMPRESOR DE AIRE ACONDICIONADO PARA CAMBIO', '180.000', '2020-01-18', NULL, NULL, '2020-07-06 19:25:28', '2020-07-06 19:25:28'),
(432, 15, 33, '3669', 'Preventivo', '0', NULL, 'RECARGAD E EXTINTOR DE 10 LBS', '14.280', '2020-02-03', NULL, NULL, '2020-07-06 19:26:34', '2020-07-06 19:26:34'),
(433, 11, 11, '183', 'Preventivo', '0', NULL, 'CAMBIO DE FILTRO SECADOR / 1/4', '175.000', '2020-04-23', NULL, NULL, '2020-07-06 19:35:36', '2020-07-06 19:35:36'),
(434, 10, 11, '139', 'Preventivo', '0', NULL, 'CAJA DE COMANDO DIRECIONAL', '495.000', '2020-01-07', NULL, NULL, '2020-07-06 19:36:38', '2020-07-06 19:36:38'),
(435, 2, 11, '0', 'Preventivo', '0', NULL, '2 AMORTIGUADORES TRASEROS Y CAMBIO DE AMORTIGUADOR - TENSION DE FRENO', '0', '2020-01-29', NULL, NULL, '2020-07-06 19:37:32', '2020-07-06 19:37:32'),
(436, 2, 11, '0', 'Preventivo', '0', NULL, 'TERMINAL DE SELECTOR DE CAMBIO (BODEGA)', '0', '2020-02-10', NULL, NULL, '2020-07-06 19:38:17', '2020-07-06 19:38:17'),
(437, 2, 11, '0', 'Preventivo', '222.821', NULL, '1 BOMBILLO H4 24 VOLT - FLASHER MODULO - 1 JUEGO DE ESCOBILLAS MOTO VENTILADOR - REPARACION DE BLOWER DELANTERO', '0', '2020-01-08', NULL, NULL, '2020-07-06 19:39:12', '2020-07-06 19:39:12'),
(438, 2, 9, '0', 'Correctivo', '0', NULL, 'DESMONTE DE SILLA DE CONDUCTOR PARA REPARACION', '0', '2020-02-20', NULL, NULL, '2020-07-06 19:39:51', '2020-07-06 19:39:51'),
(439, 11, 9, '175', 'Preventivo', '0', NULL, 'DESMONTE DE COMPRESOR PARA ARREGLO Y CAMBIO DE FILTRO SECADOR', '200.000', '2020-03-31', NULL, NULL, '2020-07-06 19:40:53', '2020-07-06 19:40:53'),
(440, 11, 9, '180', 'Preventivo', '0', NULL, 'CAMBIO DE MANGUERA ALTA DE COMPRESOR', '150.000', '2020-04-16', NULL, NULL, '2020-07-06 19:41:21', '2020-07-06 19:41:21'),
(441, 23, 9, '1136', 'Preventivo', '0', NULL, 'TAPIZADO DE SILLA DEL CONDUCTOR', '180.000', '2020-05-18', NULL, NULL, '2020-07-06 22:04:00', '2020-07-06 22:04:00'),
(442, 43, 9, '359', 'Preventivo', NULL, NULL, 'REPARACION Y MANTENIMIENTO DE TURBO ALIMENTADOR HINO-500, CAMBIO DE EMPAQUETADURA Y CAMBIO DE RUEDA COMPRESORA', '750.000', '2020-05-11', NULL, NULL, '2020-07-06 22:05:11', '2020-07-06 22:05:11'),
(443, 74, 9, '2992', 'Preventivo', '0', NULL, '3 METROS DE MANGUERA 7/8 R5 Y ACOPLADA DE LA MISMA', '180.000', '2020-04-14', NULL, NULL, '2020-07-06 22:07:20', '2020-07-06 22:07:20'),
(444, 4, 9, '56574', 'Correctivo', '0', NULL, 'CAMISA', '20.000', '2020-03-01', NULL, NULL, '2020-07-06 22:08:22', '2020-07-06 22:08:22'),
(445, 2, 9, '0', 'Correctivo', '0', NULL, '1 CORREA 7P-1855 (BODEGA)', '0|', '2020-02-10', NULL, NULL, '2020-07-06 22:10:03', '2020-07-06 22:10:03'),
(446, 2, 9, '0', 'Correctivo', '0', NULL, 'BARRA DE DIRECCION CORTA Y ENGRASE (BODEGA)', '0', '2020-01-22', NULL, NULL, '2020-07-06 22:10:48', '2020-07-06 22:10:48'),
(447, 2, 9, '0296', 'Preventivo', '0', NULL, 'ENGRASE Y AJUSTE DE MUELLES', '0', '2020-01-24', NULL, NULL, '2020-07-06 22:11:08', '2020-07-06 22:11:08'),
(448, 75, 47, '0', 'Preventivo', '0', NULL, 'COMPRA DE SOAT', '1.363.550', '2020-03-13', NULL, NULL, '2020-07-06 22:14:07', '2020-07-06 22:14:07'),
(449, 76, 47, '0', 'Preventivo', '0', NULL, 'PAGO DE POLIZA TODO RIESGO', '3.824.403', '2020-03-11', NULL, NULL, '2020-07-06 22:27:26', '2020-07-06 22:27:26'),
(450, 16, 42, '1180', 'Preventivo', '0', NULL, 'INSTALACION DE BARRA ANTIVUELCO', '150.000', '2020-01-22', NULL, NULL, '2020-07-06 22:28:34', '2020-07-06 22:28:34'),
(451, 77, 34, '508', 'Correctivo', '0', NULL, 'LUNETA HILUX - ESPEJO RETROVISOR TRASERO', '320.000', '2020-04-16', NULL, NULL, '2020-07-07 00:10:41', '2020-07-07 00:10:41'),
(452, 15, 34, '3662', 'Preventivo', '0', NULL, 'RECARGA DE EXTINTOR DE 10 LIBRAS', '14.280', '2020-02-01', NULL, NULL, '2020-07-07 00:16:39', '2020-07-07 00:16:39'),
(453, 11, 35, '108', 'Preventivo', NULL, NULL, 'POLIZARIZADO 4 PUERTAS', '30.000', '2020-02-01', NULL, NULL, '2020-07-07 00:17:20', '2020-07-07 00:17:20'),
(454, 22, 35, '6438', 'Preventivo', '0', NULL, 'VULCANIZADO', '15.000', '2020-01-06', NULL, NULL, '2020-07-07 00:17:52', '2020-07-07 00:17:52'),
(455, 16, 43, '1178', 'Preventivo', '0', NULL, 'BARRA ANTIVUELCO Y BASE DE EXTINTOR', '110.000', '2020-01-21', NULL, NULL, '2020-07-07 00:19:03', '2020-07-07 00:19:03'),
(456, 17, 43, '296', 'Preventivo', '0', NULL, 'INSTALACION DE LOGOS, NUMEROS Y SEÑALIZACION EN CINTA REFLECTIVA', '200.000', '2020-01-18', NULL, NULL, '2020-07-07 00:19:50', '2020-07-07 00:19:50'),
(457, 17, 42, '296', 'Preventivo', '0', NULL, 'INSTALACION DE LOGOS, NUMEROS Y SEÑALIZACION EN CINTA REFLECTIVA', '200.000', '2020-01-18', NULL, NULL, '2020-07-07 00:20:18', '2020-07-07 00:20:18'),
(458, 15, 42, '3560', 'Preventivo', '0', NULL, 'BOTIQUIN COMPLETO, EXTINTOR DE 10 LBS, KIT DE HERRAMIENTAS COMPLETOS Y CONOS', '306.770', '2020-01-17', NULL, NULL, '2020-07-07 00:21:20', '2020-07-07 00:21:20'),
(459, 15, 43, '3560', 'Preventivo', '0', NULL, 'BOTIQUIN COMPLETO, EXTINTOR DE 10 LBS Y KIT DE HERRAMIENTAS COMPLETOS', '306.703', '2020-01-17', NULL, NULL, '2020-07-07 00:22:13', '2020-07-07 00:22:13'),
(460, 18, 43, '3046', 'Preventivo', NULL, NULL, 'PELICULA DE SEGURIDAD AL 35, LATERALES, ESTRIBOS ORIGINALES NEGROS TOYOTA-RANGER - SEGURO DE ESPEJOS EN FIBRA FORD RANGER 2020', '995.000', '2020-01-16', NULL, NULL, '2020-07-07 00:23:17', '2020-07-07 00:23:17'),
(461, 11, 41, '128', 'Preventivo', '0', NULL, 'POLARIZADO DE PANORAMICO Y TRES VENTANAS', '50.000', '2020-02-07', NULL, NULL, '2020-07-07 00:24:16', '2020-07-07 00:24:16'),
(462, 23, 41, '1108', 'Preventivo', '0', NULL, 'FABRICACION DE FORROS, TAPETES, PISO Y FORRO DE VOLANTE', '320.000', '2020-02-08', NULL, NULL, '2020-07-07 00:24:45', '2020-07-07 00:24:45'),
(463, 23, 50, '1109', 'Preventivo', '0', NULL, 'FABRICA DE FORRO, TAPETES PARA PISO Y FORRO DEL VOLANTE', '430.000', '2020-02-09', NULL, NULL, '2020-07-07 00:25:57', '2020-07-07 00:25:57'),
(464, 24, 50, '906', 'Preventivo', '0', NULL, 'CAJA DE HERRAMIENTA EN ACERO CALIBRE 18', '370.000', '2020-02-08', NULL, NULL, '2020-07-07 00:27:14', '2020-07-07 00:27:14'),
(465, 78, 53, '1823', 'Preventivo', '0', NULL, 'LAVADO GENERAL Y ENCERADO CON MAQUINA', '50.000', '2020-02-24', NULL, NULL, '2020-07-07 00:29:09', '2020-07-07 00:29:09'),
(466, 79, 46, '3302', 'Preventivo', '0', NULL, 'LIQUIDACION DE IMPUESTO DEPARTAMENTAL HASTA 2020', '894.139', '2020-01-10', NULL, NULL, '2020-07-07 00:31:37', '2020-07-07 00:31:37'),
(467, 11, 15, '96', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL Y CAMBIO DE FILTROS', '150.000', '2020-01-27', NULL, NULL, '2020-07-07 00:33:58', '2020-07-07 00:33:58'),
(468, 11, 15, '205', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:CAMBIO DE BALINERA DE AIRE ACONDICIONADO', '100.000', '2020-05-23', NULL, NULL, '2020-07-07 00:36:05', '2020-07-07 00:36:05'),
(469, 11, 39, '146', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL AIRE ACONDICIONADO', '150.000', '2020-02-19', NULL, NULL, '2020-07-07 00:37:28', '2020-07-07 00:37:28'),
(470, 11, 39, '207', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO A/C', '150.000', '2020-05-23', NULL, NULL, '2020-07-07 00:37:57', '2020-07-07 00:37:57'),
(471, 11, 21, '167', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de tapa para mtto general del A/C, evaporador nuevo del aire delantero, carga de 12 libras de gas, montaje de evaporador delantero', '598.000', '2020-03-10', NULL, NULL, '2020-07-07 00:41:04', '2020-07-07 00:41:04'),
(472, 11, 21, '214', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO Y ARREGLO DE INSTALACION DE EXTRACTORES FACT: 214', '100.000', '2020-05-11', NULL, NULL, '2020-07-07 00:41:51', '2020-07-07 00:41:51'),
(473, 45, 21, '1096', 'Preventivo', '244.249', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-04-30', NULL, NULL, '2020-07-07 00:43:02', '2020-07-07 00:43:02'),
(474, 11, 26, '190', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO A/C', '150.000', '2020-05-01', NULL, NULL, '2020-07-07 00:43:47', '2020-07-07 00:43:47'),
(475, 11, 25, '147', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL A/C', '150.000', '2020-02-24', NULL, NULL, '2020-07-07 00:44:54', '2020-07-07 00:44:54'),
(476, 45, 25, '359', 'Preventivo', '188.051', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-01-29', NULL, NULL, '2020-07-07 00:46:02', '2020-07-07 00:46:02'),
(477, 11, 23, '211', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO', '150.000', '2020-05-28', NULL, NULL, '2020-07-07 00:53:52', '2020-07-07 00:53:52'),
(478, 45, 23, '731', 'Preventivo', '187.952', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION Y BALANCEO', '68.000', '2020-02-27', NULL, NULL, '2020-07-07 00:55:31', '2020-07-07 00:55:31'),
(479, 11, 23, '150', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL A/C', '150.000', '2020-02-27', NULL, NULL, '2020-07-07 00:56:39', '2020-07-07 00:56:39'),
(480, 11, 23, '150', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DE A/C', '150.000', '2020-02-27', NULL, NULL, '2020-07-07 00:58:21', '2020-07-07 00:58:21'),
(481, 11, 23, '211', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO', '150.000', '2020-05-28', NULL, NULL, '2020-07-07 00:58:46', '2020-07-07 00:58:46'),
(482, 45, 32, '1063', 'Preventivo', '206.199', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '36.000', '2020-04-22', NULL, NULL, '2020-07-07 01:00:04', '2020-07-07 01:00:04'),
(483, 11, 32, '131', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:MTTO GENERAL A/C Y CAMBIO DE FILTRO SECADO Y FILTRO ANTIESPAL Y 2 LIBRAS DE GAS', '140.000', '2020-02-14', NULL, NULL, '2020-07-07 01:01:20', '2020-07-07 01:01:20'),
(484, 11, 37, '106', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:MTTO DE AIRE ACONDICIONADO', '90.000', '2020-02-01', NULL, NULL, '2020-07-07 01:02:21', '2020-07-07 01:02:21'),
(485, 45, 37, '111', 'Preventivo', '154.568', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION, BALANCEO Y ROTACION', '63.000', '2020-01-10', NULL, NULL, '2020-07-07 01:03:38', '2020-07-07 01:03:38'),
(486, 45, 33, '314', 'Preventivo', '251.255', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '35.000', '2020-01-27', NULL, NULL, '2020-07-07 01:06:14', '2020-07-07 01:06:14'),
(487, 45, 11, '838', 'Preventivo', '233.590', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION Y BALANCEO', '68.000', '2020-03-06', NULL, NULL, '2020-07-07 01:07:19', '2020-07-07 01:07:19'),
(488, 64, 11, '14815', 'Preventivo', '0', NULL, 'REVISION TECNICO MECANICA', '322.500', '2020-03-20', NULL, NULL, '2020-07-07 01:08:15', '2020-07-07 01:08:15'),
(489, 11, 11, '095', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL Y 5 LIBRAS DE GAS', '160.000', '2020-01-25', NULL, NULL, '2020-07-07 01:09:23', '2020-07-07 01:09:23'),
(490, 45, 9, '892', 'Preventivo', '225.810', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-03-11', NULL, NULL, '2020-07-07 01:10:21', '2020-07-07 01:10:21'),
(491, 11, 9, '94', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL Y 5 LIBRAS DE GAS', '160.000', '2020-01-25', NULL, NULL, '2020-07-07 01:11:21', '2020-07-07 01:11:21'),
(492, 45, 34, '34', 'Preventivo', '57.083', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION Y BALANCEO', '55.000', '2020-01-04', NULL, NULL, '2020-07-07 01:12:43', '2020-07-07 01:12:43'),
(493, 45, 35, '1073', 'Preventivo', '37.152', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '36.000', '2020-04-24', NULL, NULL, '2020-07-07 01:13:41', '2020-07-07 01:13:41'),
(494, 45, 31, '927', 'Preventivo', '169.066', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION Y BALANCEO', '55.000', '2020-03-13', NULL, NULL, '2020-07-07 01:14:45', '2020-07-07 01:14:45'),
(495, 11, 31, '82', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:DESMONTE DE COMPRESOR DEL AIRE ACONDICIONADO CAMBIO Y MTTO DEL SISTEMA', '180.000', '2020-01-18', NULL, NULL, '2020-07-07 01:16:13', '2020-07-07 01:16:13'),
(497, 11, 13, '210', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO', '150.000', '2020-05-26', NULL, NULL, '2020-07-07 02:50:26', '2020-07-07 02:50:26'),
(498, 2, 13, '0', 'Preventivo', '0', NULL, 'TAPA DE RADIADOR LLANTAS REENCAUCHADAS R-235 PACHA IZQUIERDA', '0', '2020-02-26', NULL, NULL, '2020-07-07 02:51:28', '2020-07-07 02:51:28'),
(499, 2, 12, '0', 'Preventivo', '0', NULL, '1 GUAYA SELECTORA, 1 TERMINAL DE SELECTOR DE CAMBIOS (BODEGA) - CAMBIO DE GUAYA Y TERMINAL', '0', '2020-02-10', NULL, NULL, '2020-07-07 02:53:49', '2020-07-07 02:53:49'),
(500, 11, 12, '151', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DE AIRE ACONDICIONADO', '150.000', '2020-02-28', NULL, NULL, '2020-07-07 02:55:53', '2020-07-07 02:55:53'),
(501, 32, 12, '497', 'Correctivo', '0', NULL, 'RELOJ DIGITAL DE INDICADORES DEL FUNCIONAMIENTO DEL MOTOR', '400.000', '2020-02-17', NULL, NULL, '2020-07-07 03:17:59', '2020-07-07 03:17:59'),
(502, 80, 12, '8', 'Preventivo', '0', NULL, 'SERVICIO DE SCANER Y PRUEBA AL SISTEMA DE COMBUSTIBLE, 4 LIMPIEZA DE PRUEBA DE INYECTORES EN BANCO DE PRUEBA', '357.000', '2020-01-16', NULL, NULL, '2020-07-07 03:23:38', '2020-07-07 03:23:38'),
(503, 45, 12, '1053', 'Preventivo', '172.735', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-04-17', NULL, NULL, '2020-07-07 03:26:05', '2020-07-07 03:26:05'),
(504, 23, 12, '1135', 'Preventivo', '0', NULL, 'TAPIZADO DE COJIN DEL CONDUCTOR', '90.000', '2020-05-15', NULL, NULL, '2020-07-07 03:26:35', '2020-07-07 03:26:35'),
(505, 11, 12, '185', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO', '100.000', '2020-04-23', NULL, NULL, '2020-07-07 03:30:34', '2020-07-07 03:30:34'),
(506, 5, 12, '0654', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 17375', '14.700', '2020-07-06', NULL, NULL, '2020-07-07 03:31:50', '2020-07-07 03:31:50'),
(507, 5, 12, '0655', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 22400', '21.200', '2020-07-06', NULL, NULL, '2020-07-07 03:32:09', '2020-07-07 03:32:09'),
(508, 2, 12, '0', 'Preventivo', '0', NULL, 'CORREA 17375 - CORREA 22400 (BODEGA) - PITO DE REVERSA Y CAMBIO DE CORREAS.', '0', '2020-03-02', NULL, NULL, '2020-07-07 03:33:25', '2020-07-07 03:33:25'),
(509, 5, 12, '0655', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 22400', '21.200', '2020-07-06', NULL, NULL, '2020-07-07 03:34:35', '2020-07-07 03:34:35'),
(510, 5, 12, '0654', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 17375', '14.700', '2020-07-06', NULL, NULL, '2020-07-07 03:34:51', '2020-07-07 03:34:51'),
(511, 81, 13, '1653', 'Preventivo', '0', NULL, 'BLOWER 24 VOLT', '220.000', '2020-05-12', NULL, NULL, '2020-07-07 03:44:00', '2020-07-07 03:44:00'),
(512, 111, 5, '1653', 'Preventivo', '0', NULL, 'COMPRA BLOWER', '220.000', '2020-05-12', NULL, NULL, '2020-07-07 03:45:21', '2021-02-04 22:08:25'),
(513, 2, 5, '0', 'Preventivo', '0', NULL, 'TERMINAL DE BRAZO DE SELECTOR DE CAMBIOS Y CAMBIO TERMINAL', '0', '2020-02-07', NULL, NULL, '2020-07-07 03:47:33', '2020-07-07 03:47:33'),
(514, 5, 5, '0655', 'Correctivo', NULL, NULL, 'Carga autoparte InventarioCORREA 22400', '21.200', '2020-07-06', NULL, NULL, '2020-07-07 03:48:36', '2020-07-07 03:48:36'),
(515, 2, 5, '0', 'Preventivo', '0', NULL, 'CORREA 22400 (BODEGA) - CORREA 17385 (CHAIN) Y CAMBIO', '0', '2020-01-27', NULL, NULL, '2020-07-07 03:49:33', '2020-07-07 03:49:33'),
(516, 2, 5, '0', 'Preventivo', '0', NULL, '1 RUTERO, 3 CINTURONES (BODEGA) INSTALACION DE RUTERO Y CINTURONES', '0', '2020-01-27', NULL, NULL, '2020-07-07 03:51:01', '2020-07-07 03:51:01'),
(517, 2, 5, '0', 'Preventivo', '0', NULL, 'ROTACION LLANTAS', '0', '2020-04-04', NULL, NULL, '2020-07-07 03:51:40', '2020-07-07 03:51:40'),
(519, 9, 16, '2378', 'Preventivo', '0', NULL, 'EMPAQUETADURA SECADOR DE AIRE K-018252', '178.500', '2020-06-02', NULL, NULL, '2020-07-08 03:40:18', '2020-07-08 03:40:18'),
(520, 9, 16, '2232', 'Preventivo', '0', NULL, 'FILTRO SECATOR ATEGO, 1 VALVULA PROTECTORA DE 4 CIRCUITOS', '597.222', '2020-05-19', NULL, NULL, '2020-07-08 03:41:06', '2020-07-08 03:41:06'),
(521, 2, 12, '0', 'Preventivo', '0', NULL, 'TENSION DE CLUCHT Y ENGRASE', '0', '2020-02-15', NULL, NULL, '2020-07-08 03:43:44', '2020-07-08 03:43:44'),
(522, 82, 5, '208', 'Correctivo', '0', NULL, 'REPARACION TECNICA PANORAMICO - VIDRIO', '100.000', '2020-02-08', NULL, NULL, '2020-07-08 03:48:15', '2020-07-08 03:48:15'),
(523, 45, 5, '899', 'Preventivo', '151.287', NULL, 'COMPRA DE 1 LLANTA GOODYEARD 235/75R17.5', '766.000', '2020-03-11', NULL, NULL, '2020-07-08 03:50:08', '2020-07-08 03:50:08'),
(524, 45, 5, '898', 'Preventivo', '151.852', NULL, 'COMPRA DE 1 LLANTA GOODYEARD 235/75R17.5', '766.000', '2020-03-11', NULL, NULL, '2020-07-08 03:51:06', '2020-07-08 03:51:06'),
(525, 8, 18, '81953', 'Preventivo', '251.345', NULL, 'BATERIA:CAMBIO DE BATERIA POR GARANTIA DE COMPRA DEL 27/04/2020 - RECIBE JAIRO RODRIGUEZ', '0', '2020-06-16', NULL, NULL, '2020-07-08 22:03:33', '2020-07-08 22:03:33'),
(526, 75, 5, '24716644', 'Preventivo', '0', NULL, 'SEGURO SOAT', '1.363.550', '2020-06-09', NULL, NULL, '2020-07-10 21:05:33', '2020-07-10 21:05:33'),
(527, 75, 12, '23517715', 'Preventivo', '0', NULL, 'SEGURO SOAT', '1.363.550', '2020-06-09', NULL, NULL, '2020-07-10 21:06:27', '2020-07-10 21:06:27'),
(528, 75, 13, '24716692', 'Preventivo', '0', NULL, 'SEGURO SOAT', '1.363.550', '2020-06-09', NULL, NULL, '2020-07-10 21:13:27', '2020-07-10 21:13:27'),
(529, 75, 14, '24716740', 'Preventivo', '0', NULL, 'SEGURO SOAT', '1.363.550', '2020-06-09', NULL, NULL, '2020-07-10 21:15:38', '2020-07-10 21:15:38'),
(530, 75, 31, '23517779', 'Preventivo', '0', NULL, 'SEGURO SOAT', '939.500', '2020-06-09', NULL, NULL, '2020-07-10 21:16:42', '2020-07-10 21:16:42'),
(531, 83, 20, '115', 'Preventivo', '0', NULL, 'SERVICIO DE RECTIFICAR ROSCA DE SPID', '23.800', '2020-06-11', NULL, NULL, '2020-07-14 00:19:54', '2020-07-14 00:19:54'),
(532, 84, 39, '3401', 'Preventivo', '0', NULL, 'REVISION TECNICOMECANICA', '322.750', '2020-06-10', NULL, NULL, '2020-07-14 00:22:44', '2020-07-14 00:22:44'),
(533, 62, 39, '167', 'Preventivo', '0', NULL, 'BOMBA DE CLUCTH PRINCIPAL Y KIT DE RESORTES', '186.000', '2020-03-09', NULL, NULL, '2020-07-14 00:23:29', '2020-07-14 00:23:29'),
(534, 62, 25, '170', 'Preventivo', '0', NULL, 'EMPAQUETADURA CLUCTH PRINCIPAL', '30.000', '2020-03-09', NULL, NULL, '2020-07-14 00:24:42', '2020-07-14 00:24:42'),
(535, 62, 39, '20', 'Preventivo', '0', NULL, 'CORREA DAYCO 17590 - CORREA 22345 - CORREA 17425', '108.000', '2020-01-17', NULL, NULL, '2020-07-14 00:26:43', '2020-07-14 00:26:43'),
(536, 62, 39, '42', 'Preventivo', '0', NULL, 'EMPAQUETADURA CLUCHT PRINCIPAL', '38.000', '2020-01-20', NULL, NULL, '2020-07-14 00:28:13', '2020-07-14 00:28:13'),
(537, 62, 39, '94', 'Preventivo', '0', NULL, 'LIQUIDO DE FRENO AT ALEMAN 1/8', '23.000', '2020-02-11', NULL, NULL, '2020-07-14 00:28:56', '2020-07-14 00:28:56'),
(538, 73, 24, '22476', 'Preventivo', '0', NULL, 'PARABRISAS MIDIBUS', '527.300', '2020-02-12', NULL, NULL, '2020-07-14 00:31:31', '2020-07-14 00:31:31'),
(539, 73, 24, '22512', 'Preventivo', '0', NULL, 'FLETE POR ENVIO DE VIDRIO', '299.999', '2020-02-17', NULL, NULL, '2020-07-14 00:32:13', '2020-07-14 00:32:13'),
(540, 62, 24, '120', 'Preventivo', '0', NULL, 'CORREA 17495 - CORREA 17375', '83.000', '2020-02-19', NULL, NULL, '2020-07-14 00:32:59', '2020-07-14 00:32:59'),
(541, 84, 9, '3177', 'Preventivo', '0', NULL, 'REVISION TECNICO MECANICA', '322.550', '2020-06-05', NULL, NULL, '2020-07-14 00:33:49', '2020-07-14 00:33:49'),
(542, 62, 9, '211', 'Preventivo', '0', NULL, 'JUEGO DE TERMINALES', '190.000', '2020-06-01', NULL, NULL, '2020-07-14 00:42:36', '2020-07-14 00:42:36'),
(543, 62, 9, '202', 'Preventivo', '0', NULL, 'BUJE MUELLE BIMETALICO, PASADOR MUELLE HINO, GRASERA, HOJA PRINCIPAL MUELLE Y HOJA MUELLE PRINCIPAL TRASERA', '1.247.000', '2020-05-20', NULL, NULL, '2020-07-14 00:55:13', '2020-07-14 00:55:13'),
(544, 62, 9, '203', 'Correctivo', '0', NULL, 'LIQUIDO DE FRENO ALEMAN, GUARDAPOLVO RUEDA, CHUPAS HINO, RETENEDOR TRASERO Y RETENEDOR DELANTERO', '360.000', '2020-05-20', NULL, NULL, '2020-07-14 00:56:19', '2020-07-14 00:56:19'),
(545, 68, 11, '35062', 'Preventivo', '0', NULL, 'TUERCA, ARANDELA Y ARANDELA PLANA', '6.480', '2020-07-04', NULL, NULL, '2020-07-14 02:35:08', '2020-07-14 02:35:08'),
(546, 62, 11, '204', 'Preventivo', '0', NULL, 'EMPAQUETADURA AUXILIAR', '148.000', '2020-05-20', NULL, NULL, '2020-07-14 02:36:04', '2020-07-14 02:36:04'),
(547, 85, 27, '8487', 'Preventivo', '0', NULL, 'MANFUERA FRENO', '48.000', '2020-06-04', NULL, NULL, '2020-07-14 02:39:31', '2020-07-14 02:39:31'),
(548, 71, 27, '1804', 'Preventivo', '0', NULL, 'DIAFRAGMA CAMARA DE FRENO', '10.000', '2020-06-04', NULL, NULL, '2020-07-14 02:40:14', '2020-07-14 02:40:14'),
(549, 5, 27, '166720', 'Preventivo', '0', NULL, 'RACOR UNION 8MM RADIPO', '10.000', '2020-06-20', NULL, NULL, '2020-07-14 02:41:04', '2020-07-14 02:41:04'),
(550, 86, 27, '129819', 'Preventivo', '0', NULL, 'TORNILLOS 5/8*7 COMPLETO', '13.000', '2020-06-20', NULL, NULL, '2020-07-14 02:43:52', '2020-07-14 02:43:52'),
(551, 62, 27, '201', 'Correctivo', '0', NULL, 'GRAPA MUELLE, HOJA PRINCIPAL MUELLE', '452.000', '2020-05-20', NULL, NULL, '2020-07-14 02:44:48', '2020-07-14 02:44:48'),
(552, 72, 12, '0779', 'Preventivo', '0', NULL, '1 CEPILLO Y 7 TORNILLOS', '6.500', '2020-06-04', NULL, NULL, '2020-07-14 02:46:07', '2020-07-14 02:46:07'),
(553, 71, 12, '1640', 'Preventivo', '0', NULL, 'TERMINAL GUAYA NPR', '44.000', '2020-05-19', NULL, NULL, '2020-07-14 02:47:00', '2020-07-14 02:47:00'),
(554, 84, 12, '3186', 'Preventivo', '0', NULL, 'REVISION TECNICOMECANICA', '322.550', '2020-06-05', NULL, NULL, '2020-07-14 02:48:33', '2020-07-14 02:48:33'),
(555, 62, 12, '223', 'Correctivo', '0', NULL, 'KIT DE CHUPAS CILINDRO, LIQUIDO DE FRENOS, RETENEDOR TRASERO, RETENEDOR DELANTERO', '360.000', '2020-06-04', NULL, NULL, '2020-07-14 02:50:17', '2020-07-14 02:50:17'),
(556, 62, 12, '214', 'Correctivo', '0', NULL, 'RETENEDOR DELANTERO Y KIT DE CHUPAS CILINDRO', '41.000', '2020-06-01', NULL, NULL, '2020-07-14 02:51:11', '2020-07-14 02:51:11'),
(557, 62, 12, '171', 'Correctivo', '0', NULL, 'RETENEDOR TRASERO', '28.000', '2020-03-09', NULL, NULL, '2020-07-14 02:51:53', '2020-07-14 02:51:53'),
(558, 87, 12, '0', 'Preventivo', '0', NULL, 'PEAJES VIAJE BGA REVISION TECNICOMECANICA', '28.200', '2020-06-01', NULL, NULL, '2020-07-14 02:54:02', '2020-07-14 02:54:02'),
(559, 89, 5, '0083', 'Correctivo', '0', NULL, 'CUADRAR PUERTA CONDUCTOR - LATONERIA PUERTA', '50.000', '2020-06-02', NULL, NULL, '2020-07-14 03:19:27', '2020-07-14 03:19:27'),
(560, 23, 5, '1140', 'Preventivo', '0', NULL, '1 Volante, material', '35.000', '2020-05-28', NULL, NULL, '2020-07-14 03:20:04', '2021-02-04 21:59:11'),
(561, 23, 5, '1140', 'Preventivo', '0', NULL, 'FORRO DE VOLANTE', '35.000', '2020-05-28', NULL, NULL, '2020-07-14 03:21:42', '2020-07-14 03:21:42'),
(562, 61, 5, '8580', 'Preventivo', '0', NULL, 'EMPASTE DISCO, BALINERA CLUTCHS, BALINERA VOLANTE Y SILICONA GREY', '305.000', '2020-05-27', NULL, NULL, '2020-07-14 03:23:04', '2020-07-14 03:23:04'),
(563, 54, 5, '7547', 'Preventivo', '0', NULL, 'LAVADO GENERAL', '88.000', '2020-03-14', NULL, NULL, '2020-07-14 03:24:13', '2020-07-14 03:24:13'),
(564, 90, 5, '553', 'Preventivo', '0', NULL, 'MTTO MODULO Y 1 VALVULA, GASOLINA Y SILICONA, BAJAR ADMISION Y CATALIZADORES, EMPAQUE DE ADMISION, MTTO INSTALACION, SCANER, REVISION Y ARREGLO DE LUCES INTERNAS, MTTO DE SENSOR, FRENO DE MANO, ARREGLO DE MOTOR, MIONAS, GRADUACION DE FRENOS, CALIBRAR REGULADOR DE AIRE', '800.000', '2020-06-03', NULL, NULL, '2020-07-14 03:48:51', '2020-07-14 03:48:51'),
(565, 90, 5, '554', 'Preventivo', '0', NULL, 'BAJAR RADIADOR E INTERFULLER PARA SONDEAR, MTTO CATALIZADORES DE GASES', '280.000', '2020-06-03', NULL, NULL, '2020-07-14 03:50:05', '2020-07-14 03:50:05'),
(566, 91, 5, '10437', 'Preventivo', '0', NULL, '1 LIMPIADOR ELECTRONICO - PARA PACHAS ELECTRONICAS', '18.000', '2020-06-01', NULL, NULL, '2020-07-14 03:52:04', '2020-07-14 03:52:04'),
(567, 84, 5, '3088', 'Preventivo', '0', NULL, 'REVISION TECNICOMECANICA', '322.550', '2020-06-03', NULL, NULL, '2020-07-14 03:59:21', '2020-07-14 03:59:21'),
(568, 73, 5, '22006', 'Preventivo', '0', NULL, 'LUZ DE POSICION ESPE RET', '66.000', '2020-06-10', NULL, NULL, '2020-07-14 04:00:04', '2020-07-14 04:00:04'),
(569, 36, 5, '6376', 'Preventivo', '0', NULL, 'SWITCH Y CAMBIO - PERA NEUTRO', '230.349', '2020-06-16', NULL, NULL, '2020-07-14 04:00:55', '2020-07-14 04:00:55'),
(570, 62, 5, '205', 'Preventivo', '0', NULL, 'CHUPAS, LIQUIDO DE FRENO ALEMAN, ESPARRAGO TRASERO, ESPARRAGO DELANTERO, GRASERA, BUJE MUELLEBIMETALICO, RETENEDOR TRASERO, RETENEDOR DELANTERO', '585.000', '2020-05-20', NULL, NULL, '2020-07-14 04:02:25', '2020-07-14 04:02:25'),
(571, 91, 13, '10453', 'Preventivo', '0', NULL, 'DOS GALONES DE REFRIGERANTE, 1 LIMPIADOR ELECTRICO, 1 JABON, 2 ABRAZADERAS, 4 FUSIBLES, 3 AMARRES Y 7 TORNILLOS GOLOZOS', '94.400', '2020-06-09', NULL, NULL, '2020-07-14 04:04:12', '2020-07-14 04:04:12'),
(572, 90, 13, '566', 'Preventivo', '0', NULL, 'SONDEAR RADIADOR, LAVAR INTERCULLER, LAVAR CATALIZADORES, UN TANQUE DE RADIADOR', '360.000', '2020-06-09', NULL, NULL, '2020-07-14 04:05:16', '2020-07-14 04:05:16'),
(573, 90, 13, '562', 'Preventivo', '0', NULL, 'MTTO DEL ARRANQUE, ARREGLO DE LUCES INTERNAS, ARREGLO DEL MOTOR DE LAS MIONAS, ARREGLO DEL CORTO DE LAS EXPLORADORAS, ARREGLO DEL FRENO DE AHOGO, CABLEADO Y ELECTRO VALVULA, APRETAR MUELLE, GRADUAR FRENO DE MANO, ADITIVO', '250.000', '2020-06-09', NULL, NULL, '2020-07-14 04:07:22', '2020-07-14 04:07:22'),
(574, 90, 13, '565', 'Preventivo', '0', NULL, 'BAJAR ADMISION CATALIZADORES EGR, MTTO DE MODULO EGR, CALIBRAR VALVULA REGULADORA DEL AIRE, EMPAQUE DE ADMISION Y DOMICILIO, MTTO DE PACHAS Y CABLEADOS, ARREGLO DEL ENCENDIDO', '800.000', '2020-06-09', NULL, NULL, '2020-07-14 04:08:58', '2020-07-14 04:08:58'),
(575, 92, 13, '1284', 'Preventivo', '0', NULL, 'MTTO A GUAYA DE FRENO DE AGUA', '40.000', '2020-06-10', NULL, NULL, '2020-07-14 04:10:31', '2020-07-14 04:10:31'),
(576, 23, 13, '1142', 'Preventivo', '0', NULL, 'ELABORACION DEL VOLANTE', '35.000', '2020-06-01', NULL, NULL, '2020-07-14 04:11:23', '2020-07-14 04:11:23'),
(577, 83, 22, '123', 'Preventivo', '0', NULL, 'FABRICACION DE UNA POLEA PARA TALLER', '71.400', '2020-06-17', NULL, NULL, '2020-07-14 04:12:47', '2020-07-14 04:12:47'),
(578, 83, 22, '124', 'Preventivo', '0', NULL, 'SERVICIO DE REACTIVACION DE BARRA CORTA DE DIRECCION', '83.300', '2020-06-17', NULL, NULL, '2020-07-14 04:13:39', '2020-07-14 04:13:39'),
(579, 56, 22, '6339', 'Preventivo', '0', NULL, 'DOS MANGUERAS DE CAUCHO Y LONA R6 - 3/8 PUL, DOS ABRAZADERAS - CREMALLERA', '32.000', '2020-06-03', NULL, NULL, '2020-07-14 04:14:47', '2020-07-14 04:14:47'),
(580, 36, 15, '6377', 'Preventivo', '0', NULL, 'UN CILINDRO DE FRENO C4 Y DOS CILINDROS DE FRENO C3 (HEMBRA Y MACHO)', '1.463.205', '2020-06-16', NULL, NULL, '2020-07-14 04:16:43', '2020-07-14 04:16:43'),
(581, 84, 15, '3545', 'Preventivo', '0', NULL, 'REVISION TECNICOMECANICA', '322.750', '2020-06-16', NULL, NULL, '2020-07-14 04:17:27', '2020-07-14 04:17:27'),
(582, 87, 15, '3649', 'Preventivo', '0', NULL, 'PEAJE', '9.700', '2020-06-16', NULL, NULL, '2020-07-14 04:18:06', '2020-07-14 04:18:06'),
(583, 93, 16, '22954', 'Preventivo', '0', NULL, 'EMPAQUE CUALITI', '15.000', '2020-06-25', NULL, NULL, '2020-07-14 04:20:06', '2020-07-14 04:20:06'),
(584, 72, 16, '0774', 'Preventivo', '0', NULL, 'DOS PEGANTES SENTISOLDA  - RADIADOR', '16.000', '2020-06-02', NULL, NULL, '2020-07-14 04:20:52', '2020-07-14 04:20:52'),
(585, 5, 16, '166460', 'Preventivo', '0', NULL, 'COMPRA DE ORRING DE NITRILO 224, 2 ORRING NITRILO 143, 2 ABRAZADERAS CREMALLERAS Y 1 ABRAZADERA CREMALLERA # 11/16 ´PUL', '15.000', '2020-06-08', NULL, NULL, '2020-07-14 04:22:10', '2020-07-14 04:22:10'),
(586, 68, 16, '29630', 'Preventivo', '0', NULL, 'COMPRA DE ARANDELAS 49 Y PLANA NEGRA', '2.430', '2020-06-05', NULL, NULL, '2020-07-14 04:22:55', '2020-07-14 04:22:55'),
(587, 94, 16, '921', 'Preventivo', '0', NULL, 'PREPARACION DE RADIADOR PARA MERCEDEZ - SONDEO Y LIMPIEZA GENERAL', '100.000', '2020-05-27', NULL, NULL, '2020-07-14 04:24:43', '2020-07-14 04:24:43'),
(588, 68, 16, '32219', 'Preventivo', '0', NULL, 'TORNILLO 1731 Y TORNILLO HEEXMM', '3.240', '2020-05-28', NULL, NULL, '2020-07-14 04:25:24', '2020-07-14 04:25:24'),
(589, 72, 16, '655', 'Preventivo', '0', NULL, '1 LITRO DE TINER', '5.500', '2020-05-22', NULL, NULL, '2020-07-14 04:25:49', '2020-07-14 04:25:49'),
(590, 9, 16, '2739', 'Preventivo', '0', NULL, 'PASTILLA DE FRENO 915 - DELANTEROS Y TRASEROS, RETENEDOR TRASERO MB, RETENEDOR DELANTERO 413, SOPORTE DE MOTOR IZQUIERDO E IZQUIERDO', '3.309.301', '2020-07-03', NULL, NULL, '2020-07-14 04:27:22', '2020-07-14 04:27:22'),
(591, 81, 16, '000', 'Correctivo', '0', NULL, 'COMPRA DE VENTILADOR', '530.000', '2020-04-27', NULL, NULL, '2020-07-14 04:28:09', '2020-07-14 04:28:09'),
(592, 95, 48, '138', 'Preventivo', '0', NULL, 'INYECTOR DEL PHI', '4.046.000', '2020-06-02', NULL, NULL, '2020-07-14 04:31:30', '2020-07-14 04:31:30'),
(593, 17, 48, '504', 'Preventivo', '0', NULL, 'SEÑALIZACION EN CINTA Y CALCOMANIAS CON VARIOS TAMAÑOS', '70.000', '2020-05-20', NULL, NULL, '2020-07-14 04:32:16', '2020-07-14 04:32:16'),
(594, 10, 48, '184', 'Preventivo', '0', NULL, 'KIT DE FILTRACCION', '373.172', '2020-01-20', NULL, NULL, '2020-07-14 04:32:56', '2020-07-14 04:32:56'),
(595, 61, 25, '8578', 'Preventivo', '0', NULL, 'DOS JUEGO DE BANDES - SILICONA GREY', '240.000', '2020-05-27', NULL, NULL, '2020-07-14 04:34:17', '2020-07-14 04:34:17'),
(596, 96, 25, NULL, 'Preventivo', NULL, NULL, 'COMPRA DE AEROSOL', '8.000', '2020-05-26', NULL, NULL, '2020-07-14 04:35:59', '2020-07-14 04:35:59'),
(597, 88, 25, NULL, 'Preventivo', '0', NULL, 'COMPRA DE GASOLINA PARA LAVAR REPUESTOS', '30.000', '2020-05-26', NULL, NULL, '2020-07-14 04:36:52', '2020-07-14 04:36:52'),
(598, 62, 25, '213', 'Preventivo', '0', NULL, 'COMPRA DE 1 TORNILLO, 2 ESPARRAGOS TRASEROS, 2 KIT DE CHUPAS CILINDRO, 1 LIQUIDO DE FRENO ALEMAN 1/4, 2 RETENEDORES TRASEROS Y 2 RETENEDORES DELANTEROS', '241.000', '2020-06-01', NULL, NULL, '2020-07-14 04:38:24', '2020-07-14 04:38:24'),
(599, 83, 21, '134', 'Preventivo', '0', NULL, 'FABRICACION DE 2 POLEAS (BODEGA)', '166.600', '2020-06-30', NULL, NULL, '2020-07-14 04:39:29', '2020-07-14 04:39:29'),
(600, 68, 21, '33091', 'Preventivo', '0', NULL, 'COMPRA DE ARANDELA DE COBRO', '2.180', '2020-06-08', NULL, NULL, '2020-07-14 04:41:38', '2020-07-14 04:41:38'),
(601, 62, 21, '212', 'Preventivo', '0', NULL, '2 AMORTIGUADORES MONROE TRASEROS', '230.000', '2020-06-01', NULL, NULL, '2020-07-14 04:43:06', '2020-07-14 04:43:06'),
(602, 2, 17, NULL, 'Preventivo', '0', NULL, 'SOLDADA DE SERPENTIN', '40.000', '2020-06-20', NULL, NULL, '2020-07-14 04:45:23', '2020-07-14 04:45:23'),
(603, 97, 19, '432', 'Correctivo', '0', NULL, 'CONJUNTO DE EMBRAGUE MERCEDEZ BENZ', '785.103', '2020-06-01', NULL, NULL, '2020-07-14 04:49:01', '2020-07-14 04:49:01'),
(604, 9, 19, '2491', 'Correctivo', '0', NULL, 'ENFRIADOR DE ACEITE', '1.010.831', '2020-06-09', NULL, NULL, '2020-07-14 04:49:38', '2020-07-14 04:49:38'),
(605, 98, 19, NULL, 'Correctivo', '0', NULL, 'COMPRA DE ALTERNADOR', '1.480.000', '2020-01-28', NULL, NULL, '2020-07-14 04:50:50', '2020-07-14 04:50:50'),
(606, 23, 14, '1139', 'Preventivo', '0', NULL, 'ELABORACION DEL FORRO DEL VOLANTE', '35.000', '2020-05-28', NULL, NULL, '2020-07-14 04:51:33', '2020-07-14 04:51:33'),
(607, 84, 14, '3544', 'Preventivo', '0', NULL, 'REVISION TECNICOMECANICA', '322.550', '2020-06-16', NULL, NULL, '2020-07-14 04:52:22', '2020-07-14 04:52:22'),
(608, 87, 14, NULL, 'Preventivo', '0', NULL, 'PEAJES REVISION', '28.200', '2020-06-19', NULL, NULL, '2020-07-14 04:53:32', '2020-07-14 04:53:32'),
(609, 36, 14, '6415', 'Preventivo', '201.818', NULL, 'DIAGNOSTICO E INSUMO', '160.900', '2020-06-19', NULL, NULL, '2020-07-14 04:54:17', '2020-07-14 04:54:17'),
(610, 91, 14, '10456', 'Preventivo', '0', NULL, '2 CORREAS 17490, 1 CORREA 17380, 1 CORREA BX37, 1 JABON, 5 BUJES DE MUELLE, 5 PASADORES, 1 LIQUIDO DE FRENOS, 7 REFRIGERANTE, 1 BALINERA Y 1 BOMBILLO', '375.400', '2020-06-17', NULL, NULL, '2020-07-14 04:56:08', '2020-07-14 04:56:08'),
(611, 99, 14, '179', 'Preventivo', '0', NULL, '1 MTTO DE PLANTA DE MOTOR Y PLANTA DEL AIRE, 3 BALINERAS, 1 TAPA RODILLO PEQUEÑO Y 1 POLEA PLANTA DEL AIRE', '380.000', '2020-06-17', NULL, NULL, '2020-07-14 04:58:20', '2020-07-14 04:58:20'),
(612, 90, 14, '570', 'Preventivo', '0', NULL, 'REVISION DE GOMETRIO DE TURBO Y PRUEBA DE SENSORES', '100.000', '2020-06-19', NULL, NULL, '2020-07-14 04:59:20', '2020-07-14 04:59:20'),
(613, 92, 14, '1801', 'Preventivo', '0', NULL, 'BAJADA DE MUELLES DELANTEROS, CAMBIO DE BUJES, GRADUADA DE FRENO DE MANO Y RUEDA', '100.000', '2020-06-17', NULL, NULL, '2020-07-14 04:59:58', '2020-07-14 04:59:58'),
(614, 90, 14, '569', 'Preventivo', '0', NULL, 'CHAPA DE BUJES, TROMPO DEL AIRE DE LA BOMBA DEL CLUCHT, DOMICILIO, EMPAQUE DE LA ADMISION, GASOLINA, SILICONA GREY, ARREGLO DE LUCES INTERNAS, CALIBRAR LIMPIAPARABRISAS, REVISION DE EXPLORADORAS, PATIN DE LA CORREA DE LA PLANTA', '305.000', '2020-06-17', NULL, NULL, '2020-07-14 05:01:34', '2020-07-14 05:01:34'),
(615, 90, 14, '568', 'Preventivo', '0', NULL, 'BAJAR ADMISION Y CATALIZADORES DE LA EGR, MTTO DE MODULO DE LA EGR, CALIBRAR VALVULA REGULADORA DE AIRE, MTTO DE PACHAS Y CABLEADO, ESCANEADA, SONDEAR Y LAVAR CATALIZADORES, RADIADORES E INTERCULLER, BAJAR BOMBA DE CLUCHT PARA CAMBIO DE CHUPAS, TROMPO, CAMBIAR LIQUIDO DE FRENO', '1.110.000', '2020-06-17', NULL, NULL, '2020-07-14 05:03:37', '2020-07-14 05:03:37'),
(616, 100, 14, '254', 'Preventivo', '0', NULL, 'PARCHE', '35.000', '2020-06-23', NULL, NULL, '2020-07-14 05:07:31', '2020-07-14 05:07:31'),
(617, 4, 14, '56891', 'Correctivo', '0', NULL, '2 BOMBILLOS 24 VT, 2 SOCKES PARA BOMBILLO, 2 PACHAS 2PT', '33.000', '2020-05-21', NULL, NULL, '2020-07-16 04:35:15', '2020-07-16 04:35:15'),
(618, 2, 14, '4567', 'Correctivo', '0', NULL, 'REPARACION DE RADIADOR, DESMONTE DE TANQUE Y SOLDAR', '80.000', '2020-04-04', NULL, NULL, '2020-07-16 04:36:10', '2020-07-16 04:36:10'),
(619, 45, 14, '1060', 'Preventivo', '196.893', NULL, 'BALANCEO', '38.000', '2020-04-21', NULL, NULL, '2020-07-16 04:36:56', '2020-07-16 04:36:56'),
(620, 2, 14, '0', 'Preventivo', '0', NULL, 'CAMBIO DE REPUESTO LADO DERECHO DE LA PARTE DE ADENTRO', '0', '2020-02-18', NULL, NULL, '2020-07-16 04:37:34', '2020-07-16 04:37:34'),
(621, 36, 5, '6376', 'Preventivo', '0', NULL, 'SWITCH - PERA NEUTRO', '230.349', '2020-06-16', NULL, NULL, '2020-07-16 04:39:55', '2020-07-16 04:39:55'),
(622, 88, 5, '37097', 'Preventivo', '0', NULL, 'GASOLINA CORRIENTE', '30.000', '2020-06-04', NULL, NULL, '2020-07-16 04:43:36', '2020-07-16 04:43:36'),
(623, 101, 44, '5399', 'Preventivo', '0', NULL, 'COMPRA DE TUERCA PERNO RUEDA Y TORNILLO CUBO RUEDA', '58.377', '2020-02-11', NULL, NULL, '2020-07-16 04:54:34', '2020-07-16 04:54:34'),
(624, 11, 28, '127', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:MTTO GENERAL DEL AIRE ACONDICIONADO Y 2 LIBRAS DE GAS', '104.000', '2020-02-08', NULL, NULL, '2020-07-16 17:21:28', '2020-07-16 17:21:28'),
(625, 11, 28, '182', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:DESMONTE DE CROCHERA PARA CALIBRACION DEL COMPRESOR DEL AIRE', '80.000', '2020-04-17', NULL, NULL, '2020-07-16 17:22:10', '2020-07-16 17:22:10'),
(626, 11, 28, '224', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:ARREGLO DE CORTO ELECTRICO DEL BLOWER Y RESISTENCIA', '80.000', '2020-06-18', NULL, NULL, '2020-07-16 17:23:03', '2020-07-16 17:23:03'),
(627, 45, 28, '1007', 'Preventivo', '242.403', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '59.000', '2020-03-19', NULL, NULL, '2020-07-16 17:24:39', '2020-07-16 17:24:39'),
(628, 102, 29, '25081', 'Preventivo', '0', NULL, 'COMPRA E INSTALACION DE AMORTIGUADORES', '400.000', '2020-03-13', NULL, NULL, '2020-07-16 17:33:54', '2020-07-16 17:33:54'),
(629, 102, 29, '25082', 'Preventivo', '0', NULL, 'ROTINF VIGO Y PRENSADO (BAJADA DE TIJERA PRENSA INFERIOR)', '140.000', '2020-03-13', NULL, NULL, '2020-07-16 17:36:34', '2020-07-16 17:36:34'),
(630, 102, 29, '25121', 'Preventivo', '0', NULL, 'BUJES TIJERA, ROT TIJERA, ROT ULA INFERIOR VIGO, MANO DE OBRA, SERVICIO DE PRENSA PRENSADO E INSTALADA', '555.000', '2020-03-19', NULL, NULL, '2020-07-16 17:38:05', '2020-07-16 17:38:05'),
(631, 59, 29, NULL, 'Preventivo', '0', NULL, 'CAMBIO DE BUJES Y ESFERICS DE TIJERAS EN PRENSA HIDRAULICA', '90.000', '2020-03-19', NULL, NULL, '2020-07-16 17:38:59', '2020-07-16 17:38:59'),
(632, 10, 29, '298', 'Preventivo', '0', NULL, 'ROTULA INFERIOR', '136.850', '2020-02-27', NULL, NULL, '2020-07-16 17:39:30', '2020-07-16 17:39:30'),
(633, 2, 29, '0', 'Preventivo', '0', NULL, '2 CINTURONES E INSTALACION', '0', '2020-02-01', NULL, NULL, '2020-07-16 17:40:01', '2020-07-16 17:40:01'),
(634, 45, 29, '1064', 'Preventivo', '0', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '36.000', '2020-04-22', NULL, NULL, '2020-07-16 17:42:17', '2020-07-16 17:42:17'),
(635, 11, 29, '84', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:CAMBIO DE SUICHE DEL AIRE ACONDICIONADO - MTTO DEL SISTEMA', '180.000', '2020-01-18', NULL, NULL, '2020-07-16 17:43:57', '2020-07-16 17:43:57'),
(636, 10, 30, '243', 'Preventivo', '0', NULL, 'BOCIN RODILLO', '189.998', '2020-02-12', NULL, NULL, '2020-07-16 17:55:01', '2020-07-16 17:55:01'),
(637, 45, 30, '29754', 'Preventivo', '263.004', NULL, 'LLANTAS:4 llantas 255/70R Goodyear, 4 montajes, 4 balanceos y 1 alineacion KM: 263004', '1.575.000', '2019-06-13', NULL, NULL, '2020-07-16 18:00:49', '2020-07-16 18:00:49'),
(638, 45, 30, '954', 'Preventivo', '311.659', NULL, 'LLANTAS:4 LLANTAS 255/70R16 GOODYEAR, 4 MONTAJES, 4 BALANCEOS Y 1 ALINEACION', '1.803.000', '2020-03-16', NULL, NULL, '2020-07-16 18:02:11', '2020-07-16 18:02:11'),
(639, 11, 30, '105', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:MTTO DEL AIRE ACONDICIONADO Y 1 LIBRA DE GAS', '90.000', '2020-02-01', NULL, NULL, '2020-07-16 18:03:50', '2020-07-16 18:03:50'),
(640, 2, 44, '0', 'Preventivo', '0', NULL, '2 RODAMIENTOS 6003 -6303, 1 JUEGO DE ESCOBILLAS, DESMONTAJE DE ALTERNADOR PARA REPARACION', '0', '2020-02-29', NULL, NULL, '2020-07-16 18:54:23', '2020-07-16 18:54:23'),
(641, 103, 44, '18758', 'Preventivo', '0', NULL, '1 EVAPORADOR Y GAS R-134', '251.000', '2020-04-24', NULL, NULL, '2020-07-16 18:58:24', '2020-07-16 18:58:24'),
(642, 10, 44, '286', 'Preventivo', '0', NULL, 'ROTULA SUPERIOR, ROTULA INFERIOR Y BUJES DE TIJERA', '863.464', '2020-02-22', NULL, NULL, '2020-07-16 18:59:20', '2020-07-16 18:59:20'),
(643, 20, 44, '72331', 'Preventivo', '0', NULL, 'REVISION TECNICO MECANICA', '224.186', '2020-02-19', NULL, NULL, '2020-07-16 19:00:29', '2020-07-16 19:00:29'),
(644, 2, 44, '0', 'Preventivo', '278.478', NULL, '4 BUJES DE TIJERA, 2 COLGANTES, 4 ESFERICAS, 2 AXIALES, 2 ASPIRALES, 2 AMORTIGUADORES, 2 BUJES DE CREMALLERA, 1 BOMBILLO H4 12 VTS, 1/4 DE HIDRAULICO, ESPARRAGOS, CAMBIO DE SUSPENSION, REPARACION DE CREMALLERA Y ENGRASE', '0', '2020-02-16', NULL, NULL, '2020-07-16 19:07:05', '2020-07-16 19:07:05'),
(645, 21, 44, '2333', 'Preventivo', '0', NULL, '2 CREMALLERAS Y SOPORTE', '80.000', '2020-02-15', NULL, NULL, '2020-07-16 19:07:56', '2020-07-16 19:07:56'),
(646, 11, 44, '134', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:MTTO GENERAL DEL AIRE ACONDICIONADO', '80.000', '2020-02-17', NULL, NULL, '2020-07-16 19:15:20', '2020-07-16 19:15:20'),
(647, 11, 44, '186', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:DESMONTE DE VILLARET PARA CAMBIO DE EVAPORADOR', '200.000', '2020-04-24', NULL, NULL, '2020-07-16 19:17:40', '2020-07-16 19:17:40'),
(648, 45, 44, '623', 'Preventivo', '278.534', NULL, 'LLANTAS:4 LLANTAS 255/70R16 GOODYEAR, 4 BALANCEOS Y 4 MONTAJES', '1.700.000', '2020-02-19', NULL, NULL, '2020-07-16 19:24:45', '2020-07-16 19:24:45'),
(649, 45, 44, '592', 'Preventivo', '278.480', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '35.000', '2020-02-17', NULL, NULL, '2020-07-16 19:29:11', '2020-07-16 19:29:11'),
(650, 11, 14, '126', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL AIRE ACONDICIONADO', '150.000', '2020-02-06', NULL, NULL, '2020-07-16 19:40:16', '2020-07-16 19:40:16'),
(651, 11, 14, '209', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO', '150.000', '2020-05-26', NULL, NULL, '2020-07-16 19:40:52', '2020-07-16 19:40:52'),
(652, 11, 11, '226', 'Preventivo', '0', NULL, 'POLARIZADO GENERAL', '120.000', '2020-06-06', NULL, NULL, '2020-07-16 19:42:41', '2020-07-16 19:42:41'),
(653, 11, 54, '227', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL AIRE ACONDICIONADO', '150.000', '2020-06-06', NULL, NULL, '2020-07-16 19:44:32', '2020-07-16 19:44:32'),
(654, 11, 15, '225', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL AIRE ACONDICIONADO', '150.000', '2020-06-06', NULL, NULL, '2020-07-16 19:47:16', '2020-07-16 19:47:16'),
(655, 11, 16, '223', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL AIRE ACONDICIONADO', '150.000', '2020-06-10', NULL, NULL, '2020-07-16 19:48:24', '2020-07-16 19:48:24'),
(656, 11, 25, '222', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL DEL AIRE ACONDICIONADO', '150.000', '2020-06-09', NULL, NULL, '2020-07-16 19:50:05', '2020-07-16 19:50:05'),
(657, 11, 27, '89', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:DESMONTE DE TAPA DEL AIRE ACONDICIONADO PARA MTTO - CAMBIO DE FILTRO SECADOR', '150.000', '2020-01-23', NULL, NULL, '2020-07-16 20:02:12', '2020-07-16 20:02:12'),
(658, 11, 27, '188', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO PREVENTIVO', '150.000', '2020-04-28', NULL, NULL, '2020-07-16 20:02:49', '2020-07-16 20:02:49'),
(659, 11, 22, '171', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MTTO GENERAL AIRE ACONDICIONADO', '150.000', '2020-03-13', NULL, NULL, '2020-07-16 21:42:39', '2020-07-16 21:42:39'),
(660, 11, 19, '179', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:ARREGLO DE AIRE TRASERO Y AIRE DELANTERO', '200.000', '2020-04-16', NULL, NULL, '2020-07-17 02:38:33', '2020-07-17 02:38:33');
INSERT INTO `mantenimientos` (`id`, `proveedor_id`, `vehiculo_id`, `factura`, `tipo`, `km_actual`, `km_siguiente`, `descripcion`, `subtotal`, `fecha_ejecutado`, `short`, `aux`, `created_at`, `updated_at`) VALUES
(661, 11, 18, '168', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:cambio de valvula de presion y 2 libras de gas', '124.000', '2020-03-10', NULL, NULL, '2020-07-17 02:40:17', '2020-07-17 02:40:17'),
(662, 11, 18, '187', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:DESMONTE DE VILLARET PARA MTTO DE AIRE DELANTERO Y DESMONTE DE AIRE TRASERO PARA MTTO', '220.000', '2020-04-27', NULL, NULL, '2020-07-17 02:41:00', '2020-07-17 02:41:00'),
(663, 10, 46, '460', 'Preventivo', '205.098', NULL, '1 Kit de filtros (filtro aire aondicionado, filtro aire motor, filtro aceite)', '124.950', '2020-06-16', NULL, NULL, '2020-09-09 17:15:43', '2020-09-09 17:15:43'),
(664, 104, 18, '1493', 'Preventivo', '0', NULL, 'SERVICIO DE GPS DEL MES DE JUNIO 2020', '38.369', '2020-09-01', NULL, NULL, '2020-09-13 00:47:31', '2020-09-13 00:47:31'),
(665, 104, 19, '1493', 'Preventivo', '0', NULL, 'SERVICIO DE GPS MES DE JUNIO', '38.369', '2020-09-01', NULL, NULL, '2020-09-13 00:49:32', '2020-09-13 00:49:32'),
(666, 104, 36, '1493', 'Preventivo', '0', NULL, 'SERVICIO DE GPS MES DE JUNIO', '38.369', '2020-09-01', NULL, NULL, '2020-09-13 00:51:05', '2020-09-13 00:51:05'),
(667, 104, 17, '1493', 'Preventivo', '0', NULL, 'SERVICIO DE GPS MES DE JUNIO', '38.369', '2020-09-01', NULL, NULL, '2020-09-13 00:53:45', '2020-09-13 00:53:45'),
(668, 104, 44, '1493', 'Preventivo', '0', NULL, 'SERVICIO DE GPS MES DE JUNIO', '38.369', '2020-09-01', NULL, NULL, '2020-09-13 00:58:12', '2020-09-13 00:58:12'),
(669, 104, 48, '1493', 'Preventivo', '0', NULL, 'SERVICIO DE GPS MES DE JUNIO', '38.369', '2020-09-01', NULL, NULL, '2020-09-13 00:59:30', '2020-09-13 00:59:30'),
(670, 104, 54, '1493', 'Preventivo', '0', NULL, 'SERVICIO DE GPS MES DE JUNIO', '38.369', '2020-09-01', NULL, NULL, '2020-09-13 01:00:39', '2020-09-13 01:00:39'),
(671, 104, 30, '1493', 'Preventivo', '0', NULL, 'SERVICIO DE GPS MES DE JUNIO', '38.369', '2020-09-01', NULL, NULL, '2020-09-13 01:02:47', '2020-09-13 01:02:47'),
(672, 104, 17, '1483', 'Preventivo', '0', NULL, 'COMPRA E INSTALACION DE GPS', '340.748', '2020-08-20', NULL, NULL, '2020-09-13 01:08:31', '2020-09-13 01:21:54'),
(673, 104, 17, '1434', 'Preventivo', '0', NULL, 'GPS MES DE JULIO', '40.000', '2020-08-20', NULL, NULL, '2020-09-13 01:09:50', '2020-09-13 01:09:50'),
(674, 104, 54, '1483', 'Preventivo', '0', NULL, 'COMPRA E INSTALACION', '340.748', '2020-08-20', NULL, NULL, '2020-09-13 01:11:54', '2020-09-13 01:16:41'),
(675, 104, 54, '1434', 'Preventivo', '0', NULL, 'SERVICIO DE GPS MES DE JULIO', '40.000', '2020-08-03', NULL, NULL, '2020-09-13 01:12:45', '2020-09-13 01:12:45'),
(676, 101, 53, '5640', 'Preventivo', '0', NULL, 'FILTRO DE COMBUSTIBLE, FILTRO DE AIRE DE MOTOR, FILTRO A/C, FILTRO DE ACEITE Y EMPAQUE TAPON CARTER', '530.807', '2020-07-18', NULL, NULL, '2020-09-13 01:39:18', '2020-09-13 01:39:18'),
(677, 15, 52, '92', 'Preventivo', '0', NULL, 'BOTIQUIN COMPLETO', '168.000', '2020-07-01', NULL, NULL, '2020-09-13 01:41:03', '2020-09-13 01:41:03'),
(678, 4, 15, '57076', 'Preventivo', '0', NULL, 'REGULADOR 5P - 24 VOLTIOS GAUSS', '120.000', '2020-06-24', NULL, NULL, '2020-09-13 02:08:29', '2020-09-13 02:08:29'),
(679, 105, 15, '3240', 'Preventivo', '0', NULL, 'ALTERNADOR MERCEDEZ TIPO BOSCH 24 VOL. 110 AMT- 2 OREJAS', '600.000', '2020-06-24', NULL, NULL, '2020-09-13 02:18:39', '2020-09-13 02:18:39'),
(680, 15, 15, '37', 'Preventivo', '0', NULL, 'RECARGA DE EXTINTOR DE 20 LBS', '23.800', '2020-05-18', NULL, NULL, '2020-09-13 02:19:34', '2020-09-13 02:19:34'),
(681, 62, 15, '243', 'Correctivo', '0', NULL, 'CHUPAS, LIQUIDO DE FRENOS 1/4, SILICONA GRIS LOCTITE, 2 RETENEDORES DELANTERO Y 2 RETENEDORES TRASEROS', '241.000', '2020-07-24', NULL, NULL, '2020-09-13 02:21:17', '2020-09-13 02:21:17'),
(682, 106, 33, '0452', 'Correctivo', '0', NULL, 'REPARACION DE CHAPA TRASERA - MTTO DE PUERTA DELATERA Y ARREGLO DE CILINDRO', '70.000', '2020-06-06', NULL, NULL, '2020-09-13 02:32:18', '2020-09-13 02:32:18'),
(683, 107, 49, '109861', 'Preventivo', '0', NULL, 'ABRAZADERA INDUSTRIAL-CHEQUE DE 3PULGADAS PLASTICO NEGRO', '57.000', '2020-07-29', NULL, NULL, '2020-09-13 02:36:18', '2020-09-13 02:36:18'),
(684, 105, 49, '0099', 'Preventivo', '0', NULL, '2 EXPLORADORAS LED RECTANGULAR MB-RJ-66', '120.000', '2020-07-28', NULL, NULL, '2020-09-13 02:37:38', '2020-09-13 02:37:38'),
(685, 11, 49, '0257', 'Correctivo', '0', NULL, 'DESMANCHE DE 2 FAROLAS DELANTERAS', '40.000', '2020-07-28', NULL, NULL, '2020-09-13 02:39:01', '2020-09-13 02:39:01'),
(686, 45, 39, '1093', 'Preventivo', '403.268', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-04-30', NULL, NULL, '2020-09-13 02:49:56', '2020-09-13 02:49:56'),
(687, 4, 39, '56699', 'Correctivo', '0', NULL, '1 RELAY, 1 PORTACARBON DE CODIAK Y 2 SUICHES DE GAPE', '64.000', '2020-03-09', NULL, NULL, '2020-09-13 02:54:22', '2020-09-13 02:54:22'),
(688, 108, 39, '12709', 'Preventivo', '0', NULL, 'CORREA DAYCO 17420 - 22435 - 1759', '95.000', '2020-06-10', NULL, NULL, '2020-09-13 03:04:46', '2020-09-13 03:04:46'),
(689, 47, 39, '2382', 'Correctivo', '0', NULL, 'CAMBIO DDE CORREAS', '50.000', '2020-06-10', NULL, NULL, '2020-09-13 03:05:46', '2020-09-13 03:05:46'),
(690, 14, 39, '1027', 'Preventivo', '404.019', NULL, 'LLANTAS:Cambio de dos llantas 215/75 R17.5 goodyear', '1.324.000', '2020-05-12', NULL, NULL, '2020-09-14 17:30:42', '2020-09-14 17:30:42'),
(691, 109, 39, '1031027', 'Preventivo', '0', NULL, 'Peajes del día 10 de junio de 2020 (Tecnicomecanica)', '28.200', '2020-06-10', NULL, NULL, '2020-09-14 17:37:39', '2020-09-14 17:37:39'),
(692, 105, 39, '0080', 'Correctivo', '0', NULL, '1 Correa', '25.000', '2020-07-24', NULL, NULL, '2020-09-14 17:43:50', '2020-09-14 17:43:50'),
(693, 51, 39, '20019', 'Preventivo', '0', NULL, 'Empaque de pacha, empaque de espuma, 1 boxer, forro polares', '148.000', '2020-07-29', NULL, NULL, '2020-09-14 17:47:05', '2020-09-14 17:47:05'),
(694, 110, 39, '1204', 'Preventivo', '0', NULL, 'Abrir y hacer llaves, mantenimiento de 5 bodegas, cerraduras y 1 baul.', '200.000', '2020-08-06', NULL, NULL, '2020-09-14 17:54:56', '2020-09-14 17:54:56'),
(695, 11, 39, '0274', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general de aire acondicionados, 4 lbs de gas', '194.000', '2020-08-11', NULL, NULL, '2020-09-14 18:01:58', '2020-09-14 18:01:58'),
(696, 11, 39, '0296', 'Correctivo', '0', NULL, 'Desmonte de compresor para cambio de rodillo y bobina, 1 extractor nuevo 12 voltios', '300.000', '2020-09-07', NULL, NULL, '2020-09-14 18:03:26', '2020-09-14 18:03:26'),
(697, 111, 9, '1755', 'Correctivo', '0', NULL, '1 Extractor 24 voltios', '280.000', '2020-08-06', NULL, NULL, '2020-09-14 18:12:50', '2020-09-14 18:12:50'),
(699, 4, 9, '56003', 'Correctivo', '0', NULL, '4 Juegos de escobillas', '20.000', '2020-01-01', NULL, NULL, '2020-09-14 18:24:22', '2020-09-14 18:24:22'),
(700, 14, 9, '709', 'Preventivo', '223.155', NULL, 'ALINEACION, BALANCEO Y ROTACION:Balanceo por cambio de dos llantas', '29.990', '2020-02-25', NULL, NULL, '2020-09-14 18:27:34', '2020-09-14 18:27:34'),
(701, 14, 9, '709', 'Preventivo', '223.155', NULL, 'LLANTAS:Cambio de 2 llantas 9.5 R17.5 Goodyear', '1.072.720', '2020-02-25', NULL, NULL, '2020-09-14 18:30:32', '2020-09-14 18:30:32'),
(702, 15, 9, '40', 'Preventivo', '0', NULL, '1 Recarga de extintor de 20 Lbs', '23.800', '2020-05-22', NULL, NULL, '2020-09-14 18:32:10', '2020-09-14 18:32:10'),
(703, 105, 9, '3331', 'Correctivo', '0', NULL, '1 Alternador mercedes T Bosch 24 voltios 100 amp 3 orej ( Alt-089-1 Referencia)', '630.000', '2020-07-08', NULL, NULL, '2020-09-14 18:36:12', '2020-09-14 18:36:12'),
(704, 11, 9, '0251', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 3 lbs de gas', '183.000', '2020-07-23', NULL, NULL, '2020-09-14 18:38:59', '2020-09-14 18:38:59'),
(705, 53, 11, '0095', 'Correctivo', '0', NULL, 'Cambio de colector planta bosch', '80.000', '2020-07-04', NULL, NULL, '2020-09-14 18:41:41', '2020-09-14 18:41:41'),
(706, 62, 11, '253', 'Correctivo', '0', NULL, '1 silicona gris loctite, 2 pasador barra estabilizadora, 1 empaquetadura auxiliar, 12 chupas hino, 6 graseras, 6 buje de muelle bimetalico, 6 pasador de muelle hino, 2 liquidos de freno AT alemán 1/4, 2 retenedores delanteros, 2 retenedore traseros', '644.000', '2020-07-06', NULL, NULL, '2020-09-14 18:44:17', '2020-09-14 18:44:17'),
(707, 11, 9, '0249', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Matenimiento general del aire acondicionado', '150.000', '2020-07-21', NULL, NULL, '2020-09-14 18:45:23', '2020-09-14 18:45:23'),
(708, 11, 30, '0228', 'Preventivo', '0', NULL, 'Carga de gas, 1/4 de aceite', '62.000', '2020-06-19', NULL, NULL, '2020-09-14 18:46:57', '2020-09-14 18:46:57'),
(709, 11, 28, '0291', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Mantenimiento del aire de cabina y calibración de gas(1 Lb)', '100.000', '2020-09-05', NULL, NULL, '2020-09-14 18:48:18', '2020-09-14 18:48:18'),
(710, 11, 29, '0270', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Mantenimiento general, 1Lb de gas', '91.000', '2020-08-10', NULL, NULL, '2020-09-14 18:49:15', '2020-09-14 18:49:15'),
(711, 32, 48, '0542', 'Correctivo', '0', NULL, '1 Instalación de inyectores y purgado del sistema de inyección, Activación, programación y calibración de marcha de inyectores, 4 arandelas inyector, 1 suministro repuesto', '624.000', '2020-06-02', NULL, NULL, '2020-09-14 18:52:45', '2020-09-14 18:52:45'),
(712, 112, 48, '6906', 'Preventivo', '0', NULL, '1 Portacarbón Ir toyota vigo', '20.000', '2020-07-09', NULL, NULL, '2020-09-14 19:13:25', '2020-09-14 19:13:25'),
(713, 113, 48, 'C1-1720', 'Correctivo', '0', NULL, 'Balinera embrague mercedes Benz', '375.000', '2020-07-10', NULL, NULL, '2020-09-14 19:16:40', '2020-09-14 19:16:40'),
(714, 97, 48, 'APS-547', 'Correctivo', '0', NULL, 'Conjunto de embrague Mercedes Benz', '785.103', '2020-07-10', NULL, NULL, '2020-09-14 19:18:04', '2020-09-14 19:18:04'),
(715, 105, 48, '0072', 'Correctivo', '0', NULL, '1 Pito de reversa, 1 borne para bateria tipo pesado, 6 bombillos tipo fusible led, 3 bombillos modelo 3 Led, 2 Bombillos balloneta, 4 bombillo contacto', '125.500', '2020-07-23', NULL, NULL, '2020-09-14 19:19:59', '2020-09-14 19:19:59'),
(716, 14, 32, '1120', 'Preventivo', '207.744', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alinación y balanceo', '75.998', '2020-05-09', NULL, NULL, '2020-09-14 19:22:10', '2020-09-14 19:22:10'),
(717, 14, 32, '1120', 'Preventivo', '207.744', NULL, 'LLANTAS:Cambio de 4 llantas 255/70 R16 Goodyear', '1.811.999', '2020-05-09', NULL, NULL, '2020-09-14 19:24:37', '2020-09-14 19:24:37'),
(718, 11, 32, '0285', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Mantenimiento del aire de cabina y calibración de gas, 1Lb de gas', '91.000', '2020-08-21', NULL, NULL, '2020-09-14 19:25:32', '2020-09-14 19:25:32'),
(719, 8, 37, '32E81038', 'Preventivo', '172.545', NULL, 'BATERIA:1 Bateria auto mac 980 amp ca 22°C', '437.000', '2020-05-05', NULL, NULL, '2020-09-14 19:51:20', '2020-09-14 19:51:20'),
(720, 14, 37, '1121', 'Preventivo', '172.864', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación y balanceo por cambio de llantas', '75.998', '2020-05-09', NULL, NULL, '2020-09-14 19:52:56', '2020-09-14 19:52:56'),
(721, 14, 37, '1121', 'Preventivo', '172.864', NULL, 'LLANTAS:cambio de 4 llantas 255/70 R16', '1.812.001', '2019-05-09', NULL, NULL, '2020-09-14 19:54:50', '2020-09-14 19:54:50'),
(722, 11, 37, '0248', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Mantenimiento general del aire acondicionado, 2 Lbs de gas 134A', '102.000', '2020-07-18', NULL, NULL, '2020-09-14 19:55:47', '2020-09-14 19:55:47'),
(723, 10, 37, '226', 'Correctivo', '0', NULL, '2 bujes de tijeras inferior grande, 2 bujes de tijeras inferior pequeño, 2 muñeco barra estabilizadora delanteros, 2 bujes barra central, 2 rotulas inferiores, 2 rotulas superiores, 2 terminales axiales, 2 terminales cortos', '1.090.006', '2020-08-15', NULL, NULL, '2020-09-14 19:57:58', '2020-09-14 19:57:58'),
(724, 104, 55, '1483', 'Preventivo', '0', NULL, 'Compra de GPS', '387.664', '2020-08-20', NULL, NULL, '2020-09-14 20:10:52', '2020-09-14 20:10:52'),
(725, 104, 55, '1483', 'Preventivo', '0', NULL, 'Instalación de GPS', '45.220', '2020-08-20', NULL, NULL, '2020-09-14 20:12:04', '2020-09-14 20:12:04'),
(726, 11, 55, '0288', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimmiento general del aire delantero, arreglo de fuga de gas, circuito electrico del ventilador, 3 Lbs de gas, 1 aceite de compresor, 1 filtro secador, 1 válvula de presión', '440.000', '2020-08-26', NULL, NULL, '2020-09-14 20:16:25', '2020-09-14 20:16:25'),
(727, 11, 17, '0269', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de villarec para mantenimiento del aire delantero y trasero, 1 lb de gas aire delantero, 1 lb de gas aire trasero.', '242.000', '2020-08-06', NULL, NULL, '2020-09-14 20:19:11', '2020-09-14 20:19:11'),
(728, 17, 17, '0612', 'Preventivo', '0', NULL, 'Instalación de adhesivos y cintas de varios tamaños para vehículo', '70.000', '2020-05-13', NULL, NULL, '2020-09-14 20:20:07', '2020-09-14 20:20:07'),
(729, 10, 17, '611', 'Correctivo', '0', NULL, '1 soporte amortiguador, 2 soporte de barra estabilizadora, 2 rotulas, 2 muñecos o templete, 2 guardapolvos', '730.660', '2020-08-11', NULL, NULL, '2020-09-14 20:21:11', '2020-09-14 20:21:11'),
(730, 32, 17, '0550', 'Correctivo', '0', NULL, '1 válvula reguladora bomba de alta presión, 1 cambio de inyectores, programación de inyectores y codificación, 1 calibración electrica de inyectores, 1 cambio de válvula de alta presión, 1 cambio de convertidor de presion parte delantera, 1 suministro de repuestos', '1.300.000', '2020-08-21', NULL, NULL, '2020-09-14 20:23:27', '2020-09-14 20:23:27'),
(731, 11, 21, '0240', 'Correctivo', '0', NULL, 'Arreglo del sistema electrico de la fusilera del aire acondicionado, 5 portafusibles, 6 metros de cable, 2 metros de termoencogibles, 10 fusibles', '200.000', '2020-07-02', NULL, NULL, '2020-09-14 20:25:25', '2020-09-21 20:57:49'),
(732, 62, 21, '256', 'Correctivo', '0', NULL, '1 correa accesorios', '85.000', '2020-07-06', NULL, NULL, '2020-09-14 20:27:16', '2020-09-14 20:27:16'),
(733, 14, 21, '1340', 'Preventivo', '248.926', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación y balanceo por cambio de 6 llantas (diagnostico)\r\nHALLAZGO: TERMINALES DE BARRA CORTA DE LA DIRECCIÓN', '59.998', '2020-06-12', NULL, NULL, '2020-09-14 20:32:45', '2020-09-23 21:07:25'),
(734, 14, 21, '1340', 'Preventivo', '248.926', NULL, 'LLANTAS:Cambio de 6 llantas 225/75 R16 Goodyear', '2.820.001', '2020-06-12', NULL, NULL, '2020-09-14 20:35:49', '2020-09-14 20:35:49'),
(735, 11, 21, '0243', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general, arreglo del blower aire acondicionado delantero', '40.000', '2020-07-17', NULL, NULL, '2020-09-14 20:39:28', '2020-09-14 20:39:28'),
(736, 62, 22, '257', 'Correctivo', '0', NULL, '1 Correa accesorios, 1 correa 17375 Dayco', '109.000', '2020-07-06', NULL, NULL, '2020-09-14 20:41:53', '2020-09-14 20:41:53'),
(737, 10, 22, '432', 'Correctivo', '0', NULL, '1 Tanque radiador', '412.000', '2020-06-04', NULL, NULL, '2020-09-14 20:42:57', '2020-09-14 20:42:57'),
(738, 10, 22, '462', 'Preventivo', '0', NULL, '1 filtro de aire acondicionado, 1 filtro de ACPM, 1 filtro de granpa y 1 filtro de aceite', '249.900', '2020-06-16', NULL, NULL, '2020-09-14 20:44:41', '2020-09-14 20:44:41'),
(739, 4, 22, '57110', 'Preventivo', '0', NULL, '1 tapa de alternador', '45.000', '2020-07-01', NULL, NULL, '2020-09-14 20:45:18', '2020-09-14 20:45:18'),
(740, 4, 22, '57149', 'Correctivo', '0', NULL, '1 Balinera B-10-50D, 1 Regulador 12 voltios- 2 cables, 1 juego de carbones', '75.000', '2020-07-06', NULL, NULL, '2020-09-14 20:46:22', '2020-09-14 20:46:22'),
(741, 11, 22, '0284', 'Correctivo', '0', NULL, 'Desmonte de compresor para arreglo de bobina, 1 clost de compresor', '280.000', '2020-08-20', NULL, NULL, '2020-09-14 20:47:48', '2020-09-14 20:47:48'),
(742, 11, 22, '0246', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 2 lbs de gas 134A', '172.000', '2020-07-18', NULL, NULL, '2020-09-14 20:48:44', '2020-09-14 20:48:44'),
(743, 14, 20, '1338', 'Preventivo', '134.932', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación y balanceo por cambio de 4 llantas', '59.998', '2020-06-12', NULL, NULL, '2020-09-14 20:50:16', '2020-09-14 20:50:16'),
(744, 14, 20, '1338', 'Preventivo', '134.932', NULL, 'LLANTAS:Cambio de 4 llantas 205/75 R16 Goodyear', '1.800.002', '2020-06-12', NULL, NULL, '2020-09-14 20:54:20', '2020-09-14 20:54:20'),
(745, 62, 20, '234', 'Correctivo', '0', NULL, '4 Chupas de freno', '20.000', '2020-06-10', NULL, NULL, '2020-09-14 20:55:12', '2020-09-14 20:55:12'),
(746, 114, 20, '1314', 'Correctivo', '0', NULL, '1 Correa 4P 940', '36.000', '2020-06-05', NULL, NULL, '2020-09-14 20:58:27', '2020-09-14 20:58:27'),
(747, 115, 20, '1516', 'Correctivo', '0', NULL, '32010 x NTN', '112.000', '2020-06-06', NULL, NULL, '2020-09-14 21:03:29', '2020-09-14 21:03:29'),
(748, 69, 20, '0-104821', 'Correctivo', '0', NULL, '2 Correas 15425', '50.000', '2020-06-05', NULL, NULL, '2020-09-14 21:06:18', '2020-09-14 21:06:18'),
(749, 4, 20, '57017', 'Correctivo', '0', NULL, '1 Retenedor, 1 juego de carbones y 1 regulador de transporte', '80.000', '2020-06-16', NULL, NULL, '2020-09-14 21:26:53', '2020-09-14 21:26:53'),
(750, 46, 20, '0259', 'Correctivo', '0', NULL, '2 Hojas de muelles y 1 kit original de bombas', '145.000', '2020-07-13', NULL, NULL, '2020-09-14 21:27:35', '2020-09-14 21:27:35'),
(751, 94, 20, '1015', 'Preventivo', '0', NULL, 'Mantenimiento del radiador, limpieza general.', '80.000', '2020-07-29', NULL, NULL, '2020-09-14 21:28:29', '2020-09-14 21:28:29'),
(752, 12, 19, '10000', 'Correctivo', '0', NULL, 'Arreglo de manija', '57.120', '2020-07-29', NULL, NULL, '2020-09-14 21:30:06', '2020-09-14 21:30:06'),
(753, 10, 19, '497', 'Correctivo', '0', NULL, '2 Amortiguadores delanteros', '547.400', '2020-06-25', NULL, NULL, '2020-09-14 21:31:01', '2020-09-14 21:31:01'),
(754, 9, 19, '3224', 'Correctivo', '0', NULL, '2 Convertidor de presión y 4 arandelas inyector 413', '682.605', '2020-08-21', NULL, NULL, '2020-09-14 21:31:54', '2020-09-14 21:31:54'),
(755, 32, 19, '0551', 'Correctivo', '0', NULL, '1 Cambio de inyector, 1 programación, codificación, calibración de caudal electrico, 1 cambio de convertidor de presión izquierdo', '100.000', '2020-08-21', NULL, NULL, '2020-09-14 21:33:22', '2020-09-14 21:33:22'),
(756, 11, 19, '0275', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de villarec para mantenimiento de aire delantero y desmonte de aire trasero para mantenimiento, 1 lb de gas delantero, 1 lb de gas trasero', '242.000', '2020-08-12', NULL, NULL, '2020-09-14 21:34:42', '2020-09-14 21:34:42'),
(757, 14, 19, '1369', 'Preventivo', '107.647', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación y balanceo por cambio de 6 llantas', '59.998', '2020-06-18', NULL, NULL, '2020-09-14 21:36:01', '2020-09-14 21:36:01'),
(758, 14, 19, '1369', 'Preventivo', '107.647', NULL, 'LLANTAS:Compra de 6 llantas 195/75 R16 carga marathon 2', '2.622.002', '2020-06-18', NULL, NULL, '2020-09-14 21:38:31', '2020-09-14 21:38:31'),
(759, 14, 19, '1457', 'Preventivo', '108.570', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación', '38.000', '2020-06-27', NULL, NULL, '2020-09-14 21:40:18', '2020-09-14 21:40:18'),
(760, 11, 54, '0292', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general de aire acondicionado, 3 lbs de gas', '195.000', '2020-09-05', NULL, NULL, '2020-09-14 21:41:44', '2020-09-14 21:41:44'),
(761, 116, 54, '0728', 'Correctivo', '0', NULL, 'Suministro e instalación de vidrio de la puerta', '250.000', '2020-08-06', NULL, NULL, '2020-09-14 21:45:03', '2020-09-14 21:45:03'),
(762, 53, 54, '0112', 'Correctivo', '0', NULL, 'Bobina de corona 24 voltios', '200.000', '2020-08-15', NULL, NULL, '2020-09-14 21:45:52', '2020-09-14 21:45:52'),
(763, 117, 5, '376', 'Correctivo', '0', NULL, '2 Tapas de cubrerotor cromada, 2 curva cromada, 2 cono ajuste manguera, 2 caño bajada PC 42cm, 2 conector inferior gris, 2 conector inferior gris, 4 anillos protección de manguera, 50 cm de manguera, 2 tuercas de 1/4 vigia, 2 ensamble de manguera y conjunto de acople split, 2 válvulas ortas split.', '311.000', '2020-03-11', NULL, NULL, '2020-09-14 21:52:17', '2020-09-14 21:52:17'),
(764, 53, 5, '0090', 'Correctivo', '0', NULL, 'bobinado de corona HINO y alternador ( bodega)', '250.000', '2020-06-05', NULL, NULL, '2020-09-14 21:53:36', '2020-09-14 21:53:36'),
(765, 36, 5, '1710006334', 'Correctivo', '0', NULL, '1 cebador de filtro GH8J', '142.318', '2020-06-09', NULL, NULL, '2020-09-14 21:55:03', '2020-09-14 21:55:03'),
(766, 109, 5, '1031059 - 1028928 - 145879', 'Correctivo', '0', NULL, 'Peajes del dia 07, 08, 09, 10 de junio de 2020', '28.200', '2020-06-10', NULL, NULL, '2020-09-14 21:57:59', '2020-09-14 21:57:59'),
(767, 4, 5, '57004', 'Correctivo', '0', NULL, '1 Balinera B-17-99D, 1 regulador bosch, 1 pacha 5 pines REG, reparación alternador', '413.400', '2020-06-12', NULL, NULL, '2020-09-14 21:59:18', '2020-09-14 21:59:18'),
(768, 10, 5, '630', 'Correctivo', '0', NULL, '2 Terminales HINO RH  LH', '428.400', '2020-08-18', NULL, NULL, '2020-09-14 22:00:11', '2020-09-14 22:00:11'),
(769, 8, 5, '32E81037', 'Preventivo', '153.318', NULL, 'BATERIA:Cambio de 2 baterias auto mac', '795.601', '2020-05-05', NULL, NULL, '2020-09-14 22:03:24', '2020-09-14 22:03:24'),
(770, 14, 5, '1286', 'Preventivo', '0', NULL, 'Reencauche 235/75 R17.5 D250', '275.000', '2020-06-06', NULL, NULL, '2020-09-14 22:05:01', '2020-09-14 22:05:01'),
(771, 11, 5, '0176', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo y cambio de blower ( Correctivo)', '100.000', '2020-04-09', NULL, NULL, '2020-09-14 22:11:06', '2020-09-14 22:11:06'),
(772, 11, 5, '0271', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento del aire acondicionado general, 3lb de gas', '183.000', '2020-08-10', NULL, NULL, '2020-09-14 22:14:29', '2020-09-14 22:14:29'),
(773, 11, 5, '0216', 'Correctivo', '0', NULL, 'Cambio de extractor y calibración de gas', '60.000', '2020-05-07', NULL, NULL, '2020-09-14 22:15:18', '2020-09-14 22:15:18'),
(774, 109, 12, '1029248 - 1028202', 'Correctivo', '0', NULL, 'Peajes', '28.200', '2020-06-06', NULL, NULL, '2020-09-15 00:10:54', '2020-09-15 00:10:54'),
(775, 10, 12, '631', 'Correctivo', '0', NULL, '2 Terminal LH y RH', '428.400', '2020-08-18', NULL, NULL, '2020-09-15 00:13:08', '2020-09-15 00:13:08'),
(776, 36, 12, '1710007156', 'Correctivo', '0', NULL, '1 Switch retroceso FC9J/ FC4J/ FD1J', '126.558', '2020-09-09', NULL, NULL, '2020-09-15 00:19:24', '2020-09-15 00:19:24'),
(777, 71, 13, '2667', 'Correctivo', '0', NULL, '2 Racor union prestolock B62 3/8* 3/8', '7.600', '2020-08-04', NULL, NULL, '2020-09-15 00:23:04', '2020-09-15 00:23:04'),
(779, 44, 14, '1075891', 'Correctivo', '0', NULL, '1 Montaje volcanizado, 1 Cambio', '28.000', '2020-07-22', NULL, NULL, '2020-09-15 00:34:34', '2020-09-15 00:34:34'),
(780, 62, 14, '280', 'Correctivo', '0', NULL, '3 Grasera, 3 pasador muelle HINO, 1 hoja muelle principal trasera', '644.000', '2020-07-28', NULL, NULL, '2020-09-15 00:35:57', '2020-09-15 00:35:57'),
(781, 62, 23, '254', 'Correctivo', '0', NULL, '1 Empaquetadura auxiliar', '24.000', '2020-07-06', NULL, NULL, '2020-09-15 00:39:30', '2020-09-15 00:39:30'),
(782, 62, 23, '268', 'Correctivo', '0', NULL, '1 Liquido de freno AT alemán 1/4, 2 retenedor trasero HINO, 2 retenedor delantero HINO, 1 tornillos, 12 chupas HINO, 1 Rodillo delantero externo', '360.000', '2020-07-15', NULL, NULL, '2020-09-15 00:41:31', '2020-09-15 00:41:31'),
(784, 61, 24, '8656', 'Correctivo', '0', NULL, '1 Juego de bandas delanteras', '120.000', '2020-06-17', NULL, NULL, '2020-09-15 00:44:32', '2020-09-15 00:44:32'),
(785, 62, 24, '244', 'Correctivo', '0', NULL, '12 Chupas freno, 1 liquido de freno AT alemán 1/4, 1 silicona gris loctite, 2 retenedor delantero HINO, 2 retenedor trasero HINO.', '197.000', '2020-06-24', NULL, NULL, '2020-09-15 00:45:59', '2020-09-15 00:45:59'),
(786, 36, 24, '1710006674', 'Correctivo', '0', NULL, '1 Switch retroceso C/C S-700', '586.198', '2020-07-14', NULL, NULL, '2020-09-15 00:47:17', '2020-09-15 00:47:17'),
(787, 94, 24, '1006', 'Correctivo', '0', NULL, '1 Reparación de radiador para HINO, cambio tingue superior en aluminio, limpieza general', '150.000', '2020-07-17', NULL, NULL, '2020-09-15 01:00:33', '2020-09-15 01:00:33'),
(788, 51, 24, '20037', 'Correctivo', '0', NULL, '1 Pito reversa', '40.000', '2020-07-30', NULL, NULL, '2020-09-15 01:02:33', '2020-09-15 01:02:33'),
(789, 62, 25, '239', 'Correctivo', '0', NULL, '1 Correa planta dayco', '56.000', '2020-06-20', NULL, NULL, '2020-09-15 01:04:12', '2020-09-15 01:04:12'),
(790, 62, 26, '270', 'Correctivo', '0', NULL, '2 Retenedores delanteros NPR/NKR, 2 retenedores traseros de NPR giratorio, 2 retenedor trasero externo de NPR, 2 Rodillo delantero interno, 1 esparragos rueda, 1 liquido de freno AT alemán 1/4, 1 silicona gris loctite, 1 chupas freno.', '409.000', '2020-07-16', NULL, NULL, '2020-09-15 01:34:40', '2020-09-15 01:34:40'),
(791, 105, 26, '0098', 'Correctivo', '0', NULL, '1 Alternador Mercedes T Bosch 24 voltios 100 amp 3 orej', '650.000', '2020-07-28', NULL, NULL, '2020-09-15 01:37:18', '2020-09-15 01:37:18'),
(792, 111, 26, '1755', 'Correctivo', '0', NULL, '1 Extractor 24 voltios', '280.000', '2020-08-06', NULL, NULL, '2020-09-15 01:37:58', '2020-09-15 01:37:58'),
(793, 118, 31, '74058', 'Correctivo', '0', NULL, 'Revisión tecnicomecánica y emisiones contaminantes', '224.186', '2020-06-11', NULL, NULL, '2020-09-15 01:46:27', '2020-09-15 01:46:27'),
(794, 8, 34, '32E81139', 'Preventivo', '274', NULL, 'BATERIA:1 Bateria auto mac silver', '302.900', '2020-05-11', NULL, NULL, '2020-09-15 02:12:20', '2020-09-15 02:12:20'),
(795, 119, 34, '0799', 'Correctivo', '0', NULL, 'Separador de plastico de cabina para la Toyota', '80.000', '2020-05-29', NULL, NULL, '2020-09-15 02:19:42', '2020-09-15 02:19:42'),
(796, 109, 34, '1840971 - 1848093 - 1028143', 'Correctivo', NULL, NULL, NULL, '25.300', NULL, NULL, NULL, '2020-09-15 02:21:42', '2020-09-15 02:21:42'),
(797, 109, 34, '1840971 - 1848093 - 1028143', 'Correctivo', '0', NULL, 'Peajes servicio Barrancabermeja a Girón', '25.300', '2020-06-06', NULL, NULL, '2020-09-15 02:23:36', '2020-09-15 02:23:36'),
(798, 4, 34, '57018', 'Correctivo', '0', NULL, '1 Polea 7PK Bosch', '95.000', '2020-06-16', NULL, NULL, '2020-09-15 02:24:41', '2020-09-15 02:24:41'),
(799, 10, 35, '461', 'Correctivo', '0', NULL, '1 Filtro de aire acondicionado, 1 filtro de aire motor, 1 filtro de aceite', '124.950', '2020-06-16', NULL, NULL, '2020-09-15 02:29:11', '2020-09-15 02:29:11'),
(800, 8, 35, '32E82404', 'Preventivo', '45.391', NULL, 'BATERIA:1 Bateria Auto Mac Gold', '393.201', '2020-07-02', NULL, NULL, '2020-09-15 02:32:15', '2020-09-15 02:32:15'),
(801, 51, 36, '19821', 'Correctivo', '0', NULL, '4 Bombillos LED, 1 sintisolda', '50.000', '2020-07-14', NULL, NULL, '2020-09-15 02:34:02', '2020-09-15 02:34:02'),
(802, 109, 42, '748660- 1836211-1843172', 'Correctivo', '0', NULL, 'Peajes viaje Barrancabermeja - Girón', '25.300', '2020-06-01', NULL, NULL, '2020-09-15 03:00:54', '2020-09-15 03:00:54'),
(803, 120, 42, '1827766', 'Correctivo', '0', NULL, 'Peajes', '41.800', '2020-06-28', NULL, NULL, '2020-09-15 03:07:36', '2020-09-15 03:07:36'),
(804, 121, 47, '51145', 'Correctivo', '0', NULL, '1 Cinta de seguridad rollo x 500 mt amarilla, 1 botiquin primeros auxilios Ecopetrol J005, 1 linterna varta recargable 5 LED VRECMINI120VF, 1 guante vaqueta tipo ING. sencillo corto', '219.774', '2020-05-21', NULL, NULL, '2020-09-15 03:26:10', '2020-09-15 03:26:10'),
(805, 109, 47, '105892-103286 -1040328 - 1039638', 'Correctivo', '0', NULL, 'Peajes de los dias 16, 29 y 30 de junio de 2020', '37.900', '2020-06-16', NULL, NULL, '2020-09-15 03:29:08', '2020-09-15 03:29:08'),
(806, 15, 47, '42', 'Correctivo', '0', NULL, '1 Kit de herramientas, 2 chalecos reflectivos', '57.120', '2020-05-27', NULL, NULL, '2020-09-15 03:30:00', '2020-09-15 03:30:00'),
(807, 73, 47, '24725', 'Correctivo', '0', NULL, '1 Flete y huacal', '129.999', '2020-09-10', NULL, NULL, '2020-09-15 03:36:05', '2020-09-15 03:36:05'),
(808, 4, 16, '56265', 'Correctivo', '0', NULL, '1 Flacher 2P, 1 switch de parqueo spark', '48.000', '2020-02-01', NULL, NULL, '2020-09-15 03:40:56', '2020-09-15 03:40:56'),
(809, 12, 16, '09999', 'Correctivo', '0', NULL, 'Manguera Mercedes', '47.600', '2020-07-29', NULL, NULL, '2020-09-15 03:42:49', '2020-09-15 03:42:49'),
(810, 12, 16, '09998', 'Correctivo', '0', NULL, 'Manguera 5/16', '28.500', '2020-07-29', NULL, NULL, '2020-09-15 03:45:03', '2020-09-15 03:45:03'),
(811, 25, 16, NULL, 'Correctivo', '0', NULL, '1 Montaje de llanta trasera izquierdo lado adentro', '0', '2020-04-20', NULL, NULL, '2020-09-15 03:47:01', '2020-09-15 03:47:01'),
(813, 23, 46, '1170', 'Correctivo', '0', NULL, 'hechura de forros delanteros y asiento trasero', '300.000', '2020-07-22', NULL, NULL, '2020-09-15 03:52:40', '2020-09-15 03:52:40'),
(814, 25, 46, '0', 'Preventivo', '204.267', NULL, '2 Montajes de llantas delantera', '0', '2020-02-21', NULL, NULL, '2020-09-15 18:27:22', '2020-09-15 20:16:25'),
(815, 25, 21, '0', 'Preventivo', '242.225', NULL, 'Calibración llanta trasera derecha adentro', '0', '2020-02-21', NULL, NULL, '2020-09-15 18:29:17', '2020-09-15 20:09:20'),
(816, 25, 37, '0', 'Preventivo', '163.873', NULL, '2 Voltear llantas delantera montajes', '0', '2020-02-22', NULL, NULL, '2020-09-15 18:34:22', '2020-09-15 20:17:05'),
(817, 25, 32, '0', 'Preventivo', '197.835', NULL, '1 Montaje llantas delantera izquierda y aire a la llanta delantera derecha', '0', '2020-02-22', NULL, NULL, '2020-09-15 18:35:42', '2020-09-15 20:24:17'),
(818, 25, 18, '0', 'Preventivo', '342.644', NULL, '1 Montaje de llanta trasera derecha adentro y 1 cambio repuesto parte de afuera del mismo lado', '0', '2020-02-22', NULL, NULL, '2020-09-15 18:40:17', '2020-09-15 20:24:40'),
(819, 25, 29, '0', 'Preventivo', '321.973', NULL, '1 Montaje llanta delantera izquierda, calibración de las 3 llantas', '0', '2020-02-23', NULL, NULL, '2020-09-15 18:41:28', '2020-09-15 20:22:14'),
(820, 25, 21, '0', 'Preventivo', '242.225', NULL, 'Cambio de repuesto llanta lado derecho adentro', '0', '2020-02-24', NULL, NULL, '2020-09-15 18:42:50', '2020-09-15 20:09:36'),
(821, 25, 54, '0', 'Preventivo', '22.0745', NULL, '4 Llantas trasera montaje, reencauchada y 2 montajes delantera', '0', '2020-02-25', NULL, NULL, '2020-09-15 18:44:21', '2020-09-15 20:22:57'),
(822, 25, 23, '0', 'Preventivo', '187.973', NULL, '1 Montaje llanta trasera derecha afuera', '0', '2020-02-25', NULL, NULL, '2020-09-15 18:45:08', '2020-09-15 20:23:26'),
(823, 25, 13, '0', 'Preventivo', '181.430', NULL, '2 Reencauche 235/75 R17 lado trasera derecha afuera', '0', '2020-02-26', NULL, NULL, '2020-09-15 18:46:55', '2020-09-15 20:20:59'),
(824, 25, 22, '0', 'Preventivo', '214.227', NULL, '1 Montaje llanta trasera derecha afuera', '0', '2020-02-26', NULL, NULL, '2020-09-15 18:48:02', '2020-09-15 20:11:45'),
(825, 25, 26, '0', 'Preventivo', '140.852', NULL, 'Calibración llanta trasera derecha afuera y delantera derecha', '0', '2020-02-27', NULL, NULL, '2020-09-15 18:50:05', '2020-09-15 20:07:39'),
(826, 25, 26, '0', 'Preventivo', '140.852', NULL, '1 Domicilio en la policlinica vulcanizada llanta delantera derecha', '0', '2020-02-28', NULL, NULL, '2020-09-15 18:53:07', '2020-09-15 20:07:59'),
(827, 25, 19, '0', 'Preventivo', '99.200', NULL, '1 Montaje de llanta trasera izquierda adentro', '0', '2020-02-28', NULL, NULL, '2020-09-15 18:54:17', '2020-09-15 20:19:12'),
(828, 25, 26, '0', 'Preventivo', '140.852', NULL, '1 Montaje de llanta lado trasera derecha adentro', '0', '2020-02-29', NULL, NULL, '2020-09-15 18:55:25', '2020-09-15 20:08:13'),
(829, 25, 17, '0', 'Preventivo', '258.127', NULL, '1 montaje de llanta lado trasera izquierda afuera', '0', '2020-02-27', NULL, NULL, '2020-09-15 18:57:21', '2020-09-15 20:21:31'),
(830, 25, 37, '0', 'Preventivo', '164.732', NULL, '2 Voltear llanta trasera y montaje lado derecho', '0', '2020-03-02', NULL, NULL, '2020-09-15 19:45:15', '2020-09-15 20:17:11'),
(831, 25, 39, '0', 'Preventivo', '397.321', NULL, '1 Montaje de llanta trasera derecha adentro', '0', '2020-03-03', NULL, NULL, '2020-09-15 19:46:33', '2020-09-15 20:17:40'),
(832, 25, 48, '0', 'Preventivo', '334.595', NULL, '1 Montaje de llanta trasera derecha adentro', '0', '2020-03-04', NULL, NULL, '2020-09-15 19:47:44', '2020-09-15 20:18:28'),
(833, 25, 39, '0', 'Preventivo', '397.321', NULL, '1 llanta de TAR-307 se le puso a la SXI-002 pacha trasera lado adentro izquierdo', '0', '2020-03-04', NULL, NULL, '2020-09-15 19:52:34', '2020-09-15 20:17:47'),
(834, 25, 5, '0', 'Preventivo', '151.040', NULL, '1 Montaje llanta delantera lado derecha', '0', '2020-03-07', NULL, NULL, '2020-09-15 19:54:18', '2020-09-15 20:15:50'),
(835, 25, 46, '0', 'Preventivo', '204.750', NULL, '1 Montaje de llantas delantera lado izquierdo', '0', '2020-03-09', NULL, NULL, '2020-09-15 19:55:17', '2020-09-15 20:16:16'),
(836, 25, 12, '0', 'Preventivo', '167.219', NULL, 'Rotación pacha trasera izquierdo', '0', '2020-03-07', NULL, NULL, '2020-09-15 20:01:17', '2020-09-15 20:14:52'),
(837, 25, 24, '0', 'Preventivo', '176.387', NULL, 'Se voltió las 2 llantas delanteras', '0', '2020-03-05', NULL, NULL, '2020-09-15 20:03:29', '2020-09-15 20:13:29'),
(838, 25, 26, '0', 'Preventivo', '141.826', NULL, '1 Montaje de llantas traseras derecha lado adentro', '0', '2020-03-06', NULL, NULL, '2020-09-15 20:04:59', '2020-09-15 20:08:24'),
(839, 25, 22, '0', 'Preventivo', '125.123', NULL, '4 Cambios de llantas  de la TAR-204 a la TAR-205 la pacha trasera izquierda', '0', '2020-03-06', NULL, NULL, '2020-09-15 20:12:44', '2020-09-15 20:12:44'),
(840, 25, 49, '0', 'Preventivo', '0', NULL, 'Calibración todas las 10 llantas', '0', '2020-03-06', NULL, NULL, '2020-09-15 20:14:28', '2020-09-15 20:14:28'),
(841, 25, 18, '0', 'Preventivo', '236.705', NULL, 'Calibración todas las 6 llantas', '0', '2020-03-09', NULL, NULL, '2020-09-15 21:42:05', '2020-09-15 21:42:05'),
(842, 25, 24, '0', 'Preventivo', '176.964', NULL, '1 Montaje de llanta trasera derecha lado afuera', '0', '2020-03-10', NULL, NULL, '2020-09-15 21:43:34', '2020-09-15 21:43:34'),
(843, 25, 16, '0', 'Preventivo', '228.905', NULL, '1 Cambio de repuesto TRH-777 por una llanta 215de la TAR-207', '0', '2020-03-10', NULL, NULL, '2020-09-15 21:47:01', '2020-09-15 21:47:01'),
(844, 25, 22, '0', 'Preventivo', '215.701', NULL, 'Calibración llanta trasera derecho adentro', '0', '2020-03-11', NULL, NULL, '2020-09-15 21:47:52', '2020-09-15 21:47:52'),
(845, 25, 22, '0', 'Preventivo', '215.751', NULL, 'Calibración llanta trasera lado izquierdo afuera', '0', '2020-03-12', NULL, NULL, '2020-09-15 21:50:35', '2020-09-15 21:50:35'),
(846, 25, 11, '0', 'Preventivo', '234.754', NULL, 'Calibración todas las 6 llantas', '0', '2020-03-12', NULL, NULL, '2020-09-15 21:51:55', '2020-09-15 21:51:55'),
(847, 25, 48, '0', 'Preventivo', '336.323', NULL, '1 Montaje llanta reencauche repuesto, 1 válvula sello matiz', '0', '2020-03-13', NULL, NULL, '2020-09-15 21:55:37', '2020-09-15 21:55:37'),
(848, 25, 19, '0', 'Preventivo', '101.736', NULL, '1 Calibración de llanta delantera izquierda', '0', '2020-03-14', NULL, NULL, '2020-09-15 21:57:18', '2020-09-15 21:57:18'),
(849, 25, 22, '0', 'Preventivo', '215.917', NULL, 'Cambio de llanta de la pacha trasera izquierda TAR-204 a la TAR-205 izquierda', '0', '2020-03-14', NULL, NULL, '2020-09-15 22:04:54', '2020-09-15 22:04:54'),
(850, 25, 18, '0', 'Preventivo', '236.705', NULL, '1 Montaje reencauche llanta trasera izquierda afuera', '0', '2020-03-14', NULL, NULL, '2020-09-15 22:06:21', '2020-09-15 22:06:21'),
(851, 25, 20, '0', 'Preventivo', '128.370', NULL, 'Calibración de ambas llantas delanteras', '0', '2020-03-16', NULL, NULL, '2020-09-15 22:07:53', '2020-09-15 22:07:53'),
(852, 25, 23, '0', 'Preventivo', '190.807', NULL, 'Se volteó las 2 llantas delanteras', '0', '2020-03-16', NULL, NULL, '2020-09-15 22:09:43', '2020-09-15 22:09:43'),
(853, 25, 16, '0', 'Preventivo', '229.942', NULL, '1 Montaje de llanta delantera izquierda', '0', '2020-03-16', NULL, NULL, '2020-09-15 22:10:29', '2020-09-15 22:10:29'),
(854, 25, 28, '0', 'Preventivo', '241.763', NULL, 'Calibración de todas las llantas', '0', '2020-03-17', NULL, NULL, '2020-09-15 22:11:36', '2020-09-15 22:11:36'),
(855, 25, 39, '0', 'Preventivo', '398.985', NULL, '1 Volteada de llanta trasera lado derecho afuera', '0', '2020-03-18', NULL, NULL, '2020-09-15 22:12:41', '2020-09-15 22:12:41'),
(856, 25, 25, '0', 'Preventivo', '194.055', NULL, 'Calibración de todas las 6 llantas', '0', '2020-03-18', NULL, NULL, '2020-09-15 22:13:43', '2020-09-15 22:13:43'),
(857, 25, 23, '0', 'Preventivo', '19.090', NULL, 'Calibración de las 2 llantas delanteras', '0', '2020-03-18', NULL, NULL, '2020-09-15 22:14:43', '2020-09-15 22:14:43'),
(858, 25, 22, '0', 'Preventivo', '216.564', NULL, '1 Montaje llanta delantera derecha, 1 Calibración llanta izquierda adentro', '0', '2020-03-18', NULL, NULL, '2020-09-15 22:15:59', '2020-09-15 22:15:59'),
(859, 25, 22, '0', 'Preventivo', '216.732', NULL, '1 Volcanizada llanta delantera izquierda', '0', '2020-03-19', NULL, NULL, '2020-09-15 22:17:04', '2020-09-15 22:17:04'),
(860, 25, 28, '0', 'Preventivo', '242.234', NULL, '1 Volteada de llanta delantera izquierda', '0', '2020-03-19', NULL, NULL, '2020-09-15 22:18:04', '2020-09-15 22:18:04'),
(861, 25, 23, '0', 'Preventivo', '191.147', NULL, 'Calibración de todas las llantas', '0', '2020-03-19', NULL, NULL, '2020-09-15 22:18:51', '2020-09-15 22:18:51'),
(862, 25, 11, '0', 'Preventivo', '236.132', NULL, '2 Montaje llantas reencauchadas pacha trasera izquierda eran de la TAR-458', '0', '2020-03-19', NULL, NULL, '2020-09-15 22:20:14', '2020-09-15 22:20:14'),
(863, 25, 5, '0', 'Preventivo', '153.368', NULL, '1 Montaje llanta delantera derecha', '0', '2020-03-21', NULL, NULL, '2020-09-15 22:21:36', '2020-09-15 22:21:36'),
(864, 25, 9, '0', 'Preventivo', '228.113', NULL, 'Calibración llanta trasera derecha adentro, 1 Montaje', '0', '2020-03-24', NULL, NULL, '2020-09-15 22:22:46', '2020-09-15 22:22:46'),
(865, 25, 25, '0', 'Preventivo', '195.960', NULL, '1 Montaje de llanta trasera derecha lado afuera adentro', '0', '2020-03-24', NULL, NULL, '2020-09-15 22:26:50', '2020-09-15 22:26:50'),
(866, 25, 24, '0', 'Preventivo', '178.919', NULL, '2 Montajes de llantas, volteada trasera izquierda', '0', '2020-03-25', NULL, NULL, '2020-09-15 22:27:38', '2020-09-15 22:27:38'),
(867, 25, 16, '0', 'Preventivo', '231.638', NULL, 'Calibración de todas las llantas', '0', '2020-03-30', NULL, NULL, '2020-09-15 22:29:25', '2020-09-15 22:29:25'),
(868, 25, 36, '0', 'Preventivo', '32.254', NULL, '1 Montaje de llanta delantera derecha', '0', '2020-03-31', NULL, NULL, '2020-09-15 22:30:41', '2020-09-15 22:30:41'),
(869, 25, 32, '0', 'Preventivo', '202.806', NULL, '1 Montaje de llanta delantera derecha y calibración de todas las llantas', '0', '2020-03-31', NULL, NULL, '2020-09-16 00:07:34', '2020-09-16 00:07:34'),
(870, 25, 36, '0', 'Preventivo', '32.254', NULL, '4 Montajes rotación de rines delanteros y la pacha trasera izquierda', '0', '2020-04-01', NULL, NULL, '2020-09-16 00:09:47', '2020-09-16 00:09:47'),
(871, 25, 54, '0', 'Preventivo', '228.492', NULL, 'Calibración de todas las llantas', '0', '2020-04-02', NULL, NULL, '2020-09-16 00:39:26', '2020-09-16 00:39:26'),
(872, 25, 16, '0', 'Preventivo', '232.117', NULL, 'Calibración de la llanta pacha trasera adentro izquierdo', '0', '2020-04-03', NULL, NULL, '2020-09-16 00:40:39', '2020-09-16 00:40:39'),
(873, 25, 16, '0', 'Preventivo', '232.117', NULL, 'Se volteó las 2 llanta delantera', '0', '2020-04-04', NULL, NULL, '2020-09-16 00:41:34', '2020-09-16 00:41:34'),
(874, 25, 23, '0', 'Preventivo', '193.256', NULL, 'Se puso repuesto a la pacha trasera izquierda afuera', '0', '2020-04-04', NULL, NULL, '2020-09-16 00:42:40', '2020-09-16 00:42:40'),
(875, 25, 26, '0', 'Preventivo', '145.345', NULL, '1 Montaje de llanta trasera derecha adentro', '0', '2020-04-05', NULL, NULL, '2020-09-16 00:43:57', '2020-09-16 00:43:57'),
(876, 25, 20, '0', 'Preventivo', '129.467', NULL, 'Calibración de todas las llantas', '0', '2020-04-06', NULL, NULL, '2020-09-16 00:45:06', '2020-09-16 00:45:06'),
(877, 25, 48, '0', 'Preventivo', '339.656', NULL, 'Calibración de todas las llantas delantera', '0', '2020-04-07', NULL, NULL, '2020-09-16 00:46:01', '2020-09-16 00:46:01'),
(878, 25, 9, '0', 'Preventivo', '229.687', NULL, '1 Montaje llanta reencauchada nueva trasera derecha adentro', '0', '2020-04-07', NULL, NULL, '2020-09-16 00:46:58', '2020-09-16 00:46:58'),
(879, 25, 22, '0', 'Preventivo', '219.391', NULL, '4 Montaje llantas nueva pacha trasera', '0', '2020-04-08', NULL, NULL, '2020-09-16 00:47:55', '2020-09-16 00:47:55'),
(880, 25, 22, '0', 'Preventivo', '219.391', NULL, '1 Volcanizado delantero derecho', '0', '2020-04-09', NULL, NULL, '2020-09-16 00:48:48', '2020-09-16 00:48:48'),
(881, 25, 36, '0', 'Preventivo', '33.836', NULL, '1 Volcanizado de la llanta delantera izquierda', '0', '2020-04-12', NULL, NULL, '2020-09-16 00:50:02', '2020-09-16 00:50:02'),
(882, 25, 48, '0', 'Preventivo', '340.353', NULL, '1 Volcanizado llanta delantera derecha', '0', '2020-04-13', NULL, NULL, '2020-09-16 00:50:48', '2020-09-16 00:50:48'),
(883, 25, 18, '0', 'Preventivo', '242.902', NULL, '4 llantas nueva, montaje de las pachas trasera y el repuesto', '0', '2020-04-14', NULL, NULL, '2020-09-16 00:51:51', '2020-09-16 00:51:51'),
(884, 25, 23, '0', 'Preventivo', '194.391', NULL, '1 Montaje llanta reencauchada trasera lado izquierdo afuera', '0', '2020-04-14', NULL, NULL, '2020-09-16 00:52:42', '2020-09-16 00:52:42'),
(885, 25, 28, '0', 'Preventivo', '245.540', NULL, '4 Calibración de todas las llantas', '0', '2020-04-15', NULL, NULL, '2020-09-16 00:54:02', '2020-09-16 00:54:02'),
(886, 25, 11, '0', 'Preventivo', '239.789', NULL, 'Rotación de las llantas delanteras', '0', '2020-04-16', NULL, NULL, '2020-09-16 00:54:59', '2020-09-16 00:54:59'),
(887, 25, 36, '0', 'Preventivo', '34.301', NULL, '1 Montaje de llanta trasera derecha lado afuera', '0', '2020-04-16', NULL, NULL, '2020-09-16 00:56:01', '2020-09-16 00:56:01'),
(888, 25, 16, '0', 'Preventivo', '233.855', NULL, 'Calibración llanta trasera izquierda adentro', '0', '2020-04-17', NULL, NULL, '2020-09-16 00:57:02', '2020-09-16 00:57:02'),
(889, 25, 12, '0', 'Preventivo', '172.773', NULL, 'Se volteó las 2 llantas delanteras', '0', '2020-04-17', NULL, NULL, '2020-09-16 00:58:15', '2020-09-16 00:58:15'),
(890, 25, 26, '0', 'Preventivo', '146.584', NULL, '1 Montaje de llanta trasera derecha lado adentro', '0', '2020-04-18', NULL, NULL, '2020-09-16 00:59:20', '2020-09-16 00:59:44'),
(891, 25, 17, '0', 'Preventivo', '264.161', NULL, '1 Montaje de llanta trasera izquierda lado adentro', '0', '2020-04-18', NULL, NULL, '2020-09-16 01:00:41', '2020-09-16 01:00:41'),
(892, 51, 18, '19183', 'Correctivo', '0', NULL, '1 Cardan de dispositivo, 8 ameres', '26.600', '2020-05-22', NULL, NULL, '2020-09-16 01:08:05', '2020-09-16 01:08:05'),
(893, 51, 20, '19183', 'Correctivo', '0', NULL, '1 Cardan de dispositivo, 8 ameres', '26.600', '2020-05-22', NULL, NULL, '2020-09-16 01:09:02', '2020-09-16 01:09:02'),
(894, 51, 19, '19183', 'Correctivo', '0', NULL, '1 Cardan de dispositivo, 9 ameres', '26.800', '2020-05-22', NULL, NULL, '2020-09-16 01:12:33', '2020-09-16 01:12:33'),
(895, 111, 13, '1673', 'Correctivo', '0', NULL, '1 Blower 24 V (350x136x133 mm)', '220.000', '2020-05-28', NULL, NULL, '2020-09-16 01:13:59', '2020-09-16 01:13:59'),
(896, 111, 5, '1673', 'Correctivo', '0', NULL, '1 Blower 24V ( 350x136x133 mm)', '220.000', '2020-05-28', NULL, NULL, '2020-09-16 02:04:42', '2020-09-16 02:04:42'),
(897, 111, 12, '1674', 'Correctivo', '0', NULL, '1 Blower doble ASPA 24V', '280.000', '2020-05-28', NULL, NULL, '2020-09-16 02:09:36', '2020-09-16 02:09:36'),
(898, 111, 14, '1674', 'Correctivo', '0', NULL, '2 Blower doble ASPA 24V', '560.000', '2020-05-28', NULL, NULL, '2020-09-16 02:10:38', '2020-09-16 02:10:38'),
(899, 111, 15, '1675', 'Correctivo', '0', NULL, '1 Extractor electro bus 11\" 24V', '280.000', '2020-05-28', NULL, NULL, '2020-09-16 02:12:46', '2020-09-16 02:12:46'),
(900, 111, 14, '1675', 'Correctivo', '0', NULL, '1 Blower doble ASPA 24V', '280.000', '2020-05-28', NULL, NULL, '2020-09-16 02:16:12', '2020-09-16 02:16:12'),
(901, 119, 35, '0822', 'Correctivo', '0', NULL, '1 Aislante de cabina para Toyota', '80.000', '2020-06-09', NULL, NULL, '2020-09-16 02:19:51', '2020-09-16 02:21:02'),
(902, 119, 37, '0822', 'Correctivo', '0', NULL, '1 Aislante de cabina para Toyota', '80.000', '2020-06-09', NULL, NULL, '2020-09-16 02:20:42', '2020-09-16 02:20:42'),
(903, 119, 42, '0822', 'Correctivo', '0', NULL, '1 Aislante de cabina para Toyota', '80.000', '2020-06-09', NULL, NULL, '2020-09-16 02:22:13', '2020-09-16 02:22:13'),
(904, 119, 31, '0822', 'Correctivo', '0', NULL, '1 Aislante de cabina para Toyota', '80.000', '2020-06-09', NULL, NULL, '2020-09-16 02:22:55', '2020-09-16 02:22:55'),
(905, 9, 19, '2659', 'Correctivo', '0', NULL, '2 Terminal axial', '141.867', '2020-06-23', NULL, NULL, '2020-09-16 02:41:14', '2020-09-16 02:41:14'),
(906, 10, 28, '459', 'Correctivo', '239.744', NULL, '1 Kit filtro (Filtro aire acondicionado, filtro aire motor, filtro ACPM, filtro aceite)', '184.450', '2020-06-16', NULL, NULL, '2020-09-16 02:43:05', '2020-09-16 02:43:05'),
(907, 9, 19, '2806', 'Correctivo', '0', NULL, '1 Tapa deposito', '68.999', '2020-07-08', NULL, NULL, '2020-09-16 02:47:44', '2020-09-16 02:47:44'),
(908, 9, 47, '2806', 'Correctivo', '0', NULL, '40 AD BLUE', '142.443', '2020-07-08', NULL, NULL, '2020-09-16 02:49:30', '2020-09-16 02:49:30'),
(909, 9, 17, '2659', 'Correctivo', '0', NULL, '1 Enfriador de aceite', '1.010.831', '2020-06-23', NULL, NULL, '2020-09-16 03:05:04', '2020-09-16 03:05:04'),
(910, 73, 5, '0000024084', 'Correctivo', '0', NULL, '2 Plumilla 32\" 302-1320', '128.401', '2020-07-06', NULL, NULL, '2020-09-16 03:09:09', '2020-09-16 03:09:09'),
(911, 73, 12, '0000024084', 'Correctivo', '0', NULL, '2 Plumilla 32\" 302-1320', '128.401', '2020-07-06', NULL, NULL, '2020-09-16 03:10:23', '2020-09-16 03:10:23'),
(912, 73, 13, '0000024084', 'Correctivo', '0', NULL, '2 Plumilla 32\" 302-1320', '128.401', '2020-07-06', NULL, NULL, '2020-09-16 03:11:31', '2020-09-16 03:11:31'),
(913, 73, 14, '0000024084', 'Correctivo', '0', NULL, '2 Plumilla 32\" 302-1320', '128.401', '2020-07-06', NULL, NULL, '2020-09-16 03:12:27', '2020-09-16 03:12:27'),
(914, 73, 23, '0000024084', 'Correctivo', '0', NULL, '2 plumilla 32\" 302-1320', '128.401', '2020-07-06', NULL, NULL, '2020-09-16 03:13:17', '2020-09-16 03:13:17'),
(915, 73, 24, '0000024084', 'Correctivo', '0', NULL, '2 Plumilla 32\" 302-1320', '128.401', '2020-07-06', NULL, NULL, '2020-09-16 03:14:19', '2020-09-16 03:14:19'),
(916, 73, 27, '0000024084', 'Correctivo', '0', NULL, '2 Plumilla 32\" 302-1320', '18.401', '2020-07-06', NULL, NULL, '2020-09-16 03:15:15', '2020-09-16 03:15:15'),
(917, 73, 26, '0000024084', 'Correctivo', '0', NULL, '2 Plumilla 32\" 302-1320', '128.401', '2020-07-06', NULL, NULL, '2020-09-16 03:16:17', '2020-09-16 03:16:17'),
(918, 111, 24, '1746', 'Correctivo', '0', NULL, '1 Blower 24V (350x136x133 mm)', '280.000', '2020-07-31', NULL, NULL, '2020-09-16 03:19:27', '2020-09-16 03:19:27'),
(919, 111, 11, '1746', 'Correctivo', '0', NULL, '1 Blower 24V (350x136x133 mm)', '280.000', '2020-07-31', NULL, NULL, '2020-09-16 03:20:26', '2020-09-16 03:20:26'),
(920, 95, 17, '144', 'Correctivo', '0', NULL, '4 Inyector delphi Mercedes Benz Sprinter 415, 515', '4.046.000', '2020-08-21', NULL, NULL, '2020-09-16 03:25:48', '2020-09-16 03:25:48'),
(921, 95, 19, '144', 'Correctivo', '0', NULL, '1 Inyector delphi Mercedes Benz Sprinter 415, 515', '1.011.500', '2020-08-21', NULL, NULL, '2020-09-16 03:27:18', '2020-09-16 03:27:18'),
(922, 75, 23, '23702407', 'Correctivo', '0', NULL, 'Pago de poliza SOAT', '1.363.550', '2020-08-19', NULL, NULL, '2020-09-16 03:35:16', '2020-09-16 03:35:16'),
(923, 75, 25, '23702437', 'Correctivo', '0', NULL, 'Pago poliza SOAT', '1.363.550', '2020-08-19', NULL, NULL, '2020-09-16 03:36:47', '2020-09-16 03:36:47'),
(924, 75, 36, '23702444', 'Correctivo', '0', NULL, 'Pago poliza SOAT', '1.363.550', '2020-08-19', NULL, NULL, '2020-09-16 03:37:49', '2020-09-16 03:37:49'),
(925, 75, 24, '23702429', 'Correctivo', '0', NULL, 'Pago poliza SOAT', '1.363.550', '2020-08-19', NULL, NULL, '2020-09-16 03:38:39', '2020-09-16 03:38:39'),
(926, 15, 18, '206', 'Correctivo', '0', NULL, '1 Recarga ABC de 10 lbs', '14.280', '2020-08-28', NULL, NULL, '2020-09-16 17:58:57', '2020-09-16 17:58:57'),
(927, 15, 36, '206', 'Correctivo', '0', NULL, '1 Recarga de 10 lbs ABC', '14.280', '2020-08-28', NULL, NULL, '2020-09-16 18:00:21', '2020-09-16 18:00:21'),
(928, 15, 14, '206', 'Correctivo', '0', NULL, '1 Recarga de 20 lbs ABC', '238.000', '2020-08-28', NULL, NULL, '2020-09-16 18:02:11', '2020-09-16 18:02:11'),
(929, 15, 19, '143', 'Correctivo', '0', NULL, '1 Linterna recargable pequeña, 1 tijeras trauma', '23.800', '2020-07-22', NULL, NULL, '2020-09-16 18:05:14', '2020-09-16 18:05:14');
INSERT INTO `mantenimientos` (`id`, `proveedor_id`, `vehiculo_id`, `factura`, `tipo`, `km_actual`, `km_siguiente`, `descripcion`, `subtotal`, `fecha_ejecutado`, `short`, `aux`, `created_at`, `updated_at`) VALUES
(930, 4, 22, '57476', 'Correctivo', '0', NULL, '1 Alternador 12VT', '600.000', '2020-08-20', NULL, NULL, '2020-09-16 18:06:42', '2020-09-16 18:06:42'),
(931, 4, 54, '57448', 'Correctivo', '0', NULL, '2 Balinera 6304', '38.000', '2020-08-15', NULL, NULL, '2020-09-16 18:07:48', '2020-09-16 18:07:48'),
(932, 104, 18, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:10:51', '2020-09-16 18:10:51'),
(933, 104, 19, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:11:30', '2020-09-16 18:11:30'),
(934, 104, 36, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:12:12', '2020-09-16 18:12:12'),
(935, 104, 17, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:13:11', '2020-09-16 18:13:11'),
(936, 104, 44, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:14:06', '2020-09-16 18:14:06'),
(937, 104, 30, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:15:18', '2020-09-16 18:15:18'),
(938, 104, 48, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:16:00', '2020-09-16 18:16:00'),
(939, 104, 54, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:17:02', '2020-09-16 18:17:02'),
(940, 104, 55, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:17:40', '2020-09-16 18:17:40'),
(941, 104, 33, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:18:25', '2020-09-16 18:18:25'),
(942, 104, 20, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:19:15', '2020-09-16 18:19:15'),
(943, 104, 34, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:19:53', '2020-09-16 18:19:53'),
(944, 104, 35, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:21:15', '2020-09-16 18:21:15'),
(945, 104, 38, '1496', 'Preventivo', '0', NULL, 'GPS mes de Agosto', '40.000', '2020-09-02', NULL, NULL, '2020-09-16 18:21:59', '2020-09-16 18:21:59'),
(946, 122, 17, '844', 'Correctivo', '0', NULL, '4 Reparación y calibración de inyectores en el banco de pruebas con kit de repuestos y empaquetadura completa', '2.142.000', '2020-08-12', NULL, NULL, '2020-09-16 18:33:04', '2020-09-16 18:33:04'),
(947, 62, 32, '319', 'Correctivo', '0', NULL, '3 Grasera, 2 pasador muelle hino, 3 buje muelle bimetalico', '96.000', '2020-08-29', NULL, NULL, '2020-09-16 18:38:41', '2020-09-16 18:38:41'),
(948, 62, 39, '317', 'Correctivo', '0', NULL, '1 Manguera cluth auxiliar, 1 empaquetadura auxiliar', '54.000', '2020-08-28', NULL, NULL, '2020-09-16 18:41:11', '2020-09-16 18:41:11'),
(949, 62, 12, '313', 'Correctivo', '0', NULL, '1 Esparrago trasero, 1 tuercas perno', '68.000', '2020-08-24', NULL, NULL, '2020-09-16 18:47:22', '2020-09-16 18:47:22'),
(950, 62, 54, '300', 'Correctivo', '0', NULL, '2 Retenedor delantero NPR/NKR, 1 liquido freno DOT3 1/4, 1 silicona gris loctite, 2 retenedor trasero NKR, 2 retenedor trasero externo de NPR, 6 kit chupas cilindro, 1 correa plata DAYCO', '240.000', '2020-08-19', NULL, NULL, '2020-09-16 18:51:29', '2020-09-16 18:51:29'),
(951, 62, 14, '301', 'Correctivo', '0', NULL, '1 Rodillo trasero japones', '176.000', '2020-08-19', NULL, NULL, '2020-09-16 18:53:34', '2020-09-16 18:53:34'),
(952, 62, 17, '299', 'Correctivo', '0', NULL, '4 buje barra estabilizadora', '20.000', '2020-08-19', NULL, NULL, '2020-09-16 18:55:00', '2020-09-16 18:55:00'),
(953, 62, 21, '298', 'Correctivo', '0', NULL, '1 correa', '100.000', '2020-08-19', NULL, NULL, '2020-09-16 18:56:01', '2020-09-16 18:56:01'),
(954, 62, 14, '293', 'Correctivo', '0', NULL, '1 Esparrago trasero, 12 chupas HINO, 1 tornillos, 1 Liquido freno DOT3 1/4, 1 Silicona gris loctite, 2 retenedor delantero HINO, 2 retenedor trasero HINO', '298.000', '2020-08-11', NULL, NULL, '2020-09-16 18:59:09', '2020-09-16 18:59:09'),
(958, 62, 18, '267', 'Correctivo', '0', NULL, '2 Buje muelle', '64.000', '2020-07-15', NULL, NULL, '2020-09-16 19:14:48', '2020-09-16 19:14:48'),
(959, 123, 23, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '243.456', '2020-08-15', NULL, NULL, '2020-09-16 19:42:17', '2020-09-16 19:53:05'),
(960, 123, 24, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '243.456', '2020-08-15', NULL, NULL, '2020-09-16 19:47:55', '2020-09-16 19:47:55'),
(961, 123, 25, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '243.456', '2020-08-15', NULL, NULL, '2020-09-16 19:50:50', '2020-09-16 19:52:12'),
(962, 123, 26, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '218.229', '2020-08-15', NULL, NULL, '2020-09-16 19:51:46', '2020-09-16 19:51:46'),
(963, 123, 5, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '334.482', '2020-08-15', NULL, NULL, '2020-09-16 19:54:06', '2020-09-16 19:54:06'),
(964, 123, 12, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '273.670', '2020-08-15', NULL, NULL, '2020-09-16 19:55:15', '2020-09-16 19:55:15'),
(965, 123, 13, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '273.670', '2020-08-15', NULL, NULL, '2020-09-16 19:56:41', '2020-09-16 19:56:41'),
(966, 123, 14, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '273.670', '2020-08-15', NULL, NULL, '2020-09-16 19:57:34', '2020-09-16 19:57:34'),
(967, 123, 27, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '293.407', '2020-08-15', NULL, NULL, '2020-09-16 19:58:51', '2020-09-16 19:58:51'),
(968, 123, 18, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '242.674', '2020-08-15', NULL, NULL, '2020-09-16 19:59:34', '2020-09-16 19:59:34'),
(969, 123, 19, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '369.066', '2020-08-15', NULL, NULL, '2020-09-16 20:00:59', '2020-09-16 20:00:59'),
(970, 123, 20, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '137.197', '2020-08-15', NULL, NULL, '2020-09-16 20:02:23', '2020-09-16 20:02:23'),
(971, 123, 17, '0', 'Preventivo', '0', NULL, 'Póliza de seguro tipo colectiva', '423.437', '2020-08-15', NULL, NULL, '2020-09-16 20:04:02', '2020-09-16 20:04:02'),
(972, 62, 12, '318', 'Correctivo', '0', NULL, '1 Tornillo centro', '7.000', '2020-08-28', NULL, NULL, '2020-09-16 20:10:16', '2020-09-16 20:10:16'),
(973, 51, 43, '20497', 'Preventivo', '0', NULL, '1 Pito de reversa', '25.000', '2020-09-03', NULL, NULL, '2020-09-16 20:11:38', '2021-02-03 17:49:14'),
(974, 124, 12, '6117', 'Correctivo', '0', NULL, '2 Válvulas carro', '10.000', '2020-08-25', NULL, NULL, '2020-09-16 20:18:00', '2020-09-16 20:18:00'),
(975, 51, 14, '20362', 'Correctivo', '0', NULL, '1 Rubbing cera, 2 stips', '49.000', '2020-08-26', NULL, NULL, '2020-09-16 20:25:26', '2020-09-16 20:25:26'),
(976, 105, 32, '3383', 'Correctivo', '0', NULL, '5 Bombillo balloneta 12 Voltios y 24 Voltios', '10.000', '2020-08-08', NULL, NULL, '2020-09-16 20:27:44', '2020-09-16 20:27:44'),
(977, 105, 48, '0144', 'Correctivo', '0', NULL, '1 Switch 2 golpes POLLAK autoreversible', '38.000', '2020-08-06', NULL, NULL, '2020-09-16 20:31:05', '2020-09-16 20:31:05'),
(978, 125, 25, '0079', 'Correctivo', '0', NULL, 'Restaurada de las dos defensas delanteras y trasera, pintado de espejos retrovisores', '250.000', '2020-06-26', NULL, NULL, '2020-09-16 20:49:40', '2020-09-16 20:51:40'),
(979, 125, 13, '0080', 'Correctivo', '0', NULL, 'Arreglo defensa delantera y brazos retrovisores y pintado', '150.000', '2020-06-26', NULL, NULL, '2020-09-16 20:51:04', '2020-09-16 20:51:04'),
(980, 126, 13, '4763', 'Correctivo', '0', NULL, 'Soldar hoja', '50.000', '2020-08-20', NULL, NULL, '2020-09-16 20:54:12', '2020-09-16 20:54:12'),
(981, 69, 12, '080', 'Correctivo', '0', NULL, '4 Arandelas de 1\", 2 abrazaderas de 5/8', '7.000', '2020-08-05', NULL, NULL, '2020-09-16 21:31:10', '2020-09-16 21:31:10'),
(982, 62, 12, '287', 'Correctivo', '0', NULL, '1 Hoja principal muelle', '492.000', '2020-08-05', NULL, NULL, '2020-09-16 21:32:38', '2020-09-16 21:32:38'),
(983, 33, 24, '0275932', 'Preventivo', '0', NULL, 'Impuestos', '14.618', '2020-08-03', NULL, NULL, '2020-09-16 21:37:41', '2020-09-16 21:37:41'),
(984, 5, 13, '167567', 'Correctivo', '0', NULL, '1 Correa automotriz 22395', '35.000', '2020-07-25', NULL, NULL, '2020-09-16 21:39:18', '2020-09-16 21:39:18'),
(985, 119, 30, '0913', 'Correctivo', '0', NULL, '1 Aislante de cabina transparente para Toyota', '80.000', '2020-08-28', NULL, NULL, '2020-09-16 21:47:41', '2020-09-17 21:41:55'),
(986, 127, 39, '0705', 'Correctivo', '0', NULL, '4 Metros manguera tubing aire', '22.000', '2020-08-28', NULL, NULL, '2020-09-16 22:04:01', '2020-09-16 22:04:01'),
(987, 68, 39, 'CU34699', 'Correctivo', '0', NULL, '6 Tornillos HEX GR8, 6 wasa negra de 3/8\", 6 arandela plana espec. zinc 3/8, 1 macho A/Carbón 3 PZ 3/8', '18.260', '2020-08-27', NULL, NULL, '2020-09-16 22:07:15', '2020-09-16 22:07:15'),
(988, 100, 5, '16715', 'Correctivo', '0', NULL, '2 Válvula V205', '10.000', '2020-08-28', NULL, NULL, '2020-09-16 22:11:06', '2020-09-16 22:11:06'),
(989, 2, 48, '0', 'Correctivo', '0', NULL, 'Arreglo de chapa puerta trasera', '20.000', '2020-07-27', NULL, NULL, '2020-09-16 22:17:15', '2020-09-16 22:17:15'),
(990, 128, 32, '5322', 'Correctivo', '0', NULL, 'Pastilla Toyota Forwell 8776', '90.000', '2020-08-25', NULL, NULL, '2020-09-16 22:24:57', '2020-09-16 22:24:57'),
(991, 94, 19, '1033', 'Correctivo', '0', NULL, '1 Reparación de radiador para Mercedes Sprinter', '70.000', '2020-08-25', NULL, NULL, '2020-09-16 22:27:31', '2020-09-16 22:27:31'),
(992, 51, 55, '20272', 'Correctivo', '0', NULL, '2 Bombilla 67 LED', '20.000', '2020-08-21', NULL, NULL, '2020-09-16 22:30:36', '2020-09-16 22:30:36'),
(993, 85, 16, '0-12135', 'Correctivo', '0', NULL, '3 M R2 3/8, 2 Capsula R2 3/8, 2 ACO mach 3/8*3/4  ( Manguera hidraulica)', '50.000', '2020-08-21', NULL, NULL, '2020-09-17 00:11:31', '2020-09-17 00:11:31'),
(994, 124, 12, '0', 'Correctivo', '0', NULL, '1 Repuesto 1 Accesorios ( Válvulas montallanta)', '16.000', '2020-08-24', NULL, NULL, '2020-09-17 00:14:25', '2020-09-17 00:14:25'),
(995, 51, 19, '20315', 'Correctivo', '0', NULL, '2 Bombilla LED 1141', '24.000', '2020-08-24', NULL, NULL, '2020-09-17 00:17:05', '2020-09-17 00:17:05'),
(996, 120, 42, '1593957', 'Correctivo', '0', NULL, 'Peajes: Zambito, Bicentenario, Aguas negras, El Korán, Siberia, Caiquero. Servicio de Impala Barrancabermeja - Bogotá', '106.200', '2020-07-17', NULL, NULL, '2020-09-17 00:28:48', '2020-09-17 00:28:48'),
(997, 10, 17, '645', 'Correctivo', NULL, NULL, '2 Amortiguador delantero', '489.999', '2020-08-26', NULL, NULL, '2020-09-17 00:31:01', '2020-09-17 00:31:01'),
(998, 51, 39, '20106', 'Correctivo', '0', NULL, '12 metros de empaque puerta, 6 metros de empaque puerta, 1 boxer grande', '202.000', '2020-08-05', NULL, NULL, '2020-09-17 01:09:57', '2020-09-17 01:09:57'),
(999, 51, 17, 'REMISIÓN', 'Correctivo', '0', NULL, 'Restaurador partes negras, silicona, 4 bombillos tecla, juego de tapetes para piso', '123.000', '2020-09-09', NULL, NULL, '2020-09-17 01:13:55', '2020-09-17 01:13:55'),
(1000, 62, 14, '342', 'Correctivo', '0', NULL, '3 Grasera, 3 pasador muelle, 3 buje muelle bimetalico', '114.000', '2020-09-11', NULL, NULL, '2020-09-17 02:22:52', '2020-09-17 02:22:52'),
(1001, 62, 48, '340', 'Correctivo', '0', NULL, '1 Caucho centro chevrolet NPR Spicer', '25.000', '2020-09-11', NULL, NULL, '2020-09-17 02:23:51', '2020-09-17 02:23:51'),
(1002, 62, 15, '343', 'Correctivo', '0', NULL, '4 Tornillo centro, 8 buje muelle bimetalico, 4 pasador muelle', '244.000', '2020-09-11', NULL, NULL, '2020-09-17 02:25:37', '2020-09-17 02:25:37'),
(1003, 62, 39, '345', 'Correctivo', '0', NULL, '1 Silicona gris loctite, 1 retenedor trasero de NPR giratorio, 2 hoja muelle principal', '628.000', '2020-09-11', NULL, NULL, '2020-09-17 02:27:48', '2020-09-17 02:27:48'),
(1004, 83, 13, '165', 'Correctivo', NULL, NULL, NULL, '95.200', NULL, NULL, NULL, '2020-09-17 20:19:33', '2020-09-17 20:19:33'),
(1005, 83, 13, '165', 'Correctivo', '0', NULL, 'Fabricación de polea', '95.200', '2020-08-03', NULL, NULL, '2020-09-17 20:21:42', '2020-09-17 20:21:42'),
(1006, 10, 18, '613', 'Correctivo', '0', NULL, '2 Amortiguador delantero', '511.700', '2020-08-11', NULL, NULL, '2020-09-17 20:29:06', '2020-09-17 20:29:06'),
(1007, 10, 18, '565', 'Correctivo', '0', NULL, '2 Rótula esférica, 2 soporte amortiguador, 2 tope amortiguador, 2 guardapolvo amortiguador', '706.860', '2020-07-28', NULL, NULL, '2020-09-17 20:31:26', '2020-09-17 20:31:26'),
(1008, 51, 18, '19647', 'Correctivo', '0', NULL, '1 Lampara lateral', '12.000', '2020-07-03', NULL, NULL, '2020-09-17 20:46:38', '2020-09-17 20:53:45'),
(1009, 120, 42, '1863592', 'Correctivo', '0', NULL, '4 Peajes Aguas negras y Zambito, servicio Impala Bogotá los dias 26 y 27 de agosto', '21.800', '2020-08-26', NULL, NULL, '2020-09-17 21:47:00', '2020-09-17 22:00:38'),
(1010, 109, 42, '00638602', 'Correctivo', NULL, NULL, '2 Peaje El korán los dias 26 y 27 de agosto', '26.600', '2020-08-26', NULL, NULL, '2020-09-17 21:52:21', '2020-09-17 22:00:51'),
(1011, 129, 42, '0', 'Correctivo', '0', NULL, '4 Peajes, servicio Impala Bogotá', '40.000', '2020-08-26', NULL, NULL, '2020-09-17 21:59:34', '2020-09-17 21:59:34'),
(1012, 130, 53, '396', 'Correctivo', '0', NULL, '1 KIXX ATF 1/4', '20.000', '2020-09-11', NULL, NULL, '2020-09-18 00:28:22', '2020-09-18 00:28:22'),
(1013, 130, 53, '397', 'Correctivo', '0', NULL, '1 TIXX ATF', '20.000', '2020-09-11', NULL, NULL, '2020-09-18 00:28:58', '2020-09-18 00:28:58'),
(1014, 14, 15, '1084', 'Preventivo', '303.526', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación', '38.000', '2020-04-28', NULL, NULL, '2020-09-22 02:21:34', '2020-09-22 02:21:34'),
(1015, 14, 15, '00', 'Preventivo', '315.264', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación por garantia de los 30 dias. Hallazgo: Cambiar pines o splinderes de tren delantero, cambiar rodamiento delantero derecho y engrasar el izquierdo', '0', '2020-08-26', NULL, NULL, '2020-09-22 02:23:25', '2020-09-22 02:23:25'),
(1016, 14, 9, '0', 'Preventivo', '230.740', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación por garantia de 30 dias', '0', '2020-04-17', NULL, NULL, '2020-09-22 03:31:49', '2020-09-22 03:31:49'),
(1017, 14, 9, '0', 'Preventivo', '248.196', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación por garantia de 30 dias', '0', '2020-08-15', NULL, NULL, '2020-09-22 03:41:00', '2020-09-22 03:41:00'),
(1018, 14, 9, '2163', 'Preventivo', '252.267', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR ROTACIÓN DE LLANTAS', '38.000', '2020-09-09', NULL, NULL, '2020-09-22 19:13:40', '2020-09-22 19:13:40'),
(1019, 14, 15, '0', 'Preventivo', '302.927', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN - Diagnostico (Adjustar splinderes delanteros y cambiar llantas delanteras)', '0', '2020-04-20', NULL, NULL, '2020-09-22 19:23:39', '2020-09-22 19:23:39'),
(1020, 14, 15, '1084', 'Preventivo', '303.526', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN CON LOS HALLAZGOS ANTERIORES CERRADOS', '38.000', '2020-04-28', NULL, NULL, '2020-09-22 19:24:56', '2020-09-22 19:24:56'),
(1021, 14, 15, '0', 'Preventivo', '31.5264', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS \r\nHallazgos: Cambiar pines o esplinderes de tren delantero, cambiar rodamiento delantero derecho y engrasar el izquierdo', '0', '2020-08-26', NULL, NULL, '2020-09-22 19:27:12', '2020-09-22 19:27:12'),
(1022, 14, 37, '0', 'Preventivo', '154.568', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN - DIAGNOSTICO (Terminales axiales o colombina izquierda derecha, colgantes de barra estabilizadora 2)', '0', '2020-01-08', NULL, NULL, '2020-09-22 19:42:08', '2020-09-22 19:42:08'),
(1023, 14, 37, '499', 'Preventivo', '160.974', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CIERRE DE HALLAZGO DE LA ANTERIOR ALINEACIÓN', '55.000', '2020-02-10', NULL, NULL, '2020-09-22 19:43:23', '2020-09-22 19:43:23'),
(1024, 14, 37, '0', 'Preventivo', '166.264', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-03-11', NULL, NULL, '2020-09-22 19:44:44', '2020-09-22 19:44:44'),
(1025, 1, 37, '111', 'Preventivo', '154.568', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN, BALANCEO Y ROTACIÓN. La alineación fue llevada a cabo el 08 de enero\r\nHallazgos:  terminales axiales o colombinasizquierda derecha, colgantes de barra estabilizadora 2', '63.000', NULL, NULL, NULL, '2020-09-22 19:55:54', '2020-09-22 19:55:54'),
(1026, 14, 37, '111', 'Preventivo', '154.568', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN, BALANCEO Y ROTACIÓN. LA ALINEACIÓN FUE LLEVADA A CABO EL 08 DE ENERO HALLAZGOS: TERMINALES AXIALES O COLOMBINASIZQUIERDA DERECHA, COLGANTES DE BARRA ESTABILIZADORA 2', '63.000', '2020-01-10', NULL, NULL, '2020-09-22 19:57:27', '2020-09-22 19:57:27'),
(1027, 14, 37, '994', 'Preventivo', '160.974', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO', '55.000', '2020-02-10', NULL, NULL, '2020-09-22 19:58:19', '2020-09-22 19:58:19'),
(1028, 14, 37, '0', 'Preventivo', '166.264', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-03-11', NULL, NULL, '2020-09-22 19:59:09', '2020-09-22 19:59:09'),
(1029, 14, 37, '1121', 'Preventivo', '172.864', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE 4 LLANTAS', '75.999', '2020-05-09', NULL, NULL, '2020-09-22 20:13:08', '2020-09-22 20:13:08'),
(1030, 14, 37, '0', 'Preventivo', '175.833', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-06-08', NULL, NULL, '2020-09-22 20:13:49', '2020-09-22 20:13:49'),
(1031, 14, 25, '0', 'Preventivo', '191.722', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-02-24', NULL, NULL, '2020-09-22 20:16:22', '2020-09-22 20:16:22'),
(1032, 14, 25, '1161', 'Preventivo', '202.136', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '38.000', '2020-05-20', NULL, NULL, '2020-09-22 20:36:15', '2020-09-22 20:36:15'),
(1033, 14, 25, '0', 'Preventivo', '205.430', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-06-17', NULL, NULL, '2020-09-22 20:40:36', '2020-09-22 20:40:36'),
(1034, 14, 24, '0', 'Preventivo', '181.969', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN -DIAGNOSTICO (TERMINAL DE BARRA CORTA LADO RUEDA IZQUIERDA Y TENSIÓN DE FRENO)', '0', '2020-04-21', NULL, NULL, '2020-09-22 20:44:20', '2020-09-22 20:44:20'),
(1035, 14, 24, '1077', 'Preventivo', '182.646', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN CIERRE DE HALLAZGOS ANTERIORES', '38.000', '2020-04-27', NULL, NULL, '2020-09-22 20:45:06', '2020-09-22 20:45:06'),
(1036, 14, 24, '0', 'Preventivo', '185.698', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-05-23', NULL, NULL, '2020-09-22 20:45:42', '2020-09-22 20:45:42'),
(1037, 14, 23, '0', 'Preventivo', '195.514', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS (DEBIDO A LA PANDEMIA SE REALIZÓ EN ESTA FECHA)', '0', '2020-04-24', NULL, NULL, '2020-09-22 20:49:49', '2020-09-22 20:49:49'),
(1038, 14, 23, '1192', 'Preventivo', '198.988', NULL, 'ALINEACION, BALANCEO Y ROTACION:1 ALINEACIÓN Y 2 BALANCEOS POR CAMBIO DE DOS LLANTAS DELANTERAS', '68.000', '2020-05-23', NULL, NULL, '2020-09-22 20:58:32', '2020-09-22 20:58:32'),
(1039, 14, 26, '0', 'Preventivo', '135.336', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-01-25', NULL, NULL, '2020-09-22 21:05:07', '2020-09-22 21:05:07'),
(1040, 14, 26, '0', 'Preventivo', '135.336', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS DEL 24/12/2019', '0', '2020-01-25', NULL, NULL, '2020-09-22 21:10:55', '2020-09-22 21:10:55'),
(1041, 14, 26, '926', 'Preventivo', '542.986', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO', '68.000', '2020-03-13', NULL, NULL, '2020-09-22 21:11:49', '2020-09-22 21:11:49'),
(1042, 14, 26, '0', 'Preventivo', '135.336', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-01-25', NULL, NULL, '2020-09-22 21:13:45', '2020-09-22 21:13:45'),
(1043, 14, 26, '926', 'Preventivo', '142.986', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO', '68.000', '2020-03-13', NULL, NULL, '2020-09-22 21:14:27', '2020-09-22 21:14:27'),
(1044, 14, 26, '0', 'Preventivo', '147.088', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-04-20', NULL, NULL, '2020-09-22 21:15:00', '2020-09-22 21:15:00'),
(1045, 14, 26, '1918', 'Preventivo', '176.883', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE DOS LLANTAS DELANTERAS', '68.000', '2020-08-15', NULL, NULL, '2020-09-22 21:19:02', '2020-09-22 21:19:02'),
(1046, 14, 26, '1230', 'Preventivo', '152.950', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE LLANTAS DELANTERAS', '68.000', '2020-05-30', NULL, NULL, '2020-09-22 21:39:03', '2020-09-22 21:39:03'),
(1047, 14, 26, '0', 'Preventivo', '135.336', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-01-25', NULL, NULL, '2020-09-22 21:41:23', '2020-09-22 21:41:23'),
(1048, 14, 26, '926', 'Preventivo', '142.986', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO', '68.000', '2020-03-13', NULL, NULL, '2020-09-22 21:42:25', '2020-09-22 21:42:25'),
(1049, 14, 26, '0', 'Preventivo', '147.088', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-04-20', NULL, NULL, '2020-09-22 21:44:03', '2020-09-22 21:44:03'),
(1050, 14, 26, '1230', 'Preventivo', '152.950', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR 2 CAMBIO DE LLANTAS DELANTERAS', '68.000', '2020-05-30', NULL, NULL, '2020-09-22 21:54:46', '2020-09-22 21:54:46'),
(1051, 14, 26, '1918', 'Preventivo', '176.883', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE 2 LLANTAS. ( Las 2 llantas delantera del mes de mayo se trasladaron a una pacha trasera)', '68.000', '2020-08-15', NULL, NULL, '2020-09-22 21:57:03', '2020-09-22 21:57:03'),
(1052, 14, 26, '0', 'Preventivo', '185.182', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-09-09', NULL, NULL, '2020-09-22 22:01:26', '2020-09-22 22:01:26'),
(1053, 14, 37, '2223', 'Preventivo', '187.184', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '36.000', '2020-09-15', NULL, NULL, '2020-09-22 22:21:03', '2020-09-22 22:21:03'),
(1054, 14, 11, '0', 'Preventivo', '222.819', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-01-03', NULL, NULL, '2020-09-23 02:35:40', '2020-09-23 02:35:40'),
(1055, 14, 11, '838', 'Preventivo', '233.590', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '68.000', '2020-03-06', NULL, NULL, '2020-09-23 02:36:29', '2020-09-23 02:36:29'),
(1056, 14, 11, '0', 'Preventivo', '240.604', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-04-23', NULL, NULL, '2020-09-23 02:37:18', '2020-09-23 02:37:18'),
(1057, 14, 11, '1575', 'Preventivo', '252.062', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE 2 LLANTAS DELANTERAS', '68.000', '2020-07-09', NULL, NULL, '2020-09-23 02:41:27', '2020-09-23 02:41:27'),
(1058, 14, 11, '0', 'Preventivo', '256.489', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-08-03', NULL, NULL, '2020-09-23 02:42:52', '2020-09-23 02:42:52'),
(1059, 14, 11, '2272', 'Preventivo', '263.923', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN DEBIDO A QUE EL VEHICULO PRESENTABA INCONSISTENCIAS. Hallazgos: Ajustar o cambiar pin o esplinder izquierdo tren delantero, arreglar o cambiar terminal de barra corta de la dirección lado atras o codo', '38.000', '2020-09-19', NULL, NULL, '2020-09-23 03:27:35', '2020-09-23 03:33:22'),
(1060, 14, 14, '0', 'Preventivo', '186.024', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-01-28', NULL, NULL, '2020-09-23 03:39:05', '2020-09-23 03:39:05'),
(1061, 14, 14, '1060', 'Preventivo', '196.893', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN - BALANCEO', '38.000', '2020-04-21', NULL, NULL, '2020-09-23 03:42:16', '2020-09-23 03:42:16'),
(1062, 14, 14, '0', 'Preventivo', '200.230', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-05-20', NULL, NULL, '2020-09-23 03:43:16', '2020-09-23 03:43:16'),
(1063, 14, 14, '2242', 'Preventivo', '206.359', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '38.000', '2020-09-17', NULL, NULL, '2020-09-23 03:43:52', '2020-09-23 03:43:52'),
(1064, 14, 5, '426', 'Preventivo', '146.818', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN. HALLAZGO: AJUSTAR BOTELLA DE DIRECCIÓN, BUJES DE MUELLES DELANTERO', '38.000', '2020-02-03', NULL, NULL, '2020-09-23 04:01:56', '2020-09-23 04:01:56'),
(1065, 14, 5, '0', 'Preventivo', '150.271', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-02-28', NULL, NULL, '2020-09-23 04:02:41', '2020-09-23 04:02:41'),
(1066, 14, 5, '1088', 'Preventivo', '159.775', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '38.000', '2020-05-15', NULL, NULL, '2020-09-23 04:04:39', '2020-09-23 04:04:39'),
(1067, 14, 5, '0', 'Preventivo', '163.820', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-06-16', NULL, NULL, '2020-09-23 04:05:47', '2020-09-23 04:05:47'),
(1068, 14, 5, '1837', 'Preventivo', '172.246', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR ROTACIÓN DE LLANTAS DELANTERAS.  HALLAZGO DEL DIAGNOSTICO : CAMBIAR TERMINALES BARRA LARGA O CENTRAL DE LA DIRECCION', '38.000', '2020-08-05', NULL, NULL, '2020-09-23 04:07:46', '2020-09-23 04:07:46'),
(1069, 14, 5, '0', 'Preventivo', '175.485', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR CIERRE DE LOS HALLAZGOS ANTERIORES', '0', '2020-08-27', NULL, NULL, '2020-09-23 04:09:09', '2020-09-23 04:09:09'),
(1070, 14, 22, '0', 'Preventivo', '224.580', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-05-20', NULL, NULL, '2020-09-23 20:53:13', '2020-09-23 20:53:13'),
(1071, 14, 22, '2251', 'Preventivo', '240.594', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '68.000', '2020-09-17', NULL, NULL, '2020-09-23 20:55:11', '2020-09-23 20:55:11'),
(1072, 14, 21, '0', 'Preventivo', '249.384', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR CIERRE DE HALLAZGOS ANTERIORES 12/06/2020', '0', '2020-06-17', NULL, NULL, '2020-09-23 21:09:10', '2020-09-23 21:09:10'),
(1073, 14, 21, '0', 'Preventivo', '253.126', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-07-17', NULL, NULL, '2020-09-23 21:09:46', '2020-09-23 21:09:46'),
(1074, 14, 27, '1094', 'Preventivo', '133.582', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO', '68.000', '2020-04-30', NULL, NULL, '2020-09-23 21:22:48', '2020-09-23 21:22:48'),
(1075, 14, 27, '0', 'Preventivo', '138.185', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALIENACIÓN POR GARANTIA DE 30 DIAS Y HALLAZGO: DESGASTE EXTERNO DE LLANTA DELANTERA DERECHA', '0', '2020-06-05', NULL, NULL, '2020-09-23 21:23:52', '2020-09-23 21:23:52'),
(1076, 14, 27, '1749', 'Preventivo', '147.395', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN BALANCEO Y MONTAJE DE 2 LLANTAS DELANTERAS', '68.000', '2020-07-28', NULL, NULL, '2020-09-23 21:26:16', '2020-09-23 21:26:16'),
(1077, 14, 27, '0', 'Preventivo', '156.489', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-08-03', NULL, NULL, '2020-09-23 21:36:50', '2020-09-23 21:36:50'),
(1078, 14, 18, '0', 'Preventivo', '242.447', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION -DIAGNOSTICO\r\nHALLAZGO: TERMINALES AXIALES O COLOMBINA IZQUIERDA Y DERECHA', '0', '2020-04-21', NULL, NULL, '2020-09-23 21:55:02', '2020-09-23 21:55:02'),
(1079, 14, 18, '1354', 'Preventivo', '251.546', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR CIERRE DE HALLAZGOS ANTERIORES', '36.000', '2020-06-16', NULL, NULL, '2020-09-23 21:55:59', '2020-09-23 21:55:59'),
(1080, 14, 18, '0', 'Preventivo', '257.533', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION  Y BALANCEO POR CAMBIO DE LLANTAS DELANTERAS\r\nHALLAZGO: Cambiar amortiguadores delanteros', '0', '2020-08-01', NULL, NULL, '2020-09-23 22:02:53', '2020-09-23 22:02:53'),
(1081, 14, 18, '0', 'Preventivo', '261.518', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS Y CIERRE DE HALLAZGOS ANTERIORES', '0', '2020-09-02', NULL, NULL, '2020-09-23 22:03:53', '2020-09-23 22:03:53'),
(1082, 14, 19, '0', 'Preventivo', '113.053', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-07-31', NULL, NULL, '2020-09-23 22:07:00', '2020-09-23 22:07:00'),
(1083, 14, 5, '2247', 'Preventivo', '178.970', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR CAMBIO DE LLANTAS DELANTERAS. DIAGNOSTICO: CAMBIAR TERMINALES', '38.000', '2020-09-17', NULL, NULL, '2020-09-24 01:07:53', '2020-09-24 01:07:53'),
(1084, 14, 5, '0', 'Preventivo', '179.487', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR CIERRE DE HALLAZGOS ANTERIORES', '0', '2020-09-21', NULL, NULL, '2020-09-24 01:14:20', '2020-09-24 01:14:20'),
(1085, 14, 33, '1177', 'Preventivo', '257.833', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN. HALLAZGO: ESFERICAS O ROTULAS INFERIORES IZQUIERDAY DERECHA', '36.000', '2020-05-21', NULL, NULL, '2020-09-24 01:20:07', '2020-09-24 01:20:07'),
(1086, 14, 44, '623', 'Preventivo', '278.534', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE 4 LLANTAS', '33.000', '2020-02-19', NULL, NULL, '2020-09-24 01:35:13', '2020-09-24 01:35:13'),
(1087, 14, 44, '0', 'Preventivo', '291.325', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN - DIAGNOSTICO ( CAMBIAR BUJES Y LEVAS DE TIJERAS INFERIOR DERECHA, TRAER EL VEHICULO CON EL AIRBAG DEL VOLANTE DESACTIVADO PARA PODER CENTRAR EL VOLANTE)', '0', '2020-08-06', NULL, NULL, '2020-09-24 01:37:22', '2020-09-24 01:37:22'),
(1088, 14, 29, '0', 'Preventivo', '322.341', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN - DIAGNOSTICO ( ESFERICA O ROTULA INFERIOR DERECHA)', '0', '2020-02-25', NULL, NULL, '2020-09-24 01:43:47', '2020-09-24 01:43:47'),
(1089, 14, 29, '1064', 'Preventivo', '324.774', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '36.000', '2020-04-22', NULL, NULL, '2020-09-24 01:44:30', '2020-09-24 01:44:30'),
(1090, 14, 28, '0', 'Preventivo', '247.320', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS.\r\nHALLAZGO: CAMBIAR LLANTAS DELANTERAS', '0', '2020-04-27', NULL, NULL, '2020-09-24 01:47:48', '2020-09-24 01:47:48'),
(1091, 14, 28, '1266', 'Preventivo', '249.867', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR CAMBIO DE 4 LLANTAS', '36.000', '2020-05-14', NULL, NULL, '2020-09-24 01:50:53', '2020-09-24 01:50:53'),
(1092, 14, 28, '0', 'Preventivo', '253.891', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-06-11', NULL, NULL, '2020-09-24 01:52:43', '2020-09-24 01:52:43'),
(1093, 14, 31, '0', 'Preventivo', '176.794', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-05-21', NULL, NULL, '2020-09-24 01:56:42', '2020-09-24 01:56:42'),
(1094, 14, 31, '0', 'Preventivo', '197.876', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN - DIAGNOSTICO (DIAGNOSTICO: CAMBIAR TERMINALES AXIALES O COLOMBINAS DERECHA)', '0', '2020-09-18', NULL, NULL, '2020-09-24 02:03:36', '2020-09-24 02:03:36'),
(1095, 14, 14, '2053', 'Preventivo', '205.472', NULL, 'ALINEACION, BALANCEO Y ROTACION:BALANCEO', '30.000', '2020-09-01', NULL, NULL, '2020-09-24 02:54:59', '2020-09-24 02:54:59'),
(1096, 14, 12, '141', 'Preventivo', '159.509', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE LLANTAS', NULL, '2020-01-13', NULL, NULL, '2020-09-24 03:11:51', '2020-09-24 03:11:51'),
(1097, 14, 12, '0', 'Preventivo', '162.349', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION POR GARANTIA DE 30 DIAS', '0', '2020-02-04', NULL, NULL, '2020-09-24 03:19:26', '2020-09-24 03:19:26'),
(1098, 14, 12, '1053', 'Preventivo', '172.735', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '38.000', '2020-04-17', NULL, NULL, '2020-09-24 03:23:17', '2020-09-24 03:23:17'),
(1099, 14, 12, '0', 'Preventivo', '176.061', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEAION DE GARANTIA POR 30 DIAS', '0', '2020-05-15', NULL, NULL, '2020-09-24 03:24:13', '2020-09-24 03:24:13'),
(1100, 14, 12, '1432', 'Preventivo', '181.713', NULL, 'ALINEACION, BALANCEO Y ROTACION:BALANEO', '30.000', '2020-06-25', NULL, NULL, '2020-09-24 03:29:38', '2020-09-24 03:29:38'),
(1101, 1, 12, '1816', 'Preventivo', '187.790', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION Y BALANCEO POR CAMBIO DE LLANTAS DE LANTERA', '68.000', '2020-08-04', NULL, NULL, '2020-09-24 03:32:34', '2020-09-24 03:32:34'),
(1102, 14, 12, '0', 'Preventivo', '189.775', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION POR GARANTIA', '0', '2020-08-18', NULL, NULL, '2020-09-24 03:36:13', '2020-09-24 03:36:13'),
(1103, 14, 16, '671', 'Preventivo', '226.924', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '36.000', '2020-02-21', NULL, NULL, '2020-09-24 18:39:41', '2020-09-24 18:39:41'),
(1104, 1, 16, '671', 'Preventivo', '226.924', NULL, 'ALINEACION, BALANCEO Y ROTACION:alineación', '36.000', '2020-02-21', NULL, NULL, '2020-09-24 19:11:43', '2020-09-24 19:11:43'),
(1105, 14, 16, '0', 'Preventivo', '234.086', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION . DIAGNOSTICO: TERMINAL DE BARRA CORTA LADO RUEDA, AJUSTAR ESPLINDERES', '0', '2020-04-20', NULL, NULL, '2020-09-24 19:13:17', '2020-09-24 19:13:17'),
(1106, 14, 16, '671', 'Preventivo', '226.924', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION', '36.000', '2020-02-21', NULL, NULL, '2020-09-24 19:14:35', '2020-09-24 19:14:35'),
(1107, 14, 16, '0', 'Preventivo', '234.086', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIO - DIAGNOSTICO: TERMINAL DE BARRA CORTA LADO RUEDA, AJUSTE DE ESPLINDERES', '0', '2020-04-20', NULL, NULL, '2020-09-24 19:15:30', '2020-09-24 19:15:30'),
(1108, 14, 16, '0', 'Preventivo', '234.628', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION POR GARANTIA Y CIERRE DE HALLAZGOS ANTERIORES', '0', '2020-04-24', NULL, NULL, '2020-09-24 19:16:40', '2020-09-24 19:16:40'),
(1109, 14, 34, '0', 'Preventivo', '61.072', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-01-29', NULL, NULL, '2020-09-24 21:40:04', '2020-09-24 21:40:04'),
(1110, 14, 17, '0', 'Preventivo', '254.150', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION\r\nHALLAZGO: Terminal axial o colombina izquierda\r\nTerminal corto de la direccion izquierda)', '0', '2020-02-07', NULL, NULL, '2020-09-24 22:24:44', '2020-09-24 22:24:44'),
(1111, 14, 17, '0', 'Preventivo', '257.163', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN CIERRE DE HALLAZGOS ANTERIORES', '0', '2020-02-25', NULL, NULL, '2020-09-24 22:25:34', '2020-09-24 22:25:34'),
(1112, 14, 17, '0', 'Preventivo', '266.001', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACION (DIAGNOSTICO) \r\nHALLAZGO: Terminales cortos de ladireccion izquierda)', '0', '2020-05-08', NULL, NULL, '2020-09-24 22:28:15', '2020-09-24 22:28:15'),
(1113, 14, 17, '2159', 'Preventivo', '280.100', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE 6 LLANTAS', '60.000', '2020-09-09', NULL, NULL, '2020-09-24 22:29:47', '2020-09-24 22:29:47'),
(1114, 14, 13, '650', 'Preventivo', '180.325', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '38.000', '2020-02-21', NULL, NULL, '2020-09-25 00:41:51', '2020-09-25 00:41:51'),
(1115, 14, 13, '0', 'Preventivo', '188.128', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-04-23', NULL, NULL, '2020-09-25 00:42:31', '2020-09-25 00:42:31'),
(1116, 1, 13, '0', 'Preventivo', '204.135', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA', '0', '2020-08-21', NULL, NULL, '2020-09-25 00:47:18', '2020-09-25 00:47:18'),
(1117, 14, 13, '2162', 'Preventivo', '206.894', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALIENACIÓN POR CAMBIO DE 2 LLANTAS DELANTERAS', '68.000', '2020-09-09', NULL, NULL, '2020-09-25 00:48:22', '2020-09-25 00:48:22'),
(1118, 14, 30, '954', 'Preventivo', '311.659', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE 4 LLANTAS', '75.000', '2020-03-16', NULL, NULL, '2020-09-25 00:55:52', '2020-09-25 00:56:44'),
(1119, 14, 30, '0', 'Preventivo', '312.394', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-04-27', NULL, NULL, '2020-09-25 00:58:06', '2020-09-25 00:58:06'),
(1120, 14, 35, '0', 'Preventivo', '28.084', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA', '0', '2020-02-28', NULL, NULL, '2020-09-25 01:06:57', '2020-09-25 01:06:57'),
(1121, 14, 35, '1073', 'Preventivo', '37.152', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '36.000', '2020-04-23', NULL, NULL, '2020-09-25 01:07:36', '2020-09-25 01:07:36'),
(1122, 14, 35, '0', 'Preventivo', '40.593', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-05-16', NULL, NULL, '2020-09-25 01:08:36', '2020-09-25 01:08:36'),
(1123, 14, 35, '1205', 'Preventivo', '41.888', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE LAS 4 LLANTAS', '76.000', '2020-05-27', NULL, NULL, '2020-09-25 01:09:56', '2020-09-25 01:09:56'),
(1124, 14, 35, '2283', 'Preventivo', '56.892', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO', '60.000', '2020-09-19', NULL, NULL, '2020-09-25 01:39:28', '2020-09-25 01:39:28'),
(1125, 14, 36, '0', 'Preventivo', '19.380', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-01-03', NULL, NULL, '2020-09-25 01:44:57', '2020-09-25 01:44:57'),
(1126, 14, 36, '1059', 'Preventivo', '35.010', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN', '36.000', '2020-04-21', NULL, NULL, '2020-09-25 01:45:46', '2020-09-25 01:45:46'),
(1127, 14, 36, '0', 'Preventivo', '38.490', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-05-21', NULL, NULL, '2020-09-25 01:46:31', '2020-09-25 01:46:31'),
(1128, 14, 36, '1659', 'Preventivo', '45.298', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN Y BALANCEO POR CAMBIO DE 2 LLANTAS DELANTERAS', '56.000', '2020-07-16', NULL, NULL, '2020-09-25 01:47:45', '2020-09-25 01:47:45'),
(1129, 14, 36, '0', 'Preventivo', '47.853', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-08-10', NULL, NULL, '2020-09-25 01:48:31', '2020-09-25 01:48:31'),
(1130, 14, 39, '0', 'Preventivo', '405.774', NULL, 'ALINEACION, BALANCEO Y ROTACION:ALINEACIÓN POR GARANTIA DE 30 DIAS', '0', '2020-06-03', NULL, NULL, '2020-09-25 01:57:12', '2020-09-25 01:57:12'),
(1131, 9, 19, '3830', 'Correctivo', '0', NULL, '1 Bomba de freno 515', '1.584.928', '2020-09-29', NULL, NULL, '2020-10-06 18:31:33', '2020-10-06 18:31:33'),
(1132, 9, 36, '3829', 'Correctivo', '0', NULL, '1 Tensor correa', '540.948', '2020-09-29', NULL, NULL, '2020-10-06 18:33:05', '2020-10-06 18:33:05'),
(1133, 23, 16, '1216', 'Correctivo', '0', NULL, 'Forrada de volante bus', '35.000', '2020-09-24', NULL, NULL, '2020-10-06 18:36:24', '2020-10-06 18:36:24'),
(1134, 71, 15, '3291', 'Correctivo', '0', NULL, '2 Terminal guaya NPR derecho, 1 terminal guaya NPR/NKR derecha', '75.000', '2020-09-18', NULL, NULL, '2020-10-06 18:38:44', '2020-10-06 18:38:44'),
(1139, 45, 15, '2889', 'Correctivo', '0', NULL, 'BATERIA:BATERIA AUTO MAC 31T1250 - 31T1100', '884.000', '2020-11-10', NULL, NULL, '2021-01-29 00:27:13', '2021-01-29 00:27:13'),
(1140, 11, 15, '0403', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:MANTENIMIENTO GENERAL DEL AIRE ACONDICIONADO, 3 LB DE GAS', '186.030', '2020-09-12', NULL, NULL, '2021-01-29 00:29:20', '2021-01-29 00:29:20'),
(1141, 131, 15, '5172', 'Correctivo', '0', NULL, 'KIT DE POLEA DELANTERA', '400.000', '2020-09-12', NULL, NULL, '2021-01-29 00:36:40', '2021-01-29 00:36:40'),
(1142, 62, 15, '363', 'Preventivo', NULL, NULL, '2 TORNILLOS', '4.000', '2020-09-23', NULL, NULL, '2021-01-29 00:38:53', '2021-01-29 00:38:53'),
(1143, 11, 15, '0413', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:DESMONTE DE COMPRESOR PARA REPARACIÓN, 12 LIBRAS DE GAS, 1/4 DE ACEITE, 41 EMPAQUE DE CULATINA', '559.044', '2020-09-22', NULL, NULL, '2021-01-29 00:41:04', '2021-01-29 00:41:04'),
(1144, 29, 15, '6436', 'Preventivo', '0', NULL, 'TENSIONADA DE FRENOS', '15.000', '2020-09-30', NULL, NULL, '2021-01-29 00:45:01', '2021-01-29 00:45:01'),
(1145, 21, 15, '2642', 'Correctivo', '0', NULL, '2 CAUCHOS SOPORTE DE BARRA TRASERA', '90.000', '2020-10-06', NULL, NULL, '2021-01-29 00:46:00', '2021-01-29 00:46:00'),
(1146, 132, 15, '844', 'Preventivo', '0', NULL, 'LIMPIA PARABRISAS:MANTENIMIENTO MOTORES LIMPIA PARABRISAS', '80.000', '2020-10-06', NULL, NULL, '2021-01-29 00:53:59', '2021-01-29 00:53:59'),
(1147, 62, 15, '389', 'Correctivo', '0', NULL, 'FLUIDOS DE FRENOS Y EMBRIAGUE:1 LIQUIDO DE FRENO AT ALEMAN 1/4', '42.840', '2020-10-08', NULL, NULL, '2021-01-29 00:56:44', '2021-01-29 00:56:44'),
(1148, 62, 15, '389', 'Correctivo', '0', NULL, 'COMPRA EMPAQUETADURA DE CLUTCH PRINCIPAL', '160.650', '2020-10-08', NULL, NULL, '2021-01-29 00:57:39', '2021-01-29 00:58:19'),
(1149, 11, 15, '0444', 'Correctivo', '0', NULL, '1 POLARIZADO', '120.000', '2020-10-11', NULL, NULL, '2021-01-29 00:59:16', '2021-01-29 00:59:16'),
(1150, 51, 15, '21221', 'Preventivo', '0', NULL, '1 JUEGO DE TORNILLOS', '37.500', '2020-10-22', NULL, NULL, '2021-01-29 01:00:15', '2021-01-29 01:00:15'),
(1151, 133, 15, '1700', 'Correctivo', NULL, NULL, '1 SPLINDER DIRECCION HINO MICRO BUS', '135.000', '2020-10-27', NULL, NULL, '2021-01-29 01:04:07', '2021-01-29 01:04:50'),
(1152, 91, 15, '10579', 'Correctivo', '0', NULL, '2 RODILLO REFERENCIA 30310, 2 RETENEDOR REFERENCIA 69099', '280.000', '2020-10-27', NULL, NULL, '2021-01-29 01:09:07', '2021-01-29 01:09:07'),
(1153, 134, 15, '337', 'Correctivo', '0', NULL, 'RIMAR, ARMAR CAUCHOS DE DIRECCIÓN, AJUSTE DE BARRA DE DIRECCIÓN, PINTADA DE TREN DELANTERO', '120.000', '2020-10-28', NULL, NULL, '2021-01-29 01:22:51', '2021-01-29 01:22:51'),
(1154, 62, 15, '408', 'Correctivo', '0', NULL, 'RODILLO DELANTERO EXTERNO', '105.000', '2020-10-30', NULL, NULL, '2021-01-29 01:23:44', '2021-01-29 01:23:44'),
(1155, 4, 15, '212', 'Correctivo', '0', NULL, '10 AMARRES PLASTICOS, 4 TERMINALES 5/16, 1 BALINERA REFERENCIA 6305, 1 BALINERA REFERENCIA B17*99D, 1 BALINERA REFERENCIA 6003, 1 MANGUERA CORRUGADA, 1 BENDIX HINO MODELO NUEVO', '256.000', '2020-11-08', NULL, NULL, '2021-01-29 01:26:40', '2021-01-29 01:26:40'),
(1156, 135, 15, '1843', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:COMPRA 80 CM DE MANGUERA ALTA PRESION Y ACOPLES, MANTENIMIENTO DE EQUIPO, SENSORES PRESOSTATOS ALTA Y BAJA, CARGA DE GAS COMPLETA, ACEITE COMPRESOR', '868.140', '2020-11-09', NULL, NULL, '2021-01-29 01:32:09', '2021-01-29 01:32:09'),
(1157, 62, 15, '480', 'Correctivo', '0', NULL, '2 Bujes barra estabilizadora, 2 retenedor trasero HINO, 6 buje muelle bimetalico, 6 pasador muelle, 8 chupas HINO', '427.000', '2020-11-14', NULL, NULL, '2021-01-29 01:35:04', '2021-01-29 01:35:04'),
(1158, 4, 15, '138', 'Correctivo', '0', NULL, '4 CHAPETA TIPO PESADO', '32.000', '2020-11-11', NULL, NULL, '2021-01-29 01:38:09', '2021-01-29 01:38:09'),
(1159, 136, 15, '2085', 'Correctivo', '0', NULL, '4 Desmontes redes traseras y delanteras para mantenimiento, 3 desmontes muelle, revisión y cambio de bandas de freno de mano, desmonte de caja para cambio de embrague', '420.000', '2020-11-15', NULL, NULL, '2021-01-29 01:47:02', '2021-01-29 01:47:02'),
(1160, 61, 15, '62', 'Correctivo', '0', NULL, 'EMBRAGUE:Kit de embrague prensa disco balinera', '1.851.301', '2020-11-17', NULL, NULL, '2021-01-29 01:49:27', '2021-01-29 01:49:27'),
(1161, 99, 15, '0244', 'Correctivo', '0', NULL, 'Reparación motor de arranque, reparación alternador A/C, reparación alternador motor', '300.000', '2020-11-18', NULL, NULL, '2021-01-29 01:51:08', '2021-01-29 01:51:08'),
(1162, 137, 15, '2224', 'Preventivo', '0', NULL, 'Suministro de conos de pantografos', '60.000', '2020-12-02', NULL, NULL, '2021-01-29 01:55:44', '2021-01-29 01:55:44'),
(1163, 138, 15, '2461', 'Correctivo', '0', NULL, 'Reparación freno ahogo, cambio en aleta bujes empaques, rectificar carcasa, arreglo exosto, cambio balancin, muelle trasero y derecho, cambio manguera', '505.000', '2020-12-04', NULL, NULL, '2021-01-29 02:08:49', '2021-01-29 02:08:49'),
(1164, 139, 15, '4774', 'Correctivo', '0', NULL, '1 Balancin trasero HINO del muelle', '120.000', '2020-12-04', NULL, NULL, '2021-01-29 02:12:45', '2021-01-29 02:12:45'),
(1165, 109, 15, '1137139', 'Preventivo', '0', NULL, 'Peajes Rio Sogamoso, lebrija', '28.200', '2020-12-04', NULL, NULL, '2021-01-29 02:14:33', '2021-01-29 02:14:33'),
(1166, 140, 15, '1187', 'Correctivo', '0', NULL, 'Arreglo de terminales a brazo de puerta, embujar trapecio limpiabrisas', '80.000', '2020-12-05', NULL, NULL, '2021-01-29 02:17:04', '2021-01-29 02:17:04'),
(1167, 29, 15, '6574', 'Preventivo', '0', NULL, 'Tensionada de frenos', '15.000', '2020-12-06', NULL, NULL, '2021-01-29 02:18:47', '2021-01-29 02:18:47'),
(1168, 141, 15, '334', 'Preventivo', '0', NULL, 'Lavado general', '20.000', '2020-12-06', NULL, NULL, '2021-01-29 02:35:08', '2021-01-29 02:35:08'),
(1169, 4, 15, '193', 'Correctivo', '0', NULL, '1 bombillo P43 12 voltios, 1 inducido NISSAN MT, 1 portaescobillas HINO, 1 soldada de escobilla 112, 1 Reparación arranque R.P', '252.300', '2020-12-07', NULL, NULL, '2021-01-29 02:36:49', '2021-01-29 02:36:49'),
(1170, 4, 15, '330', 'Preventivo', '0', NULL, '1 cinta aislante, 1 switche de cortesia, 1 fusible 40 AMP japones', '15.000', '2021-01-12', NULL, NULL, '2021-01-29 02:38:12', '2021-01-29 02:38:12'),
(1171, 103, 33, '19263', 'Correctivo', NULL, NULL, '1 Clutch toyota Hilux Vigo', '200.000', '2020-12-11', NULL, NULL, '2021-01-29 03:39:45', '2021-01-29 03:39:45'),
(1172, 61, 33, '9071', 'Correctivo', '0', NULL, 'EMBRAGUE:1 Kit de embrague NPR', '1.100.000', '2020-09-10', NULL, NULL, '2021-01-29 03:57:58', '2021-01-29 03:57:58'),
(1173, 62, 39, '364', 'Preventivo', '0', NULL, '2 Tornillos centro', '14.000', '2020-09-23', NULL, NULL, '2021-01-29 03:58:39', '2021-01-29 03:58:39'),
(1174, 143, 39, '3932', 'Preventivo', '0', NULL, '1 Juego de guardapolvos', '280.000', '2020-10-20', NULL, NULL, '2021-01-29 04:00:49', '2021-01-29 04:00:49'),
(1175, 144, 39, '17207', 'Correctivo', '0', NULL, '1 Regulador de aire sistema de carga referencia: KNORR-BRENSE, 2 cámaras de seguridad 24/24 NPR', '850.000', '2020-10-16', NULL, NULL, '2021-01-29 04:03:37', '2021-01-29 04:03:37'),
(1176, 145, 39, '5817', 'Preventivo', '0', NULL, '30 metros cable T18', '45.000', '2020-10-16', NULL, NULL, '2021-01-29 04:06:11', '2021-01-29 04:06:11'),
(1177, 93, 39, '23390', 'Preventivo', '0', NULL, '1 Empaque compresor', '15.000', '2020-10-16', NULL, NULL, '2021-01-29 04:07:19', '2021-01-29 04:07:30'),
(1178, 125, 39, '0164', 'Correctivo', '0', NULL, 'Pintada frente', '250.000', '2020-10-16', NULL, NULL, '2021-01-29 04:08:18', '2021-01-29 04:08:18'),
(1179, 146, 39, '0901', 'Correctivo', '0', NULL, '1 Regulador de corriente de 24 a 12.', '140.000', '2020-10-16', NULL, NULL, '2021-01-29 04:10:24', '2021-01-29 04:10:24'),
(1180, 147, 39, '6116', 'Preventivo', '0', NULL, '1 Guaya de freno', '15.000', '2020-10-19', NULL, NULL, '2021-01-29 04:12:41', '2021-01-29 04:12:41'),
(1181, 148, 39, '4712', 'Correctivo', '0', NULL, '4 Exploradora autopal, 2 kit metalico', '300.000', '2020-10-20', NULL, NULL, '2021-01-29 17:24:40', '2021-01-29 17:24:40'),
(1182, 127, 39, '1117', 'Preventivo', '0', NULL, '2 Inserto 1/2, 1 B68 1/2*1/2 union anillo, 1 metro de manguera tubing', '21.100', '2020-10-23', NULL, NULL, '2021-01-29 17:26:15', '2021-01-29 17:26:15'),
(1183, 51, 39, '21257', 'Correctivo', '0', NULL, '2 Lampara later, 2 lampara luz led', '120.000', '2020-10-24', NULL, NULL, '2021-01-29 17:27:00', '2021-01-29 17:27:00'),
(1184, 135, 39, '1865', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento equipo aire acondicionado', '160.000', '2020-11-26', NULL, NULL, '2021-01-29 17:28:59', '2021-01-29 17:28:59'),
(1185, 127, 39, '000181', 'Preventivo', '0', NULL, '2 Manguera tubing synflex, 1 ACP plast macho recto, 1 Bushing 3/8*1/8', '30.000', '2020-12-15', NULL, NULL, '2021-01-29 17:30:52', '2021-01-29 17:30:52'),
(1186, 51, 39, '392', 'Preventivo', '0', NULL, '15 Cable duplex grueso', '22.500', '2020-12-19', NULL, NULL, '2021-01-29 17:31:19', '2021-01-29 17:32:28'),
(1187, 149, 9, '2780', 'Correctivo', '0', NULL, '1 Pol 604, 1 mezcla, 1 endurecedor E40, 1 cinta 3M 1/2', '97.000', '2020-09-25', NULL, NULL, '2021-01-29 17:54:25', '2021-01-29 17:54:25'),
(1188, 11, 9, '0417', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Revisión y cambio de válvula dee expansión aire acondicionado, 12 libras de gas, 2 aceite, polarizado', '524.000', '2020-09-27', NULL, NULL, '2021-01-29 17:56:20', '2021-01-29 17:56:20'),
(1189, 11, 9, '0417', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Revisión y cambio de válvula de expansión del aire acondicionado, 12 libras de gas, 2 aceite, polarizado', '499.896', '2020-09-27', NULL, NULL, '2021-01-29 17:57:45', '2021-01-29 17:57:45');
INSERT INTO `mantenimientos` (`id`, `proveedor_id`, `vehiculo_id`, `factura`, `tipo`, `km_actual`, `km_siguiente`, `descripcion`, `subtotal`, `fecha_ejecutado`, `short`, `aux`, `created_at`, `updated_at`) VALUES
(1190, 1, 9, NULL, 'Correctivo', '0', NULL, 'Switch de retroceso referencia FC9/FC4J/FD1J', '126.558', '2020-11-05', NULL, NULL, '2021-01-29 18:29:29', '2021-01-29 18:29:29'),
(1191, 150, 9, '4201', 'Correctivo', '0', NULL, '1 Radiador completo en aluminio y pasta, 1 tapa titan 13 lb', '830.000', '2020-11-18', NULL, NULL, '2021-01-29 18:37:42', '2021-01-29 18:37:42'),
(1192, 62, 9, '518', 'Correctivo', '0', NULL, '1 Alternador de Mercedes', '1.565.812', '2020-11-27', NULL, NULL, '2021-01-29 18:38:48', '2021-01-29 18:39:12'),
(1193, 135, 9, '1868', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Baja compresor para reparación, empaquetadura de compresor, recarga de gas completa, aceite, mantenimiento de equipo', '901.530', '2020-11-28', NULL, NULL, '2021-01-29 18:41:02', '2021-01-29 18:41:02'),
(1194, 36, 9, '1710008145', 'Correctivo', '0', NULL, '1 Termostato referencia FM8J/GH8J/GD8J/FC9J', '270.323', '2020-12-28', NULL, NULL, '2021-01-29 18:42:53', '2021-01-29 18:42:53'),
(1195, 21, 9, '2826', 'Preventivo', '0', NULL, '4 Cauchos para soporte', '60.000', '2020-12-30', NULL, NULL, '2021-01-29 18:44:05', '2021-01-29 18:44:05'),
(1196, 11, 11, '0431', 'Correctivo', '0', NULL, '1 Polarizado completo', '120.000', '2020-10-04', NULL, NULL, '2021-01-29 19:10:43', '2021-01-29 19:10:43'),
(1197, 135, 9, '1842', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Compra de 1 blower y montaje del mismo, mantenimiento preventivo, recarga de refrigerante', '581.940', '2020-11-05', NULL, NULL, '2021-01-29 19:14:04', '2021-01-29 19:14:04'),
(1198, 11, 9, '1868', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Bajar compresor para reparación, empaquetadura compresor, recarga gas completa, aceite, mantenimiento de equipo', '901.530', '2020-11-28', NULL, NULL, '2021-01-29 19:19:09', '2021-01-29 19:19:09'),
(1200, 101, 44, '5910', 'Correctivo', '0', NULL, '1 Correa repartición motor', '171.091', '2020-11-05', NULL, NULL, '2021-01-29 19:58:01', '2021-01-29 19:58:01'),
(1201, 10, 28, '712', 'Correctivo', '0', NULL, '1 Juego de pastilla freno', '125.001', '2020-09-16', NULL, NULL, '2021-01-29 20:01:43', '2021-01-29 20:01:43'),
(1202, 69, 28, '107237', 'Preventivo', '0', NULL, '2 Cruceta referencia 354', '60.000', '2020-11-17', NULL, NULL, '2021-01-29 20:03:38', '2021-01-29 20:03:38'),
(1203, 20, 28, '4723', 'Correctivo', '0', NULL, 'RTM y EC vehículo liviano', '224.468', '2020-12-10', NULL, NULL, '2021-01-29 20:04:59', '2021-01-29 20:04:59'),
(1204, 20, 29, '5030', 'Correctivo', '0', NULL, 'RTM y EC vehículo liviano', '224.486', '2020-12-16', NULL, NULL, '2021-01-29 20:26:42', '2021-01-29 20:26:42'),
(1205, 32, 48, '0581', 'Correctivo', '0', NULL, '1 Escaneado, 1 cambio tensor cadena de distribución motor, 1 programación unidades de control, 1 suministro de repuestos, 1 Cableado reloj temperatura', '247.000', '2020-09-28', NULL, NULL, '2021-01-29 20:40:48', '2021-01-29 20:40:48'),
(1207, 9, 18, '50803', 'Correctivo', '0', NULL, '2 soportes de motor LH', '367.368', '2020-07-12', NULL, NULL, '2021-01-30 00:41:42', '2021-01-30 00:41:42'),
(1208, 9, 48, '50803', 'Correctivo', '0', NULL, 'Compra 2 Soportes de motor LH', '367.368', '2020-07-12', NULL, NULL, '2021-01-30 00:42:43', '2021-01-30 00:42:43'),
(1209, 54, 19, '7920', 'Preventivo', '0', NULL, 'Lavado parcial', '33.000', '2020-08-01', NULL, NULL, '2021-01-30 00:48:47', '2021-01-30 00:48:47'),
(1210, 54, 18, '7921', 'Preventivo', '0', NULL, 'Lavado parcial', '33.000', '2020-08-01', NULL, NULL, '2021-01-30 00:51:03', '2021-01-30 00:51:03'),
(1211, 54, 48, '7922', 'Preventivo', '0', NULL, 'Lavado parcial', '33.000', '2020-08-01', NULL, NULL, '2021-01-30 00:52:12', '2021-01-30 00:52:12'),
(1212, 54, 35, '7924', 'Preventivo', '0', NULL, 'Lavado general a alta presión', '35.000', '2020-08-01', NULL, NULL, '2021-01-30 00:53:22', '2021-01-30 00:53:22'),
(1213, 54, 34, '7951', 'Preventivo', '0', NULL, 'Lavado general a presión', '35.000', '2020-08-14', NULL, NULL, '2021-01-30 00:54:12', '2021-01-30 00:54:12'),
(1214, 54, 14, '7982', 'Preventivo', '0', NULL, 'Lavado general a alta presión', '85.000', '2020-08-26', NULL, NULL, '2021-01-30 00:56:36', '2021-01-30 00:56:36'),
(1215, 54, 54, '7926', 'Preventivo', '0', NULL, 'Lavado parcial', '33.000', '2020-08-03', NULL, NULL, '2021-01-30 00:58:25', '2021-01-30 00:58:25'),
(1216, 9, 48, '3640', 'Correctivo', '0', NULL, '2 Pastillas de freno delanteras, 2 pastillas de freno trasera', '310.628', '2020-09-16', NULL, NULL, '2021-01-30 01:08:42', '2021-01-30 01:08:42'),
(1217, 9, 55, '3640', 'Correctivo', '0', NULL, '1 convertidor de presión', '331.251', '2020-09-16', NULL, NULL, '2021-01-30 01:16:52', '2021-01-30 01:16:52'),
(1218, 111, 16, '1809', 'Correctivo', '0', NULL, '1 Electro bus (Extractor) 24 voltios', '280.000', '2020-10-02', NULL, NULL, '2021-01-30 01:24:43', '2021-01-30 01:24:43'),
(1219, 111, 24, '1809', 'Correctivo', '0', NULL, '2 Electro bus (Extractor)', '560.000', '2020-10-02', NULL, NULL, '2021-01-30 01:26:03', '2021-01-30 01:26:03'),
(1220, 111, 11, '1778', 'Correctivo', '0', NULL, '2 Electro bus (Extractor)', '560.000', '2020-09-09', NULL, NULL, '2021-01-30 01:27:44', '2021-01-30 01:27:44'),
(1221, 54, 11, '8076', 'Preventivo', '0', NULL, 'Lavado parcial solo por debajo', '48.000', '2020-09-28', NULL, NULL, '2021-01-30 01:29:56', '2021-01-30 01:29:56'),
(1222, 54, 27, '8077', 'Preventivo', '0', NULL, 'Lavado general a alta presión', '65.000', '2020-09-28', NULL, NULL, '2021-01-30 01:30:50', '2021-01-30 01:30:50'),
(1223, 152, 5, '21280', 'Correctivo', '0', NULL, '1 Polea patín canal B', '87.077', '2020-10-21', NULL, NULL, '2021-01-30 01:36:02', '2021-01-30 01:36:02'),
(1225, 152, 12, '21280', 'Correctivo', '0', NULL, '1 Polea patín canal B', '87.077', '2020-10-21', NULL, NULL, '2021-01-30 01:38:26', '2021-01-30 01:38:26'),
(1226, 152, 13, '21280', 'Correctivo', '0', NULL, '1 Polea patín canal B', '87.077', '2020-10-21', NULL, NULL, '2021-01-30 01:39:23', '2021-01-30 01:39:23'),
(1227, 152, 14, '21280', 'Correctivo', '0', NULL, '1 Polea patín canal B', '87.077', '2020-10-21', NULL, NULL, '2021-01-30 01:40:06', '2021-01-30 01:40:06'),
(1228, 153, 36, '1222', 'Preventivo', '0', NULL, '1 Aislador de cabina para buseta (Emergencia sanitaria COVID-19)', '150.000', '2020-10-26', NULL, NULL, '2021-01-30 01:43:43', '2021-01-30 01:43:43'),
(1229, 153, 18, '1222', 'Preventivo', '0', NULL, '1 Aislador de cabina para buseta (Emergencia sanitaria COVID-19)', '150.000', '2020-10-26', NULL, NULL, '2021-01-30 01:47:21', '2021-01-30 01:47:21'),
(1230, 131, 5, '5212', 'Correctivo', '0', NULL, '1 Polea', '65.000', '2020-10-28', NULL, NULL, '2021-01-30 01:54:38', '2021-01-30 01:54:38'),
(1231, 131, 12, '5212', 'Correctivo', '0', NULL, '1 Polea', '65.000', '2020-10-28', NULL, NULL, '2021-01-30 01:55:20', '2021-01-30 01:55:20'),
(1232, 131, 13, '5212', 'Correctivo', '0', NULL, '1 Polea', '65.000', '2020-10-28', NULL, NULL, '2021-01-30 01:57:46', '2021-01-30 01:57:46'),
(1233, 131, 14, '5212', 'Correctivo', '0', NULL, '1 Polea', '65.000', '2020-10-28', NULL, NULL, '2021-01-30 01:58:37', '2021-01-30 01:58:37'),
(1234, 131, 25, '5212', 'Correctivo', '0', NULL, '1 Polea', '65.000', '2020-10-28', NULL, NULL, '2021-01-30 01:59:09', '2021-01-30 01:59:09'),
(1235, 131, 39, '5212', 'Correctivo', '0', NULL, '1 Polea', '65.000', '2020-10-28', NULL, NULL, '2021-01-30 01:59:38', '2021-01-30 01:59:38'),
(1236, 154, 34, '102', 'Preventivo', '0', NULL, '1 Servicio de desinfección de vehículo', '25.000', '2020-11-07', NULL, NULL, '2021-01-30 02:02:48', '2021-01-30 02:02:48'),
(1237, 154, 35, '102', 'Preventivo', '0', NULL, '1 Servicio de desinfección de vehículo', '25.000', '2020-11-07', NULL, NULL, '2021-01-30 02:03:29', '2021-01-30 02:03:29'),
(1238, 151, 12, '11228', 'Preventivo', '0', NULL, '4 mts duplex 2/18', '6.000', '2021-01-11', NULL, NULL, '2021-01-30 02:06:42', '2021-01-30 02:08:06'),
(1239, 151, 5, '11228', 'Preventivo', '0', NULL, '4 mts duplex 2/18, 1 cinta aislante grande', '11.000', '2021-01-11', NULL, NULL, '2021-01-30 02:09:26', '2021-01-30 02:09:26'),
(1240, 69, 24, '107231', 'Preventivo', '0', NULL, '1 Resoacel 15 cm', '5.000', '2020-11-16', NULL, NULL, '2021-01-30 02:11:51', '2021-01-30 02:11:51'),
(1241, 69, 25, '107231', 'Preventivo', '0', NULL, '1 Resoacel 15 cm', '5.000', '2020-11-16', NULL, NULL, '2021-01-30 02:12:56', '2021-01-30 02:12:56'),
(1242, 99, 25, '0245', 'Correctivo', '0', NULL, 'Reparación alternador', '100.000', '2020-11-18', NULL, NULL, '2021-01-30 02:25:07', '2021-01-30 02:25:07'),
(1243, 99, 5, '0245', 'Correctivo', '0', NULL, 'Reparación alternador aire acondicionado', '100.000', '2020-11-18', NULL, NULL, '2021-01-30 02:26:04', '2021-01-30 02:26:11'),
(1244, 5, 21, '171167', 'Preventivo', '0', NULL, '1 Correa automotriz referencia 6PK1815, 1 correa automotriz referencia 17380', '94.000', '2020-11-30', NULL, NULL, '2021-01-30 02:30:50', '2021-01-30 02:30:50'),
(1245, 5, 18, '171167', 'Preventivo', '0', NULL, '0.50mt manguera caucho y lona, 2 cremalleras referencia #006 7/16 3/4', '9.500', '2020-11-30', NULL, NULL, '2021-01-30 02:52:15', '2021-01-30 02:52:15'),
(1246, 51, 32, '420', 'Preventivo', '0', NULL, '1 Stopa 400 gr simoniz, 1 pasta pulidora', '28.000', '2020-12-23', NULL, NULL, '2021-01-30 02:55:22', '2021-01-30 02:55:22'),
(1247, 51, 37, '420', 'Preventivo', '0', NULL, '1 Stopa 400gr simoniz, 1 pasta pulidora', '28.000', '2020-12-23', NULL, NULL, '2021-01-30 02:56:21', '2021-01-30 02:56:21'),
(1248, 151, 13, '11249', 'Preventivo', '0', NULL, '1/2 Sikaflex', '15.750', '2021-01-16', NULL, NULL, '2021-02-01 17:24:57', '2021-02-01 17:24:57'),
(1249, 151, 14, '11249', 'Preventivo', '0', NULL, '1/2 Sikaflex', '15.750', '2021-01-16', NULL, NULL, '2021-02-01 17:25:58', '2021-02-01 17:25:58'),
(1250, 62, 32, '524', 'Correctivo', '0', NULL, '1 Bomba clutch principal', '192.000', '2020-12-01', NULL, NULL, '2021-02-01 18:04:45', '2021-02-01 18:04:45'),
(1251, 51, 37, '21122', 'Preventivo', '0', NULL, '1 Bombillo bayoneta amarillo referencia 3156', '10.000', '2020-10-15', NULL, NULL, '2021-02-01 18:13:57', '2021-02-01 18:13:57'),
(1252, 32, 55, '0580', 'Correctivo', '0', NULL, '1 Diagnostico y escaneado de vehículo,1 sensor de presión de sobrealimentación para turbo compresor, 1 cambio sensor de presión, 1 cambio convertidor de presión, 1limpieza y calibración electronica de inyectores en marcha, 1 suministro repuestos (mano de obra)', '327.000', '2020-09-28', NULL, NULL, '2021-02-01 20:17:04', '2021-02-01 20:17:04'),
(1253, 9, 55, '233470', 'Correctivo', '0', NULL, '1 convertidor de presión referencia 515, 1 tensor de cadena referencia 515', '894.813', '2020-09-28', NULL, NULL, '2021-02-01 21:58:38', '2021-02-01 21:58:38'),
(1254, 10, 55, '654', 'Correctivo', '0', NULL, '2 axial, 2 terminal LH y RH, 1 pastilla delantera, 1 pastilla trasera', '684.250', '2020-09-01', NULL, NULL, '2021-02-01 22:02:18', '2021-02-01 22:02:18'),
(1255, 10, 55, '836', 'Correctivo', '0', NULL, '2 Rotula, 2 amortiguador trasero', '540.002', '2020-11-05', NULL, NULL, '2021-02-01 22:03:20', '2021-02-01 22:03:20'),
(1256, 9, 55, '50802', 'Correctivo', '0', NULL, '1 Regulador alternado sprinter 515', '468.819', '2020-07-12', NULL, NULL, '2021-02-01 22:05:14', '2021-02-01 22:05:14'),
(1257, 51, 55, '179', 'Preventivo', '0', NULL, '2 Bombillo 1141 en LED', '20.000', '2020-11-19', NULL, NULL, '2021-02-01 22:06:16', '2021-02-01 22:06:16'),
(1258, 68, 55, '41868', 'Preventivo', '0', NULL, '3 tornillos Hex G5 negro, 3 tuerca hex gr negra, 3 tornillo hex g5 negro', '8.040', '2020-12-28', NULL, NULL, '2021-02-01 22:08:02', '2021-02-01 22:08:02'),
(1259, 99, 55, '0292', 'Correctivo', '0', NULL, 'Cremallera de motor de arranque Mercedes 515', '120.000', '2021-01-25', NULL, NULL, '2021-02-01 22:09:03', '2021-02-01 22:09:03'),
(1260, 44, 17, '1080515', 'Preventivo', '0', NULL, '1 Montaje de rueda', '15.000', '2020-12-21', NULL, NULL, '2021-02-01 22:26:18', '2021-02-01 22:26:18'),
(1261, 32, 18, '0579', 'Correctivo', '0', NULL, '1 Escaneado y diagnostico, 1 diagnostico testigo de motor a causa de caudalimetro averiado, 1 suministro de repuesto (mano de obra)', '137.000', '2020-09-28', NULL, NULL, '2021-02-02 01:01:20', '2021-02-02 01:01:20'),
(1262, 10, 18, '837', 'Correctivo', '0', NULL, '2 Amortiguadores', '360.001', '2020-11-05', NULL, NULL, '2021-02-02 01:02:20', '2021-02-02 01:02:20'),
(1263, 9, 18, '50521', 'Correctivo', '0', NULL, '1 Tensor de correa', '567.446', '2020-11-18', NULL, NULL, '2021-02-02 01:03:13', '2021-02-02 01:03:13'),
(1264, 156, 18, '337', 'Correctivo', '0', NULL, '1 Bomba de agua', '350.000', '2020-11-20', NULL, NULL, '2021-02-02 01:06:39', '2021-02-02 01:06:39'),
(1265, 127, 18, '000187', 'Preventivo', '0', NULL, '2 Manguera caucho y lona', '18.000', '2020-12-16', NULL, NULL, '2021-02-02 01:07:36', '2021-02-02 01:07:36'),
(1266, 130, 18, '1457', 'Preventivo', '0', NULL, '2 Refrigerante', '60.000', NULL, NULL, NULL, '2021-02-02 01:21:42', '2021-02-02 01:21:42'),
(1267, 61, 21, '9072', 'Preventivo', '0', NULL, '3 Bandas freno de mano', '30.000', '2020-09-10', NULL, NULL, '2021-02-02 01:49:01', '2021-02-02 01:49:01'),
(1268, 11, 21, '0446', 'Preventivo', '0', NULL, '1 Polarizado', '120.000', '2020-10-13', NULL, NULL, '2021-02-02 01:50:05', '2021-02-02 01:50:05'),
(1269, 2, 21, '0', 'Preventivo', '0', NULL, 'Compra 50cm de manguera de retorno', '20.000', '2020-10-15', NULL, NULL, '2021-02-02 02:20:24', '2021-02-02 02:20:24'),
(1270, 21, 22, '2643', 'Correctivo', '0', NULL, '2 Cauchos soporte de barra, 6 cauchos soporte de punta', '116.000', '2020-10-06', NULL, NULL, '2021-02-02 03:09:36', '2021-02-02 03:09:36'),
(1271, 51, 22, '21024', 'Preventivo', '0', NULL, '1 bombillo h7', '15.000', '2020-10-07', NULL, NULL, '2021-02-02 03:10:34', '2021-02-02 03:10:34'),
(1272, 11, 22, '0456', 'Preventivo', '0', NULL, '1 polarizado', '100.000', '2020-10-18', NULL, NULL, '2021-02-02 03:12:33', '2021-02-02 03:12:33'),
(1273, 12, 22, '10261', 'Correctivo', '0', NULL, '2 tanques de radiador y 1 tapa para radiador', '571.800', '2020-12-16', NULL, NULL, '2021-02-02 03:15:24', '2021-02-02 03:15:24'),
(1274, 7, 22, '37125', 'Correctivo', '0', NULL, '1 termostato motor 82°C', '99.701', '2021-01-04', NULL, NULL, '2021-02-02 03:16:22', '2021-02-02 03:16:22'),
(1275, 15, 20, '504', 'Preventivo', '0', NULL, '1 Recarga 20 155', '23.800', '2020-11-26', NULL, NULL, '2021-02-02 03:29:17', '2021-02-02 03:29:17'),
(1276, 62, 19, '388', 'Preventivo', '0', NULL, '25 Liquido de freno AT Alemán 1/4', '72.000', '2020-10-08', NULL, NULL, '2021-02-02 03:42:55', '2021-02-02 03:42:55'),
(1277, 62, 19, '390', 'Preventivo', '0', NULL, '2 Juego de bandas freno de emergencia remachadas', '36.000', '2020-10-08', NULL, NULL, '2021-02-02 03:43:41', '2021-02-02 03:43:41'),
(1278, 157, 19, '1603', 'Preventivo', '0', NULL, '2 Cremallera galvanizada de 9/16 A 1', '7.000', '2020-10-17', NULL, NULL, '2021-02-02 03:47:06', '2021-02-02 03:47:06'),
(1279, 9, 19, '50170', 'Correctivo', '0', NULL, '1 tubuladora de refrigeración', '337.436', '2020-10-23', NULL, NULL, '2021-02-02 03:52:35', '2021-02-02 03:52:35'),
(1280, 156, 19, '165', 'Correctivo', '0', NULL, '1 Bomba de agua', '350.000', '2020-10-29', NULL, NULL, '2021-02-02 03:55:44', '2021-02-02 03:55:44'),
(1281, 5, 19, '171632', 'Preventivo', '0', NULL, '3 Manguera caucho y lona 3/8, 2 cremallera #08/ 1/2-7/8', '33.000', '2020-12-15', NULL, NULL, '2021-02-02 03:56:53', '2021-02-02 03:56:53'),
(1282, 9, 19, '51046', 'Correctivo', '0', NULL, '1 Union para tubos 515, 1 empaque de culata 515, 1 termostato', '937.244', '2020-12-22', NULL, NULL, '2021-02-02 03:58:13', '2021-02-02 03:58:13'),
(1283, 130, 19, '1301', 'Preventivo', '0', NULL, '3 Refrigerante rojo 1/6', '45.000', '2020-12-24', NULL, NULL, '2021-02-02 03:59:01', '2021-02-02 03:59:01'),
(1284, 36, 19, '1710008145', 'Correctivo', '0', NULL, '1 Termostato', '270.323', '2020-12-28', NULL, NULL, '2021-02-02 03:59:46', '2021-02-02 03:59:46'),
(1285, 62, 5, '357', 'Correctivo', '0', NULL, '3 Buje muelle bimetalico, 2 pasador muelle hino, 3 grasera', '96.000', '2020-09-18', NULL, NULL, '2021-02-02 17:22:20', '2021-02-02 17:22:20'),
(1286, 117, 5, '879', 'Correctivo', '0', NULL, '1 ensamble manguera acople split 50cm, 2 ensamble manguera y conjunto acople split gris, 3 válvula corta split, 2 curva cromada cm, 1 tapa cubrerotor cromada cm, 3 cono ajuste manguera, 2 manguera vigia EP143 1/4', '231.400', '2020-09-19', NULL, NULL, '2021-02-02 17:25:40', '2021-02-02 17:25:40'),
(1287, 51, 5, '20805', 'Preventivo', '0', NULL, '12 copas', '36.000', '2020-09-23', NULL, NULL, '2021-02-02 17:26:18', '2021-02-02 17:26:18'),
(1288, 158, 5, '0579', 'Preventivo', '0', NULL, '12 copas , 1 silicona', '44.000', '2020-09-23', NULL, NULL, '2021-02-02 18:00:32', '2021-02-02 18:00:32'),
(1289, 131, 5, '5173', 'Correctivo', '0', NULL, '1 Plato válvula completo delantero TM31, 1 plato de válvula completo trasero TM31, 1 sello de compresor', '428.400', '2020-09-29', NULL, NULL, '2021-02-02 18:11:13', '2021-02-02 18:11:13'),
(1290, 11, 5, '0455', 'Preventivo', '0', NULL, '1 Polarizado (busetón)', '120.000', '2020-10-18', NULL, NULL, '2021-02-02 18:12:05', '2021-02-02 18:12:05'),
(1291, 56, 5, '170428', 'Preventivo', '0', NULL, '1 Correa automotriz referencia 17385', '24.000', '2020-11-05', NULL, NULL, '2021-02-02 18:15:06', '2021-02-02 18:15:06'),
(1292, 51, 5, '71', 'Preventivo', '0', NULL, '6 tornillos de lujos 6mm cromados, 1 lamina acero marcada', '45.000', '2020-11-06', NULL, NULL, '2021-02-02 18:16:35', '2021-02-02 18:16:35'),
(1293, 51, 5, '21250', 'Preventivo', '0', NULL, '1 juego de scrpres con base, 1 juego de velas (luces), obra de mano', '344.000', '2020-10-23', NULL, NULL, '2021-02-02 18:24:25', '2021-02-02 18:24:25'),
(1294, 51, 5, '183', 'Correctivo', '0', NULL, '9 Cable vehpicular 14 centelsa safreno, 1 silicona negra, 1 mano de obra', '38.200', '2020-11-19', NULL, NULL, '2021-02-02 18:26:33', '2021-02-02 18:26:33'),
(1295, 138, 5, '2424', 'Correctivo', '0', NULL, 'Bajada de 4 ruedas, 1 grasa grande, freno y remachada de retenedores', '345.000', '2020-11-24', NULL, NULL, '2021-02-02 18:29:14', '2021-02-02 18:29:14'),
(1296, 2, 5, '0245', 'Preventivo', '0', NULL, '1 Silicona Roja', '5.000', '2020-11-24', NULL, NULL, '2021-02-02 18:31:51', '2021-02-02 18:31:51'),
(1297, 51, 12, '20650', 'Preventivo', '0', NULL, '12 tapa  lujo', '36.000', '2020-09-12', NULL, NULL, '2021-02-02 20:17:33', '2021-02-02 20:17:33'),
(1298, 51, 12, '20659', 'Preventivo', '0', NULL, '6 tapa ejes', '18.000', '2020-09-14', NULL, NULL, '2021-02-02 20:18:01', '2021-02-02 20:18:01'),
(1299, 159, 12, '140', 'Preventivo', '0', NULL, '1 Lavado por debajo del motor', '25.000', '2020-09-20', NULL, NULL, '2021-02-02 20:21:21', '2021-02-02 20:21:21'),
(1300, 62, 12, '366', 'Preventivo', '0', NULL, '2 Correa planta DAYCO', '76.000', '2020-09-23', NULL, NULL, '2021-02-02 20:22:02', '2021-02-02 20:22:02'),
(1301, 149, 12, '3772', 'Preventivo', '0', NULL, '1 Esmalte maestro, 1 esmalte especial, 1 thiner P 1/2, 1 cinta soco 3/4\"', '76.000', '2020-10-10', NULL, NULL, '2021-02-02 20:24:00', '2021-02-02 20:24:00'),
(1302, 109, 12, '1100862', 'Preventivo', '0', NULL, 'Peaje Rio Sogamoso y lebrija', '18.500', '2020-10-12', NULL, NULL, '2021-02-02 20:25:09', '2021-02-02 20:25:09'),
(1303, 160, 12, '60066', 'Correctivo', '0', NULL, '4 Amortiguadores', '472.000', '2020-10-13', NULL, NULL, '2021-02-02 20:28:52', '2021-02-02 20:28:52'),
(1304, 131, 12, '5192', 'Correctivo', '0', NULL, '2 Poleas', '130.000', '2020-10-14', NULL, NULL, '2021-02-02 20:29:52', '2021-02-02 20:29:52'),
(1305, 92, 12, '1836', 'Correctivo', '0', NULL, 'Cambio de amortiguadores delanteros', '20.000', '2020-10-15', NULL, NULL, '2021-02-02 20:30:48', '2021-02-02 20:30:48'),
(1306, 139, 12, '4606', 'Preventivo', '0', NULL, '1 Silicona gris tablero, 1 limpiador electronico, 1/6 refrigerante americano', '108.500', '2020-10-15', NULL, NULL, '2021-02-02 20:32:18', '2021-02-02 20:32:18'),
(1307, 90, 12, '742', 'Correctivo', '0', NULL, 'Sondeo de radiador y lavado interfuller, lavado de catalizadores, bajada de admisión y catalizadores, válvula EGR, mantenimiento módulo EGR, mantenimiento pachas inyección, trampa de combustible y adaptación', '1.200.000', '2020-10-15', NULL, NULL, '2021-02-02 20:34:17', '2021-02-02 20:34:17'),
(1309, 90, 12, '743', 'Correctivo', '0', NULL, 'Empaque de la admisión y domicilio, gasolina, silicona grey, scaner y arreglo freno de ahogo', '205.000', '2020-10-15', NULL, NULL, '2021-02-02 20:36:36', '2021-02-02 20:36:36'),
(1310, 36, 12, '1710007496', 'Preventivo', '0', NULL, '2 Diagnóstico, reprogramación ECU motor, insumos taller HINO', '298.001', '2020-10-15', NULL, NULL, '2021-02-02 20:38:13', '2021-02-02 20:38:13'),
(1311, 5, 12, '170002', 'Preventivo', '0', NULL, '1 Correa automotriz referencia 22395', '35.000', '2020-10-20', NULL, NULL, '2021-02-02 20:39:01', '2021-02-02 20:39:01'),
(1312, 159, 12, '536', 'Preventivo', '0', NULL, '1 Aspirada de sillas', '15.000', '2020-10-21', NULL, NULL, '2021-02-02 20:39:37', '2021-02-02 20:39:37'),
(1313, 4, 12, '122', 'Correctivo', '0', NULL, '1 Corono tipo bosch', '180.000', '2020-11-05', NULL, NULL, '2021-02-02 20:40:18', '2021-02-02 20:40:18'),
(1314, 62, 12, '486', 'Preventivo', '0', NULL, '1 Retenedor delantero HINO, 2 chupas HINO', '47.000', '2020-11-19', NULL, NULL, '2021-02-02 21:34:33', '2021-02-02 21:34:33'),
(1315, 51, 12, '0104', 'Correctivo', '0', NULL, 'Mano de obra, 0.45 de cinta LED blanca, encendedor de cigarrilo 24v, 1 cable duplex delgado, 3 fusible 30 hella, 8 terminal de parlante mediano', '63.650', '2020-12-07', NULL, NULL, '2021-02-02 21:41:45', '2021-02-02 21:41:45'),
(1316, 135, 12, '1883', 'Correctivo', '0', NULL, '1 Correa compresorm servicio por cambio de embrague', '140.000', '2020-12-14', NULL, NULL, '2021-02-02 21:43:04', '2021-02-02 21:43:04'),
(1317, 5, 12, '171607', 'Preventivo', '0', NULL, '1 Correa automotriz referencia 22395', '35.000', '2020-12-14', NULL, NULL, '2021-02-02 21:50:17', '2021-02-02 21:50:17'),
(1318, 161, 12, 'FEAF74', 'Correctivo', '0', NULL, '1 Kit TM31 (Polea y clutch del aire acondicionado)', '380.000', '2021-01-05', NULL, NULL, '2021-02-02 21:58:59', '2021-02-02 21:58:59'),
(1319, 162, 12, '425571', 'Preventivo', '0', NULL, '1 Pomo para polichar', '15.000', '2021-01-16', NULL, NULL, '2021-02-02 22:01:22', '2021-02-02 22:01:22'),
(1320, 163, 12, '12152', 'Preventivo', '0', NULL, '1 Polimento', '15.000', '2021-01-16', NULL, NULL, '2021-02-02 22:05:25', '2021-02-02 22:05:25'),
(1321, 164, 12, '4039', 'Preventivo', '0', NULL, '1 Cera', '20.000', '2021-01-16', NULL, NULL, '2021-02-02 22:08:08', '2021-02-02 22:08:08'),
(1322, 117, 13, '880', 'Correctivo', '0', NULL, '1 Ensamble mang. acople split 50cms, 1 válvula corta split', '53.000', '2020-09-19', NULL, NULL, '2021-02-02 22:21:01', '2021-02-02 22:21:01'),
(1323, 62, 13, '365', 'Preventivo', '0', NULL, '2 grasera, 2 pasador muelle HINO, 4 buje muelle bimetalico, 1 silicona gris loctite, 2 retenedor trasero HINO, 2 retenedor delantero HINO, 12 chupas HINO, 3 rodillo japon', '703.000', '2020-09-23', NULL, NULL, '2021-02-02 22:23:09', '2021-02-02 22:23:09'),
(1324, 62, 13, '398', 'Correctivo', '0', NULL, '1 hoja muelle segunda vuelta', '374.000', '2020-10-19', NULL, NULL, '2021-02-02 22:24:47', '2021-02-02 22:24:47'),
(1325, 5, 13, '169997', 'Preventivo', '0', NULL, '1 Correa automotriz referencia 22395', '35.000', '2020-10-20', NULL, NULL, '2021-02-02 22:26:16', '2021-02-02 22:26:16'),
(1326, 127, 13, '0000206', 'Preventivo', '0', NULL, '1 Oring', '3.500', '2020-12-24', NULL, NULL, '2021-02-02 22:27:35', '2021-02-02 22:27:35'),
(1327, 117, 14, '881', 'Correctivo', '0', NULL, '1 Ensamble manguera acople split 50 cms, 1 válvula corta split', '53.000', '2020-09-19', NULL, NULL, '2021-02-03 00:19:45', '2021-02-03 00:19:45'),
(1328, 11, 14, '0453', 'Preventivo', '0', NULL, '1 Polarizado', '120.000', '2020-10-16', NULL, NULL, '2021-02-03 00:20:19', '2021-02-03 00:20:19'),
(1329, 51, 14, '0246', 'Preventivo', '0', NULL, '1 Cera vista limpia fondo, 1 ambientador kramer', '45.000', '2021-01-07', NULL, NULL, '2021-02-03 00:25:03', '2021-02-03 00:25:03'),
(1330, 131, 23, '5200', 'Correctivo', '0', NULL, '1 Compresor 7H15', '1.150.000', '2020-10-20', NULL, NULL, '2021-02-03 01:17:48', '2021-02-03 01:17:48'),
(1331, 4, 24, '77', 'Correctivo', '0', NULL, '1 Portaescobillas Alt. Toyota Vigo, 1 regulador Mercedez 5 pines', '152.000', '2020-10-22', NULL, NULL, '2021-02-03 02:20:14', '2021-02-03 02:20:14'),
(1332, 61, 24, '9337', 'Correctivo', '0', NULL, '1 Kit de embrague HINO 300', '1.315.400', '2020-10-27', NULL, NULL, '2021-02-03 03:51:11', '2021-02-03 03:51:29'),
(1333, 62, 24, '453', 'Correctivo', '0', NULL, '1 Empaquetadura clutch principal', '90.000', '2020-11-09', NULL, NULL, '2021-02-03 03:52:35', '2021-02-03 03:52:35'),
(1334, 150, 24, '4202', 'Correctivo', '0', NULL, 'Sondeo y reparación de radiador y hacer tanque inferior de radiador en aluminio', '250.000', '2020-11-18', NULL, NULL, '2021-02-03 03:53:53', '2021-02-03 03:53:53'),
(1335, 156, 24, '365', 'Correctivo', '0', NULL, '1 Bomba de agua', '350.000', '2020-11-23', NULL, NULL, '2021-02-03 03:54:37', '2021-02-03 03:54:37'),
(1336, 165, 24, '0512', 'Correctivo', '0', NULL, '4 cambio de camisillas, 16 rectificaciones de válvula, 16 cambio guías, prueba hidrostática de bloque, 1 cepillar corregir altura de bloque, 4 cambios buje biela, 3 cambio buje eje de levas, 1 pulir cigueñal, 1 alineación de bancada, 16 cambios de asientos', '2.000.000', '2020-11-23', NULL, NULL, '2021-02-03 03:59:27', '2021-02-03 03:59:27'),
(1337, 165, 24, '0514', 'Correctivo', '0', NULL, '16 suministro de guías, 16 suministros asientos de escape y admisión, 4 camisillas con cauchos, válvulas', '2.000.000', '2020-11-23', NULL, NULL, '2021-02-03 04:00:39', '2021-02-03 04:00:39'),
(1338, 109, 24, '1129056', 'Preventivo', '0', NULL, 'Peajes: Rio sogamoso, Lebrija, Rio Sogamoso', '28.200', '2020-11-23', NULL, NULL, '2021-02-03 04:02:29', '2021-02-03 04:02:29'),
(1339, 142, 24, '200986', 'Correctivo', '0', NULL, '2 Esfericas inferior HILUX, 2 esfericas superior HILUX', '380.000', '2020-11-25', NULL, NULL, '2021-02-03 04:03:23', '2021-02-03 04:03:23'),
(1340, 36, 24, '1710007852', 'Correctivo', '0', NULL, '1 Juego empaque motor S-300, 4 camisa motor S-710/S-300/FC, 2 Soporte motor del S-720/S-300, 4 juego anillo x piston, 1 juego de biela,1 juego metal bancada STD, 1 metal axial STD, 4 buje biela motor S-710, 1 metal leva #1 S-600/S-710, 1 metal leva #2 S-600/S-710, 1 metal leva #3 S-600/S-710, 1 termostato S-720/S-600', '6.363.342', '2020-11-25', NULL, NULL, '2021-02-03 04:15:12', '2021-02-03 04:15:12'),
(1341, 90, 24, '791', 'Correctivo', '0', NULL, 'Reparación del motor, mantenimiento válvula EGR, escaneo y mantenimiento instalación', '1.760.000', '2020-11-27', NULL, NULL, '2021-02-03 04:16:35', '2021-02-03 04:16:35'),
(1342, 90, 24, '792', 'Correctivo', '0', NULL, 'Empaque del carter, empaque enfriador de aceite, domicilio, gasolina, iniciada', '150.000', '2020-11-27', NULL, NULL, '2021-02-03 04:17:36', '2021-02-03 04:17:36'),
(1343, 150, 24, '4218', 'Correctivo', '0', NULL, 'Lavado de catalizador', '80.000', '2020-11-27', NULL, NULL, '2021-02-03 04:18:14', '2021-02-03 04:18:14'),
(1344, 166, 24, '4042', 'Preventivo', '0', NULL, '1 Montaje de llantas', '15.000', '2020-11-27', NULL, NULL, '2021-02-03 04:21:16', '2021-02-03 04:21:16'),
(1345, 139, 24, '4732', 'Correctivo', '0', NULL, '1 papel, 1/4 rimula, 2 papel, 2 grasa, 2 chaveta 3/16, 2 retenedor 69099, 2 juegos chupas, 1 balinera 6303, 2 papel, 1 correa referencia 17490, 1 correa referencia 17380, 1 correa referencia BX52, 1 filtro combustible, 2/9 mobil, 1/4 mobil, 1 filtro de aceite, 6/4 refrigerante', '549.500', '2020-11-27', NULL, NULL, '2021-02-03 04:29:10', '2021-02-03 04:29:10'),
(1346, 92, 24, '1870', 'Correctivo', '0', NULL, 'Bajada 4 ruedas para mantenimiento cambio chupas, grasa', '120.000', '2020-11-27', NULL, NULL, '2021-02-03 04:30:04', '2021-02-03 04:30:04'),
(1348, 15, 23, '539', 'Preventivo', '0', NULL, '1 Recarga 10 lbs multiproposito', '12.000', '2020-12-12', NULL, NULL, '2021-02-03 04:34:40', '2021-02-03 04:34:40'),
(1349, 15, 24, '542', 'Preventivo', '0', NULL, '1 Recarga de 10 lbs', '14.280', '2020-12-14', NULL, NULL, '2021-02-03 04:35:54', '2021-02-03 04:35:54'),
(1350, 12, 24, '10275', 'Correctivo', '0', NULL, 'Tapa para radiador, 2 abrazadera', '71.400', '2020-12-28', NULL, NULL, '2021-02-03 04:36:59', '2021-02-03 04:36:59'),
(1351, 161, 24, 'FEAF73', 'Correctivo', '0', NULL, 'Patin completo, mano de obra', '75.001', '2021-01-05', NULL, NULL, '2021-02-03 04:37:52', '2021-02-03 04:37:52'),
(1352, 62, 25, '454', 'Preventivo', '0', NULL, '1 Empaquetadura clutch principal', '90.000', '2020-11-09', NULL, NULL, '2021-02-03 04:46:52', '2021-02-03 04:46:52'),
(1353, 62, 25, '386', 'Correctivo', '0', NULL, '4 Esparrago trasero', '112.000', '2020-10-08', NULL, NULL, '2021-02-03 04:48:14', '2021-02-03 04:48:14'),
(1354, 61, 25, '9338', 'Correctivo', '0', NULL, '1 Kit de embrague HINO 300', '1.315.400', '2020-10-27', NULL, NULL, '2021-02-03 04:52:29', '2021-02-03 04:52:49'),
(1355, 53, 25, '0150', 'Correctivo', '0', NULL, 'Bobinado de correa bosch A.C', '130.000', '2020-12-22', NULL, NULL, '2021-02-03 04:57:50', '2021-02-03 04:57:50'),
(1356, 73, 25, '25619', 'Correctivo', '0', NULL, '2 Plumillas 32\" 302-1320', '137.400', '2021-01-13', NULL, NULL, '2021-02-03 05:02:40', '2021-02-03 05:03:00'),
(1358, 62, 26, '270', 'Correctivo', '0', NULL, '2 Retenedor delantero NPR/NKR, 2 retenedor trasero de NPR giratorio, 2 retenedor trasero externo de NPR, 2 Rodillo delantero interno, 1 esparrago rueda, 1 liquido de freno AT alemán 1/4, 1 silicona gris loctite, 12 chupas freno', '409.000', '2020-07-16', NULL, NULL, '2021-02-03 05:20:14', '2021-02-03 05:20:14'),
(1359, 11, 26, '0443', 'Preventivo', '0', NULL, '1 Polarizado', '120.000', '2020-10-11', NULL, NULL, '2021-02-03 05:21:34', '2021-02-03 05:21:34'),
(1360, 2, 26, '0', 'Correctivo', '0', NULL, 'Manguera para radiador', '45.000', '2020-12-02', NULL, NULL, '2021-02-03 05:22:23', '2021-02-03 05:22:23'),
(1361, 139, 26, '4773', 'Correctivo', '0', NULL, '1 Barra estabilizadora NPR', '320.000', '2020-12-04', NULL, NULL, '2021-02-03 05:23:00', '2021-02-03 05:23:00'),
(1362, 10, 31, '750', 'Correctivo', '0', NULL, '2 terminal axial toyota hilux/vigo 4x2-4x4, 1 juego de muñeco x2', '400.001', '2020-10-03', NULL, NULL, '2021-02-03 05:30:03', '2021-02-03 05:30:03'),
(1363, 44, 27, '1075887', 'Preventivo', '0', NULL, '1 Montaje de rueda', '20.000', '2020-07-21', NULL, NULL, '2021-02-03 06:06:42', '2021-02-03 06:06:42'),
(1364, 62, 27, '367', 'Correctivo', '0', NULL, '4 Grasera, 6 buje muelle bimetalico, 4 pasador muelle HINO, 2 retenedor trasero externo, 2 retenedor trasero HINO, 2 retenedor delantero HINO, 3 rodillo japon', '695.000', '2020-09-23', NULL, NULL, '2021-02-03 06:10:52', '2021-02-03 06:10:52'),
(1365, 11, 27, '0445', 'Preventivo', '0', NULL, '1 Polarizado', '120.000', '2020-10-10', NULL, NULL, '2021-02-03 06:11:44', '2021-02-03 06:11:44'),
(1366, 167, 27, '149926924', 'Preventivo', '0', NULL, 'Revisión tecnicomecanica', '323.200', '2020-11-09', NULL, NULL, '2021-02-03 06:17:50', '2021-02-03 06:17:50'),
(1367, 168, 57, '73', 'Preventivo', '0', NULL, 'Decoración general, polarizado general papel antirayones y cinta roja blanca', '1.380.000', '2020-10-29', NULL, NULL, '2021-02-03 06:55:52', '2021-02-03 06:56:32'),
(1368, 169, 57, '0472', 'Preventivo', '0', NULL, 'Numeros en cinta de vinilo, instalada de cintas', '25.000', '2020-12-17', NULL, NULL, '2021-02-03 07:00:31', '2021-02-03 07:00:31'),
(1369, 170, 57, '5857', 'Preventivo', '0', NULL, '1 Juego cornetas', '400.000', '2020-12-23', NULL, NULL, '2021-02-03 07:02:32', '2021-02-03 07:02:32'),
(1370, 137, 57, '2230', 'Preventivo', '0', NULL, 'Soporte de velas y semaforos, instalación de gias', '130.000', '2020-12-26', NULL, NULL, '2021-02-03 07:10:36', '2021-02-03 07:10:36'),
(1371, 135, 34, '1877', 'Correctivo', '0', NULL, '1 Evaporador original, 1 aceite compresor,  refrigerante, servicio de desmontaje y montaje de tablero', '572.400', '2020-12-17', NULL, NULL, '2021-02-03 07:32:25', '2021-02-03 07:32:25'),
(1372, 51, 43, '428', 'Preventivo', '0', NULL, 'Mano de obra, 1 bombillo 3157 sin pata 12v blanco contacto NARVA, 1 juego guardapolvo semitractor', '90.000', '2020-12-26', NULL, NULL, '2021-02-03 17:50:37', '2021-02-03 17:50:37'),
(1373, 171, 43, '0122', 'Correctivo', '0', NULL, 'Lavado general', '30.000', '2020-12-26', NULL, NULL, '2021-02-03 17:55:00', '2021-02-03 17:55:14'),
(1374, 120, 43, '0000100092262', 'Preventivo', '0', NULL, 'Peajes  servicio Gamarra-Impala conductor Cristian E Florez', '41.800', '2020-06-28', NULL, NULL, '2021-02-03 17:58:35', '2021-02-03 17:58:35'),
(1375, 109, 43, '748660', 'Preventivo', '0', NULL, 'Peajes servicio Barrancabermeja-Girón Impala conductor Orlando', '25.300', '2020-06-01', NULL, NULL, '2021-02-03 18:00:25', '2021-02-03 18:00:25'),
(1376, 172, 47, '375851', 'Preventivo', '0', NULL, '8.017 galones de acpm', '65.499', '2020-05-14', NULL, NULL, '2021-02-03 18:29:40', '2021-02-03 18:29:40'),
(1377, 11, 47, '0278', 'Correctivo', '0', NULL, 'Limpieza de paral de leva para montaje de vidrio nuevo, 2 sikaflex', '200.340', '2020-08-16', NULL, NULL, '2021-02-03 18:30:45', '2021-02-03 18:30:45'),
(1378, 73, 47, '0000024675', 'Correctivo', '0', NULL, '1 vidrio tipo lagrima', '114.900', '2020-09-05', NULL, NULL, '2021-02-03 18:46:52', '2021-02-03 18:46:52'),
(1379, 11, 47, '0406', 'Correctivo', '0', NULL, 'Limpieza de vidrio e instalación de uno nuevo', '190.800', '2020-09-16', NULL, NULL, '2021-02-03 18:47:37', '2021-02-03 18:47:48'),
(1380, 5, 47, '169307', 'Preventivo', '0', NULL, '1 Correa automotriz referencia 22700, 1 correa automotriz referencia 22380', '90.000', '2020-09-25', NULL, NULL, '2021-02-03 18:49:35', '2021-02-03 18:49:35'),
(1382, 4, 47, '154', 'Correctivo', '0', NULL, '1 Master pollak referencia 51902', '130.000', '2020-11-21', NULL, NULL, '2021-02-03 18:53:03', '2021-02-03 18:53:03'),
(1383, 111, 16, '1802', 'Correctivo', '0', NULL, '1 Electro bus 1124v', '280.000', '2020-09-29', NULL, NULL, '2021-02-03 19:30:28', '2021-02-03 19:30:28'),
(1384, 149, 16, '3691', 'Preventivo', '0', NULL, '1 ESM BLER ES 1/8, 1 ESM BLER 1/8, 1 CINTA SOCO 3/4, 2 LIJA NEGRA, 1 THINER P BOTELLA', '29.000', '2020-10-08', NULL, NULL, '2021-02-03 19:33:01', '2021-02-03 19:33:01'),
(1385, 173, 16, '4187', 'Correctivo', '0', NULL, '1 Reparación bomba de agua Mercedez', '330.000', '2020-11-24', NULL, NULL, '2021-02-03 20:05:53', '2021-02-03 20:05:53'),
(1386, 2, 21, '0', 'Correctivo', '0', NULL, 'Desvare de vehículo a Bucaramanga por temperatura', '0', '2020-02-12', NULL, NULL, '2021-02-04 20:24:15', '2021-02-04 20:24:15'),
(1387, 9, 47, '1086', 'Preventivo', '0', NULL, 'Gestoria de vehículo $299.999, RUNT: derechos de licencia de transito, placa, trámite matricula inicial $35.100', '335.099', '2020-02-29', NULL, NULL, '2021-02-04 21:04:48', '2021-02-04 21:04:48'),
(1388, 62, 5, '69', 'Correctivo', '0', NULL, '1 Correa referencia 17335 DAYCO', '26.000', '2020-02-03', NULL, NULL, '2021-02-04 22:07:31', '2021-02-04 22:07:31'),
(1389, 59, 5, '8249', 'Correctivo', '0', NULL, 'Construcción de polea', '80.000', '2020-05-21', NULL, NULL, '2021-02-04 22:10:37', '2021-02-04 22:10:37'),
(1390, 101, 37, '5399', 'Preventivo', '0', NULL, 'Tuerca perno rueda, tornillo cubo rueda', '58.377', '2020-02-11', NULL, NULL, '2021-02-05 01:14:20', '2021-02-05 01:14:20'),
(1391, 23, 49, '1129', 'Correctivo', '0', NULL, 'Hechura forro de volante', '35.000', '2020-05-06', NULL, NULL, '2021-02-05 01:18:16', '2021-02-05 01:18:16'),
(1392, 45, 39, '29682', 'Correctivo', '0', NULL, 'BATERIA:3 Bateria Auto Mac 31H1200', '1.290.000', '2019-06-07', NULL, NULL, '2021-02-09 00:40:39', '2021-02-09 00:40:39'),
(1393, 29, 39, '0', 'Correctivo', '401.365', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 ACEITE DE MOTOR', '0', '2020-04-09', NULL, NULL, '2021-02-09 00:46:32', '2021-02-09 00:46:32'),
(1394, 29, 39, '0', 'Preventivo', '401.365', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 ACEITE DE MOTOR', '0', '2020-04-09', NULL, NULL, '2021-02-09 00:48:54', '2021-02-09 00:48:54'),
(1395, 29, 39, '6363', 'Preventivo', '413.501', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n2 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n8 1/4 ACEITE DE MOTOR', '141.000', '2020-07-28', NULL, NULL, '2021-02-09 00:50:30', '2021-02-09 00:50:30'),
(1396, 29, 39, '6488', 'Preventivo', '425.529', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n2 FILTRO DE TRAMPA\r\n9 1/4 ACEITE DE MOTOR', '141.000', '2020-10-26', NULL, NULL, '2021-02-09 00:51:40', '2021-02-09 00:51:40'),
(1397, 29, 39, '6601', 'Preventivo', '437.975', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n2 FILTRO DE TRAMPA\r\n10/4 ACEITE DE MOTOR', '141.000', '2021-02-01', NULL, NULL, '2021-02-09 00:54:10', '2021-02-09 00:54:10'),
(1398, 11, 39, '0378', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Cambio de pacha de fusible y corrección de cakentamiento del sistema electrico, 1 portafusible y fusible', '65.000', '2021-01-12', NULL, NULL, '2021-02-09 01:02:18', '2021-02-09 01:02:18'),
(1399, 45, 15, '2889', 'Preventivo', '0', NULL, 'BATERIA:2 Bateria Auto Mac 31T1250-31T1100', '884.000', '2020-11-10', NULL, NULL, '2021-02-09 01:20:59', '2021-02-09 01:20:59'),
(1400, 2, 15, '0', 'Preventivo', '0', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\n10 1/4 DE ACEITE DE MOTOR \r\nEstaban en bodega', '0', '2020-03-09', NULL, NULL, '2021-02-09 01:23:05', '2021-02-09 01:23:05'),
(1401, 29, 15, '6363', 'Preventivo', '309.834', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA\r\n10 1/4 ACEITE DE MOTOR', '236.000', '2020-07-25', NULL, NULL, '2021-02-09 01:24:15', '2021-02-09 01:24:15'),
(1402, 2, 15, '0', 'Preventivo', '0', NULL, 'CAMBIO DE ACEITE:ADICION DE 2 1/4 DE ACEITE DE MOTOR', '0', '2020-08-15', NULL, NULL, '2021-02-09 01:24:54', '2021-02-09 01:24:54'),
(1403, 29, 15, '6488', 'Preventivo', '323.065', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n2 FILTRO AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA\r\n10 1/4 ACEITE DE MOTOR', '236.000', '2020-10-20', NULL, NULL, '2021-02-09 01:26:02', '2021-02-09 01:26:02'),
(1404, 45, 16, '29488', 'Preventivo', '0', NULL, 'BATERIA:2 Bateria Auto Mac 31H1200', '860.000', '2019-05-24', NULL, NULL, '2021-02-09 01:33:24', '2021-02-09 01:33:24'),
(1405, 10, 16, '278', 'Preventivo', '224.842', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n16 1/4 DE ACEITE DE MOTOR', '494.671', '2020-02-07', NULL, NULL, '2021-02-09 01:37:27', '2021-02-09 01:37:27'),
(1406, 29, 16, '6323', 'Preventivo', '237.403', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE TRAMPA\r\n16 1/4 DE ACEITE DE MOTOR', '395.000', '2020-06-18', NULL, NULL, '2021-02-09 01:38:40', '2021-02-09 01:38:40'),
(1407, 29, 16, '6395', 'Preventivo', '245.140', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 2 FILTROS DE ACPM\r\n16/4 ACEITE', '395.000', '2020-09-02', NULL, NULL, '2021-02-09 01:39:50', '2021-02-09 01:39:50'),
(1408, 29, 16, '6874', 'Preventivo', '257.451', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 2 FILTROS DE ACPM', '395.000', '2020-12-17', NULL, NULL, '2021-02-09 01:41:14', '2021-02-09 01:41:14'),
(1409, 11, 16, '0402', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 3 lb de gas', '186.030', '2020-09-09', NULL, NULL, '2021-02-09 01:44:17', '2021-02-09 01:44:17'),
(1410, 135, 16, '1878', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo termo', '152.640', '2020-12-10', NULL, NULL, '2021-02-09 01:45:45', '2021-02-09 01:45:45'),
(1411, 36, 9, '5984', 'Preventivo', '226.135', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '362.180', '2020-03-12', NULL, NULL, '2021-02-09 01:51:11', '2021-02-09 01:51:11'),
(1412, 29, 9, '6323', 'Preventivo', '238.846', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\n2 FILTRO ACPM\r\n10 1/4 DE ACEITE', '165.000', '2020-06-24', NULL, NULL, '2021-02-09 01:52:59', '2021-02-09 01:52:59'),
(1413, 2, 9, 'BODEGA', 'Preventivo', '239.027', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', NULL, '2020-07-02', NULL, NULL, '2021-02-09 01:53:52', '2021-02-09 01:53:52'),
(1414, 29, 9, '6436', 'Preventivo', '251.474', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 2 FILTRO DE ACPM, 2 FILTROS DE AIRE \r\n10/4 ACEITE', '203.000', '2020-09-04', NULL, NULL, '2021-02-09 01:54:50', '2021-02-09 01:54:50'),
(1415, 29, 9, '6537', 'Preventivo', '263.894', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE DE \r\n2 FILTROS ACPM\r\n2 FILTROS AIRE DE MOTOR', '216.000', '2020-11-17', NULL, NULL, '2021-02-09 02:10:21', '2021-02-09 02:10:21'),
(1416, 45, 11, '31594', 'Preventivo', '208.464', NULL, 'BATERIA:2 Bateria Auto Mac 271000', '420.000', '2019-10-17', NULL, NULL, '2021-02-09 02:19:56', '2021-02-09 02:19:56'),
(1417, 36, 11, '5984', 'Preventivo', '234.800', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '362.180', '2020-03-12', NULL, NULL, '2021-02-09 02:25:02', '2021-02-09 02:25:02'),
(1418, 36, 11, '5984', 'Preventivo', '234.800', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '362.180', '2020-03-12', NULL, NULL, '2021-02-09 02:25:02', '2021-02-09 02:25:02'),
(1419, 29, 11, '6323', 'Preventivo', '247.060', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACPM\r\nFILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\n10/4 DE ACEITE', '140.000', '2020-06-17', NULL, NULL, '2021-02-09 02:26:11', '2021-02-09 02:26:11'),
(1420, 29, 11, '6436', 'Preventivo', '261.389', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n2 FILTRO DE ACPM\r\n2 FILTRO AIRE \r\n10/4 ACEITE', '203.000', '2020-09-04', NULL, NULL, '2021-02-09 02:29:14', '2021-02-09 02:29:14'),
(1421, 29, 11, '6537', 'Preventivo', '275.056', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE', '60.000', '2020-11-26', NULL, NULL, '2021-02-09 02:30:36', '2021-02-09 02:30:36'),
(1422, 11, 11, '0249', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado', '150.000', '2020-07-21', NULL, NULL, '2021-02-09 02:38:20', '2021-02-09 02:38:20'),
(1423, 135, 11, '1842', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:1 Blower y montaje del mismo, mantenimiento preventivo, recarga refrigerante', '581.940', '2020-11-05', NULL, NULL, '2021-02-09 02:39:46', '2021-02-09 02:39:46'),
(1424, 8, 28, '10589', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria Auto Mac 980 amp CA 22°C', '424.600', '2019-10-23', NULL, NULL, '2021-02-09 02:45:05', '2021-02-09 02:45:05'),
(1425, 10, 28, '459', 'Preventivo', '240.616', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n7 1/4 DE ACEITE DE MOTOR', '184.450', '2020-03-12', NULL, NULL, '2021-02-09 02:47:48', '2021-02-09 02:47:48'),
(1426, 29, 28, '6251', 'Preventivo', '248.695', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE A/C\r\n7 1/4 DE ACEITE DE MOTOR', '80.000', '2020-05-07', NULL, NULL, '2021-02-09 02:49:14', '2021-02-09 02:49:14'),
(1427, 29, 28, '6363', 'Preventivo', '259.658', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE A/C\r\n1 FILTRO DE TRAMPA\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-07-17', NULL, NULL, '2021-02-09 02:51:10', '2021-02-09 02:51:10'),
(1428, 29, 28, '6436', 'Preventivo', '268.104', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE A/C\r\n1 FILTRO DE TRAMPA\r\n7 /4 DE ACEITE DE MOTOR', '87.000', '2020-09-18', NULL, NULL, '2021-02-09 02:52:14', '2021-02-09 02:52:14'),
(1429, 29, 28, '6537', 'Preventivo', '276.617', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE A/C\r\n1 FILTRO DE TRAMPA\r\n7 /4 DE ACEITE DE MOTOR', '87.000', '2020-11-03', NULL, NULL, '2021-02-09 02:53:29', '2021-02-09 02:53:29'),
(1430, 29, 28, '6574', 'Preventivo', '284.812', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE \r\n1 FILTRO DE A/C\r\n1 FILTRO DE ACPM', '87.000', '2020-12-26', NULL, NULL, '2021-02-09 02:54:09', '2021-02-09 02:54:09'),
(1431, 45, 29, '28142', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria Auto Mac 27R1000', '447.000', '2019-02-05', NULL, NULL, '2021-02-09 03:52:30', '2021-02-09 03:52:30'),
(1432, 2, 29, '0', 'Preventivo', '0', NULL, 'BATERIA:Se le instalaron bateria de segunda suministrada por la TAR-307 en buen estado', '0', NULL, NULL, NULL, '2021-02-09 03:56:12', '2021-02-09 03:56:12'),
(1433, 10, 29, '284', 'Preventivo', '321.629', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '166.600', '2020-02-19', NULL, NULL, '2021-02-09 04:00:27', '2021-02-09 04:00:27'),
(1434, 10, 29, '6488', 'Preventivo', '331.945', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-10-18', NULL, NULL, '2021-02-09 04:01:36', '2021-02-09 04:01:36'),
(1435, 29, 29, '6601', 'Preventivo', '335.782', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7/4 DE ACEITE DE MOTOR\r\nLos filtros eran de la TAQ-524', NULL, '2021-01-09', NULL, NULL, '2021-02-09 04:02:53', '2021-02-09 04:02:53'),
(1436, 29, 29, '6601', 'Preventivo', '335.782', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7/4 DE ACEITE DE MOTOR\r\nLos filtros eran de la TAQ-524', '87.000', '2021-01-09', NULL, NULL, '2021-02-09 04:04:44', '2021-02-09 04:04:44'),
(1437, 10, 29, '284', 'Preventivo', '321.629', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '166.600', '2020-02-19', NULL, NULL, '2021-02-09 04:09:03', '2021-02-09 04:09:03'),
(1438, 10, 29, '6488', 'Preventivo', '331.945', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-10-18', NULL, NULL, '2021-02-09 04:09:59', '2021-02-09 04:09:59'),
(1439, 29, 29, '6601', 'Preventivo', '335.782', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7/4 DE ACEITE DE MOTOR\r\nLos filtros eran de la TAQ-524', '87.000', '2021-01-09', NULL, NULL, '2021-02-09 04:11:03', '2021-02-09 04:11:03'),
(1440, 11, 30, '0416', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Arreglo de manguera del compresor del aire acondicionado, 2 lb de gas', '90.000', '2020-09-26', NULL, NULL, '2021-02-09 04:20:49', '2021-02-09 04:20:49'),
(1441, 135, 30, '1840', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:1 Evaporador original, aceite compresor, refrigerante, desmontaje y montaje de tablero para cambio de evaporador, filtro a/c cabina', '550.000', '2020-10-31', NULL, NULL, '2021-02-09 04:22:47', '2021-02-09 04:22:47'),
(1442, 10, 30, '133', 'Preventivo', '302.604', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE, FILTRO DE AIRE DE MOTOR,  7 1/4 DE ACEITE DE MOTOR, FILTRO AIRE A/C', '184.450', '2020-01-09', NULL, NULL, '2021-02-10 00:26:56', '2021-02-10 00:26:56'),
(1443, 10, 30, '291', 'Preventivo', '311.003', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE,\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n 7 1/4 DE ACEITE DE MOTOR', '184.450', '2020-02-29', NULL, NULL, '2021-02-10 00:29:40', '2021-02-10 00:29:40'),
(1444, 29, 30, '0', 'Preventivo', '320.413', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE ACPM \r\nENGRASE Y TENSION DE FRENO \r\n7/4 DE ACEITE', '164.000', '2020-10-31', NULL, NULL, '2021-02-10 00:32:01', '2021-02-10 00:32:01'),
(1445, 2, 30, 'BODEGA', 'Preventivo', '328.380', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE,\r\n FILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n1 FILTRO DE TRAMPA \r\n 7 1/4 DE ACEITE DE MOTOR', '0', '2020-12-30', NULL, NULL, '2021-02-10 00:34:17', '2021-02-10 00:34:17'),
(1446, 8, 44, '10974', 'Preventivo', '262.648', NULL, 'BATERIA:1 Bateria Auto Mac 980 amp CA 22°C', '491.000', '2019-11-05', NULL, NULL, '2021-02-10 00:39:36', '2021-02-10 00:39:36'),
(1447, 10, 44, '252', 'Preventivo', '278.478', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '124.950', '2020-02-16', NULL, NULL, '2021-02-10 00:43:28', '2021-02-10 00:43:28'),
(1448, 29, 44, '6363', 'Preventivo', '286.816', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE A/C\r\n1 FILTRO ACPM\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-07-02', NULL, NULL, '2021-02-10 00:45:01', '2021-02-10 00:45:01');
INSERT INTO `mantenimientos` (`id`, `proveedor_id`, `vehiculo_id`, `factura`, `tipo`, `km_actual`, `km_siguiente`, `descripcion`, `subtotal`, `fecha_ejecutado`, `short`, `aux`, `created_at`, `updated_at`) VALUES
(1449, 29, 44, '6436', 'Preventivo', '294.509', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO AIRE\r\n1 FILTRO A/C\r\n1 FILTRO DE ACPM \r\n7 1/4 DE ACEITE', '87.000', '2020-09-05', NULL, NULL, '2021-02-10 00:45:53', '2021-02-10 00:45:53'),
(1450, 29, 44, '6537', 'Preventivo', '305.258', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE \r\n1 FILTRO DE A/C\r\n1 FILTRO DE ACPM', '87.000', '2020-11-18', NULL, NULL, '2021-02-10 00:46:37', '2021-02-10 00:46:37'),
(1451, 8, 33, '6975', 'Preventivo', '235.601', NULL, 'BATERIA:1 Bateria Auto Mac 980 amp CA 22°C', '399.601', '2019-07-04', NULL, NULL, '2021-02-10 01:18:28', '2021-02-10 01:18:28'),
(1452, 10, 33, '172', 'Preventivo', '252.599', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '184.450', '2020-02-06', NULL, NULL, '2021-02-10 01:20:50', '2021-02-10 01:20:50'),
(1453, 29, 33, '6436', 'Preventivo', '261.596', NULL, 'BATERIA:1 FILTRO ACEITE\r\n1 FILTRO ACPM\r\n1 FILTRO AIRE\r\n7 1/4 DE ACEITE', '97.000', '2020-09-16', NULL, NULL, '2021-02-10 01:22:16', '2021-02-10 01:22:16'),
(1454, 135, 33, '1882', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Servicio de desmontaje y montaje de compresor para cambio de embriague, 1 aceite compresor, 2 refrigerante 134A', '130.000', '2020-12-12', NULL, NULL, '2021-02-10 01:25:24', '2021-02-10 01:25:24'),
(1455, 11, 5, '0425', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, desmonte del compresor y arreglo del mismo, cambio de aceite y filtro secador, 6 libras de gas, filtro secador, 2 aceite', '504.660', '2020-09-25', NULL, NULL, '2021-02-11 17:24:57', '2021-02-11 17:24:57'),
(1456, 135, 5, '1838', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Empaquetadura, swllos, plato válvulas aire acondicionado, aceite compresor, refrigerante, tapa delantera compresor, mantenimiento aire acondicionado termo, montaje y desmontaje compresor para reparación', '900.000', '2020-10-13', NULL, NULL, '2021-02-11 17:27:14', '2021-02-11 17:27:14'),
(1457, 10, 5, '275', 'Preventivo', '147.422', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '474.691', '2020-02-06', NULL, NULL, '2021-02-11 18:12:38', '2021-02-11 18:12:38'),
(1458, 29, 5, '6278', 'Preventivo', '160.226', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n 2 FILTRO AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '173.000', '2020-05-20', NULL, NULL, '2021-02-11 18:13:29', '2021-02-11 18:13:29'),
(1459, 29, 5, '6395', 'Preventivo', '173.298', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE AIRE  1 FILTROS DE MOTOR, 1 FILTRO DE TRAMPA \r\n10/4 ACEITE', '188.000', '2020-08-12', NULL, NULL, '2021-02-11 18:14:28', '2021-02-11 18:14:28'),
(1460, 29, 5, '6488', 'Preventivo', '185.845', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE TRAMPA  2 FILTROS DE MOTOR, 1 FILTRO DE MOTOR\r\n10/4 ACEITE', '173.000', '2020-10-29', NULL, NULL, '2021-02-11 18:16:16', '2021-02-11 18:16:16'),
(1461, 11, 12, '0245', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 3 libras de gas 134A', '183.000', '2020-07-18', NULL, NULL, '2021-02-11 18:40:39', '2021-02-11 18:40:39'),
(1462, 11, 12, '0471', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado y desmonte de compresor para cambio de aceite, 2 aceites, 3 libras de gas', '245.000', '2020-10-20', NULL, NULL, '2021-02-11 18:42:54', '2021-02-11 18:42:54'),
(1463, 135, 12, '1875', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:1 Extractor ventilador, 3 correción de fuga, mantenimiento de termo', '448.380', '2020-12-09', NULL, NULL, '2021-02-11 18:48:19', '2021-02-11 18:48:19'),
(1464, 10, 12, '273', 'Preventivo', '163.401', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '474.691', '2020-02-09', NULL, NULL, '2021-02-11 19:26:03', '2021-02-11 19:26:03'),
(1465, 29, 12, '6251', 'Preventivo', '175.580', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '173.000', '2020-05-12', NULL, NULL, '2021-02-11 19:27:08', '2021-02-11 19:27:08'),
(1466, 29, 12, '6395', 'Preventivo', '187.836', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 2 FILTROS DE MOTOR, 1 FILTROS DE AIRE\r\n10/4 ACEITE', '213.000', '2020-08-04', NULL, NULL, '2021-02-11 19:28:24', '2021-02-11 19:28:24'),
(1467, 29, 12, '6488', 'Preventivo', '200.681', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTROS DE MOTOR, 1 FILTROS DE MOTOR, 1 FILTRO DE TRAMPA \r\n10/4 ACEITE', '213.000', '2020-10-29', NULL, NULL, '2021-02-11 19:29:50', '2021-02-11 19:29:50'),
(1468, 29, 12, '6301', 'Preventivo', '213.211', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 2 FILTROS DE MOTOR, 1 FILTROS DE MOTOR, 1 FILTRO DE TRAMPA \r\n10/4 ACEITE', '213.000', '2021-01-20', NULL, NULL, '2021-02-11 19:31:01', '2021-02-11 19:31:01'),
(1469, 11, 13, '0276', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 4 libra de gas', '185.076', '2020-08-13', NULL, NULL, '2021-02-12 04:30:22', '2021-02-12 04:30:22'),
(1470, 135, 13, '1844', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento termo, instalación de extractor, recarga de gas', '267.120', '2020-11-09', NULL, NULL, '2021-02-12 04:34:01', '2021-02-12 04:34:01'),
(1471, 29, 13, '6241', 'Preventivo', '186.018', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '148.000', '2020-04-03', NULL, NULL, '2021-02-12 04:39:20', '2021-02-12 04:39:20'),
(1472, 36, 13, '1710006673', 'Preventivo', '199.511', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '548.272', '2020-07-21', NULL, NULL, '2021-02-12 04:41:28', '2021-02-12 04:41:28'),
(1473, 36, 13, '1710007506', 'Preventivo', '212.639', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '549.986', '2020-10-19', NULL, NULL, '2021-02-12 04:42:38', '2021-02-12 04:42:38'),
(1474, 29, 13, '6601', 'Preventivo', '225.625', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n10 1/4 DE ACEITE DE MOTOR', '150.000', '2021-01-16', NULL, NULL, '2021-02-12 04:43:43', '2021-02-12 04:43:43'),
(1475, 8, 13, '32E11198', 'Preventivo', '566.105', NULL, 'BATERIA:2 BATERIAS AUTO MAC 1050 AMP CA 22°C', '835.600', '2019-11-12', NULL, NULL, '2021-02-12 04:54:48', '2021-02-24 22:23:30'),
(1476, 11, 14, '0272', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 3 libras de gas', '174.582', '2020-08-10', NULL, NULL, '2021-02-12 05:19:09', '2021-02-12 05:19:09'),
(1477, 135, 14, '1869', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento equipo aire acondicionado, recarga refrigerante', '219.420', '2020-11-29', NULL, NULL, '2021-02-12 05:22:17', '2021-02-12 05:22:17'),
(1478, 36, 14, '5087', 'Preventivo', '183.789', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n11 1/4 DE ACEITE DE MOTOR', '767.325', '2020-01-13', NULL, NULL, '2021-02-12 05:26:35', '2021-02-12 05:26:35'),
(1479, 29, 14, '6251', 'Preventivo', '196.402', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n11 1/4 DE ACEITE DE MOTOR', '173.000', '2020-04-16', NULL, NULL, '2021-02-12 05:27:38', '2021-02-12 05:27:38'),
(1480, 29, 14, '6488', 'Preventivo', '208.590', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n11 1/4 DE ACEITE DE MOTOR', '173.000', '2020-10-29', NULL, NULL, '2021-02-12 05:28:53', '2021-02-12 05:28:53'),
(1481, 8, 14, '32E76628', 'Preventivo', '0', NULL, 'BATERIA:2 Bateria Auto Mac 1050 AMP CA 22°C', '835.600', '2019-11-20', NULL, NULL, '2021-02-12 05:32:47', '2021-02-12 05:32:47'),
(1482, 135, 23, '1839', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general termo (Lavar tuberia, secar nitrogeno), filtro secador, carga refrigerante, aceite 134A, desmontaje compresor para cambio por uno nuevo', '710.730', '2020-10-19', NULL, NULL, '2021-02-12 05:38:55', '2021-02-12 05:38:55'),
(1483, 8, 23, '32E83283', 'Preventivo', '0', NULL, 'BATERIA:2 Bateria Auto Mac', '811.801', '2020-08-04', NULL, NULL, '2021-02-12 06:22:04', '2021-02-12 06:22:04'),
(1484, 10, 23, '182', 'Preventivo', '182.333', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '376.017', '2020-01-17', NULL, NULL, '2021-02-12 06:27:17', '2021-02-12 06:27:17'),
(1485, 36, 23, '5593', 'Preventivo', '194.878', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n9 1/4 DE ACEITE DE MOTOR', '277.966', '2020-04-18', NULL, NULL, '2021-02-12 06:28:40', '2021-02-12 06:28:40'),
(1486, 29, 23, '6363', 'Preventivo', '205.436', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE AIRE,\r\n 2 FILTROS DE ACPM \r\nY 1 FILTRO DE ACEITE', '159.000', '2020-07-13', NULL, NULL, '2021-02-12 06:31:19', '2021-02-12 06:31:19'),
(1487, 29, 23, '6574', 'Preventivo', '217.452', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE ACEITE \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA  \r\n9 1/4 ACEITE', '159.000', '2020-12-01', NULL, NULL, '2021-02-12 06:35:26', '2021-02-12 06:35:26'),
(1488, 10, 24, '180', 'Preventivo', '171.649', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '376.017', '2020-02-03', NULL, NULL, '2021-02-12 06:47:09', '2021-02-12 06:47:09'),
(1489, 29, 24, '6251', 'Preventivo', '183.874', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '159.000', '2020-05-09', NULL, NULL, '2021-02-12 06:48:18', '2021-02-12 06:48:18'),
(1490, 29, 24, '6395', 'Preventivo', '197.426', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE 2 FILTROS DE ACPM 1 FILTRO DE AIRE\r\n8/4 ACEITE', '159.000', '2020-08-10', NULL, NULL, '2021-02-12 06:49:37', '2021-02-12 06:49:37'),
(1491, 29, 24, '6537', 'Preventivo', '210.004', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE 2 FILTROS DE ACPM 1 FILTRO DE AIRE\r\n8/4 ACEITE', '159.000', '2020-11-07', NULL, NULL, '2021-02-12 06:50:41', '2021-02-12 06:50:41'),
(1492, 11, 24, '0178', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 3 libras de gas', '183.000', '2020-07-25', NULL, NULL, '2021-02-12 06:58:14', '2021-02-12 06:58:14'),
(1493, 11, 24, '0454', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general al aire acondicionado y desmonte de compresor para cambio de aceite, 2 aceite, 3 libras de gas', '233.730', '2020-10-16', NULL, NULL, '2021-02-12 06:59:42', '2021-02-12 06:59:42'),
(1494, 135, 24, '1884', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Soldadura tubo en bronce en el termo, mantenimiento termo, blower, 16 refrigerante', '877.680', '2020-12-11', NULL, NULL, '2021-02-12 07:01:15', '2021-02-12 07:01:15'),
(1495, 8, 25, '32E84628', 'Preventivo', '210.437', NULL, 'BATERIA:2 BATERIA AUTO MAC, GARANTIA 12 MESES', '795.601', '2020-10-01', NULL, NULL, '2021-02-12 17:23:45', '2021-02-12 17:23:45'),
(1496, 10, 25, '181', 'Preventivo', '186.258', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '376.017', '2020-01-17', NULL, NULL, '2021-02-12 17:26:15', '2021-02-12 17:26:15'),
(1497, 29, 25, '6251', 'Preventivo', '198.735', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n9 1/4 DE ACEITE DE MOTOR', '159.000', '2020-04-18', NULL, NULL, '2021-02-12 17:28:48', '2021-02-12 17:28:48'),
(1498, 2, 25, '0', 'Preventivo', '211.957', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE ACPM\r\n9 1/4 DE ACEITE DE MOTOR\r\nNOTA: Filtros comprados y puestos en barranquilla no se tiene factura', '0', '2020-09-15', NULL, NULL, '2021-02-12 17:54:00', '2021-02-12 17:54:00'),
(1499, 29, 25, '6537', 'Preventivo', '220.323', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1, FILTRO DE AIRE DE ACONDICIONADO \r\n2 FILTRO DE ACPM\r\n9 1/4 DE ACEITE DE MOTOR', '159.000', '2020-11-12', NULL, NULL, '2021-02-12 17:56:36', '2021-02-12 17:56:36'),
(1500, 11, 25, '0447', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general al aire acondicionado y desmonte de compresor para cambio de aceite, 1 filtro. 2 aceite, 5 lb de gas', '305.280', '2020-10-09', NULL, NULL, '2021-02-12 17:58:44', '2021-02-12 17:58:44'),
(1501, 135, 25, '1884', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Soldadura tubo en bronce en el termo, mantenimiento termo, blower, 16 refrigerante', '877.680', '2020-12-11', NULL, NULL, '2021-02-12 18:03:32', '2021-02-12 18:03:32'),
(1502, 11, 24, '0259', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 3 libras de gas', '183.000', '2020-07-25', NULL, NULL, '2021-02-12 18:10:16', '2021-02-12 18:10:16'),
(1503, 11, 24, '0454', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general al aire acondicionado y desmonte de compresor para cambio de aceite, 2 aceite, 3 libras de gas', '233.730', '2020-10-16', NULL, NULL, '2021-02-12 18:11:24', '2021-02-12 18:11:24'),
(1504, 45, 26, '29487', 'Preventivo', '0', NULL, 'BATERIA:2 Bateria Auto Mac 27R1000', '860.000', '2019-05-24', NULL, NULL, '2021-02-12 18:54:41', '2021-02-12 18:54:41'),
(1505, 8, 26, '32E86565', 'Preventivo', '0', NULL, 'BATERIA:2 Bateria Auto Mac 15 meses de garantia', '841.801', '2020-12-04', NULL, NULL, '2021-02-12 19:16:49', '2021-02-12 19:16:49'),
(1506, 174, 26, '93899', 'Preventivo', '141.832', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n11 1/4 DE ACEITE', '188.466', '2020-03-06', NULL, NULL, '2021-02-12 19:35:11', '2021-02-12 19:35:11'),
(1507, 29, 26, '6251', 'Preventivo', '153.829', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n12 1/4 DE ACEITE', '148.000', '2020-06-02', NULL, NULL, '2021-02-12 19:37:30', '2021-02-12 19:37:30'),
(1508, 29, 26, '6363', 'Preventivo', '166.673', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n12 1/4 DE ACEITE', '148.000', '2020-07-15', NULL, NULL, '2021-02-12 19:38:29', '2021-02-12 19:38:29'),
(1509, 29, 26, '6395', 'Preventivo', '179.306', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTROS DE AIRE DE MOTOR, 1 FILTRO DE MOTOR, 1 FILTRO DE TRAMPA \r\n12/4 ACEITE', '148.000', '2020-08-24', NULL, NULL, '2021-02-12 19:39:35', '2021-02-12 19:39:35'),
(1510, 29, 26, '6488', 'Preventivo', '192.161', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTROS DE AIRE DE MOTOR, 2 FILTRO DE APM\r\n12 1/4 ACEITE', '148.000', '2020-10-15', NULL, NULL, '2021-02-12 19:41:19', '2021-02-12 19:41:19'),
(1511, 29, 26, '6574', 'Preventivo', '204.714', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTROS DE AIRE DE MOTOR, 2 FILTRO DE APM', '148.000', '2020-12-30', NULL, NULL, '2021-02-12 19:42:24', '2021-02-12 19:42:24'),
(1512, 11, 26, '0083', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Cambio de filtro secador, calibración de gas y aceite compresor, mantenimiento general', '150.000', '2020-01-16', NULL, NULL, '2021-02-12 19:51:37', '2021-02-12 19:51:37'),
(1513, 11, 26, '0190', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento prevetivo', '143.100', '2020-05-01', NULL, NULL, '2021-02-12 19:55:30', '2021-02-12 19:55:30'),
(1514, 11, 26, '0267', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 3 lb de gas', '174.582', '2020-08-01', NULL, NULL, '2021-02-12 19:56:39', '2021-02-12 19:56:39'),
(1515, 135, 26, '1867', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento equipo aire acondicionado', '152.640', '2020-11-27', NULL, NULL, '2021-02-12 19:57:57', '2021-02-12 19:57:57'),
(1516, 10, 31, '279', 'Preventivo', '160.890', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '184.450', '2020-02-03', NULL, NULL, '2021-02-12 20:25:51', '2021-02-12 20:25:51'),
(1517, 29, 31, '6251', 'Preventivo', '170.524', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '87.000', '2020-03-24', NULL, NULL, '2021-02-12 20:27:02', '2021-02-12 20:27:02'),
(1518, 29, 31, '6323', 'Preventivo', '179.219', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '87.000', '2020-06-04', NULL, NULL, '2021-02-12 20:28:24', '2021-02-12 20:28:24'),
(1519, 29, 31, '6363', 'Preventivo', '188.046', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM - TRAMPA\r\n1 FILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '87.000', '2020-07-23', NULL, NULL, '2021-02-12 20:29:17', '2021-02-12 20:29:17'),
(1520, 29, 31, '6436', 'Preventivo', '196.033', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM - TRAMPA\r\n1 FILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '87.000', '2020-09-07', NULL, NULL, '2021-02-12 20:30:45', '2021-02-12 20:30:45'),
(1521, 29, 31, '6488', 'Preventivo', '204.597', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO A/C\r\n8 1/4 DE ACEITE DE MOTOR', '87.000', '2020-10-26', NULL, NULL, '2021-02-12 20:31:52', '2021-02-12 20:31:52'),
(1522, 29, 31, '6574', 'Preventivo', '213.430', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n1 FILTRO A/C', '87.000', '2020-12-12', NULL, NULL, '2021-02-12 20:33:18', '2021-02-12 20:33:18'),
(1523, 11, 31, '0281', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Desmonte de evaporizador para mantenimiento del aire acondicionado, 1 lb de gas', '91.000', '2020-08-18', NULL, NULL, '2021-02-12 20:38:00', '2021-02-12 20:38:00'),
(1524, 45, 31, '29795', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria auto mac 271000', '440.000', '2019-06-17', NULL, NULL, '2021-02-12 21:00:46', '2021-02-12 21:00:46'),
(1525, 8, 31, '32E82723', 'Correctivo', '186.720', NULL, 'BATERIA:1 Bateria Auto Mac por garantia de la venta 17/06/2019', '515.600', '2020-07-13', NULL, NULL, '2021-02-12 21:27:35', '2021-02-12 21:27:35'),
(1526, 11, 31, '0293', 'Correctivo', '0', NULL, 'Desmonte de manguera para cambio de la misma, compra 1 manguera 1332 de alta', '120.000', '2020-09-01', NULL, NULL, '2021-02-12 21:28:58', '2021-02-12 21:28:58'),
(1527, 103, 27, '0252', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado, 2 libras de gas', '172.000', '2020-07-24', NULL, NULL, '2021-02-12 21:35:39', '2021-02-12 21:35:39'),
(1528, 11, 27, '0470', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado y desmonte de compresor para cambio de aceite, 2 aceites, 3 libras de gas', '233.730', '2020-10-20', NULL, NULL, '2021-02-12 21:37:25', '2021-02-12 21:37:25'),
(1529, 36, 27, '5594', 'Preventivo', '119.081', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n1 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '220.881', '2020-02-05', NULL, NULL, '2021-02-12 21:46:27', '2021-02-12 21:46:27'),
(1530, 29, 27, '6251', 'Preventivo', '131.648', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n1 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '213.000', '2020-04-17', NULL, NULL, '2021-02-12 21:47:57', '2021-02-12 21:47:57'),
(1531, 29, 27, '6363', 'Preventivo', '145.033', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '213.000', '2020-07-15', NULL, NULL, '2021-02-12 21:49:29', '2021-02-12 21:49:29'),
(1532, 29, 27, '6488', 'Preventivo', '157.552', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n10 1/4 DE ACEITE DE MOTOR', '213.000', '2020-10-05', NULL, NULL, '2021-02-12 21:50:44', '2021-02-12 21:50:44'),
(1533, 29, 27, '6574', 'Preventivo', '170.195', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n2 FILTRO DE ACPM', '213.000', '2020-12-28', NULL, NULL, '2021-02-12 21:51:44', '2021-02-12 21:51:44'),
(1534, 10, 27, '29073', 'Preventivo', '0', NULL, 'BATERIA:2 Baterias 31H instaló saulo. Factura original(Compra de 4 baterias 31H)', '1.480.234', '2019-09-04', NULL, NULL, '2021-02-12 22:02:48', '2021-02-12 22:02:48'),
(1535, 135, 21, '1864', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento equipo aire acondicionado, recarga', '209.880', '2020-11-25', NULL, NULL, '2021-02-13 01:50:46', '2021-02-13 01:50:46'),
(1536, 10, 21, '462', 'Preventivo', '246.514', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE \r\n10 1/4 DE ACEITE DE MOTOR', '249.900', '2020-05-23', NULL, NULL, '2021-02-13 01:52:56', '2021-02-13 01:52:56'),
(1537, 29, 21, '6436', 'Preventivo', '259.204', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE AIRE DE MOTOR \r\n2 FILTRODE TRAMPA \r\n9/4 ACEITE', '186.000', '2020-09-06', NULL, NULL, '2021-02-13 01:53:43', '2021-02-13 01:53:43'),
(1538, 29, 21, '6574', 'Preventivo', '271.463', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE AIRE DE MOTOR \r\n2 FILTRODE TRAMPA \r\n9/4 ACEITE', '186.000', '2020-12-03', NULL, NULL, '2021-02-13 01:56:22', '2021-02-13 01:56:22'),
(1539, 175, 21, '791', 'Preventivo', '0', NULL, 'BATERIA:2 Baterias 30H1200 MAC de borne', '800.000', '2021-02-05', NULL, NULL, '2021-02-13 02:12:08', '2021-02-13 02:12:08'),
(1540, 29, 22, '6251', 'Preventivo', '218.341', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10 1/4 DE ACEITE DE MOTOR', '173.000', '2020-03-31', NULL, NULL, '2021-02-13 02:26:33', '2021-02-13 02:26:33'),
(1541, 29, 22, '6263', 'Preventivo', '232.068', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n2 FILTROS DE TRAMPA \r\n1 FILTRO DE ACEITE\r\n10 1/4 ACEITE', '173.000', '2020-07-16', NULL, NULL, '2021-02-13 02:34:01', '2021-02-13 02:34:01'),
(1542, 29, 22, '6478', 'Preventivo', '244.872', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTROS DE  A/C\r\n1 FILTRO DE ACEITE\r\n10 1/4 ACEITE', '173.000', '2020-10-31', NULL, NULL, '2021-02-13 02:35:02', '2021-02-13 02:35:02'),
(1543, 135, 22, '0', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento de aire acondicionado, recarga Km: 243500. No se generó factura de ese mantenimiento el proveedor no lo cobró', '0', '2020-11-05', NULL, NULL, '2021-02-13 03:30:45', '2021-02-13 03:30:45'),
(1544, 4, 22, '53549', 'Preventivo', '0', NULL, 'BATERIA:2 Baterias 48m900 Duncan #696503 #696513', '766.000', '2019-04-01', NULL, NULL, '2021-02-13 03:33:57', '2021-02-13 03:33:57'),
(1545, 175, 22, '766', 'Preventivo', '0', NULL, 'BATERIA:2 Bateria 341100 FAICO', '840.000', '2021-02-01', NULL, NULL, '2021-02-13 03:37:16', '2021-02-13 03:37:16'),
(1546, 10, 20, '134', 'Preventivo', '121.600', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO AIRE MOTOR\r\nFILTRO MOTOR\r\n2 FILTRO A/C\r\n8 1/4 ACEITE MOTOR', '249.900', '2020-01-08', NULL, NULL, '2021-02-13 03:39:58', '2021-02-13 03:39:58'),
(1547, 29, 20, '6251', 'Preventivo', '130.794', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO AIRE MOTOR\r\nFILTRO MOTOR\r\n8 1/4 ACEITE MOTOR', '99.000', '2020-04-25', NULL, NULL, '2021-02-13 03:41:35', '2021-02-13 03:41:35'),
(1548, 29, 20, '6363', 'Preventivo', '139.105', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO AIRE MOTOR\r\n1 FILTRO MOTOR\r\n1  FILTRO A/C\r\n6 1/4 ACEITE MOTOR', '155.000', '2020-07-29', NULL, NULL, '2021-02-13 03:42:26', '2021-02-13 03:42:26'),
(1549, 10, 19, '135', 'Preventivo', '92.014', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\n2 FILTROS DE A/C\r\n11 1/4 DE ACEIRE MOTOR', '446.250', '2020-01-09', NULL, NULL, '2021-02-13 04:47:20', '2021-02-13 04:47:20'),
(1550, 29, 19, '6395', 'Preventivo', '115.433', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 1 FILTRO DE TOMIX, 1 FILTRO DE ACPM\r\n11/4 ACEITE', '330.000', '2020-08-20', NULL, NULL, '2021-02-13 04:48:04', '2021-02-13 04:48:04'),
(1551, 29, 19, '6574', 'Preventivo', '127.585', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 1 FILTRO DE ACPM\r\n11/4 ACEITE', '305.000', '2020-12-05', NULL, NULL, '2021-02-13 04:49:16', '2021-02-13 04:49:16'),
(1552, 45, 19, '29683', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria Auto Mac 49ST1100', '450.000', '2020-06-07', NULL, NULL, '2021-02-13 04:56:39', '2021-02-13 04:56:39'),
(1553, 175, 19, '624', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria 30H EU', '560.000', '2020-12-24', NULL, NULL, '2021-02-13 04:57:33', '2021-02-13 04:57:33'),
(1554, 11, 54, '0398', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo, 4 libras de gas', '248.040', '2021-01-19', NULL, NULL, '2021-02-13 05:01:25', '2021-02-13 05:01:25'),
(1555, 29, 54, '6363', 'Preventivo', '233.115', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM \r\n10 1/4 DE ACEITE', '142.000', '2020-07-02', NULL, NULL, '2021-02-13 05:07:52', '2021-02-13 05:07:52'),
(1556, 29, 54, '6574', 'Preventivo', '245.340', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n2 FILTRO DE ACPM', '142.000', '2020-12-22', NULL, NULL, '2021-02-13 05:08:57', '2021-02-13 05:08:57'),
(1557, 11, 32, '0401', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Desmonte de compresor para arreglo de rodillo, 1 rodillo nuevo', '119.000', '2020-09-08', NULL, NULL, '2021-02-13 05:19:03', '2021-02-13 05:19:03'),
(1558, 135, 32, '1841', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Evaporador original, aceite compresor, refrigerante, desmonte y montaje de tablero para cambio de compresor, filtro A/C cabina', '524.700', '2020-10-31', NULL, NULL, '2021-02-13 05:20:39', '2021-02-13 05:20:39'),
(1559, 10, 32, '136', 'Preventivo', '189.026', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '220.150', '2020-01-11', NULL, NULL, '2021-02-13 05:24:17', '2021-02-13 05:24:17'),
(1560, 10, 32, '292', 'Preventivo', '198.021', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '144.851', '2020-02-28', NULL, NULL, '2021-02-13 05:25:21', '2021-02-13 05:25:21'),
(1561, 29, 32, '6251', 'Preventivo', '206.196', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-05-22', NULL, NULL, '2021-02-13 05:26:28', '2021-02-13 05:26:28'),
(1562, 29, 32, '6363', 'Preventivo', '216.211', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n1 FILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-07-02', NULL, NULL, '2021-02-13 05:27:55', '2021-02-13 05:27:55'),
(1563, 10, 32, '6395', 'Preventivo', '224.710', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO TRAMPA, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE MOTOR\r\n7/4 ACEITE', '87.000', '2020-08-18', NULL, NULL, '2021-02-13 05:32:09', '2021-02-13 05:32:09'),
(1564, 29, 32, '6488', 'Preventivo', '234.659', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO TRAMPA, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE MOTOR\r\n7/4 ACEITE', '87.000', '2020-10-07', NULL, NULL, '2021-02-13 05:46:15', '2021-02-13 05:46:15'),
(1565, 29, 32, '0', 'Preventivo', '0', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE A/C\r\n7 1/4 DE ACEITE \r\nAutorizado por el jefe armando', '57.000', '2020-10-31', NULL, NULL, '2021-02-13 05:53:59', '2021-02-13 05:53:59'),
(1566, 29, 32, '6537', 'Preventivo', '242.732', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE A/C\r\n7 1/4 DE ACEITE', '87.000', '2020-11-26', NULL, NULL, '2021-02-13 05:55:02', '2021-02-13 05:55:02'),
(1567, 29, 32, '6601', 'Preventivo', '250.904', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE A/C\r\n7 1/4 DE ACEITE', '62.000', '2021-01-21', NULL, NULL, '2021-02-13 06:02:05', '2021-02-13 06:02:05'),
(1568, 8, 32, '32E11122', 'Preventivo', '183.737', NULL, 'BATERIA:1 Bateria Auto Mac 980 amp CA 22°C', '399.601', '2019-11-08', NULL, NULL, '2021-02-14 01:33:56', '2021-02-14 01:33:56'),
(1569, 11, 37, '0468', 'Correctivo', '0', NULL, 'Arreglo de clochera del compresor del aire acondicionado', '80.000', '2020-10-19', NULL, NULL, '2021-02-14 01:40:56', '2021-02-14 01:40:56'),
(1570, 11, 37, '0389', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Mantenimiento preventivo y cambio de gas, 2 libras de gas', '124.020', '2021-01-19', NULL, NULL, '2021-02-14 01:45:05', '2021-02-14 01:45:05'),
(1571, 10, 37, '108', 'Preventivo', '154.060', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '184.450', '2020-01-04', NULL, NULL, '2021-02-14 01:57:49', '2021-02-14 01:57:49'),
(1572, 10, 37, '283', 'Preventivo', '163.020', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '134.470', '2020-02-22', NULL, NULL, '2021-02-14 01:59:42', '2021-02-14 01:59:42'),
(1573, 2, 37, 'BODEGA', 'Preventivo', '171.074', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', NULL, '2020-04-24', NULL, NULL, '2021-02-14 02:01:42', '2021-02-14 02:01:42'),
(1574, 29, 37, '6363', 'Preventivo', '180.627', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE  MOTOR\r\n1 FILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-08-14', NULL, NULL, '2021-02-14 02:03:33', '2021-02-14 02:03:33'),
(1575, 10, 37, '108', 'Preventivo', '154.060', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '184.450', '2020-01-04', NULL, NULL, '2021-02-14 02:05:36', '2021-02-14 02:05:36'),
(1576, 10, 37, '283', 'Preventivo', '163.020', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n7 1/4 DE ACEITE DE MOTOR', '134.470', '2020-02-20', NULL, NULL, '2021-02-14 02:07:24', '2021-02-14 02:07:24'),
(1577, 2, 37, 'BODEGA', 'Preventivo', '171.074', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '0', '2020-04-24', NULL, NULL, '2021-02-14 02:08:05', '2021-02-14 02:08:05'),
(1578, 29, 37, '6363', 'Preventivo', '180.627', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE  MOTOR\r\n1 FILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-07-14', NULL, NULL, '2021-02-14 02:08:53', '2021-02-14 02:08:53'),
(1579, 29, 37, '6488', 'Preventivo', '188.956', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n1 FILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '87.000', '2020-10-15', NULL, NULL, '2021-02-14 02:09:45', '2021-02-14 02:09:45'),
(1580, 29, 37, '6601', 'Preventivo', '198.540', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO A/C\r\n7/4 DE ACEITE DE MOTOR', '87.000', '2021-01-15', NULL, NULL, '2021-02-14 02:10:26', '2021-02-14 02:10:26'),
(1581, 135, 55, '1885', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento termo', '152.460', '2020-12-11', NULL, NULL, '2021-02-14 02:15:04', '2021-02-14 02:15:04'),
(1582, 29, 55, '6436', 'Preventivo', '156.205', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO ACPM - TRAMPA \r\n1 FILTRO AIRE ACONDICIONADO \r\n1 FILTRO DE AIRE DE MOTOR \r\n11/4 ACEITE', '123.000', '2020-09-10', NULL, NULL, '2021-02-14 02:16:47', '2021-02-14 02:16:47'),
(1583, 29, 55, '6574', 'Preventivo', '168.979', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO ACPM - TRAMPA \r\n1 FILTRO TAMIX\r\n1 FILTRO DE AIRE DE MOTOR', '305.000', '2020-12-30', NULL, NULL, '2021-02-14 02:17:51', '2021-02-14 02:17:51'),
(1584, 11, 17, '0415', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Arreglo de manguera de alto del aire trasero y mantenimiento preventivo del aire delantero, 6 libras de gas, 1 aceite', '202.248', '2020-09-23', NULL, NULL, '2021-02-14 02:21:29', '2021-02-14 02:21:29'),
(1585, 135, 17, '1879', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Corrección de fuga línea de alta soldadura en aluminio, 1 aceite compresor, 7 refrigerante 134A', '225.000', '2020-12-10', NULL, NULL, '2021-02-14 02:23:08', '2021-02-14 02:23:08'),
(1586, 10, 17, '274', 'Preventivo', '253.402', NULL, 'CAMBIO DE ACEITE:11 1/4 DE ACEITE\r\nFILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR', '446.250', '2020-02-03', NULL, NULL, '2021-02-14 02:25:32', '2021-02-14 02:25:32'),
(1587, 10, 17, '274', 'Preventivo', '253.402', NULL, 'CAMBIO DE ACEITE:11 1/4 DE ACEITE\r\nFILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR', '446.250', '2020-02-03', NULL, NULL, '2021-02-14 02:27:22', '2021-02-14 02:27:22'),
(1588, 29, 17, '6251', 'Preventivo', '265.755', NULL, 'CAMBIO DE ACEITE:11 1/4 DE ACEITE\r\nFILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR', '370.000', '2020-05-06', NULL, NULL, '2021-02-14 02:28:49', '2021-02-14 02:28:49'),
(1589, 29, 17, '6395', 'Preventivo', '280.110', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACPM', '220.000', '2020-09-10', NULL, NULL, '2021-02-14 02:29:49', '2021-02-14 02:29:49'),
(1590, 29, 17, '6436', 'Preventivo', '280.110', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE \r\n2 FILTRO AIRE ACONDICIONADO', '150.000', '2020-09-10', NULL, NULL, '2021-02-14 02:30:32', '2021-02-14 02:30:32'),
(1591, 8, 17, '58E13513', 'Preventivo', '0', NULL, 'BATERIA:1 BATERIA AUTO MAC 12V', '365.604', '2019-11-07', NULL, NULL, '2021-02-14 02:39:48', '2021-02-14 02:39:48'),
(1592, 45, 18, '28841', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria Auto Mac 49ST1100', '420.000', '2019-03-28', NULL, NULL, '2021-02-14 02:50:08', '2021-02-14 02:50:08'),
(1593, 8, 18, '32E77088', 'Correctivo', '0', NULL, 'BATERIA:1 Bateria auto mac 12v GARANTIA', '474.701', '2019-12-04', NULL, NULL, '2021-02-14 02:51:30', '2021-02-14 02:51:30'),
(1594, 8, 18, '32E79618', 'Correctivo', '0', NULL, 'BATERIA:', '503.200', NULL, NULL, NULL, '2021-02-14 02:55:32', '2021-02-14 02:55:32'),
(1595, 45, 18, '28841', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria Auto MAc 49ST1100', '420.000', '2019-03-28', NULL, NULL, '2021-02-14 02:56:39', '2021-02-14 02:56:39'),
(1596, 8, 18, '32E77088', 'Correctivo', '0', NULL, 'BATERIA:Bateria auto mac 12V cambio por garantia', '474.701', '2019-12-04', NULL, NULL, '2021-02-14 02:57:49', '2021-02-14 02:57:49'),
(1597, 8, 18, '32E79618', 'Correctivo', '0', NULL, 'BATERIA:1 Bateria auto mac 12v cambio por garantia de la compra el 28-03-2019', '503.200', '2020-02-13', NULL, NULL, '2021-02-14 02:58:40', '2021-02-14 02:58:40'),
(1598, 8, 18, '32E81953', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria Auto Mac', '503.200', '2020-06-16', NULL, NULL, '2021-02-14 02:59:50', '2021-02-14 02:59:50'),
(1599, 11, 18, '0250', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de villarec para mantenimiento del aire delantero y desmonte de aire trasero para mantenimiento, 1 libra de gas aire delantero, 1 libra de gas aire trasero', '242.000', '2020-07-18', NULL, NULL, '2021-02-14 03:02:10', '2021-02-14 03:02:10'),
(1600, 11, 18, '0467', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento general del aire acondicionado trasero y desmonte de villaret para mantenimiento general del aire delantero, 2 libras de gas, 1 válvula de presión del compresor', '314.820', '2020-10-19', NULL, NULL, '2021-02-14 03:04:09', '2021-02-14 03:04:09'),
(1601, 10, 18, '126', 'Preventivo', '225.728', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\n11 1/4 DE ACEITE DE MOTOR', '373.172', '2020-01-14', NULL, NULL, '2021-02-14 03:16:16', '2021-02-14 03:16:16'),
(1602, 10, 18, '183', 'Preventivo', '238.064', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR \r\n11 1/4 DE ACEITE DE MOTOR', '373.172', '2020-03-09', NULL, NULL, '2021-02-14 03:19:32', '2021-02-14 03:19:32'),
(1603, 29, 18, '6323', 'Preventivo', '250.410', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE ACPM\r\nFILTRO DE AIRE \r\n2 FILTRO A/C', '325.000', '2020-06-06', NULL, NULL, '2021-02-14 03:20:16', '2021-02-14 03:20:16'),
(1604, 29, 18, '6436', 'Preventivo', '263.536', NULL, 'CAMBIO DE ACEITE:1 FILTRO ACEOTE \r\n1 FILTRO ACPM\r\n1 TAMIX\r\n1 FILTRO AIRE', '296.000', '2020-09-17', NULL, NULL, '2021-02-14 03:20:58', '2021-02-14 03:20:58'),
(1605, 29, 18, '6574', 'Preventivo', '277.616', NULL, 'CAMBIO DE ACEITE:1 FILTRO ACEITE \r\n1 FILTRO ACPM\r\n1 TAMIX\r\n1 FILTRO AIRE', '305.000', '2020-12-28', NULL, NULL, '2021-02-14 03:21:43', '2021-02-14 03:21:43'),
(1606, 10, 34, '127', 'Preventivo', '57.741', NULL, 'CAMBIO DE ACEITE:FILTRO ACEITE\r\nFILTRO AIRE DE MOTOR\r\nFILTRO A/C\r\n8 1/4 ACEITE DE MOTOR', '130.900', '2020-01-08', NULL, NULL, '2021-02-14 03:25:06', '2021-02-14 03:25:06'),
(1607, 10, 34, '305', 'Preventivo', '66.180', NULL, 'CAMBIO DE ACEITE:FILTRO ACEITE\r\nFILTRO AIRE DE MOTOR\r\nFILTRO A/C\r\n8 1/4 ACEITE DE MOTOR', '184.450', '2020-02-29', NULL, NULL, '2021-02-14 03:26:11', '2021-02-14 03:26:11'),
(1608, 29, 34, '6255', 'Preventivo', '74.862', NULL, 'CAMBIO DE ACEITE:FILTRO ACEITE\r\nFILTRO DE MOTOR\r\n8 1/4 ACEITE DE MOTOR', '123.000', '2020-05-19', NULL, NULL, '2021-02-14 03:26:57', '2021-02-14 03:26:57'),
(1609, 29, 34, '6363', 'Preventivo', '83.501', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE TRAMPA\r\n8 1/4 ACEITE', '123.000', '2020-07-17', NULL, NULL, '2021-02-14 03:27:35', '2021-02-14 03:27:35'),
(1610, 29, 34, '6436', 'Preventivo', '91.677', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE TRAMPA\r\n8 1/4 ACEITE', '123.000', '2020-09-12', NULL, NULL, '2021-02-14 03:28:14', '2021-02-14 03:28:14'),
(1611, 29, 34, '6537', 'Preventivo', '98.688', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE TRAMPA\r\n8 1/4 ACEITE', '123.000', '2020-10-31', NULL, NULL, '2021-02-14 03:28:59', '2021-02-14 03:28:59'),
(1612, 29, 34, '6601', 'Preventivo', '108.051', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n8/4 ACEITE', '123.000', '2021-01-09', NULL, NULL, '2021-02-14 03:29:35', '2021-02-14 03:29:35'),
(1613, 10, 35, '280', 'Preventivo', '28.846', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nAIRE DE MOTOR\r\nAIRE ACONDICIONADO\r\n8 1/4 DE ACEITE', '184.450', '2020-02-15', NULL, NULL, '2021-02-14 03:33:43', '2021-02-14 03:33:43'),
(1614, 10, 35, '461', 'Preventivo', '37.380', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nAIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\nAIRE ACONDICIONADO\r\n8 1/4 DE ACEITE', '124.950', '2020-04-25', NULL, NULL, '2021-02-14 03:34:29', '2021-02-14 03:34:29'),
(1615, 29, 35, '6363', 'Preventivo', '46.200', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 AIRE ACONDICIONADO\r\n8 1/4 DE ACEITE', '123.000', '2020-07-03', NULL, NULL, '2021-02-14 03:37:37', '2021-02-14 03:37:37'),
(1616, 29, 35, '6395', 'Preventivo', '54.851', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE ACPM, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE AIRE\r\n8/4 ACEITE', '123.000', '2020-08-31', NULL, NULL, '2021-02-14 03:40:48', '2021-02-14 03:40:48'),
(1617, 29, 35, '6537', 'Preventivo', '63.597', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE ACPM, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE AIRE\r\n8/4 ACEITE', '123.000', '2020-11-09', NULL, NULL, '2021-02-14 03:41:32', '2021-02-14 03:41:32'),
(1618, 29, 35, '6601', 'Preventivo', '71.605', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE MOTOR, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE AIRE DE MOTOR \r\n8/4 ACEITE', '123.000', '2021-01-20', NULL, NULL, '2021-02-14 03:42:07', '2021-02-14 03:42:07'),
(1619, 11, 36, '0283', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Desmonte de villarec para mantenimiento del aire delantero y desmonte de aire trasero para mantenimiento, 1 lb de gas', '220.374', '2020-08-20', NULL, NULL, '2021-02-14 03:46:03', '2021-02-14 03:46:03'),
(1620, 135, 36, '1886', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento termo', '152.460', '2020-12-15', NULL, NULL, '2021-02-14 03:46:44', '2021-02-14 03:46:44'),
(1621, 10, 36, '168', 'Preventivo', '20.496', NULL, 'CAMBIO DE ACEITE:FILTRO ACEITE\r\nFILTRO AIRE DE MOTOR\r\nFILTRO MOTOR\r\n2 FILTRO A/C\r\n11 1/4 DE ACEITE', '389.999', '2020-01-11', NULL, NULL, '2021-02-14 03:48:00', '2021-02-14 03:48:00'),
(1622, 9, 36, '1827', 'Preventivo', '30.695', NULL, 'CAMBIO DE ACEITE:FILTRO A/A, \r\nTAMIZ TURBO,\r\nFILTRO AIRE, \r\nFILTRO DE COMBUSTIBLE\r\nFILTRO ACEITE\r\nFILTRO A/A TRASERO', '637.525', '2020-03-19', NULL, NULL, '2021-02-14 03:49:08', '2021-02-14 03:49:08'),
(1623, 29, 36, '6363', 'Preventivo', '43.639', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTROS DE A/C\r\n11 1/4 DE ACEITE', '120.000', '2020-07-02', NULL, NULL, '2021-02-14 03:49:58', '2021-02-14 03:49:58'),
(1624, 29, 36, '6488', 'Preventivo', '56.556', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTROS DE A/C\r\n11 1/4 DE ACEITE', '120.000', '2020-10-26', NULL, NULL, '2021-02-14 03:50:40', '2021-02-14 03:50:40'),
(1625, 29, 43, '6537', 'Preventivo', '16.953', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE \r\n1 FILTRO DE a/c\r\n1 FILTRO DE ACPM', '149.000', '2020-11-27', NULL, NULL, '2021-02-14 03:56:56', '2021-02-14 03:56:56'),
(1626, 26, 42, '12009', 'Preventivo', '9.388', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE A/C\r\n12 1/4 DE ACEITE', '82.232', '2020-03-16', NULL, NULL, '2021-02-14 03:58:23', '2021-02-14 03:58:23'),
(1627, 26, 42, '12009', 'Preventivo', '17.566', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\nFILTRO DE AIRE DE A/C\r\n11 1/4 DE ACEITE', '82.232', '2020-05-13', NULL, NULL, '2021-02-14 03:59:16', '2021-02-14 03:59:16'),
(1628, 29, 42, '6395', 'Preventivo', '27.339', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE, 1 FILTRO DE AIRE,  1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE MOTOR\r\n8/4 ACEITE', '149.000', '2020-08-31', NULL, NULL, '2021-02-14 03:59:58', '2021-02-14 03:59:58'),
(1629, 76, 47, '7448', 'Preventivo', '17.722', NULL, 'CAMBIO DE ACEITE:11/4 DE ACEITE \r\n1 FILTRO ACEITE \r\n2 FILTROS DE ACPM', '248.000', '2020-08-24', NULL, NULL, '2021-02-14 04:19:17', '2021-02-14 04:19:17'),
(1630, 9, 47, '2922', 'Preventivo', '26.560', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE \r\n2 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR\r\n10/4 ACEITE DE MOTOR \r\nPAGADO POR TURESANDES', '479.000', '2020-10-07', NULL, NULL, '2021-02-14 04:20:32', '2021-02-14 04:20:32'),
(1631, 29, 47, 'SAULO', 'Preventivo', '38.916', NULL, 'CAMBIO DE ACEITE:1 FILTRO DE ACEITE  \r\n10/4 ACEITE DE MOTOR \r\nComprado por RIO GRANDE pero nunca se cobró', '0', '2020-12-03', NULL, NULL, '2021-02-14 04:21:49', '2021-02-14 04:21:49'),
(1632, 11, 47, '0386', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo y calibración de gas, 2 libras de gas', '219.420', '2021-01-16', NULL, NULL, '2021-02-14 04:28:33', '2021-02-14 04:28:33'),
(1633, 11, 27, '0377', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo y calibración de gas, 3 libras de gas', '233.730', '2021-01-09', NULL, NULL, '2021-02-14 05:01:43', '2021-02-14 05:01:43'),
(1634, 11, 23, '0384', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo, 4 libras de gas', '248.040', '2021-01-15', NULL, NULL, '2021-02-14 05:08:04', '2021-02-14 05:08:04'),
(1635, 99, 24, '0253', 'Correctivo', '0', NULL, 'Mantenimiento alternador, reparación alternador aire, 1 balinera 6001, mantenimiento arranque, 1 balinera 6202, 1 regulador bush, 1 porta escobillas, 1 balinera B19, 1 balinera 6003, 1 balinera 6303', '633.000', '2020-11-25', NULL, NULL, '2021-02-14 05:12:22', '2021-02-14 05:12:22'),
(1636, 99, 5, '0252', 'Correctivo', '0', NULL, 'Mantenimiento arranque , 1 balinera 6001, 1 pacha 5 pines AC, mantenimiento alternador aire, 1 balinera B17, 1 balinera 6003', '307.000', '2020-11-25', NULL, NULL, '2021-02-14 05:26:16', '2021-02-14 05:26:16'),
(1637, 109, 18, 'N/A', 'Preventivo', '0', NULL, 'Peaje Rio Sogamoso y Lebrija. Jairo Rodriguez', '28.200', '2020-12-04', NULL, NULL, '2021-02-23 19:22:40', '2021-02-23 19:22:40'),
(1638, 109, 17, '1135951', 'Preventivo', '0', NULL, '2 peajes Rio Sogamoso', '19.400', '2020-12-02', NULL, NULL, '2021-02-23 19:24:42', '2021-02-23 19:24:42'),
(1639, 109, 17, '2032020', 'Preventivo', '0', NULL, '2 peajes rio sogamoso', '17.600', '2020-11-30', NULL, NULL, '2021-02-23 19:25:28', '2021-02-23 19:25:28'),
(1640, 109, 24, '1133682', 'Preventivo', '0', NULL, '2 peajes Rio Sogamoso servicio de la cafetera', '19.400', '2020-11-30', NULL, NULL, '2021-02-23 19:26:39', '2021-02-23 19:26:39'),
(1641, 177, 25, '773265', 'Correctivo', '0', NULL, '1 VULKEM 116 NEGRO X CARTUCHO 300 C.C', '22.000', '2020-11-05', NULL, NULL, '2021-02-23 19:52:43', '2021-02-23 19:52:43'),
(1642, 177, 39, '773265', 'Correctivo', '0', NULL, '1 VULKEM 116 NEGRO X CARTUCHO 300 C.C', '22.000', '2020-11-05', NULL, NULL, '2021-02-23 19:54:01', '2021-02-23 19:54:01'),
(1643, 21, 11, '2726', 'Preventivo', '0', NULL, '3 cauchos para la barra', '120.000', '2020-11-09', NULL, NULL, '2021-02-23 19:55:27', '2021-02-23 19:55:27'),
(1644, 51, 48, '177', 'Preventivo', '0', NULL, '2 Bombillo LED 67', '20.000', '2020-11-18', NULL, NULL, '2021-02-23 19:59:08', '2021-02-23 19:59:08'),
(1645, 51, 18, '80', 'Preventivo', '0', NULL, '4 Bombillo referencia 1141 en LED, 2 bombillo de techo en LED largo', '60.000', '2020-11-07', NULL, NULL, '2021-02-23 20:01:55', '2021-02-23 20:01:55'),
(1646, 51, 34, '191', 'Preventivo', '0', NULL, '1 Bombillo titan balloneta referencia 158', '20.000', '2020-11-19', NULL, NULL, '2021-02-23 20:03:36', '2021-02-23 20:03:36'),
(1647, 178, 28, '0767', 'Correctivo', '0', NULL, '2 Rotulas superiores, 2 rótulas inferiores, 2 terminal dirección, 2 colgantes, 2 bujes barra, 2 bujes tijera inferior. 2 buje tijera superior, 2 amortiguadores delanteros', '1.118.803', '2021-01-27', NULL, NULL, '2021-02-23 20:09:07', '2021-02-23 20:09:07'),
(1648, 167, 17, '4464', 'Preventivo', '0', NULL, 'Tecnicomecanica', '322.700', '2020-12-02', NULL, NULL, '2021-02-23 20:32:51', '2021-02-23 20:32:51'),
(1649, 109, 21, '187-433', 'Preventivo', '0', NULL, 'Peajes la lizama tecnicomecanica', '33.800', '2021-02-10', NULL, NULL, '2021-02-23 20:35:19', '2021-02-23 20:35:19'),
(1650, 69, 39, '106314', 'Correctivo', '0', NULL, '1 diafragma ATT24 SA,  1 diafragma T20 WG', '24.000', '2020-10-01', NULL, NULL, '2021-02-23 20:38:50', '2021-02-23 20:38:50'),
(1651, 71, 12, '3443', 'Correctivo', '0', NULL, 'Terminal guaya mazda T-45 derecha TCMAZ-012, 1 terminal guaya hino dereho', '50.000', '2020-10-01', NULL, NULL, '2021-02-23 20:42:15', '2021-02-23 20:42:15');
INSERT INTO `mantenimientos` (`id`, `proveedor_id`, `vehiculo_id`, `factura`, `tipo`, `km_actual`, `km_siguiente`, `descripcion`, `subtotal`, `fecha_ejecutado`, `short`, `aux`, `created_at`, `updated_at`) VALUES
(1652, 68, 12, '36481', 'Preventivo', '0', NULL, '2 Tornillo Hex', '2.600', '2020-10-01', NULL, NULL, '2021-02-23 21:02:30', '2021-02-23 21:02:30'),
(1653, 51, 9, '20921', 'Preventivo', '0', NULL, '20 arne plaste', '5.000', '2020-10-01', NULL, NULL, '2021-02-23 21:05:02', '2021-02-23 21:05:02'),
(1654, 127, 39, '0911', 'Preventivo', '0', NULL, '1 Acople plastico 12mm 1/2', '24.850', '2020-10-01', NULL, NULL, '2021-02-23 21:06:14', '2021-02-23 21:06:14'),
(1655, 83, 39, '216', 'Correctivo', '0', NULL, 'Fabricación de rosca NPT', '35.700', '2020-10-01', NULL, NULL, '2021-02-23 21:07:08', '2021-02-23 21:07:08'),
(1656, 179, 47, '265774', 'Preventivo', '0', NULL, 'Sikaflex 221 negro', '70.001', '2020-09-16', NULL, NULL, '2021-02-23 21:10:49', '2021-02-23 21:10:49'),
(1657, 68, 21, '40478', 'Preventivo', '0', NULL, '2 tornillo  jap, 1 trabarroscas 271x6ml', '22.700', '2020-09-16', NULL, NULL, '2021-02-23 21:12:24', '2021-02-23 21:12:24'),
(1658, 68, 21, '32784', 'Preventivo', '0', NULL, '3 Fresa alta velocidad', '13.500', '2020-09-16', NULL, NULL, '2021-02-23 21:15:52', '2021-02-23 21:16:03'),
(1659, 180, 51, '0183', 'Preventivo', '0', NULL, '2 Disco 4/2', '10.000', '2020-09-19', NULL, NULL, '2021-02-23 21:20:00', '2021-02-23 21:20:00'),
(1660, 181, 51, '4012015', 'Preventivo', '0', NULL, '1.06 galones de corriente', '8.586', '2020-09-18', NULL, NULL, '2021-02-23 21:30:23', '2021-02-23 21:30:23'),
(1661, 83, 22, '207', 'Correctivo', '0', NULL, 'Fabricación de perilla', '59.500', '2020-09-17', NULL, NULL, '2021-02-23 21:31:28', '2021-02-23 21:31:28'),
(1662, 182, 51, '1164', 'Preventivo', '0', NULL, '1 Alicate pinza, 2 destornilladores pala 1/4\" x6\", 1 llave combinada sata 14 mm referencia 40209A, 2 llave combinada sata 10 mm referencia 40205A', '74.200', '2020-09-16', NULL, NULL, '2021-02-23 21:34:37', '2021-02-23 21:34:37'),
(1663, 127, 27, '0952', 'Correctivo', '0', NULL, '6 metros manguera tubing 8 mm', '27.000', '2020-09-12', NULL, NULL, '2021-02-23 21:37:08', '2021-02-23 21:37:08'),
(1664, 127, 51, '0963', 'Correctivo', '0', NULL, '1 Acople 1/4 tipo foste', '25.000', '2020-09-15', NULL, NULL, '2021-02-23 21:38:29', '2021-02-23 21:38:29'),
(1665, 112, 16, '7163', 'Correctivo', '0', NULL, '1 Switch parqueo', '18.000', '2020-09-12', NULL, NULL, '2021-02-23 21:44:45', '2021-02-23 21:44:45'),
(1666, 180, 51, '610', 'Preventivo', '0', NULL, '2 lija #320, 2 lija #220', '4.000', '2020-09-14', NULL, NULL, '2021-02-23 22:09:32', '2021-02-23 22:09:32'),
(1667, 68, 51, '40315', 'Correctivo', '0', NULL, '1 lubricante penetrante CRC 5-56', '13.400', '2020-09-15', NULL, NULL, '2021-02-23 22:20:43', '2021-02-23 22:20:43'),
(1668, 68, 51, '40314', 'Correctivo', '0', NULL, '1 Boquilla dispensadora', '7.500', '2020-09-15', NULL, NULL, '2021-02-23 22:22:14', '2021-02-23 22:22:14'),
(1669, 181, 51, '4008313', 'Correctivo', '0', NULL, '6.17 galones de corriente', '50.000', '2020-09-14', NULL, NULL, '2021-02-23 22:26:28', '2021-02-23 22:26:28'),
(1670, 2, 51, '566518', 'Preventivo', '0', NULL, '3 Escoba carro fuller', '36.000', '2020-01-03', NULL, NULL, '2021-02-24 00:09:05', '2021-02-24 00:09:05'),
(1671, 109, 42, '0886', 'Preventivo', '0', NULL, 'peajes de Fredis Diaz viaje a Bogotá', '101.900', '2020-10-09', NULL, NULL, '2021-02-24 00:12:14', '2021-02-24 00:12:14'),
(1672, 181, 51, '4005311', 'Preventivo', '0', NULL, '1.09 galones de gasolina corriente', '8.789', '2020-09-10', NULL, NULL, '2021-02-24 00:13:58', '2021-02-24 00:13:58'),
(1673, 180, 51, '522', 'Correctivo', '0', NULL, '2 Disco metal', '10.000', '2020-09-08', NULL, NULL, '2021-02-24 00:14:58', '2021-02-24 00:14:58'),
(1674, 12, 9, '10066', 'Correctivo', '0', NULL, 'Soldada de radiador', '59.500', '2020-09-09', NULL, NULL, '2021-02-24 00:16:51', '2021-02-24 00:16:51'),
(1675, 175, 22, '120', 'Correctivo', '0', NULL, '6 borne tipo pesado', '48.000', '2020-08-31', NULL, NULL, '2021-02-24 00:18:27', '2021-02-24 00:18:27'),
(1676, 12, 22, '10047', 'Correctivo', '0', NULL, 'Tapa para radiador', '53.550', '2020-08-31', NULL, NULL, '2021-02-24 00:19:08', '2021-02-24 00:19:08'),
(1677, 51, 32, '20428', 'Preventivo', '0', NULL, '1 bombillo balloneta', '10.000', '2020-08-31', NULL, NULL, '2021-02-24 00:20:15', '2021-02-24 00:20:15'),
(1678, 2, 18, '0', 'Correctivo', '0', NULL, 'Arreglo de chapa', '20.000', '2020-08-31', NULL, NULL, '2021-02-24 00:20:55', '2021-02-24 00:20:55'),
(1679, 68, 17, '35382', 'Preventivo', '0', NULL, '6 Tornillo hex', '3.300', '2020-09-09', NULL, NULL, '2021-02-24 00:22:01', '2021-02-24 00:22:01'),
(1680, 68, 15, '39832', 'Preventivo', '0', NULL, '6 arandela plana INOX', '8.220', '2020-09-08', NULL, NULL, '2021-02-24 00:23:10', '2021-02-24 00:23:10'),
(1681, 69, 15, '205913', 'Preventivo', '0', NULL, '6 aransellin', '12.000', '2020-09-09', NULL, NULL, '2021-02-24 00:24:15', '2021-02-24 00:24:15'),
(1682, 69, 15, '105896', 'Preventivo', '0', NULL, '4 laina ajuste, 2 cut 81T', '20.000', '2020-09-09', NULL, NULL, '2021-02-24 00:25:33', '2021-02-24 00:25:33'),
(1683, 69, 15, '105868', 'Preventivo', '0', NULL, '2 grapa cuadrada', '28.000', '2020-09-08', NULL, NULL, '2021-02-24 00:26:22', '2021-02-24 00:26:22'),
(1684, 69, 15, '105889', 'Preventivo', '0', NULL, '6 ARAN 8X4', '12.000', '2020-09-08', NULL, NULL, '2021-02-24 00:27:51', '2021-02-24 00:27:51'),
(1685, 69, 13, '108699', 'Correctivo', '0', NULL, '1 Empaque S3225', '47.000', '2021-02-11', NULL, NULL, '2021-02-24 01:02:03', '2021-02-24 01:02:03'),
(1686, 164, 27, '4356', 'Preventivo', '0', NULL, 'Compra 1 vinilo de techo negro brillante', '18.000', '2021-02-12', NULL, NULL, '2021-02-24 04:00:03', '2021-02-24 04:00:03'),
(1687, 51, 19, '0630', 'Correctivo', '0', NULL, '1 Pito de reversa OSISHORN', '40.000', '2021-02-13', NULL, NULL, '2021-02-24 04:01:15', '2021-02-24 04:01:15'),
(1688, 53, 47, '0173', 'Correctivo', '0', NULL, '1 Bobinado inducido planta Mercedez 24v', '170.000', '2021-02-13', NULL, NULL, '2021-02-24 04:02:36', '2021-02-24 04:02:36'),
(1689, 127, 39, '0276', 'Correctivo', '0', NULL, '0.60 manguera caucho y lona', '7.200', '2021-02-01', NULL, NULL, '2021-02-24 17:32:25', '2021-02-24 17:32:25'),
(1690, 68, 25, '39968', 'Preventivo', '0', NULL, '5 lija de agua grano 180 abracol, 1 aerocolor laca brillante negro x300ml', '18.950', '2021-01-18', NULL, NULL, '2021-02-24 17:35:03', '2021-02-24 17:35:03'),
(1691, 2, 51, '13351', 'Preventivo', '0', NULL, '14 Kg trapo carpeta -TUBERIAS, LAMINAS Y PERFILES SA', '50.400', '2021-01-19', NULL, NULL, '2021-02-24 17:53:15', '2021-02-24 17:53:15'),
(1692, 127, 11, '0265', 'Preventivo', '0', NULL, '3 Orings', '4.800', '2021-01-26', NULL, NULL, '2021-02-24 21:41:56', '2021-02-24 21:41:56'),
(1693, 51, 5, '515', 'Preventivo', '0', NULL, '4 Bocel plano, 1 limpiador electronico', '60.000', '2021-01-26', NULL, NULL, '2021-02-24 21:43:17', '2021-02-24 21:43:17'),
(1694, 69, 25, '108360', 'Correctivo', '0', NULL, '7 Laina splint', '10.500', '2021-01-02', NULL, NULL, '2021-02-24 21:44:43', '2021-02-24 21:44:43'),
(1695, 51, 19, '468', 'Correctivo', '0', NULL, '1 Bombillo h7 12v titan', '12.000', '2021-01-08', NULL, NULL, '2021-02-24 21:46:08', '2021-02-24 21:46:08'),
(1696, 51, 17, '468', 'Correctivo', '0', NULL, '1 Bombillo H7 12V titan', '12.000', '2021-01-08', NULL, NULL, '2021-02-24 21:49:33', '2021-02-24 21:49:33'),
(1697, 51, 18, '468', 'Correctivo', '0', NULL, '1 Bombillo h7 12v titan', '12.000', '2021-01-08', NULL, NULL, '2021-02-24 21:50:32', '2021-02-24 21:50:32'),
(1698, 181, 51, '4128039', 'Preventivo', '0', NULL, '1.08 galones de corriente', '8.812', '2021-01-26', NULL, NULL, '2021-02-24 21:52:05', '2021-02-24 21:52:05'),
(1699, 127, 51, '0264', 'Correctivo', '0', NULL, 'Ensamble de punta (Compresor taller)', '20.000', '2021-01-25', NULL, NULL, '2021-02-24 21:53:43', '2021-02-24 21:53:43'),
(1700, 68, 21, '43967', 'Preventivo', '0', NULL, '2 perro galvanizado tipo pesado 1/8', '2.700', '2021-02-03', NULL, NULL, '2021-02-24 21:54:56', '2021-02-24 21:54:56'),
(1701, 57, 18, '1825', 'Preventivo', '0', NULL, '4 Arandelas', '15.000', '2021-01-28', NULL, NULL, '2021-02-24 21:55:56', '2021-02-24 21:55:56'),
(1702, 109, 30, '0', 'Preventivo', NULL, NULL, 'Peajes para recibir vehículo TAR-546', '100.800', '2020-11-20', NULL, NULL, '2021-02-24 22:06:39', '2021-02-24 22:06:39'),
(1703, 109, 57, '0', 'Preventivo', '0', NULL, 'Bus nuevo de Bogotá a Barrancabermeja', '84.000', '2020-11-20', NULL, NULL, '2021-02-24 22:08:23', '2021-02-24 22:08:23'),
(1704, 15, 13, '441', 'Preventivo', '0', NULL, 'Recarga 10 lbs ABC', '14.280', '2020-12-10', NULL, NULL, '2021-02-24 22:10:10', '2021-02-24 22:10:10'),
(1705, 62, 12, '557', 'Correctivo', '0', NULL, '1 Medio juego de bandas de freno, 1 silicona gris loctite, 1 liquido de freno  AT aléman 1/4, 2 chupas hino, 1 retenedor delantero hino', '173.000', '2020-12-21', NULL, NULL, '2021-02-24 22:14:58', '2021-02-24 22:14:58'),
(1706, 173, 13, '4244', 'Correctivo', '0', NULL, 'Cambio sello bomba de agua HINO', '80.000', '2021-02-06', NULL, NULL, '2021-02-24 22:19:03', '2021-02-24 22:19:03'),
(1707, 183, 57, '2829', 'Preventivo', '0', NULL, '1 Polarizado', '180.000', '2021-01-07', NULL, NULL, '2021-02-24 22:21:39', '2021-02-24 22:21:39'),
(1708, 183, 13, '2840', 'Preventivo', '0', NULL, 'Avisos y polarizados', '210.000', '2021-01-15', NULL, NULL, '2021-02-24 22:22:17', '2021-02-24 22:22:17'),
(1709, 183, 25, '828', 'Preventivo', '0', NULL, 'Polarizado y franja', '70.000', '2021-01-07', NULL, NULL, '2021-02-24 22:24:17', '2021-02-24 22:24:17'),
(1710, 183, 25, '828', 'Preventivo', '0', NULL, 'Polarizado y franja', '70.000', '2021-01-07', NULL, NULL, '2021-02-24 22:24:17', '2021-02-24 22:24:17'),
(1711, 161, 51, '136520', 'Preventivo', '0', NULL, '1.074 galones de gasolina corriente', '9.000', '2021-02-22', NULL, NULL, '2021-02-25 00:09:12', '2021-02-25 00:09:12'),
(1712, 181, 49, '122964', 'Preventivo', '0', NULL, '8.170 galones de diesel', '400.000', '2021-02-06', NULL, NULL, '2021-02-25 00:12:22', '2021-02-25 00:12:22'),
(1713, 51, 57, '0495', 'Correctivo', '0', NULL, '1 Parasol polarizado  grande 53 cm*130 cm, 2 tapas para velas guias', '26.000', '2021-01-25', NULL, NULL, '2021-02-25 00:14:23', '2021-02-25 00:14:23'),
(1714, 184, 52, '27052', 'Correctivo', '0', NULL, '2 Amortiguadores delantero toyota hilux vigo, 2 amortiguadores traseros toyota fortuner, 2 espiral delanteros toyota hilux vigo', '1.258.000', '2021-02-22', NULL, NULL, '2021-02-25 00:25:40', '2021-02-25 00:25:40'),
(1715, 139, 5, '5051', 'Correctivo', '0', NULL, '1 Hoja de muelle principal trasera', '345.000', '2021-01-13', NULL, NULL, '2021-02-25 00:34:51', '2021-02-25 00:34:51'),
(1716, 36, 57, '08576', 'Preventivo', '0', NULL, 'Compra de 1 filtro de aceite, 1 filtro de aire', '351.446', '2021-02-12', NULL, NULL, '2021-02-25 00:36:33', '2021-02-25 00:36:33'),
(1717, 36, 15, '08575', 'Correctivo', '0', NULL, '1 Juego metal biel , 1 juego de metal BCDA, 1 juego de metal axial, 1 empaque de culata, 4 juego anillo x piston, 1 termostato. 1 bulbo temperatura, 1 empaque carter, 2 silicona gris/forester, 1 empaque tapa válvula, 1 empaque admisión', '3.149.123', '2021-02-12', NULL, NULL, '2021-02-25 00:39:29', '2021-02-25 00:39:29'),
(1718, 9, 49, '232357', 'Preventivo', '0', NULL, 'Compra de 1 filtro de aire, 1 prefiltro de aire', '263.549', '2021-02-12', NULL, NULL, '2021-02-25 00:40:40', '2021-02-25 00:40:40'),
(1719, 69, 13, '108810', 'Correctivo', '0', NULL, '1 Empaque palyu040', '70.000', '2021-02-19', NULL, NULL, '2021-02-25 01:47:56', '2021-02-25 01:47:56'),
(1720, 185, 52, '1201', 'Preventivo', '0', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación y balanceo', '60.000', '2021-02-22', NULL, NULL, '2021-02-25 01:57:59', '2021-02-25 01:57:59'),
(1721, 112, 57, '46', 'Correctivo', '0', NULL, '2 Bombillo LED 158 azul 24 voltios, 2 socket bombillo 158', '20.000', '2021-02-23', NULL, NULL, '2021-02-25 01:59:25', '2021-02-25 01:59:25'),
(1722, 51, 57, '602', 'Correctivo', '0', NULL, '3 cable duplex grueso 18, 1 silicona fresa', '20.500', '2021-02-23', NULL, NULL, '2021-02-25 02:00:16', '2021-02-25 02:00:16'),
(1723, 5, 51, '173074', 'Correctivo', '0', NULL, '1 Manguera tipo fenix 1/2x20mts, para el lavadero de los buses', '100.000', '2021-02-05', NULL, NULL, '2021-02-25 02:01:47', '2021-02-25 02:01:47'),
(1724, 103, 33, '19540', 'Correctivo', '0', NULL, '1 Clutch toyota hilux', '200.000', '2021-02-22', NULL, NULL, '2021-02-25 02:03:24', '2021-02-25 02:03:24'),
(1725, 12, 13, '10367', 'Correctivo', '0', NULL, 'Soldada de radiador', '47.600', '2021-02-20', NULL, NULL, '2021-02-25 02:04:19', '2021-02-25 02:04:19'),
(1726, 12, 15, '10357', 'Correctivo', '0', NULL, 'Manguera codo para radiador', '77.350', '2021-02-15', NULL, NULL, '2021-02-25 02:05:33', '2021-02-25 02:05:33'),
(1727, 68, 51, '44836', 'Preventivo', '0', NULL, '20 tornillo hex flang trizado 6x25, 20 wasa negra de 1/4\", 40 arandela plana especial zinc 1/4, 30 tuerca flange 6mm', '15.300', '2021-02-17', NULL, NULL, '2021-02-25 02:07:46', '2021-02-25 02:07:46'),
(1728, 181, 51, '1387485', 'Preventivo', '0', NULL, '5.967 galones de gasolina corriente', '50.000', '2021-02-23', NULL, NULL, '2021-02-25 02:08:41', '2021-02-25 02:08:41'),
(1729, 11, 44, '0448', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Mantenimiento al aire acondicionado, cambio de filtros de cabina y calibración de gas, 1 filtro , 1 lb de gas', '115.000', '2020-10-08', NULL, NULL, '2021-02-25 03:37:00', '2021-02-25 03:37:00'),
(1730, 11, 44, '0469', 'Correctivo', '0', NULL, 'Arreglo de cochera del compresor del aire acondicionado', '80.000', '2020-10-22', NULL, NULL, '2021-02-25 03:38:00', '2021-02-25 03:38:00'),
(1731, 68, 51, '44723', 'Preventivo', '0', NULL, '1 Juego de destornillador, 1 juego de copas, 1 juego de llaves bristol', '157.251', '2021-01-21', NULL, NULL, '2021-02-25 19:07:43', '2021-02-25 19:07:43'),
(1733, 101, 31, '6118', 'Correctivo', '0', NULL, '1 correa alternador ventilador', '343.522', '2021-02-03', NULL, NULL, '2021-02-25 19:35:33', '2021-02-25 19:35:33'),
(1734, 101, 53, '6081', 'Preventivo', '0', NULL, 'Compra filtros: 1 filtro aire motor, 1 filtro aire acondicionado, 1 filtro de aceite', '319.615', '2021-01-20', NULL, NULL, '2021-02-25 19:37:00', '2021-02-25 19:37:00'),
(1735, 101, 28, '1116', 'Correctivo', '0', NULL, '1 Correa repartición motor', '171.091', '2021-02-10', NULL, NULL, '2021-02-25 19:38:01', '2021-02-25 19:38:01'),
(1736, 177, 51, '1878', 'Preventivo', '0', NULL, '2 Vulkem 116 negro x cartucho 300 c.c', '45.200', '2021-02-17', NULL, NULL, '2021-02-25 21:39:29', '2021-02-25 21:39:29'),
(1737, 53, 51, '0178', 'Preventivo', '0', NULL, '1 Bobinado de corona Bosch 24V', '140.000', '2021-02-17', NULL, NULL, '2021-02-25 22:05:27', '2021-02-25 22:05:27'),
(1738, 53, 13, '0179', 'Correctivo', '0', NULL, 'Bobinado corona  bosch 24v, cambio de colector inducido planta', '200.000', '2021-02-17', NULL, NULL, '2021-02-25 22:07:11', '2021-02-25 22:08:41'),
(1739, 135, 24, '1948', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo, corrección de fuga, manguera B/32 entrada, Compresor acople, 1 aceite compresor, 8 refrigerantes 134A', '338.670', '2021-02-16', NULL, NULL, '2021-02-25 22:26:44', '2021-02-25 22:26:44'),
(1740, 135, 5, '1949', 'Correctivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:1 Extractor, correción de fuga en el techo cambio de acople al igual que la entrada al compresor, 1 aceite, 8 refrigerante 134A', '481.770', '2021-02-16', NULL, NULL, '2021-02-25 22:29:10', '2021-02-25 22:29:10'),
(1741, 135, 49, '1944', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo filtro cabina', '90.000', '2021-02-16', NULL, NULL, '2021-02-26 00:05:58', '2021-02-26 00:05:58'),
(1742, 135, 13, '1946', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo, 3 recarga de gas', '200.340', '2021-02-16', NULL, NULL, '2021-02-26 00:14:33', '2021-02-26 00:14:33'),
(1743, 187, 57, '13170', 'Correctivo', '0', NULL, '1 Urea automotriz. Remisión con fecha del 18 de diciembre 2020', '103.506', '2021-02-25', NULL, NULL, '2021-02-26 01:25:17', '2021-02-26 01:25:17'),
(1744, 109, 43, '1367186', 'Preventivo', '0', NULL, 'Peaje lebrija', '7.800', '2021-02-22', NULL, NULL, '2021-03-11 17:21:25', '2021-03-11 17:21:25'),
(1746, 109, 12, '280981', 'Preventivo', '0', NULL, 'Peaje lebrija', '8.900', '2021-02-26', NULL, NULL, '2021-03-11 17:25:18', '2021-03-11 17:25:18'),
(1747, 133, 11, '2782', 'Correctivo', '0', NULL, '1 Splinder dirección HINO micro bus', '180.000', '2021-02-22', NULL, NULL, '2021-03-11 17:26:44', '2021-03-11 17:26:44'),
(1748, 181, 41, '134794', 'Preventivo', '0', NULL, '7.273 galones de diesel', '60.000', '2021-02-20', NULL, NULL, '2021-03-11 17:30:15', '2021-03-11 17:30:15'),
(1749, 188, 41, '1277', 'Preventivo', '0', NULL, '2.427 galones de ACPM', '20.000', '2021-02-20', NULL, NULL, '2021-03-11 17:33:49', '2021-03-11 17:33:49'),
(1750, 139, 11, '5309', 'Correctivo', '0', NULL, '2 Rodillo delantero, 2 amortiguadores delanteros', '380.000', '2021-02-22', NULL, NULL, '2021-03-11 17:35:05', '2021-03-11 17:35:05'),
(1751, 189, 11, '0368', 'Correctivo', '0', NULL, 'Reparación bomba hino, cambio de empaquetaduras.', '160.000', '2021-02-22', NULL, NULL, '2021-03-11 17:37:54', '2021-03-11 17:37:54'),
(1752, 183, 49, '3013', 'Preventivo', '0', NULL, 'Cinta reflectiva', '65.000', '2021-02-27', NULL, NULL, '2021-03-11 17:38:49', '2021-03-11 17:38:49'),
(1755, 134, 11, '350', 'Correctivo', '0', NULL, 'Armar y desarmar cachos, rimar cachos, pintar tren delantero, ajustar 4 terminales barra', '170.000', '2021-02-22', NULL, NULL, '2021-03-11 17:46:32', '2021-03-11 17:46:32'),
(1756, 36, 11, '8676', 'Correctivo', '0', NULL, 'Kit sellos dirección FC9J, 2 sello cambio referencia GD1J', '232.069', '2021-02-22', NULL, NULL, '2021-03-11 17:47:46', '2021-03-11 17:47:46'),
(1757, 190, 11, '5525', 'Preventivo', '0', NULL, '4/4 de aceite rimula 50 shell', '50.000', '2021-02-22', NULL, NULL, '2021-03-11 17:48:22', '2021-03-11 17:48:22'),
(1758, 150, 11, '4377', 'Correctivo', '0', NULL, 'Sondeo  y cambio de tanque superior de radiador', '300.000', '2021-03-03', NULL, NULL, '2021-03-11 17:51:13', '2021-03-11 17:51:13'),
(1759, 109, 11, '223467', 'Preventivo', '0', NULL, '2 Peajes a lebrija', '17.800', '2021-03-02', NULL, NULL, '2021-03-11 17:52:16', '2021-03-11 17:52:16'),
(1760, 191, 11, '0166', 'Correctivo', '0', NULL, 'Empaquetadura botella y mantenimiento, cambio de bomba hidraulica, mangueras y abrasaderas, 1 deposito hidraulico base deposito, 3/4 hidraulico', '580.000', '2021-03-02', NULL, NULL, '2021-03-11 17:59:29', '2021-03-11 17:59:29'),
(1761, 90, 11, '822', 'Correctivo', '0', NULL, '1 Bomba de hidraulico hino Fc95', '600.000', '2021-03-02', NULL, NULL, '2021-03-11 18:01:05', '2021-03-11 18:01:05'),
(1762, 131, 54, '158', 'Correctivo', '0', NULL, '14 Freon, 6.50 metros de manguera, 5 oring, 1 filtro secador, 1 mano de obra', '1.044.000', '2021-03-10', NULL, NULL, '2021-03-11 18:06:34', '2021-03-11 18:06:34'),
(1763, 29, 54, 'N/A', 'Preventivo', '0', NULL, '1 Filtro de aire, 1 tensionada de frenos', '58.000', '2021-03-06', NULL, NULL, '2021-03-11 18:07:35', '2021-03-11 18:07:35'),
(1764, 192, 54, '3262', 'Preventivo', '0', NULL, '1 Galon de refrigerante', '40.000', '2021-03-05', NULL, NULL, '2021-03-11 18:10:01', '2021-03-11 18:10:01'),
(1765, 193, 54, '0356', 'Correctivo', '0', NULL, '1 Arreglo planta aire, 1 relay', '140.000', '2021-03-05', NULL, NULL, '2021-03-11 18:20:24', '2021-03-11 18:20:24'),
(1766, 194, 54, '2124', 'Correctivo', '0', NULL, 'Desmontaje de radiador, mantenimiento, lavado de radiador e intercooler', '160.000', '2021-03-05', NULL, NULL, '2021-03-11 18:48:29', '2021-03-11 18:48:29'),
(1767, 195, 54, '1050', 'Correctivo', '0', NULL, '9 Rotor de planta bosh', '140.000', '2021-03-05', NULL, NULL, '2021-03-11 18:55:26', '2021-03-11 18:55:26'),
(1768, 196, 54, '2021', 'Preventivo', '0', NULL, 'Lavado corriente', '40.000', '2021-03-05', NULL, NULL, '2021-03-11 19:00:46', '2021-03-11 19:00:46'),
(1769, 197, 54, '3803', 'Preventivo', '0', NULL, '1 Lavado de equipo de aire a vapor', '70.000', '2021-03-05', NULL, NULL, '2021-03-11 19:05:40', '2021-03-11 19:05:40'),
(1770, 54, 41, '8709', 'Preventivo', '0', NULL, 'Lavado especial', '110.000', '2021-02-27', NULL, NULL, '2021-03-11 19:09:46', '2021-03-11 19:09:46'),
(1771, 131, 12, '146', 'Correctivo', '0', NULL, '4 Freon, 1 aceite, 1 sello compresor, 2 válvula de expansión orificio, 1 filtro secador, 2 plato de válvulas, 1 válvula, 1 mano de obra', '1.752.000', '2021-03-01', NULL, NULL, '2021-03-11 19:26:09', '2021-03-11 19:26:09'),
(1772, 198, 57, '2128', 'Preventivo', '0', NULL, '1 Botiquin según norma', '160.000', '2020-11-24', NULL, NULL, '2021-03-11 19:29:48', '2021-03-11 19:29:48'),
(1773, 127, 51, '263', 'Correctivo', '0', NULL, '20 mts manguera caucho y lona multiproposito', '160.000', '2021-02-22', NULL, NULL, '2021-03-11 19:36:53', '2021-03-11 19:36:53'),
(1774, 127, 51, '265', 'Correctivo', '0', NULL, '1 acople aire aguja acero, 1 fitting macho 1/2 foster', '62.000', '2021-02-22', NULL, NULL, '2021-03-11 19:39:03', '2021-03-11 19:39:03'),
(1775, 131, 44, '97', 'Correctivo', '0', NULL, '1 compresor, 1 freon, 1 aceite, 1 filtro secador, 1 mano de obra', '964.706', '2021-01-26', NULL, NULL, '2021-03-11 19:41:01', '2021-03-11 19:41:01'),
(1776, 127, 15, '266', 'Preventivo', '0', NULL, '4 orings\'s S/M', '4.800', '2021-02-22', NULL, NULL, '2021-03-11 19:42:51', '2021-03-11 19:42:51'),
(1777, 109, 52, '1147146', 'Preventivo', '0', NULL, 'Peaje lebrija', '7.800', '2021-02-20', NULL, NULL, '2021-03-11 19:46:20', '2021-03-11 19:46:20'),
(1778, 109, 52, '116539', 'Preventivo', '0', NULL, 'Peaje lebrija', '7.800', '2021-03-04', NULL, NULL, '2021-03-11 19:46:52', '2021-03-11 19:46:52'),
(1779, 54, 50, '8710', 'Preventivo', '0', NULL, 'Lavado especial', '65.000', '2021-02-27', NULL, NULL, '2021-03-11 19:48:33', '2021-03-11 19:48:33'),
(1780, 137, 57, '2234', 'Correctivo', '0', NULL, 'Instalación de cornetas y accesorios, instalación electrica de regletas, semaforo, velas y accesorios', '570.000', '2021-01-09', NULL, NULL, '2021-03-25 18:09:02', '2021-03-25 18:09:02'),
(1781, 109, 35, '28545', 'Preventivo', '0', NULL, '2 peajes la lizama servicio CENIT planta lizama -Alfredo Rodriguez', '27.400', '2021-03-26', NULL, NULL, '2021-03-27 03:21:23', '2021-03-27 03:21:23'),
(1782, 109, 42, '27571', 'Preventivo', '0', NULL, 'Servicio Impala Bucaramanga Barrancabermeja -Efrain Sanabria', '27.400', '2021-03-23', NULL, NULL, '2021-03-27 03:30:56', '2021-03-27 03:30:56'),
(1783, 43, 54, '508', 'Preventivo', '0', NULL, 'Cambio de empaquetadura a turbo NKR Riward', '499.200', '2021-03-08', NULL, NULL, '2021-03-27 03:32:02', '2021-03-27 03:32:02'),
(1784, 53, 5, '0191', 'Correctivo', '0', NULL, 'Bobinado de corona bosch, cambio de colector inducido planta bosch', '210.000', '2021-03-17', NULL, NULL, '2021-03-27 03:39:58', '2021-03-27 03:39:58'),
(1785, 69, 5, '1496', 'Correctivo', '0', NULL, '2 Retenedor referencia 69099 VICTOR, 2 retenedor referencia 69100 VICTOR, 2 chupa cilindro freno 94444 17/16 trasera hino, 4 juego de chupas anillo', '236.000', '2021-03-16', NULL, NULL, '2021-03-27 03:50:15', '2021-03-27 03:50:15'),
(1786, 69, 22, '1566', 'Correctivo', '0', NULL, '2 retenedor rueda del casb 72x92x16', '40.000', '2021-03-23', NULL, NULL, '2021-03-27 03:51:15', '2021-03-27 03:51:15'),
(1787, 51, 27, '0972', 'Correctivo', '0', NULL, '1 Polarizado completo polac, 1 arreglo de radio', '80.000', '2021-03-19', NULL, NULL, '2021-03-27 03:55:48', '2021-03-27 03:55:48'),
(1789, 21, 21, '3000', 'Correctivo', '0', NULL, '10 bujes para soporte muelle', '350.000', '2021-03-25', NULL, NULL, '2021-03-29 20:55:00', '2021-03-29 20:55:00'),
(1790, 69, 21, '1597', 'Correctivo', '0', NULL, '2 Retenedor rueda delantero, 2 retenedor 69130 VICTOR', '80.000', '2021-03-25', NULL, NULL, '2021-03-29 20:57:10', '2021-03-29 20:57:10'),
(1791, 9, 27, '1438', 'Correctivo', '0', NULL, '2 Pastillas de freno delanteras, 2 pastillas de freno trasera', '315.076', '2021-01-20', NULL, NULL, '2021-03-29 21:22:30', '2021-03-29 21:22:30'),
(1792, 9, 17, '1438', 'Correctivo', '0', NULL, '1 Disco de freno trasero', '375.624', '2021-01-20', NULL, NULL, '2021-03-29 21:24:49', '2021-03-29 21:24:49'),
(1793, 130, 54, '1785', 'Preventivo', '0', NULL, '1/5 refrigerante rogo BEG, 6 1/6 refrigerante rojo', '75.000', '2021-03-09', NULL, NULL, '2021-03-29 21:39:22', '2021-03-29 21:39:22'),
(1794, 130, 49, '1785', 'Preventivo', '0', NULL, '1/5 refrigerante rogo BEG, 6 1/6 refrigerante rojo', '75.000', '2021-03-09', NULL, NULL, '2021-03-29 21:40:00', '2021-03-29 21:40:00'),
(1795, 17, 34, '1307', 'Preventivo', '0', NULL, '2 Servicio de retilo e instalación de adhesivos en cinta reflectiva de logo para camionetas', '40.000', '2021-03-12', NULL, NULL, '2021-03-29 21:41:15', '2021-03-29 21:41:15'),
(1796, 17, 35, '1307', 'Preventivo', '0', NULL, '2 Servicio de retilo e instalación de adhesivos en cinta reflectiva de logo para camionetas', '40.000', '2021-03-12', NULL, NULL, '2021-03-29 21:41:45', '2021-03-29 21:41:45'),
(1797, 17, 24, '1019', 'Preventivo', '0', NULL, '3 adhesivos de 30x15 cm de como conduzco y velocidad máxima', '18.000', '2020-11-17', NULL, NULL, '2021-03-29 21:44:02', '2021-03-29 21:44:02'),
(1798, 17, 25, '1019', 'Preventivo', '0', NULL, '3 adhesivos de 30x15 cm de como conduzco y velocidad máxima', '18.000', '2020-11-17', NULL, NULL, '2021-03-29 21:44:44', '2021-03-29 21:44:44'),
(1799, 17, 48, '1613', 'Preventivo', '0', NULL, 'Señalización en stickers en varios tamaños y estilos en cinta reflectiva, instalados en el vehículo', '45.000', '2020-11-12', NULL, NULL, '2021-03-29 21:47:01', '2021-03-29 21:47:01'),
(1800, 17, 18, '1613', 'Preventivo', '0', NULL, 'Señalización en stickers en varios tamaños y estilos en cinta reflectiva, instalados en el vehículo', '45.000', '2020-11-12', NULL, NULL, '2021-03-29 21:49:34', '2021-03-29 21:49:34'),
(1801, 109, 57, '1034-2096', 'Preventivo', '0', NULL, 'Peaje viaje a bucaramanga-Jefferson Moreno', '21.500', '2021-03-10', NULL, NULL, '2021-03-29 21:51:19', '2021-03-29 21:51:19'),
(1802, 167, 22, '252', 'Preventivo', '0', NULL, 'Revisión tecnicomecanica', '340.400', '2021-03-05', NULL, NULL, '2021-03-29 21:53:03', '2021-03-29 21:53:03'),
(1803, 109, 22, '1030', 'Preventivo', '0', NULL, 'Peajes revisión tecnicomecanica-Jesus Rojas', '33.800', '2021-03-04', NULL, NULL, '2021-03-29 21:54:15', '2021-03-29 21:54:15'),
(1804, 109, 57, 'N/A', 'Preventivo', '0', NULL, 'Gastos viaje Barrancabermeja- Tolu coveñas (Jefferson Moreno-Wilson Gomez). Peajes: $168.400, Combustible: $596.016, Engrase: $15.000', '779.416', '2021-03-19', NULL, NULL, '2021-03-29 21:58:13', '2021-03-29 21:58:13'),
(1805, 109, 35, '3015763', 'Preventivo', '0', NULL, 'Peajes, servicio CENIT-Alfredo Rodriguez', '22.200', '2021-02-06', NULL, NULL, '2021-03-29 22:01:38', '2021-03-29 22:01:38'),
(1806, 109, 42, '1031', 'Preventivo', '0', NULL, 'Servicio Impala Fredy Ochoa', '27.400', '2021-02-12', NULL, NULL, '2021-03-29 22:06:53', '2021-03-29 22:06:53'),
(1807, 109, 42, '1031', 'Preventivo', '0', NULL, 'Servicio Impala de aeropuerto-Barrancabermeja, Efrain Sanabria', '35.200', '2021-02-13', NULL, NULL, '2021-03-29 22:08:25', '2021-03-29 22:08:25'),
(1808, 109, 35, '1033', 'Preventivo', '0', NULL, 'Peajes Servicio VIT- Julio Rodriguez', '27.400', '2021-03-17', NULL, NULL, '2021-03-29 22:09:54', '2021-03-29 22:09:54'),
(1809, 45, 51, '4352', 'Correctivo', '0', NULL, '1 Gulf grasa multiproposito ep-2 balde de 16KG', '292.000', '2021-02-26', NULL, NULL, '2021-03-29 22:24:05', '2021-03-29 22:24:05'),
(1810, 45, 51, '3387', 'Correctivo', '0', NULL, '1 Gulf 15w40 superfleet supreme sae api Tambor, 1 gulf grasa multiproposito ep-2 balde de 16 kg', '2.864.000', '2020-12-17', NULL, NULL, '2021-03-29 22:25:24', '2021-03-29 22:25:24'),
(1811, 45, 51, '4007', 'Correctivo', '0', NULL, '1 Gulf 15w40 superfleet supreme sae api tambor', '2.572.000', '2021-02-01', NULL, NULL, '2021-03-29 22:26:12', '2021-03-29 22:26:12'),
(1812, 45, 51, '3855', 'Preventivo', '0', NULL, '1 Gulf hidraulico iso 68 garrafa', '178.000', '2021-01-21', NULL, NULL, '2021-03-29 22:27:22', '2021-03-29 22:27:22'),
(1813, 45, 51, '3776', 'Preventivo', '0', NULL, '1 Gulf grasa multiproposito ep-2 balde 16 kg', '292.000', '2021-01-15', NULL, NULL, '2021-03-29 22:28:14', '2021-03-29 22:28:14'),
(1814, 62, 13, '110', 'Preventivo', '0', NULL, '2 Terminal guaya', '44.000', '2021-02-15', NULL, NULL, '2021-03-30 02:52:47', '2021-03-30 02:52:47'),
(1815, 62, 12, '109', 'Correctivo', '0', NULL, '1 Resorte, 12 chupas hino, 1 liquido de freno at alemán, 1 silicona loctite, 2 retenedor trasero hino, 2 retenedor delantero hino', '300.000', '2021-02-15', NULL, NULL, '2021-03-30 02:57:24', '2021-03-30 02:57:24'),
(1816, 62, 13, '108', 'Correctivo', '0', NULL, '1 Correa 17375 dayco', '25.000', '2021-02-15', NULL, NULL, '2021-03-30 02:59:43', '2021-03-30 02:59:43'),
(1817, 62, 25, '95', 'Correctivo', '0', NULL, '10 pasador muelle liso, 2 pasador muelle hino con cabeza', '224.000', '2021-02-02', NULL, NULL, '2021-03-30 03:07:52', '2021-03-30 03:07:52'),
(1818, 62, 17, '76', 'Preventivo', '0', NULL, '2 juego de bandas freno de emergencia remachada', '50.000', '2021-01-25', NULL, NULL, '2021-03-30 03:22:27', '2021-03-30 03:22:27'),
(1819, 62, 24, '100', 'Correctivo', '0', NULL, '2 Esparrago trasero, 2 pasador muelle hino con cabeza, 10 pasador muelle liso, 12 buje muelle bimetalico', '504.000', '2021-02-08', NULL, NULL, '2021-03-30 03:23:34', '2021-03-30 03:23:34'),
(1820, 62, 15, '117', 'Correctivo', '0', NULL, '1 Retenedor trasero hino', '28.000', '2021-02-22', NULL, NULL, '2021-03-30 03:25:15', '2021-03-30 03:25:15'),
(1821, 62, 23, '118', 'Correctivo', '0', NULL, '2 esparrago trasero', '64.000', '2021-02-22', NULL, NULL, '2021-03-30 03:28:08', '2021-03-30 03:28:08'),
(1822, 62, 5, '119', 'Correctivo', '0', NULL, '1 Correa planta dayco', '48.000', '2021-02-22', NULL, NULL, '2021-03-30 03:29:23', '2021-03-30 03:29:23'),
(1823, 62, 9, '120', 'Preventivo', '0', NULL, '1 Liquido de freno At alemán', '40.000', '2021-02-22', NULL, NULL, '2021-03-30 03:30:22', '2021-03-30 03:30:22'),
(1826, 85, 21, '12970', 'Correctivo', '0', NULL, '1 Manguera freno', '45.000', '2021-03-03', NULL, NULL, '2021-03-30 03:33:55', '2021-03-30 03:33:55'),
(1827, 200, 47, '171', 'Preventivo', '0', NULL, '1 Rutero pantalla Led', '489.300', '2021-08-05', NULL, NULL, '2021-03-30 18:06:29', '2021-03-30 18:06:29'),
(1828, 200, 57, '171', 'Preventivo', '0', NULL, '1 Rutero pantalla LED', '489.300', '2021-02-08', NULL, NULL, '2021-03-30 18:07:05', '2021-03-30 18:07:05'),
(1829, 127, 39, '298', 'Correctivo', '0', NULL, '1 Bushing 3/8 x1/8, 1 ACP plast macho recto 12', '14.000', '2021-03-01', NULL, NULL, '2021-03-30 18:14:54', '2021-03-30 18:14:54'),
(1830, 175, 22, '890', 'Correctivo', '0', NULL, '4 Borne tipo liviano', '32.000', '2021-02-27', NULL, NULL, '2021-03-30 18:15:58', '2021-03-30 18:15:58'),
(1831, 201, 5, '8550', 'Correctivo', '0', NULL, '1 Sikaflex negro, 1 pistola metalica para tapar goteras', '21.000', '2021-02-27', NULL, NULL, '2021-03-30 18:18:56', '2021-03-30 18:18:56'),
(1832, 201, 12, '8550', 'Correctivo', '0', NULL, '1 Sikaflex negro, 1 pistola metálica', '21.000', '2021-02-27', NULL, NULL, '2021-03-30 18:19:50', '2021-03-30 18:19:50'),
(1833, 68, 51, '45498', 'Preventivo', '0', NULL, '2 tuercas hex bicromat, 2 tornillos hex bizado', '2.800', '2021-03-01', NULL, NULL, '2021-03-30 18:23:22', '2021-03-30 18:23:22'),
(1834, 181, 51, '4147471', 'Preventivo', '0', NULL, '1.08 galones de gasolina corriente', '9.017', '2021-02-16', NULL, NULL, '2021-03-30 18:24:13', '2021-03-30 18:24:13'),
(1835, 181, 51, '133436', 'Preventivo', '0', NULL, '1.074 galones de gasolina corriente', '9.000', '2021-02-18', NULL, NULL, '2021-03-30 18:24:54', '2021-03-30 18:24:54'),
(1836, 68, 32, '42325', 'Preventivo', '0', NULL, '1 tuerca lujo mazda, 1 perno rueda toyota', '6.300', '2021-02-22', NULL, NULL, '2021-03-30 18:27:29', '2021-03-30 18:27:29'),
(1837, 68, 37, '42325', 'Preventivo', '0', NULL, '1 tuerca lujo mazda, 1 perno rueda toyota', '6.300', '2021-02-22', NULL, NULL, '2021-03-30 18:28:08', '2021-03-30 18:28:08'),
(1838, 68, 51, '45994', 'Preventivo', '0', NULL, '2 mini abrazadera 5/16 -15/32', '1.800', '2021-03-08', NULL, NULL, '2021-03-30 18:29:14', '2021-03-30 18:29:14'),
(1839, 68, 51, '43494', 'Preventivo', '0', NULL, '2 tornillos BCC negro clase 8.8', '600', '2021-03-11', NULL, NULL, '2021-03-30 18:30:32', '2021-03-30 18:30:32'),
(1840, 68, 51, '43481', 'Preventivo', '0', NULL, '2 arandela plana zinc', '900', '2021-03-11', NULL, NULL, '2021-03-30 18:31:52', '2021-03-30 18:31:52'),
(1841, 103, 25, '19619', 'Correctivo', '0', NULL, '1 Polea tensora en 4', '40.000', '2021-03-13', NULL, NULL, '2021-03-30 18:33:08', '2021-03-30 18:33:08'),
(1842, 5, 54, '174176', 'Correctivo', '0', NULL, '1 Correa automotriz referencia: 17255, 1 correa automotriz referencia: 17505', '48.000', '2021-03-09', NULL, NULL, '2021-03-30 18:34:39', '2021-03-30 18:34:39'),
(1843, 202, 46, '0205', 'Correctivo', '0', NULL, '1 Juego past 7298 Toyota', '75.000', '2021-03-06', NULL, NULL, '2021-03-30 18:37:17', '2021-03-30 18:37:17'),
(1844, 51, 51, '0879', 'Correctivo', '0', NULL, '5 tubos de soldadura 10gr, 1 pasta para soldar grande', '15.000', '2021-03-10', NULL, NULL, '2021-03-30 18:40:11', '2021-03-30 18:40:11'),
(1845, 175, 16, '834', 'Preventivo', '0', NULL, 'BATERIA:2 Bateria 30H1200 Mac de Borne', '900.000', '2021-02-13', NULL, NULL, '2021-03-30 18:41:44', '2021-03-30 18:41:44'),
(1846, 175, 30, '765', 'Preventivo', '0', NULL, 'BATERIA:1 Bateria 27/1000 VELKO', '480.000', '2021-02-01', NULL, NULL, '2021-03-30 18:45:09', '2021-03-30 18:45:09'),
(1847, 175, 39, '767', 'Correctivo', '0', NULL, '4 Borne tipo pesado', '32.000', '2021-02-01', NULL, NULL, '2021-03-30 18:47:02', '2021-03-30 18:47:02'),
(1848, 104, 30, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 18:53:49', '2021-03-30 19:04:30'),
(1849, 104, 44, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 18:54:22', '2021-03-30 19:04:54'),
(1850, 104, 18, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 18:54:59', '2021-03-30 19:05:17'),
(1851, 104, 20, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 18:55:32', '2021-03-30 19:05:41'),
(1852, 104, 19, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 18:56:03', '2021-03-30 19:06:14'),
(1853, 104, 34, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 18:56:30', '2021-03-30 19:06:44'),
(1854, 104, 35, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 18:56:58', '2021-03-30 19:07:13'),
(1855, 104, 36, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 19:00:34', '2021-03-30 19:07:45'),
(1856, 104, 38, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '40.000', '2021-02-09', NULL, NULL, '2021-03-30 19:01:40', '2021-03-30 19:08:13'),
(1857, 104, 17, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '60.000', '2021-02-09', NULL, NULL, '2021-03-30 19:02:28', '2021-03-30 19:02:28'),
(1858, 104, 54, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '60.000', '2021-02-09', NULL, NULL, '2021-03-30 19:02:57', '2021-03-30 19:02:57'),
(1859, 104, 55, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '60.000', '2021-02-09', NULL, NULL, '2021-03-30 19:03:27', '2021-03-30 19:03:27'),
(1860, 104, 48, '229', 'Preventivo', '0', NULL, 'Gps mes de Enero', '60.000', '2021-02-09', NULL, NULL, '2021-03-30 19:03:55', '2021-03-30 19:03:55'),
(1861, 104, 30, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:10:06', '2021-03-30 19:10:06'),
(1862, 104, 44, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:10:37', '2021-03-30 19:10:37'),
(1863, 104, 18, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:11:13', '2021-03-30 19:11:13'),
(1864, 104, 20, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:11:40', '2021-03-30 19:11:40'),
(1865, 104, 19, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:12:20', '2021-03-30 19:12:20'),
(1866, 104, 34, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:12:54', '2021-03-30 19:12:54'),
(1867, 104, 35, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:13:25', '2021-03-30 19:13:25'),
(1868, 104, 36, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:16:51', '2021-03-30 19:16:51'),
(1869, 104, 38, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '40.000', '2021-02-25', NULL, NULL, '2021-03-30 19:17:27', '2021-03-30 19:17:27'),
(1870, 104, 17, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '60.000', '2021-02-25', NULL, NULL, '2021-03-30 19:18:31', '2021-03-30 19:18:31'),
(1871, 104, 54, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '60.000', '2021-02-25', NULL, NULL, '2021-03-30 19:19:10', '2021-03-30 19:19:10'),
(1872, 104, 55, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '60.000', '2021-02-25', NULL, NULL, '2021-03-30 19:19:41', '2021-03-30 19:19:41'),
(1873, 104, 48, '250', 'Preventivo', '0', NULL, 'Gps mes de Febrero', '60.000', '2021-02-25', NULL, NULL, '2021-03-30 19:20:12', '2021-03-30 19:20:12'),
(1874, 109, 35, '1026', 'Preventivo', '0', NULL, 'Peaje Lizama Servicio CENIT', '27.400', '2021-03-23', NULL, NULL, '2021-03-30 20:42:18', '2021-03-30 20:42:18'),
(1875, 109, 35, '1029', 'Preventivo', '0', NULL, 'Peajes servicio CENIT -Alfredo Rodriguez', '27.400', '2021-03-25', NULL, NULL, '2021-03-30 20:42:52', '2021-03-30 20:42:52'),
(1876, 203, 15, '0341', 'Preventivo', '0', NULL, 'Tramites duplicado licencia de transito', '192.000', '2021-01-28', NULL, NULL, '2021-03-30 20:51:52', '2021-03-30 20:51:52'),
(1877, 29, 5, '6601', 'Preventivo', '0', NULL, 'CAMBIO DE ACEITE:FILTRO DE ACEITE\r\n 2 FILTRO AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10/4 DE ACEITE DE MOTOR', '213.000', '2021-01-26', NULL, NULL, '2021-03-30 22:05:21', '2021-03-30 22:05:21'),
(1878, 62, 23, '143', 'Correctivo', '0', NULL, '1 Empaquetadura auxiliar, 1 liquido de freno DOT 1/4', '44.000', '2021-03-25', NULL, NULL, '2021-03-30 22:09:29', '2021-03-30 22:09:29'),
(1879, 62, 25, '142', 'Correctivo', '0', NULL, '1 Empaquetadura clutch principal', '35.000', '2021-03-25', NULL, NULL, '2021-03-30 22:11:33', '2021-03-30 22:11:33'),
(1880, 100, 5, '2202', 'Preventivo', '0', NULL, '1 Liquido de frenos ATK DOT4 alemán', '37.000', '2021-03-18', NULL, NULL, '2021-03-30 22:12:59', '2021-03-30 22:12:59'),
(1881, 68, 21, '44385', 'Preventivo', '0', NULL, '2 Arandela cabina mogolla', '5.120', '2021-03-25', NULL, NULL, '2021-03-30 22:14:17', '2021-03-30 22:14:17'),
(1882, 181, 21, '164160', 'Preventivo', '0', NULL, '1.049 galones de gasolina corriente', '9.000', '2021-03-24', NULL, NULL, '2021-03-30 22:15:00', '2021-03-30 22:15:00'),
(1883, 180, 5, '2271', 'Preventivo', '0', NULL, '2 Lija referencia #80, 1 lija referencia #120', '3.600', '2021-03-16', NULL, NULL, '2021-03-30 22:26:04', '2021-03-30 22:26:04'),
(1884, 68, 5, '46514', 'Preventivo', '0', NULL, '1 Silicona Grey 5699', '19.850', '2021-03-17', NULL, NULL, '2021-03-30 22:28:54', '2021-03-30 22:28:54'),
(1885, 186, 21, '0912', 'Preventivo', '0', NULL, '1 Paquete de amarres 30 cm', '12.000', '2021-03-24', NULL, NULL, '2021-03-30 22:30:15', '2021-03-30 22:30:15'),
(1887, 56, 47, '174568', 'Correctivo', '0', NULL, '1 Correa automotriz referencia: 22290', '25.000', '2021-03-20', NULL, NULL, '2021-03-30 22:31:37', '2021-03-30 22:31:37'),
(1888, 130, 48, '1923', 'Preventivo', '0', NULL, '3 1/6 de refrigerante rojo', '48.000', '2021-03-25', NULL, NULL, '2021-03-30 22:32:30', '2021-03-30 22:32:30'),
(1889, 199, 16, '190156261', 'Preventivo', '0', NULL, '2 reencauches referencia 215/75R-17.5', '509.120', '2020-11-23', NULL, NULL, '2021-03-31 17:23:46', '2021-03-31 17:23:46'),
(1890, 199, 15, '190156261', 'Preventivo', '0', NULL, '2 Reencauches referencia 9.5R-17.5', '537.182', '2020-11-23', NULL, NULL, '2021-03-31 17:33:32', '2021-03-31 17:33:32'),
(1891, 199, 26, '190156261', 'Preventivo', '0', NULL, '1 reencauche referencia 215/75R 17.5', '254.560', '2020-11-23', NULL, NULL, '2021-03-31 17:40:52', '2021-03-31 17:40:52'),
(1892, 45, 21, '4069', 'Preventivo', '0', NULL, 'ALINEACION, BALANCEO Y ROTACION:Alineación buseta NPR-NKR', '38.000', '2021-02-05', NULL, NULL, '2021-03-31 19:24:01', '2021-03-31 19:24:01'),
(1893, 45, 21, '3636', 'Preventivo', '275.970', NULL, 'ALINEACION, BALANCEO Y ROTACION:2 Balanceo buseta corriente', '30.000', '2021-01-06', NULL, NULL, '2021-03-31 19:26:11', '2021-03-31 19:26:11'),
(1894, 45, 21, '4069', 'Preventivo', '279.963', NULL, 'ALINEACION, BALANCEO Y ROTACION:1 Alineación buseta NPR-NKR', '38.000', '2021-02-05', NULL, NULL, '2021-03-31 19:49:20', '2021-03-31 19:49:20'),
(1895, 11, 14, '0595', 'Correctivo', '0', NULL, 'Cambio de sensor de baja', '80.000', '2021-03-10', NULL, NULL, '2021-04-01 03:28:04', '2021-04-01 03:28:04'),
(1896, 11, 16, '0587', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Mantenimiento preventivo y calibración de gas, 4 libras de gas.\r\nObservación: Se reporta cambio de extractor pero no se hizo, pendiente por cambio)', '248.040', '2021-03-06', NULL, NULL, '2021-04-01 03:30:29', '2021-04-01 03:30:29'),
(1897, 11, 28, '0585', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA:Mantenimiento preventivo, cambio de filtro cabina y calibración de gas. compra 1 filtro de cabina referencia 3626, 1 libra de gas', '135.000', '2021-03-05', NULL, NULL, '2021-04-01 03:34:26', '2021-04-01 03:34:26'),
(1898, 11, 55, '0581', 'Preventivo', '0', NULL, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO:Demonte de villarec para mantenimiento preventivo, calibración de gas y recarga al aire delantero. Mantenimiento preventivo al aire trasero, calibración y recarga de gas. 4 libras de gas', '295.740', '2021-03-04', NULL, NULL, '2021-04-01 03:37:15', '2021-04-01 03:37:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notify_fechas`
--

CREATE TABLE `notify_fechas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notify_kms`
--

CREATE TABLE `notify_kms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partes`
--

CREATE TABLE `partes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioridad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frecuencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evaluacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `partes`
--

INSERT INTO `partes` (`id`, `nombre`, `prioridad`, `frecuencia`, `fuente`, `evaluacion`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'CAMBIO DE ACEITE', 'Alta', '10000', 'Manual', 'kms', 'SE REALIZA CAMBIO DE ACEITE:\r\nCAMBIO DE FILTRO AIRE - FILTRO DE ACEITE - FILTRO AIRE DE MOTOR - FILTRO DE COMBUSTIBLE -', '2020-04-14 19:56:02', '2020-06-01 18:04:29'),
(4, 'PASTILLAS Y DISCO DE FRENO', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 17:43:37', '2020-06-01 17:43:37'),
(5, 'BATERIA', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 17:56:31', '2020-06-01 17:56:31'),
(6, 'ALINEACION, BALANCEO Y ROTACION', 'Media', '120', 'Manual del Fabricante', 'dias', NULL, '2020-06-01 17:57:44', '2020-06-01 17:57:44'),
(7, 'PRESION DE INFLADO DE NEUMATICO', 'Baja', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 17:59:16', '2020-06-01 17:59:16'),
(8, 'BOCINAS - LUCES INTERIORES Y EXTERIORES', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 17:59:44', '2020-06-01 17:59:44'),
(9, 'EMBRAGUE', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:00:14', '2020-06-01 18:00:14'),
(10, 'SISTEMA DE ALIMENTACION DE COMBUSTIBLE', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:04:54', '2020-06-01 18:04:54'),
(11, 'SUSPENSION TRASERA Y DELANTERA', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:05:11', '2020-06-01 18:05:11'),
(12, 'EXTREMOS ARTICULADOS VOLANTES Y/O CINTURONES', 'Media', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:05:38', '2020-06-01 18:05:38'),
(13, 'SISTEMA DE DIRECCION', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:05:56', '2020-06-01 18:05:56'),
(14, 'PEDAL DE EMGRAGUE', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:06:11', '2020-06-01 18:06:11'),
(15, 'ARTICULACIONES Y SUS GUARDA POLVOS', 'Media', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:06:39', '2020-06-01 18:06:39'),
(16, 'LIMPIA PARABRISAS', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:31:41', '2020-06-01 18:31:41'),
(17, 'ENGRASE DE ARBOLES CARDANICOS', 'Alta', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:33:18', '2020-06-01 18:33:18'),
(18, 'TORQUIAR BULONES DE ARBOLES CARDANICOS', 'Media', '10000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:33:54', '2020-06-01 18:33:54'),
(19, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION BUSES - BUSETAS - MICRO', 'Media', '75', 'Manual del Fabricante', 'dias', NULL, '2020-06-01 18:36:11', '2020-06-01 18:36:11'),
(20, 'SISTEMA DE AIRE ACONDICIONADO Y CALEFACCION CAMIONETA', 'Media', '180', 'Manual del Fabricante', 'dias', NULL, '2020-06-01 18:37:05', '2020-06-01 18:37:05'),
(21, 'FILTRO DE ESCAPE Y MONTANTES', 'Alta', '20000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:37:45', '2020-06-01 18:37:45'),
(22, 'FLUIDO DE DIFERENCIALES', 'Media', '20000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:37:59', '2020-06-01 18:37:59'),
(23, 'GUARDAPOLVO SEMI-EJES', 'Media', '20000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:38:36', '2020-06-01 18:38:36'),
(24, 'TUBERIAS, MANGERAS Y CONDUCTORES DE FRENO', 'Alta', '20.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 18:58:46', '2020-06-01 18:58:46'),
(25, 'CORREAS TRANSMISORAS', 'Alta', '20.000', 'Plan de Mantenimiento', 'kms', NULL, '2020-06-01 18:59:28', '2020-06-01 18:59:28'),
(26, 'MTOR, AJA, EMBRAGUE Y CAJA', 'Alta', '30.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:00:04', '2020-06-01 19:00:04'),
(27, 'LUBRICANTE CAJA DE CAMBIO (VALVULINA)', 'Media', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:01:20', '2020-06-19 18:11:44'),
(28, 'NIVEL DE REFRIGERANTE DEL MOTOR', 'Alta', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:01:47', '2020-06-01 19:01:47'),
(29, 'FLUIDOS DE DIFERENCIALES', 'Media', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:02:16', '2020-06-01 19:02:16'),
(30, 'FLUIDOS DE FRENOS Y EMBRIAGUE', 'Media', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:02:50', '2020-06-01 19:02:50'),
(31, 'FLUIDOS DE TRANSMISION MANUAL', 'Media', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:03:31', '2020-06-01 19:03:31'),
(32, 'FLUIDOS DE TRANSMISION AUTOMATICA', 'Media', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:04:36', '2020-06-01 19:04:36'),
(33, 'FLUIDO DE TRANSFERENCIA 4*4', 'Media', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:05:21', '2020-06-01 19:05:21'),
(34, 'HOLGURA DE VALCULA', 'Alta', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:06:06', '2020-06-01 19:06:06'),
(35, 'HUMO DE ESCAPE Y RENDIMIENTO', 'Alta', '40.000', 'Manual del Fabricante', 'kms', NULL, '2020-06-01 19:06:32', '2020-06-01 19:06:32'),
(36, 'Aire prueba', 'Baja', '364', 'Manual', 'dias', 'Aire de prueba Se cambia cada 364', '2020-06-10 10:24:54', '2020-06-10 10:24:54'),
(37, 'LLANTAS', 'Alta', '45000', 'Manual del Fabricante', 'kms', NULL, '2020-06-19 19:14:28', '2020-06-19 19:14:28'),
(38, 'BATERIA', 'Alta', '540', 'Manual del Fabricante', 'dias', 'CAMBIO DE BATERIA A LOS 18 MESES', '2020-06-19 19:55:47', '2020-06-19 19:55:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `passengers`
--

CREATE TABLE `passengers` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tipo_identificacion` varchar(50) DEFAULT NULL,
  `identificacion` bigint(20) DEFAULT NULL,
  `destino` varchar(80) DEFAULT NULL,
  `encuentro` varchar(80) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `check` tinyint(4) DEFAULT '0',
  `telefono_opcional` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `passengers`
--

INSERT INTO `passengers` (`id`, `nombre`, `apellido`, `email`, `tipo_identificacion`, `identificacion`, `destino`, `encuentro`, `ciudad`, `direccion`, `telefono`, `check`, `telefono_opcional`, `created_at`, `updated_at`, `empresa`) VALUES
(42, 'pasajero', 'sas', 'pasajero@gmail.com', 'Cedula', 1234567896, NULL, 'Torocoroma', 'Barrancabermeja', 'Direccion', '3172603279', 0, NULL, '2021-07-19 08:46:12', '2021-07-19 08:46:12', '1234567893'),
(43, 'pasajero', '2', 'pasajero2@gmail.com', 'Cedula', 1234567897, NULL, 'Torocoroma', 'Barrancabermeja', 'sin direccion', '3172603279', 0, NULL, '2021-07-19 09:34:06', '2021-07-19 09:34:06', '1234567893'),
(44, 'Julian', 'Martines', 'na@na.com', 'Cedula', 111111, 'Puerte Norte', 'Esquina caliente primero mayo', 'Barrancabermeja', 'Calle 52 No. 76 - 89', '3123123123', 0, NULL, '2021-07-22 20:39:42', '2021-07-22 20:39:42', '1234567893'),
(45, 'Julian', 'Martines', 'na@na.com', 'Cedula', 111111, 'Puerte Norte', 'Esquina caliente primero mayo', 'Barrancabermeja', 'Calle 52 No. 76 - 89', '3123123123', 0, NULL, '2021-07-22 20:39:52', '2021-07-22 20:39:55', '1234567893'),
(46, 'Julian', 'Martines', 'na@na.com', 'Cedula', 111111, 'Puerte Norte', 'Esquina caliente primero mayo', 'Barrancabermeja', 'Calle 52 No 76  89', '31231231', 0, NULL, '2021-07-22 20:40:26', '2021-07-22 20:40:26', '1234567893'),
(47, 'Julian', 'Martines', 'na@na.com', 'Cedula', 1111112323, 'Puerte Norte', 'Esquina caliente primero mayo', 'Barrancabermeja', 'Calle 52 No 76  89', '31231231', 0, NULL, '2021-07-22 20:40:32', '2021-07-22 20:40:40', '1234567893');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `passenger_servicio`
--

CREATE TABLE `passenger_servicio` (
  `id` bigint(20) NOT NULL,
  `passenger_id` bigint(20) DEFAULT NULL,
  `servicio_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `passenger_servicio`
--

INSERT INTO `passenger_servicio` (`id`, `passenger_id`, `servicio_id`, `created_at`, `updated_at`) VALUES
(41, 42, 52, NULL, NULL),
(42, 43, 52, NULL, NULL),
(43, 43, 53, NULL, NULL),
(44, 42, 53, NULL, NULL),
(45, 43, 54, NULL, NULL),
(46, 42, 54, NULL, NULL),
(47, 43, 55, NULL, NULL),
(48, 42, 55, NULL, NULL),
(49, 44, 56, NULL, NULL),
(50, 43, 56, NULL, NULL),
(51, 42, 56, NULL, NULL),
(52, 46, 57, NULL, NULL),
(53, 45, 57, NULL, NULL),
(54, 43, 57, NULL, NULL),
(55, 42, 57, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfils`
--

CREATE TABLE `perfils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehiculo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `perfils`
--

INSERT INTO `perfils` (`id`, `img`, `vehiculo_id`, `created_at`, `updated_at`) VALUES
(1, '_1593780854.jpeg', 50, '2020-07-03 17:54:14', '2020-07-03 17:54:14'),
(2, '_1593780991.jpg', 50, '2020-07-03 17:56:31', '2020-07-03 17:56:31'),
(3, '_1593781964.jpg', 50, '2020-07-03 18:12:44', '2020-07-03 18:12:44'),
(6, '_1611872763.jpg', 15, '2021-01-29 03:26:03', '2021-01-29 03:26:03'),
(7, '_1611874069.jpg', 33, '2021-01-29 03:47:50', '2021-01-29 03:47:50'),
(8, '_1611874244.jpg', 39, '2021-01-29 03:50:44', '2021-01-29 03:50:44'),
(10, '_1611931210.JPG', 30, '2021-01-29 19:40:10', '2021-01-29 19:40:10'),
(11, '_1611931940.JPG', 44, '2021-01-29 19:52:20', '2021-01-29 19:52:20'),
(13, '_1611934381.jpg', 29, '2021-01-29 20:33:01', '2021-01-29 20:33:01'),
(14, '_1612184587.jpg', 32, '2021-02-01 18:03:07', '2021-02-01 18:03:07'),
(15, '_1612185144.jpg', 37, '2021-02-01 18:12:26', '2021-02-01 18:12:26'),
(17, '_1612211908.png', 18, '2021-02-02 01:38:28', '2021-02-02 01:38:28'),
(18, '_1612212042.JPG', 17, '2021-02-02 01:40:42', '2021-02-02 01:40:42'),
(19, '_1612214992.jpg', 21, '2021-02-02 02:29:54', '2021-02-02 02:29:54'),
(20, '_1612217288.jpg', 22, '2021-02-02 03:08:08', '2021-02-02 03:08:08'),
(21, '_1612218479.jpg', 20, '2021-02-02 03:27:59', '2021-02-02 03:27:59'),
(22, '_1612219163.jpg', 19, '2021-02-02 03:39:23', '2021-02-02 03:39:23'),
(23, '_1612278025.jpg', 5, '2021-02-02 20:00:25', '2021-02-02 20:00:25'),
(24, '_1612286219.jpg', 12, '2021-02-02 22:17:01', '2021-02-02 22:17:01'),
(25, '_1612286969.jpg', 13, '2021-02-02 22:29:29', '2021-02-02 22:29:29'),
(26, '_1612300441.jpg', 23, '2021-02-03 02:14:01', '2021-02-03 02:14:01'),
(27, '_1612309278.jpg', 24, '2021-02-03 04:41:18', '2021-02-03 04:41:18'),
(29, '_1612311971.jpg', 26, '2021-02-03 05:26:11', '2021-02-03 05:26:11'),
(33, '_1612313473.jpg', 31, '2021-02-03 05:51:13', '2021-02-03 05:51:13'),
(36, '_1612798244.jpeg', 36, '2021-02-08 20:30:44', '2021-02-08 20:30:44'),
(37, '_1612801485.jpeg', 16, '2021-02-08 21:24:45', '2021-02-08 21:24:45'),
(38, '_1612802237.jpeg', 11, '2021-02-08 21:37:18', '2021-02-08 21:37:18'),
(39, '_1612802297.jpeg', 27, '2021-02-08 21:38:17', '2021-02-08 21:38:17'),
(40, '_1612803282.jpeg', 9, '2021-02-08 21:54:42', '2021-02-08 21:54:42'),
(41, '_1612804095.jpeg', 28, '2021-02-08 22:08:15', '2021-02-08 22:08:15'),
(42, '_1612804261.jpeg', 25, '2021-02-08 22:11:01', '2021-02-08 22:11:01'),
(43, '_1612804543.jpeg', 57, '2021-02-08 22:15:43', '2021-02-08 22:15:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehiculo_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcional_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`id`, `nombre`, `apellido`, `email`, `identificacion`, `tipo_identificacion`, `ciudad`, `departamento`, `direccion`, `barrio`, `telefono`, `opcional_telefono`, `fullname`, `created_at`, `updated_at`) VALUES
(6, 'TRANSPORTES RIO GRANDE', 'S.A.S', 'transportesriogrande@gmail.com', '8110317201', 'Nit', 'BARRANCABERMEJA', 'santander', 'diagonal 56 # 18a80', 'galan', '3505631778', NULL, NULL, '2020-01-15 00:30:05', '2020-01-15 00:30:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedors`
--

CREATE TABLE `proveedors` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_identificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcional_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedors`
--

INSERT INTO `proveedors` (`id`, `nombre`, `apellido`, `email`, `identificacion`, `tipo_identificacion`, `ciudad`, `departamento`, `direccion`, `barrio`, `telefono`, `opcional_telefono`, `fullname`, `created_at`, `updated_at`) VALUES
(1, 'TAPICERIA MORELO', 'ALBERTO ANTONIO MORELO IBAÑEZ', 'sincorreo@gmail.com', '91426687', 'Nit', 'BARRANCABERMEJA', 'santander', 'ENTRADA AL BARRIO LA TORA', 'ENTRADA AL BARRIO LA TORA', '3112217017', NULL, NULL, '2020-01-15 00:19:41', '2020-01-15 00:19:41'),
(2, 'SAULO', 'RODRIGUEZ MELO', 'transportesriogrande@gmail.com', '91510129', 'Cedula', 'BARRANCABERMEJA', 'santander', 'BARRANCABERMEJA', 'BARRANCABERMEJA', '3223695516', NULL, NULL, '2020-01-15 01:08:35', '2020-01-15 01:08:35'),
(3, 'ESTACION DE SERVICIO', 'LA NAPOLES', 'edsnapoles@gmail.com', '79244272', 'Nit', 'POBLADO DE YARIMA', 'SANTANDER', 'CRA 7 nO. 14-15', 'Centro', '0000000', NULL, NULL, '2020-01-21 02:22:40', '2020-01-21 02:22:40'),
(4, 'SEALL', 'SERIVICIO ELECTRICO AUTOMOTRIZ LLAMARADA', NULL, '13885186', 'Nit', 'BARRANCABERMEJA', 'santander', 'Calle 62 N°33-23', 'La floresta', '3163354233', NULL, NULL, '2020-02-28 03:02:49', '2020-02-28 03:02:49'),
(5, 'MANGUERAS Y CORREAS MULTICAUCHOS SAS', NULL, 'mycmulticauchos@hotmail.com', '900602008', 'Nit', 'BARRANCABERMEJA', 'Santander', 'Avenida 36 N°58-42 Zona industrial', NULL, '6222584', NULL, NULL, '2020-02-28 03:05:06', '2020-02-28 03:05:06'),
(6, 'TRIFA REPUESTOS', NULL, 'trifarepuestos@hotmail.coim', '19164579', 'Nit', 'BOGOTA', 'Cundinamarca', 'Carrera 68 B N°4-34 Sur', 'Sur', '3213958151', NULL, NULL, '2020-02-28 03:25:37', '2020-02-28 03:25:37'),
(7, 'DISTRIBUIDORA NISSAN S.A', NULL, NULL, '860001307', 'Nit', 'BARRANCABERMEJA', 'Santander', 'Calle 52 N°28-46', 'Palmira', '6224779', NULL, NULL, '2020-02-28 03:28:20', '2020-02-28 03:28:20'),
(8, 'COÉXITO S.A.S', NULL, 'coexito@coexito.com.co', '890300225', 'Nit', 'Cali', NULL, 'Cra 5 N°61A - 95', NULL, '6214296', NULL, NULL, '2020-02-28 03:44:51', '2020-02-28 03:44:51'),
(9, 'MOTORESTE MOTORS', NULL, NULL, '824001273', 'Nit', 'BARRANCABERMEJA', 'Santander', NULL, NULL, NULL, NULL, NULL, '2020-03-25 00:18:51', '2020-03-25 00:18:51'),
(10, 'FULL REPUESTOS LTDA', NULL, 'fullrepuestosbga@hotmail.com', '804014215', 'Nit', 'Bucaramanga', 'Santander', 'Calle 20 N°15-28', NULL, '6711057', NULL, NULL, '2020-03-25 02:48:24', '2020-03-25 02:48:24'),
(11, 'FRIO', 'VENCOL', NULL, '379273277', 'Cedula', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 37 # 57-74', 'BOSQUES DE LA CIRA', '6225610', NULL, NULL, '2020-04-09 02:40:44', '2020-04-09 02:40:44'),
(12, 'EL GRAN', 'RADIADOR', NULL, '912225005', 'Cedula', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 61 # 29-25', 'ANTES DEL PASO NIVEL', '3202615862', NULL, NULL, '2020-04-13 17:55:18', '2020-04-13 17:55:18'),
(14, 'MEGA TIRE', NULL, 'facturacionbrr@megatire.co', '900470074', 'Nit', 'Barrancabermeja', 'Santander', 'CALLE 52A N° 36B-62', 'SECTOR EL UNO', '3173666447', NULL, NULL, '2020-04-13 19:24:51', '2020-04-13 19:24:51'),
(15, 'FABRICA DE BOTIQUINES Y EXTINTORES', 'LCD 1', 'botibarranca@gmail.com', '1024585035', 'Nit', 'Barrancabermeja', 'Santander', 'CALLE 52 N° 12-80', 'COLOMBIA', '3194649085', NULL, NULL, '2020-04-13 19:54:05', '2020-04-13 19:54:05'),
(16, 'CLINICA DEL SILENCIO', NULL, NULL, '91246382', 'Nit', 'Barrancabermeja', 'Santander', 'CALLE 71 N° 27B-20', 'LA LIBERTAD', '3125857392-31443990847', NULL, NULL, '2020-04-13 20:04:28', '2020-04-13 20:04:28'),
(17, 'PUBLICIDAD VIAL', NULL, 'ricardo9926@hotmail.com', '91499164', 'Nit', 'Barrancabermeja', 'Santander', 'calle 71 N° 21-71', 'LA LIBERTAD', '3186277712', NULL, NULL, '2020-04-13 20:09:06', '2020-04-13 20:09:06'),
(18, 'MUNDIAL DE LUJOS', NULL, 'contabilidad@mundialdelujos.com', '901136513', 'Nit', 'Bucaramanga', 'Santander', 'calle 55 N° 27-08', NULL, '6572017', NULL, NULL, '2020-04-13 20:37:29', '2020-04-13 20:37:29'),
(19, 'HYM BIONERGIA SAS', NULL, NULL, '9007362182', 'Nit', 'Bucaramanga', 'Santander', 'KM4 VIA GIRON COSTADO NORTE', NULL, '6378296', NULL, NULL, '2020-04-13 20:45:57', '2020-04-13 20:45:57'),
(20, 'INVERSIN LTDA', NULL, 'inversion.ltda@hotmail.com', '8290003872', 'Nit', 'Barrancabermeja', 'Santander', 'carrera 15 N° 47-61B', 'BUENOS AIRES', '6203698', NULL, NULL, '2020-04-13 21:57:06', '2021-01-29 20:00:18'),
(21, 'CAUCHOS Y SOPORTES BUCARAMANGA', NULL, NULL, '91234541', 'Nit', 'Barrancabermeja', 'Santander', 'CALLE 61 N° 33-66', 'PASO NIVEL', '306874596', NULL, NULL, '2020-04-13 22:00:56', '2020-04-13 22:00:56'),
(22, 'MONTALLANTAS EL FERROCARRIL', NULL, NULL, '13853567', 'Nit', 'Barrancabermeja', 'Santander', 'CARRERA 23 N° 50-38', 'COLOMBIA', '6027042', NULL, NULL, '2020-04-14 00:13:42', '2020-04-14 00:13:42'),
(23, 'TAPICERIA TAPI TODO', NULL, NULL, '9166404', 'Nit', 'Barrancabermeja', 'Santander', NULL, NULL, '3115431294', NULL, NULL, '2020-04-14 00:46:14', '2020-04-14 00:46:14'),
(24, 'EL HERRERO', 'ARTESANO DEL HIERRO', 'elherrero7@hotmail.com', '91438758', 'Nit', 'Barrancabermeja', 'Santander', 'calle 54N° 23-25', 'TORCOROMA', '3176986098', NULL, NULL, '2020-04-14 00:55:18', '2020-04-14 00:55:18'),
(25, 'ELISAMA', 'VELEZ CASTRILLON', NULL, '13890045', 'Cedula', 'BARRANCABERMEJA', 'SANTANDER', 'calle 40a # 44-56', NULL, NULL, NULL, NULL, '2020-04-14 01:13:09', '2020-04-14 01:13:09'),
(26, 'CENTRAL MOTOR AMERICA SAS', 'FORD', NULL, '900380333', 'Nit', 'FLORIDA BLANCA', 'Santander', 'CARRERA 27N° 56-48', 'FLORIDA BLANCA', '6313001', NULL, NULL, '2020-04-14 01:20:12', '2020-04-14 01:20:34'),
(27, ',ONRO - PARTES', NULL, NULL, '37925679', 'Nit', 'Barrancabermeja', 'Santander', 'AVENIDA 36 N° 59-106', NULL, '6022979', NULL, NULL, '2020-04-14 02:24:53', '2020-04-14 02:24:53'),
(28, 'AUDIO VISION', 'VISION', 'audiovision.1@hotmail.com', '13469019', 'Cedula', 'barrancabermeja', 'SANTANDER', 'calle 54 # 21-36 Apto 201', 'torcoroma', '3176989092', NULL, NULL, '2020-05-21 21:47:24', '2020-05-21 21:47:24'),
(29, 'LUBRICANTES Y FILTROS EDGAR', NULL, 'edgares_turi@hotmail.com', '914203158', 'Cedula', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 52 nO. 12-21', 'OLAYA HERRERA', '6020235', NULL, NULL, '2020-06-05 21:22:37', '2020-06-05 21:22:37'),
(30, 'TODO EN SEGURIDAD INDUSTRIAL Y FERRETERIA', NULL, NULL, '136205428', 'Cedula', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 50 No. 3-50 sector comercial', 'sector comercial', '3215056652', NULL, NULL, '2020-06-06 03:57:06', '2020-06-06 03:57:06'),
(31, 'SERVICENTRO', NULL, NULL, '1096244717', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'Transversal 48 Diagonal 52-129', NULL, '3178033111', NULL, NULL, '2020-06-08 17:58:43', '2020-06-08 17:58:43'),
(32, 'SERVIMERCEDES VANS', NULL, 'servimercedesvans@gmail.com', '1098653039', 'Nit', 'Bucaramanga', 'SANTANDER', 'CALLE 59 # 15-60 km.6 Via a Giron', 'via a Giron', '3134287762', NULL, NULL, '2020-06-08 18:28:40', '2020-06-08 18:28:40'),
(33, 'INSPECCION DE TRANSITO Y TRANSPORTE DE BARRANCABERMEJA', NULL, NULL, '890270948', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 2 # 50-25', 'SECTOR COMERCIAL', '6214599', NULL, NULL, '2020-06-08 18:44:56', '2020-06-08 18:44:56'),
(34, 'ELECTRICOS MONTELIBANO', NULL, NULL, '10992224', 'Nit', 'MONTELIBANO', 'CORDOBA', 'CALLE 16 # 4-46', NULL, NULL, NULL, NULL, '2020-06-08 18:48:50', '2020-06-08 18:48:50'),
(35, 'SERVITECA AUTO MOTOS SAN FRANCISCO', NULL, NULL, '24605488', 'Nit', 'MONTELIBANO', 'CORDOBA', 'CALLE 12 ESQUINA', NULL, NULL, NULL, NULL, '2020-06-08 18:50:55', '2020-06-08 18:50:55'),
(36, 'PRACO DIDACOL', NULL, NULL, '860047657', 'Nit', 'BOGOTA', 'BOGOTA D.C', 'CALLE 99 - 69C-41', NULL, '4238300', NULL, NULL, '2020-06-09 03:23:03', '2020-06-09 03:23:03'),
(37, 'BABILONIA', 'ALMACEN Y TALLER', NULL, '15667096', 'Nit', 'MONTELIBANO', 'CORDOBA', 'CARRETERA TRONCAL', 'VIA CERROMATOSO', '3157732560', NULL, NULL, '2020-06-09 03:25:13', '2020-06-09 03:25:13'),
(38, 'PANORAMIC', 'VIDRIOS DE SEGURIDAD', 'panoramicltda@hotmail.com', '8110399211', 'Nit', 'MEDELLIN', 'ANTIOQUIA', 'CARRERA 50 # 72A-02', NULL, '440134', NULL, NULL, '2020-06-09 03:31:16', '2020-06-09 03:31:16'),
(39, 'WASH PARKING AMPANO', NULL, NULL, '108937338', 'Nit', 'MONTELIBANO', 'CORDOBA', 'TRONCAL VIA CERRO MATOSO', NULL, '3116540672', NULL, NULL, '2020-06-10 18:04:41', '2020-06-10 18:04:41'),
(40, 'DISTRACOM', NULL, NULL, '8110097888', 'Nit', 'MONTELIBANO', 'CORDOBA', NULL, NULL, NULL, NULL, NULL, '2020-06-10 18:12:19', '2020-06-10 18:12:19'),
(41, 'AUTO TOOLS S.A.S', NULL, 'info@autotools.co', '8300876756', 'Nit', 'BOGOTA', 'CUNDINAMARCA', 'CALLE 72A # 20C-71', 'BOGOTA', '3476800', NULL, NULL, '2020-06-10 18:17:25', '2020-06-10 18:17:25'),
(42, 'MANGUERAS Y CORREAS', NULL, NULL, '634327469', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CALLE 22 # 14-25', NULL, '6711286', NULL, NULL, '2020-06-10 18:23:48', '2020-06-10 18:23:48'),
(43, 'TURBOS CHIMITA', NULL, NULL, '914963430', 'Nit', 'CHIMITA', 'SANTANDER', 'CALLE 2 No. 2-71 Chimita Giron', NULL, NULL, NULL, NULL, '2020-06-19 00:55:33', '2020-06-19 00:55:33'),
(44, 'ESTACION DE SERVICIO SAN SILVESTRE', NULL, 'edssansilvestre@yahoo.es', '8290015540', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 52 # 12-21', 'OLAYA HERRERA', '6020235', NULL, NULL, '2020-06-19 01:41:11', '2020-06-19 01:41:11'),
(45, 'DISTRIBUCIONES ANDINAS BIEN HECHAS S.A.S', NULL, 'facturacionbrr@megatire.co', '9004700745', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 52A No. 36B-62', 'SECTOR EL UNO', '3173666447', NULL, NULL, '2020-06-19 02:53:19', '2020-06-19 02:53:19'),
(46, 'CLAUDIA', 'GARCIA ALVAREZ', NULL, '603032844', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 36 No. 58-37', 'bomba la 36', '3124719891', NULL, NULL, '2020-06-19 02:57:39', '2020-06-19 02:57:39'),
(47, 'ELECTRO CHIMITA', NULL, NULL, '1047439156', 'Nit', 'CHIMITA', 'SANTANDER', 'CALLE 1 No. 2-41/45', NULL, '3045916906', NULL, NULL, '2020-06-19 03:01:25', '2020-06-19 03:01:25'),
(48, 'TALLER REYMAN', NULL, NULL, '912264954', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', NULL, NULL, NULL, NULL, NULL, '2020-06-19 03:03:09', '2020-06-19 03:03:09'),
(49, 'HUMBERTO', 'GALAN GUARGUATI', NULL, '13814511', 'Cedula', 'BARRANCABERMEJA', 'SANTANDER', 'calle 40a # 44-56', NULL, NULL, NULL, NULL, '2020-06-19 03:08:43', '2020-06-19 03:08:43'),
(50, 'MACRO VIDRIOS DE SANTANDER', NULL, 'casaley77@hotmail.com', '135436877', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'carrera 11 No. 30-07', 'garcia rovira', '6453844', NULL, NULL, '2020-06-19 03:15:21', '2020-06-19 03:15:21'),
(51, 'TECNILUJOS', NULL, NULL, '632782049', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSVERSAL 29 No. 64-13', 'FLORESTA BAJA', '6202247', NULL, NULL, '2020-06-19 03:31:46', '2020-06-19 03:31:46'),
(52, 'LUIS CARLOS', 'GUTIERREZ RINCON', NULL, '79988790', 'Cedula', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 49 No. 54-32', 'VILLARELYS', '3122177084', NULL, NULL, '2020-06-19 03:51:21', '2020-06-19 03:51:21'),
(53, 'RUSSELL RAMIREZ RIOS', NULL, 'russellramirezrios@hotmail.com', '912780868', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', NULL, 'ciudadela pipaton', '3158220576', NULL, NULL, '2020-06-19 17:36:26', '2020-06-19 17:36:26'),
(54, 'SERVICENTRO YARIMA', NULL, NULL, '914731213', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAGONAL 37 No. 35A-101', 'YARIMA', '6107814', NULL, NULL, '2020-06-19 18:15:45', '2020-06-19 18:15:45'),
(55, 'HERRERA TAPICERIA INDUSTRIAL', NULL, NULL, '914271010', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAGONAL 60 No. 43-57', 'LAS GRANJAS', '3118107307', NULL, NULL, '2020-06-19 18:57:14', '2020-06-19 18:57:14'),
(56, 'MANGUERAS Y CORREAS MULTICAUCHOS SAS', NULL, 'mycmulticauchos@hotmail.com', '9006020087', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 N° 58-42', 'ZONA INDUSTRIAL', '6222584', NULL, NULL, '2020-06-19 20:47:20', '2020-06-19 20:47:20'),
(57, 'SERVICIO Y REPUESTOS DIESEL', NULL, NULL, '1102359510', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 33 No. 31-07', 'FLORESTA BAJA', '3118306009', NULL, NULL, '2020-06-19 21:11:05', '2020-06-19 21:11:05'),
(58, 'FERROCARRIL AUTOLAVADO', NULL, NULL, '5746642', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 23 No. 50-38', 'BARRIO COLOMBIA', '3022365635', NULL, NULL, '2020-06-19 21:29:30', '2020-06-19 21:29:30'),
(59, 'TALLER AGROMAQUI', NULL, NULL, '914290899', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 58 No. 32-71', 'CIUDAD BOLIVAR', '3118129701', NULL, NULL, '2020-06-19 21:40:10', '2020-06-19 21:40:10'),
(60, 'CERTIFICADO NACIONAL TECNICOMECANICO S.A', NULL, NULL, '8040171887', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'KM 2 VIA BUCARAMANGA', NULL, '6319999', NULL, NULL, '2020-06-20 02:23:08', '2020-06-20 02:23:08'),
(61, 'CLUTCH´S & BANDAS S.A.S', NULL, 'manuelcbrs@hotmail.com', '9007684068', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSVERSAL 45 No. 64B-52', 'LAS GRANJAS', '6027134', NULL, NULL, '2020-06-20 02:27:34', '2020-06-20 02:27:34'),
(62, 'FRENOS Y MUELLES CHAIN', NULL, 'frenosymuelleschain@gmail.com', '13513231', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 34B No. 59-07', 'LAS CAMELIAS', '3188255410', NULL, NULL, '2020-06-20 03:09:06', '2021-02-03 04:47:14'),
(63, 'AUTOFRIO IMPORTACIONES S.A.S', NULL, NULL, '9002357714', 'Nit', 'BARRANQUILLA', 'ATLANTICO', 'CALLE 75 No. 72-40', 'BODEGA PRINCIPAL', '3560793', NULL, NULL, '2020-06-26 23:23:22', '2020-06-26 23:23:22'),
(64, 'CNT S.A', NULL, 'CNTSA8040@YAHOO.COM', '804017188', 'Nit', 'GIRON', 'SANTANDER', 'KM 2 VIA BUCARAMANGA- GIRON', NULL, '6319999', NULL, NULL, '2020-06-28 16:02:54', '2020-06-28 16:02:54'),
(65, 'TECNISOLD', NULL, NULL, '138048828', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 52 No. 32-18', 'ZONA INDUSTRIAL', NULL, NULL, NULL, '2020-06-28 16:05:37', '2020-06-28 16:05:37'),
(66, 'TALLER AGROMAQUI', NULL, NULL, '914290890', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 58 No.  32-71', 'CIUDAD BOLIVAR', '3118129701', NULL, NULL, '2020-06-28 16:33:21', '2020-06-28 16:33:50'),
(67, 'SOPOTERIA TODO CAUCHO', NULL, NULL, '138892214', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAG. 49 No. 33-07', NULL, NULL, NULL, NULL, '2020-06-28 16:37:43', '2020-06-28 16:37:43'),
(68, 'SURTITORNILLOS S.A.A', NULL, NULL, '8305136525', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', NULL, NULL, NULL, NULL, NULL, '2020-06-28 16:39:50', '2020-06-28 16:40:18'),
(69, 'SERVICENTRO', 'AUTOMOTRIZ', NULL, '5554379', 'Cedula', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 33 # 58-37', 'ZONA INDUSTRIAL', '6222746', NULL, NULL, '2020-07-06 17:29:28', '2021-01-29 20:02:37'),
(70, 'CARS', 'BUJES', NULL, '914313796', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 33 # 59-16', 'ZONA INDUSTRIAL', NULL, NULL, NULL, '2020-07-06 17:33:12', '2020-07-06 17:33:12'),
(71, 'NECA', 'REPUESTOS S.A.S', NULL, '901248229', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSV. 29 # 32-07', 'LA FLORESTA BAJA', '6221292', NULL, NULL, '2020-07-06 18:18:04', '2020-07-06 18:18:04'),
(72, 'DOBLE LE', 'FERRETERIA', NULL, '138605244', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSV 45 # 64-26', 'LAS GRANJAS', '3132343578', NULL, NULL, '2020-07-06 18:41:26', '2020-07-06 18:41:26'),
(73, 'SUPERPOLO', 'S.A.S', NULL, '830092963', 'Nit', 'VIA SIBERIA COTA', 'CUNDINAMARCA', 'KM 1.6 VIA SIBERIA', 'VIA SIBERIA', '3513311', NULL, NULL, '2020-07-06 18:59:42', '2020-07-06 18:59:42'),
(74, 'MULTI', 'REPUESTOS', NULL, '63319117', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSV 52 # 31-108', 'PALMIRA', '3202323258', NULL, NULL, '2020-07-06 22:06:30', '2020-07-06 22:06:30'),
(75, 'SEGUROS', 'SURAMERICANA', NULL, '8909034079', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'PARQUE URIBE - URIBE', 'SECTOR COMERCIAL', '312 4785589', NULL, NULL, '2020-07-06 22:13:34', '2020-07-06 22:13:34'),
(76, 'TURESANDES', 'LTDA', NULL, '8040116408', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSV. 47B DIAG. 52-60', 'LOS COMUNEROS', '6023801', NULL, NULL, '2020-07-06 22:26:23', '2020-07-06 22:26:23'),
(77, 'TRACVIDRIOS', 'S.A.S', NULL, '901164778', 'Nit', 'GIRON', 'SANTANDER', 'CALLE 2 # 3-46', 'ZONA INDUSTRIAL CHIMITA - GIRON', '3174412868', NULL, NULL, '2020-07-07 00:09:39', '2020-07-07 00:09:39'),
(78, 'LAVADERO', 'LOS COCHES', NULL, '13644544', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAGONAL 56 #12-16', 'PUEBLO NUEVO', '3144890037', NULL, NULL, '2020-07-07 00:28:37', '2020-07-07 00:28:37'),
(79, 'IMPUESTOS DEPARTAMENTO', 'DE SANTANDER', NULL, '000000000', 'Nit', 'GIRON', 'SANTANDER', 'GIRON', NULL, NULL, NULL, NULL, '2020-07-07 00:30:51', '2020-07-07 00:30:51'),
(80, 'DIESEL CENTER', 'LABORATORIO S.A.S', NULL, '900883974', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANV. 29 # 32-23', 'FLORESTA BAJA', '6200660', NULL, NULL, '2020-07-07 03:22:29', '2020-07-07 03:22:29'),
(82, 'VIDRIO', 'LUJO', NULL, '790612922', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 30 #20-34', NULL, '3194816185', NULL, NULL, '2020-07-08 03:47:35', '2020-07-08 03:47:35'),
(83, 'INDUSTRIAS METALMECANICAS', 'JUNIOR S.A.S', 'tallerjunior@outlook.com', '901078038', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 60 No. 32A-22', 'miradores del cacique', NULL, NULL, NULL, '2020-07-14 00:17:24', '2020-07-14 00:17:24'),
(84, 'CDA', 'GIRON', NULL, '860051894', 'Nit', 'GIRON', 'SANTANDER', 'CARRERA 18 AUTOPISTA PALENQUE', 'FLORIDA BLANCA', NULL, NULL, NULL, '2020-07-14 00:21:54', '2020-07-14 00:21:54'),
(85, 'TESOL', 'SAS', NULL, '900509566', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 62 No. 31-75', 'FLORESTA BAJA', NULL, NULL, NULL, '2020-07-14 02:38:04', '2020-07-14 02:38:04'),
(86, 'TORNILLOS &', 'TUERCAS', NULL, '129819', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 33 # 58-50', NULL, NULL, NULL, NULL, '2020-07-14 02:43:03', '2020-07-14 02:43:03'),
(87, 'PEAJE', 'LEBRIJA', NULL, '8300545390', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CONCESIONARIO RUTA DEL CACAO', 'CONCESIONARIO RUTA DEL CACAO', NULL, NULL, NULL, '2020-07-14 02:53:26', '2020-07-14 02:53:26'),
(88, 'SERVICENTRO', 'SAN ANDRES', NULL, '9001495662', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAGONAL 65 # 45-112', 'LAS GRANJAS', NULL, NULL, NULL, '2020-07-14 03:17:29', '2020-07-14 03:17:29'),
(89, 'REPARACION DE CARROCERIA METALICA', 'LA ESTRELLA', NULL, '174107560', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'ANTIGUO PARQUEADERO DEL TERMINAL DE TRANSPORTES', 'ANTIGUO PARQUEADERO DEL TERMINAL DE TRANSPORTES', NULL, NULL, NULL, '2020-07-14 03:18:50', '2020-07-14 03:18:50'),
(90, 'TALLER DE MECANICA DIESEL', 'LOS BOYACOS', NULL, '1098611508', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'TERMINAL DE TRANSPORTE ZONA TALLERES', 'TERMINAL DE TRANSPORTE ZONA TALLERES', NULL, NULL, NULL, '2020-07-14 03:26:38', '2020-07-14 03:26:38'),
(91, 'ALMACEN DE REPUESTOS', 'MEPRA', NULL, '915089505', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'TEMINAL DE TRANSPORTE DE BUCARAMANGA', 'TEMINAL DE TRANSPORTE DE BUCARAMANGA', NULL, NULL, NULL, '2020-07-14 03:51:30', '2020-07-14 03:51:30'),
(92, 'ORLANDO', 'ROA M', NULL, '915073723', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'TERMINAL DE TRANSPORTE DE BUCARAMANGA', 'TERMINAL DE TRANSPORTE DE BUCARAMANGA', NULL, NULL, NULL, '2020-07-14 04:09:58', '2020-07-14 04:09:58'),
(93, 'SERVIEMPAQUES', 'JORGE ALVAREZ', NULL, '91207042', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 No. 31-25', 'ZONA INDUSTRIAL', '6111894', NULL, NULL, '2020-07-14 04:19:34', '2020-07-14 04:19:34'),
(94, 'RADIADORES', 'TECNIRAT', 'NO@TIENE.COM', '91449438', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSV. 48D # 52-27', 'LOS COMUNEROS', NULL, NULL, NULL, '2020-07-14 04:23:49', '2020-07-14 04:23:49'),
(95, 'SCAMOTORS', 'S.A.S', 'SCARMOTORS@HOTMAIL.COM', '901131083', 'Nit', 'BUCARAMANGA', 'SANTANDER', NULL, NULL, NULL, NULL, NULL, '2020-07-14 04:30:33', '2020-07-14 04:30:33'),
(96, 'FERRETERIA', 'PRANK', NULL, '17111512', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', NULL, NULL, NULL, NULL, NULL, '2020-07-14 04:35:30', '2020-07-14 04:35:30'),
(97, 'ANPRA', 'S.A.S', 'INFO@ANPRA.COM', '800235801', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CALLE 46 # 31-40', NULL, '7433220', NULL, NULL, '2020-07-14 04:48:29', '2020-07-14 04:48:29'),
(98, 'MARIANA CAMILA', 'RUEDA', NULL, '1098820529', 'Nit', 'BUCARAMANGA', 'SANTANDER', NULL, NULL, NULL, NULL, NULL, '2020-07-14 04:50:25', '2020-07-14 04:50:25'),
(99, 'ELECTRICIDAD', 'AUTOMOTRIZ', NULL, '13720283', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'KM 2 VIA GIRON ENTRADA AL TERMINAL', NULL, NULL, NULL, NULL, '2020-07-14 04:57:34', '2020-07-14 04:57:34'),
(100, 'ESTACION DE SERVICIO', 'EL TREBOL', NULL, '829001351', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'calle 50 # 23-35', NULL, '6020404', NULL, NULL, '2020-07-14 05:06:57', '2020-07-14 05:06:57'),
(101, 'SANAUTOS', 'MOTOR S.A', 'comunicaciones@sanautos.com.co', '8040050491', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 48 # 22-82', 'COLOMBIA', NULL, NULL, NULL, '2020-07-16 04:53:47', '2020-07-16 04:53:47'),
(102, 'MONRO', 'PARTES', NULL, '379256795', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 # 59-106', NULL, NULL, NULL, NULL, '2020-07-16 17:27:48', '2020-07-16 17:27:48'),
(103, 'FRIO - ELECTRIC Y', 'BOBINADOS F.E.B', NULL, '13887938', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 67 # 31-54', 'LA FLORESTA', NULL, NULL, NULL, '2020-07-16 18:57:46', '2020-07-16 18:57:46'),
(104, 'IPROTEC', 'GPS', 'CONTABILIDAD@IPROTEC.COM.CO', '9010791291', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', NULL, NULL, '3506322218', NULL, NULL, '2020-09-13 00:46:16', '2020-09-13 00:46:16'),
(105, 'ALMACEN ELECRICO Y TALLERES', 'MENDOZA S.A.S', 'ALMACENMENDOZA@HOTMAIL.COM', '900565189', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 30 # 71-48', 'LA FLORESTA', '6221430', NULL, NULL, '2020-09-13 02:17:15', '2020-09-13 02:17:15'),
(106, 'TALLER', 'POLO', NULL, '138523047', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAG.60 # 43-57', 'LAS GRANJAS', '3204467357', NULL, NULL, '2020-09-13 02:30:41', '2020-09-13 02:30:41'),
(107, 'ALMACEN', 'TECNIAGRO CENTRO', NULL, '1098636402', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 6 # 50-33', NULL, '3185022899', NULL, NULL, '2020-09-13 02:34:41', '2020-09-13 02:34:41'),
(108, 'TRACTO MANGUERAS', 'CHIMITA', NULL, '13920663', 'Nit', 'GIRON', 'SANTANDER', 'CALLE 52 # 2-05', 'CHIMITA', '6823952', NULL, NULL, '2020-09-13 03:02:38', '2020-09-13 03:02:38'),
(109, 'AGENCIA NACIONAL DE INFRAESTRUCTURA', 'PEAJE', NULL, '830054539', 'Nit', 'RIO SOGAMOSO', 'SANTANDER', 'PEAJE RIO SOGAMOSO', NULL, NULL, NULL, NULL, '2020-09-14 17:35:11', '2020-09-14 17:35:11'),
(110, 'FERRETERIA MENDOZA', 'RICO', NULL, '2055456', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CRA 18 # 52-55', 'URIBE URIBE', '3112637032', NULL, NULL, '2020-09-14 17:50:42', '2020-09-14 17:50:42'),
(111, 'DISSANDEN', 'S.A.S', 'dissanden@hotmail.com', '9011461613', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CRA 9 # 42-45 PISO 2', NULL, '6332079', NULL, NULL, '2020-09-14 18:08:50', '2020-09-14 18:08:50'),
(112, 'ALMACEN Y TALLER ELECTRICIDAD AUTOMOTRIZ', 'JMJ CARS', 'Almacenjmjcars@hotmail.com', '91448061', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'Calle 65 T29-23', 'LA FLORESTA', '3223627722', NULL, NULL, '2020-09-14 19:12:31', '2020-09-14 19:12:31'),
(113, 'CARDEPOT', 'S.A.S', NULL, '900842275', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'Cra 26 # 31-40', NULL, '6971111', NULL, NULL, '2020-09-14 19:15:37', '2020-09-14 19:15:37'),
(114, 'TECNI REPUESTOS', 'LA 36', NULL, '91428398', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'Avenida 36 # 54 A -04', 'LAS CAMELIAS', '3135406386', NULL, NULL, '2020-09-14 20:57:45', '2020-09-14 20:57:45'),
(115, 'RODAMIENTOS Y RETENES', 'DEL ORIENTE S.A.S', 'tecnirodillo@hotmail.com', '900168507', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'Calle 24 # 12-35', 'Girardot', '6333027', NULL, NULL, '2020-09-14 21:02:13', '2020-09-14 21:02:13'),
(116, 'TALLER CHAPAS', 'ESTEBAN', NULL, '91435476', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CRA 36 # 55-16', 'CIUDAD BOLIVAR', '3134717323', NULL, NULL, '2020-09-14 21:44:23', '2020-09-14 21:44:23'),
(117, 'TODOVIGIA', 'S.A.S', 'todovigia@hotmail.com', '900625415', 'Nit', 'GIRON', 'SANTANDER', 'PARQUEADERO SOCERAUTOS GIRON', NULL, '6909109', NULL, NULL, '2020-09-14 21:49:11', '2020-09-14 21:49:11'),
(118, 'CDA', 'BARRANCABERMEJA', 'inversin.ltda@hotmail.com', '68081000', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 15  47-61', NULL, '6203698', NULL, NULL, '2020-09-15 01:44:57', '2020-09-15 01:44:57'),
(119, 'TAPICERIA', 'VICMAN', 'vicmanseat@hotmail.com', '635456931', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 N 30-42', 'PALMIRA', '3188320172', NULL, NULL, '2020-09-15 02:17:35', '2020-09-15 02:17:35'),
(120, 'INSTITUTO NACIONAL DE VIAS', 'INVIAS', NULL, '800215807', 'Nit', NULL, NULL, NULL, NULL, '3770600', NULL, NULL, '2020-09-15 03:05:40', '2020-09-15 03:05:40'),
(121, 'SUMATEC', 'S.A.S', NULL, '890800788', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAGONAL 56 18 A 80', 'GALAN', NULL, NULL, NULL, '2020-09-15 03:24:16', '2020-09-15 03:24:16'),
(122, 'LABORATORIOS DIESEL', 'UNIVERSAL LTDA.', 'dieselunivers@hotmail.com', '804012778', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'Avenida 36 N 31-07', 'ZONA INDUSTRIAL', '3158524324', NULL, NULL, '2020-09-16 18:31:35', '2020-09-16 18:31:35'),
(123, 'SEGUROS DEL ESTADO', 'S.A', NULL, '860009578', 'Nit', 'BOGOTA D.C', NULL, 'CARRERA 11 N 90-20', 'OFICINA PRINCIPAL', '2185977', NULL, NULL, '2020-09-16 19:40:25', '2020-09-16 19:40:25'),
(124, 'REPUESTOS PARA MOTOS', 'LA 50', NULL, '49698696', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 50 N 13-90', 'COLOMBIA', '6200365', NULL, NULL, '2020-09-16 20:17:30', '2020-09-16 20:17:30'),
(125, 'TALLER', 'TELLEZ', NULL, '91425174', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 36', 'ZONA INDUSTRIAL', '3138691811', NULL, NULL, '2020-09-16 20:48:21', '2020-09-16 20:48:21'),
(126, 'TALLER MF', 'GARCIA', NULL, '9166280', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'BOMBA LA 36', NULL, '3154791636', NULL, NULL, '2020-09-16 20:53:32', '2020-09-16 20:53:32'),
(127, 'SERVIMANGUERAS REPUESTOS', 'Y SUMINISTROS S.A.S', 'servimangueras.sas@gmail.com', '901319388', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 33 N 59-116', 'LAS CAMELIAS', '3104696186', NULL, NULL, '2020-09-16 22:02:43', '2020-09-16 22:02:43'),
(128, 'AUTOREPUESTOS Y PARTE', NULL, NULL, '52645073', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 N 59-96', NULL, '6014096', NULL, NULL, '2020-09-16 22:23:33', '2020-09-16 22:23:33'),
(129, 'FIDUCIARIA DEL OCCIDENTE-CONCESION SABANA', NULL, NULL, '830054076', 'Nit', 'BOGOTÁ-VILLETA', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-17 21:57:52', '2020-09-17 21:57:52'),
(130, 'MULTISERVICIOS DCV', 'S.A.S', 'multiserviciosdcv3@hotmail.com', '900958352', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 N 59-164', NULL, '6223184', NULL, NULL, '2020-09-18 00:27:36', '2020-09-18 00:27:36'),
(131, 'RMQ AIRES', 'Y REFRIGERACION', NULL, '13642170', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CALLE 79 N 11 W-170', 'ZONA INDUSTRIAL', '3204886067', NULL, NULL, '2021-01-29 00:35:46', '2021-01-29 00:35:46'),
(132, 'RECARGAS Y VIGIAS', 'KyE', NULL, '63552552', 'Nit', 'GIRON', 'SANTANDER', 'KILOMETRO 7 VIA A GIRON', NULL, '3154627941', NULL, NULL, '2021-01-29 00:52:59', '2021-01-29 00:52:59'),
(133, 'ESTELCO Y COMPAÑIA', 'LIMITADA', 'estelco.ltda@hotmail.com', '900689020', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CALLE 20 N 15-57', NULL, '6713541', NULL, NULL, '2021-01-29 01:03:37', '2021-01-29 01:03:37'),
(134, 'TALLER', 'EL LOBO', NULL, '1099373269', 'Nit', 'GIRON', 'SANTANDER', 'KILOMETRO 7 VIA A GIRON', NULL, '3102678408', NULL, NULL, '2021-01-29 01:20:39', '2021-01-29 01:20:39'),
(135, 'TRACTO AIRE BARRANCA', NULL, NULL, '1096467605', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'VIA NACIONAL EL BOSTON', 'BOSTON', '3207467075', NULL, NULL, '2021-01-29 01:29:27', '2021-01-29 01:29:27'),
(136, 'SERVICIOS FRENOS Y REPUESTOS', NULL, 'luna2015b@hotmail.com', '5793572', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA EL BOSTON', 'EL BOSTON', '3107907576', NULL, NULL, '2021-01-29 01:44:52', '2021-01-29 01:44:52'),
(137, 'TALLERES ORO NEGRO', NULL, NULL, '91438018', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAGONAL 62 N 47-29', '20 DE AGOSTO', NULL, NULL, NULL, '2021-01-29 01:52:40', '2021-01-29 01:52:40'),
(138, 'ALMACEN DE REPUESTO EL ROLO', NULL, NULL, '93021552', 'Nit', 'GIRON', 'SANTANDER', 'KILOMETRO 2 VIA GIRON', NULL, '3142410624', NULL, NULL, '2021-01-29 02:01:50', '2021-01-29 02:01:50'),
(139, 'DTS COMERLUB', NULL, NULL, '37549956', 'Nit', 'GIRON', 'SANTANDER', 'ZONA TALLERES TERMINAL DE TRANSPORTES', NULL, '322229558', NULL, NULL, '2021-01-29 02:11:51', '2021-01-29 02:11:51'),
(140, 'TALLER DE MECANICA AUTOMOTRZ', 'EL REY', NULL, '91467747', 'Nit', 'GIRON', 'SANTANDER', 'KILOMETRO 6 VIA BUCARAMANGA', NULL, '3223324195', NULL, NULL, '2021-01-29 02:16:01', '2021-01-29 02:16:01'),
(141, 'PARQUEADERO', 'LA CIRA', 'constructora.lp@hotmail.com', '1096254847', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 37 N 57-74', 'BOSQUES DE LA CIRA', '3107877253', NULL, NULL, '2021-01-29 02:34:17', '2021-01-29 02:34:17'),
(142, 'SOLO CAMPEROS', NULL, NULL, '91294911', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CRA 15 N 19 A 26', NULL, '6712568', NULL, NULL, '2021-01-29 03:33:45', '2021-01-29 03:33:45'),
(143, 'GUARDAPOLVOS CARREÑO', NULL, NULL, '13746377', 'Nit', 'GIRON', 'SANTANDER', 'KILOMETRO 2 VIA GIRON', NULL, '3123458829', NULL, NULL, '2021-01-29 03:59:58', '2021-01-29 03:59:58'),
(144, 'FRENOS DE AIRE JEP', NULL, NULL, '19285941', 'Nit', 'GIRON', 'SANTANDER', 'CASETA N 19', 'ZONA INDUSTRIAL CHIMITÁ', '3172911751', NULL, NULL, '2021-01-29 04:02:21', '2021-01-29 04:02:21'),
(145, 'SURTIELECTRICOS LAS MULAS', NULL, NULL, '63303834', 'Nit', 'GIRON', 'SANTANDER', 'CRA 3 N 2-104', 'ZONA DE REPUESTOS CHIMITÁ', '6762315', NULL, NULL, '2021-01-29 04:05:27', '2021-01-29 04:05:27'),
(146, 'ELECTROSONIDOS LA 27', NULL, NULL, '91265524', 'Nit', 'GIRON', 'SANTANDER', 'CRA 3 N 1-94', 'CHIMITÁ', '3168179992', NULL, NULL, '2021-01-29 04:09:36', '2021-01-29 04:09:36'),
(147, 'MOTO', 'RHAY', NULL, '1096211664', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CRA 36 N 10-16', 'VIA PRINCIPAL LLANITO', '6023186', NULL, NULL, '2021-01-29 04:12:02', '2021-01-29 04:12:02'),
(148, 'ALMACEN DE LUJOS Y REPUESTOS', 'LA CAROLINA', 'lujoslacarolina@hotmail.com', '63361148', 'Nit', 'GIRON', 'SANTANDER', 'CRA 3 N 1-94', 'ZONA INDUSTRIAL CHIMITÁ', '6762437', NULL, NULL, '2021-01-29 17:23:33', '2021-01-29 17:23:33'),
(149, 'CENTRO PINTUCOLOR', 'S.A.S', NULL, '25092020', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 N57-37', NULL, '6224019', NULL, NULL, '2021-01-29 17:51:42', '2021-01-29 17:51:42'),
(150, 'RADIADORES EL MONO', 'LA 17', NULL, '13718782', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CRA 17 A N 58-62', NULL, '3132041924', NULL, NULL, '2021-01-29 18:36:14', '2021-01-29 18:36:14'),
(151, 'FERRECONSTRUCCIONES', 'H.C', NULL, '91444414', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CRA 33 N 67-81', 'LA FLORESTA', '3014113622', NULL, NULL, '2021-01-29 22:24:51', '2021-01-29 22:24:51'),
(152, 'TRANSAIRE', NULL, 'correo@transaires.net', '800157061', 'Nit', 'BOGOTA', 'BOGOTA', 'CARRERA 127 N 22 G 15', 'BODEGA 2', '(1)4130303', NULL, NULL, '2021-01-30 01:34:56', '2021-01-30 01:34:56'),
(153, 'CARPAS Y TAPICERIA', NULL, NULL, '91439468', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 52 N 29-40', 'PALMIRA', '3017711409', NULL, NULL, '2021-01-30 01:42:16', '2021-01-30 01:42:16'),
(154, 'FUMISERTEC', NULL, NULL, '13565124', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 48 N 21-142', 'LOCAL 101', '3045912214', NULL, NULL, '2021-01-30 02:01:41', '2021-01-30 02:01:41'),
(155, 'TRACTO LUJOS', NULL, 'tractolujos1@hotmail.com', '91275012', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CARRERA 15 # 20-67', NULL, '6711330', NULL, NULL, '2021-01-30 03:43:21', '2021-01-30 03:43:21'),
(156, 'AMERICANCARGO', 'DIESEL S.A.S', NULL, '901336857', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'TERMINAL DE TRANSPORTE MODULO 4 LOCAL 604', NULL, '3125602949', NULL, NULL, '2021-02-02 01:05:44', '2021-02-02 01:05:44'),
(157, 'PRODUCTOS DE CAUCHO Y LONA', 'S.A.S', 'pclbarranca@pcl.com.co', '890328485', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 71 N 23-66', NULL, '6224008', NULL, NULL, '2021-02-02 03:46:10', '2021-02-02 03:46:10'),
(158, 'ACCESORIOS Y LUJOS', 'CAM', 'SOLAVILAA1989@GMAIL.COM', '1095804718', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSVERSAL 49 N 54-02', 'BARRIO RANGEL', '3222000067', NULL, NULL, '2021-02-02 17:56:42', '2021-02-02 17:56:42'),
(159, 'CENTRO EMBELLECIMIENTO', 'AUTO-STAR', NULL, '91277887', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 31 TRANSVERSAL N 29-11', 'LA FLORESTA', '3184425611', NULL, NULL, '2021-02-02 20:20:42', '2021-02-02 20:20:42'),
(160, 'ALMACEN MANUEL', 'COBOS DUARTE LTDA', NULL, '8902005847', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CRA 15 N 18-77', NULL, '6712920', NULL, NULL, '2021-02-02 20:28:00', '2021-02-02 20:28:00'),
(161, 'ROBERTO MUÑOZ', 'QUIÑONEZ', NULL, '1384221704', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CALLE 70 11 W 170', NULL, '3003450000', NULL, NULL, '2021-02-02 21:52:31', '2021-02-02 21:52:31'),
(162, 'PLASTIMICKEY', NULL, 'PLASTIMICKEY@HOTMAIL.COM', '632777006', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 50 N 17-03', NULL, '6213986', NULL, NULL, '2021-02-02 22:00:34', '2021-02-02 22:00:34'),
(163, 'AUTOLUJOS', 'LOS COCHES', NULL, '137494307', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 DIAGONAL 49 N 30-60', 'LA 36', '3123129192', NULL, NULL, '2021-02-02 22:04:04', '2021-02-02 22:04:04'),
(164, 'AUTOLUJOS', 'LA CABAÑA', NULL, '379304932', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 N 30-36', 'PALMIRA', '6019540', NULL, NULL, '2021-02-02 22:06:48', '2021-02-02 22:06:48'),
(165, 'RECTIFICADORA CARLOS', 'CORREDOR', 'rectificadoracarloscorredor@hotmail.com', '0512', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CALLE 70 N 11 W 30 AUTOPISTA', 'KILOMETRO 3 VIA GIRON BUCARAMANGA', '6373778', NULL, NULL, '2021-02-03 03:57:02', '2021-02-03 03:57:02'),
(166, 'TALLER Y MONTALLANTAS', 'LA LIZAMA', NULL, '4042', 'Nit', 'LIZAMA', 'SANTANDER', 'KILOMETRO 5 VIA BARRANCABERMEJA - BUCARAMANGA', NULL, '3166218596', NULL, NULL, '2021-02-03 04:20:08', '2021-02-03 04:20:08'),
(167, 'CDA', 'LEBRIJA', 'CDALEBRIJENSE.COMERCIAL@GMAIL.COM', '901028963', 'Nit', 'LEBRIJA', 'SANTANDER', 'CALLE 12 N 17-110', NULL, '3178932690', NULL, NULL, '2021-02-03 06:16:06', '2021-02-03 06:16:06'),
(168, 'AVISOS', 'CARRO PARTES', 'CONTABILIDADCARROPARTES@GMAIL.COM', '900513696', 'Nit', 'BOGOTÁ', 'BOGOTA', 'DIAGONAL 23 69 60 MD 5 LC 153 TER BOGOTÁ', NULL, '4773311', NULL, NULL, '2021-02-03 06:54:44', '2021-02-03 06:54:44'),
(169, 'LEXLUJOS', 'CAR PERFOMANCE', 'ALEX.LUJOSBARRANCABERMEJA@HOTMAIL.COM', '219495001', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSVERSAL 49 N 31 A 06', NULL, '3002568403', NULL, NULL, '2021-02-03 06:59:35', '2021-02-03 06:59:35'),
(170, 'ALMACEN', 'ELECTRILUJOS', NULL, '13749282', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CARRERA 15 N 19-15', NULL, '6712661', NULL, NULL, '2021-02-03 07:01:56', '2021-02-03 07:01:56'),
(171, 'AUTOLAVADO', 'LA 54', 'XIOMYMOYA@GMAIL.COM', '521960469', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 54 B 19-38', NULL, '6224851', NULL, NULL, '2021-02-03 17:54:12', '2021-02-03 17:54:12'),
(172, 'ESTACION DE SERVICIO', 'RUITOQUE', NULL, '910126819', 'Nit', 'FLORIDABLANCA', 'SANTANDER', 'AUTOPISTA FLORIDABLANCA 205-10', NULL, '6389476', NULL, NULL, '2021-02-03 18:27:33', '2021-02-03 18:27:33'),
(173, 'LA TURBINA', NULL, NULL, '138346400', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'TRANSVERSAL 29 N 63-17', 'FLORESTA BAJA', '3228530573', NULL, NULL, '2021-02-03 19:35:41', '2021-02-03 19:35:41'),
(174, 'CODIESEL', NULL, NULL, '890203023', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 67 N 31-28', 'FLORESTA BAJA', '6024060', NULL, NULL, '2021-02-12 19:33:44', '2021-02-12 19:33:44'),
(175, 'BATERIAS DAVID', 'SUPERSTAR', 'bateriasstar@hotmail.com', '900518624', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 N 59-154', 'LAS CAMELIAS', '6027872', NULL, NULL, '2021-02-13 02:09:44', '2021-02-13 02:09:44'),
(176, 'JOTA\'S LUBRICANTES', NULL, NULL, '91516363', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', NULL, NULL, NULL, NULL, NULL, '2021-02-14 04:16:22', '2021-02-14 04:16:22'),
(177, 'FERRETERIA', 'AR&SAN', 'arysanferreteria@hotmail.com', '900220034', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 33 N 57-29', NULL, '6027221', NULL, NULL, '2021-02-23 19:31:11', '2021-02-23 19:31:11'),
(178, 'ALMACEN Y TALLER', 'PROMOREPUESTOS', 'promorepuestos2020@gmail.com', '7334807', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'Carrera 36 N 62-11', 'FLORESTA BAJA', '3158727783', NULL, NULL, '2021-02-23 20:05:35', '2021-02-23 20:05:35'),
(179, 'HIERROS Y LAMINAS', NULL, NULL, '900065704', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'AVENIDA 36 N 58-123', 'LA 36', NULL, NULL, NULL, '2021-02-23 21:09:49', '2021-02-23 21:09:49'),
(180, 'FERRETERIA MATERIALES', 'BARRANCABERMEJA', 'ferretiamaterialesbca@hotmail.com', '1096194828', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'Calle 71 N 23-43', 'La libertad', '3013038449', NULL, NULL, '2021-02-23 21:18:55', '2021-02-23 21:18:55'),
(181, 'EDS GAS', 'LOS AMARILLOS', NULL, '900299998', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 71 N 21-118', 'LA LIBERTAD', '6111422', NULL, NULL, '2021-02-23 21:20:52', '2021-02-23 21:28:59'),
(182, 'FERRETRIA INDUSTRIAL PETROLERA', 'BARRANCABERMEJA SAS', NULL, '900638743', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 71 N 21 -103', 'LA LIBERTAD', '6203505', NULL, NULL, '2021-02-23 21:33:11', '2021-02-23 21:33:11'),
(183, 'ARANQUES AVISOS', 'POLARIZADOS Y PUBLICIDAD', 'aranques.avisorios@gmail.com', '1100975391', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'Transversal 48 # 57-29', 'BOSTON', '3133464259', NULL, NULL, '2021-02-24 22:20:58', '2021-02-24 22:20:58'),
(184, 'TODO CAMPEROS', 'LTDA', NULL, '804003570', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CARRERA 15 N 20-73', NULL, '6714488', NULL, NULL, '2021-02-25 00:20:46', '2021-02-25 00:20:46'),
(185, 'SERVITECA LA 28', 'DSM SAS', NULL, '901396815', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CARRERA 28 N 45-44', 'LA 28', '6003214', NULL, NULL, '2021-02-25 01:56:50', '2021-02-25 01:56:50'),
(186, 'PUNTO ELECTRICO', 'LA 36', NULL, '91423143', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAGONAL 49 N 33-32', 'NUEVO PALMIRA', '3126916653', NULL, NULL, '2021-02-25 19:09:43', '2021-02-25 19:09:43'),
(187, 'INVERSIONES Y SERVICIOS DE COLOMBIA S.A', 'INSERCOL', 'contador@insercol.com', '804000927', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'KILOMETRO 6 AUTOPISTA GIRON', 'GIRON', '6466699', NULL, NULL, '2021-02-26 01:22:44', '2021-02-26 01:22:44'),
(188, 'EL CENTRO', 'LA GRAN ESTACION', NULL, '900419407', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CORREGIMIENTO EL CENTRO', 'CORREGIMIENTO EL CENTRO', '6109003', NULL, NULL, '2021-03-11 17:31:58', '2021-03-11 17:31:58'),
(189, 'TALLER DE DIRECCIONES', 'RR', NULL, '63505776', 'Nit', 'FLORIDABLANCA', 'SANTANDER', 'KM 3. PARQUEADERO 24 HORAS', 'VIA GIRON', '3182505381', NULL, NULL, '2021-03-11 17:36:37', '2021-03-11 17:36:37'),
(190, 'SOSERAUTOS S.A', NULL, NULL, '804014189', 'Nit', 'GIRON', 'SANTANDER', 'CALLE 59 N 13-35', 'LA ESMERALDA', '6469675', NULL, NULL, '2021-03-11 17:44:35', '2021-03-11 17:44:35'),
(191, 'DIRECCIONES E HIDRAULICAS', 'EL BUENO', NULL, '1098642289', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'CALLE 70 N 6-12 JUNTO A COCA COLA', 'PARQUEADERO EL RENEGADO', '3188143643', NULL, NULL, '2021-03-11 17:54:17', '2021-03-11 17:54:17'),
(192, 'TALLER MANTENIMIENTO', 'MUELLES Y RUEDAS', NULL, '13920232', 'Nit', 'GIRON', 'SANTANDER', 'KM 7 VIA GIRON', 'VIA GIRON', '6468454', NULL, NULL, '2021-03-11 18:09:14', '2021-03-11 18:09:14'),
(193, 'TALLER ELECTRICO', 'RIVERO', NULL, '13846411', 'Nit', 'GIRON', 'SANTANDER', 'KM 7 VIA GIRON', 'ADELANTE DEL HOTEL SAN JUAN DE GIRON', '3177358841', NULL, NULL, '2021-03-11 18:19:31', '2021-03-11 18:19:31'),
(194, 'TALLER FERRARI', NULL, NULL, '63340384', 'Nit', 'GIRON', 'SANTANDER', 'KM 7 VIA GIRON', 'ADELANTE DEL HOTEL SAN JUAN DE GIRON', '6463820', NULL, NULL, '2021-03-11 18:47:28', '2021-03-11 18:47:28'),
(195, 'BOBINADOS AUTOMOTRIZ', NULL, NULL, '1050', 'Nit', 'GIRON', 'SANTANDER', 'KM 7 VIA GIRON # 4-80', 'VIA GIRON', '3163021577', NULL, NULL, '2021-03-11 18:54:35', '2021-03-11 18:54:35'),
(196, 'LAVADERO CANTABRIA', NULL, NULL, '1095816523', 'Nit', 'GIRON', 'SANTANDER', 'KM 7 VIA GIRON CALLE 70', 'CANTABRIA', '3153204609', NULL, NULL, '2021-03-11 18:59:50', '2021-03-11 18:59:50'),
(197, 'LAVADO DE EQUIPOS A VAPOR', NULL, NULL, '5796720', 'Nit', 'BUCARAMANGA', 'SANTANDER', 'KM 2 VIA BUCARAMANGA', NULL, '3223532395', NULL, NULL, '2021-03-11 19:04:53', '2021-03-11 19:04:53'),
(198, 'FABRICA DE DOTACION', 'VASQUEZ', NULL, '63504741', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'CALLE 52 N 12-74', 'BARRIO COLOMBIA', '3203768202', NULL, NULL, '2021-03-11 19:29:12', '2021-03-11 19:29:12'),
(199, 'AUTOMUNDIAL', 'S.A', NULL, '86001615', 'Nit', 'BOGOTA DC', 'BOGOTA', 'CALLE 55 # 16-31', NULL, '4204350', NULL, NULL, '2021-03-29 22:18:06', '2021-03-29 22:18:06'),
(200, 'FASE PI', 'SAS', NULL, '8201215760', 'Nit', 'BOGOTA DC', 'BOGOTA', 'CR 73 7 C 71', NULL, '3002684114', NULL, NULL, '2021-03-30 18:05:24', '2021-03-30 18:05:24'),
(201, 'EL PUNTO DE COLOR', 'LA 36', 'leidytoledoc@gmail.com', '1096199589', 'Nit', 'BARRANCABERMEJA', 'SANTANDER', 'DIAGONAL 49 # 31-112', 'PALMIRA', '6200436', NULL, NULL, '2021-03-30 18:17:59', '2021-03-30 18:17:59'),
(202, 'RECTIFRENOS', 'ABS', NULL, '914716057', 'Nit', 'SAN GIL', 'SANTANDER', 'TRANSVERSAL 21 N 20-36', 'PUNTA DEL ESTE SAN GIL', '3203322295', NULL, NULL, '2021-03-30 18:36:50', '2021-03-30 18:36:50'),
(203, 'INSPECCION DE TRANSITO Y TRANSPORTE DE', 'GIRON', NULL, '8902041091', 'Nit', 'GIRON', 'SANTANDER', 'Km 6 Autopista Girón – Bucaramanga', '200 metros Adelante de Cenfer', '310 2445169', NULL, NULL, '2021-03-30 20:49:20', '2021-03-30 20:49:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendacions`
--

CREATE TABLE `recomendacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehiculo_id` bigint(20) UNSIGNED NOT NULL,
  `parte_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seguimiento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cant_programado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cant_ejecutado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especificacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_programado` date DEFAULT NULL,
  `fecha_actual` date DEFAULT NULL,
  `km_actual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_siguiente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_siguiente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recomendacions`
--

INSERT INTO `recomendacions` (`id`, `vehiculo_id`, `parte_id`, `seguimiento`, `cant_programado`, `cant_ejecutado`, `especificacion`, `observacion`, `fecha_programado`, `fecha_actual`, `km_actual`, `km_siguiente`, `fecha_siguiente`, `created_at`, `updated_at`) VALUES
(7, 48, '19', 'Programado', '2', '1', NULL, 'MANTENIMIENTO PREVENTIVO', '2020-04-16', '2020-06-18', '', NULL, '2020-06-30 00:00:00', '2020-06-19 00:41:49', '2020-06-19 00:42:40'),
(8, 48, '19', 'Programado', '1', '0', NULL, 'Desmonte de tapa para el A/C y mantenimiento del mismo', '2019-11-20', '2020-06-18', '', NULL, '2020-02-03 00:00:00', '2020-06-19 01:16:01', '2020-06-19 01:16:01'),
(9, 54, '19', 'Programado', '5', '4', NULL, 'Mantenimiento preventivo, 4 libras de gas', '2021-01-19', '2021-02-13', '', NULL, '2021-04-04 00:00:00', '2020-06-19 01:17:12', '2021-02-13 05:01:25'),
(10, 20, '19', 'Programado', '3', '2', NULL, 'MTTO PREVENTIVO Y CARGA DE GAS.', '2020-05-26', '2020-06-18', '0', NULL, '2020-08-09 00:00:00', '2020-06-19 01:55:37', '2020-06-19 01:58:28'),
(11, 20, '6', 'Programado', '4', '3', NULL, 'Alineación y balanceo por cambio de 4 llantas', '2020-06-12', '2020-09-14', '0', NULL, '2020-10-10 00:00:00', '2020-06-19 02:02:40', '2020-09-14 20:50:16'),
(14, 36, '19', 'Programado', '5', '4', NULL, 'Mantenimiento termo', '2020-12-15', '2021-02-13', '66879', NULL, '2021-02-28 00:00:00', '2020-06-19 18:24:42', '2021-02-14 03:46:44'),
(15, 17, '19', 'Programado', '6', '5', NULL, 'Corrección de fuga línea de alta soldadura en aluminio, 1 aceite compresor, 7 refrigerante 134A', '2020-12-10', '2021-02-13', '0', NULL, '2021-02-23 00:00:00', '2020-06-19 18:46:11', '2021-02-14 02:23:08'),
(16, 18, '37', 'Programado', '2', '1', NULL, 'compra de 4 195/75R16 llantas Marathon', '2020-04-08', '2020-06-19', '0', '287447', NULL, '2020-06-19 19:14:59', '2020-06-19 19:15:55'),
(18, 19, '6', 'Programado', '5', '4', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-07-31', '2020-09-23', '0', NULL, '2020-11-28 00:00:00', '2020-06-19 20:51:24', '2020-09-23 22:07:00'),
(19, 22, '37', 'Programado', '2', '1', NULL, 'Compra de 6 llantas 225/65R16 goodyear 08/04/2020 Fact: 1032.  (Ultimas 2 llantas  pacha izquierda 23/07/2019 KM: 181527 - 2 llantas 05/03/2019 KM: 162546 - 2 llantas 05/06/2019 KM: 175522 )', '2020-04-08', '2020-06-19', '0', '264391', NULL, '2020-06-20 02:07:48', '2020-06-20 02:08:51'),
(20, 22, '6', 'Programado', '4', '3', NULL, 'ALINEACIÓN', '2020-09-17', '2020-09-23', '0', NULL, '2021-01-15 00:00:00', '2020-06-20 02:16:37', '2020-09-23 20:55:11'),
(21, 27, '6', 'Programado', '6', '5', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-08-03', '2020-09-23', '0', NULL, '2020-12-01 00:00:00', '2020-06-20 03:13:25', '2020-09-23 21:36:50'),
(23, 24, '38', 'Programado', '2', '1', NULL, 'COMPRA DE BATERIA AUTO MAC', '2020-03-16', '2020-06-26', '0', NULL, '2021-09-07 00:00:00', '2020-06-26 23:26:30', '2020-06-26 23:27:34'),
(29, 16, '19', 'Programado', '6', '5', NULL, 'Mantenimiento preventivo y calibración de gas, 4 libras de gas.\r\nObservación: Se reporta cambio de extractor pero no se hizo, pendiente por cambio)', '2021-03-06', '2021-03-31', '263141', NULL, '2021-05-20 00:00:00', '2020-06-28 17:15:45', '2021-04-01 03:30:29'),
(35, 15, '19', 'Programado', '7', '6', NULL, 'COMPRA 80 CM DE MANGUERA ALTA PRESION Y ACOPLES, MANTENIMIENTO DE EQUIPO, SENSORES PRESOSTATOS ALTA Y BAJA, CARGA DE GAS COMPLETA, ACEITE COMPRESOR', '2020-11-09', '2021-01-28', '304931', NULL, '2021-01-23 00:00:00', '2020-07-07 00:33:09', '2021-01-29 01:32:09'),
(36, 39, '19', 'Programado', '6', '5', NULL, 'Cambio de pacha de fusible y corrección de cakentamiento del sistema electrico, 1 portafusible y fusible', '2021-01-12', '2021-02-08', '439008', NULL, '2021-03-28 00:00:00', '2020-07-07 00:36:59', '2021-02-09 01:02:18'),
(38, 21, '19', 'Programado', '5', '4', NULL, 'Mantenimiento equipo aire acondicionado, recarga', '2020-11-25', '2021-02-12', '0', NULL, '2021-02-08 00:00:00', '2020-07-07 00:40:10', '2021-02-13 01:50:46'),
(39, 21, '6', 'Programado', '8', '7', NULL, '1 Alineación buseta NPR-NKR', '2021-02-05', '2021-03-31', '0', NULL, '2021-06-05 00:00:00', '2020-07-07 00:42:20', '2021-03-31 19:49:20'),
(40, 25, '19', 'Programado', '5', '4', NULL, 'Soldadura tubo en bronce en el termo, mantenimiento termo, blower, 16 refrigerante', '2020-12-11', '2021-02-12', '230365', NULL, '2021-02-24 00:00:00', '2020-07-07 00:44:32', '2021-02-12 18:03:32'),
(41, 25, '6', 'Programado', '5', '4', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-06-17', '2020-09-22', '0', NULL, '2020-10-15 00:00:00', '2020-07-07 00:45:26', '2020-09-22 20:40:36'),
(46, 23, '6', 'Programado', '4', '3', NULL, '1 ALINEACIÓN Y 2 BALANCEOS POR CAMBIO DE DOS LLANTAS DELANTERAS', '2020-05-23', '2020-09-22', '0', NULL, '2020-09-20 00:00:00', '2020-07-07 00:54:43', '2020-09-22 20:58:32'),
(47, 23, '19', 'Programado', '5', '4', NULL, 'Mantenimiento preventivo, 4 libras de gas', '2021-01-15', '2021-02-14', '226414', NULL, '2021-03-31 00:00:00', '2020-07-07 00:57:53', '2021-02-14 05:08:04'),
(48, 32, '6', 'Programado', '3', '2', NULL, 'Alinación y balanceo', '2020-05-09', '2020-09-14', '0', NULL, '2020-09-06 00:00:00', '2020-07-07 00:59:30', '2020-09-14 19:22:10'),
(49, 32, '20', 'Programado', '5', '4', NULL, 'Evaporador original, aceite compresor, refrigerante, desmonte y montaje de tablero para cambio de compresor, filtro A/C cabina', '2020-10-31', '2021-02-13', '253809', NULL, '2021-04-29 00:00:00', '2020-07-07 01:00:41', '2021-02-13 05:20:39'),
(50, 37, '20', 'Programado', '4', '3', NULL, 'Mantenimiento preventivo y cambio de gas, 2 libras de gas', '2021-01-19', '2021-02-13', '0', NULL, '2021-07-18 00:00:00', '2020-07-07 01:01:55', '2021-02-14 01:45:05'),
(52, 33, '6', 'Programado', '3', '2', NULL, 'ALINEACIÓN. HALLAZGO: ESFERICAS O ROTULAS INFERIORES IZQUIERDAY DERECHA', '2020-05-21', '2020-09-23', '0', NULL, '2020-09-18 00:00:00', '2020-07-07 01:05:33', '2020-09-24 01:20:07'),
(54, 11, '19', 'Programado', '4', '3', NULL, '1 Blower y montaje del mismo, mantenimiento preventivo, recarga refrigerante', '2020-11-05', '2021-02-08', '285790', NULL, '2021-01-19 00:00:00', '2020-07-07 01:08:58', '2021-02-09 02:39:46'),
(55, 9, '6', 'Programado', '6', '5', NULL, 'ALINEACIÓN POR ROTACIÓN DE LLANTAS', '2020-09-09', '2020-09-22', '0', NULL, '2021-01-07 00:00:00', '2020-07-07 01:09:51', '2020-09-22 19:13:41'),
(56, 9, '19', 'Programado', '9', '8', NULL, 'Bajar compresor para reparación, empaquetadura compresor, recarga gas completa, aceite, mantenimiento de equipo', '2020-11-28', '2021-01-29', '0', NULL, '2021-02-11 00:00:00', '2020-07-07 01:10:50', '2021-01-29 19:19:09'),
(57, 34, '6', 'Programado', '3', '2', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-01-29', '2020-09-24', '0', NULL, '2020-05-28 00:00:00', '2020-07-07 01:12:03', '2020-09-24 21:40:04'),
(59, 31, '6', 'Programado', '4', '3', NULL, 'ALINEACIÓN - DIAGNOSTICO (DIAGNOSTICO: CAMBIAR TERMINALES AXIALES O COLOMBINAS DERECHA)', '2020-09-18', '2020-09-23', '0', NULL, '2021-01-16 00:00:00', '2020-07-07 01:14:12', '2020-09-24 02:03:36'),
(60, 31, '20', 'Programado', '3', '2', NULL, 'Desmonte de evaporizador para mantenimiento del aire acondicionado, 1 lb de gas', '2020-08-18', '2021-02-12', '0', NULL, '2021-02-14 00:00:00', '2020-07-07 01:15:33', '2021-02-12 20:38:00'),
(61, 13, '19', 'Programado', '6', '5', NULL, 'Mantenimiento preventivo, 3 recarga de gas', '2021-02-16', '2021-02-25', '0', NULL, '2021-05-02 00:00:00', '2020-07-07 02:48:24', '2021-02-26 00:14:33'),
(62, 12, '19', 'Programado', '6', '5', NULL, '1 Extractor ventilador, 3 correción de fuga, mantenimiento de termo', '2020-12-09', '2021-02-11', '215986', NULL, '2021-02-22 00:00:00', '2020-07-07 02:55:07', '2021-02-11 18:48:19'),
(66, 28, '20', 'Programado', '6', '5', NULL, 'Mantenimiento preventivo, cambio de filtro cabina y calibración de gas. compra 1 filtro de cabina referencia 3626, 1 libra de gas', '2021-03-05', '2021-03-31', '291249', NULL, '2021-09-01 00:00:00', '2020-07-16 17:20:35', '2021-04-01 03:34:26'),
(67, 28, '6', 'Programado', '5', '4', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-06-11', '2020-09-23', '0', NULL, '2020-10-09 00:00:00', '2020-07-16 17:23:57', '2020-09-24 01:52:43'),
(69, 29, '20', 'Programado', '3', '2', NULL, 'Mantenimiento general, 1Lb de gas', '2020-08-10', '2020-09-14', '0', NULL, '2021-02-06 00:00:00', '2020-07-16 17:43:04', '2020-09-14 18:49:15'),
(70, 30, '37', 'Programado', '3', '2', NULL, '4 LLANTAS 255/70R16 GOODYEAR, 4 MONTAJES, 4 BALANCEOS Y 1 ALINEACION', '2020-03-16', '2020-07-16', '0', '356659', NULL, '2020-07-16 17:58:13', '2020-07-16 18:02:11'),
(71, 30, '20', 'Programado', '4', '3', NULL, '1 Evaporador original, aceite compresor, refrigerante, desmontaje y montaje de tablero para cambio de evaporador, filtro a/c cabina', '2020-10-31', '2021-02-08', '0', NULL, '2021-04-29 00:00:00', '2020-07-16 18:03:06', '2021-02-09 04:22:47'),
(72, 44, '20', 'Programado', '4', '3', NULL, 'Mantenimiento al aire acondicionado, cambio de filtros de cabina y calibración de gas, 1 filtro , 1 lb de gas', '2020-10-08', '2021-02-24', '218812', NULL, '2021-04-06 00:00:00', '2020-07-16 19:13:05', '2021-02-25 03:37:00'),
(73, 44, '37', 'Programado', '2', '1', NULL, '4 LLANTAS 255/70R16 GOODYEAR, 4 BALANCEOS Y 4 MONTAJES', '2020-02-19', '2020-07-16', '218812', '323534', NULL, '2020-07-16 19:23:29', '2020-07-16 19:24:45'),
(74, 44, '6', 'Programado', '4', '3', NULL, 'ALINEACIÓN - DIAGNOSTICO ( CAMBIAR BUJES Y LEVAS DE TIJERAS INFERIOR DERECHA, TRAER EL VEHICULO CON EL AIRBAG DEL VOLANTE DESACTIVADO PARA PODER CENTRAR EL VOLANTE)', '2020-08-06', '2020-09-23', '218812', NULL, '2020-12-04 00:00:00', '2020-07-16 19:28:37', '2020-09-24 01:37:22'),
(75, 14, '19', 'Programado', '5', '4', NULL, 'Mantenimiento equipo aire acondicionado, recarga refrigerante', '2020-11-29', '2021-02-12', '215618', NULL, '2021-02-12 00:00:00', '2020-07-16 19:39:45', '2021-02-12 05:22:17'),
(76, 27, '19', 'Programado', '6', '5', NULL, 'Mantenimiento preventivo y calibración de gas, 3 libras de gas', '2021-01-09', '2021-02-14', '175389', NULL, '2021-03-25 00:00:00', '2020-07-16 20:01:23', '2021-02-14 05:01:43'),
(78, 22, '19', 'Programado', '4', '3', NULL, 'Mantenimiento de aire acondicionado, recarga Km: 243500. No se generó factura de ese mantenimiento el proveedor no lo cobró', '2020-11-05', '2021-02-12', '0', NULL, '2021-01-19 00:00:00', '2020-07-16 21:36:18', '2021-02-13 03:30:45'),
(79, 19, '19', 'Programado', '3', '2', NULL, 'Desmonte de villarec para mantenimiento de aire delantero y desmonte de aire trasero para mantenimiento, 1 lb de gas delantero, 1 lb de gas trasero', '2020-08-12', '2020-09-14', '0', NULL, '2020-10-26 00:00:00', '2020-07-17 02:37:56', '2020-09-14 21:34:42'),
(80, 18, '19', 'Programado', '5', '4', NULL, 'Mantenimiento general del aire acondicionado trasero y desmonte de villaret para mantenimiento general del aire delantero, 2 libras de gas, 1 válvula de presión del compresor', '2020-10-19', '2021-02-13', '0', NULL, '2021-01-02 00:00:00', '2020-07-17 02:39:51', '2021-02-14 03:04:09'),
(81, 39, '6', 'Programado', '3', '2', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-06-03', '2020-09-24', '0', NULL, '2020-10-01 00:00:00', '2020-09-13 02:48:09', '2020-09-25 01:57:12'),
(82, 39, '37', 'Programado', '2', '1', NULL, 'Cambio de dos llantas 215/75 R17.5 goodyear', '2020-05-12', '2020-09-14', '0', '449019', NULL, '2020-09-14 17:28:51', '2020-09-14 17:30:42'),
(83, 9, '37', 'Programado', '2', '1', NULL, 'Cambio de 2 llantas 9.5 R17.5 Goodyear', '2020-02-25', '2020-09-14', '0', '268155', NULL, '2020-09-14 18:29:09', '2020-09-14 18:30:32'),
(84, 32, '37', 'Programado', '2', '1', NULL, 'Cambio de 4 llantas 255/70 R16 Goodyear', '2020-05-09', '2020-09-14', '0', '252744', NULL, '2020-09-14 19:23:09', '2020-09-14 19:24:37'),
(85, 37, '5', 'Programado', '2', '1', NULL, '1 Bateria auto mac 980 amp ca 22°C', '2020-05-05', '2020-09-14', '0', '182545', NULL, '2020-09-14 19:28:22', '2020-09-14 19:51:20'),
(86, 37, '37', 'Programado', '2', '1', NULL, 'cambio de 4 llantas 255/70 R16', '2019-05-09', '2020-09-14', '0', '217864', NULL, '2020-09-14 19:53:44', '2020-09-14 19:54:50'),
(87, 55, '19', 'Programado', '4', '3', NULL, 'Demonte de villarec para mantenimiento preventivo, calibración de gas y recarga al aire delantero. Mantenimiento preventivo al aire trasero, calibración y recarga de gas. 4 libras de gas', '2021-03-04', '2021-03-31', '173480', NULL, '2021-05-18 00:00:00', '2020-09-14 20:14:30', '2021-04-01 03:37:15'),
(88, 21, '37', 'Programado', '2', '1', NULL, 'Cambio de 6 llantas 225/75 R16 Goodyear', '2020-06-12', '2020-09-14', '0', '293926', NULL, '2020-09-14 20:33:32', '2020-09-14 20:35:49'),
(89, 20, '37', 'Programado', '2', '1', NULL, 'Cambio de 4 llantas 205/75 R16 Goodyear', '2020-06-12', '2020-09-14', '0', '179932', NULL, '2020-09-14 20:51:06', '2020-09-14 20:54:20'),
(90, 19, '37', 'Programado', '2', '1', NULL, 'Compra de 6 llantas 195/75 R16 carga marathon 2', '2020-06-18', '2020-09-14', '0', '152647', NULL, '2020-09-14 21:36:41', '2020-09-14 21:38:31'),
(91, 5, '5', 'Programado', '2', '1', NULL, 'Cambio de 2 baterias auto mac', '2020-05-05', '2020-09-14', '205020', '163318', NULL, '2020-09-14 22:02:20', '2020-09-14 22:03:24'),
(92, 5, '19', 'Programado', '6', '5', NULL, '1 Extractor, correción de fuga en el techo cambio de acople al igual que la entrada al compresor, 1 aceite, 8 refrigerante 134A', '2021-02-16', '2021-02-25', '199883', NULL, '2021-05-02 00:00:00', '2020-09-14 22:07:00', '2021-02-25 22:29:10'),
(93, 34, '5', 'Programado', '2', '1', NULL, '1 Bateria auto mac silver', '2020-05-11', '2020-09-14', '0', '10274', NULL, '2020-09-15 01:59:46', '2020-09-15 02:12:20'),
(94, 35, '5', 'Programado', '2', '1', NULL, '1 Bateria Auto Mac Gold', '2020-07-02', '2020-09-14', '0', '55391', NULL, '2020-09-15 02:31:02', '2020-09-15 02:32:15'),
(96, 15, '6', 'Programado', '4', '3', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS \r\nHallazgos: Cambiar pines o esplinderes de tren delantero, cambiar rodamiento delantero derecho y engrasar el izquierdo', '2020-08-26', '2020-09-22', '304931', NULL, '2020-12-24 00:00:00', '2020-09-22 19:18:18', '2020-09-22 19:27:12'),
(99, 37, '6', 'Programado', '7', '6', NULL, 'ALINEACIÓN', '2020-09-15', '2020-09-22', '0', NULL, '2021-01-13 00:00:00', '2020-09-22 19:56:31', '2020-09-22 22:21:03'),
(100, 24, '6', 'Programado', '4', '3', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-05-23', '2020-09-22', '0', NULL, '2020-09-20 00:00:00', '2020-09-22 20:43:22', '2020-09-22 20:45:42'),
(105, 26, '6', 'Programado', '7', '6', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-09-09', '2020-09-22', '0', NULL, '2021-01-07 00:00:00', '2020-09-22 21:40:13', '2020-09-22 22:01:26'),
(106, 11, '6', 'Programado', '7', '6', NULL, 'ALINEACIÓN DEBIDO A QUE EL VEHICULO PRESENTABA INCONSISTENCIAS. Hallazgos: Ajustar o cambiar pin o esplinder izquierdo tren delantero, arreglar o cambiar terminal de barra corta de la dirección lado atras o codo', '2020-09-19', '2020-09-22', '0', NULL, '2021-01-17 00:00:00', '2020-09-23 02:34:42', '2020-09-23 03:27:35'),
(108, 14, '6', 'Programado', '6', '5', NULL, 'BALANCEO', '2020-09-01', '2020-09-23', '0', NULL, '2020-12-30 00:00:00', '2020-09-23 03:38:36', '2020-09-24 02:54:59'),
(109, 5, '6', 'Programado', '9', '8', NULL, 'ALINEACIÓN POR CIERRE DE HALLAZGOS ANTERIORES', '2020-09-21', '2020-09-23', '205020', NULL, '2021-01-19 00:00:00', '2020-09-23 03:47:45', '2020-09-24 01:14:20'),
(110, 18, '6', 'Programado', '5', '4', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS Y CIERRE DE HALLAZGOS ANTERIORES', '2020-09-02', '2020-09-23', '0', NULL, '2020-12-31 00:00:00', '2020-09-23 21:53:49', '2020-09-23 22:03:53'),
(111, 29, '6', 'Programado', '3', '2', NULL, 'ALINEACIÓN', '2020-04-22', '2020-09-23', '0', NULL, '2020-08-20 00:00:00', '2020-09-24 01:42:38', '2020-09-24 01:44:30'),
(112, 12, '6', 'Programado', '8', '7', NULL, 'ALINEACION POR GARANTIA', '2020-08-18', '2020-09-23', '0', NULL, '2020-12-16 00:00:00', '2020-09-24 03:09:50', '2020-09-24 03:36:13'),
(115, 16, '6', 'Programado', '4', '3', NULL, 'ALINEACION POR GARANTIA Y CIERRE DE HALLAZGOS ANTERIORES', '2020-04-24', '2020-09-24', '0', NULL, '2020-08-22 00:00:00', '2020-09-24 19:13:56', '2020-09-24 19:16:40'),
(116, 17, '6', 'Programado', '5', '4', NULL, 'ALINEACIÓN Y BALANCEO POR CAMBIO DE 6 LLANTAS', '2020-09-09', '2020-09-24', '0', NULL, '2021-01-07 00:00:00', '2020-09-24 22:22:55', '2020-09-24 22:29:47'),
(117, 13, '6', 'Programado', '5', '4', NULL, 'ALIENACIÓN POR CAMBIO DE 2 LLANTAS DELANTERAS', '2020-09-09', '2020-09-24', '0', NULL, '2021-01-07 00:00:00', '2020-09-25 00:40:43', '2020-09-25 00:48:22'),
(118, 30, '6', 'Programado', '3', '2', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-04-27', '2020-09-24', '0', NULL, '2020-08-25 00:00:00', '2020-09-25 00:54:21', '2020-09-25 00:58:06'),
(119, 35, '6', 'Programado', '6', '5', NULL, 'ALINEACIÓN Y BALANCEO', '2020-09-19', '2020-09-24', '0', NULL, '2021-01-17 00:00:00', '2020-09-25 01:06:25', '2020-09-25 01:39:28'),
(120, 36, '6', 'Programado', '6', '5', NULL, 'ALINEACIÓN POR GARANTIA DE 30 DIAS', '2020-08-10', '2020-09-24', '0', NULL, '2020-12-08 00:00:00', '2020-09-25 01:42:09', '2020-09-25 01:48:31'),
(122, 15, '16', 'Programado', '2', '1', NULL, 'MANTENIMIENTO MOTORES LIMPIA PARABRISAS', '2020-10-06', '2021-01-28', '304931', '10000', NULL, '2021-01-29 00:50:54', '2021-01-29 00:53:59'),
(124, 15, '30', 'Programado', '2', '1', NULL, '1 LIQUIDO DE FRENO AT ALEMAN 1/4', '2020-10-08', '2021-01-28', '304931', '40', NULL, '2021-01-29 00:55:29', '2021-01-29 00:56:44'),
(126, 15, '9', 'Programado', '2', '1', NULL, 'Kit de embrague prensa disco balinera', '2020-11-17', '2021-01-28', '304931', '10000', NULL, '2021-01-29 01:48:13', '2021-01-29 01:49:27'),
(127, 33, '9', 'Programado', '2', '1', NULL, '1 Kit de embrague NPR', '2020-09-10', '2021-01-28', '0', '10000', NULL, '2021-01-29 03:56:53', '2021-01-29 03:57:58'),
(128, 39, '5', 'Programado', '2', '1', NULL, '3 Bateria Auto Mac 31H1200', '2019-06-07', '2021-02-08', '439008', '10000', NULL, '2021-02-09 00:33:40', '2021-02-09 00:40:39'),
(129, 39, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n2 FILTRO DE TRAMPA\r\n10/4 ACEITE DE MOTOR', '2021-02-01', '2021-02-08', '439008', '447975', NULL, '2021-02-09 00:47:42', '2021-02-09 00:54:10'),
(130, 15, '5', 'Programado', '2', '1', NULL, '2 Bateria Auto Mac 31T1250-31T1100', '2020-11-10', '2021-02-08', '304931', '10000', NULL, '2021-02-09 01:18:44', '2021-02-09 01:20:59'),
(131, 15, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE\r\n2 FILTRO AIRE DE MOTOR\r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA\r\n10 1/4 ACEITE DE MOTOR', '2020-10-20', '2021-02-08', '304931', '333065', NULL, '2021-02-09 01:22:00', '2021-02-09 01:26:02'),
(132, 16, '5', 'Programado', '3', '2', NULL, '2 Bateria 30H1200 Mac de Borne', '2021-02-13', '2021-03-30', '263141', '10000', NULL, '2021-02-09 01:29:39', '2021-03-30 18:41:44'),
(133, 16, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 2 FILTROS DE ACPM', '2020-12-17', '2021-02-08', '263141', '267451', NULL, '2021-02-09 01:35:25', '2021-02-09 01:41:14'),
(134, 9, '1', 'Programado', '6', '5', NULL, '1 FILTRO DE ACEITE DE \r\n2 FILTROS ACPM\r\n2 FILTROS AIRE DE MOTOR', '2020-11-17', '2021-02-08', '275425', '273894', NULL, '2021-02-09 01:48:38', '2021-02-09 02:10:21'),
(135, 11, '5', 'Programado', '2', '1', NULL, '2 Bateria Auto Mac 271000', '2019-10-17', '2021-02-08', '285790', '218464', NULL, '2021-02-09 02:13:15', '2021-02-09 02:19:56'),
(136, 11, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE', '2020-11-26', '2021-02-08', '285790', '285056', NULL, '2021-02-09 02:21:28', '2021-02-09 02:30:36'),
(137, 28, '5', 'Programado', '2', '1', NULL, '1 Bateria Auto Mac 980 amp CA 22°C', '2019-10-23', '2021-02-08', '291249', '10000', NULL, '2021-02-09 02:41:46', '2021-02-09 02:45:05'),
(138, 28, '1', 'Programado', '7', '6', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE \r\n1 FILTRO DE A/C\r\n1 FILTRO DE ACPM', '2020-12-26', '2021-02-08', '291249', '294812', NULL, '2021-02-09 02:46:24', '2021-02-09 02:54:09'),
(139, 29, '5', 'Programado', '3', '2', NULL, 'Se le instalaron bateria de segunda suministrada por la TAR-307 en buen estado', '2021-02-08', '2021-02-08', '0', '10000', NULL, '2021-02-09 03:50:14', '2021-02-09 03:56:12'),
(141, 29, '1', 'Programado', '4', '3', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE AIRE ACONDICIONADO \r\n1 FILTRO DE MOTOR\r\n7/4 DE ACEITE DE MOTOR\r\nLos filtros eran de la TAQ-524', '2021-01-09', '2021-02-08', '0', '345782', NULL, '2021-02-09 04:07:08', '2021-02-09 04:11:03'),
(142, 30, '1', 'Programado', '5', '4', NULL, 'FILTRO DE ACEITE,\r\n FILTRO DE AIRE DE MOTOR\r\nFILTRO A/C\r\n1 FILTRO DE TRAMPA \r\n 7 1/4 DE ACEITE DE MOTOR', '2020-12-30', '2021-02-09', '0', '338380', NULL, '2021-02-10 00:25:30', '2021-02-10 00:34:17'),
(143, 44, '5', 'Programado', '2', '1', NULL, '1 Bateria Auto Mac 980 amp CA 22°C', '2019-11-05', '2021-02-09', '218812', '272648', NULL, '2021-02-10 00:37:59', '2021-02-10 00:39:36'),
(144, 44, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE \r\n1 FILTRO DE A/C\r\n1 FILTRO DE ACPM', '2020-11-18', '2021-02-09', '218812', '315258', NULL, '2021-02-10 00:41:43', '2021-02-10 00:46:37'),
(145, 33, '5', 'Programado', '3', '2', NULL, '1 FILTRO ACEITE\r\n1 FILTRO ACPM\r\n1 FILTRO AIRE\r\n7 1/4 DE ACEITE', '2020-09-16', '2021-02-09', '0', '271596', NULL, '2021-02-10 01:17:12', '2021-02-10 01:22:16'),
(146, 33, '1', 'Programado', '2', '1', NULL, 'FILTRO DE ACEITE\r\nFILTRO DE AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO A/C\r\n7 1/4 DE ACEITE DE MOTOR', '2020-02-06', '2021-02-09', '0', '262599', NULL, '2021-02-10 01:19:49', '2021-02-10 01:20:50'),
(147, 33, '20', 'Programado', '2', '1', NULL, 'Servicio de desmontaje y montaje de compresor para cambio de embriague, 1 aceite compresor, 2 refrigerante 134A', '2020-12-12', '2021-02-09', '0', NULL, '2021-06-10 00:00:00', '2021-02-10 01:23:44', '2021-02-10 01:25:24'),
(148, 5, '1', 'Programado', '6', '5', NULL, 'FILTRO DE ACEITE\r\n 2 FILTRO AIRE DE MOTOR\r\nFILTRO DE MOTOR\r\nFILTRO DE TRAMPA\r\n10/4 DE ACEITE DE MOTOR', '2021-01-26', '2021-03-30', '199883', '10000', NULL, '2021-02-11 18:11:19', '2021-03-30 22:05:23'),
(149, 12, '1', 'Programado', '6', '5', NULL, '1 FILTRO DE ACEITE, 2 FILTROS DE MOTOR, 1 FILTROS DE MOTOR, 1 FILTRO DE TRAMPA \r\n10/4 ACEITE', '2021-01-20', '2021-02-11', '215986', '223211', NULL, '2021-02-11 19:23:45', '2021-02-11 19:31:01'),
(150, 13, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n10 1/4 DE ACEITE DE MOTOR', '2021-01-16', '2021-02-11', '0', '235625', NULL, '2021-02-12 04:35:20', '2021-02-12 04:43:43'),
(151, 13, '5', 'Programado', '2', '1', NULL, '2 BATERIAS AUTO MAC 1050 AMP CA 22°C', '2021-02-11', '2021-02-11', '0', '576105', NULL, '2021-02-12 04:52:50', '2021-02-12 04:54:48'),
(152, 14, '1', 'Programado', '4', '3', NULL, 'FILTRO DE ACEITE\r\n FILTROS DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE TRAMPA\r\n11 1/4 DE ACEITE DE MOTOR', '2020-10-29', '2021-02-12', '215618', '218590', NULL, '2021-02-12 05:23:25', '2021-02-12 05:28:53'),
(153, 14, '5', 'Programado', '2', '1', NULL, '2 Bateria Auto Mac 1050 AMP CA 22°C', '2019-11-20', '2021-02-12', '215618', '10000', NULL, '2021-02-12 05:31:51', '2021-02-12 05:32:47'),
(154, 23, '5', 'Programado', '2', '1', NULL, '2 Bateria Auto Mac', '2020-08-04', '2021-02-12', '226414', '10000', NULL, '2021-02-12 05:39:32', '2021-02-12 06:22:04'),
(155, 23, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE ACEITE \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE TRAMPA  \r\n9 1/4 ACEITE', '2020-12-01', '2021-02-12', '226414', '227452', NULL, '2021-02-12 06:26:00', '2021-02-12 06:35:26'),
(156, 24, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE 2 FILTROS DE ACPM 1 FILTRO DE AIRE\r\n8/4 ACEITE', '2020-11-07', '2021-02-12', '0', '220004', NULL, '2021-02-12 06:45:45', '2021-02-12 06:50:41'),
(158, 25, '5', 'Programado', '2', '1', NULL, '2 BATERIA AUTO MAC, GARANTIA 12 MESES', '2020-10-01', '2021-02-12', '230365', '220437', NULL, '2021-02-12 17:22:05', '2021-02-12 17:23:45'),
(159, 25, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE\r\n1, FILTRO DE AIRE DE ACONDICIONADO \r\n2 FILTRO DE ACPM\r\n9 1/4 DE ACEITE DE MOTOR', '2020-11-12', '2021-02-12', '230365', '230323', NULL, '2021-02-12 17:25:07', '2021-02-12 17:56:36'),
(160, 24, '19', 'Programado', '4', '3', NULL, 'Mantenimiento preventivo, corrección de fuga, manguera B/32 entrada, Compresor acople, 1 aceite compresor, 8 refrigerantes 134A', '2021-02-16', '2021-02-25', '216802', NULL, '2021-05-02 00:00:00', '2021-02-12 18:09:23', '2021-02-25 22:26:44'),
(161, 26, '5', 'Programado', '3', '2', NULL, '2 Bateria Auto Mac 15 meses de garantia', '2020-12-04', '2021-02-12', '210162', '10000', NULL, '2021-02-12 18:20:00', '2021-02-12 19:16:49'),
(162, 26, '1', 'Programado', '7', '6', NULL, '1 FILTRO DE ACEITE, 1 FILTROS DE AIRE DE MOTOR, 2 FILTRO DE APM', '2020-12-30', '2021-02-12', '210162', '214714', NULL, '2021-02-12 19:18:37', '2021-02-12 19:42:24'),
(163, 26, '19', 'Programado', '5', '4', NULL, 'Mantenimiento equipo aire acondicionado', '2020-11-27', '2021-02-12', '210162', NULL, '2021-02-10 00:00:00', '2021-02-12 19:46:13', '2021-02-12 19:57:57'),
(164, 31, '1', 'Programado', '8', '7', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE ACPM\r\n1 FILTRO A/C', '2020-12-12', '2021-02-12', '0', '223430', NULL, '2021-02-12 20:21:17', '2021-02-12 20:33:18'),
(165, 31, '5', 'Programado', '3', '2', NULL, '1 Bateria Auto Mac por garantia de la venta 17/06/2019', '2020-07-13', '2021-02-12', '0', '196720', NULL, '2021-02-12 20:59:36', '2021-02-12 21:27:35'),
(166, 27, '1', 'Programado', '6', '5', NULL, '1 FILTRO DE ACEITE\r\n2 FILTROS DE AIRE DE MOTOR\r\n2 FILTRO DE ACPM', '2020-12-28', '2021-02-12', '175389', '180195', NULL, '2021-02-12 21:37:53', '2021-02-12 21:51:44'),
(167, 27, '5', 'Programado', '2', '1', NULL, '2 Baterias 31H instaló saulo. Factura original(Compra de 4 baterias 31H)', '2019-09-04', '2021-02-12', '175389', '10000', NULL, '2021-02-12 21:52:11', '2021-02-12 22:02:48'),
(168, 21, '1', 'Programado', '4', '3', NULL, '1 FILTRO DE ACEITE \r\n1 FILTRO DE MOTOR\r\n1 FILTRO DE AIRE DE MOTOR \r\n2 FILTRODE TRAMPA \r\n9/4 ACEITE', '2020-12-03', '2021-02-12', '0', '281463', NULL, '2021-02-13 01:51:24', '2021-02-13 01:56:22'),
(169, 21, '5', 'Programado', '2', '1', NULL, '2 Baterias 30H1200 MAC de borne', '2021-02-05', '2021-02-12', '0', '10000', NULL, '2021-02-13 02:05:26', '2021-02-13 02:12:08'),
(171, 22, '1', 'Programado', '4', '3', NULL, '1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTROS DE  A/C\r\n1 FILTRO DE ACEITE\r\n10 1/4 ACEITE', '2020-10-31', '2021-02-12', '0', '254872', NULL, '2021-02-13 02:16:09', '2021-02-13 02:35:02'),
(172, 22, '5', 'Programado', '3', '2', NULL, '2 Bateria 341100 FAICO', '2021-02-01', '2021-02-12', '0', '10000', NULL, '2021-02-13 03:31:35', '2021-02-13 03:37:16'),
(173, 20, '1', 'Programado', '4', '3', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO AIRE MOTOR\r\n1 FILTRO MOTOR\r\n1  FILTRO A/C\r\n6 1/4 ACEITE MOTOR', '2020-07-29', '2021-02-12', '0', '149105', NULL, '2021-02-13 03:38:56', '2021-02-13 03:42:26'),
(174, 19, '1', 'Programado', '4', '3', NULL, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE, 1 FILTRO DE ACPM\r\n11/4 ACEITE', '2020-12-05', '2021-02-12', '133695', '137585', NULL, '2021-02-13 04:46:04', '2021-02-13 04:49:16'),
(175, 19, '5', 'Programado', '3', '2', NULL, '1 Bateria 30H EU', '2020-12-24', '2021-02-12', '133695', '10000', NULL, '2021-02-13 04:50:10', '2021-02-13 04:57:33'),
(176, 54, '1', 'Programado', '3', '2', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n2 FILTRO DE ACPM', '2020-12-22', '2021-02-13', '233115', '255340', NULL, '2021-02-13 05:06:58', '2021-02-13 05:08:57'),
(177, 54, '38', 'Programado', '1', '0', NULL, NULL, '2019-12-04', '2021-02-13', '233115', NULL, '2021-05-27 00:00:00', '2021-02-13 05:09:27', '2021-02-13 05:09:27'),
(178, 32, '1', 'Programado', '10', '9', NULL, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE A/C\r\n7 1/4 DE ACEITE', '2021-01-21', '2021-02-13', '253809', '260904', NULL, '2021-02-13 05:22:08', '2021-02-13 06:02:05'),
(179, 32, '38', 'Programado', '2', '1', NULL, '1 Bateria Auto Mac 980 amp CA 22°C', '2019-11-08', '2021-02-13', '253809', NULL, '2021-05-01 00:00:00', '2021-02-13 06:06:12', '2021-02-14 01:33:56'),
(181, 37, '1', 'Programado', '7', '6', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTRO DE MOTOR\r\n1 FILTRO A/C\r\n7/4 DE ACEITE DE MOTOR', '2021-01-15', '2021-02-13', '0', '208540', NULL, '2021-02-14 02:04:43', '2021-02-14 02:10:26'),
(182, 55, '1', 'Programado', '3', '2', NULL, '1 FILTRO DE ACEITE \r\n1 FILTRO ACPM - TRAMPA \r\n1 FILTRO TAMIX\r\n1 FILTRO DE AIRE DE MOTOR', '2020-12-30', '2021-02-13', '173480', '178979', NULL, '2021-02-14 02:15:42', '2021-02-14 02:17:51'),
(184, 17, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE \r\n2 FILTRO AIRE ACONDICIONADO', '2020-09-10', '2021-02-13', '0', '290110', NULL, '2021-02-14 02:25:58', '2021-02-14 02:30:32'),
(185, 17, '38', 'Programado', '2', '1', NULL, '1 BATERIA AUTO MAC 12V', '2019-11-07', '2021-02-13', '0', NULL, '2021-04-30 00:00:00', '2021-02-14 02:38:04', '2021-02-14 02:39:48'),
(187, 18, '38', 'Programado', '5', '4', NULL, '1 Bateria Auto Mac', '2020-06-16', '2021-02-13', '0', NULL, '2021-12-08 00:00:00', '2021-02-14 02:55:59', '2021-02-14 02:59:50'),
(188, 18, '1', 'Programado', '6', '5', NULL, '1 FILTRO ACEITE \r\n1 FILTRO ACPM\r\n1 TAMIX\r\n1 FILTRO AIRE', '2020-12-28', '2021-02-13', '0', '287616', NULL, '2021-02-14 03:15:01', '2021-02-14 03:21:43'),
(189, 34, '1', 'Programado', '8', '7', NULL, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE DE MOTOR \r\n1 FILTRO DE MOTOR \r\n1 FILTRO DE AIRE ACONDICIONADO \r\n8/4 ACEITE', '2021-01-09', '2021-02-13', '0', '118051', NULL, '2021-02-14 03:24:19', '2021-02-14 03:29:35'),
(190, 35, '1', 'Programado', '7', '6', NULL, '1 FILTRO DE ACEITE, 1 FILTRO DE MOTOR, 1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE AIRE DE MOTOR \r\n8/4 ACEITE', '2021-01-20', '2021-02-13', '0', '81605', NULL, '2021-02-14 03:32:45', '2021-02-14 03:42:07'),
(191, 36, '1', 'Programado', '5', '4', NULL, '1 FILTRO DE ACEITE\r\n1 FILTRO DE AIRE DE MOTOR\r\n1 FILTROS DE A/C\r\n11 1/4 DE ACEITE', '2020-10-26', '2021-02-13', '66879', '66556', NULL, '2021-02-14 03:47:10', '2021-02-14 03:50:40'),
(192, 43, '1', 'Programado', '2', '1', NULL, '1 FILTRO DE ACEITE \r\n1 FILTRO DE AIRE \r\n1 FILTRO DE a/c\r\n1 FILTRO DE ACPM', '2020-11-27', '2021-02-13', '16953', '26953', NULL, '2021-02-14 03:56:13', '2021-02-14 03:56:56'),
(193, 42, '1', 'Programado', '4', '3', NULL, '1 FILTRO DE ACEITE, 1 FILTRO DE AIRE,  1 FILTRO DE AIRE ACONDICIONADO, 1 FILTRO DE MOTOR\r\n8/4 ACEITE', '2020-08-31', '2021-02-13', '35345', '37339', NULL, '2021-02-14 03:57:27', '2021-02-14 03:59:58'),
(194, 47, '1', 'Programado', '4', '3', NULL, '1 FILTRO DE ACEITE  \r\n10/4 ACEITE DE MOTOR \r\nComprado por RIO GRANDE pero nunca se cobró', '2020-12-03', '2021-02-13', '17722', '48916', NULL, '2021-02-14 04:14:07', '2021-02-14 04:21:50'),
(195, 47, '19', 'Programado', '2', '1', NULL, 'Mantenimiento preventivo y calibración de gas, 2 libras de gas', '2021-01-16', '2021-02-13', '17722', NULL, '2021-04-01 00:00:00', '2021-02-14 04:24:52', '2021-02-14 04:28:33'),
(196, 52, '6', 'Programado', '2', '1', NULL, 'Alineación y balanceo', '2021-02-22', '2021-02-24', '', NULL, '2021-06-22 00:00:00', '2021-02-25 01:54:16', '2021-02-25 01:57:59'),
(197, 49, '19', 'Programado', '2', '1', NULL, 'Mantenimiento preventivo filtro cabina', '2021-02-16', '2021-02-25', '', NULL, '2021-05-02 00:00:00', '2021-02-26 00:04:56', '2021-02-26 00:05:58'),
(198, 30, '38', 'Programado', '2', '1', NULL, '1 Bateria 27/1000 VELKO', '2021-02-01', '2021-03-30', '0', NULL, '2022-07-26 00:00:00', '2021-03-30 18:44:24', '2021-03-30 18:45:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacions`
--

CREATE TABLE `relacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehiculo_id` int(10) UNSIGNED NOT NULL,
  `autoparte_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `relacions`
--

INSERT INTO `relacions` (`id`, `cantidad`, `vehiculo_id`, `autoparte_id`, `created_at`, `updated_at`) VALUES
(2, '1', 19, 59, '2020-06-20 00:18:02', '2020-06-20 00:18:02'),
(3, '1', 22, 49, '2020-06-20 03:02:23', '2020-06-20 03:02:23'),
(4, '1', 24, 42, '2020-07-06 18:43:13', '2020-07-06 18:43:13'),
(5, '1', 25, 20, '2020-07-06 19:04:27', '2020-07-06 19:04:27'),
(6, '1', 23, 38, '2020-07-06 19:16:17', '2020-07-06 19:16:17'),
(7, '1', 12, 47, '2020-07-07 03:31:50', '2020-07-07 03:31:50'),
(8, '1', 12, 39, '2020-07-07 03:32:09', '2020-07-07 03:32:09'),
(9, '1', 12, 39, '2020-07-07 03:34:35', '2020-07-07 03:34:35'),
(10, '1', 12, 47, '2020-07-07 03:34:51', '2020-07-07 03:34:51'),
(11, '1', 5, 39, '2020-07-07 03:48:36', '2020-07-07 03:48:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_date` timestamp NULL DEFAULT NULL,
  `hour` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `approved_date` timestamp NULL DEFAULT NULL,
  `costo` varchar(20) DEFAULT NULL,
  `conductor_id` varchar(50) DEFAULT NULL,
  `vehiculo_id` varchar(50) DEFAULT NULL,
  `empresa_id` varchar(50) DEFAULT NULL,
  `punto_inicio` varchar(50) DEFAULT NULL,
  `punto_fin` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `observaciones` text,
  `observaciones_conductor` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `updated_at`, `created_at`, `created_date`, `hour`, `date`, `approved_date`, `costo`, `conductor_id`, `vehiculo_id`, `empresa_id`, `punto_inicio`, `punto_fin`, `estado`, `observaciones`, `observaciones_conductor`) VALUES
(54, '2021-07-19 15:08:39', '2021-07-19 17:56:45', '2021-07-19 18:20:24', '09:56', '2021-07-14 05:00:00', NULL, '800000', '17', '26', '1234567893', 'Barrio la floresta', 'Puerta del 25', 'Servicio realizado', 'qwr', 'qweqwer'),
(55, '2021-07-23 06:23:03', '2021-07-22 19:42:03', '2021-07-22 19:42:03', '11:59', '2021-07-21 05:00:00', NULL, '60000', '17', '20', '1234567893', 'Primero de mayo', 'puerta del 25', 'Servicio realizado', 'fhjghj', 'dsqtdatydf'),
(56, '2021-07-22 21:11:17', '2021-07-22 20:42:02', '2021-07-22 20:42:02', '13:00', '2021-07-22 05:00:00', NULL, '60000', '17', 'Seleccione', '1234567893', '-', 'Puerta norte Ecopetrol', 'Servicio realizado', NULL, 'Hice el servicio, tal persona no pude recogerla porque no fue a trabajar.'),
(57, '2021-07-23 06:26:54', '2021-07-23 06:26:54', '2021-07-23 06:26:54', '22:30', '2021-07-23 05:00:00', NULL, NULL, NULL, NULL, '1234567893', 'Barrio la floresta', 'Puerta del 25', 'Solicitado por el cliente', 'qwertyu', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_servicio` enum('Publico','Particular') COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('Activo','Inactivo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_vehiculo` enum('Camioneta','Buseta','Bus','Microbus','Carrotanque','Maquinaria amarilla') COLLATE utf8mb4_unicode_ci NOT NULL,
  `placa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cilindraje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacidad_pasajeros` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `capacidad_litros` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `capacidad_toneladas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `tipo_combustible` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_licencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_licencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_tarjeta_operaciones` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vigencia_tarjeta_operaciones` date DEFAULT NULL,
  `numero_tecnomecanica` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vigencia_tecnomecanica` date DEFAULT NULL,
  `numero_soat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vigencia_soat` date DEFAULT NULL,
  `aseguradora_poliza_tr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_poliza_tr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vigencia_poliza_tr` date DEFAULT NULL,
  `aseguradora_poliza_ct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_poliza_ct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vigencia_poliza_ct` date DEFAULT NULL,
  `aseguradora_poliza_ex_ct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_poliza_ex_ct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vigencia_poliza_ex_ct` date DEFAULT NULL,
  `fecha_ingreso_contrato` date DEFAULT NULL,
  `gps` enum('Si','No') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kit` enum('Si','No','Incompleto') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `botiquin` enum('Si','No','Incompleto') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recomendacion` longtext COLLATE utf8mb4_unicode_ci,
  `km_actual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locacion_id` int(10) UNSIGNED DEFAULT NULL,
  `propietario_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `tipo_servicio`, `estado`, `tipo_vehiculo`, `placa`, `marca`, `modelo`, `cilindraje`, `capacidad_pasajeros`, `capacidad_litros`, `capacidad_toneladas`, `tipo_combustible`, `color`, `serie`, `numero_licencia`, `fecha_licencia`, `numero_tarjeta_operaciones`, `vigencia_tarjeta_operaciones`, `numero_tecnomecanica`, `vigencia_tecnomecanica`, `numero_soat`, `vigencia_soat`, `aseguradora_poliza_tr`, `numero_poliza_tr`, `vigencia_poliza_tr`, `aseguradora_poliza_ct`, `numero_poliza_ct`, `vigencia_poliza_ct`, `aseguradora_poliza_ex_ct`, `numero_poliza_ex_ct`, `vigencia_poliza_ex_ct`, `fecha_ingreso_contrato`, `gps`, `kit`, `botiquin`, `recomendacion`, `km_actual`, `locacion_id`, `propietario_id`, `created_at`, `updated_at`) VALUES
(5, 'Publico', 'Activo', 'Bus', 'TAR-383', 'HINO', '2017', '5123', '44', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', 'J05ETY11931', NULL, NULL, '196248', '2022-04-18', '47779159', '2021-06-03', '24716644', '2021-06-15', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '199.883', NULL, 6, '2020-01-15 00:42:08', '2021-02-08 22:23:54'),
(9, 'Publico', 'Activo', 'Bus', 'TAQ467', 'HINO', '2013', '5123', '35', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3FC9JKSDXX10879', NULL, NULL, '196234', '2022-04-18', '47779252', '2021-06-05', '24608725', '2021-05-26', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '275.425', NULL, 6, '2020-02-05 20:36:46', '2021-02-08 22:23:55'),
(11, 'Publico', 'Activo', 'Bus', 'TAQ468', 'HINO', '2013', '5123', '35', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3FC9JKSDXX10878', NULL, NULL, '196235', '2022-04-18', '48207381', '2021-03-20', '24608765', '2021-05-26', NULL, NULL, NULL, 'SURA', '05031101000002', '2021-01-13', 'SURA', '05030101000002', '2021-01-13', NULL, 'Si', NULL, 'Si', NULL, '285.790', NULL, 6, '2020-02-05 22:37:41', '2021-02-08 22:23:55'),
(12, 'Publico', 'Activo', 'Bus', 'TAR-384', 'HINO', '2017', '5123', '44', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3FC9JLTHXX11170', NULL, NULL, '196249', '2022-04-18', '47779259', '2021-06-06', '24716653', '2021-06-15', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '215.986', NULL, 6, '2020-02-05 23:16:04', '2021-02-09 00:13:32'),
(13, 'Publico', 'Activo', 'Bus', 'TAR-385', 'HINO', '2017', '5123', '44', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3FC9JLTHXX11168', NULL, NULL, '196250', '2022-04-18', '47779352', '2021-06-08', '24716692', '2021-06-15', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-05 23:19:49', '2021-02-02 22:29:16'),
(14, 'Publico', 'Activo', 'Bus', 'TAR-386', 'HINO', '2017', '5123', '44', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3FC9JLTHXX11171', NULL, NULL, '196251', '2022-04-18', '47779616', '2021-06-16', '24716740', '2021-06-15', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '215.618', NULL, 6, '2020-02-05 23:28:22', '2021-02-11 03:40:00'),
(15, 'Publico', 'Activo', 'Bus', 'SOI-490', 'HINO', '2011', '5307', '36', NULL, NULL, 'Diesel', 'VERDE BLANCO', 'JHDFC4JKUBXX12368', NULL, NULL, '98786', '2020-04-14', '141708517', '2020-05-30', '22993192', '2020-07-15', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '5031101000003', '2022-01-13', 'SEGURO DEL ESTADO S.A', '5030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '304.931', NULL, 6, '2020-02-05 23:33:01', '2021-01-29 03:28:34'),
(16, 'Publico', 'Activo', 'Bus', 'TRH-777', 'MERCEDES BENZ', '2011', '4249', '33', NULL, NULL, 'Diesel', 'BLANCO', '9BM688277BB719307', NULL, NULL, '196263', '2022-04-18', '47780101', '2021-06-30', '24526747', '2021-05-11', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '263.141', NULL, 6, '2020-02-06 00:04:52', '2021-02-08 22:23:55'),
(17, 'Publico', 'Activo', 'Microbus', 'TAR-138', 'MERCEDES BENZ', '2015', '2143', '19', NULL, NULL, 'Diesel', 'BLANCO ARTICO', '8AC906657FE098668', NULL, NULL, '196242', '2022-04-18', '150345877', '2021-12-02', '25797462', '2021-12-03', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', 'CUENTA CON CÁMARA DE ALTA DEFINICION', '0', NULL, 6, '2020-02-06 00:15:00', '2021-02-01 22:21:04'),
(18, 'Publico', 'Activo', 'Microbus', 'TAR-154', 'MERCEDES BENZ', '2015', '2143', '19', NULL, NULL, 'Diesel', 'BLANCO ARTICO', '8AC906657FE098669', NULL, NULL, '196243', '2022-04-18', '150390396', '2021-12-04', '25849219', '2021-12-16', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-06 00:21:02', '2021-02-02 01:37:02'),
(19, 'Publico', 'Activo', 'Microbus', 'TAR-245', 'MERCEDES BENZ', '2015', '2143', '19', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '8AC906657FE101385', NULL, NULL, '196247', '2022-04-18', '47780046', '2021-06-27', '24675820', '2021-06-07', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', 'CUENTA CON CÁMARA DE ALTA DEFINICIÓN', '133.695', NULL, 6, '2020-02-06 00:26:45', '2021-02-12 21:08:44'),
(20, 'Publico', 'Activo', 'Microbus', 'TAR-208', 'TAR-208', '2014', '2476', '12', NULL, NULL, 'Diesel', 'BLANCO CERAMICA', 'KMFWBX7HAEU621939', NULL, NULL, '196246', '2022-04-18', '48728104', '2021-06-20', '24357287', '2021-03-23', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-06 01:00:33', '2021-02-02 03:27:28'),
(21, 'Publico', 'Activo', 'Buseta', 'TAR-204', 'TL', '2015', '2953', '25', NULL, NULL, 'Diesel', 'BLANCO', '9F9ALGTL0FD084316', NULL, NULL, '196244', '2022-04-18', '145891554', '2021-02-12', '24168029', '2021-02-18', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-06 01:26:53', '2021-02-02 02:29:15'),
(22, 'Publico', 'Activo', 'Buseta', 'TAR-205', 'TL', '2015', '2953', '25', NULL, NULL, 'Diesel', 'BLANCO', '9F9ALGTL0FD084310', NULL, NULL, '196245', '2022-04-18', '48206599', '2021-03-07', '24389730', '2021-04-06', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-06 01:46:13', '2021-02-02 03:06:22'),
(23, 'Particular', 'Activo', 'Buseta', 'TAR-400', 'HINO', '2017', '4009', '30', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3UCP0H6H3102581', NULL, NULL, '196252', '2022-04-18', '48236877', '2021-07-27', '25080658', '2021-08-11', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '226.414', NULL, 6, '2020-02-06 01:55:43', '2021-02-08 22:23:55'),
(24, 'Publico', 'Activo', 'Buseta', 'TAR-401', 'HINO', '2017', '4009', '30', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3UCP0H7H3102587', NULL, NULL, '196253', '2022-04-18', '48992872', '2021-07-31', '25080685', '2021-08-11', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '216.802', NULL, 6, '2020-02-06 01:59:36', '2021-02-13 05:05:11'),
(25, 'Publico', 'Activo', 'Buseta', 'TAR-402', 'HINO', '2017', '4009', '30', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3UCP0H1H3102584', NULL, NULL, '196254', '2022-04-18', '48236966', '2021-08-03', '25080714', '2021-08-11', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '230.365', NULL, 6, '2020-02-06 02:03:45', '2021-02-08 22:23:55'),
(26, 'Publico', 'Activo', 'Camioneta', 'TAR-428', 'CHEVROLET', '2017', '5193', '28', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9GCNPR757HB017614', NULL, NULL, '196255', '2022-04-18', '47780045', '2021-06-27', '24389813', '2021-04-07', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', 'CUENTA CON CÁMARA DE ALTA DEFINICIÓN', '210.162', NULL, 6, '2020-02-06 02:47:33', '2021-02-08 22:23:55'),
(27, 'Publico', 'Activo', 'Camioneta', 'TAR-458', 'HINO', '2018', '5123', '28', NULL, NULL, 'Diesel', 'VERDE Y  BLANCO', '9F3FC9JGTJXX10083', NULL, NULL, '196257', '2022-04-18', '149926924', '2021-11-09', '25631647', '2021-11-10', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '175.389', NULL, 6, '2020-02-06 02:51:31', '2021-02-08 22:23:55'),
(28, 'Publico', 'Activo', 'Camioneta', 'TAQ-790', 'TOYOTA', '2014', '2494', NULL, NULL, '1.000', 'Diesel', 'SUPER BLANCO', '8AJFR22G0E4567510', NULL, NULL, '196238', '2022-04-18', '150499282', '2021-12-10', '26069422', '2022-01-08', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '291.249', NULL, 6, '2020-02-06 18:13:10', '2021-02-08 22:23:55'),
(29, 'Particular', 'Activo', 'Camioneta', 'TAQ-791', 'TOYOTA', '2014', '2494', '4', NULL, '1.000', 'Diesel', 'SUPER BLANCO 2', '8AJFR22G7E4567505', NULL, NULL, '196239', '2022-04-18', '150658534', '2021-12-16', '26069551', '2022-01-08', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-06 19:18:28', '2021-01-29 20:32:25'),
(30, 'Publico', 'Activo', 'Camioneta', 'TAQ-524', 'TOYOTA', '2013', '2494', '4', NULL, NULL, 'Diesel', 'SUPER BLANCO 2', '8AJFR22G7D4563324', NULL, NULL, '196236', '2022-04-18', '48727972', '2021-06-17', '24389809', '2021-04-07', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-06 19:34:16', '2021-01-29 19:37:25'),
(31, 'Publico', 'Activo', 'Camioneta', 'TAR-434', 'HILUX', '2017', '2393', '5', NULL, NULL, 'Diesel', 'SUPER BLANCO', '8AJFB8CD3H1582021', NULL, NULL, '196256', '2022-04-18', '48727818', '2021-06-12', '24716760', '2021-06-15', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-06 19:42:07', '2021-02-03 05:40:44'),
(32, 'Publico', 'Activo', 'Camioneta', 'TAR-063', 'TOYOTA', '2015', '2494', '4', NULL, '1.000', 'Diesel', 'SUPER BLANCO 2', '8AJFR22G8F4572200', NULL, NULL, '196240', '2022-04-18', '148917413', '2021-09-17', '25312379', '2021-09-25', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '253.809', NULL, 6, '2020-02-06 20:28:29', '2021-02-09 00:13:32'),
(33, 'Publico', 'Activo', 'Camioneta', 'SOZ439', 'TOYOTA', '2011', '2.494', '5', NULL, '1.000', 'Diesel', 'SUPER BLANCO 2', 'MR0FR22G5B0587032', NULL, NULL, '196233', '2022-04-18', '148113013', '2021-08-06', '24560292', '2021-05-11', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-10 17:43:05', '2021-01-29 03:49:29'),
(34, 'Publico', 'Activo', 'Camioneta', 'TAR579', 'TAR579', '2019', '2393', '5', NULL, NULL, 'Diesel', 'BLANCO PERLADO', '8AJKB8CD2K167894', NULL, NULL, '196258', '2022-04-18', '151211094', '2022-01-13', '26105579', '2022-01-16', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-10 17:51:16', '2021-02-03 17:17:16'),
(35, 'Particular', 'Activo', 'Camioneta', 'TAR580', 'HILUX', '2019', '2393', '5', NULL, NULL, 'Diesel', 'SUPER BLANCO', '8AJKB8CD0K1678176', NULL, NULL, '196259', '2022-04-18', NULL, NULL, '23990946', '2021-01-16', NULL, NULL, NULL, 'SURA', '05031101000002', '2021-01-13', 'SURA', '05030101000002', '2021-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-10 18:00:46', '2020-04-28 00:35:13'),
(36, 'Publico', 'Activo', 'Microbus', 'TAR622', 'MERCEDES BENZ', '2020', '2143', '19', NULL, NULL, 'Diesel', 'BLANCO ARTICO', '8AC906657LE174300', NULL, NULL, '196260', '2022-04-18', NULL, NULL, '25080709', '2021-08-14', 'SURA', '900000319477', '2021-12-02', 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', 'CUENTA CON CÁMARA DE ALTA DEFINICIÓN', '66.879', NULL, 6, '2020-02-10 18:09:07', '2021-02-13 05:05:11'),
(37, 'Publico', 'Activo', 'Camioneta', 'TAR064', 'HILUX', '2015', '2494', '4', NULL, '1.000', 'Diesel', 'SUPER BLANCO 2', '8AJFR22G6F4572826', NULL, NULL, '196241', '2022-04-18', '148941230', '2021-09-17', '25312388', '2021-09-25', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-10 18:20:57', '2021-02-01 18:11:48'),
(38, 'Publico', 'Activo', 'Bus', 'TAR630', 'HINO', '2020', '5123', '41', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9F3FC9JLTLXX13197', NULL, NULL, '196261', '2022-04-18', NULL, NULL, '23332171', '2020-09-13', NULL, NULL, NULL, 'SURA', '05031101000002', '2021-01-13', 'SURA', '05030101000002', '2021-01-13', NULL, 'Si', NULL, 'Si', NULL, '0', NULL, 6, '2020-02-10 18:34:23', '2020-04-28 00:32:59'),
(39, 'Publico', 'Activo', 'Bus', 'SXI-002', 'CHEVROLET', '2011', '4.570', '31', NULL, NULL, 'Diesel', 'BLANCO  VERDE', '9GCNPR717BB029220', NULL, NULL, '177823', '2021-05-23', '146790682', '2021-06-10', '25849333', '2021-12-15', NULL, NULL, NULL, 'LA EQUIDAD SEGUROS GENERALES O.C', 'AA015226', '2021-04-28', 'LA EQUIDAD SEGUROS GENERALES O.C', 'AA015225', '2021-04-28', NULL, 'Si', NULL, 'Si', NULL, '439.008', NULL, 6, '2020-02-10 22:42:43', '2021-02-08 22:23:55'),
(41, 'Publico', 'Activo', 'Camioneta', 'TAR-678', 'FOTON', '2020', '3760', '2', '0', '4.750', 'Diesel', 'BLANCO', 'LVBV4JBB8LE003303', '10020125311', '2020-01-24', '10010125311', NULL, 'N/A', NULL, '77364379-600511569', '2021-01-23', 'SURA', '7092252-9', '2021-01-30', 'NA', 'NA', NULL, 'NA', 'NA', NULL, NULL, 'Si', NULL, 'Si', NULL, NULL, NULL, 6, '2020-02-22 01:46:51', '2020-07-03 18:57:13'),
(42, 'Publico', 'Activo', 'Camioneta', 'TAR-670', 'FORD', '2020', '3198', '5', '0', '812', 'Diesel', 'BLANCO ARTICO', '8AFAR23L1LJ160570', '10020034468', '2020-01-10', '196262', '2022-04-18', 'N/A', NULL, '23998167', '2021-01-09', 'SEGUROS DE AUTOMOVILES', '7092252-9', '2021-01-16', 'SEGUROS DEL ESTADO', '50-31-101000002', '2021-01-13', 'SEGUROS DEL ESTADO', '50-30-101000002', '2021-01-13', NULL, 'Si', NULL, 'Si', NULL, '35.345', NULL, 6, '2020-04-09 01:51:13', '2021-02-09 00:27:00'),
(43, 'Publico', 'Activo', 'Camioneta', 'TAR-669', 'FORD -RANGER', '2020', '3198', '4', '0', '812', 'Diesel', 'BLANCO ARTICO', 'SA2QLJ160576', '10020034386', '2020-01-10', '196262', '2022-04-18', 'N/A', NULL, '26069603', '2022-01-09', NULL, NULL, NULL, 'SEGUROS DEL ESTADO', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '16.953', NULL, 6, '2020-04-09 02:05:37', '2021-02-14 03:55:49'),
(44, 'Publico', 'Activo', 'Camioneta', 'TAQ-525', 'TOYOTA', '2013', '2494', '4', '0', '1.000', 'Diesel', 'SUPER BLANCO 2', '2KD5896963', '10005000875', '2013-02-26', '196237', '2022-04-18', '47738905', '2021-02-19', '24192882', '2021-02-21', 'N/A', 'N/A', NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '218.812', NULL, 6, '2020-04-09 02:22:31', '2021-01-29 19:51:27'),
(46, 'Particular', 'Activo', 'Camioneta', 'BXK 392', 'TOYOTA', '2011', '2494', '4', '0', '0', 'Diesel', 'SUPER BLANCO 2', '2KD6730877', '10003772325', '2011-05-26', NULL, NULL, '43565272', '2020-06-22', '24675873', '2021-06-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Si', NULL, 'Si', NULL, NULL, NULL, 6, '2020-04-14 01:06:11', '2020-06-10 03:42:08'),
(47, 'Publico', 'Activo', 'Bus', 'TAR-682', 'MERCEDES BENZ', '2020', '3907', '35', NULL, NULL, 'Diesel', 'BLANCO', 'MEC0024TELP037453', '10020380649', '2020-02-27', '203049', '2022-04-18', NULL, NULL, '24225781', '2021-02-25', 'ALLIANZ', '022648395/0', '2021-02-28', 'SEGUROS DEL ESTADO', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', 'CAMARA DE ALTA DEFINICION', '17.722', NULL, 6, '2020-05-21 21:40:17', '2021-02-14 04:11:32'),
(48, 'Particular', 'Activo', 'Camioneta', 'TAQ-994', 'MERCEDES BENZ', NULL, NULL, NULL, NULL, NULL, 'Diesel', 'BLANCO ARTICO', NULL, NULL, NULL, '177824', '2021-05-23', '149506073', '2021-10-16', '24986202', '2021-07-22', NULL, NULL, NULL, 'SEGUROS LA EQUIDAD', 'AA015226', '2021-04-28', 'SEGUROS LA EQUIDAD', 'AA015225', '2021-04-28', NULL, 'Si', NULL, 'Si', NULL, NULL, NULL, 6, '2020-06-05 22:19:13', '2021-01-29 20:59:03'),
(49, 'Publico', 'Activo', 'Carrotanque', 'SUF-266', 'FREIGHTLINER', '2008', '6400', '2', '18.000', '18', 'Diesel', 'NARANJA', NULL, '10001142104', '2008-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, 'Si', NULL, NULL, NULL, 6, '2020-06-06 02:45:57', '2020-06-08 17:56:39'),
(50, 'Particular', 'Activo', 'Camioneta', 'GKT169', 'FOTON', '2020', '2776', '5', '1.900', '19', 'Diesel', 'BLANCO', 'LVBV3ABB5LE003388', '10020130577', '2020-01-27', '10020130577', '2030-01-28', 'NA', NULL, '77364378600511561', '2021-01-23', 'SURA', '7092252-9', '2021-01-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Si', NULL, 'Si', NULL, NULL, NULL, 6, '2020-06-06 03:50:45', '2020-07-03 18:34:33'),
(51, 'Particular', 'Activo', 'Camioneta', 'BODEGA', 'MERCEDES BENZ', NULL, NULL, NULL, NULL, NULL, 'Diesel', 'BLANCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Si', NULL, 'Si', NULL, NULL, NULL, 6, '2020-06-08 18:26:15', '2020-06-08 18:26:15'),
(52, 'Particular', 'Activo', 'Camioneta', 'MTQ-246', 'TOYOTA', '2013', '2982', '7', NULL, NULL, 'Diesel', 'GRIS OSCURO MICA METALICO', '8AJYZ59G6D3062222', '10004448676', '2012-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, 'Si', NULL, NULL, NULL, 6, '2020-06-10 19:00:20', '2020-06-10 19:06:47'),
(53, 'Particular', 'Activo', 'Camioneta', 'MTQ-183', 'TOYOTA', '2013', NULL, NULL, NULL, NULL, 'Diesel', 'GRIS METALICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Si', NULL, 'Si', NULL, NULL, NULL, 6, '2020-06-10 19:26:20', '2020-06-10 19:26:20'),
(54, 'Publico', 'Activo', 'Microbus', 'TAR-307', 'CHEVROLET', '2016', '2999', '19', NULL, NULL, 'Diesel', 'BLANCO Y VERDE', '9GCNMR854GB000548', '10010218121', '2015-08-21', '177826', '2021-05-23', '148241577', '2021-08-13', '23997841', '2021-01-30', NULL, NULL, NULL, 'SEGUROS LA EQUIDAD', 'AA015226', '2021-04-28', 'SEGUROS LA EQUIDAD', 'AA015225', '2021-04-28', NULL, 'Si', NULL, 'Si', NULL, '233.115', NULL, 6, '2020-06-19 01:10:01', '2021-02-13 05:06:42'),
(55, 'Publico', 'Activo', 'Microbus', 'TAR-118', 'MERCEDES BENZ', '2015', '2143', '19', NULL, NULL, 'Diesel', 'BLANCO ARTICO', 'BAC906657FE096910', '10009980702', '2014-11-18', '226299', '2022-04-18', '150107273', '2020-11-22', '26690089', '2021-11-20', NULL, NULL, NULL, 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '173.480', NULL, 6, '2020-09-14 20:08:40', '2021-02-13 05:05:11'),
(56, 'Publico', 'Activo', 'Bus', 'TAR-641', 'MERCEDES BENZ', '2020', '3907', '34', NULL, NULL, 'Diesel', 'BLANCO VERDE', 'MEC0024TCLP035372', '10019625070', '2019-11-14', '177912', '2021-10-09', NULL, NULL, '1060102595001', '2020-10-17', 'ALLIANZ', '022550895', '2020-10-31', 'EQUIDAD', 'AA024000', '2020-05-08', 'EQUIDAD', 'AA023999', '2020-05-08', NULL, 'Si', NULL, 'Si', NULL, NULL, NULL, 6, '2020-09-15 02:56:50', '2020-09-15 02:56:50'),
(57, 'Particular', 'Activo', 'Bus', 'TAR-546', 'HINO', '2021', '5.123', '42', NULL, NULL, 'Diesel', 'BLANCO VERDE PANTONE', '9F3FC9JL7MXX10267', 'INSP TTO Y TTE BARRANCABERMEJA', '2020-10-29', '221325', '2022-04-18', NULL, NULL, '25562779', '2021-10-28', 'SEGUROS DEL ESTADO', '5048101001163', '2021-11-11', 'SEGUROS DEL ESTADO S.A', '05031101000003', '2022-01-13', 'SEGUROS DEL ESTADO S.A', '05030101000003', '2022-01-13', NULL, 'Si', NULL, 'Si', NULL, '12.734', NULL, 6, '2021-02-03 06:33:41', '2021-02-08 22:23:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_identificacion_unique` (`identificacion`);

--
-- Indices de la tabla `autopartes`
--
ALTER TABLE `autopartes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_identificacion_unique` (`identificacion`);

--
-- Indices de la tabla `cliente_companies`
--
ALTER TABLE `cliente_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_identificacion_unique` (`identificacion`);

--
-- Indices de la tabla `conductors`
--
ALTER TABLE `conductors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_identificacion_unique` (`identificacion`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `designados`
--
ALTER TABLE `designados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_identificacion_unique` (`identificacion`);

--
-- Indices de la tabla `documentacions`
--
ALTER TABLE `documentacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documento_conductors`
--
ALTER TABLE `documento_conductors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `elementos`
--
ALTER TABLE `elementos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hallazgos`
--
ALTER TABLE `hallazgos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_c_s`
--
ALTER TABLE `historial_c_s`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_r_e_s`
--
ALTER TABLE `historial_r_e_s`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informe_m_g_s`
--
ALTER TABLE `informe_m_g_s`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `kits`
--
ALTER TABLE `kits`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lavados`
--
ALTER TABLE `lavados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `locacions`
--
ALTER TABLE `locacions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locacions_nombre_unique` (`nombre`);

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notify_fechas`
--
ALTER TABLE `notify_fechas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notify_kms`
--
ALTER TABLE `notify_kms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partes`
--
ALTER TABLE `partes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `passenger_servicio`
--
ALTER TABLE `passenger_servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfils`
--
ALTER TABLE `perfils`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `propietarios_identificacion_unique` (`identificacion`);

--
-- Indices de la tabla `proveedors`
--
ALTER TABLE `proveedors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proveedors_identificacion_unique` (`identificacion`);

--
-- Indices de la tabla `recomendacions`
--
ALTER TABLE `recomendacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `relacions`
--
ALTER TABLE `relacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `autopartes`
--
ALTER TABLE `autopartes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente_companies`
--
ALTER TABLE `cliente_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `conductors`
--
ALTER TABLE `conductors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `designados`
--
ALTER TABLE `designados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `documentacions`
--
ALTER TABLE `documentacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT de la tabla `documento_conductors`
--
ALTER TABLE `documento_conductors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `elementos`
--
ALTER TABLE `elementos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `hallazgos`
--
ALTER TABLE `hallazgos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_c_s`
--
ALTER TABLE `historial_c_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_r_e_s`
--
ALTER TABLE `historial_r_e_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT de la tabla `informe_m_g_s`
--
ALTER TABLE `informe_m_g_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `kits`
--
ALTER TABLE `kits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lavados`
--
ALTER TABLE `lavados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `locacions`
--
ALTER TABLE `locacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1899;

--
-- AUTO_INCREMENT de la tabla `notify_fechas`
--
ALTER TABLE `notify_fechas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notify_kms`
--
ALTER TABLE `notify_kms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `partes`
--
ALTER TABLE `partes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `passenger_servicio`
--
ALTER TABLE `passenger_servicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `perfils`
--
ALTER TABLE `perfils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proveedors`
--
ALTER TABLE `proveedors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT de la tabla `recomendacions`
--
ALTER TABLE `recomendacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT de la tabla `relacions`
--
ALTER TABLE `relacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
