-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/zUT9kc
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Dept_No" num   NOT NULL,
    "Dept_Name" str   NOT NULL
);

CREATE TABLE "Employees" (
    "Emp_No" num   NOT NULL,
    "Emp_Title_ID" num   NOT NULL,
    "Birth_Date" date   NOT NULL,
    "First_Name" text   NOT NULL,
    "Last_Name" text   NOT NULL,
    "Sex" str   NOT NULL,
    "Hire_Date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Department_Manager" (
    "Dept_No" int   NOT NULL,
    "Emp_No" int   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_No" int   NOT NULL,
    "Salary" num   NOT NULL
);

CREATE TABLE "Titles" (
    "Title_ID" num   NOT NULL,
    "Title" text   NOT NULL
);

CREATE TABLE "Department_Employees" (
    "Emp_No" num   NOT NULL,
    "Dept_No" num   NOT NULL
);

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Department_Employees" ("Dept_No");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Department_Employees" ("Emp_No");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_Title_ID" FOREIGN KEY("Emp_Title_ID")
REFERENCES "Titles" ("Title_ID");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Department_Employees" ("Emp_No");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Salaries" ("Emp_No");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Department_Manager" ("Dept_No");

