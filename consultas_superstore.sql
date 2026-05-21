-- ==========================================
-- FASE 1: PREPARACIÓN DEL ENTORNO Y TABLAS (DDL)
-- ==========================================

-- Ajuste de formato de fecha para la base de datos
ALTER DATABASE data_analytics_final SET datestyle TO "ISO, MDY";

-- Eliminamos las tablas si ya existen para evitar errores al re-ejecutar
DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS clientes;

-- Creación de la tabla dimensional de clientes
CREATE TABLE clientes (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100)
);

-- Creación de la tabla de hechos de ventas con relación a clientes
CREATE TABLE ventas (
    row_id INT PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(50),
    sales NUMERIC(12,2),
    FOREIGN KEY (customer_id) REFERENCES clientes(customer_id)
);

-- ==========================================
-- FASE 2: EXPLORATORY DATA ANALYSIS (EDA)
-- ==========================================

-- Extracción del rendimiento de ventas de los últimos 30 días registrados
SELECT 
    c.customer_name AS "Nombre del Cliente",
    v.order_date AS "Fecha de Compra",
    v.sales AS "Total de la Venta"
FROM 
    clientes c
JOIN 
    ventas v ON c.customer_id = v.customer_id
WHERE 
    v.order_date >= (SELECT MAX(order_date) FROM ventas) - INTERVAL '30 days'
ORDER BY 
    v.order_date DESC;