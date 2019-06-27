CREATE TABLE pay_accounts (
  id SERIAL PRIMARY KEY,
  user_id int REFERENCES users
);
