-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2024 a las 14:40:09
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
-- Estructura para la vista `view_album_popular`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_album_popular`  AS SELECT `a`.`id_album` AS `id_album`, `a`.`nombre` AS `nombre_album`, `ar`.`nombre` AS `nombre_artista`, count(`r`.`id_reproduccion`) AS `total_reproducciones` FROM (((`album` `a` join `artista` `ar` on(`a`.`fk_artista` = `ar`.`id_artista`)) join `cancion` `c` on(`c`.`fk_album` = `a`.`id_album`)) join `reproduccion` `r` on(`r`.`fk_cancion` = `c`.`id_cancion`)) GROUP BY `a`.`id_album`, `a`.`nombre`, `ar`.`nombre` ORDER BY count(`r`.`id_reproduccion`) DESC ;

--
-- VIEW `view_album_popular`
-- Datos: Ninguna
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
