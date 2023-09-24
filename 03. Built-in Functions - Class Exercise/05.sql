SELECT
    SUBSTRING("River Information", '([0-9]{1,4})') AS river_length
FROM 
    view_river_info;

-- OR USE BELOW

SELECT
    (REGEXP_MATCHES("River Information", '([0-9]{1,3})'))[1] AS river_length
FROM
    view_river_info;
-- [1] above removes the {} around the results in the returned table, takes out index1
