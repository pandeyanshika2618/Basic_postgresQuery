-- Create Departments Table
CREATE TABLE Departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Create Clients Table
CREATE TABLE Clients (
    client_id SERIAL PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Projects Table
CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    client_id INT REFERENCES Clients(client_id)
);

-- Create Employees Table
CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    hire_date DATE NOT NULL,
    department_id INT REFERENCES Departments(department_id),
    project_id INT REFERENCES Projects(project_id)
);

-- Create Salaries Table
CREATE TABLE Salaries (
    salary_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES Employees(employee_id),
    amount DECIMAL(10, 2) NOT NULL,
    effective_date DATE NOT NULL
);

-- Insert Departments
INSERT INTO Departments (department_name) VALUES 
('Software Development'),
('Marketing'),
('Human Resources'),
('Sales'),
('Customer Support'),
('Research and Development'),
('Finance'),
('Legal'),
('Product Management'),
('IT Support'),
('Business Analysis'),
('Operations'),
('Training and Development'),
('Quality Assurance'),
('Project Management'),
('Design'),
('Data Science'),
('Cybersecurity'),
('Cloud Computing'),
('AI and Machine Learning');

-- Insert Clients
INSERT INTO Clients (client_name, contact_email) VALUES 
('Tata Consultancy Services', 'contact@tcs.com'),
('Infosys', 'info@infosys.com'),
('Wipro', 'contact@wipro.com'),
('HCL Technologies', 'contact@hcltech.com'),
('Tech Mahindra', 'support@techmahindra.com'),
('Capgemini', 'contact@capgemini.com'),
('L&T Infotech', 'info@lntinfotech.com'),
('Cognizant', 'support@cognizant.com'),
('Hewlett Packard Enterprise', 'contact@hpe.com'),
('Oracle', 'oracle.support@oracle.com'),
('SAP', 'contact@sap.com'),
('IBM', 'support@ibm.com'),
('Microsoft', 'contact@microsoft.com'),
('Google', 'info@google.com'),
('Amazon', 'support@amazon.com'),
('Facebook', 'contact@facebook.com'),
('Twitter', 'support@twitter.com'),
('LinkedIn', 'info@linkedin.com'),
('Adobe', 'contact@adobe.com'),
('Salesforce', 'support@salesforce.com');

-- Insert Projects
INSERT INTO Projects (project_name, client_id) VALUES 
('Project Alpha', 1),
('Project Beta', 2),
('Project Gamma', 3),
('Project Delta', 4),
('Project Epsilon', 5),
('Project F', 6),
('Project G', 7),
('Project H', 8),
('Project I', 9),
('Project J', 10),
('Project K', 11),
('Project L', 12),
('Project M', 13),
('Project N', 14),
('Project O', 15),
('Project P', 16),
('Project Q', 17),
('Project R', 18),
('Project S', 19),
('Project T', 20),
('Project U', 1);

-- Insert Employees
INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date, department_id, project_id) VALUES 
('Amit', 'Sharma', 'amit.sharma@techcompany.in', '9876543210', '2023-01-15', 1, 1),
('Sneha', 'Patel', 'sneha.patel@techcompany.in', '9876543211', '2022-07-10', 2, 2),
('Raj', 'Singh', 'raj.singh@techcompany.in', '9876543212', '2021-03-22', 3, 3),
('Priya', 'Gupta', 'priya.gupta@techcompany.in', '9876543213', '2023-04-05', 4, 4),
('Ravi', 'Kumar', 'ravi.kumar@techcompany.in', '9876543214', '2020-11-30', 5, 5),
('Meera', 'Kumar', 'meera.kumar@techcompany.in', '9876543220', '2022-01-10', 6, 6),
('Arjun', 'Reddy', 'arjun.reddy@techcompany.in', '9876543221', '2021-06-15', 7, 7),
('Nina', 'Menon', 'nina.menon@techcompany.in', '9876543222', '2020-09-01', 8, 8),
('Deepak', 'Chopra', 'deepak.chopra@techcompany.in', '9876543223', '2019-11-20', 9, 9),
('Aarti', 'Sharma', 'aarti.sharma@techcompany.in', '9876543224', '2018-05-30', 10, 10),
('Kiran', 'Jain', 'kiran.jain@techcompany.in', '9876543225', '2023-02-01', 11, 11),
('Rita', 'Verma', 'rita.verma@techcompany.in', '9876543226', '2023-03-15', 12, 12),
('Sandeep', 'Gupta', 'sandeep.gupta@techcompany.in', '9876543227', '2022-10-10', 13, 13),
('Neha', 'Singh', 'neha.singh@techcompany.in', '9876543228', '2022-12-25', 14, 14),
('Rohan', 'Patel', 'rohan.patel@techcompany.in', '9876543229', '2021-08-05', 15, 15),
('Amit', 'Rao', 'amit.rao@techcompany.in', '9876543230', '2021-12-01', 16, 16),
('Pooja', 'Joshi', 'pooja.joshi@techcompany.in', '9876543231', '2020-11-15', 17, 17),
('Vikram', 'Nair', 'vikram.nair@techcompany.in', '9876543232', '2022-05-25', 18, 18),
('Nisha', 'Iyer', 'nisha.iyer@techcompany.in', '9876543233', '2021-09-12', 19, 19),
('Siddharth', 'Kumar', 'siddharth.kumar@techcompany.in', '9876543234', '2019-06-10', 20, 20),
('Gaurav', 'Mehta', 'gaurav.mehta@techcompany.in', '9876543235', '2022-04-19', 1, 1),
('Simran', 'Singh', 'simran.singh@techcompany.in', '9876543236', '2022-03-30', 2, 2),
('Harshit', 'Patel', 'harshit.patel@techcompany.in', '9876543237', '2021-08-22', 3, 3),
('Ayesha', 'Reddy', 'ayesha.reddy@techcompany.in', '9876543238', '2020-12-15', 4, 4),
('Kartik', 'Sharma', 'kartik.sharma@techcompany.in', '9876543239', '2019-02-20', 5, 5),
('Kartik', 'Sharma', 'kartik.sharma@techcompany.in', '9876543239', '2019-02-20', 41, 41);

