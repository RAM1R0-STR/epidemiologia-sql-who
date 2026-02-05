/*(03)-->
DESCRIPCION: Ventanas: acumulados y promedios móviles.
RESPONSABLE: ING LRS
<--(03)*/


-- A) Promedio móvil 7 días de casos globales
WITH global_daily AS (
  SELECT
    date_reported,
    SUM(new_cases) AS new_cases
  FROM who_covid
  GROUP BY date_reported
)
SELECT
  date_reported,
  new_cases,
  ROUND(
    AVG(new_cases) OVER (
      ORDER BY date_reported
      ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ),
    2
  ) AS new_cases_ma7
FROM global_daily
ORDER BY date_reported;

-- B) Promedio móvil 7 días por país (ej: Argentina)
WITH country_daily AS (
  SELECT
    date_reported,
    SUM(new_cases) AS new_cases
  FROM who_covid
  WHERE country = 'Argentina'
  GROUP BY date_reported
)
SELECT
  date_reported,
  new_cases,
  ROUND(
    AVG(new_cases) OVER (
      ORDER BY date_reported
      ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ),
    2
  ) AS new_cases_ma7
FROM country_daily
ORDER BY date_reported;
