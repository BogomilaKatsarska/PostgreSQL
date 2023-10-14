CREATE OR REPLACE procedure sp_players_team_name(
    IN full_name VARCHAR(50),
    OUT team_name VARCHAR(45)
)
AS
    $$
    BEGIN
                SELECT
            COALESCE(t.name, 'The player currently has no team')
        FROM
            players AS p
        FULL JOIN
                teams as t
        ON p.team_id = t.id
        WHERE CONCAT(p.first_name, ' ', p.last_name) = full_name
        INTO team_name;
            END;
    $$
LANGUAGE plpgsql;
