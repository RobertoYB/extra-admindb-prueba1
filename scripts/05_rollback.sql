USE `extra-admindb-prueba1`;

START TRANSACTION;

INSERT INTO pacientes(nombre,edad,telefono,created_by,updated_by,active)
VALUES
('Paciente Error',50,'9989999999','admin','admin',TRUE);

-- =========================================================
-- ERROR INTENCIONAL
-- Se intenta insertar un id_paciente que ya existe.
-- Esto provoca una violación de PRIMARY KEY.
-- =========================================================

INSERT INTO pacientes
(id_paciente,nombre,edad,telefono,created_by,updated_by,active)
VALUES
(1,'Paciente Duplicado',40,'9980000000','admin','admin',TRUE);

ROLLBACK;