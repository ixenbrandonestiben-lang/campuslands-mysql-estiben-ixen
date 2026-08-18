-- Campuslands MySQL - basico ejercicio-035
-- Tema: taller mecanico de motos (SELECT)
-- Ejecutar este archivo antes de inserts.sql

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS servicios_taller;

CREATE TABLE servicios_taller (
    id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    moto VARCHAR(50) NOT NULL,
    placa VARCHAR(20) NOT NULL,
    id_mecanico INT NOT NULL,
    descripcion VARCHAR(150) NOT NULL,
    costo DECIMAL(8,2) NOT NULL DEFAULT 0,
    estado ENUM('Pendiente','En Proceso','Finalizado','Cancelado') DEFAULT 'Pendiente',
    fecha_servicio DATE NOT NULL
);
