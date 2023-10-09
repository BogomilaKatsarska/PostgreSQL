CREATE OR REPLACE FUNCTION fn_courses_by_client(phone_num VARCHAR(20))
RETURNS INT
AS
    $$
    BEGIN
        RETURN(
            SELECT
                COUNT(*)
            FROM courses
            JOIN clients
            ON clients.id = courses.client_id
            WHERE clients.phone_number = phone_num
            );
    END;
    $$
LANGUAGE plpgsql;