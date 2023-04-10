-- Para contar el número de registros en una tabla, se puede usar la siguiente consulta:
SELECT COUNT(*) AS total_registros FROM INSCRITOS;

-- Para obtener la suma de la cantidad de inscritos en una tabla, se puede usar la siguiente consulta:
SELECT SUM(cantidad) AS total_inscritos FROM INSCRITOS;


-- Para obtener el registro o registros de mayor antigüedad, se puede usar una subconsulta que seleccione el registro o registros con la fecha más antigua y luego unirlo con la tabla principal para obtener todos los detalles del registro:
SELECT * FROM INSCRITOS WHERE fecha = (SELECT MIN(fecha) FROM INSCRITOS);


-- Para obtener la cantidad de inscritos por día, se puede usar la función GROUP BY para agrupar por día y luego contar la cantidad de inscritos en cada grupo:
SELECT SUM(cantidad), fecha
FROM INSCRITOS
GROUP BY fecha
ORDER BY fecha DESC;

-- Para obtener la cantidad de inscritos por día, se puede usar la función GROUP BY para agrupar por día y luego contar la cantidad de inscritos en cada grupo, ordenar los grupos de manera descendente y limitar a un solo registro:
SELECT SUM(cantidad), fecha
FROM INSCRITOS
GROUP BY fecha
ORDER BY fecha DESC
LIMIT 1;