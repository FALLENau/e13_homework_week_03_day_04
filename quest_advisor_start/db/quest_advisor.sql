DROP TABLE visits CASCADE;
DROP TABLE locations CASCADE;
DROP TABLE users CASCADE;

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE locations (
  id SERIAL4 PRIMARY KEY,
  category VARCHAR(255),
  name VARCHAR(255)
);

CREATE TABLE visits (
id serial4 primary key,
user_id INT4 REFERENCES users(id) ON DELETE CASCADE,
location_id INT4 REFERENCES locations(id) ON DELETE CASCADE,
review TEXT
);
