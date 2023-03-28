create table salary(
     id serial primary key,
     monthly_salary int not null 
);

select * from salary;

create table roles (
id serial primary key,
role_title varchar(50) unique not null
);

create table roles_salary (
id serial primary key,
role_id int not null,
salary_id int not null,
foreign key (role_id)
     references roles(id),
foreign key (salary_id)   
     references salary(id)
);

select * from roles_salary;
select * from roles;
select * from salary;

insert into roles_salary (role_id, salary_id)
values  (1,1),
    (2,2),
    (3,6),
    (4,2),
    (5,4);

alter table roles
add column parking int;

alter table roles
rename column parking to taxi;

alter table roles
drop column taxi;

insert into salary(monthly_salary)
values (1000),
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
       (2400),
       (2500);
      
update salary
set monthly_salary = 5000
where id = 11;

delete from salary
where id = 18;
      
insert into roles(role_title)
values ('QA_Manual_junior'),
('QA_Manual_middle'),
('QA_Manual_senior'),
('Java_developer_junior'),
('Java_developer_middle'),
('Java_developer_senior');


create table employees(
     id serial primary key,
     employee_name varchar(50) not null 
);

insert into employees (employee_name)
values ('Edward Thomas'),
('Erica Jones'),
('Mary Blair'),
('Thomas Williamson'),
('Cheryl Stewart'),
('Jason Dixon'),
('Miguel Myers'),
('Jennifer Carlson'),
('Kimberly Harris'),
('Howard Williams'),
('Edwin Smith'),
('Frances Morrison'),
('Christine Brown'),
('Kelly Hunt'),
('Mary Arnold'),
('Julia Stewart'),
('Shannon Leonard'),
('William Poole'),
('Dennis Sandoval'),
('Wilma Simmons'),
('Denise Brown'),
('Carla Rogers'),
('Patrick Hayes'),
('Shirley Howard'),
('Robert Martin'),
('Jacob Simpson'),
('Michael Payne'),
('Joseph Gonzalez'),
('Glenn Adams'),
('Gertrude Cummings'),
('Stephen Hamilton'),
('Allen Stanley'),
('Charles Reyes'),
('Lester Barrett'),
('Harold Long'),
('Andrew McDonald'),
('Julie Nichols'),
('Charles Weber'),
('Richard Cannon'),
('Darren Bass'),
('Heidi King'),
('Anthony Howell'),
('Travis Williams'),
('Christina Hernandez'),
('Dorothy Lynch'),
('Walter Hill'),
('Lynn Matthews'),
('Ethel Mitchell'),
('Jose Davis'),
('Larry Hall'),
('Mary Baker'),
('Paul Flores'),
('Katie Jones'),
('Christopher Lynch'),
('Russell King'),
('Neil Mitchell'),
('Christopher Lee'),
('Carrie Lewis'),
('Denise Ramos'),
('Timothy Wilson'),
('Janet Sanders'),
('Maria Curry'),
('Anthony Davis'),
('Barry Manning'),
('Pamela Porter'),
('Colleen Sullivan'),
('Edward Gonzalez'),
('Kevin Simmons'),
('Edna Ortiz'),
('Stanley Fowler');

select * from employees ;

create table salary_1(
     id serial primary key,
     monthly_salary int not null 
);

select * from salary_1 ;

insert into salary_1(monthly_salary)
values (1000),
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
       (2400),
       (2500);
      
 create table employee_salary(
     id serial primary key,
     employee_id int not null unique,
     salary_id int not null
);

select * from employee_salary ;

insert into employee_salary(employee_id, salary_id )
values (1,1),
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
       (16,16),
       (17,17),
       (18,18),
       (19,19),
       (20,20),
       (21,21),
       (22,22),
       (23,23),
       (24,24),
       (25,25),
       (26,26),
       (27,27),
       (28,28),
       (29,29),
       (30,30),
       (31,41),
       (32,42),
       (33,43),
       (34,44),
       (35,45),
       (36,46),
       (37,47),
       (38,48),
       (39,49),
       (40,50);
       
 create table roles_1(
     id serial primary key,
     role_name int not null unique);

select * from roles_1 ;

alter table roles_1 alter column role_name varchar(30);

insert into employee_salary(employee_id, salary_id )
values (1,1);

select * from phones_apple 
where price <> all (select price from phones_samsung where price < 700)
order by price;

select * from phones_apple 
where price <> any (select price from phones_samsung where price < 700)
order by price;

select * from phones_apple;
select price from phones_samsung where price < 700;

select * from students;
select "name"  from students;
select id from students;
select email  from students;
select name, email, id, created_on from students;

select * from students
where password = '12333';

select * from students
where created_on  = '2021-03-26 00:00:00';

select * from students
where name  like  '%Anna%';

select * from students
where name  like  '%8';

select * from students
where name  like  '%a%';

select * from students
where created_on =  '2021-07-12 00:00:00';

select * from students
where created_on =  '2021-07-12 00:00:00' and "password" = '1m313' ;

