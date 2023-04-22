USE UNIVER

SELECT *
	FROM (SELECT CASE WHEN NOTE BETWEEN 8 AND 9 THEN '8-9'
					  WHEN NOTE BETWEEN 6 AND 7 THEN '6-7'
					  WHEN NOTE BETWEEN 4 AND 5 THEN '4-5'
					  ELSE '10'
					  END [������], COUNT(*) [����������]
	FROM PROGRESS GROUP BY CASE
		WHEN NOTE BETWEEN 8 AND 9 THEN '8-9'
		WHEN NOTE BETWEEN 6 AND 7 THEN '6-7'
		WHEN NOTE BETWEEN 4 AND 5 THEN '4-5' 
		ELSE '10'
		END ) AS T
			ORDER BY CASE [������]
				WHEN '8-9' then 1
				WHEN '6-7' then 2
				WHEN '4-5' then 3
				ELSE 0
				END
