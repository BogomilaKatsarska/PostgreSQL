SELECT
    department_id,
    AVG(salary) AS average_salary
FROM
    emoloyees
GROUP BY
    department_id
ORDER BY
    department_id;