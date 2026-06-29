USE `extra-admindb-prueba1`;

START TRANSACTION;

-- Agregar 5 doctores más
INSERT INTO doctores(nombre, especialidad, created_by, updated_by, active) VALUES
('Dr. Molina','Oftalmología','admin','admin',TRUE),
('Dra. Castillo','Ginecología','admin','admin',TRUE),
('Dr. Vega','Psiquiatría','admin','admin',TRUE),
('Dra. Flores','Oncología','admin','admin',TRUE),
('Dr. Navarro','Urología','admin','admin',TRUE);

-- Agregar 10 pacientes
INSERT INTO pacientes(nombre,edad,telefono,created_by,updated_by,active) VALUES
('Paciente 6',22,'9981110006','admin','admin',TRUE),
('Paciente 7',31,'9981110007','admin','admin',TRUE),
('Paciente 8',40,'9981110008','admin','admin',TRUE),
('Paciente 9',29,'9981110009','admin','admin',TRUE),
('Paciente 10',51,'9981110010','admin','admin',TRUE),
('Paciente 11',36,'9981110011','admin','admin',TRUE),
('Paciente 12',45,'9981110012','admin','admin',TRUE),
('Paciente 13',18,'9981110013','admin','admin',TRUE),
('Paciente 14',60,'9981110014','admin','admin',TRUE),
('Paciente 15',33,'9981110015','admin','admin',TRUE);

-- Registrar consultas
INSERT INTO consultas(id_paciente,id_doctor,diagnostico,created_by,updated_by,active) VALUES
(6,6,'Consulta general','admin','admin',TRUE),
(7,7,'Consulta general','admin','admin',TRUE),
(8,8,'Consulta general','admin','admin',TRUE),
(9,9,'Consulta general','admin','admin',TRUE),
(10,10,'Consulta general','admin','admin',TRUE),
(11,1,'Consulta general','admin','admin',TRUE),
(12,2,'Consulta general','admin','admin',TRUE),
(13,3,'Consulta general','admin','admin',TRUE),
(14,4,'Consulta general','admin','admin',TRUE),
(15,5,'Consulta general','admin','admin',TRUE);

COMMIT;