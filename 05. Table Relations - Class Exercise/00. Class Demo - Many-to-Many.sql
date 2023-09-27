-- Many-to-Many via mapping table

SELECT
    CONCAT(m.first_name, ' ', m.last_name) AS "Full Men Name",
    men_id,
    women_id
    CONCAT(w.first_name, ' ', w.last_name) AS "Full Woman Name"
FROM
    men as m
JOIN men_women
ON m.id = men_women.men_id
    JOIN women as w
    ON w.id = men_women.women_id



-- When we want to have 2 columns as PK:

CREATE TABLE men_women(
    id,
    men_id INT,
    women_id INT,
    CONSTRAINT fk_men_women_men
        FOREIGN KEY(men_id)
        REFERENCES men(men_id),
    CONSTRAINT fk_men_women_men
        FOREIGN KEY(women_id)
        REFERENCES women(women_id),
    CONSTRAINT pk_men_women
        PRIMARY KEY(men_id, women_id)
);
