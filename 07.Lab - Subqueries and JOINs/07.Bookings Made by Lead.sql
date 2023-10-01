SELECT
	b.apartment_id,
	b.booked_for,
	c.first_name,
	c.country
FROM bookings AS b
INNER JOIN customers AS c
ON c.customer_id = b.customer_id
WHERE job_type LIKE '%Lead%';