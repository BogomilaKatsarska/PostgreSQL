SELECT
    COUNT(*)
FROM
    employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- ADDITIONAL QUESTION
SELECT MIN(average_salary)
FROM
    (SELECT
        AVG(salary) as average_salary
    FROM
        employees
    GROUP BY country
    ) as a;

-- ADDITIONAL QUESTION
SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- INDECES
CREATE INDEX people_first_name_idx
ON people(first_name)

