CREATE TABLE receive_histories (
  id serial PRIMARY KEY,
  date datetime,
  user_id int REFERENCES users,
  following_user_id int REFERENCES users,
  trading_id int REFERENCES tradings
);
