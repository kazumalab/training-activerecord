CREATE TABLE follows (
  id SERIAL PRIMARY KEY,
  user_id int REFERENCES users,
  following_user_id int REFERENCES users
);
