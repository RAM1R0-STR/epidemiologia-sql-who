
---

# 📄 README (ESPAÑOL)

```md
# Análisis Epidemiológico con SQL y Python (WHO COVID-19)

Este proyecto presenta un análisis epidemiológico de datos públicos de COVID-19 provistos por la Organización Mundial de la Salud (WHO).  
El enfoque está puesto en construir un flujo de datos reproducible y realizar análisis mediante SQL, complementados con un análisis exploratorio (EDA) en Python.

El proyecto fue diseñado como pieza de portfolio, priorizando prácticas reales de trabajo con datos por sobre ejercicios aislados.

---

## Objetivos

- Cargar y transformar datos epidemiológicos crudos en una base de datos SQLite
- Realizar consultas analíticas en SQL para explorar tendencias y métricas
- Aplicar funciones ventana y alineación temporal, comunes en análisis epidemiológico
- Desarrollar un EDA conciso en Python con visualizaciones interpretables

---

## Fuente de Datos

- **Fuente:** Organización Mundial de la Salud (WHO) – Datos globales de COVID-19  
- **Acceso:** WHO Humanitarian Data Exchange (HDX)
- **Archivo:** `WHO-COVID-19-global-data.csv`

> Los datos crudos no se incluyen en el repositorio.  
> Para reproducir el análisis, descargue el dataset desde el portal oficial de WHO HDX y colóquelo en `data/raw/`.

---

## Estructura del Proyecto


---

# 📄 README (ESPAÑOL)

```md
# Análisis Epidemiológico con SQL y Python (WHO COVID-19)

Este proyecto presenta un análisis epidemiológico de datos públicos de COVID-19 provistos por la Organización Mundial de la Salud (WHO).  
El enfoque está puesto en construir un flujo de datos reproducible y realizar análisis mediante SQL, complementados con un análisis exploratorio (EDA) en Python.

El proyecto fue diseñado como pieza de portfolio, priorizando prácticas reales de trabajo con datos por sobre ejercicios aislados.

---

## Objetivos

- Cargar y transformar datos epidemiológicos crudos en una base de datos SQLite
- Realizar consultas analíticas en SQL para explorar tendencias y métricas
- Aplicar funciones ventana y alineación temporal, comunes en análisis epidemiológico
- Desarrollar un EDA conciso en Python con visualizaciones interpretables

---

## Fuente de Datos

- **Fuente:** Organización Mundial de la Salud (WHO) – Datos globales de COVID-19  
- **Acceso:** WHO Humanitarian Data Exchange (HDX)
- **Archivo:** `WHO-COVID-19-global-data.csv`

> Los datos crudos no se incluyen en el repositorio.  
> Para reproducir el análisis, descargue el dataset desde el portal oficial de WHO HDX y colóquelo en `data/raw/`.

---

## Estructura del Proyecto

epidemiologia-sql-who/
│
├── etl/
│ └── load_to_sqlite.py # Script ETL: CSV → SQLite
│
├── queries/
│ ├── 01_exploration.sql # Exploración inicial
│ ├── 02_metrics.sql # Métricas epidemiológicas
│ ├── 03_window_functions.sql # Medias móviles y suavizado temporal
│ └── 04_temporal_alignment.sql# Alineación temporal y análisis relativo
│
├── notebooks/
│ └── 01_eda_who_covid.ipynb # Análisis exploratorio en Python
│
├── schema/
│ └── create_tables.sql # Documentación del esquema
│
├── data/
│ └── raw/ # CSV crudo (no versionado)
│
├── db/
│ └── epidemiologia.sqlite # Base SQLite (generada localmente)
│
├── README.md
└── requirements.txt

---

## Tecnologías Utilizadas

- **Python** (pandas, sqlite3, matplotlib)
- **SQLite**
- **SQL** (CTEs, agregaciones, funciones ventana)
- **Git & GitHub**
- **Jupyter Notebook**

---

## Análisis Destacados

- Evolución global y por país de casos y muertes
- Métricas epidemiológicas (casos acumulados, muertes, CFR aparente)
- Medias móviles de 7 días para reducir ruido de reporte
- Alineación temporal de países según inicio del brote
- Relación temporal entre casos y muertes (análisis con desfase)

---

## Reproducibilidad

1. Clonar el repositorio
2. Crear y activar un entorno de Python
3. Descargar el CSV de WHO y ubicarlo en `data/raw/`
4. Ejecutar el ETL:
   ```bash
   python etl/load_to_sqlite.py
5. Explorar la base mediante consultas SQL o el notebook de Python