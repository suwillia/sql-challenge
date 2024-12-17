DROP TABLE IF EXISTS titles ;
CREATE TABLE titles(
	title_id VARCHAR(20) NOT NULL PRIMARY KEY,
	title VARCHAR (256) NOT NULL);

	DROP TABLE IF EXISTS employees ;
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id  VARCHAR (20) NOT NULL,
	birth_date DATE  NOT NULL,
	first_name VARCHAR (256) NOT NULL,
	last_name VARCHAR(256) NOT NULL,
	sex CHAR(1) NOT NULL ,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

DROP TABLE IF EXISTS departments ;
CREATE TABLE departments (
dept_no VARCHAR (20) NOT NULL PRIMARY KEY,
dept_name VARCHAR (256) NOT NULL
);


DROP TABLE IF EXISTS dept_manager ;
CREATE TABLE dept_manager (
	dept_no VARCHAR (20) NOT NULL ,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no )
	);

DROP TABLE IF EXISTS dept_emp ;
CREATE TABLE dept_emp (
	emp_no INT NOT NULL ,
	dept_no VARCHAR (20) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no )
	);
DROP TABLE IF EXISTS salaries ;
CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

	