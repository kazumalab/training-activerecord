CREATE TABLE follows (
  id int PRIMARY KEY,
  user_id int REFERENCES users,
  following_user_id int REFERENCES users
);
