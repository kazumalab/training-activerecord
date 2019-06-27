CREATE TABLE paid_histories (
  id serial PRIMARY KEY,
  paid_date timestamp,
  place_id int REFERENCES places,
  trading_id int REFERENCES tradings,
  payment_method_id int REFERENCES payment_methods
);
