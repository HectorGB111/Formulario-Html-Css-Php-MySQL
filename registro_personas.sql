-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-03-2025 a las 18:09:03
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_personas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha_nacimiento` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `contraseña` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre_completo`, `fecha_nacimiento`, `correo`, `contraseña`, `fecha_registro`) VALUES
(1, 'Héctor Gaspar Benitez', '2003-06-05', 'ezzzkillx989@gmail.com', '$2y$10$8Gq7PMOQ02nldMnfPeNNQOg/Z0/0Dz68a0K31i/de1eivOdIOdB.e', '2025-03-29 15:11:52'),
(2, 'Ana Karen Gaspar Benitez', '2007-12-06', 'karen061207@gmail.com', '$2y$10$VG0CUYi4D9AR6K75i5L3u.u/WOwR4NdAZ0c/Xa4JNlDA8Fw4LY7cK', '2025-03-29 15:26:52'),
(3, 'Martha Benítez Garcia', '1970-01-04', 'bluediamondsshatters003@gmail.com', '$2y$10$j0tnD4wazAllJSxZPZNy4elRy3NBQOFCsHrgSAHLXZJh8pxpIdwI.', '2025-03-29 15:33:13'),
(4, 'Héctor Gaspar Saenz', '1973-05-28', 'hector098ps@gmail.com', '$2y$10$bW89A.A13H3NkGPpdJjDwu.QEVIRZKuE6W3yZpNcWr1fV5alPbu5u', '2025-03-29 15:34:12'),
(5, 'Jesús Hernández Hernández', '1999-03-20', 'yisus99@gmail.com', '$2y$10$OD0lcbmLqYq3WHrXBP.xGeuU6AbSwpVSjcLdJ2m83LAowHjZh1DVy', '2025-03-29 15:36:01'),
(6, 'Alberto Espino Martínez', '2000-09-03', 'alldrop120@gmail.com', '$2y$10$Ho2nAogxzfQuamInKXNtm.MSskEvkcgQCdv/0x6G3maLzXl3jq1oO', '2025-03-29 15:38:45'),
(7, 'Roberto Hernández Pineda', '2001-06-20', 'rbt100@gmail.com', '$2y$10$OVW78MnBkfYRj8QuO3lw1.4jhRlpNmiKJfY8iEAwhPYEgsheq7o7a', '2025-03-29 15:50:04'),
(8, 'Angelica Mares Ortiz', '1970-02-09', 'angwqr@gmail.com', '$2y$10$NlTHOYmeVX25iZXOnyAUm.ityDMK69Vhda5E5VW/x8n66DcwfxGxG', '2025-03-29 15:51:24'),
(9, 'Karla Estrada Medina', '1980-07-30', 'kem30@gmail.com', '$2y$10$gD7Hm8PBzVLj1tu1xBMJoumBZ3mdc4022V249WIj0FynL2lxVE.1i', '2025-03-29 15:52:33'),
(10, 'Alejandra Espinoza Martínez', '2000-05-28', 'alemiuw@gmail.com', '$2y$10$PAGv9sWCnbGx46NQBAAROe6y1Hi76fhOptle2FxvxneliesMFG01u', '2025-03-29 15:54:08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
