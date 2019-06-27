CREATE TABLE deposit_histories (
  id serial PRIMARY KEY,
  date datetime,
  bank_account_id int REFERENCES bank_accounts,
  trading_id int REFERENCES tradings
);
