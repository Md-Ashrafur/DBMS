create table department (
dept_name varchar2(20) not null,
building varchar2(20),
budget numeric(5,2),
primary key (dept_name)
);


describe department;

alter table department add (c1 varchar2(2), c2 varchar2(20));

describe department;

 alter table department drop (c1);
 
 describe department;
 
 alter table department drop (c2, budget);
 
  describe department;
  
  alter table department modify (building numeric);
  
   describe department;
  
alter table department rename column dept_name to Departnmen;

  
 
alter table department rename to Dept;

describe dept; 

alter table dept add (salary numeric(8,2), c2 varchar2(20));

 alter table dept drop primary key;
 
  alter table dept add constraint fixed_salary check(salary>0);
  
  
describe dept; 

alter table dept drop constraint fixed_salary;

 drop table dept;
 
 delete from dept;
 
 
 
 
create table department (
dept_name varchar2(20) not null,
building varchar2(20),
budget numeric(5,2),
primary key (dept_name)
);

create table instructors (
id number,
dept_name varchar2(20) not null,
name varchar2(20),
salary number,
primary key (id),
foreign key(dept_name) references department
);


insert into department values(
Cse, ab1, 500000);

insert into department values(
EEE, ab1, 50000);

insert into department values(
BBA, ab, 50000);

delete from department
where dept_name='BBA';

update department
Set budget=1000000
where dept_name='CSE';


















