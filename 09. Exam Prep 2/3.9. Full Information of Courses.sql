SELECT
    a.name AS address,
    CASE
        WHEN extract('hour' FROM co.start) BETWEEN 6 and 20 THEN 'Day'
        WHEN extract('hour' FROM co.start) IN(21, 22, 23, 24, 0, 1, 2, 3, 4, 5) THEN 'Night'
    END AS day_time,
    co.bill,
    cl.full_name,
    ca.make,
    ca.model,
    cat.name AS category_name
FROM
    courses AS co
JOIN cars AS ca
ON co.car_id = ca.id
JOIN categories AS cat
ON ca.category_id = cat.id
JOIN clients AS cl
ON co.client_id = cl.id
JOIN addresses AS a
ON co.from_address_id = a.id;