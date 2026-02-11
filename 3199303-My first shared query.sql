CREATE TABLE student(
    student_Id  INT  PRIMARY KEY,
    name  VARCHAR(20),
    major VARCHAR(20)
);
DESCRIBE student;
ALTER TABLE student ADD GPA DECIMAL(3,2);
DROP TABLE student;
ALTER TABLE student ADD school VARCHAR(20);
ALTER TABLE student DROP gpa;

INSERT INTO student VALUES(1, 'Wangila', 'Biology', 'Kirinyaga',);