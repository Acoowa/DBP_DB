-- Create regions table
CREATE TABLE Regions (
    id serial PRIMARY KEY,
    name VARCHAR
);

-- Create locations tale
CREATE TABLE Locations (
    id serial PRIMARY KEY,
    name VARCHAR,
    adress VARCHAR,
    region_id INTEGER,

    FOREIGN KEY (region_id) REFERENCES Regions (id)
);

-- Create Departments table

CREATE TABLE Departments (
    id serial PRIMARY KEY,
    name VARCHAR,
    location_id INTEGER,
    manager_id INTEGER,

    FOREIGN KEY (location_id) REFERENCES Locations (id)
);

--Create employees table
CREATE TABLE Employees (
    id serial PRIMARY KEY,
    name VARCHAR,
    last_name VARCHAR,
    hire_date DATE,
    salary INTEGER,
    email VARCHAR,
    manager_id INTEGER,
    department_id INTEGER,

    FOREIGN KEY (manager_id) REFERENCES Employees (id),
    FOREIGN KEY (department_id) REFERENCES Departments (id)
);