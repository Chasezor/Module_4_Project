CREATE TABLE employee
(
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone VARCHAR(10),
    email VARCHAR(255),
    employee_id SERIAL PRIMARY KEY
);

CREATE TABLE recue
(
    location VARCHAR(255),
    recue_id SERIAL PRIMARY KEY,
    type VARCHAR(255),
    Found_by INT NOT NULL REFERENCES employee(employee_id),
    Time TIMESTAMP
);

CREATE TABLE animal
(
    type INT NOT NULL REFERENCES recue(type),
    bread VARCHAR(255),
    Weight NUMERIC,
    animal_id INT NOT NULL REFERENCES recue(recue_id),
    adopted BOOLEAN
);

CREATE TABLE customer
(
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone VARCHAR(10),
    email VARCHAR(255),
    customer_id SERIAL PRIMARY KEY,
    pet INT NOT NULL REFERENCES animal(animal_id)
);

CREATE TABLE adopted(
adopted INT NOT NULL REFERENCES animal(adopted),
animal INT NOT NULL REFERENCES animal(animal_id),
Time TIMESTAMP,
parent INT NOT NULL REFERENCES customer(first_name)
);