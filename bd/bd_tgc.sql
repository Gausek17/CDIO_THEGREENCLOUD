-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2020 a las 16:24:08
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_tgc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campo`
--

CREATE TABLE `campo` (
  `id_campo` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `campo`
--

INSERT INTO `campo` (`id_campo`, `nombre`, `id_cliente`) VALUES
(1, 'Campo ', 1),
(2, 'Camposanto', 3),
(3, 'Campillo', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `mail` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `telefono`, `mail`, `password`) VALUES
(1, 'Bancal', '655 555 555', 'bancales@bancal.es', '1234'),
(3, 'AlCampo', '666 666 666', 'alcampo.gerente@alcampo.es', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordenadas`
--

CREATE TABLE `coordenadas` (
  `id_coordenada` int(11) NOT NULL,
  `latitud` float DEFAULT NULL,
  `longitud` float DEFAULT NULL,
  `id_parcela` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coordenadas`
--

INSERT INTO `coordenadas` (`id_coordenada`, `latitud`, `longitud`, `id_parcela`) VALUES
(1, 63.8298, -22.6958, 1),
(2, 63.8298, -22.6981, 1),
(3, 63.8283, -22.6982, 1),
(4, 63.8281, -22.6933, 1),
(5, 63.8251, -22.7042, 2),
(6, 63.826, -22.6991, 2),
(7, 63.825, -22.6971, 2),
(8, 63.8239, -22.703, 2),
(9, 64.8113, -22.8168, 3),
(10, 64.8179, -22.8133, 3),
(11, 64.8164, -22.8044, 3),
(12, 64.812, -22.8132, 3),
(13, 64.8071, -22.781, 4),
(14, 64.8091, -22.7761, 4),
(15, 64.8034, -22.7748, 4),
(16, 64.8048, -22.7685, 4),
(17, 63.517, -19.5216, 5),
(18, 63.5082, -19.5394, 5),
(19, 63.4964, -19.4983, 5),
(20, 63.5085, -19.4861, 5),
(21, 63.8864, -16.6007, 6),
(22, 63.883, -16.5935, 6),
(23, 63.8869, -16.5839, 6),
(24, 63.8895, -16.5896, 6),
(25, 63.8927, -16.5871, 7),
(26, 63.8964, -16.5786, 7),
(27, 63.8927, -16.5872, 7),
(28, 63.8904, -16.5842, 7),
(29, 63.8979, -16.5796, 8),
(30, 63.8946, -16.5727, 8),
(31, 63.8977, -16.5657, 8),
(32, 63.9012, -16.5719, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicion`
--

CREATE TABLE `medicion` (
  `id_medicion` int(11) NOT NULL,
  `medicion` varchar(40) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_parcela` int(11) DEFAULT NULL,
  `id_sonda` int(11) NOT NULL,
  `tipoDato` enum('Temperatura','Humedad','Salinidad','Luminosidad') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicion`
--

INSERT INTO `medicion` (`id_medicion`, `medicion`, `fecha`, `hora`, `id_parcela`, `id_sonda`, `tipoDato`) VALUES
(1, '13', '2020-03-11', '01:00:00', 2, 3, 'Temperatura'),
(2, '12', '2020-03-11', '02:00:00', 2, 3, 'Temperatura'),
(3, '12', '2020-03-11', '03:00:00', 2, 3, 'Temperatura'),
(4, '11', '2020-03-11', '04:00:00', 2, 3, 'Temperatura'),
(5, '14', '2020-03-11', '05:00:00', 2, 3, 'Temperatura'),
(6, '15', '2020-03-11', '06:00:00', 2, 3, 'Temperatura'),
(7, '16', '2020-03-11', '07:00:00', 2, 3, 'Temperatura'),
(8, '17', '2020-03-11', '08:00:00', 2, 3, 'Temperatura'),
(9, '17', '2020-03-11', '09:00:00', 2, 3, 'Temperatura'),
(10, '18', '2020-03-11', '10:00:00', 2, 3, 'Temperatura'),
(11, '21', '2020-03-11', '11:00:00', 2, 3, 'Temperatura'),
(12, '22', '2020-03-11', '12:00:00', 2, 3, 'Temperatura'),
(13, '23', '2020-03-11', '13:00:00', 2, 3, 'Temperatura'),
(14, '23', '2020-03-11', '14:00:00', 2, 3, 'Temperatura'),
(15, '23', '2020-03-11', '15:00:00', 2, 3, 'Temperatura'),
(16, '22', '2020-03-11', '16:00:00', 2, 3, 'Temperatura'),
(17, '23', '2020-03-11', '17:00:00', 2, 3, 'Temperatura'),
(18, '21', '2020-03-11', '18:00:00', 2, 3, 'Temperatura'),
(19, '19', '2020-03-11', '19:00:00', 2, 3, 'Temperatura'),
(20, '18', '2020-03-11', '20:00:00', 2, 3, 'Temperatura'),
(21, '16', '2020-03-11', '21:00:00', 2, 3, 'Temperatura'),
(22, '15', '2020-03-11', '22:00:00', 2, 3, 'Temperatura'),
(23, '14', '2020-03-11', '23:00:00', 2, 3, 'Temperatura'),
(24, '13', '2020-03-11', '00:00:00', 2, 3, 'Temperatura'),
(25, '0', '2020-03-11', '01:00:00', 2, 3, 'Luminosidad'),
(26, '0', '2020-03-11', '02:00:00', 2, 3, 'Luminosidad'),
(27, '0', '2020-03-11', '03:00:00', 2, 3, 'Luminosidad'),
(28, '0', '2020-03-11', '04:00:00', 2, 3, 'Luminosidad'),
(29, '0', '2020-03-11', '05:00:00', 2, 3, 'Luminosidad'),
(30, '7', '2020-03-11', '06:00:00', 2, 3, 'Luminosidad'),
(31, '12', '2020-03-11', '07:00:00', 2, 3, 'Luminosidad'),
(32, '19', '2020-03-11', '08:00:00', 2, 3, 'Luminosidad'),
(33, '25', '2020-03-11', '09:00:00', 2, 3, 'Luminosidad'),
(34, '37', '2020-03-11', '10:00:00', 2, 3, 'Luminosidad'),
(35, '54', '2020-03-11', '11:00:00', 2, 3, 'Luminosidad'),
(36, '72', '2020-03-11', '12:00:00', 2, 3, 'Luminosidad'),
(37, '79', '2020-03-11', '13:00:00', 2, 3, 'Luminosidad'),
(38, '81', '2020-03-11', '14:00:00', 2, 3, 'Luminosidad'),
(39, '82', '2020-03-11', '15:00:00', 2, 3, 'Luminosidad'),
(40, '81', '2020-03-11', '16:00:00', 2, 3, 'Luminosidad'),
(41, '72', '2020-03-11', '17:00:00', 2, 3, 'Luminosidad'),
(42, '67', '2020-03-11', '18:00:00', 2, 3, 'Luminosidad'),
(43, '54', '2020-03-11', '19:00:00', 2, 3, 'Luminosidad'),
(44, '37', '2020-03-11', '20:00:00', 2, 3, 'Luminosidad'),
(45, '14', '2020-03-11', '21:00:00', 2, 3, 'Luminosidad'),
(46, '3', '2020-03-11', '22:00:00', 2, 3, 'Luminosidad'),
(47, '0', '2020-03-11', '23:00:00', 2, 3, 'Luminosidad'),
(48, '0', '2020-03-11', '00:00:00', 2, 3, 'Luminosidad'),
(49, '74', '2020-03-11', '01:00:00', 2, 3, 'Humedad'),
(50, '77', '2020-03-11', '02:00:00', 2, 3, 'Humedad'),
(51, '85', '2020-03-11', '03:00:00', 2, 3, 'Humedad'),
(52, '87', '2020-03-11', '04:00:00', 2, 3, 'Humedad'),
(53, '84', '2020-03-11', '05:00:00', 2, 3, 'Humedad'),
(54, '77', '2020-03-11', '06:00:00', 2, 3, 'Humedad'),
(55, '76', '2020-03-11', '07:00:00', 2, 3, 'Humedad'),
(56, '76', '2020-03-11', '08:00:00', 2, 3, 'Humedad'),
(57, '74', '2020-03-11', '09:00:00', 2, 3, 'Humedad'),
(58, '75', '2020-03-11', '10:00:00', 2, 3, 'Humedad'),
(59, '66', '2020-03-11', '11:00:00', 2, 3, 'Humedad'),
(60, '67', '2020-03-11', '12:00:00', 2, 3, 'Humedad'),
(61, '62', '2020-03-11', '13:00:00', 2, 3, 'Humedad'),
(62, '63', '2020-03-11', '14:00:00', 2, 3, 'Humedad'),
(63, '58', '2020-03-11', '15:00:00', 2, 3, 'Humedad'),
(64, '59', '2020-03-11', '16:00:00', 2, 3, 'Humedad'),
(65, '53', '2020-03-11', '17:00:00', 2, 3, 'Humedad'),
(66, '55', '2020-03-11', '18:00:00', 2, 3, 'Humedad'),
(67, '73', '2020-03-11', '19:00:00', 2, 3, 'Humedad'),
(68, '75', '2020-03-11', '20:00:00', 2, 3, 'Humedad'),
(69, '74', '2020-03-11', '21:00:00', 2, 3, 'Humedad'),
(70, '77', '2020-03-11', '22:00:00', 2, 3, 'Humedad'),
(71, '81', '2020-03-11', '23:00:00', 2, 3, 'Humedad'),
(72, '80', '2020-03-11', '00:00:00', 2, 3, 'Humedad'),
(73, '18', '2020-03-11', '01:00:00', 2, 3, 'Salinidad'),
(74, '17', '2020-03-11', '02:00:00', 2, 3, 'Salinidad'),
(75, '17', '2020-03-11', '03:00:00', 2, 3, 'Salinidad'),
(76, '19', '2020-03-11', '04:00:00', 2, 3, 'Salinidad'),
(77, '17', '2020-03-11', '05:00:00', 2, 3, 'Salinidad'),
(78, '18', '2020-03-11', '06:00:00', 2, 3, 'Salinidad'),
(79, '18', '2020-03-11', '07:00:00', 2, 3, 'Salinidad'),
(80, '18', '2020-03-11', '08:00:00', 2, 3, 'Salinidad'),
(81, '17', '2020-03-11', '09:00:00', 2, 3, 'Salinidad'),
(82, '18', '2020-03-11', '10:00:00', 2, 3, 'Salinidad'),
(83, '17', '2020-03-11', '11:00:00', 2, 3, 'Salinidad'),
(84, '18', '2020-03-11', '12:00:00', 2, 3, 'Salinidad'),
(85, '17', '2020-03-11', '13:00:00', 2, 3, 'Salinidad'),
(86, '17', '2020-03-11', '14:00:00', 2, 3, 'Salinidad'),
(87, '18', '2020-03-11', '15:00:00', 2, 3, 'Salinidad'),
(88, '18', '2020-03-11', '16:00:00', 2, 3, 'Salinidad'),
(89, '17', '2020-03-11', '17:00:00', 2, 3, 'Salinidad'),
(90, '18', '2020-03-11', '18:00:00', 2, 3, 'Salinidad'),
(91, '18', '2020-03-11', '19:00:00', 2, 3, 'Salinidad'),
(92, '18', '2020-03-11', '20:00:00', 2, 3, 'Salinidad'),
(93, '18', '2020-03-11', '21:00:00', 2, 3, 'Salinidad'),
(94, '17', '2020-03-11', '22:00:00', 2, 3, 'Salinidad'),
(95, '18', '2020-03-11', '23:00:00', 2, 3, 'Salinidad'),
(96, '18', '2020-03-11', '00:00:00', 2, 3, 'Salinidad'),
(97, '15', '2020-03-11', '01:00:00', 3, 4, 'Temperatura'),
(98, '14', '2020-03-11', '02:00:00', 3, 4, 'Temperatura'),
(99, '14', '2020-03-11', '03:00:00', 3, 4, 'Temperatura'),
(100, '13', '2020-03-11', '04:00:00', 3, 4, 'Temperatura'),
(101, '15', '2020-03-11', '05:00:00', 3, 4, 'Temperatura'),
(102, '16', '2020-03-11', '06:00:00', 3, 4, 'Temperatura'),
(103, '16', '2020-03-11', '07:00:00', 3, 4, 'Temperatura'),
(104, '20', '2020-03-11', '08:00:00', 3, 4, 'Temperatura'),
(105, '19', '2020-03-11', '09:00:00', 3, 4, 'Temperatura'),
(106, '21', '2020-03-11', '10:00:00', 3, 4, 'Temperatura'),
(107, '23', '2020-03-11', '11:00:00', 3, 4, 'Temperatura'),
(108, '23', '2020-03-11', '12:00:00', 3, 4, 'Temperatura'),
(109, '24', '2020-03-11', '13:00:00', 3, 4, 'Temperatura'),
(110, '24', '2020-03-11', '14:00:00', 3, 4, 'Temperatura'),
(111, '25', '2020-03-11', '15:00:00', 3, 4, 'Temperatura'),
(112, '24', '2020-03-11', '16:00:00', 3, 4, 'Temperatura'),
(113, '25', '2020-03-11', '17:00:00', 3, 4, 'Temperatura'),
(114, '23', '2020-03-11', '18:00:00', 3, 4, 'Temperatura'),
(115, '21', '2020-03-11', '19:00:00', 3, 4, 'Temperatura'),
(116, '20', '2020-03-11', '20:00:00', 3, 4, 'Temperatura'),
(117, '18', '2020-03-11', '21:00:00', 3, 4, 'Temperatura'),
(118, '16', '2020-03-11', '22:00:00', 3, 4, 'Temperatura'),
(119, '15', '2020-03-11', '23:00:00', 3, 4, 'Temperatura'),
(120, '15', '2020-03-11', '00:00:00', 3, 4, 'Temperatura'),
(121, '0', '2020-03-11', '01:00:00', 3, 4, 'Luminosidad'),
(122, '0', '2020-03-11', '02:00:00', 3, 4, 'Luminosidad'),
(123, '0', '2020-03-11', '03:00:00', 3, 4, 'Luminosidad'),
(124, '0', '2020-03-11', '04:00:00', 3, 4, 'Luminosidad'),
(125, '0', '2020-03-11', '05:00:00', 3, 4, 'Luminosidad'),
(126, '8', '2020-03-11', '06:00:00', 3, 4, 'Luminosidad'),
(127, '10', '2020-03-11', '07:00:00', 3, 4, 'Luminosidad'),
(128, '18', '2020-03-11', '08:00:00', 3, 4, 'Luminosidad'),
(129, '24', '2020-03-11', '09:00:00', 3, 4, 'Luminosidad'),
(130, '35', '2020-03-11', '10:00:00', 3, 4, 'Luminosidad'),
(131, '49', '2020-03-11', '11:00:00', 3, 4, 'Luminosidad'),
(132, '71', '2020-03-11', '12:00:00', 3, 4, 'Luminosidad'),
(133, '77', '2020-03-11', '13:00:00', 3, 4, 'Luminosidad'),
(134, '80', '2020-03-11', '14:00:00', 3, 4, 'Luminosidad'),
(135, '81', '2020-03-11', '15:00:00', 3, 4, 'Luminosidad'),
(136, '79', '2020-03-11', '16:00:00', 3, 4, 'Luminosidad'),
(137, '71', '2020-03-11', '17:00:00', 3, 4, 'Luminosidad'),
(138, '65', '2020-03-11', '18:00:00', 3, 4, 'Luminosidad'),
(139, '52', '2020-03-11', '19:00:00', 3, 4, 'Luminosidad'),
(140, '35', '2020-03-11', '20:00:00', 3, 4, 'Luminosidad'),
(141, '12', '2020-03-11', '21:00:00', 3, 4, 'Luminosidad'),
(142, '2', '2020-03-11', '22:00:00', 3, 4, 'Luminosidad'),
(143, '0', '2020-03-11', '23:00:00', 3, 4, 'Luminosidad'),
(144, '0', '2020-03-11', '00:00:00', 3, 4, 'Luminosidad'),
(145, '77', '2020-03-11', '01:00:00', 3, 4, 'Humedad'),
(146, '79', '2020-03-11', '02:00:00', 3, 4, 'Humedad'),
(147, '87', '2020-03-11', '03:00:00', 3, 4, 'Humedad'),
(148, '89', '2020-03-11', '04:00:00', 3, 4, 'Humedad'),
(149, '87', '2020-03-11', '05:00:00', 3, 4, 'Humedad'),
(150, '79', '2020-03-11', '06:00:00', 3, 4, 'Humedad'),
(151, '79', '2020-03-11', '07:00:00', 3, 4, 'Humedad'),
(152, '78', '2020-03-11', '08:00:00', 3, 4, 'Humedad'),
(153, '78', '2020-03-11', '09:00:00', 3, 4, 'Humedad'),
(154, '77', '2020-03-11', '10:00:00', 3, 4, 'Humedad'),
(155, '69', '2020-03-11', '11:00:00', 3, 4, 'Humedad'),
(156, '69', '2020-03-11', '12:00:00', 3, 4, 'Humedad'),
(157, '65', '2020-03-11', '13:00:00', 3, 4, 'Humedad'),
(158, '65', '2020-03-11', '14:00:00', 3, 4, 'Humedad'),
(159, '59', '2020-03-11', '15:00:00', 3, 4, 'Humedad'),
(160, '62', '2020-03-11', '16:00:00', 3, 4, 'Humedad'),
(161, '55', '2020-03-11', '17:00:00', 3, 4, 'Humedad'),
(162, '58', '2020-03-11', '18:00:00', 3, 4, 'Humedad'),
(163, '77', '2020-03-11', '19:00:00', 3, 4, 'Humedad'),
(164, '77', '2020-03-11', '20:00:00', 3, 4, 'Humedad'),
(165, '78', '2020-03-11', '21:00:00', 3, 4, 'Humedad'),
(166, '81', '2020-03-11', '22:00:00', 3, 4, 'Humedad'),
(167, '85', '2020-03-11', '23:00:00', 3, 4, 'Humedad'),
(168, '84', '2020-03-11', '00:00:00', 3, 4, 'Humedad'),
(169, '15', '2020-03-11', '01:00:00', 3, 4, 'Salinidad'),
(170, '16', '2020-03-11', '02:00:00', 3, 4, 'Salinidad'),
(171, '15', '2020-03-11', '03:00:00', 3, 4, 'Salinidad'),
(172, '17', '2020-03-11', '04:00:00', 3, 4, 'Salinidad'),
(173, '16', '2020-03-11', '05:00:00', 3, 4, 'Salinidad'),
(174, '17', '2020-03-11', '06:00:00', 3, 4, 'Salinidad'),
(175, '16', '2020-03-11', '07:00:00', 3, 4, 'Salinidad'),
(176, '16', '2020-03-11', '08:00:00', 3, 4, 'Salinidad'),
(177, '16', '2020-03-11', '09:00:00', 3, 4, 'Salinidad'),
(178, '16', '2020-03-11', '10:00:00', 3, 4, 'Salinidad'),
(179, '16', '2020-03-11', '11:00:00', 3, 4, 'Salinidad'),
(180, '17', '2020-03-11', '12:00:00', 3, 4, 'Salinidad'),
(181, '15', '2020-03-11', '13:00:00', 3, 4, 'Salinidad'),
(182, '15', '2020-03-11', '14:00:00', 3, 4, 'Salinidad'),
(183, '17', '2020-03-11', '15:00:00', 3, 4, 'Salinidad'),
(184, '16', '2020-03-11', '16:00:00', 3, 4, 'Salinidad'),
(185, '15', '2020-03-11', '17:00:00', 3, 4, 'Salinidad'),
(186, '16', '2020-03-11', '18:00:00', 3, 4, 'Salinidad'),
(187, '17', '2020-03-11', '19:00:00', 3, 4, 'Salinidad'),
(188, '16', '2020-03-11', '20:00:00', 3, 4, 'Salinidad'),
(189, '16', '2020-03-11', '21:00:00', 3, 4, 'Salinidad'),
(190, '15', '2020-03-11', '22:00:00', 3, 4, 'Salinidad'),
(191, '17', '2020-03-11', '23:00:00', 3, 4, 'Salinidad'),
(192, '16', '2020-03-11', '00:00:00', 3, 4, 'Salinidad'),
(290, '11', '2020-03-11', '01:00:00', 1, 1, 'Temperatura'),
(291, '12', '2020-03-11', '02:00:00', 1, 1, 'Temperatura'),
(292, '11', '2020-03-11', '03:00:00', 1, 1, 'Temperatura'),
(293, '12', '2020-03-11', '04:00:00', 1, 1, 'Temperatura'),
(294, '13', '2020-03-11', '05:00:00', 1, 1, 'Temperatura'),
(295, '14', '2020-03-11', '06:00:00', 1, 1, 'Temperatura'),
(296, '14', '2020-03-11', '07:00:00', 1, 1, 'Temperatura'),
(297, '16', '2020-03-11', '08:00:00', 1, 1, 'Temperatura'),
(298, '17', '2020-03-11', '09:00:00', 1, 1, 'Temperatura'),
(299, '18', '2020-03-11', '10:00:00', 1, 1, 'Temperatura'),
(300, '19', '2020-03-11', '11:00:00', 1, 1, 'Temperatura'),
(301, '21', '2020-03-11', '12:00:00', 1, 1, 'Temperatura'),
(302, '22', '2020-03-11', '13:00:00', 1, 1, 'Temperatura'),
(303, '22', '2020-03-11', '14:00:00', 1, 1, 'Temperatura'),
(304, '23', '2020-03-11', '15:00:00', 1, 1, 'Temperatura'),
(305, '23', '2020-03-11', '16:00:00', 1, 1, 'Temperatura'),
(306, '22', '2020-03-11', '17:00:00', 1, 1, 'Temperatura'),
(307, '21', '2020-03-11', '18:00:00', 1, 1, 'Temperatura'),
(308, '19', '2020-03-11', '19:00:00', 1, 1, 'Temperatura'),
(309, '18', '2020-03-11', '20:00:00', 1, 1, 'Temperatura'),
(310, '16', '2020-03-11', '21:00:00', 1, 1, 'Temperatura'),
(311, '14', '2020-03-11', '22:00:00', 1, 1, 'Temperatura'),
(312, '14', '2020-03-11', '23:00:00', 1, 1, 'Temperatura'),
(313, '13', '2020-03-11', '00:00:00', 1, 1, 'Temperatura'),
(314, '0', '2020-03-11', '01:00:00', 1, 1, 'Luminosidad'),
(315, '0', '2020-03-11', '02:00:00', 1, 1, 'Luminosidad'),
(316, '0', '2020-03-11', '03:00:00', 1, 1, 'Luminosidad'),
(317, '0', '2020-03-11', '04:00:00', 1, 1, 'Luminosidad'),
(318, '0', '2020-03-11', '05:00:00', 1, 1, 'Luminosidad'),
(319, '12', '2020-03-11', '06:00:00', 1, 1, 'Luminosidad'),
(320, '14', '2020-03-11', '07:00:00', 1, 1, 'Luminosidad'),
(321, '22', '2020-03-11', '08:00:00', 1, 1, 'Luminosidad'),
(322, '22', '2020-03-11', '09:00:00', 1, 1, 'Luminosidad'),
(323, '38', '2020-03-11', '10:00:00', 1, 1, 'Luminosidad'),
(324, '53', '2020-03-11', '11:00:00', 1, 1, 'Luminosidad'),
(325, '75', '2020-03-11', '12:00:00', 1, 1, 'Luminosidad'),
(326, '81', '2020-03-11', '13:00:00', 1, 1, 'Luminosidad'),
(327, '85', '2020-03-11', '14:00:00', 1, 1, 'Luminosidad'),
(328, '86', '2020-03-11', '15:00:00', 1, 1, 'Luminosidad'),
(329, '88', '2020-03-11', '16:00:00', 1, 1, 'Luminosidad'),
(330, '73', '2020-03-11', '17:00:00', 1, 1, 'Luminosidad'),
(331, '69', '2020-03-11', '18:00:00', 1, 1, 'Luminosidad'),
(332, '58', '2020-03-11', '19:00:00', 1, 1, 'Luminosidad'),
(333, '39', '2020-03-11', '20:00:00', 1, 1, 'Luminosidad'),
(334, '18', '2020-03-11', '21:00:00', 1, 1, 'Luminosidad'),
(335, '2', '2020-03-11', '22:00:00', 1, 1, 'Luminosidad'),
(336, '0', '2020-03-11', '23:00:00', 1, 1, 'Luminosidad'),
(337, '0', '2020-03-11', '00:00:00', 1, 1, 'Luminosidad'),
(338, '79', '2020-03-11', '01:00:00', 1, 1, 'Humedad'),
(339, '82', '2020-03-11', '02:00:00', 1, 1, 'Humedad'),
(340, '89', '2020-03-11', '03:00:00', 1, 1, 'Humedad'),
(341, '89', '2020-03-11', '04:00:00', 1, 1, 'Humedad'),
(342, '88', '2020-03-11', '05:00:00', 1, 1, 'Humedad'),
(343, '82', '2020-03-11', '06:00:00', 1, 1, 'Humedad'),
(344, '79', '2020-03-11', '07:00:00', 1, 1, 'Humedad'),
(345, '79', '2020-03-11', '08:00:00', 1, 1, 'Humedad'),
(346, '78', '2020-03-11', '09:00:00', 1, 1, 'Humedad'),
(347, '77', '2020-03-11', '10:00:00', 1, 1, 'Humedad'),
(348, '69', '2020-03-11', '11:00:00', 1, 1, 'Humedad'),
(349, '69', '2020-03-11', '12:00:00', 1, 1, 'Humedad'),
(350, '66', '2020-03-11', '13:00:00', 1, 1, 'Humedad'),
(351, '67', '2020-03-11', '14:00:00', 1, 1, 'Humedad'),
(352, '59', '2020-03-11', '15:00:00', 1, 1, 'Humedad'),
(353, '57', '2020-03-11', '16:00:00', 1, 1, 'Humedad'),
(354, '58', '2020-03-11', '17:00:00', 1, 1, 'Humedad'),
(355, '55', '2020-03-11', '18:00:00', 1, 1, 'Humedad'),
(356, '77', '2020-03-11', '19:00:00', 1, 1, 'Humedad'),
(357, '79', '2020-03-11', '20:00:00', 1, 1, 'Humedad'),
(358, '80', '2020-03-11', '21:00:00', 1, 1, 'Humedad'),
(359, '84', '2020-03-11', '22:00:00', 1, 1, 'Humedad'),
(360, '87', '2020-03-11', '23:00:00', 1, 1, 'Humedad'),
(361, '87', '2020-03-11', '00:00:00', 1, 1, 'Humedad'),
(362, '15', '2020-03-11', '01:00:00', 1, 1, 'Salinidad'),
(363, '16', '2020-03-11', '02:00:00', 1, 1, 'Salinidad'),
(364, '15', '2020-03-11', '03:00:00', 1, 1, 'Salinidad'),
(365, '17', '2020-03-11', '04:00:00', 1, 1, 'Salinidad'),
(366, '16', '2020-03-11', '05:00:00', 1, 1, 'Salinidad'),
(367, '17', '2020-03-11', '06:00:00', 1, 1, 'Salinidad'),
(368, '16', '2020-03-11', '07:00:00', 1, 1, 'Salinidad'),
(369, '16', '2020-03-11', '08:00:00', 1, 1, 'Salinidad'),
(370, '16', '2020-03-11', '09:00:00', 1, 1, 'Salinidad'),
(371, '16', '2020-03-11', '10:00:00', 1, 1, 'Salinidad'),
(372, '16', '2020-03-11', '11:00:00', 1, 1, 'Salinidad'),
(373, '17', '2020-03-11', '12:00:00', 1, 1, 'Salinidad'),
(374, '15', '2020-03-11', '13:00:00', 1, 1, 'Salinidad'),
(375, '15', '2020-03-11', '14:00:00', 1, 1, 'Salinidad'),
(376, '17', '2020-03-11', '15:00:00', 1, 1, 'Salinidad'),
(377, '16', '2020-03-11', '16:00:00', 1, 1, 'Salinidad'),
(378, '15', '2020-03-11', '17:00:00', 1, 1, 'Salinidad'),
(379, '16', '2020-03-11', '18:00:00', 1, 1, 'Salinidad'),
(380, '17', '2020-03-11', '19:00:00', 1, 1, 'Salinidad'),
(381, '16', '2020-03-11', '20:00:00', 1, 1, 'Salinidad'),
(382, '16', '2020-03-11', '21:00:00', 1, 1, 'Salinidad'),
(383, '15', '2020-03-11', '22:00:00', 1, 1, 'Salinidad'),
(384, '17', '2020-03-11', '23:00:00', 1, 1, 'Salinidad'),
(385, '16', '2020-03-11', '00:00:00', 1, 1, 'Salinidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parcela`
--

CREATE TABLE `parcela` (
  `id_parcela` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `id_campo` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `parcela`
--

INSERT INTO `parcela` (`id_parcela`, `color`, `id_campo`, `nombre`) VALUES
(1, '#ff8000', 1, 'Parcela de Patatas'),
(2, '#3b83bd', 1, 'Parcela de Zanahorias'),
(3, '#94DF19', 1, 'Parcela de Limones'),
(4, '#138A7B', 2, 'Parcela de Naranjas'),
(5, '#0e1877', 2, 'Parcela de Melocotones'),
(6, '#5b279d', 2, 'Parcela de Melones'),
(7, '#17c561', 3, 'Parcela de Fresas'),
(8, '#cfdb11', 3, 'Parcela de Alcachofas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_usuarios`
--

CREATE TABLE `permisos_usuarios` (
  `id_permiso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_parcela` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos_usuarios`
--

INSERT INTO `permisos_usuarios` (`id_permiso`, `id_usuario`, `id_parcela`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 15, 2),
(5, 1, 3),
(6, 2, 3),
(7, 8, 1),
(8, 17, 1),
(9, 18, 3),
(12, 21, 4),
(13, 21, 5),
(14, 21, 6),
(15, 21, 7),
(16, 21, 8),
(19, 22, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Trabajador de campo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sonda`
--

CREATE TABLE `sonda` (
  `id_sonda` int(11) NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `id_parcela` int(11) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sonda`
--

INSERT INTO `sonda` (`id_sonda`, `estado`, `id_parcela`, `lat`, `lng`) VALUES
(1, 'Funcional', 1, 63.828, -22.693),
(2, 'Funcional', 1, 63.8298, -22.698),
(3, 'Funcional', 2, 63.8251, -22.7),
(4, 'Funcional', 3, 64.8155, -22.8113);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `mail`, `password`, `id_cliente`, `id_rol`) VALUES
(1, 'Admin', 'admin@bancal.es', '1234', 1, 1),
(2, 'Jorge', 'jorge@bancales.es', '1234', 1, 2),
(8, 'Daniel', 'daniel@bancal.es', '1234', 1, 2),
(15, 'Sergi', 'sergi@bancal.es', '123', 1, 2),
(17, 'Alberto', 'alberto@bancal.es', '123', 1, 2),
(18, 'JaviX', 'javi@bancal.es', '1234', 1, 2),
(20, 'Juan Carlos', 'jcalos@alcampo.es', '1234', 3, 2),
(21, 'Admin', 'admin@alcampo.es', '1234', 3, 1),
(22, 'Carlos', 'carlos@alcampo.es', '1234', 3, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campo`
--
ALTER TABLE `campo`
  ADD PRIMARY KEY (`id_campo`),
  ADD KEY `fk_campo_cliente` (`id_cliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  ADD PRIMARY KEY (`id_coordenada`),
  ADD KEY `fk_coordenada_parcela` (`id_parcela`);

--
-- Indices de la tabla `medicion`
--
ALTER TABLE `medicion`
  ADD PRIMARY KEY (`id_medicion`),
  ADD KEY `fk_medicion_parcela` (`id_parcela`),
  ADD KEY `fk_medicion_sonda` (`id_sonda`);

--
-- Indices de la tabla `parcela`
--
ALTER TABLE `parcela`
  ADD PRIMARY KEY (`id_parcela`),
  ADD KEY `fk_parcela_campo` (`id_campo`);

--
-- Indices de la tabla `permisos_usuarios`
--
ALTER TABLE `permisos_usuarios`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `pk_parcela_usuario` (`id_parcela`),
  ADD KEY `pk_usuario_parcela` (`id_usuario`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sonda`
--
ALTER TABLE `sonda`
  ADD PRIMARY KEY (`id_sonda`),
  ADD KEY `fk_sonda_parcela` (`id_parcela`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_usuario_cliente` (`id_cliente`),
  ADD KEY `fk_usuario_roles` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campo`
--
ALTER TABLE `campo`
  MODIFY `id_campo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  MODIFY `id_coordenada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `medicion`
--
ALTER TABLE `medicion`
  MODIFY `id_medicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=794;

--
-- AUTO_INCREMENT de la tabla `parcela`
--
ALTER TABLE `parcela`
  MODIFY `id_parcela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `permisos_usuarios`
--
ALTER TABLE `permisos_usuarios`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sonda`
--
ALTER TABLE `sonda`
  MODIFY `id_sonda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `campo`
--
ALTER TABLE `campo`
  ADD CONSTRAINT `fk_campo_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  ADD CONSTRAINT `fk_coordenada_parcela` FOREIGN KEY (`id_parcela`) REFERENCES `parcela` (`id_parcela`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `medicion`
--
ALTER TABLE `medicion`
  ADD CONSTRAINT `fk_medicion_parcela` FOREIGN KEY (`id_parcela`) REFERENCES `parcela` (`id_parcela`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_medicion_sonda` FOREIGN KEY (`id_sonda`) REFERENCES `sonda` (`id_sonda`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `parcela`
--
ALTER TABLE `parcela`
  ADD CONSTRAINT `fk_parcela_campo` FOREIGN KEY (`id_campo`) REFERENCES `campo` (`id_campo`);

--
-- Filtros para la tabla `permisos_usuarios`
--
ALTER TABLE `permisos_usuarios`
  ADD CONSTRAINT `pk_parcela_usuario` FOREIGN KEY (`id_parcela`) REFERENCES `parcela` (`id_parcela`),
  ADD CONSTRAINT `pk_usuario_parcela` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `sonda`
--
ALTER TABLE `sonda`
  ADD CONSTRAINT `fk_sonda_parcela` FOREIGN KEY (`id_parcela`) REFERENCES `parcela` (`id_parcela`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_usuario_roles` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
