USE `extra-admindb-prueba1`;

-- ==========================
-- CLIENTES
-- ==========================
INSERT INTO clientes (nombre, telefono, correo, created_by, updated_by, active) VALUES
('Juan Perez','9981111111','juan@email.com','admin','admin',TRUE),
('Maria Lopez','9982222222','maria@email.com','admin','admin',TRUE),
('Carlos Ruiz','9983333333','carlos@email.com','admin','admin',TRUE),
('Ana Torres','9984444444','ana@email.com','admin','admin',TRUE),
('Luis Gomez','9985555555','luis@email.com','admin','admin',TRUE);

-- ==========================
-- PRODUCTOS
-- ==========================
INSERT INTO productos (nombre, descripcion, precio, stock, created_by, updated_by, active) VALUES
('Paracetamol','500 mg',35.50,100,'admin','admin',TRUE),
('Ibuprofeno','400 mg',45.00,80,'admin','admin',TRUE),
('Jarabe','Tos',75.00,50,'admin','admin',TRUE),
('Alcohol','Antiséptico',40.00,60,'admin','admin',TRUE),
('Gasas','Paquete',25.00,200,'admin','admin',TRUE);

-- ==========================
-- DOCTORES
-- ==========================
INSERT INTO doctores (nombre, especialidad, created_by, updated_by, active) VALUES
('Dr. García','Cardiología','admin','admin',TRUE),
('Dra. Hernández','Pediatría','admin','admin',TRUE),
('Dr. López','Traumatología','admin','admin',TRUE),
('Dra. Ramírez','Dermatología','admin','admin',TRUE),
('Dr. Sánchez','Neurología','admin','admin',TRUE);

-- ==========================
-- PACIENTES
-- ==========================
INSERT INTO pacientes (nombre, edad, telefono, created_by, updated_by, active) VALUES
('Pedro',20,'9981000001','admin','admin',TRUE),
('Laura',25,'9981000002','admin','admin',TRUE),
('Miguel',31,'9981000003','admin','admin',TRUE),
('Fernanda',29,'9981000004','admin','admin',TRUE),
('Diego',40,'9981000005','admin','admin',TRUE);

-- ==========================
-- VENTAS
-- ==========================
INSERT INTO ventas (id_cliente, created_by, updated_by, active) VALUES
(1,'admin','admin',TRUE),
(2,'admin','admin',TRUE),
(3,'admin','admin',TRUE),
(4,'admin','admin',TRUE),
(5,'admin','admin',TRUE);

-- ==========================
-- DETALLE VENTA
-- ==========================
INSERT INTO detalle_venta (id_venta,id_producto,cantidad,precio_unitario,created_by,updated_by,active) VALUES
(1,1,2,35.50,'admin','admin',TRUE),
(2,2,1,45.00,'admin','admin',TRUE),
(3,3,3,75.00,'admin','admin',TRUE),
(4,4,1,40.00,'admin','admin',TRUE),
(5,5,5,25.00,'admin','admin',TRUE);

-- ==========================
-- CONSULTAS
-- ==========================
INSERT INTO consultas (id_paciente,id_doctor,diagnostico,created_by,updated_by,active) VALUES
(1,1,'Gripe','admin','admin',TRUE),
(2,2,'Fiebre','admin','admin',TRUE),
(3,3,'Fractura','admin','admin',TRUE),
(4,4,'Dermatitis','admin','admin',TRUE),
(5,5,'Migraña','admin','admin',TRUE);
