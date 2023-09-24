SELECT
    population,
    LENGTH(CAST(population TO VARCHAR)) AS length
FROM 
    countries;