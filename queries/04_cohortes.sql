/*(04)-->
DESCRIPCION: Segmentación temporal epidemiológica.
RESPONSABLE: ING LRS
<--(4)*/

-- A) Fecha de inicio de brote por país
WITH first_outbreak AS (
  SELECT
    country,
    MIN(date_reported) AS outbreak_start_date
  FROM who_covid
  WHERE new_cases >= 100
  GROUP BY country
)
SELECT *
FROM first_outbreak
ORDER BY country;

-- B) Fecha del primer pico de casos por país
WITH daily_cases AS (
  SELECT
    country,
    date_reported,
    new_cases
  FROM who_covid
),
first_peak AS (
  SELECT
    country,
    MIN(date_reported) AS first_peak_date
  FROM daily_cases
  WHERE new_cases = (
    SELECT MAX(dc2.new_cases)
    FROM daily_cases dc2
    WHERE dc2.country = daily_cases.country
  )
  GROUP BY country
)
SELECT *
FROM first_peak
ORDER BY first_peak_date;

-- C) Evolución de casos desde el inicio del brote (cohorte temporal)
WITH outbreak_start AS (
  SELECT
    country,
    MIN(date_reported) AS outbreak_start_date
  FROM who_covid
  WHERE new_cases >= 100
  GROUP BY country
),
aligned_series AS (
  SELECT
    w.country,
    CAST(julianday(w.date_reported) - julianday(o.outbreak_start_date) AS INT) AS days_since_outbreak,
    w.new_cases
  FROM who_covid w
  JOIN outbreak_start o
    ON w.country = o.country
  WHERE
    w.date_reported >= o.outbreak_start_date
    AND days_since_outbreak BETWEEN 0 AND 60
)
SELECT
  country,
  days_since_outbreak,
  AVG(new_cases) AS avg_new_cases
FROM aligned_series
GROUP BY country, days_since_outbreak
ORDER BY country, days_since_outbreak;
