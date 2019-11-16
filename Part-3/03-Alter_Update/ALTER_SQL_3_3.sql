CREATE TABLE "employees " (
    "employee_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "department_id" INT   NOT NULL);

ALTER TABLE "employees "
RENAME COLUMN department_id TO dept_id;


ALTER TABLE "employees " 
ADD annual_salary INT;

Select * from "employees ";