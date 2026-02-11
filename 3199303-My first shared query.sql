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
SELECT * FROM student;
INSERT INTO student VALUES(2, 'Professor Smalla', 'Computer science', 'Kirinyaga', .6 );