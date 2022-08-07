������� employees

/*1)������� ������� employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null*/

create table employees(
id serial primary key,
employee_name VARCHAR(50) not null 
);

/*2)��������� ������� employee 70 ��������*/

insert into employees(employee_name)
VALUES ('Andrey'),
       ('Anna'),
       ('Anton'),
       ('Alina'),
       ('Aleksey'),
       ('Boris'),
       ('Artem'),
       ('Tatyana'),
       ('Sergey'),
       ('Valentina'),
       ('Olga'),
       ('Vadim'),
       ('Vlada'),
       ('Vladislav'),
       ('Gleb'),
       ('Daniil'),
       ('Svetlana'),
       ('Albert'),
       ('Aleksandr'),
       ('Vladimir'),
       ('Eugene'),
       ('Stanislav'),
       ('Yuri'),
       ('Roman'),
       ('Fedor'),
       ('Nikolay'),
       ('Stepan'),
       ('Egor'),
       ('Denis'),
       ('Nikita'),
       ('Semen'),
       ('Anatoliy'),
       ('Lev'),
       ('Platon'),
       ('Kirill'),
       ('Pavel'),
       ('Konstantin'),
       ('Oleg'),
       ('Viktor'),
       ('Innokentiy'),
       ('Miron'),
       ('Nikolay'),
       ('Matvey'),
       ('Ruslan'),
       ('Vasiliy'),
       ('Maksim'),
       ('Mark'),
       ('Alla'),
       ('Angelina'),
       ('Zoya'),
       ('Inga'),
       ('Antonina'),
       ('Inna'),
       ('Varvara'),
       ('Karina'),
       ('Oksana'),
       ('Polina'),
       ('Galina'),
       ('Rada'),
       ('Miroslava'),
       ('Yakov'),
       ('Georgiy'),
       ('Zlata'),
       ('Kira'),
       ('Svetlana'),
       ('Yana'),
       ('Nina'),
       ('Vera'),
       ('Nadezhda'),
       ('Lubov');
  
      ������� salary

/*3)������� ������� salary
- id. Serial  primary key,
- monthly_salary. Int, not null*/
     
 create table salary(
id serial primary key,
monhly_salary int not null 
); 

/*4)��������� ������� salary 15 ��������:*/

insert into salary(monhly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400);

/*������� employee_salary

5)������� ������� employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null*/
	
 create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
); 

/*6)��������� ������� employee_salary 40 ��������:
- � 10 ����� �� 40 �������� �������������� employee_id*/

insert into employee_salary(employee_id,salary_id)
VALUES 	(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
		(11,11),
		(12,12),
		(13,13),
		(14,14),
		(15,15),
		(16,4),	
		(17,6),
		(18,9),
		(19,10),
		(20,13),
		(21,15),
		(22,3),
		(23,2),
		(24,4),
		(25,14),
		(26,9),
		(27,8),
		(28,7),
		(29,5),
		(30,12),
		(71,1),
		(72,2),
		(73,4),
		(74,5),
		(75,7),
		(76,8),
		(77,9),
		(78,15),
		(79,14),
		(85,3); 
	
	
/*������� roles

7)C������ ������� roles
- id. Serial  primary key,
- role_name. int, not null, unique*/
	
CREATE TABLE roles(
id serial primary key,
role_name INT NOT NULL UNIQUE
);

s
/*8)�������� ��� ������ role_name � int �� varchar(30)*/

ALTER TABLE roles
alter  role_name TYPE VARCHAR(30);


/*9)��������� ������� roles 20 ��������:*/	

INSERT INTO roles(role_name)
VALUES 	('Junior Python Devoloper'),
		('Middle Python Devoloper'),
		('Senior Python Devoloper'),
		('Junior Java Devoloper'),
		('Middle Java Devoloper'),
		('Senior Java Devoloper'),
		('Junior JavaScript Devoloper'),
		('Middle JavaScript Devoloper'),
		('Senior JavaScript Devoloper'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');


/*10) ������� ������� roles_employee*/

CREATE TABLE roles_employee(
id serial primary key,
employee_id INT NOT NULL UNIQUE,
role_id INT NOT null,
foreign key(employee_id)
	references employees(id),
foreign key(role_id)
	references roles(id));

/*11)��������� ������� roles_employee 40 ��������:*/

INSERT INTO roles_employee (employee_id,role_id)
values	(2,7),
	      (20,4),
	      (3,9),
	      (5,13),
	      (23,4),
	      (11,2),
	      (10,9),
	      (22,13),
	      (21,3),
	      (34,4),
	      (6,7),
	      (40,5),
	      (47,15),
	      (53,2),
	      (33,3),
	      (38,4),
	      (15,15),
	      (66,4),
	      (31,8),
	      (51,1),
	      (52,16),
	      (27,5),
	      (29,10),
	      (26,11),
	      (67,13),
	      (69,9),
	      (14,14),
	      (28,2),
	      (36,10),
	      (35,2),
	      (63,7),
	      (17,11),
	      (19,8),
	      (1,15),
	      (49,2),
	      (59,13),
	      (18,5),
	      (13,1),
	      (64,7),
	      (12,4);





      