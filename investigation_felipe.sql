-- 1
SELECT * FROM crime_scene_report
WHERE city = 'SQL City'
AND type = 'murder';

-- 2
SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

-- 3
select * from person
where name like 'Annabel%'
and address_street_name = 'Franklin Ave';

-- 4
SELECT *
FROM (
    SELECT *
    FROM person
    WHERE address_street_name = 'Northwestern Dr'
    ORDER BY address_number DESC
    LIMIT 1
) AS query1

UNION ALL

SELECT *
FROM person
WHERE name LIKE 'Annabel%'
AND address_street_name = 'Franklin Ave';

-- 14887
-- 16371


-- 5
select * from interview;

-- 6
select * from interview
where person_id = '16371';