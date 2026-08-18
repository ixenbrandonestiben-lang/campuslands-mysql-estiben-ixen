-- Campuslands MySQL - basico ejercicio-032
-- Tema: ranking battle royale (tipos de datos)
-- Ejecutar este archivo antes de inserts.sql

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS partidas_br;

CREATE TABLE partidas_br (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT NOT NULL,
    mapa VARCHAR(40) NOT NULL,
    posicion INT NOT NULL,
    eliminaciones INT NOT NULL DEFAULT 0,
    puntos DECIMAL(8,2) NOT NULL DEFAULT 0,
    fecha_partida DATETIME NOT NULL
);
