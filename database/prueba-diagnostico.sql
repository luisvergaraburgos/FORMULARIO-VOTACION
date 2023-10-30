-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2023 a las 21:26:10
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
-- Base de datos: `prueba-diagnostico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidato` int(11) NOT NULL,
  `nombre_candidato` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id_candidato`, `nombre_candidato`) VALUES
(1, 'Juan Fernández'),
(2, 'Miguel Aravena'),
(3, 'Gonzalo Martínez'),
(4, 'María Osorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `id_comuna` int(11) NOT NULL,
  `nombre_comuna` text NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`id_comuna`, `nombre_comuna`, `id_region`) VALUES
(1, 'Alto Hospicio', 1),
(2, 'Camiña', 1),
(3, 'Colchane', 1),
(4, 'Huara', 1),
(5, 'Iquique', 1),
(6, 'Pica', 1),
(7, 'Pozo Almonte', 1),
(8, 'Antofagasta', 2),
(9, 'Calama', 2),
(10, 'María Elena', 2),
(11, 'Mejillones', 2),
(12, 'OllagÜe', 2),
(13, 'San Pedro de Atacama', 2),
(14, 'Sierra Gorda', 2),
(15, 'Taltal', 2),
(16, 'Tocopilla', 2),
(17, 'Alto del Carmen', 3),
(18, 'Caldera', 3),
(19, 'Chañaral', 3),
(20, 'Copiapó', 3),
(21, 'Diego de Almagro', 3),
(22, 'Freirina', 3),
(23, 'Huasco', 3),
(24, 'Tierra Amarilla', 3),
(25, 'Vallenar', 3),
(26, 'Andacollo', 4),
(27, 'Canela', 4),
(28, 'Combarbalá', 4),
(29, 'Coquimbo', 4),
(30, 'Illapel', 4),
(31, 'La Higuera', 4),
(32, 'La Serena', 4),
(33, 'Los Vilos', 4),
(34, 'Monte Patria', 4),
(35, 'Ovalle', 4),
(36, 'Paihuano', 4),
(37, 'Punitaqui', 4),
(38, 'Río Hurtado', 4),
(39, 'Salamanca', 4),
(40, 'Vicuña', 4),
(41, 'Algarrobo', 5),
(42, 'Cabildo', 5),
(43, 'Calera', 5),
(44, 'Calle Larga', 5),
(45, 'Cartagena', 5),
(46, 'Casablanca', 5),
(47, 'Catemu', 5),
(48, 'Concón', 5),
(49, 'El Quisco', 5),
(50, 'El Tabo', 5),
(51, 'Hijuelas', 5),
(52, 'Isla de Pascua', 5),
(53, 'Juan Fernández', 5),
(54, 'La Cruz', 5),
(55, 'La Ligua', 5),
(56, 'Limache', 5),
(57, 'Llaillay', 5),
(58, 'Los Andes', 5),
(59, 'Nogales', 5),
(60, 'Olmué', 5),
(61, 'Panquehue', 5),
(62, 'Papudo', 5),
(63, 'Petorca', 5),
(64, 'Puchuncaví', 5),
(65, 'Putaendo', 5),
(66, 'Quillota', 5),
(67, 'Quilpué', 5),
(68, 'Quintero', 5),
(69, 'Rinconada', 5),
(70, 'San Antonio', 5),
(71, 'San Esteban', 5),
(72, 'San Felipe', 5),
(73, 'Santa María', 5),
(74, 'Santo Domingo', 5),
(75, 'Valparaíso', 5),
(76, 'Villa Alemana', 5),
(77, 'Viña del Mar', 5),
(78, 'Zapallar', 5),
(79, 'Chépica', 6),
(80, 'Chimbarongo', 6),
(81, 'Codegua', 6),
(82, 'Coínco', 6),
(83, 'Coltauco', 6),
(84, 'Doñihue', 6),
(85, 'Graneros', 6),
(86, 'La Estrella', 6),
(87, 'Las Cabras', 6),
(88, 'Litueche', 6),
(89, 'lolol', 6),
(90, 'Machalí', 6),
(91, 'Molloa', 6),
(92, 'Mrachihue', 6),
(93, 'Mostazal', 6),
(94, 'Nancagua', 6),
(95, 'Navidad', 6),
(96, 'Olivar', 6),
(97, 'Palmilla', 6),
(98, 'Paredones', 6),
(99, 'Peralillo', 6),
(100, 'Peumo', 6),
(101, 'Pichidegua', 6),
(102, 'Pichilemu', 6),
(103, 'Placilla', 6),
(104, 'Pumanque', 6),
(105, 'Quinta de Tiloco', 6),
(106, 'Rancagua', 6),
(107, 'Rengo', 6),
(108, 'Requínoa', 6),
(109, 'San Fernando', 6),
(110, 'Santa Cruz', 6),
(111, 'San Vicente', 6),
(112, 'Cauquenes', 7),
(113, 'Chanco', 7),
(114, 'Colbún', 7),
(115, 'Constitución', 7),
(116, 'Curepto', 7),
(117, 'Curicó', 7),
(118, 'Empedrado', 7),
(119, 'Hualañe', 7),
(120, 'Licantén', 7),
(121, 'Linares', 7),
(122, 'Longaví', 7),
(123, 'Maule', 7),
(124, 'Molina', 7),
(125, 'Parral', 7),
(126, 'Pelarco', 7),
(127, 'Pelluhue', 7),
(128, 'Pencahue', 7),
(129, 'Rauco', 7),
(130, 'Retiro', 7),
(131, 'Río Claro', 7),
(132, 'Romeral', 7),
(133, 'Sagrada Familia', 7),
(134, 'San Clemente', 7),
(135, 'San Javier', 7),
(136, 'San Rafael', 7),
(137, 'Talca', 7),
(138, 'Teno', 7),
(139, 'Vichuquén', 7),
(140, 'Villa Alegre', 7),
(141, 'Yerbas Buenas', 7),
(142, 'Alto Biobío', 8),
(143, 'Antuco', 8),
(144, 'Arauco', 8),
(145, 'Cabrero', 8),
(146, 'Cañete', 8),
(147, 'Chiguayante', 8),
(148, 'Concepción', 8),
(149, 'Contulmo', 8),
(150, 'Coronel', 8),
(151, 'Curanilahue', 8),
(152, 'Florida', 8),
(153, 'Hualpén', 8),
(154, 'Hualqui', 8),
(155, 'Laja', 8),
(156, 'Lebu', 8),
(157, 'Los Alamos', 8),
(158, 'Los Angeles', 8),
(159, 'Lota', 8),
(160, 'Mulchén', 8),
(161, 'Nacimiento', 8),
(162, 'Negrete', 8),
(163, 'Penco', 8),
(164, 'Quilaco', 8),
(165, 'Quilleco', 8),
(166, 'San Pedro de la Paz', 8),
(167, 'San Rosendo', 8),
(168, 'Santa Bárbara', 8),
(169, 'Santa Juana', 8),
(170, 'Talcahuano', 8),
(171, 'Tirúa', 8),
(172, 'Tomé', 8),
(173, 'Tucapel', 8),
(174, 'Yumbel', 8),
(175, 'Angol', 9),
(176, 'Carahue', 9),
(177, 'Cholchol', 9),
(178, 'Collipulli', 9),
(179, 'Cunco', 9),
(180, 'Curacautín', 9),
(181, 'Curarrehue', 9),
(182, 'Ercilla', 9),
(183, 'Freire', 9),
(184, 'Galvarino', 9),
(185, 'Gorbea', 9),
(186, 'Lautaro', 9),
(187, 'Loncoche', 9),
(188, 'Lonquimay', 9),
(189, 'Los Sauces', 9),
(190, 'Lumaco', 9),
(191, 'Milepeuco', 9),
(192, 'Nueva Imperial', 9),
(193, 'Padre Las Casas', 9),
(194, 'Perquenco', 9),
(195, 'Pitrufquén', 9),
(196, 'Pucón', 9),
(197, 'Purén', 9),
(198, 'Renaico', 9),
(199, 'Saavedra', 9),
(200, 'Temuco', 9),
(201, 'Teodoro Schmidt', 9),
(202, 'Toltén', 9),
(203, 'Traiguén', 9),
(204, 'Victoria', 9),
(205, 'Vilcún', 9),
(206, 'Villarrica', 9),
(207, 'Ancud', 10),
(208, 'Calbuco', 10),
(209, 'Castro', 10),
(210, 'Chaitén', 10),
(211, 'Chonchi', 10),
(212, 'Cochamó', 10),
(213, 'Curaco de Vélez', 10),
(214, 'Dalcahue', 10),
(215, 'Fresia', 10),
(216, 'Frutillar', 10),
(217, 'Futaleufú', 10),
(218, 'Hualaihué', 10),
(219, 'Los Muermos', 10),
(220, 'Maullín', 10),
(221, 'Osorno', 10),
(222, 'Palena', 10),
(223, 'Puerto Montt', 10),
(224, 'Puerto Octay', 10),
(225, 'Puerto Varas', 10),
(226, 'Puqueldón', 10),
(227, 'Purranque', 10),
(228, 'Puyehue', 10),
(229, 'Queilén', 10),
(230, 'Quellón', 10),
(231, 'Quemchi', 10),
(232, 'Quinchao', 10),
(233, 'Río Negro', 10),
(234, 'San Juan de la Costa', 10),
(235, 'San Pablo', 10),
(236, 'Aysén', 10),
(237, 'Chile Chico', 11),
(238, 'Cisnes', 11),
(239, 'Cochrane', 11),
(240, 'Coyhaique', 11),
(241, 'Guaitecas', 11),
(242, 'Lago Verde', 11),
(243, 'O´Higgins', 11),
(244, 'Río Ibáñez', 11),
(245, 'Tortel', 11),
(246, 'Antártica', 11),
(247, 'Cabo de Hornos', 12),
(248, 'Laguna Blanca', 12),
(249, 'Natales', 12),
(250, 'Porvenir', 12),
(251, 'Primavera', 12),
(252, 'Punta Arenas', 12),
(253, 'Río Verde', 12),
(254, 'San Gregorio', 12),
(255, 'Timaukel', 12),
(256, 'Torres del Paine', 12),
(257, 'Alhué', 12),
(258, 'Buin', 13),
(259, 'Calera de Tango', 13),
(260, 'Cerrillos', 13),
(261, 'Cerro Navia', 13),
(262, 'Colina', 13),
(263, 'Conchalí', 13),
(264, 'Curacaví', 13),
(265, 'El Bosque', 13),
(266, 'El Monte', 13),
(267, 'Estación Central', 13),
(268, 'Huechuraba', 13),
(269, 'Independencia', 13),
(270, 'Isla de Maipo', 13),
(271, 'La Cisterna', 13),
(272, 'La Florida', 13),
(273, 'La Granja', 13),
(274, 'Lampa', 13),
(275, 'La Pintana', 13),
(276, 'La Reina', 13),
(277, 'Las Condes', 13),
(278, 'Lo Barnechea', 13),
(279, 'Lo Espejo', 13),
(280, 'Lo Prado', 13),
(281, 'Macul', 13),
(282, 'Maipú', 13),
(283, 'María Pinto', 13),
(284, 'Melipilla', 13),
(285, 'Ñuñoa', 13),
(286, 'Padre Hurtado', 13),
(287, 'Paine', 13),
(288, 'Pedro Aguirre Cerda', 13),
(289, 'Peñaflor', 13),
(290, 'Peñalolén', 13),
(291, 'Pirque', 13),
(292, 'Providencia', 13),
(293, 'Pudahuel', 13),
(294, 'Puente Alto', 13),
(295, 'Quilicura', 13),
(296, 'Quinta Normal', 13),
(297, 'Recoleta', 13),
(298, 'Renca', 13),
(299, 'San Bernardo', 13),
(300, 'San Joaquín', 13),
(301, 'San José de Maipo', 13),
(302, 'San Miguel', 13),
(303, 'San Pedro', 13),
(304, 'San Ramón', 13),
(305, 'Santiago', 13),
(306, 'Talagante', 13),
(307, 'Til Til', 13),
(308, 'Vitacura', 13),
(309, 'Corral', 14),
(310, 'Frutono', 14),
(311, 'Lanco', 14),
(312, 'La Unión', 14),
(313, 'Los Lagos', 14),
(314, 'Máfil', 14),
(315, 'Mariquina', 14),
(316, 'Paillaco', 14),
(317, 'Panguipulli', 14),
(318, 'Río Bueno', 14),
(319, 'Valdivia', 14),
(320, 'Arica', 15),
(321, 'Camarones', 15),
(322, 'General Lagos', 15),
(323, 'Putre', 15),
(324, 'Bulnes', 0),
(325, 'Chillán', 0),
(326, 'Chillán Viejo', 16),
(327, 'Cobquecura', 16),
(328, 'Coelemu', 16),
(329, 'Coihueco', 16),
(330, 'El Carmen', 16),
(331, 'Ninhue', 16),
(332, 'Ñiquén', 16),
(333, 'Pemuco', 16),
(334, 'Pinto', 16),
(335, 'Portezuelo', 16),
(336, 'Quillón', 16),
(337, 'Quirihue', 16),
(338, 'Ránquil', 16),
(339, 'San Carlos', 16),
(340, 'San Fabián', 16),
(341, 'San Ignacio', 16),
(342, 'San Nicolás', 16),
(343, 'Treguaco', 16),
(344, 'Yungay', 16),
(345, 'Algarrobo', 5),
(346, 'Cabildo', 5),
(347, 'Calera', 5),
(348, 'Calle Larga', 5),
(349, 'Cartagena', 5),
(350, 'Casablanca', 5),
(351, 'Catemu', 5),
(352, 'Concón', 5),
(353, 'El Quisco', 5),
(354, 'El Tabo', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio`
--

