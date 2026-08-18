-- Campuslands MySQL - basico ejercicio-034
-- Tema: garaje de motos (INSERT)
-- Ejecutar este archivo antes de inserts.sql

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS estacionamiento_motos;

CREATE TABLE estacionamiento_motos (
    id_estacionamiento INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(20) NOT NULL UNIQUE,
    modelo VARCHAR(50) NOT NULL,
    espacio_parqueo VARCHAR(15) NOT NULL UNIQUE,
    id_propietario INT NOT NULL,
    costo_hora DECIMAL(6,2) NOT NULL DEFAULT 5.00,
    fecha_ingreso DATETIME NOT NULL,
    estado ENUM('Activo','Completado','Cancelado') DEFAULT 'Activo'
);
