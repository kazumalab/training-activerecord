CREATE TABLE bank_accounts (
  id int PRIMARY KEY,
  bank_account_number varchar(64) NOT NULL,
  bank_name varchar(64) NOT NULL,
  pay_account_id int REFERENCES pay_accounts NOT NULL
);
