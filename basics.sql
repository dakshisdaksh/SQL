CREATE TABLE student(
student_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
major VARCHAR(20) UNIQUE,
);
DROP TABLE student

SELECT name,major FROM student;

SELECT * FROM student; //select every column from student table


DESCRIBE student;

INSERT INTO student VALUES(1, 'jack', 'biology');
INSERT INTO student VALUES

UPDATE student SET major = 'Bio' WHERE major= 'biology'

Not Equal to <>

Update and Delete

UPDATE student SET major = 'Bio' WHERE major = 'biology' AND WHERE major = 'chemistry';

SELECT * FROM student
ORDER BY student_id DESC
LIMIT 2;

SELECT name FROM student
ORDER by student_id DESC 
WHERE major IN ('Biology' , 'Chemistry');

CREATE TABLE branch (
branch_id INT PRIMARY KEY,
branch_name VARCHAR(40),
mgr_id INT,
mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

ALTER TABLE employee 
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

CREATE TABLE works_with (
emp_id INT,
client_id INT,
total_sales INT,
PRIMARY KEY(emp_id, client_id),
FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
FOREIGN KEY(emp_id) REFERENCES client(client_id) ON DELETE CASCADE,
);

INSERT into employee VALUES(100, 'David', 'Wallace', '1967-11-17',

INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-02' );

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employee VALUES(101, 'Jan' , 'Levinson' , '1961-05-11', 'F' , 110000, 100, 1);
INSERT INTO 

SELECT * from EMPLOYEES;

SELECT * FROM works_with;

SELECT first_name AS forename, last_name AS surname FROM employee;
SELECT COUNT(emp_id) FROM EMPLOYEE;

SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

WILDCARDS:
% any number of charachters
_ 1 charachter

SELECT * FROM client WHERE client_name LIKE '%LLC';

SELECT * FROM employee WHERE birth_date LIKE '____-02%'

SELECT first_name FROM employee
UNION
SELECT branch_name FROM branch;
