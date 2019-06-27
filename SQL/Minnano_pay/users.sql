CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name varchar(64) NOT NULL,
  tel varchar(64) NOT NULL UNIQUE,
  email varchar(64) NOT NULL UNIQUE
);