CREATE TABLE `medio` (
  `id_medio` int(11) NOT NULL,
  `nombre_medio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `medio`
--

INSERT INTO `medio` (`id_medio`, `nombre_medio`) VALUES
(1, 'Web'),
(2, 'TV'),
(3, 'Redes Sociales'),
(4, 'Amigo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `nombre_region` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id`, `nombre_region`) VALUES
(1, 'Región de Tarapacá'),
(2, 'Región de Antofagasta'),
(3, 'Región de Atacama	'),
(4, 'Región de Coquimbo	'),
(5, 'Región de Valparaíso	'),
(6, 'Región del Libertador General Bernardo O’Higgins	'),
(7, 'Región del Maule	'),
(8, 'Región del Bio-bío	'),
(9, 'Región de La Araucanía	'),
(10, 'Región de Los Lagos	'),
(11, 'Región Aysén del General Carlos Ibáñez del Campo	'),
(12, 'Región de Magallanes y Antártica Chilena	'),
(13, 'Región Metropolitana de Santiago	'),
(14, 'Región de Los Ríos	'),
(15, 'Región de Arica y Parinacota	'),
(16, 'Región de Ñuble	');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id_nombre` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `alias` text NOT NULL,
  `rut` varchar(12) NOT NULL,
  `email` text NOT NULL,
  `id_region` int(11) NOT NULL,
  `id_com` int(11) NOT NULL,
  `id_cand` int(11) NOT NULL,
  `id_med` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`id_comuna`);

--
-- Indices de la tabla `medio`
--
ALTER TABLE `medio`
  ADD PRIMARY KEY (`id_medio`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id_nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `id_comuna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT de la tabla `medio`
--
ALTER TABLE `medio`
  MODIFY `id_medio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id_nombre` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
