CREATE TABLE deposit_histories (
  id serial PRIMARY KEY,
  deposit_date timestamp,
  bank_account_id int REFERENCES bank_accounts,
  trading_id int REFERENCES tradings
);
