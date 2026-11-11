-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2026 a las 03:19:33
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
  `titulo` varchar(150) NOT NULL,
  `fecha_lanzamiento` date DEFAULT NULL,
  `id_artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id_artista` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id_artista`, `nombre`, `pais`) VALUES
(1, 'KAROL G', NULL),
(2, 'Kris R.', NULL),
(3, 'Feid', NULL),
(4, 'Blessd', NULL),
(5, 'Ya Ice Dilan', NULL),
(6, 'Brytiago', NULL),
(7, 'Lenin Ramírez', NULL),
(8, 'BTS', NULL),
(9, 'Anuel AA', NULL),
(10, 'Grupo Firme', NULL),
(11, 'Tony Dize', NULL),
(12, 'Ele A El Dominio', NULL),
(13, 'Fuerza Regida', NULL),
(14, 'Emmanuel Cortes', NULL),
(15, 'Luister La Voz', NULL),
(16, 'Mr Plata', NULL),
(17, 'Omar Courtz', NULL),
(18, 'Ryan Castro', NULL),
(19, 'ARIA VEGA', NULL),
(20, 'Héctor \"El Father\"', NULL),
(21, 'El Goldo', NULL),
(22, 'Plan B', NULL),
(23, 'Lil Naay', NULL),
(24, 'Beéle', NULL),
(25, 'Jósean Log', NULL),
(26, 'W Sound', NULL),
(27, 'Arcángel', NULL),
(28, 'Kapo', NULL),
(29, 'Conep', NULL),
(30, 'Maisak', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_genero`
--

CREATE TABLE `artista_genero` (
  `id_artista` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `id_cancion` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `duracion` int(11) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `id_album` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`id_cancion`, `titulo`, `duracion`, `fecha_lanzamiento`, `id_album`) VALUES
(1, 'BbY WOW', 0, '0000-00-00', NULL),
(2, 'GAMINA', 0, '0000-00-00', NULL),
(3, '50 MIL PIEX', 0, '0000-00-00', NULL),
(4, 'MERO TOTE', 0, '0000-00-00', NULL),
(5, 'CAPCANA COCOA', 0, '0000-00-00', NULL),
(6, 'Dichavate', 0, '0000-00-00', NULL),
(7, 'Estoy Pa\' Ti', 0, '0000-00-00', NULL),
(8, 'TUKI TUKI', 0, '0000-00-00', NULL),
(9, 'SUPERSTAR', 0, '0000-00-00', NULL),
(10, 'Todo Lo Fue', 0, '0000-00-00', NULL),
(11, 'SWIM', 0, '0000-00-00', NULL),
(12, 'Las mas bonitas son p#tas', 0, '0000-00-00', NULL),
(13, 'El Beneficio De La Duda', 0, '0000-00-00', NULL),
(14, 'Solos', 0, '0000-00-00', NULL),
(15, '4 Life', 0, '0000-00-00', NULL),
(16, 'NUEVA YORK', 0, '0000-00-00', NULL),
(17, 'No Contesta', 0, '0000-00-00', NULL),
(18, 'COQUETA', 0, '0000-00-00', NULL),
(19, 'Amor', 0, '0000-00-00', NULL),
(20, 'QUÉ LÍO', 0, '0000-00-00', NULL),
(21, 'La María', 0, '0000-00-00', NULL),
(22, 'Las Muñequitas', 0, '0000-00-00', NULL),
(23, 'POR SI MAÑANA NO ESTOY', 0, '0000-00-00', NULL),
(24, 'LA VILLA', 0, '0000-00-00', NULL),
(25, 'CHÉVERE (premium_remix)', 0, '0000-00-00', NULL),
(26, 'El Telefono', 0, '0000-00-00', NULL),
(27, 'GALACTICOS', 0, '0000-00-00', NULL),
(28, 'Es un Secreto', 0, '0000-00-00', NULL),
(29, 'GANAS', 0, '0000-00-00', NULL),
(30, 'SORNERO', 0, '0000-00-00', NULL),
(31, 'KOKO', 0, '0000-00-00', NULL),
(32, 'UNA BABY EN SANTIAGO', 0, '0000-00-00', NULL),
(33, 'mi refe', 0, '0000-00-00', NULL),
(34, 'Doma', 0, '0000-00-00', NULL),
(35, 'Hace Mucho Tiempo', 0, '0000-00-00', NULL),
(36, 'Pico Y Chao (W Sound 08)', 0, '0000-00-00', NULL),
(37, 'Mentira', 0, '0000-00-00', NULL),
(38, 'Hace Mucho Tiempo', 0, '0000-00-00', NULL),
(39, 'MATADORA', 0, '0000-00-00', NULL),
(40, 'UWAIE', 0, '0000-00-00', NULL),
(41, 'PERRA', 0, '0000-00-00', NULL),
(42, 'After', 0, '0000-00-00', NULL),
(43, 'YOGURCITO REMIX', 0, '0000-00-00', NULL),
(44, 'Ojalá', 0, '0000-00-00', NULL),
(45, 'Casi Algo', 0, '0000-00-00', NULL),
(46, 'YOGURCITO', 0, '0000-00-00', NULL),
(47, 'AMISTA', 0, '0000-00-00', NULL),
(48, 'EXCESOS', 0, '0000-00-00', NULL),
(49, 'Ahí', 0, '0000-00-00', NULL),
(50, 'LUNA', 0, '0000-00-00', NULL),


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_artista`
--

CREATE TABLE `cancion_artista` (
  `id_cancion` int(11) NOT NULL,
  `id_artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cancion_artista`
--

INSERT INTO `cancion_artista` (`id_cancion`, `id_artista`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 4),
(6, 5),
(7, 6),
(8, 2),
(9, 4),
(10, 7),
(11, 8),
(12, 9),
(13, 10),
(14, 11),
(15, 2),
(16, 4),
(17, 12),
(18, 13),
(19, 14),
(20, 4),
(21, 15),
(22, 16),
(23, 17),
(24, 18),
(25, 19),
(26, 20),
(27, 21),
(28, 22),
(29, 2),
(30, 4),
(31, 17),
(32, 23),
(33, 24),
(34, 25),
(35, 12),
(35, 27),
(36, 26),
(37, 18),
(38, 12),
(38, 27),
(39, 1),
(40, 28),
(41, 23),
(42, 29),
(43, 4),
(44, 18),
(45, 30),
(46, 4),
(47, 4),
(48, 13),
(49, 1),
(50, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `nombre`, `fecha_creacion`, `id_usuario`) VALUES
(1, 'Top 50 Colombia - Semana 10 septiembre 2026', '2026-09-10', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_cancion`
--

