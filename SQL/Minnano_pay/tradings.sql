CREATE TABLE tradings (
  id SERIAL PRIMARY KEY,
  amount int,
  pay_account_id int REFERENCES pay_accounts,
  transfer_type_id int REFERENCES transfer_types
);
