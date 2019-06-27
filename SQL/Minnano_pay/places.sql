CREATE TABLE places (
  id SERIAL PRIMARY KEY,
  name varchar(64) NOT NULL,
  tel varchar(64) NOT NULL UNIQUE,
  address varchar(64) NOT NULL UNIQUE
);
