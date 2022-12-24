USE sql_hr;
SELECT *
FROM offices
-- WHERE address = '03 reinke trail' OR city IN ('cincinnati','new york city','minneapolis') AND office_id BETWEEN 1 AND 7
-- WHERE address LIKE '%n%'
-- WHERE city LIKE '%i'
-- WHERE address REGEXP '[a-e]n'
WHERE city IS NOT NULL


