-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7mP2SM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "id" INT   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "employees" (
    "employee_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "department_id" INT   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "employee_id"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_department_id" FOREIGN KEY("department_id")
REFERENCES "departments" ("id");

