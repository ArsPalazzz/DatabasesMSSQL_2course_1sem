use UNIVER

SELECT AUDITORIUM.AUDITORIUM_TYPE, AUDITORIUM_TYPE.AUDITORIUM_TYPENAME, AUDITORIUM.AUDITORIUM
	From AUDITORIUM Inner Join AUDITORIUM_TYPE
	On AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE And AUDITORIUM_TYPE.AUDITORIUM_TYPENAME Like '%���������%'