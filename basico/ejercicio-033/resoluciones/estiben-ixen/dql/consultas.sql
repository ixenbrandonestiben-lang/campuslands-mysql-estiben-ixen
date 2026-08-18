-- Consultas para Ejercicio 033 - PRIMARY KEY para inventario de skins shooter
-- Concepto principal: PRIMARY KEY
USE campuslands_mysql;

-- 1. Listado completo de registros
SELECT * FROM skins_inventario;

-- 2. Conteo total de elementos
SELECT COUNT(*) AS total_registros FROM skins_inventario;

-- 3. Consulta aplicando el concepto principal: PRIMARY KEY
SELECT * FROM skins_inventario
ORDER BY precio DESC
LIMIT 5;

-- 4. Filtro especifico por valor superior al promedio
SELECT nombre_skin, rareza, precio
FROM skins_inventario
WHERE precio > (SELECT AVG(precio) FROM skins_inventario)
ORDER BY precio DESC;

-- 5. Resumen estadistico y agrupacion
SELECT 
    COUNT(*) AS total_elementos,
    AVG(precio) AS promedio_valor,
    MIN(precio) AS valor_minimo,
    MAX(precio) AS valor_maximo
FROM skins_inventario;

-- 6. Consulta de agrupacion por categoria/tipo
SELECT 
    rareza,
    COUNT(*) AS cantidad,
    AVG(precio) AS promedio
FROM skins_inventario
GROUP BY rareza
ORDER BY cantidad DESC;
