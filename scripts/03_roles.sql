USE `extra-admindb-prueba1`;

DROP ROLE IF EXISTS jefe_role;
DROP ROLE IF EXISTS almacenista_role;
DROP ROLE IF EXISTS aux_almacen_role;

CREATE ROLE jefe_role;
CREATE ROLE almacenista_role;
CREATE ROLE aux_almacen_role;

-- Jefe
GRANT SELECT, INSERT, UPDATE
ON `extra-admindb-prueba1`.*
TO jefe_role;

-- Almacenista
GRANT SELECT
ON `extra-admindb-prueba1`.*
TO almacenista_role;

-- Auxiliar de almacén
GRANT SELECT, INSERT, UPDATE, DELETE
ON `extra-admindb-prueba1`.*
TO aux_almacen_role;

FLUSH PRIVILEGES;
