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

--ALTER TABLE AdImpression ALTER COLUMN date TYPE DATE USING to_timestamp(date);
--ALTER TABLE AdImpression ALTER COLUMN install_date TYPE DATE USING to_timestamp(install_date);
ALTER TABLE AdImpression ALTER COLUMN date TYPE timestamptz USING to_timestamp(date);
ALTER TABLE AdImpression ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);



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

--ALTER TABLE GameSessions ALTER COLUMN time TYPE DATE USING to_timestamp(time);
--ALTER TABLE GameSessions ALTER COLUMN install_date TYPE DATE USING to_timestamp(install_date);
ALTER TABLE GameSessions ALTER COLUMN time TYPE timestamptz USING to_timestamp(time);
ALTER TABLE GameSessions ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);



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
  
--ALTER TABLE Payments ALTER COLUMN date TYPE DATE USING to_timestamp(date);
--ALTER TABLE Payments ALTER COLUMN install_date TYPE DATE USING to_timestamp(install_date);
ALTER TABLE Payments ALTER COLUMN date TYPE timestamptz USING to_timestamp(date);
ALTER TABLE Payments ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);

  
  
drop table Users;
CREATE TABLE Users (
devtodev_id int,
main_id text,
created int,
paying bool,
cheater bool,
isTester bool,
level int,
app_version text,
first_app_version text,
language text,
country text,
device_manufacturer text,
device_name text,
crossplatform_user_id text,
channel text,
install_source  text,
user_agent text,
screen_resolution text,
os_version text,
advertising_id text,
udid text,
mac text,
odin text,  
android_id text,
serial text,
username text,
useremail text,  
userphoto text,
userphone text,
ad_campaign text,
time_zone_offset text,
os_version_dubl text,
segments text,
agency text,
keyword text,
placement text,
site text,
ad_group text,
ad text,
ab_test text,
testing_group text);
  
\COPY Users(
devtodev_id,
main_id,
created,
paying,
cheater,
isTester,
level,
app_version,
first_app_version,
language,
country,
device_manufacturer,
device_name,
crossplatform_user_id,
channel,
install_source,
user_agent,
screen_resolution,
os_version,
advertising_id,
udid,
mac,
odin,  
android_id,
serial,
username,
useremail,  
userphoto,
userphone,
ad_campaign,
time_zone_offset,
os_version_dubl,
segments,
agency,
keyword,
placement,
site,
ad_group,
ad,
ab_test,
testing_group
  ) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/Users.csv'
DELIMITER ';' CSV HEADER;

--ALTER TABLE Users ALTER COLUMN created TYPE DATE USING to_timestamp(created);
ALTER TABLE Users ALTER COLUMN created TYPE timestamptz USING to_timestamp(created);
ALTER TABLE Users DROP COLUMN install_source, 
                  DROP COLUMN mac,
                  DROP COLUMN  odin, 
                  DROP COLUMN serial, 
                  DROP COLUMN username, 
                  DROP COLUMN useremail, 
                  DROP COLUMN userphoto, 
                  DROP COLUMN userphone, 
                  DROP COLUMN os_version_dubl, 
                  DROP COLUMN agency, 
                  DROP COLUMN keyword, 
                  DROP COLUMN ad, 
                  DROP COLUMN testing_group;


drop table Quests;
CREATE TABLE Quests (
devtodev_id int,
time int,
level int,
isTester bool,
cheat bool,
install_date int,
app_version text,
State text,
QuestId int,
Quest_Name text,
PlayerGold int,
PlayerExperience int,
PlayerGems int,
PlayerEnergy int,
PlayerLevel int);

\COPY Quests(
devtodev_id,
time,
level,
isTester,
cheat,
install_date,
app_version,
State,
QuestId,
Quest_Name,
PlayerGold,
PlayerExperience,
PlayerGems,
PlayerEnergy,
PlayerLevel
  ) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/Quests.csv'
DELIMITER ';' CSV HEADER;

--ALTER TABLE Quests ALTER COLUMN time TYPE DATE USING to_timestamp(time);
--ALTER TABLE Quests ALTER COLUMN install_date TYPE DATE USING to_timestamp(install_date);
ALTER TABLE Quests ALTER COLUMN time TYPE timestamptz USING to_timestamp(time);
ALTER TABLE Quests ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);


drop table Tutor;
CREATE TABLE Tutor (
devtodev_id int,
time int,
level int,
complete_state int,
isTester bool,
cheat bool,
install_date int,
app_version text);

\COPY Tutor (
devtodev_id,
time,
level,
complete_state,
isTester,
cheat,
install_date,
app_version
) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/Tutor.csv'
DELIMITER ';' CSV HEADER;

--ALTER TABLE Tutor ALTER COLUMN time TYPE DATE USING to_timestamp(time);
--ALTER TABLE Tutor ALTER COLUMN install_date TYPE DATE USING to_timestamp(install_date);
ALTER TABLE Tutor ALTER COLUMN time TYPE timestamptz USING to_timestamp(time);
ALTER TABLE Tutor ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);



DROP TABLE LevelUp;
CREATE TABLE LevelUp (
devtodev_id int,
time int,
level int,
isTester bool,
cheat bool,
install_date int,
app_version text,
spent text,
earned text,
balance text,
bought text);

\COPY  LevelUp (
devtodev_id,
time,
level,
isTester,
cheat,
install_date,
app_version,
spent,
earned,
balance,
bought
) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/LevelUp.csv'
DELIMITER ';' CSV HEADER;

