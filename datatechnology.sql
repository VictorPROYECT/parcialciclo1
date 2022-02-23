-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2022 a las 19:33:27
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datatechnology`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computo`
--

CREATE TABLE `computo` (
  `id_computo` int(11) NOT NULL COMMENT 'identifica de forma unica el computo',
  `nombre_computo` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre del computo',
  `codigo_equipo` int(11) NOT NULL,
  `nombre_equipo` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre del quipo',
  `empleado_nombre` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre del empleado',
  `codigo_empleado` int(11) NOT NULL,
  `nombre_visitante` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre del visitante',
  `dui_visitante` int(11) NOT NULL,
  `cantidad_equipo` int(11) NOT NULL COMMENT 'almacena la cantidad'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `computo`
--

INSERT INTO `computo` (`id_computo`, `nombre_computo`, `codigo_equipo`, `nombre_equipo`, `empleado_nombre`, `codigo_empleado`, `nombre_visitante`, `dui_visitante`, `cantidad_equipo`) VALUES
(1, 'computo1', 1, 'hp', 'alejandro', 1, 'Aurelia', 329986357, 1),
(2, 'computo2', 2, 'hp', 'adriana', 2, 'amal', 397417409, 2),
(3, 'computo3', 5, 'huawei', 'naida', 14, 'madeson', 597774802, 2),
(4, 'computo4', 7, 'ryzen', 'edward', 25, 'cassidy', 495198189, 5),
(5, 'computo5', 8, 'lenovo', 'irene', 30, 'emi', 461314295, 3),
(6, 'computo6', 9, 'samsung ', 'craig', 12, 'driscoll', 349682922, 1),
(7, 'computo7', 10, 'msi', 'jane', 17, 'tate', 381392201, 2),
(8, 'computo8', 11, 'acer', 'tatiana', 9, 'bevis', 337801587, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `codigo_empleado` int(11) NOT NULL COMMENT 'identifica de forma unica al empleado',
  `empleado_nombre` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre del empleado',
  `empleado_apellido` varchar(50) DEFAULT NULL COMMENT 'almacena el apellido del empleado',
  `empleado_telefono` int(11) DEFAULT NULL COMMENT 'almacena el numero unico de cada empleado',
  `empleado_correo` varchar(100) DEFAULT NULL COMMENT 'almacena el correo del empleado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`codigo_empleado`, `empleado_nombre`, `empleado_apellido`, `empleado_telefono`, `empleado_correo`) VALUES
(1, 'alejandro', 'lara', 72548417, 'vlaidmir1911@gmail.com'),
(2, 'ADRIANA', 'RODRIGUEZ MOLANO', 6127532, 'ADRIRM108@YAHOO.FR'),
(3, 'Rudyard', 'Montoya', 72548425, 'pede@hotmail.couk'),
(4, 'Carly', 'Juarez', 25365895, 'nibh.enim@icloud.org'),
(5, 'Lucy', 'Burns', 5236589, 'molestie@gmail.org'),
(6, 'Illiana', 'Stephenson', 7582653, 'libero@icloud.net'),
(7, 'Nehru', 'Mckenzie', 7265369, 'nam.tempor@icloud.edu'),
(8, 'Kenneth', 'Rosa', 2541525, 'vel.turpis@google.com'),
(9, 'Tatiana', 'Donovan', 125485, 'nec.tellus.nunc@yahoo.org'),
(10, 'Uriah', 'Pratt', 2421630, 'erat@hotmail.net'),
(11, 'Shelly', 'Mathis', 4617216, 'a.felis@icloud.com'),
(12, 'Craig', 'Flores', 6895156, 'id.ante.dictum@yahoo.net'),
(13, 'Pearl', 'Gross', 7087054, 'eget.dictum.placerat@google.ca'),
(14, 'Naida', 'Wyatt', 3332692, 'dui@hotmail.edu'),
(15, 'Kyla', 'Whitley', 4221361, 'dui@hotmail.edu'),
(16, 'Cullen', 'Mcneil', 8653575, 'vulputate.dui.nec@yahoo.ca'),
(17, 'Jane', 'Nelson', 2147483647, 'ac.mattis@hotmail.net'),
(18, 'Lev', 'Sharp', 2147483647, 'gravida@gmail.org'),
(19, 'Dieter', 'Stokes', 1851413821, 'torquent.per@hotmail.couk'),
(20, 'Lars', 'Gross', 125503, 'quisque@hotmail.com'),
(21, 'Kaitlin', 'Bird', 5042743, 'nec.euismod.in@gmail.com'),
(22, 'Wendy', 'Mccoy', 2147483647, 'semper.et@yahoo.couk'),
(23, 'Britanney', 'Reid', 3252545, 'nunc.nulla.vulputate@outlook.net'),
(24, 'Cullen', 'Barnett', 2147483647, 'integer.in.magna@gmail.org'),
(25, 'Edward', 'Mcknight', 2147483647, 'elit@outlook.edu'),
(26, 'Lucy', 'Mosley', 100356532, 'mi@gmail.edu'),
(27, 'Quon', 'Dalton', 2147483647, 'augue.sed.molestie@icloud.edu'),
(28, 'Josephine', 'Lowery', 2147483647, 'non@google.ca'),
(29, 'Hu', 'Pena', 1748718468, 'nunc.mauris@outlook.net'),
(30, 'Irene', 'Nolan', 2147483647, 'at.libero.morbi@icloud.org');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `codigo_equipo` int(11) NOT NULL COMMENT 'identificacion unica de cada equipo',
  `nombre_equipo` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre de cada dispositivo',
  `modelo` varchar(50) DEFAULT NULL COMMENT 'almacena el modelo unico de cada dispositivo',
  `estado_equipo` varchar(50) DEFAULT NULL COMMENT 'almacena el estado del equipo',
  `cantidad_equipo` int(11) NOT NULL COMMENT 'almacena la cantidad de dispotivos',
  `descripcion` varchar(50) DEFAULT NULL COMMENT 'almacena la descripcion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`codigo_equipo`, `nombre_equipo`, `modelo`, `estado_equipo`, `cantidad_equipo`, `descripcion`) VALUES
(1, 'hp', 'hp', 'nuevo', 1, 'nuevo modelo'),
(2, 'hp', 'hp052616', 'nuevo', 1, 'nuevo modelo'),
(3, 'lg', 'lg21961', 'nuevo', 2, 'nuevo modelo'),
(4, 'lg', 'lg2626913', 'nuevo', 5, 'nuevo modelo'),
(5, 'huawei', 'huawei 1502', 'reparado', 4, 'reparado'),
(6, 'huawei', 'huawei1090', 'reparado', 3, 'reparado'),
(7, 'ryzen', 'ryzen06666', 'configuracion', 1, 'configurando equipo'),
(8, 'lenovo', 'lenovo1300', 'deshabilitado ', 2, 'fuera de servicio'),
(9, 'samsung ', 'samsung91630', 'deshabilitado ', 5, 'por la bateria fuera de uso'),
(10, 'msi', 'msi9999', 'nuevo', 6, 'nuevos '),
(11, 'acer ', 'acer561201', 'reparado', 5, 'reparado hace dos semanas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `dui_visitante` int(11) NOT NULL COMMENT 'numero de identidad unico',
  `nombre_visitante` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre del visitante',
  `apellido_visitante` varchar(50) DEFAULT NULL COMMENT 'almacena el apellido del visitante',
  `asunto` varchar(10) DEFAULT NULL COMMENT 'describe el motivo de visita',
  `hora_entrada` time DEFAULT NULL COMMENT 'muestra hora de entrada del visitante',
  `hora_salida` time DEFAULT NULL COMMENT 'muestra la hora de salida del visitante',
  `fecha` date DEFAULT NULL COMMENT 'muestra la fecha visita'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`dui_visitante`, `nombre_visitante`, `apellido_visitante`, `asunto`, `hora_entrada`, `hora_salida`, `fecha`) VALUES
(152341342, 'Lydia', 'Banks', 'visistante', '09:28:28', '10:28:28', '2022-06-03'),
(162926225, 'Ruth', 'Gaine', 'visistante', '09:28:28', '02:28:28', '2022-05-03'),
(186438191, 'Palmer', 'Jimenez', 'visistante', '12:28:28', '03:28:28', '2022-02-01'),
(193772625, 'Bruce', 'Mcpherson', 'visistante', '07:28:28', '08:28:28', '2022-08-05'),
(211373849, 'Jason', 'Willis', 'visistante', '07:28:28', '08:28:28', '2022-02-03'),
(218457554, 'Aurora', 'Black', 'visistante', '08:28:28', '02:28:28', '2022-02-03'),
(227353216, 'Vivian', 'Davenport', 'visistante', '09:28:28', '10:28:28', '2022-02-10'),
(238228565, 'Virginia', 'Zamora', 'visistante', '08:28:28', '09:28:28', '2022-03-01'),
(239601765, 'Linus', 'Cash', 'visistante', '11:28:28', '02:28:28', '2022-04-05'),
(241058954, 'Cole', 'Stokes', 'visistante', '12:28:28', '01:28:28', '2022-06-09'),
(244878334, 'Nyssa', 'Allen', 'visistante', '07:28:28', '09:28:28', '2022-01-09'),
(247357785, 'Shea', 'Cleveland', 'visistante', '09:28:28', '01:28:28', '2022-03-05'),
(259801904, 'Colton', 'Park', 'visistante', '12:28:28', '02:28:28', '2022-09-02'),
(274196319, 'Hashim', 'Head', 'visistante', '08:28:28', '08:58:19', '2022-02-10'),
(293401101, 'Tara', 'Blevin', 'visistante', '09:28:28', '05:28:28', '2022-06-09'),
(312663945, 'Quyn', 'Tanner', 'visistante', '10:28:28', '02:28:28', '2022-04-06'),
(317799624, 'Mercedes', 'Conner', 'visistante', '10:28:28', '12:28:28', '2022-08-04'),
(318451735, 'Hector', 'Flowers', 'visistante', '11:28:28', '02:28:28', '2022-03-02'),
(326877794, 'victor', 'leon', 'visistante', '10:28:28', '02:28:28', '2022-05-03'),
(329986357, 'Aurelia', 'Lowe', 'visistante', '08:28:28', '10:28:28', '2022-02-02'),
(337801587, 'Bevis', 'Gutierrez', 'visistante', '09:28:28', '09:28:28', '2022-08-03'),
(349682922, 'Driscoll', 'George', 'visistante', '10:28:28', '03:28:28', '2022-07-06'),
(364847054, 'Vladimir', 'Carson', 'visistante', '07:28:28', '08:28:28', '2022-06-07'),
(368328000, 'Quinlan', 'Millen', 'visistante', '08:28:28', '02:28:28', '2022-09-03'),
(381392201, 'Tate', 'Wade', 'visistante', '06:28:28', '07:28:28', '2022-05-04'),
(389783815, 'Imogene', 'Roman', 'visistante', '06:28:28', '08:28:28', '2022-01-10'),
(396073515, 'Porter', 'Cantrell', 'visistante', '12:28:28', '01:28:28', '2022-05-08'),
(397417409, 'Amal', 'Lewis', 'visistante', '01:58:19', '02:58:19', '2022-02-19'),
(408362972, 'Gisela', 'Chaney', 'visistante', '09:28:28', '02:28:28', '2022-05-03'),
(417055464, 'India', 'Ballard', 'visistante', '08:28:28', '07:28:28', '2022-07-06'),
(419467634, 'Shannon', 'Raymond', 'visistante', '08:28:28', '01:28:28', '2022-06-07'),
(423332985, 'Jarrod', 'Gould', 'visistante', '11:28:28', '02:28:28', '2022-09-01'),
(445862533, 'Chase', 'Chambers', 'visistante', '09:28:28', '10:28:28', '2022-05-07'),
(451952365, 'Jacob', 'George', 'visistante', '10:28:28', '02:28:28', '2022-03-09'),
(461314295, 'Emi', 'Chan', 'visistante', '10:28:28', '02:28:28', '2022-08-04'),
(481303075, 'Mallory', 'Rosa', 'visistante', '07:28:28', '09:28:28', '2022-03-02'),
(495198189, 'Cassidy', 'Puckett', 'visistante', '09:28:28', '10:28:28', '2022-08-05'),
(575293855, 'Micah', 'Kirby', 'visistante', '08:28:28', '09:28:28', '2022-01-08'),
(597774802, 'Madeson', 'Warren', 'visistante', '01:28:28', '02:28:28', '2022-01-09'),
(614696225, 'Marny', 'Kandry', 'visistante', '06:28:28', '09:28:28', '2022-04-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vitacora_de_acceso`
--

CREATE TABLE `vitacora_de_acceso` (
  `id_vitacora` int(11) NOT NULL COMMENT 'identifica de forma unica cada vitacora',
  `empleado_nombre` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre del empleado',
  `codigo_empleado` int(11) NOT NULL COMMENT 'identifica de forma unica al empleado',
  `fecha` date DEFAULT NULL COMMENT 'muestra la fecha acceso',
  `hora_entrada` time DEFAULT NULL COMMENT 'muestra la hora de entrada',
  `hora_salida` time DEFAULT NULL COMMENT 'muestra la hora de salida',
  `asunto` varchar(100) DEFAULT NULL COMMENT 'descripcion del asunto',
  `id_computo` int(11) NOT NULL COMMENT 'identifica de forma unica el computo',
  `computo_solicitado` varchar(100) DEFAULT NULL COMMENT 'almacena el nombre del computo',
  `codigo_equipo` int(11) NOT NULL COMMENT 'identificacion unica de cada equipo',
  `nombre_equipo` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre de cada dispositivo',
  `dui_visitante` int(11) NOT NULL COMMENT 'numero de identidad unico',
  `nombre_visitante` varchar(50) DEFAULT NULL COMMENT 'almacena el nombre del visitante',
  `observaciones` varchar(100) DEFAULT NULL COMMENT 'almacena las observaciones',
  `reporte_de_anomalias` varchar(100) DEFAULT NULL COMMENT 'almacena los reportes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vitacora_de_acceso`
--

INSERT INTO `vitacora_de_acceso` (`id_vitacora`, `empleado_nombre`, `codigo_empleado`, `fecha`, `hora_entrada`, `hora_salida`, `asunto`, `id_computo`, `computo_solicitado`, `codigo_equipo`, `nombre_equipo`, `dui_visitante`, `nombre_visitante`, `observaciones`, `reporte_de_anomalias`) VALUES
(1, 'alejandro', 1, '2022-02-02', '08:28:28', '10:28:28', 'normal', 1, 'computo1', 1, 'hp', 329986357, 'Aurelia', 'todo normal', 'ninguna'),
(2, 'edward', 25, '2022-02-11', '11:46:19', '12:46:19', 'sospechoso', 5, 'computo numero 5', 6, 'huawei', 381392201, 'tate', 'sospechoso forma de actuar rara', 'No ocurrió nada mientras el se encontró en el computo 5'),
(3, 'lucy', 26, '2022-02-05', '15:46:19', '16:46:19', 'todo normal', 2, 'computo numero 2', 11, 'acer', 349682922, 'driscoll', 'ninguna', 'ninguna'),
(4, 'kayla', 15, '2022-02-17', '06:05:52', '07:06:10', 'todo normal', 8, 'computo numero 8', 10, 'msi', 396073515, 'porter', 'sospecho', 'se quiso llevar el cargador'),
(5, 'hu', 29, '2022-02-28', '09:20:10', '12:04:50', 'sospechoso', 4, 'computo numero 4', 7, 'ryzen', 293401101, 'tara', 'normal', 'ninguna');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `computo`
--
ALTER TABLE `computo`
  ADD PRIMARY KEY (`id_computo`),
  ADD KEY `codigo_equipo` (`codigo_equipo`),
  ADD KEY `codigo_empleado` (`codigo_empleado`),
  ADD KEY `dui_visitante` (`dui_visitante`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`codigo_empleado`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`codigo_equipo`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`dui_visitante`);

--
-- Indices de la tabla `vitacora_de_acceso`
--
ALTER TABLE `vitacora_de_acceso`
  ADD PRIMARY KEY (`id_vitacora`),
  ADD KEY `codigo_empleado` (`codigo_empleado`),
  ADD KEY `id_computo` (`id_computo`),
  ADD KEY `dui_visitante` (`dui_visitante`),
  ADD KEY `codigo_equipo` (`codigo_equipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `computo`
--
ALTER TABLE `computo`
  MODIFY `id_computo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identifica de forma unica el computo', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `codigo_empleado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identifica de forma unica al empleado', AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `codigo_equipo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificacion unica de cada equipo', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `dui_visitante` int(11) NOT NULL AUTO_INCREMENT COMMENT 'numero de identidad unico', AUTO_INCREMENT=614696226;

--
-- AUTO_INCREMENT de la tabla `vitacora_de_acceso`
--
ALTER TABLE `vitacora_de_acceso`
  MODIFY `id_vitacora` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identifica de forma unica cada vitacora', AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `computo`
--
ALTER TABLE `computo`
  ADD CONSTRAINT `computo_ibfk_1` FOREIGN KEY (`codigo_equipo`) REFERENCES `equipo` (`codigo_equipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `computo_ibfk_2` FOREIGN KEY (`codigo_empleado`) REFERENCES `empleados` (`codigo_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `computo_ibfk_3` FOREIGN KEY (`dui_visitante`) REFERENCES `visitantes` (`dui_visitante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vitacora_de_acceso`
--
ALTER TABLE `vitacora_de_acceso`
  ADD CONSTRAINT `vitacora_de_acceso_ibfk_1` FOREIGN KEY (`codigo_empleado`) REFERENCES `empleados` (`codigo_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vitacora_de_acceso_ibfk_2` FOREIGN KEY (`id_computo`) REFERENCES `computo` (`id_computo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vitacora_de_acceso_ibfk_3` FOREIGN KEY (`dui_visitante`) REFERENCES `visitantes` (`dui_visitante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vitacora_de_acceso_ibfk_4` FOREIGN KEY (`codigo_equipo`) REFERENCES `equipo` (`codigo_equipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
