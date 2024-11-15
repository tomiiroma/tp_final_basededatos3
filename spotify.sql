-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2024 a las 17:22:57
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Crear base de datos
CREATE DATABASE IF NOT EXISTS `spotify` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `spotify`;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `album`
CREATE TABLE `album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `fk_artista` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id_album`),
  KEY `fk_artista` (`fk_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `artista`
CREATE TABLE `artista` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `total_canciones` int(11) DEFAULT 0,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `cancion`
CREATE TABLE `cancion` (
  `id_cancion` int(11) NOT NULL AUTO_INCREMENT,
  `fk_album` int(11) DEFAULT NULL,
  `fk_artista` int(11) DEFAULT NULL,
  `fk_genero` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `duracion` time NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id_cancion`),
  KEY `fk_album` (`fk_album`),
  KEY `fk_artista` (`fk_artista`),
  KEY `fk_genero` (`fk_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `genero`
CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `playlist`
CREATE TABLE `playlist` (
  `id_playlist` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id_playlist`),
  KEY `fk_usuario` (`fk_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `playlist_cancion`
CREATE TABLE `playlist_cancion` (
  `fk_playlist` int(11) NOT NULL,
  `fk_cancion` int(11) NOT NULL,
  PRIMARY KEY (`fk_playlist`, `fk_cancion`),
  KEY `fk_cancion` (`fk_cancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `reproduccion`
CREATE TABLE `reproduccion` (
  `id_reproduccion` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario` int(11) DEFAULT NULL,
  `fk_cancion` int(11) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id_reproduccion`),
  KEY `fk_usuario` (`fk_usuario`),
  KEY `fk_cancion` (`fk_cancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `seguidor`
CREATE TABLE `seguidor` (
  `fk_usuario` int(11) NOT NULL,
  `fk_artista` int(11) NOT NULL,
  PRIMARY KEY (`fk_usuario`, `fk_artista`),
  KEY `fk_artista` (`fk_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `suscripcion`
CREATE TABLE `suscripcion` (
  `id_suscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `precio_mensual` decimal(10,2) NOT NULL,
  `duracion` int(11) NOT NULL,
  PRIMARY KEY (`id_suscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `usuario`
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `fk_suscripcion` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL UNIQUE,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) NOT NULL UNIQUE,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id_usuario`),
  KEY `fk_suscripcion` (`fk_suscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- Filtros para tablas volcadas

ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`fk_artista`) REFERENCES `artista` (`id_artista`) ON DELETE CASCADE;

ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`fk_album`) REFERENCES `album` (`id_album`),
  ADD CONSTRAINT `cancion_ibfk_2` FOREIGN KEY (`fk_artista`) REFERENCES `artista` (`id_artista`),
  ADD CONSTRAINT `cancion_ibfk_3` FOREIGN KEY (`fk_genero`) REFERENCES `genero` (`id_genero`);

ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`);

ALTER TABLE `playlist_cancion`
  ADD CONSTRAINT `playlist_cancion_ibfk_1` FOREIGN KEY (`fk_playlist`) REFERENCES `playlist` (`id_playlist`),
  ADD CONSTRAINT `playlist_cancion_ibfk_2` FOREIGN KEY (`fk_cancion`) REFERENCES `cancion` (`id_cancion`);

ALTER TABLE `reproduccion`
  ADD CONSTRAINT `reproduccion_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `reproduccion_ibfk_2` FOREIGN KEY (`fk_cancion`) REFERENCES `cancion` (`id_cancion`);

ALTER TABLE `seguidor`
  ADD CONSTRAINT `seguidor_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `seguidor_ibfk_2` FOREIGN KEY (`fk_artista`) REFERENCES `artista` (`id_artista`);

ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`fk_suscripcion`) REFERENCES `suscripcion` (`id_suscripcion`) ON DELETE SET NULL;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
