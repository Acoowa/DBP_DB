-- Показать работников у которых нет почты или почта не в корпоративном домене (домен dualbootpartners.com)
SELECT *
FROM Employee
WHERE email IS NULL
   OR NOT (email LIKE '%dualbootpartners.com');

-- Получить список работников нанятых в последние 30 дней
SELECT *
FROM Employee
WHERE hire_date >= CURRENT_DATE - INTERVAL '30 days';

-- Найти максимальную и минимальную зарплату по каждому департаменту
SELECT Department.name AS department_name,
       MAX(salary)      AS max_salary,
       MIN(salary)      AS min_salary
FROM Employee
         JOIN Department
              ON Employee.department_id = Department.id
GROUP BY department_name;

-- Посчитать количество работников в каждом регионе
SELECT Region.name        AS region_name,
       COUNT(employee.id) AS employee_count
FROM Employee,
     Department,
     Location,
     Region
WHERE Region.id = Location.region_id
  AND Location.id = Department.location_id
  AND Department.id = Employee.department_id
GROUP BY Region.name;

-- Показать сотрудников у которых фамилия длиннее 5 символов
SELECT *
FROM Employee
WHERE LENGTH(last_name) > 5;

-- Показать сотрудников с зарплатой выше средней по всей компании
SELECT *
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);