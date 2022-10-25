-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 21-10-2022 a las 19:30:36
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agente-prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaFin` date NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci,
  `tipoPublico` tinyint(4) DEFAULT NULL,
  `tipoObjetivo` tinyint(4) DEFAULT NULL,
  `tipoAudiencia` tinyint(4) DEFAULT NULL,
  `interesPublico` tinyint(4) DEFAULT NULL,
  `novedad` tinyint(4) DEFAULT NULL,
  `actualidad` tinyint(4) DEFAULT NULL,
  `autoridadCliente` tinyint(4) DEFAULT NULL,
  `mediaticoCliente` tinyint(4) DEFAULT NULL,
  `autoridadVoceros` tinyint(4) DEFAULT NULL,
  `mediaticoVoceros` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `campaigns`
--

INSERT INTO `campaigns` (`id`, `titulo`, `fechaFin`, `cliente_id`, `observacion`, `tipoPublico`, `tipoObjetivo`, `tipoAudiencia`, `interesPublico`, `novedad`, `actualidad`, `autoridadCliente`, `mediaticoCliente`, `autoridadVoceros`, `mediaticoVoceros`, `created_at`, `updated_at`, `deleted_at`) VALUES
(448, 'Proyecto: Agente de Prensa 2019', '2019-05-31', 32, 'Difusión en medios sobre el proyecto financiado por Innóvate Perú', 2, 1, 4, 3, 4, 5, 5, 4, 5, 4, '2019-05-17 14:26:43', '2021-05-30 02:14:16', NULL),
(675, 'Book Media', '2020-02-01', 32, 'difundir', 2, 1, 1, 3, 4, 3, 3, 3, 4, 3, '2019-11-06 20:02:11', '2019-11-06 20:04:16', NULL),
(798, 'En voz alta: Audioteca', '2020-12-30', 59, 'Camapaña cultural-social', 2, 2, 1, 3, 5, 5, 4, 3, 4, 3, '2020-04-23 03:17:02', '2021-05-26 00:07:45', NULL),
(823, 'Booktrailer.pe', '2020-06-21', 59, 'Difundir la labor de booktrailer', 2, 1, 4, 4, 3, 3, 3, 4, 3, 3, '2020-05-21 17:52:58', '2020-05-21 17:52:58', NULL),
(1360, 'Fiestas Patrias', '2021-07-31', 59, 'Entrevista', 2, 1, 1, 5, 5, 5, 3, 2, 2, 2, '2021-07-26 19:46:52', '2021-07-26 20:30:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreComercial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razonSocial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rubro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombreComercial`, `razonSocial`, `rubro`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(32, 'Making Connexion', 'Making Connexion SAC', 'Comunicaciones', '', '2019-05-17 14:23:32', '2019-05-17 14:23:32', NULL),
(59, 'Bookmedia', 'Bookmedia', 'Editorial', '', '2020-04-23 03:13:54', '2020-04-23 03:13:54', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_plan_medios`
--

CREATE TABLE `detalle_plan_medios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idPlanMedio` bigint(20) UNSIGNED NOT NULL,
  `idProgramaContacto` bigint(20) UNSIGNED NOT NULL,
  `idsMedioPlataforma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipoTier` tinyint(4) DEFAULT NULL,
  `tipoNota` tinyint(4) NOT NULL,
  `tipoEtapa` tinyint(4) NOT NULL,
  `statusPublicado` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_plan_medios`
--

INSERT INTO `detalle_plan_medios` (`id`, `idPlanMedio`, `idProgramaContacto`, `idsMedioPlataforma`, `tipoTier`, `tipoNota`, `tipoEtapa`, `statusPublicado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4543, 516, 1277, '99', 2, 2, 2, 1, '2019-05-17 14:30:21', '2021-05-30 02:16:19', NULL),
(4544, 516, 423, '3', 1, 2, 2, 1, '2019-05-17 14:30:51', '2021-05-30 02:16:19', NULL),
(4545, 516, 745, '54', 3, 1, 2, 1, '2019-05-17 14:38:51', '2021-05-30 02:16:19', NULL),
(4546, 516, 839, '59,60', 1, 2, 2, 0, '2019-05-17 14:39:06', '2021-05-30 02:16:18', NULL),
(8997, 780, 745, '54,78,193', 2, 1, 2, 1, '2020-04-23 03:23:29', '2021-05-26 01:22:06', NULL),
(9002, 943, 600, '54,78,193,853', 2, 1, 2, 1, '2020-04-23 13:34:45', '2021-05-26 01:22:07', NULL),
(9006, 943, 1277, '99', 2, 2, 2, 1, '2020-04-23 14:47:15', '2021-05-26 01:22:07', NULL),
(9007, 977, 745, '54', 2, 2, 2, 0, '2020-04-23 15:02:57', '2020-04-23 15:02:57', NULL),
(9008, 977, 1260, '59', 3, 2, 2, 0, '2020-04-23 15:03:42', '2020-04-23 15:03:42', NULL),
(9009, 943, 966, '3,4', 1, 2, 2, 1, '2020-04-23 19:15:24', '2021-05-26 01:22:08', NULL),
(9011, 1651, 1277, '99', 2, 1, 2, 1, '2020-04-23 21:24:35', '2021-05-26 01:22:08', NULL),
(9014, 1651, 1260, '59', 3, 1, 2, 1, '2020-04-24 15:47:30', '2021-05-26 01:23:05', NULL),
(9086, 1651, 600, '54,193', 2, 2, 2, 0, '2020-05-05 15:00:49', '2020-05-05 15:00:49', NULL),
(9087, 1651, 1281, '4', 1, 1, 2, 1, '2020-05-05 15:12:06', '2021-05-26 00:24:23', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios`
--

CREATE TABLE `medios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipoRegion` tinyint(4) DEFAULT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medios`
--

INSERT INTO `medios` (`id`, `nombre`, `alias`, `tipoRegion`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 'El Comercio', 'EL COMERCIO', 1, NULL, '2021-03-02 00:34:50', '2021-05-20 16:51:25', NULL),
(64, 'Radio Nacional', 'RADIO NACIONAL', 2, NULL, '2021-03-01 18:33:56', '2021-05-21 20:15:43', NULL),
(76, 'RPP', 'RPP', 3, 'CANAL 10  MOVISTAR', '2021-03-01 22:20:42', '2021-03-01 22:20:42', NULL),
(123, 'TV Perú', 'TV PERÚ', 1, NULL, '2021-02-19 22:36:16', '2021-02-19 22:36:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_plataformas`
--

CREATE TABLE `medio_plataformas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medio_id` bigint(20) UNSIGNED NOT NULL,
  `idPlataformaClasificacion` bigint(20) UNSIGNED NOT NULL,
  `valor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alcance` int(11) DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medio_plataformas`
--

INSERT INTO `medio_plataformas` (`id`, `medio_id`, `idPlataformaClasificacion`, `valor`, `alcance`, `observacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 76, 3, '10', 750000, '', '2017-07-09 03:19:04', '2017-07-09 03:19:04', NULL),
(4, 76, 2, '89.7', 871428, '', '2017-07-09 03:31:53', '2017-07-09 03:31:53', NULL),
(5, 22, 6, 'www.elcomercio.pe', 600000, 'El Comercio', '2017-07-13 03:48:56', '2021-05-20 16:51:42', NULL),
(6, 22, 10, 'Página interior', 321993, '', '2017-07-13 03:48:56', '2017-09-10 02:52:23', NULL),
(54, 64, 2, '103.9FM', 576000, '', '2017-09-10 03:53:03', '2017-09-10 03:53:03', NULL),
(59, 123, 1, '7', 1000000, '', '2017-09-10 04:26:45', '2017-09-10 04:26:45', NULL),
(60, 123, 6, 'http://www.tvperu.gob.pe/', 100290, '', '2017-09-10 04:26:45', '2017-09-10 04:26:45', NULL),
(78, 64, 6, 'https://www.radionacional.com.', 7500, '', '2018-02-05 17:41:15', '2021-01-21 02:13:14', NULL),
(99, 76, 6, 'http://rpp.pe/', 443413, '', '2018-03-12 21:50:29', '2018-03-12 21:50:29', NULL),
(193, 64, 14, 'https://www.facebook.com/queha', 20000, 'QUÉ HACER', '2018-10-04 17:37:23', '2019-08-16 17:50:14', NULL),
(514, 76, 15, 'https://www.youtube.com/channe', 443413, '', '2020-04-23 21:00:32', '2020-04-23 21:00:32', NULL),
(853, 64, 14, 'https://www.facebook.com/radio', 268851, 'Nacional', '2021-02-03 21:05:05', '2021-02-03 21:05:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apodo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` tinyint(1) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `profesion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci,
  `famoso` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `apellidos`, `nombres`, `apodo`, `genero`, `fechaNacimiento`, `profesion`, `observacion`, `famoso`, `created_at`, `updated_at`, `deleted_at`) VALUES
(306, 'Elías', 'Betty', NULL, 0, NULL, 'Productora', NULL, NULL, '2017-06-06 22:59:36', '2021-08-06 20:22:35', NULL),
(330, 'Acuña Villalobos', 'Pedro', NULL, 1, NULL, 'Editor General de Televisión', NULL, NULL, '2017-06-17 22:53:24', '2021-03-15 18:48:56', NULL),
(1102, 'Coya ', 'Hugo', '', 1, NULL, '', '', 1, '2019-05-17 14:33:52', '2019-05-17 14:33:52', NULL),
(1583, 'Garcia ', 'Brenda', '', 0, NULL, '', '', NULL, '2020-04-23 14:45:57', '2020-04-23 14:45:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_medios`
--

CREATE TABLE `plan_medios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plan_medios`
--

INSERT INTO `plan_medios` (`id`, `campaign_id`, `nombre`, `descripcion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(516, 448, 'Agente de Prensa 2019', 'Proyecto financiado por Innovate Perú y PUCP', 1, '2019-05-17 14:27:20', '2019-05-17 14:27:20', NULL),
(780, 675, 'Book Media', 'Difundir', 1, '2019-11-06 20:03:08', '2019-11-06 20:03:08', NULL),
(943, 798, 'En voz alta: Audioteca para personas con disc', 'Publicar notas en webs y gestionar entrevista', 1, '2020-04-23 03:22:19', '2020-04-23 03:22:19', NULL),
(977, 823, 'Difusión Booktrailer.pe', 'Difundir nota o entrevistas de la herramienta', 1, '2020-05-21 17:55:11', '2020-05-21 17:55:11', NULL),
(1651, 1360, 'Fiestas patrias', 'Entrevistas', 1, '2021-07-26 20:01:01', '2021-07-26 20:12:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataformas`
--

CREATE TABLE `plataformas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plataformas`
--

INSERT INTO `plataformas` (`id`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Web', '2020-04-25 17:36:07', '2020-04-25 17:36:07', NULL),
(2, 'Televisión', '2019-10-02 16:39:14', '2019-10-02 16:39:14', NULL),
(3, 'Radio', '2021-03-06 04:50:46', '2021-03-06 04:50:46', NULL),
(5, 'Impreso', '2017-01-03 21:50:39', '2017-08-10 21:43:21', NULL),
(9, 'Social Media', '2019-05-07 20:28:34', '2020-04-29 18:41:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma_clasificacions`
--

CREATE TABLE `plataforma_clasificacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plataforma_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plataforma_clasificacions`
--

INSERT INTO `plataforma_clasificacions` (`id`, `descripcion`, `plataforma_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Señal Abierta', 2, '2021-03-06 04:51:27', '2021-03-06 04:51:27', NULL),
(2, 'Señal Abierta', 3, '2021-03-06 04:51:27', '2021-03-06 04:51:27', NULL),
(3, 'Cable Movistar', 2, '2021-03-06 04:51:27', '2021-03-06 04:51:27', NULL),
(5, 'DirecTV', 2, '2021-03-06 04:51:27', '2021-03-06 04:51:27', NULL),
(6, 'URL', 1, '2021-03-06 04:51:27', '2021-03-06 04:51:27', NULL),
(10, 'Formato', 5, '2021-03-06 04:51:27', '2021-03-06 04:51:27', NULL),
(14, 'Facebook', 9, '2019-05-07 20:30:33', '2019-05-07 20:30:33', NULL),
(15, 'Youtube', 9, '2019-05-07 20:30:33', '2019-05-07 20:30:33', NULL),
(16, 'Twitter', 9, '2019-05-07 20:30:33', '2019-05-07 20:30:33', NULL),
(17, 'Instagram', 9, '2019-05-07 20:30:33', '2019-05-07 20:30:33', NULL),
(18, 'Spotify', 9, '2020-05-08 00:01:48', '2020-05-08 00:01:48', NULL),
(20, 'LinkedIn', 9, '2020-11-30 21:38:55', '2020-11-30 21:38:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`id`, `nombre`, `descripcion`, `medio_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(47, 'Primera Fila', 'Notas de cultura y entretenimiento', 76, '2017-07-09 03:10:39', '2017-07-09 03:10:39', NULL),
(71, 'TV Perú Noticias', 'Noticiero general', 123, '2017-09-10 04:27:45', '2021-07-22 16:37:55', NULL),
(106, 'La Rotativa del Aire', 'Entrevistas políticas, actualidad y cultura', 76, '2018-03-03 16:09:47', '2018-03-03 16:09:47', NULL),
(126, 'Escape', 'Suplemento de actividades culturales, entrevi', 22, '2018-04-02 15:06:31', '2018-04-02 15:06:31', NULL),
(142, 'Qué hacer', 'Programa de actualidad y agenda', 64, '2018-06-05 23:04:54', '2018-06-05 23:04:54', NULL),
(143, 'Conexión', 'Actualidad y entrevistas.', 76, '2018-06-11 20:23:49', '2020-11-10 00:47:22', NULL),
(203, 'Entre libros', 'Programa de entrevistas a autores', 64, '2019-02-04 21:50:19', '2019-02-04 21:50:19', NULL),
(368, 'Diálogo abierto', 'Programa de actualidad', 123, '2020-03-25 19:44:30', '2020-03-25 19:44:30', NULL),
(710, 'Claro y Sencillo', 'Consejos económicos', 76, '2021-03-06 14:48:03', '2021-07-09 16:31:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_contactos`
--

CREATE TABLE `programa_contactos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `programa_id` bigint(20) UNSIGNED NOT NULL,
  `idContacto` bigint(20) UNSIGNED NOT NULL,
  `tipoInfluencia` tinyint(4) NOT NULL,
  `idsMedioPlataforma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `programa_contactos`
--

INSERT INTO `programa_contactos` (`id`, `programa_id`, `idContacto`, `tipoInfluencia`, `idsMedioPlataforma`, `observacion`, `activo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(423, 47, 330, 2, '3', '', 0, '2018-04-12 15:41:51', '2021-07-20 14:37:30', NULL),
(600, 142, 330, 2, '54,78,193,853', NULL, 0, '2018-10-03 13:58:42', '2021-08-02 18:31:58', NULL),
(745, 203, 1102, 2, '54,78,193', '', 1, '2019-03-25 22:46:53', '2019-09-17 17:28:08', NULL),
(839, 71, 1102, 2, '59,60', '', 1, '2019-05-17 14:33:52', '2019-07-01 17:09:58', NULL),
(966, 143, 306, 2, '3,4,99,514', '', 1, '2019-07-15 22:51:20', '2020-07-31 17:22:42', NULL),
(1260, 368, 1583, 2, '59', '', 1, '2020-03-25 19:43:01', '2020-04-25 22:07:07', NULL),
(1276, 126, 330, 2, '5,6', '', 0, '2020-04-23 13:31:57', '2021-04-22 17:31:34', NULL),
(1277, 710, 1583, 2, '99', '', 1, '2020-04-23 14:45:58', '2020-04-23 20:59:00', NULL),
(1281, 106, 1102, 2, '4', '', 1, '2020-05-05 15:11:09', '2020-06-12 14:31:27', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_plan_medios`
--
ALTER TABLE `detalle_plan_medios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_plan_medios_idplanmedio_foreign` (`idPlanMedio`),
  ADD KEY `detalle_plan_medios_idprogramacontacto_foreign` (`idProgramaContacto`);

--
-- Indices de la tabla `medios`
--
ALTER TABLE `medios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medio_plataformas`
--
ALTER TABLE `medio_plataformas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medio_plataformas_medio_id_foreign` (`medio_id`),
  ADD KEY `medio_plataformas_idplataformaclasificacion_foreign` (`idPlataformaClasificacion`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plan_medios`
--
ALTER TABLE `plan_medios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_medios_campaign_id_foreign` (`campaign_id`);

--
-- Indices de la tabla `plataformas`
--
ALTER TABLE `plataformas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plataforma_clasificacions`
--
ALTER TABLE `plataforma_clasificacions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plataforma_clasificacions_plataforma_id_foreign` (`plataforma_id`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programas_medio_id_foreign` (`medio_id`);

--
-- Indices de la tabla `programa_contactos`
--
ALTER TABLE `programa_contactos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programa_contactos_programa_id_foreign` (`programa_id`),
  ADD KEY `programa_contactos_idcontacto_foreign` (`idContacto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1387;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `detalle_plan_medios`
--
ALTER TABLE `detalle_plan_medios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17799;

--
-- AUTO_INCREMENT de la tabla `medios`
--
ALTER TABLE `medios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT de la tabla `medio_plataformas`
--
ALTER TABLE `medio_plataformas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1109;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2603;

--
-- AUTO_INCREMENT de la tabla `plan_medios`
--
ALTER TABLE `plan_medios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1680;

--
-- AUTO_INCREMENT de la tabla `plataformas`
--
ALTER TABLE `plataformas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `plataforma_clasificacions`
--
ALTER TABLE `plataforma_clasificacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `programas`
--
ALTER TABLE `programas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=962;

--
-- AUTO_INCREMENT de la tabla `programa_contactos`
--
ALTER TABLE `programa_contactos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2079;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_plan_medios`
--
ALTER TABLE `detalle_plan_medios`
  ADD CONSTRAINT `detalle_plan_medios_idplanmedio_foreign` FOREIGN KEY (`idPlanMedio`) REFERENCES `plan_medios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_plan_medios_idprogramacontacto_foreign` FOREIGN KEY (`idProgramaContacto`) REFERENCES `programa_contactos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `medio_plataformas`
--
ALTER TABLE `medio_plataformas`
  ADD CONSTRAINT `medio_plataformas_idplataformaclasificacion_foreign` FOREIGN KEY (`idPlataformaClasificacion`) REFERENCES `plataforma_clasificacions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medio_plataformas_medio_id_foreign` FOREIGN KEY (`medio_id`) REFERENCES `medios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `plan_medios`
--
ALTER TABLE `plan_medios`
  ADD CONSTRAINT `plan_medios_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `plataforma_clasificacions`
--
ALTER TABLE `plataforma_clasificacions`
  ADD CONSTRAINT `plataforma_clasificacions_plataforma_id_foreign` FOREIGN KEY (`plataforma_id`) REFERENCES `plataformas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `programas_medio_id_foreign` FOREIGN KEY (`medio_id`) REFERENCES `medios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `programa_contactos`
--
ALTER TABLE `programa_contactos`
  ADD CONSTRAINT `programa_contactos_idcontacto_foreign` FOREIGN KEY (`idContacto`) REFERENCES `personas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `programa_contactos_programa_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
