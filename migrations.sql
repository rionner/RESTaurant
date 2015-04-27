CREATE DATABASE  restaurant;
\c restaurant;

CREATE TABLE parties (id SERIAL PRIMARY KEY, table_num INTEGER, num_people INTEGER, paid BOOLEAN);

CREATE TABLE orders (id SERIAL PRIMARY KEY, parties_id INTEGER REFERENCES parties(id), total INTEGER);

CREATE TABLE foods (id SERIAL PRIMARY KEY, name VARCHAR(255), description TEXT, price INTEGER, vegan BOOLEAN,  orders_id INTEGER);
