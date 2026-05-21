# 📊 Análisis de Ventas y Retención de Clientes (Superstore)

Este proyecto simula un entorno analítico corporativo, transformando un volumen de datos transaccionales crudos en insights accionables para el diseño de campañas de marketing.

## 🛠️ Stack Tecnológico
* **Base de Datos & Extracción:** PostgreSQL (SQL DDL, DML, DQL).
* **Modelado de Datos:** Draw.io (Esquema en Estrella).
* **Visualización & Storytelling:** Power BI.
* **Preprocesamiento:** MS Excel.

## 📌 Contexto del Problema
Diariamente se generaba un gran volumen de datos transaccionales ("Sample Superstore"), pero la información cruda se encontraba fragmentada en un archivo plano. El objetivo de este proyecto fue estructurar, limpiar y normalizar los registros históricos para proveer al equipo de Marketing de un tablero interactivo que respalde futuras campañas con evidencia empírica.

## 🏗️ Modelado de Datos
Para garantizar la integridad relacional, se diseñó un **Esquema en Estrella (Star Schema)** compuesto por tres entidades principales:
1. `clientes` (Tabla Dimensional)
2. `productos` (Tabla Dimensional)
3. `ventas` (Tabla de Hechos)

*(Nota: Podés ver el código completo de creación de tablas y consultas en el archivo `consultas_superstore.sql` de este repositorio).*

## 📈 Conclusiones y Próximos Pasos (Insights)
Mediante un dashboard interactivo, se estructuró una narrativa de datos basada en tres etapas (Contexto, Desarrollo y Llamado a la Acción), detectando fuerte estacionalidad hacia los últimos meses del año y aislando a los consumidores del Top 10. 

**Recomendaciones para el negocio:**
* Implementar campañas de fidelización personalizadas ("VIP") para los mejores compradores, maximizando el valor de vida del cliente (CLV).
* Investigar el comportamiento de este segmento top para buscar audiencias similares (lookalike) en redes sociales.
* Analizar los patrones de compra de los clientes con menor volumen de facturación para identificar barreras en el recorrido de compra.

---
📫 **Contacto:** [Micaela López en LinkedIn]
(https://www.linkedin.com/in/mlopezjuarez)
