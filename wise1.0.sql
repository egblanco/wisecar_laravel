-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2017 a las 12:54:25
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wise9`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio`
--

CREATE TABLE `accesorio` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `disponible` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `accesorio`
--

INSERT INTO `accesorio` (`id`, `cantidad`, `disponible`, `image`) VALUES
(4, 2, 2, '5704e2d440d76.png'),
(5, 2, 2, '5704e1f66b548.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio_translation`
--

CREATE TABLE `accesorio_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `accesorio_translation`
--

INSERT INTO `accesorio_translation` (`id`, `translatable_id`, `nombre`, `descripcion`, `locale`) VALUES
(1, 4, 'Asiento de BebÃ©', 'asd', 'es'),
(2, 4, 'Baby Seat', 'asd', 'en'),
(3, 5, 'GPS', 'ad', 'es'),
(4, 5, 'GPS', 'asd', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_recogida` int(11) DEFAULT NULL,
  `id_regreso` int(11) DEFAULT NULL,
  `id_oferta` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id`, `id_cliente`, `id_recogida`, `id_regreso`, `id_oferta`, `fecha_inicio`, `fecha_fin`, `codigo`, `total`) VALUES
('58367948-10b7-11e6-9f40-025041000001', 40, 1, 1, 21, '2016-05-02 00:00:00', '2016-05-02 00:00:00', '5727d8287dfea', 0),
('d0bf2bcf-0d7b-11e6-97db-025041000001', 39, 1, 1, 21, '2016-04-27 20:00:00', '2016-05-19 00:00:00', '57226bcb73827', 91);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler_articulo`
--

CREATE TABLE `alquiler_articulo` (
  `id` int(11) NOT NULL,
  `id_alquiler` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_articulo` int(11) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alquiler_articulo`
--

INSERT INTO `alquiler_articulo` (`id`, `id_alquiler`, `id_articulo`, `precio`) VALUES
(84, 'd0bf2bcf-0d7b-11e6-97db-025041000001', 8, '79'),
(85, 'd0bf2bcf-0d7b-11e6-97db-025041000001', 4, '8'),
(86, 'd0bf2bcf-0d7b-11e6-97db-025041000001', 1, '2'),
(87, 'd0bf2bcf-0d7b-11e6-97db-025041000001', 6, '2'),
(88, '58367948-10b7-11e6-9f40-025041000001', 8, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `updated` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `precio`, `updated`, `type`) VALUES
(1, '2', '2016-02-21 17:54:39', 'seguro'),
(4, '8', '2016-04-06 12:20:04', 'accesorio'),
(5, '5', '2016-04-06 12:16:22', 'accesorio'),
(6, '2', '2016-02-21 18:05:41', 'seguro'),
(8, '80', '2016-04-28 18:05:34', 'auto'),
(9, '50', '2017-11-13 08:46:08', 'auto'),
(10, '123', '2017-11-13 08:44:46', 'auto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto`
--

CREATE TABLE `auto` (
  `id` int(11) NOT NULL,
  `id_transmision` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `modelo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pasajeros` int(11) NOT NULL,
  `puertas` int(11) NOT NULL,
  `aire` tinyint(1) NOT NULL,
  `maletas_grandes` int(11) NOT NULL,
  `maletas_pequenas` int(11) NOT NULL,
  `cd_reproductor` tinyint(1) NOT NULL,
  `usb` tinyint(1) NOT NULL,
  `auxiliar` tinyint(1) NOT NULL,
  `pad` int(11) NOT NULL,
  `pas` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auto`
--

INSERT INTO `auto` (`id`, `id_transmision`, `id_categoria`, `modelo`, `pasajeros`, `puertas`, `aire`, `maletas_grandes`, `maletas_pequenas`, `cd_reproductor`, `usb`, `auxiliar`, `pad`, `pas`, `image`) VALUES
(8, 2, 1, 'Van Ford', 8, 3, 1, 2, 2, 1, 1, 1, 2, 2, '572234ce27638.png'),
(9, 1, 1, 'Loco', 4, 4, 1, 4, 4, 1, 1, 1, 2, 2, '5a094dc053ae0.jpg'),
(10, 2, 1, 'Spark', 4, 4, 1, 1, 1, 1, 1, 1, 1, 2, '5a094d6eca754.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto_categoria`
--

CREATE TABLE `auto_categoria` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auto_categoria`
--

INSERT INTO `auto_categoria` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto_categoria_translation`
--

CREATE TABLE `auto_categoria_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auto_categoria_translation`
--

INSERT INTO `auto_categoria_translation` (`id`, `translatable_id`, `nombre`, `locale`) VALUES
(1, 1, 'Lujo', 'es'),
(2, 1, 'Luxury', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_oferta` int(11) DEFAULT NULL,
  `id_oferta_auto` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `id_tipo`, `id_oferta`, `id_oferta_auto`, `nombre`, `image`, `updated`) VALUES
(1, 1, 18, 27, 'Home', '5734d61591275.png', '2016-05-12 21:14:29'),
(2, 2, 19, 29, 'Cars', '5734d62e50f9c.png', '2016-05-12 21:14:54'),
(3, 3, 20, 32, 'Rates', '5734d649cdc43.png', '2016-05-12 21:15:21'),
(4, 4, 21, 33, 'Wise Deals', '5734d664e0733.png', '2016-05-12 21:15:48'),
(5, 5, 19, 30, 'FAQS', '5734d67e8a419.png', '2016-05-12 21:16:14'),
(6, 6, 18, 28, 'Travel Tips', '5734d69de6070.png', '2016-05-12 21:16:45'),
(7, 7, 19, 29, 'Testimonials', '5734d6bad9645.png', '2016-05-12 21:17:14'),
(8, 8, 18, 28, 'Contact Us', '5734d6d70f288.png', '2016-05-12 21:17:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_tipo`
--

CREATE TABLE `banner_tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banner_tipo`
--

INSERT INTO `banner_tipo` (`id`, `nombre`) VALUES
(1, 'Home'),
(2, 'Cars'),
(3, 'Rates'),
(4, 'Wise Deals'),
(5, 'FAQS'),
(6, 'Travel Tips'),
(7, 'Testimonials'),
(8, 'Contact Us');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `sexo` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `compania` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correoConfirmacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidadPersonas` int(11) NOT NULL,
  `enHotel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `apellido`, `fechaNacimiento`, `sexo`, `compania`, `telefono`, `correo`, `correoConfirmacion`, `fax`, `direccion`, `ciudad`, `estado`, `pais`, `zip`, `cantidadPersonas`, `enHotel`) VALUES
(1, 'Abdiel', 'CS', '2011-01-01', 's:1:"2";', 'a', '1', 'a', 'None', 'a', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(2, 'Abdiel', 'CS', '2011-01-01', 's:1:"a";', 'a', '1', 'a', 'None', 'a', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(3, 'Abdiel', 'CS', '2016-03-02', 's:1:"m";', 'a', '1', 'aa@asdas.com', 'aa@asdas.com', '1', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(8, 'Loco1', 'CS', '2016-03-03', 's:1:"m";', 'a', '2', 'abdielcs@gmail.com', 'abdielcs@gmail.com', '1', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(9, 'Abdiel', 'CS', '2016-03-03', 's:1:"m";', '2', '1', 'abdielcs@gmail.com', 'abdielcs@gmail.com', '1', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(10, 'Abdiel', 'CS', '2016-03-03', 's:1:"m";', 'a', '1', 'abdielcs@gmail.com', 'abdielcs@gmail.com', '1', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(11, 'Abdiel', 'CS', '2016-03-03', 's:1:"m";', '2', '1', 'abdielcs@gmail.com', 'abdielcs@gmail.com', '2', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(13, 'Abdiel', 'CS', '2016-03-07', 's:1:"m";', 'a', '1', 'abdielcs@gmail.com', 'abdielcs@gmail.com', '1', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(14, 'Abdiel', 'CS', '2016-03-08', 's:1:"m";', 'a', '1', 'abdielcs@gmail.com', 'abdielcs@gmail.com', '1', 'Old Havana', 'Habana', 'a', 'Cuba', '10800', 2, 0),
(15, 'dfg', 'dfg44', '2016-03-31', 's:1:"m";', '4', '4', 'eg@as.com', 'eg@as.com', '2', '2', '2', '2', '2', '2', 2, 0),
(16, '999', '999', '2016-04-01', 's:1:"f";', '66', '66', 'eg@as.com', 'eg@as.com', '6', '6', '6', '6', '6', '6', 6, 0),
(17, '5', '5', '2016-04-14', 's:1:"m";', '5', '5', 'eg@as.com', 'eg@as.com', '5', '5', '5', '5', '5', '5', 5, 1),
(18, 'kjh', 'wer', '2016-04-03', 's:1:"m";', 'e', 'kjhkjh', 'eg@as.com', 'eg@as.com', '6', '6', '6', '6', '6', 'ljh', 1, 1),
(20, '5', '5', '2016-04-04', 's:1:"f";', '5', '5', 'eg@as.com', 'eg@as.com', '5', '5', '5', '5', '5', '5', 5, 0),
(24, '5', '5', '2016-04-04', 's:1:"m";', '5', '5', 'eg@as.com', 'eg@as.com', '5', '5', '5', '5', '5', '5', 5, 1),
(28, '9', '9', '2016-04-04', 's:1:"m";', '9', '9', 'eg@as.com', 'eg@as.com', '9', '9', '9', '9', '9', '9', 1, 1),
(29, '11', '1', '2016-04-04', 's:1:"m";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '1', '1', '1', '11', '1', 1, 1),
(30, '1', '1', '2016-04-04', 's:1:"m";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '1', '1', '1', '1', '1', 1, 1),
(31, '1', '1', '2016-04-04', 's:1:"m";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '1', '1', '1', '1', '1', 1, 1),
(32, '6', '6', '2016-04-06', 's:1:"m";', '6', '6', 'eg@as.com', 'eg@as.com', '6', '6', '6', '6', '6', '6', 6, 1),
(33, '4', '4', '2016-04-08', 's:1:"f";', '4', '4', 'eg@as.com', 'eg@as.com', '4', '4', '4', '4', '4', '4', 4, 1),
(34, '1', '1', '2016-04-08', 's:1:"m";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '123', '123', '1', '1', '1', 1, 1),
(35, '1', '1', '2016-04-08', 's:1:"m";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '1', '1', '123', '1', '1', 1, 1),
(36, '1', '1', '2016-04-13', 's:1:"m";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '1', '1', '123', '11', '1', 1, 1),
(37, '1', '1', '2016-04-14', 's:1:"m";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '1231', '1', '1', '1', '1', 1, 1),
(38, '1', '1', '2016-04-28', 's:1:"m";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '1', '1', '1', '1', '1', 1, 1),
(39, '1', '1', '2016-04-28', 's:1:"f";', '1', '1', 'eg@as.com', 'eg@as.com', '1', '1', '1', '1', '1', '1', 1, 0),
(40, '2', '2', NULL, 's:1:"m";', NULL, NULL, 'eg@as.com', 'eg@as.com', NULL, '2', NULL, '2', '2', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'admin', 'admin', 'admin@email.com', 'admin@email.com', 1, '5wj5tvij10wsw8co0owosckkso44sc4', '$2y$13$5wj5tvij10wsw8co0owosOl6T9TNs.9jxd1CO9IyzMr6bc3LBNEby', '2017-11-13 07:26:50', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `id` int(11) NOT NULL,
  `iva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id`, `iva`) VALUES
(1, 16),
(2, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar_translation`
--

CREATE TABLE `lugar_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `lugar_translation`
--

INSERT INTO `lugar_translation` (`id`, `translatable_id`, `nombre`, `locale`) VALUES
(1, 1, 'Oficina en Playa del Carmen', 'es'),
(2, 1, 'Playa del Carmen Office', 'en'),
(3, 2, 'Oficina en CancÃºn', 'es'),
(4, 2, 'Cancun Office', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `texto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_estado` int(11) NOT NULL,
  `creado` datetime NOT NULL,
  `servicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`id`, `id_tipo`, `nombre`, `correo`, `telefono`, `titulo`, `texto`, `locale`, `id_estado`, `creado`, `servicio`) VALUES
(1, 1, 'Abdiel', 'abdielcs@gmail.com', '111', 'Probando contacto', 'Texto de prueba', 'es', 1, '2011-01-01 00:00:00', NULL),
(2, 2, 'Abdiel CS', 'abdielcs@gmail.com1', '2222', 'Probando comentarios', 'este es el texto del mensaje', 'es', 1, '2011-01-01 00:00:00', NULL),
(14, 2, 'Abdiel', 'abdielcs@gmail.com', NULL, 'titulo comentario', 'aaaa', 'en', 2, '2016-03-13 16:52:35', 5),
(15, 2, 'Abdiel Carrazana', 'abdielcs@gmail.com', NULL, 'Titulo segundo comentario', 'Me parece muy bueno el servicios, es realmente lo que yo buscaba', 'en', 2, '2016-03-13 17:01:51', 2),
(16, 2, 'Abdiel1', 'abdielcs@gmail.com', NULL, 'a', 'a', 'en', 2, '2016-03-13 17:16:56', 2),
(17, 2, 'Abdiel Carrazana', 'aaa', NULL, 'Titulo segundo comentario', 'aaaaa', 'en', 2, '2016-03-13 17:22:29', 2),
(18, 2, 'Abdiel', 'abdielcs@gmail.com', NULL, 'titulo comentario espannol', 'aaaa', 'es', 2, '2016-03-13 17:24:40', 2),
(19, 2, 'Abdiel Carrazana', 'abdielcs@gmail.com', NULL, 'Titulo segundo comentario espannol1', 'asdasd', 'es', 2, '2016-03-13 17:24:59', 2),
(20, 2, 'Abdiel', 'abdielcs@gmail.com', NULL, 'titulo comentario', 'aaaa', 'es', 2, '2016-03-13 17:25:14', 2),
(21, 2, 'Comentario ultimo', 'abdielcs@gmail.com', NULL, 'titulo ejemplo', 'texto ejemplo ultimo', 'en', 2, '2016-03-22 15:44:38', 4),
(22, 2, 'chucho', 'egb@g.com', NULL, 'Si', 'Este si que es un carro', 'es', 2, '2016-03-31 17:44:05', 5),
(23, 2, 'aksdghkadg', 'egb@g.com', NULL, 'smldnsd`kllkj``', 'kljlkjkljlkkl', 'en', 2, '2016-04-28 22:18:02', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje_estado`
--

CREATE TABLE `mensaje_estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensaje_estado`
--

INSERT INTO `mensaje_estado` (`id`, `nombre`) VALUES
(1, 'Enviado'),
(2, 'Aprobado'),
(3, 'Rechazado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje_tipo`
--

CREATE TABLE `mensaje_tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mensaje_tipo`
--

INSERT INTO `mensaje_tipo` (`id`, `nombre`) VALUES
(1, 'Contacto'),
(2, 'Comentario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `activa` tinyint(1) DEFAULT '0',
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`id`, `id_tipo`, `fecha_inicio`, `fecha_fin`, `activa`, `codigo`) VALUES
(18, 1, '2016-06-01 00:00:00', '2016-08-01 00:00:00', 1, '008'),
(19, 1, '2016-01-01 00:00:00', '2016-05-31 00:00:00', 1, '0003'),
(20, 2, '2016-04-01 00:00:00', '2016-08-01 00:00:00', 0, '001'),
(21, 3, '2016-04-25 00:00:00', '2016-05-05 00:00:00', 1, '00012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_auto`
--

CREATE TABLE `oferta_auto` (
  `id` int(11) NOT NULL,
  `id_oferta` int(11) NOT NULL,
  `id_auto` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `semanal` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oferta_auto`
--

INSERT INTO `oferta_auto` (`id`, `id_oferta`, `id_auto`, `precio`, `semanal`) VALUES
(27, 18, 8, '20', '100'),
(28, 18, 9, '50', '250'),
(29, 19, 8, '10', '60'),
(30, 19, 9, '14', '80'),
(31, 20, 9, '50', '150'),
(32, 20, 8, '20', '120'),
(33, 21, 8, '10', '23'),
(34, 18, 10, '123', '861'),
(35, 19, 10, '123', '861');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_tipo`
--

CREATE TABLE `oferta_tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prioridad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oferta_tipo`
--

INSERT INTO `oferta_tipo` (`id`, `nombre`, `prioridad`) VALUES
(1, 'Rates', 1),
(2, 'Wise Deal', 5),
(3, 'Last Minute', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_translation`
--

CREATE TABLE `oferta_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oferta_translation`
--

INSERT INTO `oferta_translation` (`id`, `translatable_id`, `nombre`, `locale`) VALUES
(19, 18, 'Verano', 'es'),
(20, 18, 'Summer', 'en'),
(21, 19, 'Primavera', 'es'),
(22, 19, 'Sprint', 'en'),
(23, 20, 'Oportunidad', 'es'),
(24, 20, 'Oportunity', 'en'),
(25, 21, 'Lo Mejor', 'es'),
(26, 21, 'Best', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `creado` datetime NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `creado`, `imagen`, `updated`) VALUES
(1, '2016-03-13 19:56:16', '5734d9b4d240a.jpg', '2016-05-12 21:29:56'),
(2, '2016-03-13 21:52:46', '5734d99c01813.jpg', '2016-05-12 21:29:32'),
(3, '2016-03-13 22:04:59', '5734d986e212c.jpg', '2016-05-12 21:29:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_translation`
--

CREATE TABLE `post_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `texto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `post_translation`
--

INSERT INTO `post_translation` (`id`, `translatable_id`, `titulo`, `texto`, `url`, `locale`) VALUES
(1, 1, 'Entrada primera', '<p>La memoria necesitada por una funci&oacute;n deber&aacute; ser asignada usando emalloc() o estrdup(). Estas son funciones abstractas de manejo de memoria que son similares a las funciones normales malloc() y strdup(). La memoria deber&aacute; liberarse con efree(). Hay dos tipos de memoria en este programa: la memoria que se devuelve al troceador (parser) en una variable, y la memoria que se necesita para almacenamiento temporal de datos en sus funciones. Cuando asigne una cadena a una variable que se devolver&aacute; al troceador deber&aacute; asegurarse previamente de asignar la memoria con emalloc() o con estrdup(). Esta memoria NUNCA debe ser liberada por usted, salvo si m&aacute;s adelante, en la misma funci&oacute;n, sobreescribe la asignaci&oacute;n original (aunque este h&aacute;bito de programaci&oacute;n no es bueno). Para cada trozo de memoria temporal/permanente que precise en sus funciones/librer&iacute;a deber&aacute; utilizar las funciones emalloc(), estrdup(), y efree(). Estas se comportan EXACTAMENTE como sus funciones equivalentes. Cualquier cosa que asigne con emalloc() o estrdup() deber&aacute; liberarla con efree() en uno u otro momento, salvo que se suponga que deba permanecer activa hasta el final del programa; de otro modo, se producir&aacute; una fuga de memoria. El significado de &quot;estas se comportan exactamente como sus funciones equivalentes&quot; es: si llama a efree() sobre algo que no ha sido asignado previamente con emalloc() o con estrdup(), puede provocar un fallo de segmentaci&oacute;n. Por ello debe tener cuidado y liberar toda la memoria desperdiciada. Si compila con &quot;-DDEBUG&quot;, el PHP3 mostrar&aacute; una lista de toda la memoria que fue asignada usando emalloc() y estrdup(), pero que nunca fue liberada con efree(), al terminar de ejecutar el gui&oacute;n especificado.</p>', 'primera-entrada', 'es'),
(2, 1, 'First Entry', '<p>The practice of Continuous Inspection expands on the ideas of Continuous Integration by performing an automated code review each <strong>time the code is changed. This makes it possible to detect</strong> undesirable developments such as increasing code complexity as early as possible and to counter them before it becomes to expensive. As Paul Duvall says: An inspection at every change keeps defects in range. In this chapter we will extend our existing build.xml script for Ant as well as our Jenkins job to invoke tools that, among other things, generate API documentation, calculate software metrics, and look for coding standard violations and duplicate code.</p>', 'first-entry', 'en'),
(3, 2, 'Titulo1', '<p>asdas</p>', 'titulo1', 'es'),
(4, 2, 'Tituloen', '<p>asdasd</p>', 'tituloen', 'en'),
(5, 3, 'asdasd asda sdsa', '<p>asd<strong>asda</strong>sda</p>\r\n\r\n<ul>\r\n	<li>hola</li>\r\n	<li><a href="http://universiquiz.com">http://universiquiz.com</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'asdasd-asda-sdsa', 'es'),
(6, 3, 'el hombre u la Casa', '<p>asd asd</p>', 'el-hombre-u-la-casa', 'en'),
(7, 3, 'asd', '<p>asd</p>', 'asd', 'fr'),
(8, 2, 'sda', '<p>dsa</p>', 'asd-1', 'fr'),
(9, 1, 'asd', '<p>asd</p>', 'asdasd', 'fr');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguro`
--

CREATE TABLE `seguro` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `seguro`
--

INSERT INTO `seguro` (`id`, `image`) VALUES
(1, '56c9ebcf0181c.gif'),
(6, '56c9ee65e94a3.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguro_translation`
--

CREATE TABLE `seguro_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `seguro_translation`
--

INSERT INTO `seguro_translation` (`id`, `translatable_id`, `nombre`, `descripcion`, `locale`) VALUES
(1, 1, 'Theft Protection (TP)', 'This insurance protects you against the theft of the car, does not apply to loss or damage to any parts of the car.', 'es'),
(2, 1, 'Theft Protection (TP)', 'This insurance protects you against the theft of the car, does not apply to loss or damage to any parts of the car.', 'en'),
(3, 6, 'Collision Damage Waiver (CDW)', 'It offers a maximum deductible from $500.00 to $1000.00 and\r\nensures their protection from damage or theft of the car, if you have not violated the terms of\r\nthe lease.', 'es'),
(4, 6, 'Collision Damage Waiver (CDW)', 'It offers a maximum deductible from $500.00 to $1000.00 and\r\nensures their protection from damage or theft of the car, if you have not violated the terms of\r\nthe lease.', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `texto`
--

CREATE TABLE `texto` (
  `id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `texto`
--

INSERT INTO `texto` (`id`, `id_tipo`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `texto_tipo`
--

CREATE TABLE `texto_tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `texto_tipo`
--

INSERT INTO `texto_tipo` (`id`, `nombre`) VALUES
(1, 'FAQ'),
(2, 'Tip');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `texto_translation`
--

CREATE TABLE `texto_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `texto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `texto_translation`
--

INSERT INTO `texto_translation` (`id`, `translatable_id`, `titulo`, `texto`, `locale`) VALUES
(1, 1, 'Esto es una prueba', 'Este es el texto de la prueba', 'es'),
(2, 1, 'Test', 'Test TExt', 'en'),
(3, 1, 'Testua', 'Testua la pruebe', 'fr'),
(4, 2, 'Esp Tip', 'Tip', 'es'),
(5, 2, 'En Tip En', 'Text de TIp', 'en'),
(6, 2, 'Le tipe', 'LE tipe en Fransua', 'fr');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transmision`
--

CREATE TABLE `transmision` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `transmision`
--

INSERT INTO `transmision` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transmision_translation`
--

CREATE TABLE `transmision_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `transmision_translation`
--

INSERT INTO `transmision_translation` (`id`, `translatable_id`, `nombre`, `locale`) VALUES
(1, 1, 'Std', 'es'),
(2, 1, 'Std', 'en'),
(3, 2, 'Automatica', 'es'),
(4, 2, 'Automatic', 'en');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorio`
--
ALTER TABLE `accesorio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `accesorio_translation`
--
ALTER TABLE `accesorio_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_42E77C422C2AC5D34180C698` (`translatable_id`,`locale`),
  ADD KEY `IDX_42E77C422C2AC5D3` (`translatable_id`);

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_655BED392A813255` (`id_cliente`),
  ADD KEY `IDX_655BED394DD39B43` (`id_recogida`),
  ADD KEY `IDX_655BED391D18B598` (`id_regreso`),
  ADD KEY `IDX_655BED39524E7D1F` (`id_oferta`);

--
-- Indices de la tabla `alquiler_articulo`
--
ALTER TABLE `alquiler_articulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A4856E6C358001AC` (`id_alquiler`),
  ADD KEY `IDX_A4856E6C3932A204` (`id_articulo`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_66BA25FACA802845` (`id_transmision`),
  ADD KEY `IDX_66BA25FACE25AE0A` (`id_categoria`);

--
-- Indices de la tabla `auto_categoria`
--
ALTER TABLE `auto_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auto_categoria_translation`
--
ALTER TABLE `auto_categoria_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E49D71B92C2AC5D34180C698` (`translatable_id`,`locale`),
  ADD KEY `IDX_E49D71B92C2AC5D3` (`translatable_id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6F9DB8E7FB0D0145` (`id_tipo`),
  ADD KEY `IDX_6F9DB8E7524E7D1F` (`id_oferta`),
  ADD KEY `IDX_6F9DB8E7B2F3B2EF` (`id_oferta_auto`);

--
-- Indices de la tabla `banner_tipo`
--
ALTER TABLE `banner_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lugar_translation`
--
ALTER TABLE `lugar_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9697C7A2C2AC5D34180C698` (`translatable_id`,`locale`),
  ADD KEY `IDX_9697C7A2C2AC5D3` (`translatable_id`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9B631D01FB0D0145` (`id_tipo`),
  ADD KEY `IDX_9B631D016A540E` (`id_estado`);

--
-- Indices de la tabla `mensaje_estado`
--
ALTER TABLE `mensaje_estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensaje_tipo`
--
ALTER TABLE `mensaje_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ofertacodigo` (`codigo`),
  ADD KEY `IDX_7479C8F2FB0D0145` (`id_tipo`);

--
-- Indices de la tabla `oferta_auto`
--
ALTER TABLE `oferta_auto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ofertaauto` (`id_oferta`,`id_auto`),
  ADD KEY `IDX_AAE17F18524E7D1F` (`id_oferta`),
  ADD KEY `IDX_AAE17F18ED9A39F8` (`id_auto`);

--
-- Indices de la tabla `oferta_tipo`
--
ALTER TABLE `oferta_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oferta_translation`
--
ALTER TABLE `oferta_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FE1B76A42C2AC5D34180C698` (`translatable_id`,`locale`),
  ADD KEY `IDX_FE1B76A42C2AC5D3` (`translatable_id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `post_translation`
--
ALTER TABLE `post_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5829CF402C2AC5D34180C698` (`translatable_id`,`locale`),
  ADD KEY `IDX_5829CF402C2AC5D3` (`translatable_id`);

--
-- Indices de la tabla `seguro`
--
ALTER TABLE `seguro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguro_translation`
--
ALTER TABLE `seguro_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_815E654D2C2AC5D34180C698` (`translatable_id`,`locale`),
  ADD KEY `IDX_815E654D2C2AC5D3` (`translatable_id`);

--
-- Indices de la tabla `texto`
--
ALTER TABLE `texto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A344FF0FB0D0145` (`id_tipo`);

--
-- Indices de la tabla `texto_tipo`
--
ALTER TABLE `texto_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `texto_translation`
--
ALTER TABLE `texto_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1FDF5C702C2AC5D34180C698` (`translatable_id`,`locale`),
  ADD KEY `IDX_1FDF5C702C2AC5D3` (`translatable_id`);

--
-- Indices de la tabla `transmision`
--
ALTER TABLE `transmision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transmision_translation`
--
ALTER TABLE `transmision_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DBCC0E642C2AC5D34180C698` (`translatable_id`,`locale`),
  ADD KEY `IDX_DBCC0E642C2AC5D3` (`translatable_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesorio_translation`
--
ALTER TABLE `accesorio_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `alquiler_articulo`
--
ALTER TABLE `alquiler_articulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `auto_categoria`
--
ALTER TABLE `auto_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auto_categoria_translation`
--
ALTER TABLE `auto_categoria_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `banner_tipo`
--
ALTER TABLE `banner_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `lugar_translation`
--
ALTER TABLE `lugar_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `mensaje_estado`
--
ALTER TABLE `mensaje_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `mensaje_tipo`
--
ALTER TABLE `mensaje_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `oferta_auto`
--
ALTER TABLE `oferta_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `oferta_tipo`
--
ALTER TABLE `oferta_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `oferta_translation`
--
ALTER TABLE `oferta_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `post_translation`
--
ALTER TABLE `post_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `seguro_translation`
--
ALTER TABLE `seguro_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `texto`
--
ALTER TABLE `texto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `texto_tipo`
--
ALTER TABLE `texto_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `texto_translation`
--
ALTER TABLE `texto_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `transmision`
--
ALTER TABLE `transmision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `transmision_translation`
--
ALTER TABLE `transmision_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesorio`
--
ALTER TABLE `accesorio`
  ADD CONSTRAINT `FK_F26283D3BF396750` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `accesorio_translation`
--
ALTER TABLE `accesorio_translation`
  ADD CONSTRAINT `FK_42E77C422C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `accesorio` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `FK_655BED391D18B598` FOREIGN KEY (`id_regreso`) REFERENCES `lugar` (`id`),
  ADD CONSTRAINT `FK_655BED392A813255` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_655BED394DD39B43` FOREIGN KEY (`id_recogida`) REFERENCES `lugar` (`id`),
  ADD CONSTRAINT `FK_655BED39524E7D1F` FOREIGN KEY (`id_oferta`) REFERENCES `oferta` (`id`);

--
-- Filtros para la tabla `alquiler_articulo`
--
ALTER TABLE `alquiler_articulo`
  ADD CONSTRAINT `FK_A4856E6C358001AC` FOREIGN KEY (`id_alquiler`) REFERENCES `alquiler` (`id`),
  ADD CONSTRAINT `FK_A4856E6C3932A204` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id`);

--
-- Filtros para la tabla `auto`
--
ALTER TABLE `auto`
  ADD CONSTRAINT `FK_66BA25FABF396750` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_66BA25FACA802845` FOREIGN KEY (`id_transmision`) REFERENCES `transmision` (`id`),
  ADD CONSTRAINT `FK_66BA25FACE25AE0A` FOREIGN KEY (`id_categoria`) REFERENCES `auto_categoria` (`id`);

--
-- Filtros para la tabla `auto_categoria_translation`
--
ALTER TABLE `auto_categoria_translation`
  ADD CONSTRAINT `FK_E49D71B92C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `auto_categoria` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `FK_6F9DB8E7524E7D1F` FOREIGN KEY (`id_oferta`) REFERENCES `oferta` (`id`),
  ADD CONSTRAINT `FK_6F9DB8E7B2F3B2EF` FOREIGN KEY (`id_oferta_auto`) REFERENCES `oferta_auto` (`id`),
  ADD CONSTRAINT `FK_6F9DB8E7FB0D0145` FOREIGN KEY (`id_tipo`) REFERENCES `banner_tipo` (`id`);

--
-- Filtros para la tabla `lugar_translation`
--
ALTER TABLE `lugar_translation`
  ADD CONSTRAINT `FK_9697C7A2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `lugar` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `FK_9B631D016A540E` FOREIGN KEY (`id_estado`) REFERENCES `mensaje_estado` (`id`),
  ADD CONSTRAINT `FK_9B631D01FB0D0145` FOREIGN KEY (`id_tipo`) REFERENCES `mensaje_tipo` (`id`);

--
-- Filtros para la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `FK_7479C8F2FB0D0145` FOREIGN KEY (`id_tipo`) REFERENCES `oferta_tipo` (`id`);

--
-- Filtros para la tabla `oferta_auto`
--
ALTER TABLE `oferta_auto`
  ADD CONSTRAINT `FK_AAE17F18524E7D1F` FOREIGN KEY (`id_oferta`) REFERENCES `oferta` (`id`),
  ADD CONSTRAINT `FK_AAE17F18ED9A39F8` FOREIGN KEY (`id_auto`) REFERENCES `auto` (`id`);

--
-- Filtros para la tabla `oferta_translation`
--
ALTER TABLE `oferta_translation`
  ADD CONSTRAINT `FK_FE1B76A42C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `oferta` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `post_translation`
--
ALTER TABLE `post_translation`
  ADD CONSTRAINT `FK_5829CF402C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `post` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `seguro`
--
ALTER TABLE `seguro`
  ADD CONSTRAINT `FK_5969244DBF396750` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `seguro_translation`
--
ALTER TABLE `seguro_translation`
  ADD CONSTRAINT `FK_815E654D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `seguro` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `texto`
--
ALTER TABLE `texto`
  ADD CONSTRAINT `FK_A344FF0FB0D0145` FOREIGN KEY (`id_tipo`) REFERENCES `texto_tipo` (`id`);

--
-- Filtros para la tabla `texto_translation`
--
ALTER TABLE `texto_translation`
  ADD CONSTRAINT `FK_1FDF5C702C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `texto` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `transmision_translation`
--
ALTER TABLE `transmision_translation`
  ADD CONSTRAINT `FK_DBCC0E642C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `transmision` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
