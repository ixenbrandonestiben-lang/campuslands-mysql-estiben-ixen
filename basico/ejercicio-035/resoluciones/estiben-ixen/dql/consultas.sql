-- Consultas para Ejercicio 035 - SELECT para taller mecanico de motos
-- Concepto principal: SELECT
USE campuslands_mysql;

-- 1. Listado completo de registros
SELECT * FROM servicios_taller;

-- 2. Conteo total de elementos
SELECT COUNT(*) AS total_registros FROM servicios_taller;

-- 3. Consulta aplicando el concepto principal: SELECT
SELECT * FROM servicios_taller
ORDER BY descripcion DESC
LIMIT 5;

-- 4. Filtro especifico por valor superior al promedio
SELECT moto, id_mecanico, descripcion
FROM servicios_taller
WHERE descripcion > (SELECT AVG(descripcion) FROM servicios_taller)
ORDER BY descripcion DESC;

-- 5. Resumen estadistico y agrupacion
SELECT 
    COUNT(*) AS total_elementos,
    AVG(descripcion) AS promedio_valor,
    MIN(descripcion) AS valor_minimo,
    MAX(descripcion) AS valor_maximo
FROM servicios_taller;

-- 6. Consulta de agrupacion por categoria/tipo
SELECT 
    id_mecanico,
    COUNT(*) AS cantidad,
    AVG(descripcion) AS promedio
FROM servicios_taller
GROUP BY id_mecanico
ORDER BY cantidad DESC;
