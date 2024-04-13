-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2024 a las 00:42:01
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
-- Base de datos: `cepuns`
--
CREATE DATABASE cepuns;
USE cepuns;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn`
--

CREATE TABLE `alumn` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `c1_fullname` varchar(100) DEFAULT NULL,
  `c1_address` varchar(100) DEFAULT NULL,
  `c1_phone` varchar(100) DEFAULT NULL,
  `c1_note` varchar(100) DEFAULT NULL,
  `c2_fullname` varchar(100) DEFAULT NULL,
  `c2_address` varchar(100) DEFAULT NULL,
  `c2_phone` varchar(100) DEFAULT NULL,
  `c2_note` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alumn`
--

INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `c2_fullname`, `c2_address`, `c2_phone`, `c2_note`, `is_active`, `created_at`, `user_id`) VALUES
(1, '1612741539.jpg', 'JEFFRY', 'LOZANO TORRES', '201714040@uns.edu.pe', 'CHIMBOTE', '986548751', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 7),
(2, '1612744606.jpg', 'JIMMY', 'MILLA MARTINEZ', '201714057@uns.edu.pe', 'CHIMBOTE', '957559126', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 6),
(3, '1612744669.jpg', 'GIANCARLO', 'PASACHE PASAPERA', '201714003@uns.edu.pe', 'CHIMBOTE', '979083162', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 6),
(4, '1612744713.jpg', 'LILY', 'RAMÍREZ DUEÑAS', '201714043@uns.edu.pe', 'CHIMBOTE', '942881487', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 7),
(5, '1612744753.jpg', 'ALEXANDRO', 'VASQUEZ ROJAS', '201714037@uns.edu.pe', 'CHIMBOTE', '933909812', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 6),
(7, '1712808419.PNG', 'JUNIOR', 'SANTAMARIA LOPEZ', 'junior@gmail.com', 'SIU CASA', '985478528', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 6),
(8, '1712808803.PNG', 'JUNIOR', 'SANTAMARIA LOPEZ', 'junior@gmail.com', 'SU CASA', '95985512124', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 10),
(9, '1712808867.PNG', 'GERSON', 'YARLEQUE SARAPURA', 'gerson@gmail.com', 'SU CASA', '9598521244', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 10),
(10, '1712808957.png', 'ANTONY', 'AGREDA', 'antony@gmail.com', 'SU CASA', '9598521244', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 10),
(11, '1712808984.png', 'KENY', 'ALVAREZ', 'antony@gmail.com', 'SU CASA', '959852144', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 10),
(12, '1712809017.png', 'PEDRO', 'PEDRO', 'antony@gmail.com', 'SU CASA', '959852144', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn_team`
--

CREATE TABLE `alumn_team` (
  `id` int(11) NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alumn_team`
--

INSERT INTO `alumn_team` (`id`, `alumn_id`, `team_id`) VALUES
(7, 8, 4),
(8, 9, 4),
(9, 10, 4),
(10, 11, 4),
(11, 12, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistance`
--

CREATE TABLE `assistance` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `assistance`
--

INSERT INTO `assistance` (`id`, `kind_id`, `date_at`, `alumn_id`, `team_id`) VALUES
(16, 1, '2024-04-10', 12, 4),
(17, 1, '2024-04-10', 11, 4),
(18, 1, '2024-04-10', 10, 4),
(19, 4, '2024-04-10', 9, 4),
(20, 2, '2024-04-10', 8, 4),
(21, 3, '2024-04-12', 12, 4),
(22, 1, '2024-04-12', 11, 4),
(23, 4, '2024-04-12', 10, 4),
(24, 1, '2024-04-12', 9, 4),
(25, 4, '2024-04-12', 8, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `block`
--

INSERT INTO `block` (`id`, `name`, `team_id`) VALUES
(1, 'ALGEBRA', 1),
(2, 'APTITUD MATEMATICA', 1),
(3, 'APTITUD VERBAL', 1),
(4, 'ARITMETICA', 1),
(5, 'ECOLOGIA', 1),
(6, 'ECONOMIA', 1),
(7, 'FISICA', 1),
(8, 'GEOMETRIA', 1),
(9, 'LENGUAJE', 1),
(10, 'QUIMICA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calification`
--

CREATE TABLE `calification` (
  `id` int(11) NOT NULL,
  `val` double DEFAULT NULL,
  `alumn_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `calification`
--

INSERT INTO `calification` (`id`, `val`, `alumn_id`, `block_id`) VALUES
(1, 13, 5, 1),
(2, 11.33, 4, 1),
(3, 7.12112, 3, 1),
(4, 5, 2, 1),
(5, 9.11, 1, 1),
(6, 14, 5, 2),
(7, 12, 5, 3),
(8, 5, 5, 5),
(9, 4.6, 5, 6),
(10, 7, 5, 7),
(11, 9, 5, 8),
(12, 2, 5, 9),
(13, 0, 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Escritorio'),
(2, 'Grupos'),
(3, 'Acceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `idgrupo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `favorito` tinyint(1) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`idgrupo`, `nombre`, `favorito`, `idusuario`) VALUES
(1, 'AULA  A1', 0, 6),
(2, 'APLICACIONES EN LA NUBE', 0, 6),
(3, 'APLICACIONES EN LA MOVILES', 0, 9),
(4, 'APLICACIONES EN LA NUBE', 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(20) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`) VALUES
(1, 'Admin', 'DNI', '72154871', 'Calle los alpes 210', '547821', 'admin@uns.edu.com', 'Administrador', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '1612696509.jfif', 0),
(6, 'usuario', 'DNI', '70198602', 'Carretera Casma - Huaraz kilómetro 33', '986326548', '201414034@uns.edu.pe', 'Administrador', 'Ricardo', '65304dac3823069673aa9d3b90dcb9f44938e2d12f58509addc915d08922b64b', '', 1),
(7, 'Gerson Yarleque', 'DNI', '72154871', 'Chimbote', '986532548', '201514042@uns.edu.pe', 'Auxiliar', 'gerson', '7c00f9216a928bdb4d25eee60d5d6b8a54445b8f2bf65139ab6b1cd62376458f', '1612736091.jpg', 1),
(9, 'Junior', 'DNI', '85214025', 'las casas', '965852145', 'junior@gmail.com', 'Administrador', 'junior', '8fdd880f097cddfef86895d2c48f649e943bed14639f0ad29671508b536c9fc1', '1712807236.PNG', 1),
(10, 'Mirko Manrique Ronceros', 'DNI', '85745214', 'chimbote', '985244125', 'mirko@gmail.com', 'Administrador', 'mirko', '6eb44ff6ac59c9b9d39e7ac203910f0384e4c2d3a59c8bfd7fecb7a5f6de1e10', '1712808691.PNG', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(65, 7, 1),
(66, 7, 2),
(69, 1, 1),
(70, 1, 2),
(71, 1, 3),
(72, 9, 1),
(73, 9, 2),
(74, 9, 3),
(78, 10, 1),
(79, 10, 2),
(80, 10, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indices de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `calification`
--
ALTER TABLE `calification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `block_id` (`block_id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`idgrupo`),
  ADD KEY `team_ibfk_1` (`idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_u_permiso_usuario_idx` (`idusuario`),
  ADD KEY `fk_usuario_permiso_idx` (`idpermiso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumn`
--
ALTER TABLE `alumn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `assistance`
--
ALTER TABLE `assistance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `calification`
--
ALTER TABLE `calification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD CONSTRAINT `alumn_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD CONSTRAINT `alumn_team_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `alumn_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD CONSTRAINT `assistance_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `assistance_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `block_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`idgrupo`);

--
-- Filtros para la tabla `calification`
--
ALTER TABLE `calification`
  ADD CONSTRAINT `calification_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `calification_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `block` (`id`);

--
-- Filtros para la tabla `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_u_permiso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_permiso` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
