-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-12-2015 a las 20:40:42
-- Versión del servidor: 5.5.46-0ubuntu0.14.04.2
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto`
--
CREATE DATABASE IF NOT EXISTS `proyecto` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `proyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nif` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nif` (`nif`,`email`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nif`, `nombre`, `apellido1`, `apellido2`, `email`, `telefono`, `usuario`, `password`) VALUES
(2, '39345536B', 'José', 'Cuesta', 'Requena', 'jos.cuesta@yahoo.com', '602345212', 'jcuesta', '05d5a7997134ddc1be99b4a4ebb516132f4153bcef36cb7f59a55a8e7c11145e81e4d522fde3b6aa9de983ec5c0e2c0662cc17d6773201fb9cadaabe449f40fc'),
(3, '08109073D', 'Clara', 'Argente', 'Taverner', 'clara@ono.com', '623456789', 'cargente', 'f0aed21465ca39cfba65ba85d472874d9d9587996a461b606edeb03920a41e93f79d1b53bbd8b627d841732d7cde6c5178c42e55d7a31fe1dd742d5c3686f988'),
(6, '67073575D', 'Mª Carmen', 'Cuenca', 'García', 'carcue@msn.es', '623453343', 'ccuenca', 'c3a77595465c3dcb34089006953b3ba350f6785323b4b4f13596062f77ef154fb616e4cf4b5127aa1cf885d509ad76d3bca23e2b2a9ae510ebaf40eae474880c'),
(7, '46774868K', 'Alberto', 'Coronas', 'Pérez', 'acoronas@ono.com', '673244564', 'acoronas', '6736676beb5efb10e3edc0ac5b535cde28cd8ad621f390cedf8744752578052af885ee73c30006172784cf74b1ac582e396103eb8dc748ec9ef787f9f8a3b84b'),
(10, '64336588E', 'Jose', 'Ortiz', 'Tamudo', 'jortiz@ono.com', '456434545', 'jortiz', 'jortiz'),
(11, '14000266M', 'Concha', 'García', 'Campoy', 'cgarcia@ser.es', '674543456', 'cgarcia', 'fbab28ab7e878f4200011acf9fb013991ec8dc438848295596a83924265cd7d196d49da5bed13c9ee80a4e4371c3c7b2d7a8f50c990005cb7cdc1901447352be');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL,
  `time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  KEY `index_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `time`) VALUES
(3, '1450044002'),
(3, '1450249495'),
(3, '1450257215'),
(3, '1450257221'),
(3, '1450257227'),
(3, '1450257235');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD CONSTRAINT `login_attempts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
