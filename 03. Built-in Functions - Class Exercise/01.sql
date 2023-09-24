-- SIGN(NUMBER) - returns 1, -1 or 0 depending on the type
-- RANDOM() - returns a num between 0 and 1

CREATE OR REPLACE VIEW view_river_info AS
SELECT
CONCAT(
    'The river', 
    ' ', 
    river_name, 
    ' ', 
    'flows into the', 
    ' ', outflow, 
    ' ', 'and is', 
    ' ', "length", 
    ' ', 
    'kilometers long.'
    ) AS "River Information"
FROM 
    rivers
ORDER BY 
    river_name ASC;