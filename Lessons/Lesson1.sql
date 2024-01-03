-- INTRO
--Resrtucture SQL Lessons on Tuesday
-- double dashes (--) are used to indicate comments in SQL code. The comments are not actually executed by the SQL engine,
-- but can be used to explain what the code does or provide other useful information.

-- This creates a new database called myfirstDB
CREATE DATABASE myfirstDB;

-- This selects the myfirstDB database for use
USE myfirstDB;
   
-- This drops (deletes) the myfirstDB database
DROP DATABASE myfirstDB;

-- This sets the myfirstDB database to read-only mode, preventing any changes
ALTER DATABASE myfirstDB READ ONLY = 1;
   
-- This sets the myfirstDB database back to read-write mode, allowing changes again
ALTER DATABASE myfirstDB READ ONLY = 0;

  
  
