DROP TABLE student;
CREATE TABLE student(
    student_Id  INT  PRIMARY KEY,
    name  VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
);
DESCRIBE student;
ALTER TABLE student ADD GPA DECIMAL(3,2);
DROP TABLE student;
ALTER TABLE student ADD school VARCHAR(20);
ALTER TABLE student DROP gpa;
SELECT * FROM student;
INSERT INTO student VALUES(2, 'Professor Smalla', 'Computer science', 'Kirinyaga', 4.6 );
INSERT INTO student(student_Id, name, major, GPA) VALUES(5, 'Ian', 'Cyber security', 4.5);
INSERT INTO student(student_Id, name, major, school) VALUES(6, 'Ian', 'Cyber security', 'kirinyaga');
INSERT INTO student VALUES(9, 'Professor Smalla', 'Computer Engineering', 'Kirinyaga', 7.6 );


CREATE TABLE Students(
    student_Id  INT,
    name  VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_Id)
);

SELECT * FROM Student;
INSERT INTO Students VALUES(2, 'Professor Smalla', 'Computer science', 'Kirinyaga', 4.6 );
INSERT INTO Students(student_Id, name, major, GPA) VALUES(5, 'Ian', 'Cyber security', 4.5);
INSERT INTO Students(student_Id, name, major, school) VALUES(6, 'Ian', 'Cyber security', 'kirinyaga');
INSERT INTO Students VALUES(9, 'Professor Smalla', 'Computer Engineering', 'Kirinyaga', 7.6 );