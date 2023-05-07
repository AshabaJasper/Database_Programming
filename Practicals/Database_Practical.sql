-- create database
CREATE DATABASE ucu_results;
  
-- switch to the new database
USE ucu_results;
 
-- create students table
CREATE TABLE students (
  id INT NOT NULL AUTO_INCREMENT, -- unique identifier for each student
  name VARCHAR(50) NOT NULL, -- name of the student
  date_of_birth DATE NOT NULL, -- date of birth of the student
  PRIMARY KEY (id) -- set id as the primary key
);

-- create grades table
CREATE TABLE grades (
  id INT NOT NULL AUTO_INCREMENT, -- unique identifier for each grade
  student_id INT NOT NULL, -- id of the student who received the grade
  subject VARCHAR(50) NOT NULL, -- subject of the grade
  grade INT NOT NULL, -- numeric grade
  PRIMARY KEY (id), -- set id as the primary key
  FOREIGN KEY (student_id) REFERENCES students(id) -- set student_id as a foreign key referencing the students table
);

-- select all columns from the "students" table
SELECT * FROM students;

-- alter the "grades" table to add a column "teacher" of data type varchar(50)
ALTER TABLE grades ADD COLUMN teacher VARCHAR(50);

-- update the "grades" table to set the value of the "teacher" column to "Mr. Smith" for all rows
UPDATE grades SET teacher = 'Mr. Smith';

-- delete all rows from the "grades" table where the grade is less than 60
DELETE FROM grades WHERE grade < 60;

-- drop the "grades" table
DROP TABLE grades;

-- insert a new row into the students table with values for "name" and "date_of_birth"
INSERT INTO students (name, date_of_birth) VALUES ('John Doe', '2001-01-01');

-- select all rows from the "students" table where the "name" column contains the string "John"
SELECT * FROM students WHERE name LIKE '%John%';

-- select all rows from the "students" table where the "date of birth" column is between “2000-01-01' and 2010-12-31', ordered by the "name" column in descending order
SELECT * FROM students WHERE date_of_birth BETWEEN '2000-01-01' AND '2010-12-31' ORDER BY name DESC;

-- select all rows from the "grades" table where the "subject" column contains the string "Math"
SELECT * FROM grades WHERE subject LIKE '%Math%';

-- set the "id" column of the "students" table as the primary key
ALTER TABLE students ADD PRIMARY KEY (id);

-- set the "student_id" column of the "grades" table as the foreign key referencing the "id" column of the "students" table
ALTER TABLE grades ADD FOREIGN KEY (student_id) REFERENCES students(id);

-- use a join to select the "name" and "subject" columns from the "students" and "grades" tables respectively, where the "grade" column in the "grades" table is greater than or equal to 80, using an equal join
SELECT students.name, grades.subject FROM students JOIN grades ON students.id = grades.student_id WHERE grade >= 80;

-- use a join to select the "name" and "subject" columns from the "students" and "grades" tables respectively, where the "grade" column in the "grades" table is less than 60, using a left outer join
SELECT students.name, grades.subject FROM students LEFT JOIN grades ON students.id = grades.student_id WHERE grade < 60;

-- use a join to select the "name" and "subject" columns from the "students" and "grades" tables respectively, where the "subject" column in the "grades" table contains the string "Science".
SELECT students.name, grades.subject
FROM students
NATURAL JOIN grades
WHERE grades.subject LIKE '%Science%';

--Use a cross join to select the "name" and "subject" columns from the "students" and "grades" tables respectively, where the "grade" column in the "grades" table is greater than or equal to 80.
SELECT students.name, grades.subject
FROM students
CROSS JOIN grades
WHERE grades.grade >= 80;

--Use all the above features to retrieve the name, subject, and grade of all students who have a grade of 80 or higher in a subject that contains the string "Math", and whose date of birth is between "2000-01-01" and "2010-12-31", ordered by the "name" column in ascending order.
SELECT students.name, grades.subject, grades.grade
FROM students
INNER JOIN grades ON students.id = grades.student_id
WHERE grades.grade >= 80
AND grades.subject LIKE '%Math%'
AND students.date_of_birth BETWEEN '2000-01-01' AND '2010-12-31'
ORDER BY students.name ASC;
