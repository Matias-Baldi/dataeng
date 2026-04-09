# Data Warehouse: Análisis de Criminalidad en Argentina (SNIC) 🇦🇷⚖️

## 📌 Descripción del Proyecto
Este proyecto consiste en el diseño y arquitectura de un **Data Warehouse** basado en los datos del **Sistema Nacional de Información Criminal (SNIC)**. El objetivo principal es transformar datos operativos de hechos delictivos en información estratégica para la toma de decisiones en políticas de seguridad pública.

El sistema permite analizar tendencias de criminalidad, identificar zonas críticas y evaluar el impacto de variables externas como el despliegue de fuerzas federales y transferencias presupuestarias.

## 🎯 Objetivos de Negocio
- **Monitoreo de delitos:** Analizar la evolución de homicidios dolosos y robos a nivel nacional y provincial.
* **Geolocalización del crimen:** Identificar departamentos con mayor incidencia delictiva.
* **Evaluación de Políticas:** Correlacionar el despliegue de fuerzas de seguridad con la variación de los índices de criminalidad.

## 🏗️ Arquitectura y Diseño
El proyecto sigue una arquitectura clásica de Data Warehouse, pasando por procesos de extracción y transformación para llegar a un modelo analítico.

### Diseño Conceptual
Se definió un modelo que captura las entidades principales: Hechos delictivos, Territorio, Tiempo y Variables de Seguridad.

### Diseño Lógico (Star Schema / Snowflake)
El modelo lógico se estructuró mediante tablas de hechos y dimensiones para optimizar las consultas analíticas (OLAP):
- **Tablas de Hechos:** `Homicidios_Dolosos`, `Robos`, `Variables_Seguridad`.
- **Dimensiones:** `Territorio` (Nación, Provincia, Departamento), `Tiempo` (Año, Mes), `Mecanismo`, `Lugar_Homicidio`, `Tipo_Robo`.

> ![Diseño Lógico](.diseño.jpg) 

## 🛠️ Tecnologías Utilizadas
- **Modelado de Datos:** PostgreSQL.
- **Procesamiento:** PostgreSQL.
- **Documentación:** PDF Técnico.

## 📊 Principales Indicadores (KPIs)
1. **Tasa de Homicidios por cada 100k habitantes:** Segmentada por provincia y año.
2. **Evolución Mensual de Robos con/sin uso de armas.**
3. **Correlación de Inversión en Seguridad vs. Tasa de Delitos.**

## 👥 Integrantes del Grupo
- Baldi, Matías Eduardo
- Barakian, Benjamin Federico
- Gonzalez Rearte, José
- Leonarhdt, Germán

---
*Este proyecto fue realizado en el marco de la Maestría en Ciencia de Datos - ITBA.*
