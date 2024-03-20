CREATE DATABASE company;
USE company;
CREATE TABLE departments (
 id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
 `name` VARCHAR(40) NOT NULL,
Department_Name VARCHAR(40) NOT NULL

)

CREATE TABLE employees (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	`name` VARCHAR(40) NOT NULL,
	DepartmentID INT NOT NULL
	
	 
);

INSERT into departments (`name`, Department_Name) VALUES ("Engineering", "Engineering"),("Teaching", "Teaching"),("HR", "HR");

INSERT into employees (`name`, DepartmentID, salary) VALUES ("Jair", 1, 1.1),("David", 2, 1.2),("Henry", 3, 1.3);

ALTER table employees
ADD COLUMN salary float NOT NULL;

ALTER TABLE employees
add FOREIGN KEY (DepartmentID) REFERENCES departments(id)
ON DELETE CASCADE;

SELECT * FROM employees ORDER BY `name` ASC;
SELECT * FROM departments;
SELECT * FROM employees;

DELETE FROM departments;

SELECT employees.name, employees.salary, departments.name AS department FROM departments JOIN employees ON departments.id = employees.DepartmentID;
-- use 'd' and 'e' as alias for 'departments' and 'employees'
SELECT e.name, e.salary, d.name AS department FROM departments d JOIN employees e ON d.id = e.DepartmentID;
