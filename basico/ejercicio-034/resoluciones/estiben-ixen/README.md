# Ejercicio 034 - INSERT para garaje de motos

## Descripción

En este ejercicio de nivel básico se implementa y gestiona una base de datos en MySQL orientada a la temática de **garaje de motos**. La práctica se enfoca en el uso de **INSERT**, asegurando la definición correcta de tipos de datos, restricciones, carga de datos consistentes y consultas útiles para la toma de decisiones.

---

## Objetivos de Aprendizaje

- Diseñar y crear tablas en MySQL aplicando buenas prácticas DDL.
- Poblar la tabla con datos representativos y realistas.
- Dominar el uso de **INSERT** en consultas SQL.
- Realizar análisis agregados y filtros precisos sobre los registros.
- Documentar las decisiones técnicas y el flujo de ejecución.

---

## Estructura de la Tabla (`estacionamiento_motos`)

| Campo | Tipo de dato | Descripción |
| --- | --- | --- |
| `id_estacionamiento` | `INT AUTO_INCREMENT PRIMARY KEY` | Identificador unico del registro |
| `placa` | `VARCHAR(20) NOT NULL UNIQUE` | Numero de placa de la moto |
| `modelo` | `VARCHAR(50) NOT NULL` | Marca y linea de la moto |
| `espacio_parqueo` | `VARCHAR(15) NOT NULL UNIQUE` | Codigo de bahia o espacio |
| `id_propietario` | `INT NOT NULL` | Llave foranea a propietarios |
| `costo_hora` | `DECIMAL(6,2) NOT NULL DEFAULT 5.00` | Tarifa horaria aplicada |
| `fecha_ingreso` | `DATETIME NOT NULL` | Momento de entrada al garaje |
| `estado` | `ENUM('Activo','Completado','Cancelado') DEFAULT 'Activo'` | Estado de estancia |

---

## Explicación de los Scripts

### 1. DDL (`ddl/schema.sql`)
Crea la base de datos `campuslands_mysql` si no existe, elimina versiones previas de la tabla para garantizar idempotencia y crea la tabla `estacionamiento_motos` con sus respectivas llaves primarias, tipos y restricciones.

### 2. DML (`dml/inserts.sql`)
Inserta registros de prueba cuidadosamente estructurados para representar diversos casos de negocio dentro de la temática de garaje de motos, permitiendo probar filtros, ordenamientos y cálculos.

### 3. DQL (`dql/consultas.sql`)
Contiene consultas diseñadas para responder preguntas clave del negocio, aplicando **INSERT**, filtros con subconsultas y funciones de agregación (`COUNT`, `AVG`, `MIN`, `MAX`, `GROUP BY`).

---

## Conceptos Practicados

- `CREATE DATABASE` y `USE`
- `CREATE TABLE` y `DROP TABLE IF EXISTS`
- `PRIMARY KEY` y `AUTO_INCREMENT`
- `INSERT`
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- Funciones de agregación (`COUNT()`, `AVG()`, `MIN()`, `MAX()`)

---

## Orden de Ejecución

1. Ejecutar `ddl/schema.sql` para crear la estructura.
2. Ejecutar `dml/inserts.sql` para poblar la información.
3. Ejecutar `dql/consultas.sql` para validar los reportes y resultados.

---

## Conclusión

El desarrollo de este ejercicio consolida los fundamentos de bases de datos relacionales en MySQL, aplicando **INSERT** en un entorno realista de **garaje de motos**. La separación modular de scripts y el uso de restricciones garantiza la integridad y claridad del modelo.
