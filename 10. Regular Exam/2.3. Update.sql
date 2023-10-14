WITH joined_data AS (
    SELECT
        c.id AS coach_id,
        pc.player_id AS player_id
    FROM
        coaches c
    LEFT JOIN
        players_coaches AS pc ON pc.coach_id = c.id
)
UPDATE coaches AS c
SET salary = salary*coach_level
FROM joined_data AS j
WHERE c.id = j.coach_id AND first_name LIKE 'C%';