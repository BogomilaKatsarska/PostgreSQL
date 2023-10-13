SELECT
    bg.name,
    bg.rating,
    c.name AS category_name
FROM board_games AS bg
LEFT JOIN categories AS c
ON bg.category_id = c.id
LEFT JOIN players_ranges
ON players_ranges.id = bg.players_range_id
WHERE (bg.rating > 7.00 AND bg.name ILIKE '%a%')
OR (bg.rating > 7.50 AND players_ranges.min_players >= 2 AND players_ranges.max_players <= 5)
ORDER BY bg.name ASC,
        bg.rating DESC
LIMIT 5;