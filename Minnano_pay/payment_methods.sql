CREATE TABLE payment_methods (
  id int PRIMARY KEY,
  payment_method varchar(64) NOT NULL UNIQUE
);
