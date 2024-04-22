INSERT INTO Region (name)
VALUES ('USA'),
       ('Australia'),
       ('UK');

INSERT INTO Location (name, address, region_id)
VALUES ('13th Street', 'New York', (SELECT id FROM region WHERE name = 'USA')),
       ('6 Metrotech Center', 'New York', (SELECT id FROM region WHERE name = 'Australia')),
       ('37 Saggers Road', 'Lake Biddy', (SELECT id FROM region WHERE name = 'Australia')),
       ('743 High Street', 'West London', (SELECT id FROM region WHERE name = 'UK')),
       ('93 Main Street', 'TRURO', (SELECT id FROM region WHERE name = 'UK'));

INSERT INTO Department (name, location_id)
VALUES ('Backend', (SELECT id FROM location WHERE name = '13th Street')),
       ('Frontend', (SELECT id FROM location WHERE name = '6 Metrotech Cente')),
       ('UI/UX', (SELECT id FROM location WHERE name = '37 Saggers Road')),
       ('Database', (SELECT id FROM location WHERE name = '743 High Street'));

INSERT INTO Employee (name, last_name, hire_date, salary, email, department_id)
VALUES ('John', 'Doe', '2023-02-14', 2000, 'John.doe@gmail.com',
        (SELECT id FROM department WHERE name = 'Backend')),
       ('Jane', 'Doe', '2024-04-01', 3000, 'Jane.doe@gmail.com',
        (SELECT id FROM department WHERE name = 'Backend')),
       ('Abdirahman', 'Patterson', '2024-02-10', 3000, 'Abdirahman.pat@gmail.com',
        (SELECT id FROM department WHERE name = 'Frontend')),
       ('Hermione', 'Tanner', '2024-03-24', 5000, 'Hermione.tanner@dualbootpartners.com',
        (SELECT id FROM department WHERE name = 'UI/UX')),
       ('Bruce', 'Wayne', '2024-03-15', 10000, 'Bruce.wayne@dualbootpartners.com',
        (SELECT id FROM department WHERE name = 'Database'));