select * from students
where created_on =  '2021-07-12 00:00:00' and "name" like  '%Andrey%' ;

select * from students
where created_on =  '2021-07-12 00:00:00' and "name" like  '%8%' ;

select * from students
where id  =  '110';

select * from students
where id  =  '153';

select * from students
where id  >  '140';

select * from students
where id  <  '130';

select * from students
where id  <  '127' or id = '188' ;

select * from students
where id  <=  '137';

select * from students
where id  >=  '130';

select * from students
where id  >  '180' and id < '190' ;

select *  from students
where password  in  ('12333', '1m313', '123313');

select *  from students
where created_on  in  ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

SELECT MIN(id) 
FROM students;

SELECT MAX(id) 
FROM students;

SELECT COUNT("name") 
FROM students;

SELECT id, name, created_on FROM students
ORDER BY created_on ASC;

SELECT id, name, created_on FROM students
ORDER BY created_on desc;

select * from employees ;
select * from salary_1;


----// 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.//
 
SELECT employees.employee_name, salary_1.monthly_salary
FROM employees
left JOIN salary_1 ON employees.id=salary_1.id;

----// 2. Вывести всех работников у которых ЗП меньше 2000.//
 
SELECT employees.employee_name, salary_1.monthly_salary
FROM employees
JOIN salary_1 ON employees.id=salary_1.id
where salary_1.monthly_salary < 2000;



SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id 
;

----//3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)//

SELECT  roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where roles_1.role_name is null and 
      salary_1.monthly_salary is not null ;

----//4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
     
SELECT  roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where roles_1.role_name is null 
and salary_1.monthly_salary is not null
and salary_1.monthly_salary < 2000;  

----// 5. Найти всех работников кому не начислена ЗП.

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where salary_1.monthly_salary is null ;

----// 6. Вывести всех работников с названиями их должности.
 
SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id ;

----//7. Вывести имена и должность только Java разработчиков.

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Java%' ;

----//  8. Вывести имена и должность только Python разработчиков.


SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Python%' ;

----//  9. Вывести имена и должность всех QA инженеров.
 
SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%QA%' ;

----//10. Вывести имена и должность ручных QA инженеров.
 
SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Manual QA%' ;

----//11. Вывести имена и должность автоматизаторов QA

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Automation QA%' ;

----// 12. Вывести имена и зарплаты Junior специалистов

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Junior%' ;

----// 13. Вывести имена и зарплаты Middle специалистов

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Middle%' ;

----// 14. Вывести имена и зарплаты Senior специалистов
 
SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Senior%' ;

----//15. Вывести зарплаты Java разработчиков

SELECT roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Java%' 
and salary_1.monthly_salary is not null;

----// 16. Вывести зарплаты Python разработчиков

SELECT roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Python%' 
and salary_1.monthly_salary is not null;

----// 17. Вывести имена и зарплаты Junior Python разработчиков

SELECT employees.employee_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Junior Python%' 
and salary_1.monthly_salary is not null;

----// 18. Вывести имена и зарплаты Middle JS разработчиков

SELECT employees.employee_name,  salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Middle JavaScript%' 
and salary_1.monthly_salary is not null;

----// 19. Вывести имена и зарплаты Senior Java разработчиков

SELECT employees.employee_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Senior JavaScript%' 
and salary_1.monthly_salary is not null;

----// 20. Вывести зарплаты Junior QA инженеров

SELECT roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Junior%QA%' 
and salary_1.monthly_salary is not null;

----// 21. Вывести среднюю зарплату всех Junior специалистов

SELECT AVG(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Junior%' 
and salary_1.monthly_salary is not null;

----// 22. Вывести сумму зарплат JS разработчиков

SELECT SUM(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%JavaScript%' 
and salary_1.monthly_salary is not null;

----// 23. Вывести минимальную ЗП QA инженеров

SELECT MIN(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%QA%' 
and salary_1.monthly_salary is not null;

----// 24. Вывести максимальную ЗП QA инженеров

SELECT MAX(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%QA%' 
and salary_1.monthly_salary is not null;

----// 25. Вывести количество QA инженеров

SELECT Count(roles_1.role_name)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%QA%' ;

----/ 26. Вывести количество Middle специалистов.

SELECT Count(roles_1.role_name)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Middle%';

----// 27. Вывести количество разработчиков
 
SELECT Count(roles_1.role_name)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id;

----//28. Вывести фонд (сумму) зарплаты разработчиков.

SELECT SUM(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id;

----// 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id 
ORDER BY salary_1.monthly_salary ASC;

----// 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where salary_1.monthly_salary > 1700 and salary_1.monthly_salary < 2300
ORDER BY salary_1.monthly_salary ASC;

----// 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where salary_1.monthly_salary < 2300
ORDER BY salary_1.monthly_salary ASC;

----// 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500,2000/

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where salary_1.monthly_salary = 1100 or salary_1.monthly_salary = 1500 or salary_1.monthly_salary = 2000
ORDER BY salary_1.monthly_salary ASC;


