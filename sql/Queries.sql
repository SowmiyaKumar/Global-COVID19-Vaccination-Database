--Task D.1

SELECT
    '2022-04' AS "Observation Months 1 (OM1)",
    loc.location_name AS "Country Name (CN)",
    MAX(CASE 
        WHEN strftime('%Y-%m', vd.date) = '2022-04' 
        THEN vd.total_vaccinations ELSE 0 END) 
        AS "Administered Vaccine on OM1 (VOM1)",
    '2022-05' AS "Observation Months 2 (OM2)",
    MAX(CASE 
        WHEN strftime('%Y-%m', vd.date) = '2022-05' 
        THEN vd.total_vaccinations ELSE 0 END) 
        AS "Administered Vaccine on OM2 (VOM2)",
    MAX(CASE 
        WHEN strftime('%Y-%m', vd.date) = '2022-05' 
        THEN vd.total_vaccinations ELSE 0 END) -
    MAX(CASE 
        WHEN strftime('%Y-%m', vd.date) = '2022-04' 
        THEN vd.total_vaccinations ELSE 0 END) 
        AS "Difference of totals (VOM1 - VOM2)"
FROM VaccinationData vd
JOIN Location loc 
    ON vd.iso_code = loc.iso_code
WHERE vd.iso_code 
    IN ('CAN', 'DNK', 'USA', 'OWID_WLS')
GROUP BY loc.location_name;

--Task D.2

WITH TotalMonthlyVaccinations AS (
    SELECT
        loc.location_name AS country_name,
        strftime('%Y-%m', v.date) AS month_year,
        MAX(v.total_vaccinations) AS total_vaccinations
    FROM VaccinationData v
    JOIN Location loc ON v.iso_code = loc.iso_code
    WHERE v.iso_code IN ('CAN', 'DNK', 'USA', 'OWID_WLS')
    GROUP BY loc.location_name, month_year
),
Average AS (
    SELECT
        month_year,
        AVG(total_vaccinations) AS average_vaccinations
    FROM TotalMonthlyVaccinations
    GROUP BY month_year
)
SELECT
    m.country_name AS "Country Name",
    m.month_year AS "Month",
    m.total_vaccinations AS "Cumulative Doses"
FROM TotalMonthlyVaccinations m
JOIN Average avg ON m.month_year = avg.month_year
WHERE m.total_vaccinations > avg.average_vaccinations;


----Task D.3
SELECT DISTINCT
    v.vaccine_name AS "Vaccine Type",
    loc.location_name AS "Country"
FROM Vaccine v
JOIN CountryVaccinationByManufacturer cvm 
    ON v.vaccine_name = cvm.vaccine_name
JOIN Location loc ON cvm.iso_code = loc.iso_code
WHERE loc.iso_code IN ('CAN', 'DNK', 'USA', 'OWID_WLS')
ORDER BY v.vaccine_name, loc.location_name;


---Task D.4
SELECT
    loc.location_name AS "Country Name",
    s.source_name AS "Source Name (URL)",
    MAX(v.total_vaccinations) AS "Total Administered Vaccines"
FROM VaccinationData v
JOIN Location loc ON v.iso_code = loc.iso_code
JOIN DataSource ds ON v.iso_code = ds.iso_code
JOIN Source s ON ds.source_id = s.source_id
WHERE loc.iso_code IN ('CAN', 'DNK', 'USA', 'OWID_WLS')
GROUP BY loc.location_name, s.source_id
ORDER BY
    MAX(v.total_vaccinations) DESC, loc.location_name, s.source_name;
    
----Task D.5
SELECT
    strftime('%Y-%m', vd.date) AS "Date Range(Months)",
    MAX(CASE WHEN vd.iso_code = 'USA' THEN vd.people_fully_vaccinated ELSE 0 END) AS "United States",
    MAX(CASE WHEN vd.iso_code = 'OWID_WLS' THEN vd.people_fully_vaccinated ELSE 0 END) AS "Wales",
    MAX(CASE WHEN vd.iso_code = 'CAN' THEN vd.people_fully_vaccinated ELSE 0 END) AS "Canada",
    MAX(CASE WHEN vd.iso_code = 'DNK' THEN vd.people_fully_vaccinated ELSE 0 END) AS "Denmark"
FROM
    VaccinationData vd
WHERE
    vd.date BETWEEN '2022-01-01' AND '2023-12-31'
GROUP BY
    strftime('%Y-%m', vd.date)
ORDER BY
  vd.date;