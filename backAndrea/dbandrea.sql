-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2017 a las 19:20:43
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbandrea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `saldo` double DEFAULT NULL,
  `credito` double DEFAULT NULL,
  `descuento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Disparadores `clientes`
--
DELIMITER $$
CREATE TRIGGER `validaCredito` BEFORE INSERT ON `clientes` FOR EACH ROW BEGIN
IF (NEW.credito > 3000000)
THEN
set NEW.credito = 3000000;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `Name` varchar(30) NOT NULL,
  `Code` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`Name`, `Code`) VALUES
('Afghanistan', 'AF'),
('Åland Islands', 'AX'),
('Albania', 'AL'),
('Algeria', 'DZ'),
('American Samoa', 'AS'),
('Andorra', 'AD'),
('Angola', 'AO'),
('Anguilla', 'AI'),
('Antarctica', 'AQ'),
('Antigua and Barbuda', 'AG'),
('Argentina', 'AR'),
('Armenia', 'AM'),
('Aruba', 'AW'),
('Australia', 'AU'),
('Austria', 'AT'),
('Azerbaijan', 'AZ'),
('Bahamas', 'BS'),
('Bahrain', 'BH'),
('Bangladesh', 'BD'),
('Barbados', 'BB'),
('Belarus', 'BY'),
('Belgium', 'BE'),
('Belize', 'BZ'),
('Benin', 'BJ'),
('Bermuda', 'BM'),
('Bhutan', 'BT'),
('Bolivia, Plurinational State o', 'BO'),
('Bonaire, Sint Eustatius and Sa', 'BQ'),
('Bosnia and Herzegovina', 'BA'),
('Botswana', 'BW'),
('Bouvet Island', 'BV'),
('Brazil', 'BR'),
('British Indian Ocean Territory', 'IO'),
('Brunei Darussalam', 'BN'),
('Bulgaria', 'BG'),
('Burkina Faso', 'BF'),
('Burundi', 'BI'),
('Cambodia', 'KH'),
('Cameroon', 'CM'),
('Canada', 'CA'),
('Cape Verde', 'CV'),
('Cayman Islands', 'KY'),
('Central African Republic', 'CF'),
('Chad', 'TD'),
('Chile', 'CL'),
('China', 'CN'),
('Christmas Island', 'CX'),
('Cocos (Keeling) Islands', 'CC'),
('Colombia', 'CO'),
('Comoros', 'KM'),
('Congo', 'CG'),
('Congo, the Democratic Republic', 'CD'),
('Cook Islands', 'CK'),
('Costa Rica', 'CR'),
('Côte d''Ivoire', 'CI'),
('Croatia', 'HR'),
('Cuba', 'CU'),
('Curaçao', 'CW'),
('Cyprus', 'CY'),
('Czech Republic', 'CZ'),
('Denmark', 'DK'),
('Djibouti', 'DJ'),
('Dominica', 'DM'),
('Dominican Republic', 'DO'),
('Ecuador', 'EC'),
('Egypt', 'EG'),
('El Salvador', 'SV'),
('Equatorial Guinea', 'GQ'),
('Eritrea', 'ER'),
('Estonia', 'EE'),
('Ethiopia', 'ET'),
('Falkland Islands (Malvinas)', 'FK'),
('Faroe Islands', 'FO'),
('Fiji', 'FJ'),
('Finland', 'FI'),
('France', 'FR'),
('French Guiana', 'GF'),
('French Polynesia', 'PF'),
('French Southern Territories', 'TF'),
('Gabon', 'GA'),
('Gambia', 'GM'),
('Georgia', 'GE'),
('Germany', 'DE'),
('Ghana', 'GH'),
('Gibraltar', 'GI'),
('Greece', 'GR'),
('Greenland', 'GL'),
('Grenada', 'GD'),
('Guadeloupe', 'GP'),
('Guam', 'GU'),
('Guatemala', 'GT'),
('Guernsey', 'GG'),
('Guinea', 'GN'),
('Guinea-Bissau', 'GW'),
('Guyana', 'GY'),
('Haiti', 'HT'),
('Heard Island and McDonald Isla', 'HM'),
('Holy See (Vatican City State)', 'VA'),
('Honduras', 'HN'),
('Hong Kong', 'HK'),
('Hungary', 'HU'),
('Iceland', 'IS'),
('India', 'IN'),
('Indonesia', 'ID'),
('Iran, Islamic Republic of', 'IR'),
('Iraq', 'IQ'),
('Ireland', 'IE'),
('Isle of Man', 'IM'),
('Israel', 'IL'),
('Italy', 'IT'),
('Jamaica', 'JM'),
('Japan', 'JP'),
('Jersey', 'JE'),
('Jordan', 'JO'),
('Kazakhstan', 'KZ'),
('Kenya', 'KE'),
('Kiribati', 'KI'),
('Korea, Democratic People''s Rep', 'KP'),
('Korea, Republic of', 'KR'),
('Kuwait', 'KW'),
('Kyrgyzstan', 'KG'),
('Lao People''s Democratic Republ', 'LA'),
('Latvia', 'LV'),
('Lebanon', 'LB'),
('Lesotho', 'LS'),
('Liberia', 'LR'),
('Libya', 'LY'),
('Liechtenstein', 'LI'),
('Lithuania', 'LT'),
('Luxembourg', 'LU'),
('Macao', 'MO'),
('Macedonia, the Former Yugoslav', 'MK'),
('Madagascar', 'MG'),
('Malawi', 'MW'),
('Malaysia', 'MY'),
('Maldives', 'MV'),
('Mali', 'ML'),
('Malta', 'MT'),
('Marshall Islands', 'MH'),
('Martinique', 'MQ'),
('Mauritania', 'MR'),
('Mauritius', 'MU'),
('Mayotte', 'YT'),
('Mexico', 'MX'),
('Micronesia, Federated States o', 'FM'),
('Moldova, Republic of', 'MD'),
('Monaco', 'MC'),
('Mongolia', 'MN'),
('Montenegro', 'ME'),
('Montserrat', 'MS'),
('Morocco', 'MA'),
('Mozambique', 'MZ'),
('Myanmar', 'MM'),
('Namibia', 'NA'),
('Nauru', 'NR'),
('Nepal', 'NP'),
('Netherlands', 'NL'),
('New Caledonia', 'NC'),
('New Zealand', 'NZ'),
('Nicaragua', 'NI'),
('Niger', 'NE'),
('Nigeria', 'NG'),
('Niue', 'NU'),
('Norfolk Island', 'NF'),
('Northern Mariana Islands', 'MP'),
('Norway', 'NO'),
('Oman', 'OM'),
('Pakistan', 'PK'),
('Palau', 'PW'),
('Palestine, State of', 'PS'),
('Panama', 'PA'),
('Papua New Guinea', 'PG'),
('Paraguay', 'PY'),
('Peru', 'PE'),
('Philippines', 'PH'),
('Pitcairn', 'PN'),
('Poland', 'PL'),
('Portugal', 'PT'),
('Puerto Rico', 'PR'),
('Qatar', 'QA'),
('Réunion', 'RE'),
('Romania', 'RO'),
('Russian Federation', 'RU'),
('Rwanda', 'RW'),
('Saint Barthélemy', 'BL'),
('Saint Helena, Ascension and Tr', 'SH'),
('Saint Kitts and Nevis', 'KN'),
('Saint Lucia', 'LC'),
('Saint Martin (French part)', 'MF'),
('Saint Pierre and Miquelon', 'PM'),
('Saint Vincent and the Grenadin', 'VC'),
('Samoa', 'WS'),
('San Marino', 'SM'),
('Sao Tome and Principe', 'ST'),
('Saudi Arabia', 'SA'),
('Senegal', 'SN'),
('Serbia', 'RS'),
('Seychelles', 'SC'),
('Sierra Leone', 'SL'),
('Singapore', 'SG'),
('Sint Maarten (Dutch part)', 'SX'),
('Slovakia', 'SK'),
('Slovenia', 'SI'),
('Solomon Islands', 'SB'),
('Somalia', 'SO'),
('South Africa', 'ZA'),
('South Georgia and the South Sa', 'GS'),
('South Sudan', 'SS'),
('Spain', 'ES'),
('Sri Lanka', 'LK'),
('Sudan', 'SD'),
('Suriname', 'SR'),
('Svalbard and Jan Mayen', 'SJ'),
('Swaziland', 'SZ'),
('Sweden', 'SE'),
('Switzerland', 'CH'),
('Syrian Arab Republic', 'SY'),
('Taiwan, Province of China', 'TW'),
('Tajikistan', 'TJ'),
('Tanzania, United Republic of', 'TZ'),
('Thailand', 'TH'),
('Timor-Leste', 'TL'),
('Togo', 'TG'),
('Tokelau', 'TK'),
('Tonga', 'TO'),
('Trinidad and Tobago', 'TT'),
('Tunisia', 'TN'),
('Turkey', 'TR'),
('Turkmenistan', 'TM'),
('Turks and Caicos Islands', 'TC'),
('Tuvalu', 'TV'),
('Uganda', 'UG'),
('Ukraine', 'UA'),
('United Arab Emirates', 'AE'),
('United Kingdom', 'GB'),
('United States', 'US'),
('United States Minor Outlying I', 'UM'),
('Uruguay', 'UY'),
('Uzbekistan', 'UZ'),
('Vanuatu', 'VU'),
('Venezuela, Bolivarian Republic', 'VE'),
('Viet Nam', 'VN'),
('Virgin Islands, British', 'VG'),
('Virgin Islands, U.S.', 'VI'),
('Wallis and Futuna', 'WF'),
('Western Sahara', 'EH'),
('Yemen', 'YE'),
('Zambia', 'ZM'),
('Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_cliente`
--

