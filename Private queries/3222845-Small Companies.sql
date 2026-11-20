CREATE TABLE Employee(
    emp_Id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    birth_day DATE,
    sex VARCHAR(10) NOT NULL,
    super_Id INT,
    branch_Id INT
);

DROP TABLE Employee;

CREATE TABLE branch(
    FOREIGN KEY(mngr_Id)    REFERENCES  Employee (emp_Id) ON DELETE SET NULL,
    branch_Id INT,
    branch_name VARCHAR(30) NOT NULL,
    mngr_start_date DATE
);



ALTER TABLE Employee
 ADD COLUMN supervisor_Id INT;
ALTER TABLE Employee 
 ADD CONSTRAINT fk_supervisor 
 FOREIGN KEY(super_Id)  
 REFERENCES Employee(emp_Id) 
 ON DELETE SET NULL;


 

CREATE TABLE Client(
    client_Id INT,
    client_name VARCHAR(30),
    branc_Id INT,
    FOREIGN KEY(branch_Id) REFERENCES branch(branch_Id) ON DELETE SET NULL
);