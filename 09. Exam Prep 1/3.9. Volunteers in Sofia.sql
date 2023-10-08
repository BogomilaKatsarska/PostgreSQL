-- OPTION 1:
SELECT
	   v.name AS volunteers,
	   v.phone_number,
	   SUBSTRING(TRIM(REPLACE(v.address, 'Sofia', '')), 3)
FROM 
	volunteers as v
JOIN 
	volunteers_departments as vd
ON 
	vd.id = v.department_id
WHERE 
	vd.department_name = 'Education program assistant'
AND 
	v.address LIKE '%Sofia%'
ORDER BY
	volunteers ASC;

-- OPTION 2
SELECT
	   name,
	   phone_number,
	   SUBSTRING(TRIM(address), 8, LENGTH(address)) AS "address"
FROM volunteers
WHERE department_id = 2 AND SUBSTRING(TRIM(address), 1, 5) = 'Sofia'
ORDER BY name ASC;