UPDATE 
    continents
SET continent_name = RTRIM(continent_name);

-- OR BELOW

UPDATE 
    continents
SET continent_name = TRIM(TRAILING FROM continent_name);