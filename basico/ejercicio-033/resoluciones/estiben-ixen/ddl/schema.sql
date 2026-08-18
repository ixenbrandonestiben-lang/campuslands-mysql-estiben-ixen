-- Campuslands MySQL - basico ejercicio-033
-- Tema: inventario de skins shooter (PRIMARY KEY)
-- Ejecutar este archivo antes de inserts.sql

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS skins_inventario;

CREATE TABLE skins_inventario (
    id_skin INT AUTO_INCREMENT PRIMARY KEY,
    nombre_skin VARCHAR(60) NOT NULL,
    id_arma INT NOT NULL,
    rareza ENUM('Consumer','Restricted','Classified','Covert','Contraband') NOT NULL,
    precio DECIMAL(10,2) NOT NULL DEFAULT 0,
    desgaste ENUM('Recien Fabricado','Casi Nuevo','Algo Desgastado','Bastante Desgastado') NOT NULL,
    fecha_adquisicion DATE NOT NULL
);
