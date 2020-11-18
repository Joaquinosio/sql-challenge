-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE data_titles (
    emp_no int   NOT NULL,
    title VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

CREATE TABLE data_employees (
    emp_no int   NOT NULL,
    bith_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_data_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE data_departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_data_departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE data_dept_empt (
    emp_no int   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

CREATE TABLE data_dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no int   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

CREATE TABLE data_employees (
    emp_no int   NOT NULL,
    bith_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_data_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE data_salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);



ALTER TABLE data_dept_empt ADD CONSTRAINT fk_data_dept_empt_emp_no FOREIGN KEY(emp_no)
REFERENCES data_employees (emp_no);

ALTER TABLE data_dept_empt ADD CONSTRAINT fk_data_dept_empt_dept_no FOREIGN KEY(dept_no)
REFERENCES data_departments (dept_no);

ALTER TABLE data_dept_manager ADD CONSTRAINT fk_data_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES data_departments (dept_no);

ALTER TABLE data_dept_manager ADD CONSTRAINT fk_data_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES data_employees (emp_no);

ALTER TABLE data_salaries ADD CONSTRAINT fk_data_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES data_employees (emp_no);

ALTER TABLE data_titles ADD CONSTRAINT fk_data_titles_emp_no FOREIGN KEY(emp_no)
REFERENCES data_employees (emp_no);

