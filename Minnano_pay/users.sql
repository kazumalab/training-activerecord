CREATE TABLE users (
  id int PRIMARY KEY,
  name varchar(64) NOT NULL,
  tel varchar(64) NOT NULL UNIQUE,
  email varchar(64) NOT NULL UNIQUE
);
