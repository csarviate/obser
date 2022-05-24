-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2022 a las 02:44:43
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observación`
--

CREATE TABLE `observación` (
  `Cod_obs` int(15) NOT NULL,
  `Desc_obs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `observación`
--

INSERT INTO `observación` (`Cod_obs`, `Desc_obs`) VALUES
(1010, 'El estudiante tiene las capacidades de realizar el'),
(2020, 'El estudiante necesita reforzar los objetivos prop'),
(3030, 'El estudiante molesta en clase a sus compañeros y '),
(4040, 'El estudiante no entrega los trabajos propuestos e'),
(5050, 'El estudiante no hace caso y es indisciplinado en ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `cod_prof` int(30) NOT NULL,
  `doc_prof` varchar(15) NOT NULL,
  `nom_prof` varchar(30) NOT NULL,
  `ape_prof` varchar(30) NOT NULL,
  `email_prof` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`cod_prof`, `doc_prof`, `nom_prof`, `ape_prof`, `email_prof`) VALUES
(1, '51633096', 'Carlos', 'Pedraza', 'Car_pedraza@gmial.com'),
(2, '22358510', 'Andres', 'Cortez', 'Andres_cor@gmail.com'),
(3, '25365984', 'Martha', 'Sepulveda', 'Mart_sepul@gmail.com'),
(4, '1032658479', 'Carolina', 'Gomez', 'Carola_go@hotmail.com'),
(5, '1032654987', 'Camilo', 'Ramos', 'Caramoz@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_anotacion`
--

CREATE TABLE `tipo_anotacion` (
  `Cod_tipo_ano` int(15) NOT NULL,
  `Cod_est` int(15) NOT NULL,
  `cod_cur` int(15) NOT NULL,
  `Nom_tipo_ano` varchar(30) NOT NULL,
  `Desc_tipo_ano` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_anotacion`
--

INSERT INTO `tipo_anotacion` (`Cod_tipo_ano`, `Cod_est`, `cod_cur`, `Nom_tipo_ano`, `Desc_tipo_ano`) VALUES
(11, 1, 22564, 'Felicitación', 'Felicitaciones por el buen desempeño'),
(22, 2, 22562, 'Llamado de atención', 'Llamada de atención al estudiante'),
(33, 3, 55224, 'Pelea en clase', 'Estudiante pelea en clase con sus compañeros'),
(44, 4, 10228, 'No realiza trabajos', 'Estudiante no realiza los trabajos propuestos en c'),
(55, 5, 44435, 'Indisciplina', 'Estudiante es indisciplinado en clase');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text CHARACTER SET utf8mb4 NOT NULL,
  `usuario` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `password` text CHARACTER SET utf8mb4 NOT NULL,
  `rol` text CHARACTER SET utf8mb4 NOT NULL,
  `foto` text CHARACTER SET utf8mb4 NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `rol`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$usesomesillystringforewOdLB5CheF5NZbm8TQfHJwIPWk0j23q', 'Administrador', '', 0, '0000-00-00 00:00:00', '2022-05-15 23:07:34'),
(15, 'Norma Menza', 'norma', '$2a$07$usesomesillystringforeDOFmEOGRGnlVxmBC3SW.e9RRmOlSbgu', 'Coordinador', '', 0, '0000-00-00 00:00:00', '2022-05-15 21:39:16'),
(16, 'Julián Vargas', 'julian', '$2a$07$usesomesillystringforeBO///SxUnGsEPKG2l0SPlgJmNe19Nkq', 'Alumno', '', 0, '0000-00-00 00:00:00', '2022-05-24 00:27:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `observación`
--
ALTER TABLE `observación`
  ADD PRIMARY KEY (`Cod_obs`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`cod_prof`);

--
-- Indices de la tabla `tipo_anotacion`
--
ALTER TABLE `tipo_anotacion`
  ADD PRIMARY KEY (`Cod_tipo_ano`),
  ADD UNIQUE KEY `Cod_est` (`Cod_est`),
  ADD UNIQUE KEY `cod_cur` (`cod_cur`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `observación`
--
ALTER TABLE `observación`
  MODIFY `Cod_obs` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5051;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `cod_prof` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipo_anotacion`
--
ALTER TABLE `tipo_anotacion`
  MODIFY `Cod_tipo_ano` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
