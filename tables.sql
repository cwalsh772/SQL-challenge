CREATE TABLE departments(dept_no VARCHAR PRIMARY KEY NOT NULL, dept_name VARCHAR(255) NOT NULL);

CREATE TABLE employees(emp_no INTEGER PRIMARY KEY NOT NULL, birth_date DATE, 
first_name VARCHAR(255), last_name VARCHAR(255), gender VARCHAR(255), hire_date DATE);

CREATE TABLE dept_emp(id SERIAL PRIMARY KEY, emp_no INT NOT NULL, dept_no VARCHAR NOT NULL, 
from_date DATE, to_date DATE,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no));

CREATE TABLE dept_manager(id SERIAL PRIMARY KEY, dept_no VARCHAR NOT NULL, emp_no INT NOT NULL,
from_date DATE, to_date DATE,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no));

CREATE TABLE salaries(id SERIAL PRIMARY KEY, emp_no INT NOT NULL, salary INT, from_date DATE, 
to_date DATE,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no));

CREATE TABLE titles(id SERIAL PRIMARY KEY, emp_no INT NOT NULL, title VARCHAR(255), 
from_date DATE, to_date DATE,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no));