CREATE TABLE `clientes` (
  `id_cliente` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(100),
  `telefono` varchar(20),
  `correo` varchar(100),
  `created_at` datetime,
  `created_by` varchar(50),
  `updated_at` datetime,
  `updated_by` varchar(50),
  `active` boolean
);

CREATE TABLE `productos` (
  `id_producto` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(100),
  `descripcion` varchar(255),
  `precio` decimal,
  `stock` int,
  `created_at` datetime,
  `created_by` varchar(50),
  `updated_at` datetime,
  `updated_by` varchar(50),
  `active` boolean
);

CREATE TABLE `ventas` (
  `id_venta` int PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` int,
  `fecha` datetime,
  `created_at` datetime,
  `created_by` varchar(50),
  `updated_at` datetime,
  `updated_by` varchar(50),
  `active` boolean
);

CREATE TABLE `detalle_venta` (
  `id_detalle` int PRIMARY KEY AUTO_INCREMENT,
  `id_venta` int,
  `id_producto` int,
  `cantidad` int,
  `precio_unitario` decimal,
  `created_at` datetime,
  `created_by` varchar(50),
  `updated_at` datetime,
  `updated_by` varchar(50),
  `active` boolean
);

CREATE TABLE `doctores` (
  `id_doctor` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(100),
  `especialidad` varchar(100),
  `created_at` datetime,
  `created_by` varchar(50),
  `updated_at` datetime,
  `updated_by` varchar(50),
  `active` boolean
);

CREATE TABLE `pacientes` (
  `id_paciente` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(100),
  `edad` int,
  `telefono` varchar(20),
  `created_at` datetime,
  `created_by` varchar(50),
  `updated_at` datetime,
  `updated_by` varchar(50),
  `active` boolean
);

CREATE TABLE `consultas` (
  `id_consulta` int PRIMARY KEY AUTO_INCREMENT,
  `id_paciente` int,
  `id_doctor` int,
  `fecha` datetime,
  `diagnostico` varchar(255),
  `created_at` datetime,
  `created_by` varchar(50),
  `updated_at` datetime,
  `updated_by` varchar(50),
  `active` boolean
);

ALTER TABLE `ventas` ADD FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

ALTER TABLE `detalle_venta` ADD FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`);

ALTER TABLE `detalle_venta` ADD FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

ALTER TABLE `consultas` ADD FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

ALTER TABLE `consultas` ADD FOREIGN KEY (`id_doctor`) REFERENCES `doctores` (`id_doctor`);
