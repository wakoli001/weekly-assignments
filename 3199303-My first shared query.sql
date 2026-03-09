DROP TABLE student;
CREATE TABLE student(
    student_Id  INT  PRIMARY KEY AUTO_INCREMENT,
    name  VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE DEFAULT 'Undecided',
);
DESCRIBE student;
ALTER TABLE student ADD GPA DECIMAL(3,2);
DROP TABLE student;
ALTER TABLE student ADD school VARCHAR(20);
ALTER TABLE student DROP gpa;
SELECT * FROM student;
INSERT INTO student VALUES( 'Professor Smalla', 'Computer science', 'Kirinyaga', 4.6 );
INSERT INTO student(student_Id, name, major, GPA) VALUES( 'Ian', 'Cyber security', 4.5);
INSERT INTO student(student_Id, name, major, school) VALUES( 'Ian', 'Cyber security', 'kirinyaga');
INSERT INTO student VALUES( 'Professor Smalla', 'Computer Engineering', 'Kirinyaga', 7.6 );

DROP TABLE Students;

CREATE TABLE Students(
    student_Id  INT AUTO_INCREMENT,
    name  VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_Id)
);

ALTER TABLE Students ADD school VARCHAR(20);
ALTER TABLE Students ADD GPA DECIMAL(3,2);

SELECT * FROM Students;
INSERT INTO Students VALUES( 1, 'Professor Smalla', 'Computer science', 'Kirinyaga', 4.6 );
INSERT INTO Students(student_Id, name, major, GPA) VALUES( 'Ian', 'Cyber Technician', 4.5);
INSERT INTO Students(student_Id, name, major, school) VALUES( 'Ian', 'Cyber security', 'kirinyaga');
INSERT INTO Students VALUES( 'Professor Smalla', 'Computer Engineering', 'Kirinyaga', 7.6 );