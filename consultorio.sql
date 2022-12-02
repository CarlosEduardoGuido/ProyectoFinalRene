-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2022 a las 17:04:32
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_02_25_054417_create_citas_table', 1),
(3, '2022_02_26_044955_create_users_table', 1),
(4, '2022_02_26_163743_create_doctores_table', 1),
(5, '2022_03_27_232018_create_especialidades_table', 1),
(6, '2022_06_03_175851_create_products_table', 2),
(7, '2022_06_13_155748_create_historial_table', 3),
(8, '2022_06_22_191607_create_payments_table', 4),
(9, '2022_07_05_162106_create_payments_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `payer_id`, `payer_email`, `amount`, `currency`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'PAYID-MLCHNRY9M561373KW983024X', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 90.00, 'MXN', 'approved', '2022-07-05 22:37:22', '2022-07-05 22:37:22'),
(2, 'PAYID-MLCHNRY9M561373KW983024X', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 90.00, 'MXN', 'approved', '2022-07-05 22:38:07', '2022-07-05 22:38:07'),
(3, 'PAYID-MLCHSCI9UP53197YM768243P', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 1.00, 'MXN', 'approved', '2022-07-05 22:46:57', '2022-07-05 22:46:57'),
(4, 'PAYID-MLCHSCI9UP53197YM768243P', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 1.00, 'MXN', 'approved', '2022-07-05 22:47:41', '2022-07-05 22:47:41'),
(5, 'PAYID-MLCJD7Y0NR35585WF328082J', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.30, 'MXN', 'approved', '2022-07-06 00:33:48', '2022-07-06 00:33:48'),
(6, 'PAYID-MLCJD7Y0NR35585WF328082J', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.30, 'MXN', 'approved', '2022-07-06 00:34:02', '2022-07-06 00:34:02'),
(7, 'PAYID-MLCNPMY8MT86819TL532010F', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.60, 'MXN', 'approved', '2022-07-06 05:31:13', '2022-07-06 05:31:13'),
(8, 'PAYID-MLCN4II10U31675S1559570E', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.60, 'MXN', 'approved', '2022-07-06 05:58:25', '2022-07-06 05:58:25'),
(9, 'PAYID-MLCN4II10U31675S1559570E', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.60, 'MXN', 'approved', '2022-07-06 05:59:29', '2022-07-06 05:59:29'),
(10, 'PAYID-MLCOFIA7RL903611A7552330', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.20, 'MXN', 'approved', '2022-07-06 06:17:34', '2022-07-06 06:17:34'),
(11, 'PAYID-MLCOFIA7RL903611A7552330', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.20, 'MXN', 'approved', '2022-07-06 06:19:00', '2022-07-06 06:19:00'),
(12, 'PAYID-MLCOGYA1UA73540848696252', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.20, 'MXN', 'approved', '2022-07-06 06:21:22', '2022-07-06 06:21:22'),
(13, 'PAYID-MLCOM4Y5BN31276X0825874H', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 7.60, 'MXN', 'approved', '2022-07-06 06:33:49', '2022-07-06 06:33:49'),
(14, 'PAYID-MLCON2Q87G4819559335340U', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 7.70, 'MXN', 'approved', '2022-07-06 06:35:47', '2022-07-06 06:35:47'),
(15, 'PAYID-MLCOPKQ865187795R975430G', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 7.80, 'MXN', 'approved', '2022-07-06 06:38:58', '2022-07-06 06:38:58'),
(16, 'PAYID-MLCORDQ4T402130MP5164244', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 7.90, 'MXN', 'approved', '2022-07-06 06:42:47', '2022-07-06 06:42:47'),
(17, 'PAYID-MLCORNQ49F8654575172411H', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 8.00, 'MXN', 'approved', '2022-07-06 06:43:32', '2022-07-06 06:43:32'),
(18, 'PAYID-MLCOVCI9NJ96333JU881782D', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 8.00, 'MXN', 'approved', '2022-07-06 06:51:20', '2022-07-06 06:51:20'),
(19, 'PAYID-MLCOV5Y33C60171NU4598010', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.20, 'MXN', 'approved', '2022-07-06 06:53:09', '2022-07-06 06:53:09'),
(20, 'PAYID-MLCOXDY5XV91245LG566900P', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.10, 'MXN', 'approved', '2022-07-06 06:55:37', '2022-07-06 06:55:37'),
(21, 'PAYID-MLCOXSQ3NV40472AT231452C', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.10, 'MXN', 'approved', '2022-07-06 06:56:40', '2022-07-06 06:56:40'),
(22, 'PAYID-MLCQO7Q7J4606640S255291D', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 34.50, 'MXN', 'approved', '2022-07-06 08:54:48', '2022-07-06 08:54:48'),
(23, 'PAYID-MLCZR4Y0H15777415329645U', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.10, 'MXN', 'approved', '2022-07-06 19:16:48', '2022-07-06 19:16:48'),
(24, 'PAYID-MLC5T7Q6YY247479S291135T', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.30, 'MXN', 'approved', '2022-07-06 23:53:32', '2022-07-06 23:53:32'),
(25, 'PAYID-MLC5XMY1E623667RC1602513', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.10, 'MXN', 'approved', '2022-07-07 00:00:17', '2022-07-07 00:00:17'),
(26, 'PAYID-MLDBZWY7Y652617PC950442V', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.20, 'MXN', 'approved', '2022-07-07 04:38:23', '2022-07-07 04:38:23'),
(27, 'PAYID-MLDFU4A61A2302888992864S', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.10, 'MXN', 'approved', '2022-07-07 09:01:31', '2022-07-07 09:01:31'),
(28, 'PAYID-MLHRZQI9VL31735HN4627028', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.10, 'MXN', 'approved', '2022-07-14 00:28:20', '2022-07-14 00:28:20'),
(29, 'PAYID-MLHUH7A5FE8263444320832Y', '6RQ4HAVTFNXE8', 'sb-pmwxz17459090@personal.example.com', 0.10, 'MXN', 'approved', '2022-07-14 03:16:11', '2022-07-14 03:16:11'),
(30, 'PAYID-MLQ3C4A61E60628WA383852F', 'RE3EQ5WG5BR9W', 'yael7746@gmail.com', 0.10, 'MXN', 'approved', '2022-07-28 02:46:20', '2022-07-28 02:46:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `shipping_cost`, `description`, `category_id`, `brand_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Cepillo Interdental', 'Oral-B Cepillo Interdental', '+ Oral-B Repuestos Cónicos para Cepillo Interdental 6 Unidades', 0.1, 0.1, 'Oral-B Cepillo Interdental ', 1, 1, 'Cepillo Interdental.jpg', '2022-06-03 23:22:15', '2022-08-04 02:23:23'),
(2, 'GUM Flossers Angulado ', 'Menta 75', 'Color Verde', 0.1, 0.1, 'Material:Plástico\nDimensiones del artículo 17 x 8 x 12 cm\nPeso:	0.23 Gramos\nSabor:	Menta', 1, 1, 'GUM Flossers Angulado.png', '2022-06-03 23:22:15', '2022-06-03 23:22:15'),
(3, 'Hilo Dental Super Floss', 'Color Azul', '50 Piezas', 0.1, 0.1, 'Oral-B Hilo Dental Super Floss, Color Azul, 50 Piezas', 1, 1, 'Hilo Dental Super Floss.jpg', '2022-06-03 23:22:15', '2022-06-03 23:22:15'),
(4, 'Enjuague Bucal', 'Colgate Sensitive Pro-Alivio', 'Repara areas sensibles, alivio eficaz y duradero, aliento fresco y mayor higiene bucal , 250 ml', 0.1, 0.1, 'Repara areas sensibles, alivio eficaz y duradero, aliento fresco y mayor higiene bucal , 250 ml', 1, 1, 'Enjuague Bucal.jpg', '2022-06-03 23:22:15', '2022-06-03 23:22:15'),
(5, 'Cepillo Dental', 'Colgate Cepillo Dental Triple Acción Mediano', '4 Piezas, colores aleatorios', 0.1, 0.1, 'Colgate Cepillo Dental Triple Acción Mediano, 4 Piezas, colores aleatorios', 1, 1, 'Cepillo Dental.jpg', '2022-06-03 23:22:15', '2022-06-03 23:22:15'),
(6, 'Pasta Dental', 'Colgate Total Salud Visible Multibeneficios 150 ML', 'Multibeneficios 150 ML', 0.1, 0.1, 'Pasta Dental Colgate Total Salud Visible Multibeneficios 150 ML', 1, 1, 'Pasta Dental.jpg', '2022-06-03 23:22:15', '2022-06-03 23:22:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_citas`
--

CREATE TABLE `tb_citas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hora_cita` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cita` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `asunto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_citas`
--

INSERT INTO `tb_citas` (`id`, `hora_cita`, `cita`, `id_usuario`, `asunto`, `id_doctor`, `created_at`, `updated_at`) VALUES
(3, '15:00:00.000000', 'Miercoles', 16, 'Limpieza', 1, '2022-06-13 09:33:06', '2022-06-13 09:33:06'),
(4, '10:00:00.000000', 'Lunes', 16, 'Extraccion de muela', 1, '2022-06-15 07:00:43', '2022-06-15 07:00:43'),
(5, '11:00:00.000000', 'Lunes', 17, 'Ortodoncia', 1, '2022-06-15 07:45:31', '2022-06-15 07:45:31'),
(6, '16:00:00.000000', 'Lunes', 6, 'Ortodoncia', 1, '2022-06-15 09:28:15', '2022-06-15 09:28:15'),
(7, '16:48:00.000000', '2022-07-15', 7, 'Vamos por unas chelas jaja', 1, '2022-07-14 02:48:58', '2022-07-14 02:48:58'),
(8, '11:00:00.000000', 'Viernes', 6, 'Ortodoncia', 1, '2022-07-14 03:12:23', '2022-07-14 03:12:23'),
(10, '12:00', '2022-07-29', 6, 'Prueba', 1, '2022-07-28 02:08:24', '2022-07-28 02:08:24'),
(11, '10:00', '2022-07-28', 6, 'Prueba', 1, '2022-07-28 02:53:42', '2022-07-28 02:53:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_doctores`
--

CREATE TABLE `tb_doctores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_doctores`
--

INSERT INTO `tb_doctores` (`id`, `nombre`, `numero`, `id_especialidad`, `created_at`, `updated_at`) VALUES
(1, 'Maria Becerra Martinez', '7221039182', 1, '2022-03-29 22:09:44', '2022-08-04 02:37:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_doctors`
--

CREATE TABLE `tb_doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especialidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_especialidad` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_doctors`
--

INSERT INTO `tb_doctors` (`id`, `nombre`, `especialidad`, `descripcion`, `imagen`, `id_especialidad`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Javier S.', 'Ortodoncia', 'Odontólogo egresado de la Facultad de Odontología en la Universidad Intercontinental. Con amplia experiencia en la atención clínica y capacitaciones, buscando siempre la optimización de tratamientos.', 'https://laclinicadentalsantafe.com/wp-content/uploads/2022/05/Dr.-Sa%CC%81manoOK-e1652455290502.png', 1, NULL, NULL),
(2, 'Dr. Miguel Ángel S.B.', 'Endodoncia', 'El Dr. Schad es apasionado y comprometido con su trabajo, cuenta con el respaldo de más de 40 años como odontólogo y ha atendido más de 18000 pacientes, brindando bienestar y salud bucodental.', 'https://laclinicadentalsantafe.com/wp-content/uploads/2019/04/Dr-Miguel-Angel-Schad.jpg', 2, NULL, NULL),
(3, 'Dra. Cecilia R. F.', 'Odontopediatria', 'Especialista en odontopediatría y cirujana dentista por la Universidad Nacional Autónoma de México. La doctora Cecilia ha demostrado pasión y compromiso para el cuidado dental de los pacientes más pequeños.', 'https://laclinicadentalsantafe.com/wp-content/uploads/2019/04/Dra-Cecilia-Reyes.jpg', 3, NULL, NULL),
(4, 'Dr. Freddy José M. M.', 'Periodoncia', 'Especialista en Periodoncia por la Universidad Nacional Autónoma de México, en Ciudad Universitaria,egreso como Cirujano Dentista de la Universidad de los Andes, Mérida, en su Natal Venezuela.', 'https://laclinicadentalsantafe.com/wp-content/uploads/2019/04/Dr-Fredy-Moron-Mora.jpg', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_especialidades`
--

CREATE TABLE `tb_especialidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `especialidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_especialidades`
--

INSERT INTO `tb_especialidades` (`id`, `especialidad`, `created_at`, `updated_at`) VALUES
(1, 'Cirugia Maxilofacial', NULL, NULL),
(2, 'Odontopediatria', NULL, NULL),
(3, 'Endodoncia', NULL, NULL),
(4, 'Ortodoncia', NULL, NULL),
(5, 'Estetica', NULL, NULL),
(6, 'General', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_historial`
--

CREATE TABLE `tb_historial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_cita` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescripciones` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_historial`
--

INSERT INTO `tb_historial` (`id`, `id_cita`, `descripcion`, `prescripciones`, `observaciones`, `receta`, `condicion`, `created_at`, `updated_at`) VALUES
(3, 5, 'Ortodoncia', 'Paracetamol', 'Se recomienda una mejor limpieza', '20220727_153944_doc.pdf', 'mala', '2022-07-27 20:39:44', '2022-07-27 20:39:44'),
(4, 6, 'Limpieza', 'Enjuage bucal', 'Se recomienda hacer un aseo diario', '20220727_154111_KAREN PEREZ.pdf', 'mala', '2022-07-27 20:41:11', '2022-07-27 20:41:11'),
(5, 10, 'dfdfdfg', 'cgcgcjcgjjhffj', 'jgfgffjfh bvbvv', '20220727_215215_20220727_154111_KAREN PEREZ.pdf', 'hfhfhjfgdgjh', '2022-07-28 02:52:15', '2022-07-28 02:52:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_inicio`
--

CREATE TABLE `tb_inicio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mision` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valores` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_inicio`
--

INSERT INTO `tb_inicio` (`id`, `titulo`, `mision`, `vision`, `valores`, `descripcion`, `direccion`, `telefono`, `email`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Smile\'s', 'Consultorio Dental Smile\'s, es una organización que pretende ser un referente a seguir dentro del sector de la odontología, por la calidad de su trabajo y por el trato humano. Para ello hacemos especial hincapié en el trato preferente a nuestros pacientes, poniendo todo nuestro saber hacer para solucionar de la forma mas satisfactoria sus problemas de salud dental.', 'Implantar y desarrollar un nuevo concepto de odontología multidisciplinar, capaz de ofertar y realizar todo tipo de tratamientos dentales, y teniendo como objetivos principales', 'Los valores que Consultorio Dental Smile\'s promueve entre sus pacientes y empleados se pueden resumir en la búsqueda continua de resultados que satisfagan a todos los miembros de nuestra organización, siempre teniendo en cuenta a nuestros pacientes. Reconociendo como miembros a todos los colaboradores, empleados, proveedores, etc., que mes a mes colaboran o desarrollan su labor profesional en nuestro centro.', 'Somos tu mejor opcion para el cuidado de tu sonrisa', 'Antonio Albarran #315 Col. Lazaro Cardenas, Toluca EDOMEX.', '725488585', 'MALENY@GMAIL.COM', 'https://consultorio.consultoriosmilestoluca.com/images/inicio.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `id` int(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detalles` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precio` double DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`id`, `nombre`, `detalles`, `precio`, `imagen`) VALUES
(1, 'Cepillo de Dientes\r\nEléctrico', 'Recargable Pro 2000,\r\ncon Tecnología Braun', 1750.5, 'https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00006905584297L.jpg'),
(2, 'Enjuague Bucal\r\n500 ml', 'Listerine Control Antisarro Zero Alcohol', 73, 'https://www.listerine.com/sites/listerine_us_2/files/product-images/lis_312547428323_zero_cool_mint_500ml_00000_980x980.png'),
(3, 'Pasta dental', 'Colgate Total Salud Visible Multibeneficios 150 ML', 54, 'https://consultorio.consultoriosmilestoluca.com/images/Pasta%20Dental.jpg'),
(4, 'Cepillo Dental', 'Colgate Cepillo Dental Triple Acción Mediano', 82, 'https://consultorio.consultoriosmilestoluca.com/images/Cepillo%20Dental.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_specialities`
--

CREATE TABLE `tb_specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_specialities`
--

INSERT INTO `tb_specialities` (`id`, `nombre`, `descripcion`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Ortodoncia', 'Si tienes los dientes desalineados, la solución es el tratamiento de ortodoncia; en dónde los dientes se colocan en su posición adecuada, para así lograr su correcta función y como consecuencia, dientes perfectamente bien alineados. Existen varios tipos de tratamientos de ortodoncia, tales como: brackets metálicos, estéticos, sin ligas e incluso sistemas totalmente transparentes.', 'https://th.bing.com/th/id/OIP.hsOE_N2YtS8TkiT5vCvPfwHaE8?pid=ImgDet&rs=1', NULL, NULL),
(2, 'Endodoncia Dental', 'Si has notado que de repente te duele un diente cuando tomas líquidos frías o muy calientes, cuando estas acostado, cuando masticas y que el diente te punza, entonces, puedes necesitar de un tratamiento de conductos o endodoncia. Para eso, debemos quitar el nervio infectado por las caries, para que así te deje de doler. Debes apresurarte, ya que en cualquier momento el dolor se puede tornar insoportable. Llámanos, no importa la hora ni el día. ¡Lo importante es que te sientas bien!', 'https://www.topdoctors.es/files/Image/large/5a3191aa-d00c-4296-b99c-58198ac97da0.png', NULL, NULL),
(3, 'Odontopediatria', '¿Has notado que tu hijo tiene manchas, huecos o rayas en los dientes?\r\nNo te preocupes, todos los niños, no importando su edad, pueden ser atendidos para mejorar su salud bucal.\r\nVen y pregúntanos por las opciones, aquí te daremos toda la información necesaria para que tomes la mejor decisión de tratamiento de odontopediatría para tu pequeño.', 'https://bfesteticadental.com/wp-content/uploads/2020/01/Odontopediatria-Caracas-Venezuela-BF-Estetica-Dental.jpg', NULL, NULL),
(4, 'Periodoncia', '¿Has notado que te sangran las encías?\r\nLas encías es un lugar en donde se acumula una gran cantidad de sarro, causando inflamación y provocando este sangrado. Puede ser que tengas enfermedad periodontal, la cual tiene como principal problema que usualmente es lenta y no duele, pero puedes llegar a perder los dientes si no la combates a tiempo.', 'https://www.clinicapuyuelo.es/wp-content/uploads/2018/12/periodoncia-700x350.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avisodeprivacidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `name`, `numero`, `direccion`, `email`, `email_verified_at`, `password`, `avisodeprivacidad`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'victo manuel', '7223520398', 'Revolucion', 'al221910459@gmail.com', NULL, '$2y$10$fZ2uhQ3B4kqIak5Og8Ug4.cBehOn4oB34nB4/A.9DUOIa1.roMXW.', 'Correcto', NULL, NULL, '2022-06-02 05:28:05', '2022-06-02 05:28:05'),
(7, 'Carlos Guido', '72182491212', 'Toluca de Lerdo', 'guido@gmail.com', NULL, '$2y$10$vgFulewHPbS/by8uTT5BSub8iv1hWGige1.U9gnAkuXtVG7x8kTqK', 'Correcto', 'admin', NULL, '2022-06-02 05:52:49', '2022-06-02 05:52:49'),
(16, 'Angel Raul', '7219102312', 'Toluca', 'angel@gmail.com', NULL, '$2y$10$zN83HZuEjsEKLwrZ.WQl7.Up2Qve3Q65jcsMb/gTnVDbxyfzmFhfq', 'Correcto', NULL, NULL, '2022-06-13 08:07:12', '2022-06-13 08:07:12'),
(17, 'Cristiano Ronaldo', '72102931231', 'Toluca', 'cr7@gmail.com', NULL, '$2y$10$mJrFxXWksovVhrv0L64rt.avsj0vlpigkOyWMvV0aYOHWrAmM8tYy', 'Correcto', NULL, NULL, '2022-06-15 07:45:13', '2022-06-15 07:45:13'),
(18, 'juan', '72182491212', 'Toluca de Lerdo', 'prueba@gmail.com', NULL, '$2y$10$QcezISZyX.W/6PcgN.bZ/O.cxferVBo.79d9xbHf3UfIZLFDPaXIO', 'Correcto', NULL, NULL, '2022-06-15 20:51:58', '2022-06-15 20:51:58'),
(19, 'Carlos Guido', '72182491212', 'Toluca de Lerdo', 'prueba1@gmail.com', NULL, '$2y$10$yKw7COQ2N1Rqt8jkhK/rtul.ODPp9SUVwAZJvqhL64dzqE9kDtjw6', 'Correcto', NULL, NULL, '2022-06-15 20:57:12', '2022-06-15 20:57:12'),
(20, 'jose', '7212384812', 'Toluca de Lerdo', 'prueba2@gmail.com', NULL, '$2y$10$GzzfLWaAko0hjgGIytD8EOOWKbCh9JlCRB0MWvv2eRUf1icgmXQdS', 'Correcto', NULL, NULL, '2022-06-15 21:02:03', '2022-06-15 21:02:03'),
(21, 'jose', '12123123123', 'Toluca de Lerdo', 'prueba3@gmail.com', NULL, '$2y$10$IWrsHHTBrEMRPACCePv1JuQCPlURp3xWW5ddYtuzM2o4G7oEgpibK', 'Correcto', NULL, NULL, '2022-06-15 21:03:05', '2022-06-15 21:03:05'),
(22, 'Masao yael', '7227544600', 'lerma', 'al221912050@gmail.com', NULL, '$2y$10$5E89OKqjsrPwImbas6VXnOrX1tLpTzNkjLDbjTGPPVinSUMe97/ui', 'Correcto', NULL, NULL, '2022-07-20 05:04:20', '2022-07-20 05:04:20'),
(23, 'ADMINISTRADOR', '7225518473', 'Santa María Atarasquillo', 'admin@utvt.com', NULL, '$2y$10$Z9WUnuOhJZ6U.hDJzFRlne2w03FWPd8QoH.dBZjEwao30K/Ao3t.q', 'Correcto', 'admin', NULL, '2022-08-11 03:07:59', '2022-08-11 03:07:59'),
(24, 'USUARIO', '7252317452', 'Santa María Atarasquillo', 'usuario@utvt.com', NULL, '$2y$10$qFxzqQjmR2bgTSicJSFoPenisC00j9RBkoWYw5D7ITkxGBFFRHYEm', 'Correcto', NULL, NULL, '2022-08-11 03:09:59', '2022-08-11 03:09:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indices de la tabla `tb_citas`
--
ALTER TABLE `tb_citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_doctores`
--
ALTER TABLE `tb_doctores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_doctors`
--
ALTER TABLE `tb_doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_doctors_nombre_unique` (`nombre`);

--
-- Indices de la tabla `tb_especialidades`
--
ALTER TABLE `tb_especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_historial`
--
ALTER TABLE `tb_historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_inicio`
--
ALTER TABLE `tb_inicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_specialities`
--
ALTER TABLE `tb_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_usuarios_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_citas`
--
ALTER TABLE `tb_citas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tb_doctores`
--
ALTER TABLE `tb_doctores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_doctors`
--
ALTER TABLE `tb_doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_especialidades`
--
ALTER TABLE `tb_especialidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_historial`
--
ALTER TABLE `tb_historial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_inicio`
--
ALTER TABLE `tb_inicio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_specialities`
--
ALTER TABLE `tb_specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
