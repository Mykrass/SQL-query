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
--ALTER TABLE AdImpression ALTER COLUMN install_date TYPE TIMESTAMP WITH TIME ZONE USING install_date::timestamptz;


