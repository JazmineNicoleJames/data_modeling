-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE airline (id SERIAL PRIMARY KEY, airline_name TEXT NOT NULL);

INSERT INTO airline (airline_name) VALUES 
 ('United'),
 ('British Airways'),
 ('Delta'),
 ('TUI Fly Belgium'),
 ('Air China'),
 ('American Airlines'),
 ('Avianca Brasil');

CREATE TABLE cities (id SERIAL PRIMARY KEY, city_name TEXT NOT NULL);

INSERT INTO cities (city_name) VALUES 
 ('Washington DC'),
 ('Los Angeles'),
 ('Seattle'),
 ('Paris'),
 ('Dubai'),
 ('New York'),
 ('Cedar Rapids'),
 ('Charlotte'),
 ('Sao Paolo'),
 ('London'), 
 ('Las Vegas'),
 ('Mexico City'),
 ('Casablanca'),
 ('Beijing'),
 ('Chicago'),
 ('New Orleans'), 
 ('Santiago'),
 ('Tokyo');

CREATE TABLE countries (id SERIAL PRIMARY KEY, country_name TEXT NOT NULL);


INSERT INTO countries (country_name) VALUES 
('United States'),
('Japan'),
('United Kingdom'),
('Mexico'),
('Morocco'),
('France'),
('UAE'),
('China'),
('Brazil'),
('Chile');

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline TEXT NOT NULL,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL
);

INSERT INTO tickets
  (first_name, last_name, seat, departure, arrival, airline, from_city, from_country, to_city, to_country)
VALUES
  ('Jennifer', 'Finch', '33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00', 1, 1, 1, 3, 1),
  ('Thadeus', 'Gathercoal', '8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00', 2, 18, 2, 10, 3),
  ('Sonja', 'Pauley', '12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00', 3, 2, 1, 11, 1),
  ('Jennifer', 'Finch', '20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00', 3, 3, 1, 12, 4),
  ('Waneta', 'Skeleton', '23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00', 4, 4, 6, 13, 5),
  ('Thadeus', 'Gathercoal', '18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00', 5, 5, 7, 14, 8),
  ('Berkie', 'Wycliff', '9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00', 1, 6, 1, 8, 1),
  ('Alvin', 'Leathes', '1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00', 6, 7, 1, 15, 1),
  ('Berkie', 'Wycliff', '32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00', 6, 8, 1, 16, 1),
  ('Cory', 'Squibbes', '10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00', 7, 9, 9, 17, 10);




