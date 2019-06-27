# create tables

```
create table users(id serial PRIMARY KEY);

create table user_informations(id serial PRIMARY KEY);

create table payments(id serial PRIMARY KEY);

create table billings(id serial PRIMARY KEY);

create table friends(id serial PRIMARY KEY);

create table payment_types(id serial PRIMARY KEY);

create table user_types(id serial PRIMARY KEY);

create table banks(id serial PRIMARY KEY);

create table trades(id serial PRIMARY KEY);

create table trade_types(id serial PRIMARY KEY);
```

# add columns

// banks

```
Alter table banks
    add payment_type_id int NOT NULL REFERENCES payment_types(id), 
    add name varchar NOT NULL,
    add code varchar NOT NULL
;
```

// tables

```
Alter table trade_types 
	add name varchar NOT NULL
;
```

// payment_types

```
Alter table payment_types 
	add name varchar NOT NULL
;
```

// user_types

```
Alter table user_types 
	add name varchar NOT NULL
;
```

//users

```
ALTER TABLE users 
	ADD user_type_id int REFERENCES user_types(id), 
	ADD tell varchar NOT NULL, 
	ADD name varchar, ADD email varchar UNIQUE
;
```

// user_informations

```
ALTER TABLE user_informations 
	ADD user_id int NOT NULL REFERENCES users(id), 
	ADD is_tradeable bool NOT NULL, ADD address varchar
;
```

// billings

```
Alter table billings
    add user_id int NOT NULL REFERENCES users(id),
    add target_user_id int NOT NULL REFERENCES users(id),
    add amount int NOT NULL,
    add text varchar
;
```

// friends

```
Alter table friends 
  add following_id int NOT NULL REFERENCES users(id), 
  add followed_id int NOT NULL REFERENCES users(id)
;
```

// payments

```
ALTER TABLE payments 
	ADD user_id int NOT NULL REFERENCES users(id), 
	ADD payment_type_id int NOT NULL REFERENCES users(id), 
	ADD account_number varchar NOT NULL, ADD is_active bool NOT NULL
;
```

// trades

```
ALTER TABLE trades 
	ADD payment_id int NOT NULL REFERENCES payments(id), 
	ADD target_payment_id int NOT NULL REFERENCES payments(id), 
	ADD trade_type_id int NOT NULL REFERENCES trade_types(id), 
	ADD billing_id int REFERENCES billings(id), 
	ADD amount int NOT NULL, 
	ADD date timestamptz NOT NULL
;
```