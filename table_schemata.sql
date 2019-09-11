CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date date,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender VARCHAR(1),
	hire_date date
	);

CREATE TABLE departments (
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255)
	);

CREATE TABLE dept_manager (
	manager_id SERIAL PRIMARY KEY,
	dept_no VARCHAR(255),
	emp_no INT,
	from_date date,
	to_date date,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	
CREATE TABLE dept_emp (
	dept_emp_no SERIAL PRIMARY KEY,
	emp_no INT,
	dept_no VARCHAR(255),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);
	
CREATE TABLE salaries (
	salary_id SERIAL PRIMARY KEY,
	emp_no INT,
	salary INT,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	
CREATE TABLE titles (
	title_id SERIAL PRIMARY KEY,
	emp_no INT,
	title VARCHAR(255),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);


