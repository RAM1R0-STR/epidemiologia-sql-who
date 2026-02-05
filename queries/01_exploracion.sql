/*(01)-->
DESCRIPCION: Exploracion inicial y muestra de los primeros 15 muertos ordenados por país.
RESPONSABLE: ING LRS
<--(01)*/ 

-- 1) Cantidad de filas
SELECT COUNT(*) AS total_filas
FROM who_covid;

-- 2) Rango de fechas (ajustar nombre de columna si hace falta)
SELECT
  MIN(date_reported) AS fecha_min,
  MAX(date_reported) AS fecha_max
FROM who_covid;

-- 3) Países únicos
SELECT COUNT(DISTINCT country) AS paises_unicos
FROM who_covid;

-- 4) Top 15 países por casos acumulados
SELECT
  country,
  MAX(cumulative_cases) AS total_cases
FROM who_covid
GROUP BY country
ORDER BY total_cases DESC
LIMIT 15;

-- 5) Top 15 países por muertes acumuladas
SELECT
  country,
  MAX(cumulative_deaths) AS total_deaths
FROM who_covid
GROUP BY country
ORDER BY total_deaths DESC
LIMIT 15;