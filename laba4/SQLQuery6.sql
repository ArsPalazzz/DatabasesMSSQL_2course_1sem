use UNIVER

SELECT isnull (PULPIT.PULPIT_NAME, '***') [�������], TEACHER.TEACHER_NAME [�������������]
	FROM TEACHER LEFT OUTER JOIN PULPIT
		ON TEACHER.PULPIT = PULPIT.PULPIT