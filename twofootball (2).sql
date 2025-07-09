-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2025 a las 00:36:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `twofootball`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificaciones`
--

CREATE TABLE `clasificaciones` (
  `clasificacion_id` int(11) NOT NULL,
  `liga_id` int(11) DEFAULT NULL,
  `equipo_id` int(11) DEFAULT NULL,
  `posicion` int(11) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL,
  `partidos_jugados` int(11) DEFAULT NULL,
  `partidos_ganados` int(11) DEFAULT NULL,
  `partidos_empatados` int(11) DEFAULT NULL,
  `partidos_perdidos` int(11) DEFAULT NULL,
  `goles_a_favor` int(11) DEFAULT NULL,
  `goles_en_contra` int(11) DEFAULT NULL,
  `diferencia_goles` int(11) DEFAULT NULL,
  `temporada` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clasificaciones`
--

INSERT INTO `clasificaciones` (`clasificacion_id`, `liga_id`, `equipo_id`, `posicion`, `puntos`, `partidos_jugados`, `partidos_ganados`, `partidos_empatados`, `partidos_perdidos`, `goles_a_favor`, `goles_en_contra`, `diferencia_goles`, `temporada`) VALUES
(1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(4, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(5, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(6, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(7, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(8, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(9, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(10, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(11, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(12, 1, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(13, 1, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(14, 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(15, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(16, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(17, 1, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(18, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(19, 1, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025'),
(20, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024/2025');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `equipo_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `liga_id` int(11) DEFAULT NULL,
  `fundacion` year(4) DEFAULT NULL,
  `estadio` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `abreviacion` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`equipo_id`, `nombre`, `liga_id`, `fundacion`, `estadio`, `ciudad`, `abreviacion`) VALUES
(1, 'Real Madrid', 1, '1902', 'Santiago Bernabéu', 'Madrid', 'RMA'),
(2, 'FC Barcelona', 1, '0000', 'Spotify Camp Nou', 'Barcelona', 'FCB'),
(3, 'Atlético de Madrid', 1, '1903', 'Cívitas Metropolitano', 'Madrid', 'ATM'),
(4, 'Athletic Club', 1, '0000', 'San Mamés', 'Bilbao', 'ATH'),
(5, 'Real Sociedad', 1, '1909', 'Reale Arena', 'San Sebastián', 'RSO'),
(6, 'Sevilla FC', 1, '0000', 'Ramón Sánchez-Pizjuán', 'Sevilla', 'SEV'),
(7, 'Real Betis', 1, '1907', 'Benito Villamarín', 'Sevilla', 'BET'),
(8, 'Villarreal CF', 1, '1923', 'Estadio de la Cerámica', 'Villarreal', 'VIL'),
(9, 'Valencia CF', 1, '1919', 'Mestalla', 'Valencia', 'VAL'),
(10, 'RCD Mallorca', 1, '1916', 'Visit Mallorca Estadi', 'Palma', 'MAL'),
(11, 'Girona FC', 1, '1930', 'Montilivi', 'Girona', 'GIR'),
(12, 'CA Osasuna', 1, '1920', 'El Sadar', 'Pamplona', 'OSA'),
(13, 'Getafe CF', 1, '1983', 'Coliseum Alfonso Pérez', 'Getafe', 'GET'),
(14, 'UD Las Palmas', 1, '1949', 'Gran Canaria', 'Las Palmas', 'LPA'),
(15, 'Rayo Vallecano', 1, '1924', 'Vallecas', 'Madrid', 'RAY'),
(16, 'Deportivo Alavés', 1, '1921', 'Mendizorroza', 'Vitoria', 'ALA'),
(17, 'Racing de Santander', 1, '1913', 'El Sardinero', 'Santander', 'RAC'),
(18, 'SD Eibar', 1, '1940', 'Ipurúa', 'Eibar', 'EIB'),
(19, 'Real Oviedo', 1, '1926', 'Carlos Tartiere', 'Oviedo', 'OVI'),
(20, 'Espanyol', 1, '0000', 'RCDE Stadium', 'Barcelona', 'ESP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_partido`
--

CREATE TABLE `eventos_partido` (
  `evento_id` int(11) NOT NULL,
  `partido_id` int(11) DEFAULT NULL,
  `minuto` int(11) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL CHECK (`tipo` in ('gol','tarjeta_amarilla','tarjeta_roja','sustitucion','lesion')),
  `jugador_id` int(11) DEFAULT NULL,
  `equipo_id` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos_partido`
--

INSERT INTO `eventos_partido` (`evento_id`, `partido_id`, `minuto`, `tipo`, `jugador_id`, `equipo_id`, `descripcion`) VALUES
(12, 1, 5, 'tarjeta_amarilla', 13, 2, 'Koundé amonestado por falta a Vinícius'),
(13, 1, 63, 'sustitucion', 9, 1, 'Rodrygo sustituye a Vinícius (fatiga)'),
(14, 1, 75, 'tarjeta_amarilla', 14, 2, 'Araújo por entrada a Mbappé'),
(15, 2, 71, 'sustitucion', 120, 8, 'Savio entra por Tsygankov'),
(16, 2, 84, 'tarjeta_amarilla', 24, 3, 'Molina por tiempo perdido'),
(17, 3, 22, 'tarjeta_amarilla', 39, 4, 'Sancet falta sobre Zubimendi'),
(18, 3, 89, 'lesion', 49, 5, 'Muñoz sale con molestias'),
(19, 4, 12, 'tarjeta_amarilla', 75, 6, 'Guido Rodríguez falta táctica'),
(20, 4, 45, 'sustitucion', 79, 6, 'Willian José por Borja Iglesias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `favorito_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `equipo_id` int(11) DEFAULT NULL,
  `liga_id` int(11) DEFAULT NULL,
  `fecha_agregado` datetime DEFAULT current_timestamp()
) ;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`favorito_id`, `usuario_id`, `equipo_id`, `liga_id`, `fecha_agregado`) VALUES
(4, 2, NULL, 1, '2025-07-07 02:35:56'),
(5, 3, 2, NULL, '2025-07-07 02:35:56'),
(6, 3, 8, NULL, '2025-07-07 02:35:56'),
(7, 4, NULL, 1, '2025-07-07 02:35:56'),
(8, 4, 3, NULL, '2025-07-07 02:35:56'),
(9, 6, 7, NULL, '2025-07-07 02:35:56'),
(10, 9, 2, NULL, '2025-07-07 02:35:56'),
(11, 10, 1, NULL, '2025-07-07 02:35:56'),
(21, 2, 1, NULL, '2025-07-07 02:46:54'),
(35, 2, 1, 1, '2025-07-07 03:04:35'),
(36, 3, 2, 1, '2025-07-07 03:04:35'),
(37, 4, 3, 1, '2025-07-07 03:04:35'),
(38, 6, 7, 1, '2025-07-07 03:04:35'),
(39, 9, 2, 1, '2025-07-07 03:04:35'),
(40, 10, 1, 1, '2025-07-07 03:04:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `jugador_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `posicion` varchar(30) DEFAULT NULL,
  `numero_camiseta` int(11) DEFAULT NULL,
  `equipo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`jugador_id`, `nombre`, `apellido`, `fecha_nacimiento`, `nacionalidad`, `posicion`, `numero_camiseta`, `equipo_id`) VALUES
(1, 'Thibaut', 'Courtois', '1992-05-11', 'Bélgica', 'Portero', 1, 1),
(2, 'Dani', 'Carvajal', '1992-01-11', 'España', 'Defensa', 2, 1),
(3, 'Éder', 'Militão', '1998-01-18', 'Brasil', 'Defensa', 3, 1),
(4, 'David', 'Alaba', '1992-06-24', 'Austria', 'Defensa', 4, 1),
(5, 'Jude', 'Bellingham', '2003-06-29', 'Inglaterra', 'Centrocampista', 5, 1),
(6, 'Nacho', 'Fernández', '1990-01-18', 'España', 'Defensa', 6, 1),
(7, 'Vinicius', 'Junior', '2000-07-12', 'Brasil', 'Delantero', 7, 1),
(8, 'Toni', 'Kroos', '1990-01-04', 'Alemania', 'Centrocampista', 8, 1),
(9, 'Rodrygo', 'Goes', '2001-01-09', 'Brasil', 'Delantero', 11, 1),
(10, 'Eduardo', 'Camavinga', '2002-11-10', 'Francia', 'Centrocampista', 12, 1),
(11, 'Ferland', 'Mendy', '1995-06-08', 'Francia', 'Defensa', 23, 1),
(12, 'Marc-André', 'ter Stegen', '1992-04-30', 'Alemania', 'Portero', 1, 2),
(13, 'João', 'Cancelo', '1994-05-27', 'Portugal', 'Defensa', 2, 2),
(14, 'Ronald', 'Araújo', '1999-03-07', 'Uruguay', 'Defensa', 4, 2),
(15, 'Pedri', 'González', '2002-11-25', 'España', 'Centrocampista', 8, 2),
(16, 'Robert', 'Lewandowski', '1988-08-21', 'Polonia', 'Delantero', 9, 2),
(17, 'Gavi', 'Páez', '2004-08-05', 'España', 'Centrocampista', 6, 2),
(18, 'Frenkie', 'de Jong', '1997-05-12', 'Países Bajos', 'Centrocampista', 21, 2),
(19, 'Lamine', 'Yamal', '2007-07-13', 'España', 'Delantero', 27, 2),
(20, 'Ilkay', 'Gündogan', '1990-10-24', 'Alemania', 'Centrocampista', 22, 2),
(21, 'Jules', 'Koundé', '1998-11-12', 'Francia', 'Defensa', 23, 2),
(22, 'Alejandro', 'Balde', '2003-10-18', 'España', 'Defensa', 3, 2),
(23, 'Jan', 'Oblak', '1993-01-07', 'Eslovenia', 'Portero', 13, 3),
(24, 'José María', 'Giménez', '1995-01-20', 'Uruguay', 'Defensa', 2, 3),
(25, 'Stefan', 'Savić', '1991-01-08', 'Montenegro', 'Defensa', 15, 3),
(26, 'Koke', 'Resurrección', '1992-01-08', 'España', 'Centrocampista', 6, 3),
(27, 'Antoine', 'Griezmann', '1991-03-21', 'Francia', 'Delantero', 7, 3),
(28, 'Álvaro', 'Morata', '1992-10-23', 'España', 'Delantero', 19, 3),
(29, 'Rodrigo', 'De Paul', '1994-05-24', 'Argentina', 'Centrocampista', 5, 3),
(30, 'Marcos', 'Llorente', '1995-01-30', 'España', 'Centrocampista', 14, 3),
(31, 'Nahuel', 'Molina', '1998-04-06', 'Argentina', 'Defensa', 16, 3),
(32, 'Memphis', 'Depay', '1994-02-13', 'Países Bajos', 'Delantero', 9, 3),
(33, 'Saúl', 'Ñíguez', '1994-11-21', 'España', 'Centrocampista', 17, 3),
(34, 'Unai', 'Simón', '1997-06-11', 'España', 'Portero', 1, 4),
(35, 'Óscar', 'de Marcos', '1989-04-14', 'España', 'Defensa', 18, 4),
(36, 'Yeray', 'Álvarez', '1995-01-24', 'España', 'Defensa', 5, 4),
(37, 'Iñigo', 'Martínez', '1991-05-17', 'España', 'Defensa', 4, 4),
(38, 'Iker', 'Muniain', '1992-12-19', 'España', 'Centrocampista', 10, 4),
(39, 'Iñaki', 'Williams', '1994-06-15', 'España', 'Delantero', 9, 4),
(40, 'Nico', 'Williams', '2002-07-12', 'España', 'Delantero', 11, 4),
(41, 'Oihan', 'Sancet', '2000-04-25', 'España', 'Centrocampista', 8, 4),
(42, 'Dani', 'Vivian', '1999-07-05', 'España', 'Defensa', 3, 4),
(43, 'Álex', 'Berenguer', '1995-07-04', 'España', 'Delantero', 7, 4),
(44, 'Yuri', 'Berchiche', '1990-02-10', 'España', 'Defensa', 17, 4),
(45, 'Álex', 'Remiro', '1995-03-24', 'España', 'Portero', 1, 5),
(46, 'Robin', 'Le Normand', '1996-11-11', 'España', 'Defensa', 24, 5),
(47, 'Mikel', 'Merino', '1996-06-22', 'España', 'Centrocampista', 8, 5),
(48, 'Mikel', 'Oyarzabal', '1997-04-21', 'España', 'Delantero', 10, 5),
(49, 'Takefusa', 'Kubo', '2001-06-04', 'Japón', 'Delantero', 14, 5),
(50, 'Brais', 'Méndez', '1997-01-07', 'España', 'Centrocampista', 23, 5),
(51, 'Ander', 'Barrenetxea', '2001-12-27', 'España', 'Delantero', 7, 5),
(52, 'Martín', 'Zubimendi', '1999-02-02', 'España', 'Centrocampista', 3, 5),
(53, 'Aihen', 'Muñoz', '1997-08-16', 'España', 'Defensa', 12, 5),
(54, 'Umar', 'Sadiq', '1997-02-02', 'Nigeria', 'Delantero', 19, 5),
(55, 'Aritz', 'Elustondo', '1994-03-28', 'España', 'Defensa', 6, 5),
(56, 'Marko', 'Dmitrović', '1992-01-24', 'Serbia', 'Portero', 1, 6),
(57, 'Jesús', 'Navas', '1985-11-21', 'España', 'Defensa', 16, 6),
(58, 'Nemanja', 'Gudelj', '1991-11-16', 'Serbia', 'Defensa', 6, 6),
(59, 'Ivan', 'Rakitić', '1988-03-10', 'Croacia', 'Centrocampista', 10, 6),
(60, 'Youssef', 'En-Nesyri', '1997-06-01', 'Marruecos', 'Delantero', 15, 6),
(61, 'Lucas', 'Ocampos', '1994-07-11', 'Argentina', 'Delantero', 5, 6),
(62, 'Erik', 'Lamela', '1992-03-04', 'Argentina', 'Delantero', 17, 6),
(63, 'Marcão', '', '1996-06-05', 'Brasil', 'Defensa', 3, 6),
(64, 'Joan', 'Jordán', '1994-07-06', 'España', 'Centrocampista', 8, 6),
(65, 'Suso', '', '1993-11-19', 'España', 'Delantero', 7, 6),
(66, 'Tanguy', 'Nianzou', '2002-06-07', 'Francia', 'Defensa', 14, 6),
(67, 'Claudio', 'Bravo', '1983-04-13', 'Chile', 'Portero', 1, 7),
(68, 'Héctor', 'Bellerín', '1995-03-19', 'España', 'Defensa', 2, 7),
(69, 'Germán', 'Pezzella', '1991-06-27', 'Argentina', 'Defensa', 16, 7),
(70, 'Guido', 'Rodríguez', '1994-04-12', 'Argentina', 'Centrocampista', 5, 7),
(71, 'Nabil', 'Fekir', '1993-07-18', 'Francia', 'Delantero', 8, 7),
(72, 'Borja', 'Iglesias', '1993-01-17', 'España', 'Delantero', 9, 7),
(73, 'Isco', 'Alarcón', '1992-04-21', 'España', 'Centrocampista', 22, 7),
(74, 'Sergio', 'Canales', '1991-02-16', 'España', 'Centrocampista', 10, 7),
(75, 'Juan', 'Miranda', '2000-01-19', 'España', 'Defensa', 3, 7),
(76, 'William', 'Carvalho', '1992-04-07', 'Portugal', 'Centrocampista', 14, 7),
(77, 'Luiz', 'Felipe', '1997-03-22', 'Brasil', 'Defensa', 4, 7),
(78, 'Pepe', 'Reina', '1982-08-31', 'España', 'Portero', 1, 8),
(79, 'Juan', 'Foyth', '1998-01-12', 'Argentina', 'Defensa', 8, 8),
(80, 'Pau', 'Torres', '1997-01-16', 'España', 'Defensa', 4, 8),
(81, 'Dani', 'Parejo', '1989-04-16', 'España', 'Centrocampista', 5, 8),
(82, 'Gerard', 'Moreno', '1992-04-07', 'España', 'Delantero', 7, 8),
(83, 'Yéremy', 'Pino', '2002-10-20', 'España', 'Delantero', 21, 8),
(84, 'Álex', 'Baena', '2001-07-20', 'España', 'Centrocampista', 16, 8),
(85, 'Alfonso', 'Pedraza', '1996-04-09', 'España', 'Defensa', 24, 8),
(86, 'Manu', 'Trigueros', '1991-10-17', 'España', 'Centrocampista', 14, 8),
(87, 'Aïssa', 'Mandí', '1991-10-22', 'Argelia', 'Defensa', 3, 8),
(88, 'Nicolas', 'Jackson', '2001-06-20', 'Senegal', 'Delantero', 15, 8),
(89, 'Giorgi', 'Mamardashvili', '2000-09-29', 'Georgia', 'Portero', 25, 9),
(90, 'José Luis', 'Gayà', '1995-05-25', 'España', 'Defensa', 14, 9),
(91, 'Gabriel', 'Paulista', '1990-11-26', 'Brasil', 'Defensa', 5, 9),
(92, 'Hugo', 'Guillamón', '2000-01-31', 'España', 'Defensa', 6, 9),
(93, 'Hugo', 'Duro', '1999-11-10', 'España', 'Delantero', 9, 9),
(94, 'Justin', 'Kluivert', '1999-05-05', 'Países Bajos', 'Delantero', 11, 9),
(95, 'André', 'Almeida', '2000-05-30', 'Portugal', 'Centrocampista', 16, 9),
(96, 'Samu', 'Castillejo', '1995-01-18', 'España', 'Delantero', 7, 9),
(97, 'Thierry', 'Correia', '1999-03-09', 'Portugal', 'Defensa', 2, 9),
(98, 'Ilaix', 'Moriba', '2003-01-19', 'Guinea', 'Centrocampista', 8, 9),
(99, 'Eray', 'Cömert', '1998-02-04', 'Suiza', 'Defensa', 15, 9),
(100, 'Agustín', 'Marchesín', '1988-03-16', 'Argentina', 'Portero', 1, 10),
(101, 'Hugo', 'Mallo', '1991-06-22', 'España', 'Defensa', 2, 10),
(102, 'Joseph', 'Aidoo', '1995-09-29', 'Ghana', 'Defensa', 15, 10),
(103, 'Fran', 'Beltran', '1999-02-03', 'España', 'Centrocampista', 8, 10),
(104, 'Iago', 'Aspas', '1987-08-01', 'España', 'Delantero', 10, 10),
(105, 'Carles', 'Pérez', '1998-02-16', 'España', 'Delantero', 7, 10),
(106, 'Gabri', 'Veiga', '2002-05-27', 'España', 'Centrocampista', 24, 10),
(107, 'Javi', 'Galán', '1994-11-19', 'España', 'Defensa', 17, 10),
(108, 'Renato', 'Tapia', '1995-07-28', 'Perú', 'Centrocampista', 14, 10),
(109, 'Gonçalo', 'Paciencia', '1994-08-01', 'Portugal', 'Delantero', 9, 10),
(110, 'Unai', 'Núñez', '1997-01-30', 'España', 'Defensa', 4, 10),
(111, 'Paulo', 'Gazzaniga', '1992-01-02', 'Argentina', 'Portero', 13, 11),
(112, 'Arnau', 'Martínez', '2003-04-25', 'España', 'Defensa', 4, 11),
(113, 'David', 'López', '1989-10-09', 'España', 'Defensa', 5, 11),
(114, 'Aleix', 'García', '1997-06-28', 'España', 'Centrocampista', 14, 11),
(115, 'Artem', 'Dovbyk', '1997-06-21', 'Ucrania', 'Delantero', 9, 11),
(116, 'Yan', 'Couto', '2002-06-03', 'Brasil', 'Defensa', 20, 11),
(117, 'Viktor', 'Tsygankov', '1997-11-15', 'Ucrania', 'Delantero', 8, 11),
(118, 'Sávio', '', '2004-04-10', 'Brasil', 'Delantero', 16, 11),
(119, 'Yangel', 'Herrera', '1998-01-07', 'Venezuela', 'Centrocampista', 21, 11),
(120, 'Miguel', 'Gutiérrez', '2001-07-27', 'España', 'Defensa', 3, 11),
(121, 'Daley', 'Blind', '1990-03-09', 'Países Bajos', 'Defensa', 17, 11),
(122, 'Predrag', 'Rajković', '1995-10-31', 'Serbia', 'Portero', 1, 12),
(123, 'Pablo', 'Maffeo', '1997-07-12', 'España', 'Defensa', 15, 12),
(124, 'Antonio', 'Raíllo', '1991-10-08', 'España', 'Defensa', 21, 12),
(125, 'Dani', 'Rodríguez', '1990-06-06', 'España', 'Centrocampista', 10, 12),
(126, 'Vedat', 'Muriuqi', '1994-06-24', 'Kosovo', 'Delantero', 7, 12),
(127, 'Kang-in', 'Lee', '2001-02-19', 'Corea del Sur', 'Centrocampista', 19, 12),
(128, 'Jaume', 'Costa', '1988-03-18', 'España', 'Defensa', 3, 12),
(129, 'Iddrisu', 'Baba', '1996-01-22', 'Ghana', 'Centrocampista', 12, 12),
(130, 'Amath', 'Ndiaye', '1996-07-30', 'Senegal', 'Delantero', 9, 12),
(131, 'Giovanni', 'González', '1994-09-20', 'Uruguay', 'Defensa', 2, 12),
(132, 'Martin', 'Valjent', '1995-12-11', 'Eslovaquia', 'Defensa', 24, 12),
(133, 'Sergio', 'Herrera', '1993-06-05', 'España', 'Portero', 1, 13),
(134, 'David', 'García', '1994-02-14', 'España', 'Defensa', 5, 13),
(135, 'Aimar', 'Oroz', '2001-11-27', 'España', 'Centrocampista', 10, 13),
(136, 'Ante', 'Budimir', '1991-07-22', 'Croacia', 'Delantero', 17, 13),
(137, 'Rubén', 'Peña', '1991-07-18', 'España', 'Defensa', 2, 13),
(138, 'Jon', 'Moncayola', '1998-05-13', 'España', 'Centrocampista', 7, 13),
(139, 'Kike', 'Barja', '1997-04-01', 'España', 'Delantero', 12, 13),
(140, 'Lucas', 'Torró', '1994-07-19', 'España', 'Centrocampista', 6, 13),
(141, 'Johan', 'Mojica', '1992-08-21', 'Colombia', 'Defensa', 3, 13),
(142, 'Chimy', 'Ávila', '1994-02-06', 'Argentina', 'Delantero', 9, 13),
(143, 'Unai', 'García', '1992-02-03', 'España', 'Defensa', 4, 13),
(144, 'David', 'Soria', '1993-04-04', 'España', 'Portero', 13, 14),
(145, 'Damián', 'Suárez', '1988-04-27', 'Uruguay', 'Defensa', 22, 14),
(146, 'Dakonam', 'Djene', '1991-12-31', 'Togo', 'Defensa', 2, 14),
(147, 'Nemanja', 'Maksimović', '1995-01-26', 'Serbia', 'Centrocampista', 20, 14),
(148, 'Enes', 'Ünal', '1997-05-10', 'Turquía', 'Delantero', 10, 14),
(149, 'Borja', 'Mayoral', '1997-04-05', 'España', 'Delantero', 19, 14),
(150, 'Carles', 'Aleñá', '1998-01-05', 'España', 'Centrocampista', 11, 14),
(151, 'Juan', 'Iglesias', '1998-03-03', 'España', 'Defensa', 21, 14),
(152, 'Luis', 'Millà', '1994-10-07', 'España', 'Centrocampista', 5, 14),
(153, 'Jaime', 'Mata', '1988-10-24', 'España', 'Delantero', 7, 14),
(154, 'Domínguez', 'Duarte', '1999-03-17', 'Uruguay', 'Defensa', 6, 14),
(155, 'Fernando', 'Martínez', '1990-03-30', 'España', 'Portero', 13, 15),
(156, 'Sergio', 'Akieme', '1997-12-16', 'España', 'Defensa', 3, 15),
(157, 'Rodri', 'Ríos', '1996-04-22', 'España', 'Centrocampista', 5, 15),
(158, 'Luis', 'Suárez', '1997-12-02', 'Colombia', 'Delantero', 9, 15),
(159, 'Largie', 'Ramazani', '2001-02-27', 'Bélgica', 'Delantero', 7, 15),
(160, 'Lucas', 'Robertone', '1997-03-18', 'Argentina', 'Centrocampista', 8, 15),
(161, 'César', 'de la Hoz', '1993-03-21', 'España', 'Centrocampista', 14, 15),
(162, 'Kaiky', 'Fernandes', '2004-01-12', 'Brasil', 'Defensa', 4, 15),
(163, 'Adrián', 'Embarba', '1992-05-07', 'España', 'Delantero', 10, 15),
(164, 'Marcos', 'Peña', '1997-01-20', 'España', 'Defensa', 2, 15),
(165, 'Srdjan', 'Babić', '1996-04-22', 'Serbia', 'Defensa', 19, 15),
(166, 'Stole', 'Dimitrievski', '1993-12-25', 'Macedonia del Norte', 'Portero', 1, 16),
(167, 'Alejandro', 'Catena', '1994-10-28', 'España', 'Defensa', 5, 16),
(168, 'Óscar', 'Trejo', '1988-04-26', 'Argentina', 'Centrocampista', 8, 16),
(169, 'Álvaro', 'García', '1992-06-27', 'España', 'Delantero', 18, 16),
(170, 'Isi', 'Palazón', '1994-09-02', 'España', 'Delantero', 7, 16),
(171, 'Florian', 'Lejeune', '1991-05-20', 'Francia', 'Defensa', 4, 16),
(172, 'Santi', 'Comesaña', '1996-10-05', 'España', 'Centrocampista', 23, 16),
(173, 'Unai', 'López', '1995-10-30', 'España', 'Centrocampista', 17, 16),
(174, 'Randy', 'Nteka', '1998-02-05', 'Francia', 'Delantero', 9, 16),
(175, 'Iván', 'Balliu', '1992-01-01', 'Albania', 'Defensa', 20, 16),
(176, 'Pathé', 'Ciss', '1994-03-16', 'Senegal', 'Centrocampista', 21, 16),
(177, 'Antonio', 'Sivera', '1996-08-11', 'España', 'Portero', 1, 17),
(178, 'Rubén', 'Duarte', '1995-10-18', 'España', 'Defensa', 3, 17),
(179, 'Abdel', 'Abqar', '1999-03-10', 'Marruecos', 'Defensa', 5, 17),
(180, 'Luis', 'Rioja', '1993-10-16', 'España', 'Delantero', 11, 17),
(181, 'Jon', 'Guridi', '1995-02-28', 'España', 'Centrocampista', 8, 17),
(182, 'Antonio', 'Blanco', '2000-07-23', 'España', 'Centrocampista', 16, 17),
(183, 'Nahuel', 'Tenaglia', '1996-02-21', 'Argentina', 'Defensa', 2, 17),
(184, 'Asier', 'Villalibre', '1997-09-30', 'España', 'Delantero', 9, 17),
(185, 'Ander', 'Guevara', '1997-07-07', 'España', 'Centrocampista', 6, 17),
(186, 'Xeber', 'Alkain', '1993-03-26', 'España', 'Delantero', 7, 17),
(187, 'Aleksandar', 'Sedlar', '1991-12-13', 'Serbia', 'Defensa', 4, 17),
(188, 'André', 'Ferreira', '1996-12-02', 'Portugal', 'Portero', 1, 18),
(189, 'Carlos', 'Neva', '1996-07-29', 'España', 'Defensa', 15, 18),
(190, 'Germán', 'Sánchez', '1992-01-12', 'España', 'Defensa', 6, 18),
(191, 'Myrto', 'Uzuni', '1995-05-31', 'Albania', 'Delantero', 11, 18),
(192, 'Luis', 'Millán', '1996-10-24', 'España', 'Centrocampista', 5, 18),
(193, 'Alberto', 'Perea', '1990-12-19', 'España', 'Delantero', 10, 18),
(194, 'Ricard', 'Sánchez', '1992-02-11', 'España', 'Defensa', 16, 18),
(195, 'Antonio', 'Puertas', '1992-03-21', 'España', 'Delantero', 7, 18),
(196, 'José', 'Callejón', '1987-02-11', 'España', 'Delantero', 9, 18),
(197, 'Sergio', 'Ruiz', '1994-09-14', 'España', 'Centrocampista', 8, 18),
(198, 'Miguel', 'Rubio', '1998-08-01', 'España', 'Defensa', 3, 18),
(199, 'Álvaro', 'Valles', '1997-03-25', 'España', 'Portero', 13, 19),
(200, 'Álex', 'Suárez', '1992-08-05', 'España', 'Defensa', 4, 19),
(201, 'Enzo', 'Loiodice', '2000-11-27', 'Francia', 'Centrocampista', 5, 19),
(202, 'Jonathan', 'Viera', '1989-10-21', 'España', 'Centrocampista', 21, 19),
(203, 'Sandro', 'Ramírez', '1995-07-09', 'España', 'Delantero', 9, 19),
(204, 'Mika', 'Marmol', '2001-07-01', 'España', 'Defensa', 15, 19),
(205, 'Pejiño', '', '1997-03-20', 'España', 'Delantero', 7, 19),
(206, 'Alberto', 'Moleiro', '2003-09-30', 'España', 'Centrocampista', 10, 19),
(207, 'Saúl', 'Coco', '1999-02-09', 'España', 'Defensa', 3, 19),
(208, 'Marc', 'Cardona', '1995-07-08', 'España', 'Delantero', 19, 19),
(209, 'Eric', 'Curbelo', '2001-03-21', 'España', 'Defensa', 2, 19),
(210, 'Luca', 'Zidane', '1998-05-13', 'Francia', 'Portero', 1, 20),
(211, 'Álvaro', 'Tejero', '1996-07-20', 'España', 'Defensa', 2, 20),
(212, 'Paulo', 'Oliveira', '1992-01-08', 'Portugal', 'Defensa', 4, 20),
(213, 'Matheus', 'Pereira', '1996-05-25', 'Brasil', 'Centrocampista', 10, 20),
(214, 'Stoichkov', '', '1999-09-12', 'España', 'Delantero', 9, 20),
(215, 'Joseba', 'Zaldúa', '1992-06-24', 'España', 'Defensa', 15, 20),
(216, 'Quique', 'González', '1995-01-20', 'España', 'Delantero', 7, 20),
(217, 'Ager', 'Aketxe', '1993-12-30', 'España', 'Centrocampista', 8, 20),
(218, 'Juan', 'Berrocal', '1994-02-09', 'España', 'Defensa', 5, 20),
(219, 'Yacine', 'Qasmi', '1991-09-21', 'Marruecos', 'Delantero', 19, 20),
(220, 'Sergio', 'Álvarez', '1992-01-23', 'España', 'Centrocampista', 6, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ligas`
--

CREATE TABLE `ligas` (
  `liga_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `temporada_actual` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ligas`
--

INSERT INTO `ligas` (`liga_id`, `nombre`, `pais`, `temporada_actual`) VALUES
(1, 'LaLiga EA Sports', 'España', '2024/2025');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `noticia_id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` text DEFAULT NULL,
  `fecha_publicacion` datetime DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `equipo_id` int(11) DEFAULT NULL,
  `liga_id` int(11) DEFAULT NULL,
  `jugador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`noticia_id`, `titulo`, `contenido`, `fecha_publicacion`, `autor`, `equipo_id`, `liga_id`, `jugador_id`) VALUES
(1, 'LaLiga anuncia el calendario 2024/25', 'La Liga ha presentado el calendario oficial para la próxima temporada...', '2024-06-20 12:00:00', 'Redacción TwoFootball', NULL, 1, NULL),
(2, 'Bellingham renueva con el Real Madrid', 'El inglés amplía su contrato hasta 2030 con una cláusula récord...', '2024-07-15 09:30:00', 'Juan Pérez', 1, 1, 1),
(3, 'Girona se refuerza con Dovbyk', 'El delantero ucraniano llega para reforzar al equipo revelación...', '2024-08-05 18:45:00', 'Ana Gómez', 11, 1, 18),
(4, 'Xavi presenta su once para el debut', 'El técnico del Barça ha dado pistas sobre su alineación inicial...', '2024-08-10 11:20:00', 'Carlos Ruiz', 2, 1, NULL),
(5, 'Lesión de Courtois', 'El portero belga se perderá el inicio de temporada...', '2024-08-12 16:30:00', 'María López', 1, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `partido_id` int(11) NOT NULL,
  `liga_id` int(11) DEFAULT NULL,
  `equipo_local_id` int(11) DEFAULT NULL,
  `equipo_visitante_id` int(11) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `estadio` varchar(100) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL CHECK (`estado` in ('programado','en_juego','finalizado','aplazado','suspendido')),
  `goles_local` int(11) DEFAULT 0,
  `goles_visitante` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`partido_id`, `liga_id`, `equipo_local_id`, `equipo_visitante_id`, `fecha_hora`, `estadio`, `estado`, `goles_local`, `goles_visitante`) VALUES
(1, 1, 1, 17, '2024-08-16 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(2, 1, 2, 15, '2024-08-17 18:30:00', 'Spotify Camp Nou', 'programado', 0, 0),
(3, 1, 3, 13, '2024-08-17 21:00:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(4, 1, 4, 20, '2024-08-18 16:15:00', 'San Mamés', 'programado', 0, 0),
(5, 1, 5, 11, '2024-08-18 18:30:00', 'Mestalla', 'programado', 0, 0),
(6, 1, 6, 19, '2024-08-18 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(7, 1, 7, 14, '2024-08-18 21:00:00', 'Benito Villamarín', 'programado', 0, 0),
(8, 1, 8, 10, '2024-08-19 19:00:00', 'Reale Arena', 'programado', 0, 0),
(9, 1, 9, 16, '2024-08-19 19:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(10, 1, 12, 18, '2024-08-19 21:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(11, 1, 17, 4, '2024-08-23 21:00:00', 'Mendizorroza', 'programado', 0, 0),
(12, 1, 15, 7, '2024-08-24 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(13, 1, 2, 3, '2024-08-24 21:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(14, 1, 11, 8, '2024-08-25 16:15:00', 'Abanca-Balaídos', 'programado', 0, 0),
(15, 1, 20, 5, '2024-08-25 18:30:00', 'Ipurúa', 'programado', 0, 0),
(16, 1, 14, 6, '2024-08-25 18:30:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(17, 1, 19, 1, '2024-08-25 21:00:00', 'Gran Canaria', 'programado', 0, 0),
(18, 1, 10, 9, '2024-08-26 19:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(19, 1, 16, 12, '2024-08-26 19:00:00', 'Vallecas', 'programado', 0, 0),
(20, 1, 18, 13, '2024-08-26 21:00:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(21, 1, 1, 16, '2024-08-30 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(22, 1, 3, 15, '2024-08-31 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(23, 1, 4, 20, '2024-08-31 21:00:00', 'San Mamés', 'programado', 0, 0),
(24, 1, 5, 14, '2024-09-01 16:15:00', 'Mestalla', 'programado', 0, 0),
(25, 1, 6, 19, '2024-09-01 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(26, 1, 7, 2, '2024-09-01 18:30:00', 'Benito Villamarín', 'programado', 0, 0),
(27, 1, 8, 10, '2024-09-01 21:00:00', 'Reale Arena', 'programado', 0, 0),
(28, 1, 9, 17, '2024-09-02 19:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(29, 1, 12, 11, '2024-09-02 19:00:00', 'Montilivi', 'programado', 0, 0),
(30, 1, 13, 18, '2024-09-02 21:00:00', 'El Sadar', 'programado', 0, 0),
(31, 1, 10, 12, '2024-09-13 21:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(32, 1, 15, 5, '2024-09-14 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(33, 1, 17, 9, '2024-09-14 21:00:00', 'Mendizorroza', 'programado', 0, 0),
(34, 1, 16, 1, '2024-09-15 16:15:00', 'Vallecas', 'programado', 0, 0),
(35, 1, 20, 4, '2024-09-15 18:30:00', 'Ipurúa', 'programado', 0, 0),
(36, 1, 14, 6, '2024-09-15 18:30:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(37, 1, 19, 7, '2024-09-15 21:00:00', 'Gran Canaria', 'programado', 0, 0),
(38, 1, 2, 8, '2024-09-16 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(39, 1, 11, 13, '2024-09-16 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(40, 1, 18, 3, '2024-09-16 21:00:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(41, 1, 1, 19, '2024-09-20 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(42, 1, 3, 17, '2024-09-21 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(43, 1, 4, 16, '2024-09-21 21:00:00', 'San Mamés', 'programado', 0, 0),
(44, 1, 5, 20, '2024-09-22 16:15:00', 'Mestalla', 'programado', 0, 0),
(45, 1, 6, 14, '2024-09-22 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(46, 1, 7, 15, '2024-09-22 18:30:00', 'Benito Villamarín', 'programado', 0, 0),
(47, 1, 8, 2, '2024-09-22 21:00:00', 'Reale Arena', 'programado', 0, 0),
(48, 1, 9, 10, '2024-09-23 19:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(49, 1, 12, 11, '2024-09-23 19:00:00', 'Montilivi', 'programado', 0, 0),
(50, 1, 13, 18, '2024-09-23 21:00:00', 'El Sadar', 'programado', 0, 0),
(51, 1, 10, 13, '2024-09-27 21:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(52, 1, 15, 8, '2024-09-28 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(53, 1, 17, 12, '2024-09-28 21:00:00', 'Mendizorroza', 'programado', 0, 0),
(54, 1, 16, 5, '2024-09-29 16:15:00', 'Vallecas', 'programado', 0, 0),
(55, 1, 20, 6, '2024-09-29 18:30:00', 'Ipurúa', 'programado', 0, 0),
(56, 1, 14, 7, '2024-09-29 18:30:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(57, 1, 19, 3, '2024-09-29 21:00:00', 'Gran Canaria', 'programado', 0, 0),
(58, 1, 2, 9, '2024-09-30 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(59, 1, 11, 1, '2024-09-30 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(60, 1, 18, 4, '2024-09-30 21:00:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(61, 1, 1, 18, '2024-10-04 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(62, 1, 3, 19, '2024-10-05 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(63, 1, 4, 16, '2024-10-05 21:00:00', 'San Mamés', 'programado', 0, 0),
(64, 1, 5, 20, '2024-10-06 16:15:00', 'Mestalla', 'programado', 0, 0),
(65, 1, 6, 14, '2024-10-06 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(66, 1, 7, 15, '2024-10-06 18:30:00', 'Benito Villamarín', 'programado', 0, 0),
(67, 1, 8, 2, '2024-10-06 21:00:00', 'Reale Arena', 'programado', 0, 0),
(68, 1, 9, 10, '2024-10-07 19:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(69, 1, 12, 11, '2024-10-07 19:00:00', 'Montilivi', 'programado', 0, 0),
(70, 1, 13, 17, '2024-10-07 21:00:00', 'El Sadar', 'programado', 0, 0),
(71, 1, 10, 13, '2024-10-18 21:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(72, 1, 15, 8, '2024-10-19 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(73, 1, 17, 12, '2024-10-19 21:00:00', 'Mendizorroza', 'programado', 0, 0),
(74, 1, 16, 5, '2024-10-20 16:15:00', 'Vallecas', 'programado', 0, 0),
(75, 1, 20, 6, '2024-10-20 18:30:00', 'Ipurúa', 'programado', 0, 0),
(76, 1, 14, 7, '2024-10-20 18:30:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(77, 1, 19, 3, '2024-10-20 21:00:00', 'Gran Canaria', 'programado', 0, 0),
(78, 1, 2, 9, '2024-10-21 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(79, 1, 11, 1, '2024-10-21 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(80, 1, 18, 4, '2024-10-21 21:00:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(81, 1, 1, 2, '2024-10-25 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(82, 1, 3, 7, '2024-10-26 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(83, 1, 4, 18, '2024-10-26 21:00:00', 'San Mamés', 'programado', 0, 0),
(84, 1, 5, 16, '2024-10-27 16:15:00', 'Mestalla', 'programado', 0, 0),
(85, 1, 6, 20, '2024-10-27 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(86, 1, 8, 15, '2024-10-27 18:30:00', 'Reale Arena', 'programado', 0, 0),
(87, 1, 9, 17, '2024-10-27 21:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(88, 1, 10, 12, '2024-10-28 19:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(89, 1, 11, 19, '2024-10-28 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(90, 1, 13, 14, '2024-10-28 21:00:00', 'El Sadar', 'programado', 0, 0),
(91, 1, 12, 5, '2024-11-01 21:00:00', 'Montilivi', 'programado', 0, 0),
(92, 1, 15, 10, '2024-11-02 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(93, 1, 16, 4, '2024-11-02 21:00:00', 'Vallecas', 'programado', 0, 0),
(94, 1, 17, 11, '2024-11-03 16:15:00', 'Mendizorroza', 'programado', 0, 0),
(95, 1, 18, 6, '2024-11-03 18:30:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(96, 1, 19, 13, '2024-11-03 18:30:00', 'Gran Canaria', 'programado', 0, 0),
(97, 1, 20, 3, '2024-11-03 21:00:00', 'Ipurúa', 'programado', 0, 0),
(98, 1, 2, 1, '2024-11-04 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(99, 1, 7, 8, '2024-11-04 19:00:00', 'Benito Villamarín', 'programado', 0, 0),
(100, 1, 14, 9, '2024-11-04 21:00:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(101, 1, 1, 7, '2024-11-08 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(102, 1, 3, 20, '2024-11-09 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(103, 1, 4, 16, '2024-11-09 21:00:00', 'San Mamés', 'programado', 0, 0),
(104, 1, 5, 12, '2024-11-10 16:15:00', 'Mestalla', 'programado', 0, 0),
(105, 1, 6, 18, '2024-11-10 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(106, 1, 8, 15, '2024-11-10 18:30:00', 'Reale Arena', 'programado', 0, 0),
(107, 1, 9, 14, '2024-11-10 21:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(108, 1, 10, 17, '2024-11-11 19:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(109, 1, 11, 19, '2024-11-11 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(110, 1, 13, 2, '2024-11-11 21:00:00', 'El Sadar', 'programado', 0, 0),
(111, 1, 12, 4, '2024-11-22 21:00:00', 'Montilivi', 'programado', 0, 0),
(112, 1, 15, 9, '2024-11-23 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(113, 1, 16, 5, '2024-11-23 21:00:00', 'Vallecas', 'programado', 0, 0),
(114, 1, 17, 10, '2024-11-24 16:15:00', 'Mendizorroza', 'programado', 0, 0),
(115, 1, 18, 6, '2024-11-24 18:30:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(116, 1, 19, 11, '2024-11-24 18:30:00', 'Gran Canaria', 'programado', 0, 0),
(117, 1, 20, 3, '2024-11-24 21:00:00', 'Ipurúa', 'programado', 0, 0),
(118, 1, 2, 13, '2024-11-25 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(119, 1, 7, 1, '2024-11-25 19:00:00', 'Benito Villamarín', 'programado', 0, 0),
(120, 1, 14, 8, '2024-11-25 21:00:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(121, 1, 1, 20, '2024-11-29 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(122, 1, 3, 17, '2024-11-30 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(123, 1, 4, 12, '2024-11-30 21:00:00', 'San Mamés', 'programado', 0, 0),
(124, 1, 5, 16, '2024-12-01 16:15:00', 'Mestalla', 'programado', 0, 0),
(125, 1, 6, 18, '2024-12-01 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(126, 1, 8, 14, '2024-12-01 18:30:00', 'Reale Arena', 'programado', 0, 0),
(127, 1, 9, 15, '2024-12-01 21:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(128, 1, 10, 19, '2024-12-02 19:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(129, 1, 11, 7, '2024-12-02 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(130, 1, 13, 2, '2024-12-02 21:00:00', 'El Sadar', 'programado', 0, 0),
(131, 1, 12, 5, '2024-12-06 21:00:00', 'Montilivi', 'programado', 0, 0),
(132, 1, 15, 9, '2024-12-07 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(133, 1, 16, 4, '2024-12-07 21:00:00', 'Vallecas', 'programado', 0, 0),
(134, 1, 17, 11, '2024-12-08 16:15:00', 'Mendizorroza', 'programado', 0, 0),
(135, 1, 18, 6, '2024-12-08 18:30:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(136, 1, 19, 10, '2024-12-08 18:30:00', 'Gran Canaria', 'programado', 0, 0),
(137, 1, 20, 3, '2024-12-08 21:00:00', 'Ipurúa', 'programado', 0, 0),
(138, 1, 2, 13, '2024-12-09 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(139, 1, 7, 1, '2024-12-09 19:00:00', 'Benito Villamarín', 'programado', 0, 0),
(140, 1, 14, 8, '2024-12-09 21:00:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(141, 1, 1, 18, '2024-12-13 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(142, 1, 3, 19, '2024-12-14 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(143, 1, 4, 16, '2024-12-14 21:00:00', 'San Mamés', 'programado', 0, 0),
(144, 1, 5, 20, '2024-12-15 16:15:00', 'Mestalla', 'programado', 0, 0),
(145, 1, 6, 14, '2024-12-15 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(146, 1, 8, 2, '2024-12-15 18:30:00', 'Reale Arena', 'programado', 0, 0),
(147, 1, 9, 17, '2024-12-15 21:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(148, 1, 10, 12, '2024-12-16 19:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(149, 1, 11, 7, '2024-12-16 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(150, 1, 13, 15, '2024-12-16 21:00:00', 'El Sadar', 'programado', 0, 0),
(151, 1, 12, 10, '2024-12-20 21:00:00', 'Montilivi', 'programado', 0, 0),
(152, 1, 15, 13, '2024-12-21 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(153, 1, 16, 4, '2024-12-21 21:00:00', 'Vallecas', 'programado', 0, 0),
(154, 1, 17, 9, '2024-12-22 16:15:00', 'Mendizorroza', 'programado', 0, 0),
(155, 1, 18, 1, '2024-12-22 18:30:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(156, 1, 19, 3, '2024-12-22 18:30:00', 'Gran Canaria', 'programado', 0, 0),
(157, 1, 20, 5, '2024-12-22 21:00:00', 'Ipurúa', 'programado', 0, 0),
(158, 1, 2, 8, '2024-12-23 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(159, 1, 7, 11, '2024-12-23 19:00:00', 'Benito Villamarín', 'programado', 0, 0),
(160, 1, 14, 6, '2024-12-23 21:00:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(161, 1, 1, 14, '2025-01-03 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(162, 1, 3, 12, '2025-01-04 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(163, 1, 4, 17, '2025-01-04 21:00:00', 'San Mamés', 'programado', 0, 0),
(164, 1, 5, 19, '2025-01-05 16:15:00', 'Mestalla', 'programado', 0, 0),
(165, 1, 6, 20, '2025-01-05 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(166, 1, 8, 7, '2025-01-05 18:30:00', 'Reale Arena', 'programado', 0, 0),
(167, 1, 9, 15, '2025-01-05 21:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(168, 1, 10, 2, '2025-01-06 19:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(169, 1, 11, 18, '2025-01-06 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(170, 1, 13, 16, '2025-01-06 21:00:00', 'El Sadar', 'programado', 0, 0),
(171, 1, 12, 3, '2025-01-10 21:00:00', 'Montilivi', 'programado', 0, 0),
(172, 1, 15, 9, '2025-01-11 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(173, 1, 16, 13, '2025-01-11 21:00:00', 'Vallecas', 'programado', 0, 0),
(174, 1, 17, 4, '2025-01-12 16:15:00', 'Mendizorroza', 'programado', 0, 0),
(175, 1, 18, 11, '2025-01-12 18:30:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(176, 1, 19, 5, '2025-01-12 18:30:00', 'Gran Canaria', 'programado', 0, 0),
(177, 1, 20, 6, '2025-01-12 21:00:00', 'Ipurúa', 'programado', 0, 0),
(178, 1, 2, 10, '2025-01-13 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(179, 1, 7, 8, '2025-01-13 19:00:00', 'Benito Villamarín', 'programado', 0, 0),
(180, 1, 14, 1, '2025-01-13 21:00:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0),
(181, 1, 1, 7, '2025-01-17 21:00:00', 'Santiago Bernabéu', 'programado', 0, 0),
(182, 1, 3, 12, '2025-01-18 18:30:00', 'Cívitas Metropolitano', 'programado', 0, 0),
(183, 1, 4, 17, '2025-01-18 21:00:00', 'San Mamés', 'programado', 0, 0),
(184, 1, 5, 19, '2025-01-19 16:15:00', 'Mestalla', 'programado', 0, 0),
(185, 1, 6, 20, '2025-01-19 18:30:00', 'Ramón Sánchez-Pizjuán', 'programado', 0, 0),
(186, 1, 8, 14, '2025-01-19 18:30:00', 'Reale Arena', 'programado', 0, 0),
(187, 1, 9, 15, '2025-01-19 21:00:00', 'Estadio de la Cerámica', 'programado', 0, 0),
(188, 1, 10, 2, '2025-01-20 19:00:00', 'Visit Mallorca Estadi', 'programado', 0, 0),
(189, 1, 11, 18, '2025-01-20 19:00:00', 'Abanca-Balaídos', 'programado', 0, 0),
(190, 1, 13, 16, '2025-01-20 21:00:00', 'El Sadar', 'programado', 0, 0),
(191, 1, 12, 5, '2025-01-24 21:00:00', 'Montilivi', 'programado', 0, 0),
(192, 1, 15, 13, '2025-01-25 18:30:00', 'Power Horse Stadium', 'programado', 0, 0),
(193, 1, 16, 4, '2025-01-25 21:00:00', 'Vallecas', 'programado', 0, 0),
(194, 1, 17, 9, '2025-01-26 16:15:00', 'Mendizorroza', 'programado', 0, 0),
(195, 1, 18, 6, '2025-01-26 18:30:00', 'Nuevo Los Cármenes', 'programado', 0, 0),
(196, 1, 19, 10, '2025-01-26 18:30:00', 'Gran Canaria', 'programado', 0, 0),
(197, 1, 20, 3, '2025-01-26 21:00:00', 'Ipurúa', 'programado', 0, 0),
(198, 1, 2, 1, '2025-01-27 19:00:00', 'Spotify Camp Nou', 'programado', 0, 0),
(199, 1, 7, 8, '2025-01-27 19:00:00', 'Benito Villamarín', 'programado', 0, 0),
(200, 1, 14, 11, '2025-01-27 21:00:00', 'Coliseum Alfonso Pérez', 'programado', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña_hash` varchar(255) NOT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `email`, `contraseña_hash`, `fecha_registro`) VALUES
(1, 'Admin TwoFootball', 'admin@twofootball.com', 'admin123', '2024-01-01 00:00:00'),
(2, 'Marcos Rodríguez', 'marcos@twofootball.com', 'marcos2024', '2024-03-15 14:22:10'),
(3, 'Sofía Martínez', 'sofia@twofootball.com', 'sofia2024', '2024-04-02 09:45:33'),
(4, 'Carlos Ruiz', 'carlos@twofootball.com', 'periodista1', '2024-02-20 11:30:15'),
(5, 'Ana López', 'ana@twofootball.com', 'periodista2', '2024-01-28 16:20:40'),
(6, 'Diego Fernández', 'diego@email.com', 'diego123', '2024-05-10 18:15:22'),
(7, 'Laura García', 'laura@email.com', 'laura123', '2024-06-18 20:05:11'),
(8, 'Javier Muñoz', 'javier@email.com', 'javier123', '2024-07-22 12:30:45'),
(9, 'David Pérez', 'david@twofootball.com', 'fcbarcelona', '2024-03-01 10:00:00'),
(10, 'Elena Gómez', 'elena@twofootball.com', 'realmadrid', '2024-02-15 09:30:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clasificaciones`
--
ALTER TABLE `clasificaciones`
  ADD PRIMARY KEY (`clasificacion_id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`equipo_id`);

--
-- Indices de la tabla `eventos_partido`
--
ALTER TABLE `eventos_partido`
  ADD PRIMARY KEY (`evento_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`favorito_id`),
  ADD UNIQUE KEY `unique_favorito` (`usuario_id`,`equipo_id`,`liga_id`),
  ADD KEY `equipo_id` (`equipo_id`),
  ADD KEY `liga_id` (`liga_id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`jugador_id`);

--
-- Indices de la tabla `ligas`
--
ALTER TABLE `ligas`
  ADD PRIMARY KEY (`liga_id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`noticia_id`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`partido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `favorito_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`equipo_id`),
  ADD CONSTRAINT `favoritos_ibfk_3` FOREIGN KEY (`liga_id`) REFERENCES `ligas` (`liga_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
