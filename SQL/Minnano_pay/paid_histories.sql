CREATE TABLE paid_histories (
  id int PRIMARY KEY,
  date datetime,
  place_id int REFERENCES places,
  trading_id int REFERENCES tradings,
  payment_method varchar(64) REFERENCES payment_methods
);
