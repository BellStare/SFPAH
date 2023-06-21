-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2023 a las 21:13:06
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
-- Base de datos: `dbsfpah`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`username`, `pass`) VALUES
('usera', '$2y$10$C20iabtnO0fp1Zx5PYX/fetkDRORFDjsVMzYODaAR088vpm1vM.U6'),
('userb', '$2y$10$6cj3ebfvQxi52//q2psVZOCPl9XN2lbSmgibmYqjG3bOk5QjVtHrW'),
('userc', '$2y$10$VdPfJLDAtHSjKw5cqRukB.BIdVQhqHEOWGzWyr3KBypP0TzE8zlXO'),
('superusuario', '$2y$10$rrRHjxvVLQfumPqiwXQGseZS7ANI208MKymVBwCbbs0bXKyY.slo2'),
('', '$2y$10$Ldp5sVRlp6M99zGxl8f7U.Cvh1rHoq7C4wmH6C7cJ.iHrRwhmQbHa'),
('uwu', '$2y$10$lhJlT7etnGDYSWMiJkCNsupGU.MfugbvJtNQT1uHDnMHBmkTcld06'),
('unmsm', '$2y$10$Tk/2Lisji2.Kw5qHhvc.ze62M7MhpkX1FPY1BC5KDTuyHnjJkIgFm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `cod` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `pre` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `img`, `cod`, `nom`, `pre`) VALUES
(1, 'img/catalogo/arroz.jpg', 'PA-001', 'Arroz', 3.50),
(3, 'img/catalogo/cebollas.jpg', 'PA-002', 'Cebollas', 3.30),
(4, 'img/catalogo/leche.jpg', 'PA-003', 'Leche fresca', 1.50),
(5, 'img/catalogo/lentejas.jpg', 'PA-004', 'Lentejas', 5.00),
(6, 'img/catalogo/mantequilla.jpg', 'PA-005', 'Mantequilla', 2.20),
(7, 'img/catalogo/panes.jpg', 'PA-006', 'Panes', 1.50),
(8, 'img/catalogo/fideos.jpg', 'PA-007', 'Fideos', 2.50),
(9, 'img/catalogo/pescado.jpg', 'PA-008', 'Pescado', 4.50),
(10, 'img/catalogo/pollo.jpg', 'PA-009', 'Pollo', 10.00),
(11, 'img/catalogo/queso.jpg', 'PA-010', 'Queso', 8.00),
(12, 'img/catalogo/zanahorias.jpg', 'PA-011', 'Zanahorias', 2.50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod` (`cod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
