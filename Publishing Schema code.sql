CREATE TABLE agency (
  name text PRIMARY KEY,
  address text
);

CREATE TABLE agent (
  name text PRIMARY KEY,
  agency_name text REFERENCES agency(name)
);

CREATE TABLE author (
  name text PRIMARY KEY,
  bio text,
  agent_name text REFERENCES agent(name)
);

CREATE TABLE publisher (
  name text PRIMARY KEY
);

CREATE TABLE book(
  isbn bigint PRIMARY KEY,
  title text,
  publisher_name text REFERENCES publisher(name),
  price money
);

CREATE TABLE authors_books(
  author_name text REFERENCES author(name),
  book_isbn bigint REFERENCES book(isbn),
  PRIMARY KEY (author_name, book_isbn)
);

CREATE TABLE imprint (
  name text PRIMARY KEY,
  genre text,
  age_range text,
  publisher_name text REFERENCES publisher(name)
);

CREATE TABLE editor (
  name text PRIMARY KEY,
  imprint_name text REFERENCES imprint(name)
);
