drop table payments;
create table payments (
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

\COPY payments(
devtodevid,
date,
level,
transaction_id,
transaction_name,
amount_in_usd,
status,
created,
tester,
cheat,
appversion
  ) FROM '/Users/mykras/Downloads/stepico_create_table_data/Payments.csv'
DELIMITER ';' CSV HEADER;
