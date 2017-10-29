CREATE TABLE departments
( 
  department_id int NOT NULL,
  department_name char(50) NOT NULL,
  CONSTRAINT departments_pk PRIMARY KEY (department_id)
);

INSERT into departments values(1,'Account');
INSERT into departments values(2,'HR');
INSERT into departments values(3,'Marketing');

CREATE TABLE employees
( employee_number int NOT NULL,
  employee_name char(50) NOT NULL,
  department_id int,
  salary int,
  CONSTRAINT employees_pk PRIMARY KEY (employee_number),
  CONSTRAINT fk_departments
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);

INSERT into employees values(1,'Bolt',1,1000);
INSERT into employees values(2,'Harris',2,2000);
INSERT into employees values(3,'Dominic',3,3000);
INSERT into employees values(4,'Francis',3,4000);
INSERT into employees values(5,'Tommy',2,5000);
INSERT into employees values(6,'Andrew',2,1000);
