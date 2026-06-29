USE `extra-admindb-prueba1`;

SELECT
    p.nombre,
    SUM(dv.cantidad) AS total_vendido
FROM detalle_venta dv
INNER JOIN productos p
ON dv.id_producto = p.id_producto
INNER JOIN ventas v
ON dv.id_venta = v.id_venta
WHERE v.fecha BETWEEN '2025-12-01' AND '2025-12-07'
GROUP BY p.id_producto, p.nombre
ORDER BY total_vendido DESC
LIMIT 5;