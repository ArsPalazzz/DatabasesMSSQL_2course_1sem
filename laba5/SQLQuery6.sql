use UNIVER

SELECT top(1)
	   (SELECT AVG(PROGRESS.NOTE) FROM PROGRESS where SUBJECT like '����') [����],
	   (SELECT AVG(PROGRESS.NOTE) FROM PROGRESS where SUBJECT like '��') [��],
	   (SELECT AVG(PROGRESS.NOTE) FROM PROGRESS where SUBJECT like '����') [����]
FROM PROGRESS;