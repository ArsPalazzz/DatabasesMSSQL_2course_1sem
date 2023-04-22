use UNIVER

SELECT AUDITORIUM_TYPENAME,
	   MAX(AUDITORIUM_CAPACITY) [������������ �����������],
	   MIN(AUDITORIUM_CAPACITY) [����������� �����������],
	   AVG(AUDITORIUM_CAPACITY) [������� �����������],
	   SUM(AUDITORIUM_CAPACITY) [��������� �����������],
	   COUNT(AUDITORIUM_CAPACITY) [����� �����������]
FROM AUDITORIUM INNER JOIN AUDITORIUM_TYPE
	ON AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE
		GROUP BY AUDITORIUM_TYPENAME