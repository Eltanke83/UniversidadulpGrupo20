-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2023 a las 22:39:35
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universidadulp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idAlumno` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idAlumno`, `dni`, `nombre`, `apellido`, `fechaNacimiento`, `estado`) VALUES
(1, 32675987, 'Juan', 'Lopez', '2000-08-29', 1),
(2, 32561245, 'Fernanda', 'Torres', '1988-07-20', 1),
(3, 36359685, 'Emiliio', 'Zarate', '1991-10-16', 1),
(4, 20435567, 'Jacinto', 'Lopez', '1994-09-12', 1),
(5, 25546332, 'Laura', 'Saucedo', '1996-09-21', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `idInscripcion` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `idAlumno` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`idInscripcion`, `nota`, `idAlumno`, `idMateria`) VALUES
(1, 9, 9, 1),
(2, 7, 9, 5),
(3, 5, 10, 4),
(4, 8, 10, 3),
(5, 10, 11, 4),
(6, 9, 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `año` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idMateria`, `nombre`, `año`, `estado`) VALUES
(1, 'Laboratio 2', 2, 1),
(2, 'Laboratio 2', 2, 1),
(3, 'Matematicas 1', 1, 1),
(4, 'Matematicas 1', 1, 1),
(5, 'Literatura', 2, 1),
(6, 'Literatura', 2, 1),
(7, 'Audiovisual', 3, 1),
(8, 'Audiovisual', 3, 1),
(9, 'Laboratio 2', 2, 1),
(10, 'Matematicas 1', 1, 1),
(11, 'Literatura', 2, 1),
(12, 'Audiovisual', 3, 1),
(13, 'Laboratio 2', 2, 1),
(14, 'Matematicas 1', 1, 1),
(15, 'Literatura', 2, 1),
(16, 'Audiovisual', 3, 1),
(17, 'Laboratio 2', 2, 1),
(18, 'Matematicas 1', 1, 1),
(19, 'Literatura', 2, 1),
(20, 'Audiovisual', 3, 1),
(21, 'Laboratio 2', 2, 1),
(22, 'Matematicas 1', 1, 1),
(23, 'Literatura', 2, 1),
(24, 'Audiovisual', 3, 1),
(25, 'Laboratio 2', 2, 1),
(26, 'Matematicas 1', 1, 1),
(27, 'Literatura', 2, 1),
(28, 'Audiovisual', 3, 1),
(29, 'Laboratio 2', 2, 1),
(30, 'Matematicas 1', 1, 1),
(31, 'Literatura', 2, 1),
(32, 'Audiovisual', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idAlumno`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`idInscripcion`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idMateria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `idAlumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `idInscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `idMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
