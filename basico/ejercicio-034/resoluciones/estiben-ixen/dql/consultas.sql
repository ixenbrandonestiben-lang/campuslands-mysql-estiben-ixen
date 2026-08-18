-- Consultas para Ejercicio 034 - INSERT para garaje de motos
-- Concepto principal: INSERT
USE campuslands_mysql;

-- 1. Listado completo de registros
SELECT * FROM estacionamiento_motos;

-- 2. Conteo total de elementos
SELECT COUNT(*) AS total_registros FROM estacionamiento_motos;

-- 3. Consulta aplicando el concepto principal: INSERT
SELECT * FROM estacionamiento_motos
ORDER BY id_propietario DESC
LIMIT 5;

-- 4. Filtro especifico por valor superior al promedio
SELECT placa, espacio_parqueo, id_propietario
FROM estacionamiento_motos
WHERE id_propietario > (SELECT AVG(id_propietario) FROM estacionamiento_motos)
ORDER BY id_propietario DESC;

-- 5. Resumen estadistico y agrupacion
SELECT 
    COUNT(*) AS total_elementos,
    AVG(id_propietario) AS promedio_valor,
    MIN(id_propietario) AS valor_minimo,
    MAX(id_propietario) AS valor_maximo
FROM estacionamiento_motos;

-- 6. Consulta de agrupacion por categoria/tipo
SELECT 
    espacio_parqueo,
    COUNT(*) AS cantidad,
    AVG(id_propietario) AS promedio
FROM estacionamiento_motos
GROUP BY espacio_parqueo
ORDER BY cantidad DESC;
