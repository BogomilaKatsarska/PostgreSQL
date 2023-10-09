SELECT
    clients.full_name,
    COUNT(courses.client_id) AS count_of_cars,
    SUM(courses.bill) AS total_sum
FROM
    clients
JOIN courses
ON clients.id = courses.client_id
WHERE SUBSTRING(clients.full_name, 2, 1) = 'a'
GROUP BY clients.full_name
HAVING  COUNT(courses.client_id) >=2
ORDER BY full_name
