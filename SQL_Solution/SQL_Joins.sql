/*�������� ��������� ������*/

select * from employees;/*������� ���������� id � employee_name */
select * from salary;/*������ � ����������  id � monhly_salary*/
select * from employee_salary;/*������� �������� ���������� ����� ������� employees � salary*/
select * from roles;/**/
select * from roles_employee;/**/

drop table city;
drop table Persons; 

/* 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.*/

select employee_name , monhly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

/*2. ������� ���� ���������� � ������� �� ������ 2000.*/
select employee_name , monhly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monhly_salary < 2000;

/*3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select employee_name , monhly_salary
from employee_salary
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null;


/*4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select distinct  employee_name, monhly_salary
from employee_salary
left join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary_id 
where monhly_salary < 2000 and employee_name is null;

/* 5. ����� ���� ���������� ���� �� ��������� ��.*/

select distinct  employee_name, monhly_salary
from employee_salary
left join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary_id 
where employee_name is null;

/*6. ������� ���� ���������� � ���������� �� ���������.*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 

/*7. ������� ����� � ��������� ������ Java �������������.*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Java Devoloper';

 /*��� ��� � ��� ���� � JS ������������.������� � JS */
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%JavaScript Devoloper';

/*������� c ������� Java � Js ������������� */
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Java%';

/* 8. ������� ����� � ��������� ������ Python �������������.*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Python Devoloper'

/*9. ������� ����� � ��������� ���� QA ���������.*/

select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';


/*10. ������� ����� � ��������� ������ QA ���������.*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Manual QA%';


/*11. ������� ����� � ��������� ��������������� QA*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Automation QA%';

/*12. ������� ����� � �������� Junior ������������*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Junior%';

/*13. ������� ����� � �������� Middle ������������*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Middle%';

/*14. ������� ����� � �������� Senior ������������*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Senior%';

/*15. ������� �������� Java �������������*/

select role_name,monhly_salary  from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Java Devoloper%';

/* 16. ������� �������� Python �������������*/

select role_name,monhly_salary  from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Python Devoloper%';

/*17. ������� ����� � �������� Junior Python �������������*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Junior Python Devoloper%';

/*18. ������� ����� � �������� Middle JS �������������*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Middle JavaScript Devoloper%';

/*19. ������� ����� � �������� Senior Java �������������*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Senior Java Devoloper%';


/*20. ������� �������� Junior QA ���������*/

select role_name,monhly_salary  from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Junior Manual QA%';

/*21. ������� ������� �������� ���� Junior ������������*/

select AVG(monhly_salary) from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Junior%'



/*22. ������� ����� ������� JS �������������*/

select Sum(monhly_salary) from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%JavaScript Devoloper%';

/*23. ������� ����������� �� QA ���������*/

select Min(monhly_salary)
from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%QA engineer%';


/*24. ������� ������������ �� QA ���������*/

select Max(monhly_salary) 
from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%QA engineer%';

/*select max(monhly_salary)
from roles_employee re 
join roles r on re.id = r.id 
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%QA engineer%';*/

/*26. ������� ���������� Middle ������������.*/

select Count(employee_name) 
from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id  
where role_name Like '%Middle%';



/*27. ������� ���������� �������������*/

select Count(employee_name) 
from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id  
where role_name Like '%Devoloper%';

/*28. ������� ���� (�����) �������� �������������.*/

select sum(monhly_salary)
from roles_employee
join roles on roles_employee.id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Devoloper%';


/* 29. ������� �����, ��������� � �� ���� ������������ �� �����������*/

select employee_name , role_name , monhly_salary
from roles_employee re 
left join employees e on re.employee_id = e.id 
left join roles r on re.role_id = r.id 
left join employee_salary es on re.employee_id = es.employee_id 
left join salary s on es.salary_id = s.id 
order by monhly_salary;


/*30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300*/
select employee_name, role_name, monhly_salary
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id 
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
where monhly_salary between 1700 and 2300
order by monhly_salary;


/*31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300*/

select employee_name, role_name, monhly_salary
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id 
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
where monhly_salary < 2300
order by monhly_salary;

/*32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000*/

select employee_name, role_name, monhly_salary
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id 
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
where monhly_salary in (1100 , 1500, 2000)
order by monhly_salary;
