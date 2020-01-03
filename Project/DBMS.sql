

create table Customer(
C_ID INT (10) NOT NULL AUTO_INCREMENT,
FirstName varchar(20),
LastName varchar(20),
Address varchar(50),
Phone number(11),
email varchar(50),
primary key(ID)
);


create table Products(
P_ID varchar[10] NOT NULL,
Name varchar(20),
price int,
img blob,
s_id int 
foreign key(s_id) references seller(s_id),
primary key(P_ID),
);


create table Seller(
S_ID INT (10) NOT NULL AUTO_INCREMENT,
Name varchar(20),
Address varchar(50),
Phone number(11),
primary key(S_ID)
);

create table Order_table (
C_ID int not null,
P_ID int not null,
price number,
quantity int,
status varchar(20),
foreign key(C_ID) references Customer,
foreign key(P_ID) references Products
);

insert into Products values (v_1, 'Potato', 19, 'database project\alu.jpg', s_1) ;
insert into Products values (v_2, 'Apple', 238, 'database project\apple.jpg', s_1);
insert into Products values (v_3, 'Lemon', 6, 'database project\lebu.jpg', s_1);
insert into Products values (v_4, 'Capsicum', 650, 'database project\capsicum.jpg', s_1);
insert into Products values (v_5, 'Dragon Fruit', 525, 'database project\dragon.jpg', s_1);
insert into Products values (v_6, 'Orange', 215, 'database project\orange.jpg', s_1);
insert into Products values (v_7, 'Papaya', 160, 'database project\pepe.jpg', s_1);
insert into Products values (v_8, 'Cucumber', 37, 'database project\sosha.jpg', s_1);


insert into Products values (g_1, 'Rice', 100, 'database project\chal.jpg', s_2);
insert into Products values (g_2, 'Pulse', 100, 'database project\dal.jpg', s_2);
insert into Products values (g_3, 'Flour', 35, 'database project\ata.jpg', s_2);
insert into Products values (g_4, 'Milk', 280, 'database project\milk.jpg', s_2);

insert into Products values (m_1, 'Hilsha', 1050, 'database project\ilish.jpg', s_3);
insert into Products values (m_2, 'Beef', 850, 'database project\beef.jpg' , s_3);
insert into Products values (m_3, 'Rui', 520, 'database project\rui.jpg', s_3);
insert into Products values (m_4, 'Chicken', 260, 'database project\murgi.jpg', s_3)

insert into Products values (f_1,  'Pendant', 250, 'database project\lal mala.jpg', s_4);
insert into Products values (f_2, 'Pendant', 180, 'database project\mala.jpg', s_4);
insert into Products values (f_3, 'Pendant', 140, 'database project\pata.jpg', s_4);
insert into Products values (f_4, 'Pendant & ring', 250, 'database project\ring.jpg', s_4);

select FirstName,LastName,Address,Phone,email
from Customer;

select Name, Price, img
from Products
where Name='Potato';

select Name, Price, img
from Products
where Name='Apple';

select Name, Price, img
from Products
where Name='Lemon';

select Name, Price, img
from Products
where Name='Capsicum';

select Name, Price, img
from Products
where Name='Cucumber';

select Name, Price, img
from Products
where Name='Papaya';

select Name, Price, img
from Products
where Name='Dragon Friuit';

select Name, Price, img
from Products
where Name='Orange';



select Name, Price, img
from Products
where Name='Flour';

select Name, Price, img
from Products
where Name='Rice';

select Name, Price, img
from Products
where Name='Pulse';

select Name, Price, img
from Products
where Name='Milk';



select Name, Price, img
from Products
where Name='Beef';

select Name, Price, img
from Products
where Name='Chicken';

select Name, Price, img
from Products
where Name='Rui';

select Name, Price, img
from Products
where Name='Hilsha Fish';

select Name, Price, img
from Products
where Name='Pendant';

select Name, Price, img
from Products
where Name='Pendant & ring';


select Name, Price, img
from Products
order by Price asc;

select Name, Price, img
from Products
order by Price Desc;

commit;

 