ALTER TABLE  LevelUp ALTER COLUMN time TYPE timestamptz USING to_timestamp(time);
ALTER TABLE  LevelUp ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);



DROP TABLE IngamePurchase;
CREATE TABLE IngamePurchase(
devtodev_id int,
time int,
level int,
item_type text,
item text,
count int,
cheat bool,
isTester bool,
install_date int,
app_version text,
Gold float,
Gems float);

\COPY  IngamePurchase (
devtodev_id,
time,
level,
item_type,
item,
count,
cheat,
isTester,
install_date,
app_version,
Gold,
Gems
) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/IngamePurchase.csv'
DELIMITER ';' CSV HEADER;

ALTER TABLE  IngamePurchase ALTER COLUMN time TYPE timestamptz USING to_timestamp(time);



DROP TABLE GameSessions;
CREATE TABLE GameSessions(
devtodev_id int,
time int,
count int,
avg_duration int,
isTester bool,
cheat bool,
level int,
install_date int,
app_version text);

\COPY  GameSessions(
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

ALTER TABLE  GameSessions ALTER COLUMN time TYPE timestamptz USING to_timestamp(time);
ALTER TABLE  GameSessions ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);



DROP TABLE Orders;
CREATE TABLE Orders(
devtodev_id int,
time int,
level int,
isTester bool,
cheat bool,
install_date int,
app_version text,
Requirement_1_ID int,
Reward_1_Count int,
Requirement_1_Count int,
Reward_3_ID int,
IsOrderSpecial bool, 
Reward_1_ID int,
Reward_3_Count int,
State text,
Reward_2_ID int,
Reward_2_Count int, 
Requirement_2_Count int,
Requirement_2_ID int, 
Requirement_3_Count int,
Requirement_3_ID int,
PlayerGems int,
PlayerExperience int,
PlayerEnergy int,
PlayerLevel int,
PlayerGold int,
Reward_4_ID int,
Reward_4_Count int);

\COPY  Orders(
devtodev_id,
time,
level,
isTester,
cheat,
install_date,
app_version,
Requirement_1_ID,
Reward_1_Count,
Requirement_1_Count,
Reward_3_ID,
IsOrderSpecial, 
Reward_1_ID,
Reward_3_Count,
State,
Reward_2_ID,
Reward_2_Count, 
Requirement_2_Count,
Requirement_2_ID, 
Requirement_3_Count,
Requirement_3_ID,
PlayerGems,
PlayerExperience,
PlayerEnergy,
PlayerLevel,
PlayerGold,
Reward_4_ID,
Reward_4_Count
) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/Orders.csv'
DELIMITER ';' CSV HEADER;

ALTER TABLE  Orders ALTER COLUMN time TYPE timestamptz USING to_timestamp(time);
ALTER TABLE  Orders ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);



DROP TABLE Quests;
CREATE TABLE Quests(
devtodev_id int,
time int,
level int,
isTester bool,
cheat bool,
install_date int,
app_version text,
State text,
QuestId int,
QuestName	text,
PlayerGold	int,
PlayerExperience	int,
PlayerGems	int,
PlayerEnergy	int,
PlayerLevel int);

\COPY Quests(
devtodev_id,
time,
level,
isTester,
cheat,
install_date,
app_version,
State,
QuestId,
QuestName,
PlayerGold,
PlayerExperience,
PlayerGems,
PlayerEnergy,
PlayerLevel
) FROM '/Users/mykras/Downloads/StepicoDB_Summer/csv_to_db/Quests.csv'
DELIMITER ';' CSV HEADER;

ALTER TABLE  Quests ALTER COLUMN time TYPE timestamptz USING to_timestamp(time);
ALTER TABLE  Quests ALTER COLUMN install_date TYPE timestamptz USING to_timestamp(install_date);



--- https://github.com/khuyentran1401/detect-data-drift-pipeline/blob/main/setup/create_table.sql
DROP TABLE reference;
CREATE TABLE reference
(
    instant bigint,
    dteday timestamp without time zone,
    season bigint,
    yr bigint,
    mnth bigint,
    holiday bigint,
    weekday bigint,
    workingday bigint,
    weathersit bigint,
    temp double precision,
    atemp double precision,
    hum double precision,
    windspeed double precision,
    casual bigint,
    registered bigint,
    cnt bigint
);

\COPY reference FROM '/Users/mykras/Downloads/bikeride.csv' DELIMITER ',' CSV HEADER;

--- https://github.com/ZainabMCheema/DataAnalystProject.git
-- step 1
DROP TABLE wmsales;
CREATE TABLE wmsales
  ( 
    invoice_id text not null primary Key,
    branch text not null,
    city text not null,
    customer_type text not null,
    gender  text not null,
    product_line text not null,
    unit_price  float not null,
    quantity int not null,
    vat float not null,
    total float not null,
    date timestamp without time zone,
    time text not null,
    payment_method text  not null,
    cogs float not null,
    gross_margin_pct float not null,
    gross_income float not null,
    rating float not null
);

\COPY wmsales FROM '/Users/mykras/Downloads/WalmartSalesData.csv' DELIMITER ',' CSV HEADER;

--- https://github.com/ZainabMCheema/DataAnalystProject.git
-- step 2
	alter table wmsales add column time_of_day text;
	update wmsales
	set time_of_day= (
		case 
			 when time between '08:00:00' and '12:00:00' then 'Morning'
			 when time between '12:00:00' and '18:00:00' then 'Afternoon'
			 else 'Evening'
    	end)
);
