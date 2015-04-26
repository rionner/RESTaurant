CREATE DATABASE  restaurant;
\c restaurant;

CREATE TABLE food (id SERIAL PRIMARY KEY, name VARCHAR(255), description TEXT, price INTEGER, vegan BOOLEAN);

CREATE TABLE party (id SERIAL PRIMARY KEY, table_num INTEGER, num_people INTEGER, paid BOOLEAN);

CREATE TABLE order (id SERIAL PRIMARY KEY, food_id INTEGER, party_id INTEGER, price INTEGER);
