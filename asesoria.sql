-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2019 a las 10:16:19
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asesoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoria`
--

CREATE TABLE `asesoria` (
  `idAsesoria` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `estatus` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `idTema` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atenderasesoria`
--

CREATE TABLE `atenderasesoria` (
  `idUsuario` int(10) NOT NULL,
  `idAsesoria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursama`
--

CREATE TABLE `cursama` (
  `idUsuario` int(10) NOT NULL,
  `idMateria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idGrupo` int(10) NOT NULL,
  `nombre` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `cuatrimestre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `idProEducativo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idGrupo`, `nombre`, `cuatrimestre`, `idProEducativo`) VALUES
(1, 'GIR0131', '3', 1),
(2, 'GIR0132', '3', 1),
(4, 'No aplica', 'Ninguno', 2),
(5, 'GDS0131', '3', 2),
(6, 'GDS0132', '3', 2),
(7, 'GDD0131', '3', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `idHorario` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `periodo` varchar(60) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impartenma`
--

CREATE TABLE `impartenma` (
  `idUsuario` int(10) NOT NULL,
  `idMateria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idMateria` int(10) NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `idNotificacion` int(10) NOT NULL,
  `mensaje` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `estatus` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proeducativo`
--

CREATE TABLE `proeducativo` (
  `idProEducativo` int(10) NOT NULL,
  `nombre` varchar(60) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `proeducativo`
--

INSERT INTO `proeducativo` (`idProEducativo`, `nombre`) VALUES
(1, 'Infraestructura en Redes Digitales'),
(2, 'Desarrollo de Software Multiplataforma'),
(3, 'Diseño Digital'),
(4, 'Ingenieria en TIC´s');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibenoti`
--

CREATE TABLE `recibenoti` (
  `idUsuario` int(10) NOT NULL,
  `idNotificacion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitaase`
--

CREATE TABLE `solicitaase` (
  `idUsuario` int(10) NOT NULL,
  `idAsesoria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `idTema` int(10) NOT NULL,
  `tema` varchar(250) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(10) NOT NULL,
  `tipo` varchar(30) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idTipoUsuario`, `tipo`) VALUES
(1, 'Alumno'),
(2, 'Docente'),
(3, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) NOT NULL,
  `correo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `username` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `contrasena` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellidoP` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellidoM` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `idGrupo` int(10) DEFAULT NULL,
  `idTipoUsuario` int(10) DEFAULT NULL,
  `idHorario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `correo`, `username`, `contrasena`, `nombre`, `apellidoP`, `apellidoM`, `idGrupo`, `idTipoUsuario`, `idHorario`) VALUES
(121134, 'conchitwa@gmail.com', 'leoq', '1234', 'qqeed', 'qeeff', 'qfqe', NULL, NULL, NULL),
(12345445, 'ddrr@sdffsd.com', 'sustaitaqw', 'qwewe', 'asere', 'qwere', 'qwerew', NULL, 0, NULL),
(12345678, 'leonardoramirez436@gmail.com', 'leo', 'maquina01', 'Leonardo Daniel', 'Ramirez', 'Reyes', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD PRIMARY KEY (`idAsesoria`),
  ADD KEY `idTema` (`idTema`);

--
-- Indices de la tabla `atenderasesoria`
--
ALTER TABLE `atenderasesoria`
  ADD PRIMARY KEY (`idUsuario`,`idAsesoria`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`),
  ADD KEY `idAsesoria` (`idAsesoria`),
  ADD KEY `idUsuario_2` (`idUsuario`);

--
-- Indices de la tabla `cursama`
--
ALTER TABLE `cursama`
  ADD PRIMARY KEY (`idUsuario`,`idMateria`),
  ADD KEY `idMateria` (`idMateria`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idGrupo`),
  ADD KEY `idProEducativo` (`idProEducativo`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`idHorario`);

--
-- Indices de la tabla `impartenma`
--
ALTER TABLE `impartenma`
  ADD PRIMARY KEY (`idUsuario`,`idMateria`),
  ADD KEY `idMateria` (`idMateria`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idMateria`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`idNotificacion`);

--
-- Indices de la tabla `proeducativo`
--
ALTER TABLE `proeducativo`
  ADD PRIMARY KEY (`idProEducativo`);

--
-- Indices de la tabla `recibenoti`
--
ALTER TABLE `recibenoti`
  ADD PRIMARY KEY (`idUsuario`,`idNotificacion`),
  ADD KEY `idNotificacion` (`idNotificacion`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `solicitaase`
--
ALTER TABLE `solicitaase`
  ADD PRIMARY KEY (`idUsuario`,`idAsesoria`),
  ADD KEY `idAsesoria` (`idAsesoria`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`idTema`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idGrupo` (`idGrupo`,`idTipoUsuario`,`idHorario`),
  ADD KEY `idHorario` (`idHorario`),
  ADD KEY `idTipoUsuario` (`idTipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idGrupo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `proeducativo`
--
ALTER TABLE `proeducativo`
  MODIFY `idProEducativo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD CONSTRAINT `asesoria_ibfk_1` FOREIGN KEY (`idTema`) REFERENCES `tema` (`idTema`) ON DELETE CASCADE;

--
-- Filtros para la tabla `atenderasesoria`
--
ALTER TABLE `atenderasesoria`
  ADD CONSTRAINT `atenderasesoria_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `atenderasesoria_ibfk_2` FOREIGN KEY (`idAsesoria`) REFERENCES `asesoria` (`idAsesoria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cursama`
--
ALTER TABLE `cursama`
  ADD CONSTRAINT `cursama_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `cursama_ibfk_2` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `FKiq54fmv9qv8ufp2sw19a3gkft` FOREIGN KEY (`idProEducativo`) REFERENCES `proeducativo` (`idProEducativo`);

--
-- Filtros para la tabla `impartenma`
--
ALTER TABLE `impartenma`
  ADD CONSTRAINT `impartenma_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `impartenma_ibfk_2` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recibenoti`
--
ALTER TABLE `recibenoti`
  ADD CONSTRAINT `recibenoti_ibfk_1` FOREIGN KEY (`idNotificacion`) REFERENCES `notificacion` (`idNotificacion`) ON DELETE CASCADE,
  ADD CONSTRAINT `recibenoti_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `solicitaase`
--
ALTER TABLE `solicitaase`
  ADD CONSTRAINT `solicitaase_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `solicitaase_ibfk_2` FOREIGN KEY (`idAsesoria`) REFERENCES `asesoria` (`idAsesoria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK1vffijsslgxr4lqcavte15idx` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`),
  ADD CONSTRAINT `FKlqfjdoycuivadh68l5086y54j` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`),
  ADD CONSTRAINT `FKsenw6quvreh7h0v839fawhdy6` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
