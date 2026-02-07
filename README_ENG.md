# Epidemiological Analysis with SQL and Python (WHO COVID-19)

This project presents an epidemiological data analysis using public COVID-19 data from the World Health Organization (WHO).  
The focus is on building a reproducible data pipeline and performing analytical SQL queries, complemented with an exploratory data analysis (EDA) in Python.

The project is designed as a portfolio piece, emphasizing real-world data workflows rather than isolated exercises.

---

## Objectives

- Load and transform raw epidemiological data into a SQLite database
- Perform analytical SQL queries to explore trends, metrics, and temporal dynamics
- Apply window functions and temporal alignment techniques commonly used in epidemiology
- Conduct a concise exploratory data analysis (EDA) in Python with interpretable visualizations

---

## Data Source

- **Source:** World Health Organization (WHO) – COVID-19 Global Data  
- **Access:** WHO Humanitarian Data Exchange (HDX)
- **File:** `WHO-COVID-19-global-data.csv`

> Raw data is not included in this repository.  
> To reproduce the analysis, download the dataset from the official WHO HDX portal and place it in `data/raw/`.

---

## Project Structure

# Epidemiological Analysis with SQL and Python (WHO COVID-19)

This project presents an epidemiological data analysis using public COVID-19 data from the World Health Organization (WHO).  
The focus is on building a reproducible data pipeline and performing analytical SQL queries, complemented with an exploratory data analysis (EDA) in Python.

The project is designed as a portfolio piece, emphasizing real-world data workflows rather than isolated exercises.

---

## Objectives

- Load and transform raw epidemiological data into a SQLite database
- Perform analytical SQL queries to explore trends, metrics, and temporal dynamics
- Apply window functions and temporal alignment techniques commonly used in epidemiology
- Conduct a concise exploratory data analysis (EDA) in Python with interpretable visualizations

---

## Data Source

- **Source:** World Health Organization (WHO) – COVID-19 Global Data  
- **Access:** WHO Humanitarian Data Exchange (HDX)
- **File:** `WHO-COVID-19-global-data.csv`

> Raw data is not included in this repository.  
> To reproduce the analysis, download the dataset from the official WHO HDX portal and place it in `data/raw/`.

---

## Project Structure
epidemiologia-sql-who/
│
├── etl/
│ └── load_to_sqlite.py # ETL script: CSV → SQLite
│
├── queries/
│ ├── 01_exploration.sql # Basic exploration queries
│ ├── 02_metrics.sql # Epidemiological metrics
│ ├── 03_window_functions.sql # Moving averages and temporal smoothing
│ └── 04_temporal_alignment.sql# Relative-time and cohort-style analysis
│
├── notebooks/
│ └── 01_eda_who_covid.ipynb # Exploratory Data Analysis (Python)
│
├── schema/
│ └── create_tables.sql # Database schema documentation
│
├── data/
│ └── raw/ # Raw CSV (not tracked)
│
├── db/
│ └── epidemiologia.sqlite # SQLite database (generated locally)
│
├── README.md
└── requirements.txt

---

## Technologies Used

- **Python** (pandas, sqlite3, matplotlib)
- **SQLite**
- **SQL** (CTEs, aggregations, window functions)
- **Git & GitHub**
- **Jupyter Notebook**

---

## Key Analyses

- Global and country-level case and death trends
- Epidemiological metrics such as cumulative cases, deaths, and apparent CFR
- Moving averages (7-day) to reduce reporting noise
- Temporal alignment of countries based on outbreak onset to compare dynamics
- Lagged relationship between cases and deaths

---

## Reproducibility

1. Clone the repository
2. Create and activate a Python environment
3. Download the WHO CSV dataset and place it in `data/raw/`
4. Run the ETL script:
   ```bash
   python etl/load_to_sqlite.py
5. Explore the database using the SQL quieries or the Python notebook

---

