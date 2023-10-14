SELECT
    p.id,
    CONCAT(p.first_name, ' ', p.last_name) AS full_name,
    p.age,
    p.position,
    p.salary,
    sd.pace,
    sd.shooting
FROM
    players as p
JOIN
    skills_data as sd
ON sd.id = p.skills_data_id
WHERE p.position = 'A' and team_id IS NULL AND sd.pace+sd.shooting > 130;