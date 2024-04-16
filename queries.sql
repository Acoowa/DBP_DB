-- Показать работников у которых нет почты или почта не в корпоративном домене (домен dualbootpartners.com)
SELECT * FROM Employees 
WHERE email IS NULL or NOT (email LIKE '%dualbootpartners.com');

-- Получить список работников нанятых в последние 30 дней
SELECT * FROM Employees
WHERE hire_date >= current_date - interval '30 days';

-- Найти максимальную и минимальную зарплату по каждому департаменту
SELECT
    Departments.name as department_name, 
    MAX(salary) AS max_salary, 
    MIN(salary) AS min_salary
FROM Employees
JOIN Departments
ON Employees.department_id = Departments.id
GROUP BY department_name;

-- Посчитать количество работников в каждом регионе
SELECT 
    Regions.name as region_name,
    COUNT(employees.id) as employee_count
FROM
    Employees,
    Departments,
    Locations,
    Regions
WHERE
    Regions.id = Locations.region_id
    AND Locations.id = Departments.location_id
    AND Departments.id = Employees.department_id
GROUP BY Regions.name;

-- Показать сотрудников у которых фамилия длиннее 5 символов
SELECT *
FROM Employees
WHERE LENGTH(last_name) > 5;

-- Показать сотрудников с зарплатой выше средней по всей компании
SELECT *
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);