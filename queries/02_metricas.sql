/*(02)-->
DESCRIPCION: Métricas epidemiológicas.
RESPONSABLE: ING LRS
<--(02)*/

-- A) Casos y muertes globales por día
SELECT
  date_reported,
  SUM(new_cases)  AS global_new_cases,
  SUM(new_deaths) AS global_new_deaths
FROM who_covid
GROUP BY date_reported
ORDER BY date_reported;

-- B) Letalidad aparente (CFR) por país (sobre totales acumulados)
-- CFR = total_deaths / total_cases
SELECT
  country,
  MAX(cumulative_cases)  AS total_cases,
  MAX(cumulative_deaths) AS total_deaths,
  ROUND(
    100.0 * MAX(cumulative_deaths) / NULLIF(MAX(cumulative_cases), 0),
    2
  ) AS cfr_pct
FROM who_covid
GROUP BY country
HAVING total_cases >= 100000
ORDER BY cfr_pct DESC
LIMIT 20;

-- C) Peor día de casos (pico) por país
SELECT
  country,
  MAX(new_cases) AS max_new_cases_day
FROM who_covid
GROUP BY country
ORDER BY max_new_cases_day DESC
LIMIT 20;
