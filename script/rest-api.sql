-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2024 a las 08:10:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rest-api`
--
CREATE DATABASE IF NOT EXISTS `rest-api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rest-api`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `ano_publicacion` date NOT NULL,
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `categoria`, `ano_publicacion`, `ISBN`) VALUES
(4, 'Cien años de soledad', 'Gabriel García Márquez', 'Ficción', '1967-06-05', '9783161484100'),
(7, '1984 Actual', 'George Orwell Actual', 'Ficción Actual', '1949-04-05', '9780452333256'),
(8, 'Diseño Agregado', 'Nuria Agregada', 'Ing, Informatica Agregada', '2010-10-02', '9789502305999'),
(9, 'Marketing Extraordinario', 'Damian Di Pace', 'Economia', '2016-03-03', '9789502325620'),
(10, 'Redes Television y Elecciones', 'Ana Slimovich', 'Comunicacion', '2022-03-01', '9789502331997'),
(11, 'Ingenieria Electromagnetica', 'Juan Carlos Fernandez', 'Ing Informatica y Matematica', '2013-03-01', '9789502320946'),
(12, 'Lenguaje Politico Argentino', 'Anibal Americo D´Auria', 'Politica', '2024-03-04', '9789502334516'),
(13, 'El estudio de los signos', 'Maria Alejandra Vitale', 'Semiotica', '2010-04-01', '9789502312347'),
(14, 'Diseño Estadistico', 'Nuria Cortada De Kohan', 'Ing, Informatica y Matematica', '2010-05-03', '9789502305691'),
(15, 'Caulquiera', 'George Orwell Actual', 'Ficción Actual', '1949-04-05', '1234452337886'),
(16, 'otro Libro', 'Autor Equis', 'Ficción', '2024-01-01', '008-3-16-0000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
