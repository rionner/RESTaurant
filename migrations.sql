CREATE DATABASE  restaurant;
\c restaurant;

CREATE TABLE parties (id SERIAL PRIMARY KEY, table_num INTEGER);

CREATE TABLE foods (id SERIAL PRIMARY KEY, name VARCHAR(255), description TEXT, cents INTEGER, vegan BOOLEAN);

CREATE TABLE orders (id SERIAL PRIMARY KEY, parties_id INTEGER REFERENCES parties(id), foods_id INTEGER REFERENCES foods(id), is_paid BOOLEAN);
