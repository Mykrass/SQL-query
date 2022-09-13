drop table payments;
create table payments(
devtodevid int,
date text,
level int,
transaction_id int,
transaction_name text,
amount_in_usd float,
status int,
created text,
tester bool,
cheat bool,
appversion text
);
