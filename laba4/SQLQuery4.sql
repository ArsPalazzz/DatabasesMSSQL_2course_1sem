SELECT FACULTY.FACULTY [���������], PULPIT.PULPIT [�������], PROFESSION.PROFESSION_NAME [�������������], STUDENT.NAME [��� ��������],PROGRESS.NOTE [������],
  Case
    when (PROGRESS.NOTE = 6) then '�����'
    when (PROGRESS.NOTE = 7) then '����'
    when (PROGRESS.NOTE = 8) then '������'
    else '������ ������'
   end [������]

   From  PROGRESS 
    Inner Join STUDENT ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
    Inner Join SUBJECT ON PROGRESS.SUBJECT = SUBJECT.SUBJECT
    Inner Join PULPIT ON SUBJECT.PULPIT = PULPIT.PULPIT
    Inner Join PROFESSION ON PULPIT.FACULTY = PROFESSION.FACULTY
    Inner Join FACULTY ON PROFESSION.FACULTY = FACULTY.FACULTY
    
    Where PROGRESS.NOTE Between 6 and 8
    Order By PROGRESS.NOTE desc, FACULTY.FACULTY asc, PULPIT.PULPIT asc, PROFESSION.PROFESSION asc

 