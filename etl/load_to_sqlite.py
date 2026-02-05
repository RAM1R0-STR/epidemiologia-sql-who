import sqlite3
import pandas as pd
from pathlib import Path

# Paths
CSV_PATH = Path("data/raw/WHO-COVID-19-global-daily-data.csv")
DB_PATH = Path("db/epidemiologia.sqlite")
TABLE_NAME = "who_covid"

# Crear carpeta db si no existe
DB_PATH.parent.mkdir(exist_ok=True)

# Leer CSV
df = pd.read_csv(CSV_PATH)

# Normalizar nombres de columnas
df.columns = (
    df.columns
      .str.lower()
      .str.replace(" ", "_")
      .str.replace("-", "_")
)

# Convertir fecha
if "date_reported" in df.columns:
    df["date_reported"] = pd.to_datetime(df["date_reported"])

# Guardar en SQLite
with sqlite3.connect(DB_PATH) as conn:
    df.to_sql(TABLE_NAME, conn, if_exists="replace", index=False)

print("Base SQLite creada correctamente.")
