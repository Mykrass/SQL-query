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
os_version_dubl 
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
