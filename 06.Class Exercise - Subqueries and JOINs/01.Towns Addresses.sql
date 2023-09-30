SELECT
    t.town_id,
    t.name,
    a.address_text
FROM
    towns AS t
JOIN addresses as a 
-- ON t.town_id = a.town_id
-- USING is used when the columns are named in the same way in the diff tables
USING(town_id)
WHERE t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY
    t.town_id,
    a.address_id;