CREATE TABLE `direccion_cliente` (
  `id_direccion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comuna` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabrica`
--

CREATE TABLE `fabrica` (
  `id_fabrica` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `factura_fecha` datetime NOT NULL,
  `id_fabrica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_fabrica` int(11) NOT NULL,
  `id_titem` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemvendidos`
--

CREATE TABLE `itemvendidos` (
  `id_venta` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_usuario` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `countryCode` varchar(2) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_usuario`, `password`, `name`, `countryCode`, `email`) VALUES
(1, 'b30bd351371c686298d32281b337e8e9', 'Andrea Pruebas', 'CO', 'admin@admin.com'),
(2, 'b30bd351371c686298d32281b337e8e9', 'Juan perez', 'AG', 'juan@test.co'),
(3, 'b30bd351371c686298d32281b337e8e9', 'Marco Dias', 'AS', 'admin@marco.com'),
(4, '0df01ae7dd51cec48fed56952f40842b', 'maria diaz', 'BA', 'admin2@admin.com'),
(5, 'c4409a0d3287b62110f8d4a6f9173320', 'maria diaz peresz', 'AS', 'admin33@admin.com'),
(6, '696ba00166441179e07bb6839572f980', 'Juan magad', 'AI', 'admin333@admin.com'),
(7, '28f719c89ef7f33ce2e178490676b5ab', 'Andrea', 'AO', 'andrea@test.com'),
(8, '202cb962ac59075b964b07152d234b70', 'admin', 'AG', 'admin22@test.co'),
(9, '4297f44b13955235245b2497399d7a93', 'andrea1', 'AG', 'andrea@test.co'),
(10, '4297f44b13955235245b2497399d7a93', 'andrea11', 'AG', 'andrea1@test.co');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD KEY `Code` (`Code`),
  ADD KEY `Code_2` (`Code`);

--
-- Indices de la tabla `direccion_cliente`
--
ALTER TABLE `direccion_cliente`
  ADD PRIMARY KEY (`id_direccion`),
  ADD KEY `idx_direccion_cliente_id_direccion` (`id_direccion`);

--
-- Indices de la tabla `fabrica`
--
ALTER TABLE `fabrica`
  ADD PRIMARY KEY (`id_fabrica`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Indices de la tabla `itemvendidos`
--
ALTER TABLE `itemvendidos`
  ADD PRIMARY KEY (`id_venta`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fabrica`
--
ALTER TABLE `fabrica`
  MODIFY `id_fabrica` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
