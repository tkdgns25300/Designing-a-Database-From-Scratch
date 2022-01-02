CREATE TABLE users (
	id integer PRIMARY KEY,
	full_name varchar(30),
	email varchar(50),
	created_at date,
	country_code integer REFERENCES countries (code)
);

CREATE TABLE orders (
	id integer PRIMARY KEY,
	user_id integer REFERENCES users (id),
	created_at date
);

CREATE TABLE items (
	id integer PRIMARY KEY,
	order_id REFERENCES orders (id)
);

CREATE TABLE countries (
	code integer PRIMARY KEY,
	name varchar(20),
	continent_name varchar(20)
);