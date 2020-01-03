create table instructor(
ID number not null,
Name varchar(20) not null,
Dept_Name varchar(20),
Salary number);


insert into instructor values (10101,'Srinivasan', 'Comp. Sci.', 65000);
insert into instructor values (12121,'Wu', 'Finance', 90000);
insert into instructor values (15151,'Mozart', 'Music', 40000);
insert into instructor values (22222, 'Einstin', 'Physics', 95000);
insert into instructor values (32343, 'El Said', 'History', 60000);
insert into instructor values (33456, 'Gold', 'Physics', 87000);
insert into instructor values (45565, 'Katz', 'Comp. Sci.', 75000);
insert into instructor values (58583, 'Califieri', 'History', 62000);
insert into instructor values (76543, 'Singh', 'Finance', 80000);
insert into instructor values (76766, 'Crick', 'Biology', 72000);
insert into instructor values (83821, 'Brandt', 'Comp. Sci.', 92000);
insert into instructor values (98345, 'Kin', 'Elec. Eng.', 80000);


Select Name
from instructor;

SELECT name, Dept_Name
from instructor
where salary>70000;

select name, Dept_Name
FROM instructor
where salary>=80000 and salary<=100000;

select ID, Name, Dept_Name, Salary
from instructor;
