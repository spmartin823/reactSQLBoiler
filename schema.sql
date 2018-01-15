-- this is the model
DROP DATABASE IF EXISTS reactSQLBoiler;

CREATE DATABASE reactSQLBoiler;

USE reactSQLBoiler;

CREATE TABLE sample (
	sample_id int NOT NULL AUTO_INCREMENT, 
	name varchar(255) NOT NULL, 
	PRIMARY KEY (sample_id)
);

CREATE TABLE anotherTable (
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
INSERT INTO anotherTable (sample_id) VALUES (1);

