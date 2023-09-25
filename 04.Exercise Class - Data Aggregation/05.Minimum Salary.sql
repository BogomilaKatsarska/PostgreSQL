SELECT
    department_id,
    MIN(salary) AS min_salary
FROM
    emoloyees
GROUP BY
    department_id
ORDER BY
    department_id;