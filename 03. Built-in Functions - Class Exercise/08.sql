UPDATE 
    continents
SET continent_name = LTRIM(continent_name);

-- OR BELOW

UPDATE 
    continents
SET continent_name = TRIM(LEADING FROM continent_name);