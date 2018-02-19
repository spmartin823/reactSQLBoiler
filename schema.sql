-- this is the model
DROP DATABASE IF EXISTS react_sql_boiler;

CREATE DATABASE react_sql_boiler;

USE react_sql_boiler;

CREATE TABLE sample (
	sample_id int NOT NULL AUTO_INCREMENT, 
	name varchar(255) NOT NULL, 
	PRIMARY KEY (sample_id)
);

CREATE TABLE another_table (
  id int NOT NULL AUTO_INCREMENT,
  date date,
  sample_id int,
  FOREIGN KEY (sample_id) REFERENCES sample(sample_id), 
  PRIMARY KEY (id)
);



-- to start the db in mysql, use the following command: 
-- mysql -u <USER> < schema.sql

-- this is just some sample data that will be created everytime that the db is 
-- restarted using the above 
INSERT INTO sample (name) VALUES ("none");
INSERT INTO another_table (sample_id) VALUES (1);

