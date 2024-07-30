
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


CREATE OR REPLACE PROCEDURE add_employee(
    p_first_name VARCHAR,
    p_last_name VARCHAR,
    p_department_id INT,
    p_hire_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees (first_name, last_name, department_id, hire_date)
    VALUES (p_first_name, p_last_name, p_department_id, p_hire_date);
END;
$$;


CALL add_employee('Rahul', 'Dev', 1, '2024-05-30');
 SELECT * FROM employees;
