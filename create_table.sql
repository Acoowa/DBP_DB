-- Create regions table
CREATE TABLE Regions
(
    id   serial PRIMARY KEY,
    name VARCHAR
);

-- Create locations tale
CREATE TABLE Locations
(
    id        serial PRIMARY KEY,
    name      VARCHAR,
    address   VARCHAR,
    region_id INTEGER REFERENCES Regions (id)
);

-- Create Departments table

CREATE TABLE Departments
(
    id          serial PRIMARY KEY,
    name        VARCHAR,
    location_id INTEGER REFERENCES Locations (id),
    manager_id  INTEGER
);

--Create employees table
CREATE TABLE Employees
(
    id            serial PRIMARY KEY,
    name          VARCHAR,
    last_name     VARCHAR,
    hire_date     DATE,
    salary        INTEGER,
    email         VARCHAR,
    manager_id    INTEGER REFERENCES Employees (id),
    department_id INTEGER REFERENCES Departments (id)
);