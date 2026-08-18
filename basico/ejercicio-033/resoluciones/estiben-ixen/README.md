# Ejercicio 033 - PRIMARY KEY para inventario de skins shooter

## Descripción

En este ejercicio de nivel básico se implementa y gestiona una base de datos en MySQL orientada a la temática de **inventario de skins shooter**. La práctica se enfoca en el uso de **PRIMARY KEY**, asegurando la definición correcta de tipos de datos, restricciones, carga de datos consistentes y consultas útiles para la toma de decisiones.

---

## Objetivos de Aprendizaje

- Diseñar y crear tablas en MySQL aplicando buenas prácticas DDL.
- Poblar la tabla con datos representativos y realistas.
- Dominar el uso de **PRIMARY KEY** en consultas SQL.
- Realizar análisis agregados y filtros precisos sobre los registros.
- Documentar las decisiones técnicas y el flujo de ejecución.

---

## Estructura de la Tabla (`skins_inventario`)

| Campo | Tipo de dato | Descripción |
| --- | --- | --- |
| `id_skin` | `INT AUTO_INCREMENT PRIMARY KEY` | Identificador unico de la skin |
| `nombre_skin` | `VARCHAR(60) NOT NULL` | Nombre del diseno/skin |
| `id_arma` | `INT NOT NULL` | Llave foranea al arma |
| `rareza` | `ENUM('Consumer','Restricted','Classified','Covert','Contraband') NOT NULL` | Grado de rareza |
| `precio` | `DECIMAL(10,2) NOT NULL DEFAULT 0` | Valor estimado de mercado |
| `desgaste` | `ENUM('Recien Fabricado','Casi Nuevo','Algo Desgastado','Bastante Desgastado') NOT NULL` | Condicion visual |
| `fecha_adquisicion` | `DATE NOT NULL` | Fecha en que se obtuvo |

---

## Explicación de los Scripts

### 1. DDL (`ddl/schema.sql`)
Crea la base de datos `campuslands_mysql` si no existe, elimina versiones previas de la tabla para garantizar idempotencia y crea la tabla `skins_inventario` con sus respectivas llaves primarias, tipos y restricciones.

### 2. DML (`dml/inserts.sql`)
Inserta registros de prueba cuidadosamente estructurados para representar diversos casos de negocio dentro de la temática de inventario de skins shooter, permitiendo probar filtros, ordenamientos y cálculos.

### 3. DQL (`dql/consultas.sql`)
Contiene consultas diseñadas para responder preguntas clave del negocio, aplicando **PRIMARY KEY**, filtros con subconsultas y funciones de agregación (`COUNT`, `AVG`, `MIN`, `MAX`, `GROUP BY`).

---

## Conceptos Practicados

- `CREATE DATABASE` y `USE`
- `CREATE TABLE` y `DROP TABLE IF EXISTS`
- `PRIMARY KEY` y `AUTO_INCREMENT`
- `PRIMARY KEY`
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- Funciones de agregación (`COUNT()`, `AVG()`, `MIN()`, `MAX()`)

---

## Orden de Ejecución

1. Ejecutar `ddl/schema.sql` para crear la estructura.
2. Ejecutar `dml/inserts.sql` para poblar la información.
3. Ejecutar `dql/consultas.sql` para validar los reportes y resultados.

---

## Conclusión

El desarrollo de este ejercicio consolida los fundamentos de bases de datos relacionales en MySQL, aplicando **PRIMARY KEY** en un entorno realista de **inventario de skins shooter**. La separación modular de scripts y el uso de restricciones garantiza la integridad y claridad del modelo.
