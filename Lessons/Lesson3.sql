-- CREATING TABLES

CREATE TABLE mytable (
  id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  phone VARCHAR(20),
  address VARCHAR(100),
  city VARCHAR(50),
  country VARCHAR(50),
  PRIMARY KEY (id)
);
 
/*  This creates a table called "mytable" with 8 columns:  
    "id", "first_name", "last_name", "email", "phone", "address", "city", and "country".
    The "id" column is defined as an integer and set as the primary key.
    the "first_name" and "last_name" columns are defined as strings with a maximum length of 50 characters,
    and the "email", "phone", "address", "city", and "country"  columns are 
    defined as strings with a maximum length of 50, 20, 100, 50, and 50 characters respectively. 
    The "NOT NULL" constraint is used to ensure that values are always provided for the "id", "first_name", and "last_name" columns  . 