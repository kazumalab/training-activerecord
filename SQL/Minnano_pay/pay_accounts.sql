CREATE TABLE pay_accounts (
  id int PRIMARY KEY,
  user_id int REFERENCES users
);
