SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS coach_full_name,
    CONCAT(p.first_name, ' ', p.last_name) AS player_full_name,
    t.name AS team_name,
    sd.passing AS passing,
    sd.shooting AS shooting,
    sd.speed AS speed
FROM
    coaches AS c
JOIN
    players_coaches AS pc
ON
    c.id = pc.coach_id
JOIN
    players AS p
ON p.id = pc.player_id
JOIN teams AS t
ON p.team_id = t.id
JOIN skills_data AS sd
ON p.skills_data_id = sd.id
ORDER BY
    coach_full_name ASC,
    player_full_name DESC;