-- Insert Salaries
INSERT INTO Salaries (employee_id, amount, effective_date) VALUES 
(1, 75000.00, '2024-07-01'),
(2, 65000.00, '2024-07-01'),
(3, 70000.00, '2024-07-01'),
(4, 72000.00, '2024-07-01'),
(5, 68000.00, '2024-07-01'),
(6, 76000.00, '2024-07-01'),
(7, 67000.00, '2024-07-01'),
(8, 69000.00, '2024-07-01'),
(9, 71000.00, '2024-07-01'),
(10, 73000.00, '2024-07-01'),
(11, 74000.00, '2024-07-01'),
(12, 75000.00, '2024-07-01'),
(13, 76000.00, '2024-07-01'),
(14, 77000.00, '2024-07-01'),
(15, 78000.00, '2024-07-01'),
(16, 79000.00, '2024-07-01'),
(17, 80000.00, '2024-07-01'),
(18, 81000.00, '2024-07-01'),
(19, 82000.00, '2024-07-01'),
(20, 83000.00, '2024-07-01');

-- List the names of employees along with their department names.
SELECT first_name ,last_name , department_name from  Employees
	JOIN departments 
	ON Employees.department_id = departments.department_id;

-- Retrieve all projects and the names of their clients. Include projects even if they don't have an associated client.
SELECT project_id , client_name ,project_name from projects 
LEFT JOIN   clients
ON projects.client_id = clients.client_id;

-- Get a list of employees who are working on the project named "Project Alpha". Include their first name, last name, and department name.
SELECT first_name , last_name  ,department_Name ,project_name 
	from Employees
JOIN projects ON Employees.project_id = projects.project_id 
JOIN  departments ON Employees.department_id = Employees.department_id 
where project_name = 'Project Alpha';

-- Get a list of all employees along with their salary amounts.
SELECT first_name ,last_name , email , amount from Employees 
JOIN  Salaries 
ON Employees.employee_id = Salaries.employee_id;

-- Show the names of departments and the names of employees working in each department.
SELECT department_name , first_name ,last_name
from  Departments 
INNER JOIN Employees
ON Employees.department_id = Departments.department_id ;

-- Find the total number of projects associated with each client.
SELECT client_name , count(project_id) AS Total_NoOfProjects
FROM Clients 
LEFT JOIN Projects ON Clients.client_id = Projects.client_id 
GROUP BY client_name ;

-- Find the names of departments and the average salary of employees in each department.
SELECT department_name ,AVG(amount) AS Average_Salary 
FROM Departments 
LEFT JOIN Employees ON Departments.department_id =  Employees.department_id 
LEFT JOIN Salaries ON Employees.employee_id = Salaries.employee_id
GROUP BY department_name ;

-- Retrieve the names of all clients who have at least one project and the names of those projects.
SELECT client_name 
	FROM Clients JOIN 
Projects ON Clients.client_id =  Projects.client_id 
	GROUP BY client_name 
	HAVING (count(project_id) >1);
-- Retrieve all departments and the number of employees in each department
SELECT  department_name , count(employee_id ) AS  Total_NoOf_Employee
	FROM Departments
LEFT JOIN  employees ON Departments.department_id = Employees.department_id 
	GROUP BY department_name;