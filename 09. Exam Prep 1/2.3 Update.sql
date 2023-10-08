-- OPTION 1(with subquery):
UPDATE animals
SET owner_id =
	(SELECT id
	FROM owners
	WHERE name = 'Kaloqn Stoqnov')
WHERE owner_id IS NULL;

-- OPTION 2(do not use):

UPDATE animals
SET owner_id = 4
WHERE owner_id IS NULL;