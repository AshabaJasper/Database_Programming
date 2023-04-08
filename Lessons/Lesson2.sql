-- BASIC COMMANDS


-- This creates a new database called mydatabase
CREATE DATABASE mydatabase;

-- This selects the mydatabase database for use
USE mydatabase;

-- This creates a new table called mytable with three columns: id, name, and age
CREATE TABLE mytable (
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  age INT 
);   

-- This inserts a new row into mytable with values for id, name, and age
INSERT INTO mytable (id, name, age) VALUES (1, 'John', 30);

-- This updates the age column for the row with id 1 in mytable
UPDATE mytable SET age = 35 WHERE id = 1;

-- This deletes the row with id 1 from mytable
DELETE FROM mytable WHERE id = 1;

-- This selects all rows from mytable and displays them in the console
SELECT * FROM mytable;
  
-- This selects only the rows from mytable where the age column is greater than 25 and displays them in the console
SELECT * FROM mytable WHERE age > 25;
 
-- This selects the name and age columns from mytable and displays them in the console, ordered by age in descending order
SELECT name, age FROM mytable ORDER BY age DESC;

-- This drops (deletes) the mytable table from the database
DROP TABLE mytable;

-- This drops (deletes) the mydatabase database
DROP DATABASE mydatabase;
