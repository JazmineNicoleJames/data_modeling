-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space


CREATE TABLE galaxies (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);


INSERT INTO galaxies 
  (name) 
VALUES
  ('Milky Way');


CREATE TABLE orbits_around (
  id SERIAL PRIMARY KEY,
  orbit_name TEXT NOT NULL);

INSERT INTO orbits_around 
(orbit_name) 
VALUES 
('The Sun'), ('Proxima Centauri'), ('Gliese 876');

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  moon_name TEXT NOT NULL
);  

INSERT INTO moons
  (moon_name)
VALUES
  ('The Moon'),
  ('Phobos'), 
  ('Deimos'),
  ('Naiad'), 
  ('Thalassa'), 
  ('Despina'), 
  ('Galatea'), 
  ('Larissa'), 
  ('S/2004 N 1'), 
  ('Proteus'), 
  ('Triton'), 
  ('Nereid'), 
  ('Halimede'), 
  ('Sao'), 
  ('Laomedeia'), 
  ('Psamathe'), 
  ('Neso');

CREATE TABLE planets(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around_id INTEGER REFERENCES orbits_around(id),
  galaxy_id INTEGER REFERENCES galaxies(id),
  moons_id INTEGER REFERENCES moons
);


INSERT INTO planets(
  name, orbital_period_in_years, orbits_around_id, galaxy_id, moons_id)
VALUES
  ('Earth', 1.00, 1, 1, 1),
  ('Mars', 1.88, 1, 1, 2),
  ('Venus', 0.62, 1, 1, NULL),
  ('Neptune', 164.8, 1, 1, 3),
  ('Proxima Centauri b', 0.03, 2, 1, NULL),
  ('Gliese 876 b', 0.23, 3, 1, NULL);




