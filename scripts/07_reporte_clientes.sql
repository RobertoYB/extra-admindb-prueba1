USE `extra-admindb-prueba1`;

SELECT
    c.nombre,
    SUM(dv.cantidad * dv.precio_unitario) AS total_comprado
FROM clientes c
INNER JOIN ventas v
ON c.id_cliente = v.id_cliente
INNER JOIN detalle_venta dv
ON v.id_venta = dv.id_venta
WHERE YEAR(v.fecha)=2025
GROUP BY c.id_cliente,c.nombre
ORDER BY total_comprado ASC
LIMIT 10;