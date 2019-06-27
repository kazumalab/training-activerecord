CREATE TABLE payment_methods (
  id SERIAL PRIMARY KEY,
  payment_method varchar(64) NOT NULL UNIQUE
);
