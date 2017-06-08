DROP TABLE visits;
DROP TABLE users;
DROP TABLE locations;

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE locations (
  id SERIAL4 PRIMARY KEY,
  category VARCHAR(255),
  name VARCHAR(255)
);

CREATE TABLE visists (
id serial4 primary key,
user_id INT4 REFERENCES user(id) ON DELETE CASCADE
locations(id) 
review TEXT
);