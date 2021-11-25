-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2021 a las 19:41:28
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `materias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matematica`
--

CREATE TABLE `matematica` (
  `id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `curso` varchar(10) NOT NULL,
  `tarea` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matematica`
--

INSERT INTO `matematica` (`id`, `year`, `curso`, `tarea`) VALUES
(2, '2020', 'tercero', 'Trabajo práctico N.1: Matrices'),
(3, '2020', 'tercero', 'Linear tranformation'),
(4, '2020', 'tercero', 'Exercise 15.8: 1,2,3. Living math'),
(5, '2020', 'tercero', 'Problemas: Razones trigonométricas'),
(6, '2020', 'tercero', 'Trabajo práctico N2: Operaciones con matrices'),
(7, '2020', 'tercero', 'Trabajo práctico N3: Transformaciones con matrices'),
(8, '2020', 'tercero', 'Worksheet: Matrices'),
(9, '2021', 'cuarto', 'Diagnóstico'),
(10, '2021', 'cuarto', 'TP N1: Trigonometría'),
(11, '2021', 'cuarto', 'más ejercicios de trigonometría'),
(16, '2021', 'cuarto', 'problemas de trigonometría'),
(17, '2021', 'cuarto', 'más problemas de trigonometría'),
(18, '2021', 'cuarto', 'Repaso de funciones '),
(19, '2021', 'cuarto', 'TP N2: funciones'),
(20, '2021', 'cuarto', 'Modelos Lineales');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `matematica`
--
ALTER TABLE `matematica`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `matematica`
--
ALTER TABLE `matematica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
