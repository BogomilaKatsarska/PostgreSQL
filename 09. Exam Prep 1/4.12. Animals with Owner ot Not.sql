-- OPTION 1:
CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not(
	IN animal_name VARCHAR(30),
	OUT final_result VARCHAR
)
AS
$$
   BEGIN
	     SELECT
			    COALESCE(o.name, 'For adoption')
	     FROM animals AS "a"
	     LEFT JOIN owners AS "o"
				   ON a.owner_id = o.id
		 WHERE a.name = animal_name
		 INTO final_result;
   END;
$$
LANGUAGE plpgsql;

-- OPTION 2:
CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not(
	IN animal_name VARCHAR(30),
	OUT out_name VARCHAR(30)
)
AS
$$
   BEGIN
		SELECT o.name
		FROM owners AS o 
		LEFT JOIN animals AS a 
		ON o.id = a.owner_id 
		WHERE a.name = animal_name
		INTO out_name;
		IF out_name IS NULL THEN
		out_name := 'For adoption';
		END IF;
		RETURN;
   END;
$$
LANGUAGE plpgsql;
