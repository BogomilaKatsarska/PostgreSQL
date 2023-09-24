SELECT
    EXTRACT(YEAR FROM booked_from) AS "YEAR",
    EXTRACT(MONTH FROM booked_from) AS "MONTH",
    EXTRACT(DAY FROM booked_from) AS "DAY",
    EXTRACT(HOUR FROM booked_from AT TIME ZONE 'UTC') AS "HOUR",
    EXTRACT(MINUTE FROM booked_from) AS "MINUTE",
    CEILING(EXTRACT(SECOND FROM booked_from)) AS "SECOND",
FROM 
    bookings;