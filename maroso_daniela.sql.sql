-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2021 a las 13:46:54
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
-- Estructura de tabla para la tabla `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `año` int(4) NOT NULL,
  `curso` varchar(10) NOT NULL,
  `tarea` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `language`
--

INSERT INTO `language` (`id`, `año`, `curso`, `tarea`) VALUES
(1, 2020, 'tercero', 'diagnostic test'),
(2, 2020, 'tercero', 'Paper 4, exercise 4: Galapagos island '),
(3, 2020, 'tercero', 'Paper 4, exercise 5. Write an email to your friend about your work experience week. '),
(4, 2020, 'tercero', 'Paper 4, exercise 6: You recently went on a school trip. Your teacher has asked you to write a repor'),
(5, 2020, 'tercero', 'Paper 2, excercise 6: Students at your school have been arriving late to classes recently. Your teac'),
(6, 2020, 'tercero', 'Paper 2, exercise 5: Giant sequoias'),
(7, 2020, 'tercero', 'Paper 2, exercise 1: Teenagers and the iternet'),
(8, 2020, 'tercero', 'Paper 2, exercise 7: Uses of new technologies during the pandemic'),
(9, 2020, 'tercero', 'Tenses T14, Fill in the correct form verb – All Tenses '),
(10, 2020, 'tercero', 'repaso: linking words for students: Despite / In Spite Of / Although'),
(11, 2020, 'tercero', 'Linking Words – Mixed Review 3'),
(12, 2020, 'tercero', 'Paper 4 Listening (Extended) February/March 2018'),
(13, 2020, 'tercero', 'Paper 2 Reading and Writing (Extended) February/March 2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `literatura`
--

CREATE TABLE `literatura` (
  `id` int(11) NOT NULL,
  `año` varchar(10) NOT NULL,
  `curso` varchar(15) NOT NULL,
  `tarea` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `literatura`
--

INSERT INTO `literatura` (`id`, `año`, `curso`, `tarea`) VALUES
(1, '2020', 'tercero', '1- Actividades Pre-lectura - La Casa de los Espíritus'),
(2, '2020', 'tercero', '2- Actividades Pos-Lectura. Cap1 La casa de los espíritus'),
(3, '2020', 'tercero', 'La casa de los espíritus; Análisis de contexto histórico. '),
(4, '2020', 'tercero', 'LA CASA DE LOS ESPÍRITUS - Trabajo Colaborativo'),
(5, '2020', 'tercero', 'La casa de los espíritus, resumen'),
(6, '2020', 'tercero', 'paper 2. El Mundo Transparente'),
(7, '2020', 'tercero', 'La casa de los espirítus, Examen escrito. Capítulos de 1 al 10. '),
(8, '2020', 'tercero', 'Lengua y Literatura III. TEXTOS DESCRIPTIVOS\r\n');

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
(20, '2021', 'cuarto', 'Modelos Lineales'),
(38, '2021', 'cuarto', 'Modelos no lineales');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `literatura`
--
ALTER TABLE `literatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matematica`
--
ALTER TABLE `matematica`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `literatura`
--
ALTER TABLE `literatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `matematica`
--
ALTER TABLE `matematica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
