

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

SELECT employees.employee_name, salary_1.monthly_salary
FROM employees
left JOIN salary_1 ON employees.id=salary_1.id;

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

SELECT  roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where roles_1.role_name is null and 
      salary_1.monthly_salary is not null ;
     
SELECT  roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where roles_1.role_name is null 
and salary_1.monthly_salary is not null
and salary_1.monthly_salary < 2000;  

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where salary_1.monthly_salary is null ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Java%' ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Python%' ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%QA%' ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Manual QA%' ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Automation QA%' ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Junior%' ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Middle%' ;

SELECT  employees.employee_name, roles_1.role_name
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Senior%' ;

SELECT roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Java%' 
and salary_1.monthly_salary is not null;

SELECT roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Python%' 
and salary_1.monthly_salary is not null;

SELECT employees.employee_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Junior Python%' 
and salary_1.monthly_salary is not null;

SELECT employees.employee_name,  salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Middle JavaScript%' 
and salary_1.monthly_salary is not null;

SELECT employees.employee_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Senior JavaScript%' 
and salary_1.monthly_salary is not null;

SELECT roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Junior%QA%' 
and salary_1.monthly_salary is not null;

SELECT AVG(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Junior%' 
and salary_1.monthly_salary is not null
;

SELECT SUM(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%JavaScript%' 
and salary_1.monthly_salary is not null
;

SELECT MIN(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%QA%' 
and salary_1.monthly_salary is not null
;

SELECT MAX(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%QA%' 
and salary_1.monthly_salary is not null
;

SELECT Count(roles_1.role_name)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%QA%' 
;

SELECT Count(roles_1.role_name)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id
where roles_1.role_name like '%Middle%' 
;

SELECT Count(roles_1.role_name)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id;

SELECT SUM(salary_1.monthly_salary)
FROM employee_salary 
full outer JOIN employees ON employee_salary.employee_id=employees.id 
full outer JOIN roles_employee ON employees.id=roles_employee.employee_id 
full outer JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
full outer JOIN roles_1 ON roles_employee.role_id=roles_1.id;

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id 
ORDER BY salary_1.monthly_salary ASC;

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where salary_1.monthly_salary > 1700 and salary_1.monthly_salary < 2300
ORDER BY salary_1.monthly_salary ASC;

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where salary_1.monthly_salary < 2300
ORDER BY salary_1.monthly_salary ASC;

SELECT  employees.employee_name, roles_1.role_name, salary_1.monthly_salary
FROM employee_salary 
JOIN employees ON employee_salary.employee_id=employees.id 
JOIN roles_employee ON employees.id=roles_employee.employee_id 
JOIN salary_1 ON employee_salary.salary_id=salary_1.id 
JOIN roles_1 ON roles_employee.role_id=roles_1.id 
where salary_1.monthly_salary = 1100 or salary_1.monthly_salary = 1500 or salary_1.monthly_salary = 2000
ORDER BY salary_1.monthly_salary ASC;


