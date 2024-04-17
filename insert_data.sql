INSERT INTO Regions (name)
VALUES ('USA'),
       ('Australia'),
       ('UK');

INSERT INTO Locations (name, address, region_id)
VALUES ('13th Street', 'New York', 1),
       ('6 Metrotech Center', 'New York', 1),
       ('37 Saggers Road', 'Lake Biddy', 2),
       ('743 High Street', 'West London', 3),
       ('93 Main Street', 'TRURO', 3);

INSERT INTO Departments (name, location_id)
VALUES ('Backend', 2),
       ('Frontend', 1),
       ('UI/UX', 3),
       ('Database', 4);

INSERT INTO Employees (name, last_name, hire_date, salary, email, department_id)
VALUES ('John', 'Doe', '2023-02-14', 2000, 'John.doe@gmail.com', 1),
       ('Jane', 'Doe', '2024-04-01', 3000, 'Jane.doe@gmail.com', 1),
       ('Abdirahman', 'Patterson', '2024-02-10', 3000, 'Abdirahman.pat@gmail.com', 2),
       ('Hermione', 'Tanner', '2024-03-24', 5000, 'Hermione.tanner@dualbootpartners.com', 4),
       ('Bruce', 'Wayne', '2024-03-15', 10000, 'Bruce.wayne@dualbootpartners.com', 3);


