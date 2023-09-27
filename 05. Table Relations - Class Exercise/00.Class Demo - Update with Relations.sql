CREATE TABLE groups(
    id INT PRIMARY KEY
);

CREATE TABLE users(
    id INT PRIMARY KEY,
    group_id INT REFERENCES groups(id) 
    On UPDATE CASCADE
)

-- 
UPDAATE groups
SET id = 10
WHERE id = 1;