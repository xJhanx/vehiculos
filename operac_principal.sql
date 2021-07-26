-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-07-2021 a las 22:57:10
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
-- Base de datos: `operac_main_`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `funcionario_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `company`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `funcionario_id`) VALUES
(3, 'transportesriogrande@gmail.com', 'operac_services', 'mantenimientostrg@gmail.com', NULL, '$2y$10$M0c8yoy00jL2A7YtVXu92.BhtSW7E9OxOF0MD9qiQPIUh8Z2ImGOi', '8w0dKlerkkwatQC0UmkUqMDqj34aluVwqS2X72bHepIGPyB79MYVdCC5tC3v', '2019-12-22 14:08:57', '2019-12-22 14:08:57', 'gerente', 0),
(5, 'Transporteinfantas@hotmail.es', 'operac_infantas', 'Hseqinfantas@gmail.com', NULL, '$2y$10$M0c8yoy00jL2A7YtVXu92.BhtSW7E9OxOF0MD9qiQPIUh8Z2ImGOi', 'm18WU70uOpuZAkb53Doe957vjgrM5ZLFRjGfHlcGzNs8JKd5uBeKcqtfm4La', '2019-12-22 14:11:45', '2019-12-22 14:11:45', 'gerente', 0),
(23, 'transportesriogrande@gmail.com', 'operac_services', 'gerentetrg@gmail.com', NULL, '$2y$10$M0c8yoy00jL2A7YtVXu92.BhtSW7E9OxOF0MD9qiQPIUh8Z2ImGOi', 'qcGYdnwxvar4nkIQ7pElf28DNBZ62KwWsY11NYeHvFqbcIlE0ZxBSP7uFzkx', '2019-12-22 14:08:57', '2019-12-22 14:08:57', 'superGerente', 0),
(33, 'mdgrisalez@misena.edu.co', 'operac_services', 'mdgrisalez@misena.edu.co', NULL, '$2y$10$cKUp9X2.KCeeZ81Ls8ynb.P8/mMog9m04fpuVN6C5oYs47i/vqKDi', NULL, '2021-07-19 07:14:29', '2021-07-19 07:14:29', 'administrador', 11),
(34, 'company@gmail.com', 'operac_services', 'company@gmail.com', NULL, '$2y$10$8ju6Gvv/YIODlV1dVJt3l.wbgyPNhbAIAqjYONFZvLpkt4nrv7xjC', NULL, '2021-07-19 07:15:42', '2021-07-19 07:15:42', 'cliente', 10),
(35, 'designado@gmail.com', 'operac_services', 'designado@gmail.com', NULL, '$2y$10$wXMKC9Y2nhT8BD7P915RZ.2XzTv.7dEJEQYKmSQzm8l4ucsv51LXS', NULL, '2021-07-19 07:18:53', '2021-07-19 07:18:53', 'designado', 18),
(36, 'conductoraprendiz@gmail.com', 'operac_services', 'conductoraprendiz@gmail.com', NULL, '$2y$10$3MWWPXaG5YHhj9jkeupFv.rR5GOvrnyRKUzPCD2iClHaecTlOCWgC', NULL, '2021-07-19 19:17:56', '2021-07-19 19:17:56', 'conductor', 17),
(37, 'gerencia@operacionsistemica.com', 'operac_services', 'gerencia@operacionsistemica.com', NULL, '$2y$10$wbwul9FjylsUL/YJI6JjcO/lRyWWduZgXGqdyRLn/ymVwUfGZQULW', NULL, '2021-07-22 19:06:06', '2021-07-22 19:06:06', 'administrador', 12);

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
