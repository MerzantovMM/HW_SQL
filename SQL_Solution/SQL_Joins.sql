/*Проверки созданных таблиц*/

select * from employees;/*Таблица работников id и employee_name */
select * from salary;/*аблица с зарплатами  id и monhly_salary*/
select * from employee_salary;/*Таблица зарплаты работников связь таблицы employees и salary*/
select * from roles;/**/
select * from roles_employee;/**/

drop table city;
drop table Persons; 

/* 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.*/

select employee_name , monhly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

/*2. Вывести всех работников у которых ЗП меньше 2000.*/
select employee_name , monhly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monhly_salary < 2000;

/*3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
select employee_name , monhly_salary
from employee_salary
left join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employee_name is null;


/*4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
select distinct  employee_name, monhly_salary
from employee_salary
left join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary_id 
where monhly_salary < 2000 and employee_name is null;

/* 5. Найти всех работников кому не начислена ЗП.*/

select distinct  employee_name, monhly_salary
from employee_salary
left join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary_id 
where employee_name is null;

/*6. Вывести всех работников с названиями их должности.*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 

/*7. Вывести имена и должность только Java разработчиков.*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Java Devoloper';

 /*Так как у нас есть и JS разработчики.Варивнт с JS */
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%JavaScript Devoloper';

/*Варивнт c выводом Java и Js разработчиков */
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Java%';

/* 8. Вывести имена и должность только Python разработчиков.*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Python Devoloper'

/*9. Вывести имена и должность всех QA инженеров.*/

select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';


/*10. Вывести имена и должность ручных QA инженеров.*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Manual QA%';


/*11. Вывести имена и должность автоматизаторов QA*/
select employee_name, role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Automation QA%';

/*12. Вывести имена и зарплаты Junior специалистов*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Junior%';

/*13. Вывести имена и зарплаты Middle специалистов*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Middle%';

/*14. Вывести имена и зарплаты Senior специалистов*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Senior%';

/*15. Вывести зарплаты Java разработчиков*/

select role_name,monhly_salary  from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Java Devoloper%';

/* 16. Вывести зарплаты Python разработчиков*/

select role_name,monhly_salary  from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Python Devoloper%';

/*17. Вывести имена и зарплаты Junior Python разработчиков*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Junior Python Devoloper%';

/*18. Вывести имена и зарплаты Middle JS разработчиков*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Middle JavaScript Devoloper%';

/*19. Вывести имена и зарплаты Senior Java разработчиков*/

select employee_name ,role_name,monhly_salary  from employee_salary
join employees on employee_salary.employee_id = employees.id
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Senior Java Devoloper%';


/*20. Вывести зарплаты Junior QA инженеров*/

select role_name,monhly_salary  from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Junior Manual QA%';

/*21. Вывести среднюю зарплату всех Junior специалистов*/

select AVG(monhly_salary) from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%Junior%'



/*22. Вывести сумму зарплат JS разработчиков*/

select Sum(monhly_salary) from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%JavaScript Devoloper%';

/*23. Вывести минимальную ЗП QA инженеров*/

select Min(monhly_salary)
from employee_salary
join roles on employee_salary.salary_id  = roles.id 
join salary on employee_salary.salary_id = salary.id 
where role_name Like '%QA engineer%';


/*24. Вывести максимальную ЗП QA инженеров*/

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

/*26. Вывести количество Middle специалистов.*/

select Count(employee_name) 
from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id  
where role_name Like '%Middle%';



/*27. Вывести количество разработчиков*/

select Count(employee_name) 
from roles_employee
join roles on roles_employee.role_id = roles.id 
join employees on roles_employee.employee_id = employees.id  
where role_name Like '%Devoloper%';

/*28. Вывести фонд (сумму) зарплаты разработчиков.*/

select sum(monhly_salary)
from roles_employee
join roles on roles_employee.id = roles.id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Devoloper%';


/* 29. Вывести имена, должности и ЗП всех специалистов по возрастанию*/

select employee_name , role_name , monhly_salary
from roles_employee re 
left join employees e on re.employee_id = e.id 
left join roles r on re.role_id = r.id 
left join employee_salary es on re.employee_id = es.employee_id 
left join salary s on es.salary_id = s.id 
order by monhly_salary;


/*30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300*/
select employee_name, role_name, monhly_salary
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id 
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
where monhly_salary between 1700 and 2300
order by monhly_salary;


/*31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300*/

select employee_name, role_name, monhly_salary
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id 
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
where monhly_salary < 2300
order by monhly_salary;

/*32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000*/

select employee_name, role_name, monhly_salary
from roles_employee re 
join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id 
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
where monhly_salary in (1100 , 1500, 2000)
order by monhly_salary;
