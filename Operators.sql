
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments(department_id),
    hire_date DATE NOT NULL
);

INSERT INTO departments (department_name)
VALUES
('HR'),
('Engineering'),
('Marketing');


INSERT INTO employees (first_name, last_name, department_id, hire_date) VALUES
('Anjali', 'Singh', 1, '2024-01-10'),
('riya', 'Sinha', 2, '2024-02-15'),
('Divya', 'singh', 2, '2024-03-20'),
('Rohan', 'kumar', 3, '2024-04-25');




CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments(department_id),
    hire_date DATE NOT NULL
);

INSERT INTO departments (department_name)
VALUES
('HR'),
('Engineering'),
('Marketing');


INSERT INTO employees (first_name, last_name, department_id, hire_date) VALUES
('Anjali', 'Singh', 1, '2024-01-10'),
('riya', 'Sinha', 2, '2024-02-15'),
('Divya', 'singh', 2, '2024-03-20'),
('Rohan', 'kumar', 3, '2024-04-25');




CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments(department_id),
    hire_date DATE NOT NULL
);

INSERT INTO departments (department_name)
VALUES
('HR'),
('Engineering'),
('Marketing');


INSERT INTO employees (first_name, last_name, department_id, hire_date) VALUES
('Anjali', 'Singh', 1, '2024-01-10'),
('riya', 'Sinha', 2, '2024-02-15'),
('Divya', 'singh', 2, '2024-03-20'),
('Rohan', 'kumar', 3, '2024-04-25');



SELECT first_name, last_name 
FROM employees
WHERE hire_date > '2024-02-15';

SELECT first_name, last_name 
FROM employees
WHERE department_id = 2;

SELECT first_name, last_name 
FROM employees
WHERE last_name LIKE 'S%';

SELECT first_name, last_name 
FROM employees
WHERE last_name = 'Singh' AND department_id = 2;

SELECT first_name, last_name 
FROM employees
WHERE hire_date BETWEEN '2024-01-01' AND '2024-03-31';