CREATE TABLE `playlist_cancion` (
  `id_playlist` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL,
  `posicion` int(11) DEFAULT NULL,
  `fecha_agregada` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reproduccion`
--

CREATE TABLE `reproduccion` (
  `id_reproduccion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `duracion_escuchada` int(11) NOT NULL,
  `dispositivo` varchar(50) DEFAULT NULL,
  `completada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reproduccion`
--

INSERT INTO `reproduccion` (`id_reproduccion`, `id_usuario`, `id_cancion`, `fecha_hora`, `duracion_escuchada`, `dispositivo`, `completada`) VALUES
(1, 1, 20, '2026-09-10 05:30:00', 215, 'Celular', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `fecha_registro` date NOT NULL,
  `tipo_plan` varchar(30) NOT NULL,
  `pais` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `correo`, `fecha_registro`, `tipo_plan`, `pais`) VALUES
(1, 'Spotify Colombia', 'spotifycolombia@demo.com', '2026-09-10', 'Free', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `id_artista` (`id_artista`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indices de la tabla `artista_genero`
--
ALTER TABLE `artista_genero`
  ADD PRIMARY KEY (`id_artista`,`id_genero`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`id_cancion`),
  ADD KEY `id_album` (`id_album`);

--
-- Indices de la tabla `cancion_artista`
--
ALTER TABLE `cancion_artista`
  ADD PRIMARY KEY (`id_cancion`,`id_artista`),
  ADD KEY `id_artista` (`id_artista`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `playlist_cancion`
--
ALTER TABLE `playlist_cancion`
  ADD PRIMARY KEY (`id_playlist`,`id_cancion`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `reproduccion`
--
ALTER TABLE `reproduccion`
  ADD PRIMARY KEY (`id_reproduccion`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

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
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `cancion`
--
ALTER TABLE `cancion`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reproduccion`
--
ALTER TABLE `reproduccion`
  MODIFY `id_reproduccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`);

--
-- Filtros para la tabla `artista_genero`
--
ALTER TABLE `artista_genero`
  ADD CONSTRAINT `artista_genero_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`),
  ADD CONSTRAINT `artista_genero_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`);

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);

--
-- Filtros para la tabla `cancion_artista`
--
ALTER TABLE `cancion_artista`
  ADD CONSTRAINT `cancion_artista_ibfk_1` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id_cancion`),
  ADD CONSTRAINT `cancion_artista_ibfk_2` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `playlist_cancion`
--
ALTER TABLE `playlist_cancion`
  ADD CONSTRAINT `playlist_cancion_ibfk_1` FOREIGN KEY (`id_playlist`) REFERENCES `playlist` (`id_playlist`),
  ADD CONSTRAINT `playlist_cancion_ibfk_2` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id_cancion`);

--
-- Filtros para la tabla `reproduccion`
--
ALTER TABLE `reproduccion`
  ADD CONSTRAINT `reproduccion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `reproduccion_ibfk_2` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id_cancion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
