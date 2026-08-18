-- Consultas para Ejercicio 032 - tipos de datos para ranking battle royale
-- Concepto principal: tipos de datos
USE campuslands_mysql;

-- 1. Listado completo de registros
SELECT * FROM partidas_br;

-- 2. Conteo total de elementos
SELECT COUNT(*) AS total_registros FROM partidas_br;

-- 3. Consulta aplicando el concepto principal: tipos de datos
SELECT * FROM partidas_br
ORDER BY eliminaciones DESC
LIMIT 5;

-- 4. Filtro especifico por valor superior al promedio
SELECT id_jugador, posicion, eliminaciones
FROM partidas_br
WHERE eliminaciones > (SELECT AVG(eliminaciones) FROM partidas_br)
ORDER BY eliminaciones DESC;

-- 5. Resumen estadistico y agrupacion
SELECT 
    COUNT(*) AS total_elementos,
    AVG(eliminaciones) AS promedio_valor,
    MIN(eliminaciones) AS valor_minimo,
    MAX(eliminaciones) AS valor_maximo
FROM partidas_br;

-- 6. Consulta de agrupacion por categoria/tipo
SELECT 
    posicion,
    COUNT(*) AS cantidad,
    AVG(eliminaciones) AS promedio
FROM partidas_br
GROUP BY posicion
ORDER BY cantidad DESC;
