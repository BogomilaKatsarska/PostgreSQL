-- OPTION 1:
DELETE FROM
    volunteers_departments
WHERE id = (
    SELECT
        id
    FROM
        volunteers_departments)
WHERE department_name = 'Education program assistant';

-- OPTION 2:
DELETE FROM 
    volunteers_departments
WHERE 
    department_name = 'Education program assistant';