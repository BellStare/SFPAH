-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 06:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsfpah`
--

-- --------------------------------------------------------

--
-- Table structure for table `historial_precios`
--

CREATE TABLE `historial_precios` (
  `id` int(11) NOT NULL,
  `prod_cod` varchar(50) NOT NULL,
  `pre` double(10,2) NOT NULL,
  `emarket` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historial_precios`
--

INSERT INTO `historial_precios` (`id`, `prod_cod`, `pre`, `emarket`, `fecha`) VALUES
(5, 'PA-001', 3.50, 'Metro', '2023-04-10'),
(6, 'PA-001', 3.30, 'Metro', '2023-04-17'),
(7, 'PA-001', 3.60, 'Metro', '2023-04-24'),
(8, 'PA-001', 3.60, 'Metro', '2023-05-01'),
(9, 'PA-001', 3.60, 'Metro', '2023-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `pass`) VALUES
('usera', '$2y$10$C20iabtnO0fp1Zx5PYX/fetkDRORFDjsVMzYODaAR088vpm1vM.U6'),
('userb', '$2y$10$6cj3ebfvQxi52//q2psVZOCPl9XN2lbSmgibmYqjG3bOk5QjVtHrW'),
('userc', '$2y$10$VdPfJLDAtHSjKw5cqRukB.BIdVQhqHEOWGzWyr3KBypP0TzE8zlXO'),
('superusuario', '$2y$10$rrRHjxvVLQfumPqiwXQGseZS7ANI208MKymVBwCbbs0bXKyY.slo2'),
('', '$2y$10$Ldp5sVRlp6M99zGxl8f7U.Cvh1rHoq7C4wmH6C7cJ.iHrRwhmQbHa'),
('uwu', '$2y$10$lhJlT7etnGDYSWMiJkCNsupGU.MfugbvJtNQT1uHDnMHBmkTcld06'),
('unmsm', '$2y$10$Tk/2Lisji2.Kw5qHhvc.ze62M7MhpkX1FPY1BC5KDTuyHnjJkIgFm'),
('alex', '$2y$10$6XNFBzNTUdBYwNJT7Dj7xO26iATq4hZ4DTYhPGkC4gLSn2Z/b41A2');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `cod` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `pre` double(10,2) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `img`, `cod`, `nom`, `pre`,`url`) VALUES
(1, 'img/catalogo/arroz.jpg', 'PA-001', 'Arroz', 3.50,'https://www.metro.pe/arroz-superior-valle-norte-primera-cosecha-bolsa-750-g/p'),
(3, 'img/catalogo/cebollas.jpg', 'PA-002', 'Cebollas', 4.00,'https://www.plazavea.com.pe/cebolla-blanca/p'),
(4, 'img/catalogo/leche.jpg', 'PA-003', 'Leche fresca', 4.20,'https://tottus.falabella.com.pe/tottus-pe/product/115807109/leche-gloria-reconstituida-400gr/115807111'),
(5, 'img/catalogo/lentejas.jpg', 'PA-004', 'Lentejas', 5.00,'https://tottus.falabella.com.pe/tottus-pe/product/113709037/tottus-lenteja-40330079/113709039?'),
(6, 'img/catalogo/mantequilla.jpg', 'PA-005', 'Mantequilla', 2.20,'https://www.metro.pe/mantequilla-con-sal-gloria-200g-2/p?'),
(7, 'img/catalogo/panes.jpg', 'PA-006', 'Panes', 8.42,'https://tottus.falabella.com.pe/tottus-pe/product/113708458/pan-bimbo-molde-rebanado-480gr-np/113708459'),
(8, 'img/catalogo/fideos.jpg', 'PA-007', 'Fideos', 1.80,'https://www.metro.pe/cabello-de-angel-nicolini-250g/p'),
(9, 'img/catalogo/pescado.jpg', 'PA-008', 'Pescado', 6.00,'https://www.plazavea.com.pe/pescado-bonito-entero-fresco/p'),
(10, 'img/catalogo/pollo.jpg', 'PA-009', 'Pollo', 10.00,'https://www.plazavea.com.pe/pollo-fresco-con-menudencia/p?'),
(11, 'img/catalogo/queso.jpg', 'PA-010', 'Queso Mozzarella', 11.50,'https://www.metro.pe/queso-mozzarella-bonle-bola-250-g-2/p'),
(12, 'img/catalogo/zanahorias.jpg', 'PA-011', 'Zanahorias', 3.00,'https://www.plazavea.com.pe/zanahoria-b/p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `historial_precios`
--
ALTER TABLE `historial_precios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod` (`cod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `historial_precios`
--
ALTER TABLE `historial_precios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
