-- Create regions table
CREATE TABLE Region
(
    id   serial PRIMARY KEY,
    name VARCHAR
);

-- Create locations tale
CREATE TABLE Location
(
    id        serial PRIMARY KEY,
    name      VARCHAR,
    address   VARCHAR,
    region_id INTEGER REFERENCES Region (id)
);

-- Create Departments table

CREATE TABLE Department
(
    id          serial PRIMARY KEY,
    name        VARCHAR,
    location_id INTEGER REFERENCES Location (id),
    manager_id  INTEGER
);

--Create employees table
CREATE TABLE Employee
(
    id            serial PRIMARY KEY,
    name          VARCHAR,
    last_name     VARCHAR,
    hire_date     DATE,
    salary        INTEGER,
    email         VARCHAR,
    manager_id    INTEGER REFERENCES Employee (id),
    department_id INTEGER REFERENCES Department (id)
);