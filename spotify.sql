-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
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

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `fk_artista` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id_artista` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `id_cancion` int(11) NOT NULL,
  `fk_album` int(11) DEFAULT NULL,
  `fk_artista` int(11) DEFAULT NULL,
  `fk_genero` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `duracion` time NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(11) NOT NULL,
  `fk_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_cancion`
--

CREATE TABLE `playlist_cancion` (
  `fk_playlist` int(11) NOT NULL,
  `fk_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reproduccion`
--

CREATE TABLE `reproduccion` (
  `id_reproduccion` int(11) NOT NULL,
  `fk_usuario` int(11) DEFAULT NULL,
  `fk_cancion` int(11) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidor`
--

CREATE TABLE `seguidor` (
  `fk_usuario` int(11) NOT NULL,
  `fk_artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripcion`
--

CREATE TABLE `suscripcion` (
  `id_suscripcion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio_mensual` decimal(10,2) NOT NULL,
  `duracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `fk_suscripcion` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `fk_artista` (`fk_artista`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`id_cancion`),
  ADD KEY `fk_album` (`fk_album`),
  ADD KEY `fk_artista` (`fk_artista`),
  ADD KEY `fk_genero` (`fk_genero`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`),
  ADD KEY `fk_usuario` (`fk_usuario`);

--
-- Indices de la tabla `playlist_cancion`
--
ALTER TABLE `playlist_cancion`
  ADD PRIMARY KEY (`fk_playlist`,`fk_cancion`),
  ADD KEY `fk_cancion` (`fk_cancion`);

--
-- Indices de la tabla `reproduccion`
--
ALTER TABLE `reproduccion`
  ADD PRIMARY KEY (`id_reproduccion`),
  ADD KEY `fk_usuario` (`fk_usuario`),
  ADD KEY `fk_cancion` (`fk_cancion`);

--
-- Indices de la tabla `seguidor`
--
ALTER TABLE `seguidor`
  ADD PRIMARY KEY (`fk_usuario`,`fk_artista`),
  ADD KEY `fk_artista` (`fk_artista`);

--
-- Indices de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  ADD PRIMARY KEY (`id_suscripcion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `fk_suscripcion` (`fk_suscripcion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cancion`
--
ALTER TABLE `cancion`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reproduccion`
--
ALTER TABLE `reproduccion`
  MODIFY `id_reproduccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  MODIFY `id_suscripcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`fk_artista`) REFERENCES `artista` (`id_artista`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`fk_album`) REFERENCES `album` (`id_album`),
  ADD CONSTRAINT `cancion_ibfk_2` FOREIGN KEY (`fk_artista`) REFERENCES `artista` (`id_artista`),
  ADD CONSTRAINT `cancion_ibfk_3` FOREIGN KEY (`fk_genero`) REFERENCES `genero` (`id_genero`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `playlist_cancion`
--
ALTER TABLE `playlist_cancion`
  ADD CONSTRAINT `playlist_cancion_ibfk_1` FOREIGN KEY (`fk_playlist`) REFERENCES `playlist` (`id_playlist`),
  ADD CONSTRAINT `playlist_cancion_ibfk_2` FOREIGN KEY (`fk_cancion`) REFERENCES `cancion` (`id_cancion`);

--
-- Filtros para la tabla `reproduccion`
--
ALTER TABLE `reproduccion`
  ADD CONSTRAINT `reproduccion_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `reproduccion_ibfk_2` FOREIGN KEY (`fk_cancion`) REFERENCES `cancion` (`id_cancion`);

--
-- Filtros para la tabla `seguidor`
--
ALTER TABLE `seguidor`
  ADD CONSTRAINT `seguidor_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `seguidor_ibfk_2` FOREIGN KEY (`fk_artista`) REFERENCES `artista` (`id_artista`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`fk_suscripcion`) REFERENCES `suscripcion` (`id_suscripcion`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
