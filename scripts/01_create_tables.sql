USE `extra-admindb-prueba1`;

-- Eliminar tablas si existen
DROP TABLE IF EXISTS consultas;
DROP TABLE IF EXISTS detalle_venta;
DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS pacientes;
DROP TABLE IF EXISTS doctores;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;

-- ==========================
-- CLIENTES
-- ==========================
CREATE TABLE clientes(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by VARCHAR(50),
    active BOOLEAN DEFAULT TRUE
);

-- ==========================
-- PRODUCTOS
-- ==========================
CREATE TABLE productos(
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by VARCHAR(50),
    active BOOLEAN DEFAULT TRUE
);

-- ==========================
-- DOCTORES
-- ==========================
CREATE TABLE doctores(
    id_doctor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by VARCHAR(50),
    active BOOLEAN DEFAULT TRUE
);

-- ==========================
-- PACIENTES
-- ==========================
CREATE TABLE pacientes(
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT,
    telefono VARCHAR(20),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by VARCHAR(50),
    active BOOLEAN DEFAULT TRUE
);

-- ==========================
-- VENTAS
-- ==========================
CREATE TABLE ventas(
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by VARCHAR(50),
    active BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_cliente
    FOREIGN KEY(id_cliente)
    REFERENCES clientes(id_cliente)
);

-- ==========================
-- DETALLE VENTA
-- ==========================
CREATE TABLE detalle_venta(
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by VARCHAR(50),
    active BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_venta
    FOREIGN KEY(id_venta)
    REFERENCES ventas(id_venta),

    CONSTRAINT fk_producto
    FOREIGN KEY(id_producto)
    REFERENCES productos(id_producto)
);

-- ==========================
-- CONSULTAS
-- ==========================
CREATE TABLE consultas(
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_doctor INT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    diagnostico VARCHAR(255),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(50),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by VARCHAR(50),
    active BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_paciente
    FOREIGN KEY(id_paciente)
    REFERENCES pacientes(id_paciente),

    CONSTRAINT fk_doctor
    FOREIGN KEY(id_doctor)
    REFERENCES doctores(id_doctor)
);
