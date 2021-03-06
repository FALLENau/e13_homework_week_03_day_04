DROP TABLE zombies;
DROP TABLE victims;
DROP TABLE bitings;
​
CREATE TABLE zombies
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  type VARCHAR(255)
);
​
CREATE TABLE victims
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  run_speed INT2
);
​
CREATE TABLE bitings
(
  id SERIAL8 PRIMARY KEY,
  victim_id INT8 REFERENCES victims(id),
  zombie_id INT8 REFERENCES zombies(id),
  infected_on DATE NOT NULL
);
​
INSERT INTO victims (name, run_speed) VALUES ('Eugene', 12);
INSERT INTO victims (name, run_speed) VALUES ('Jamie',11);
INSERT INTO victims (name, run_speed) VALUES ('Victoria',15);
INSERT INTO victims (name, run_speed) VALUES ('Glen',30);
​
INSERT INTO zombies (name, type) VALUES ('Jarrod', 'crawler');
INSERT INTO zombies (name, type) VALUES ('Sandy', 'runner');
INSERT INTO zombies (name, type) VALUES ('Darren', 'witch');
INSERT INTO zombies (name, type) VALUES ('Tony', 'tank');
​
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (1, 1, 'May 27 2017');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (2, 2,'May 29 2017');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (4, 3, 'May 30 2017');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (1, 3, 'May 30 2017');