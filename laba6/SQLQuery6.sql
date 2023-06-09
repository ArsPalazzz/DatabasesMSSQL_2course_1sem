SELECT  f.FACULTY[���������], 
    g.PROFESSION[�������������], 
    p.SUBJECT[����������],
    round(avg(cast(p.NOTE as float(4))), 2)[������� ������]
  FROM FACULTY f 
  Inner Join GROUPS g ON f.FACULTY = g.FACULTY
  Inner Join STUDENT s ON g.IDGROUP = s.IDGROUP
  Inner Join PROGRESS p ON p.IDSTUDENT = s.IDSTUDENT
  WHERE f.FACULTY IN('���')
  GROUP BY CUBE (f.FACULTY, g.PROFESSION, p.SUBJECT)