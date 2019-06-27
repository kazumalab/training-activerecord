CREATE TABLE send_histories (
  id int,
  date datetime,
  user_id int REFERENCES users,
  following_user_id int REFERENCES users,
  trading_id int REFERENCES tradings
);
