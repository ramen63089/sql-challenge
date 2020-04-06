CREATE TABLE data_employees (
  emp_no INT NOT NULL PRIMARY KEY,
  birth_date DATE,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  gender VARCHAR NOT NULL,
  hire_date DATE
);

CREATE TABLE salaries (
  emp_no INT NOT NULL PRIMARY KEY,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

CREATE TABLE dept_manager (
  dept_no VARCHAR NOT NULL PRIMARY KEY,
  emp_no INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

CREATE TABLE departments (
  dept_no VARCHAR NOT NULL PRIMARY KEY,
  dept_name VARCHAR NOT NULL
);

CREATE TABLE data_titles (
  emp_no INT NOT NULL PRIMARY KEY,
  title VARCHAR NOT NULL,
  from_date DATE, 
  to_date DATE
);

CREATE TABLE dept_emp (
  emp_no INT NOT NULL  PRIMARY KEY,
  dept_no VARCHAR NOT NULL,
  from_date DATE, 
  to_date DATE
);

SELECT * FROM salaries;

