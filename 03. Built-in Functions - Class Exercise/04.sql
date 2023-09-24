SELECT 
    SUBSTRING(description FROM 5) AS "substring" 
FROM currencies;

-- SAME AS BELOW:

SELECT 
    RIGHT(description, -4) AS "substring" 
FROM currencies;