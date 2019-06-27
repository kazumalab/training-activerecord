CREATE TABLE send_histories (
  id serial PRIMARY KEY,
  send_date timestamp,
  user_id int REFERENCES users,
  following_user_id int REFERENCES users,
  trading_id int REFERENCES tradings
);
