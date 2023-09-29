SELECT 
    COUNT(*) as countries_without_rivers
FROM 
    countries
LEFT JOIN 
    countries_rivers 
ON 
    countries.country_code = countries_rivers.country_code
    -- OR USE THIS WHEN THE NAME IS THE SAME IN THE 2 TABLES: USING (country_code)
WHERE 
    countries_rivers.country_code IS NULL;