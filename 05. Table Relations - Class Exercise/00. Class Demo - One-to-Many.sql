CREATE TABLE cities(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30)
);


-- Below is option 1 for creating table relation
CREATE TABLE persons(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30)
    city_id INT REFERENCES cities(id)
);

-- Below is option 2 for creating table relation
CREATE TABLE persons(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30)
    city_id INT,
    CONSTRAINT fk_persons_cities
    FOREIGN KEY (city_id)
    REFERENCES cities(id)
);

-- JOIN
SELECT
    p.first_name,
    p.last_name,
    c.name
FROM persons as p
JOIN cities as c
ON p.city_id = c.id;
 