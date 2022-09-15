drop table AdImpression;
create table AdImpression (
devtodev_id int,
date int,
level int,
placement text,
network text,
unit text,
source text, 
revenue float,
install_date int,
isTester bool,
cheat bool,
app_version text);

\COPY AdImpression(
devtodev_id,
date,
level,
placement,
network,
unit,
source, 
revenue,
install_date,
isTester,
cheat,
app_version
  ) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/AdImpression.csv'
DELIMITER ';' CSV HEADER;

ALTER TABLE AdImpression ALTER COLUMN date TYPE DATE USING to_timestamp(date);
ALTER TABLE AdImpression ALTER COLUMN install_date TYPE DATE USING to_timestamp(install_date);



drop table GameSessions;
create table GameSessions (
devtodev_id int,
time int,
count int,
avg_duration int,
isTester bool,
cheat bool,
level int,
install_date int,
app_version text);

\COPY GameSessions (
devtodev_id,
time,
count,
avg_duration,
isTester,
cheat,
level,
install_date,
app_version
  ) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/GameSessions.csv'
DELIMITER ';' CSV HEADER;

ALTER TABLE GameSessions ALTER COLUMN time TYPE DATE USING to_timestamp(time);
ALTER TABLE GameSessions ALTER COLUMN install_date TYPE DATE USING to_timestamp(install_date);



drop table Payments;
create table Payments (
devtodev_id int,
date int,
level int,
transaction_id text,
transaction_name text,
amount_in_usd float,
status int,
install_date int,
isTester bool,
cheat bool,
app_version text
);

\COPY Payments(
devtodev_id,
date,
level,
transaction_id,
transaction_name,
amount_in_usd,
status,
install_date,
isTester,
cheat,
app_version
  ) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/Payments.csv'
DELIMITER ';' CSV HEADER;
  
ALTER TABLE Payments ALTER COLUMN date TYPE DATE USING to_timestamp(date);
ALTER TABLE Payments ALTER COLUMN install_date TYPE DATE USING to_timestamp(install_date);

  
  
