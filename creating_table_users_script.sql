drop table users;
CREATE TABLE users (
  devtodevid INT,
  mainid TEXT,
  created TEXT,
  paying bool,
  cheater bool,
  tester bool,
  level INT,
  appversion TEXT,
  firstappversion TEXT,
  language TEXT,
  country TEXT,
  devicemanufacturer TEXT,
  devicename TEXT,
  crossplatformuserid INT,
  channel TEXT,
  installsource TEXT,
  useragent TEXT,
  screenresolution TEXT,
  osversion TEXT,
  advertising TEXT,
  udid TEXT,
  androidid TEXT,
  adcampaign TEXT,
  timezoneoffset INT,
  segments TEXT,
  placement TEXT,
  site TEXT,
  adgroup TEXT,
  ad TEXT,
  abtestgroups TEXT
  );
  
\COPY users(
  devtodevid,
  mainid,
  created,
  paying,
  cheater,
  tester,
  level,
  appversion,
  firstappversion,
  language,
  country,
  devicemanufacturer,
  devicename,
  crossplatformuserid,
  channel,
  installsource,
  useragent,
  screenresolution,
  osversion,
  advertising,
  udid,
  androidid,
  adcampaign,
  timezoneoffset,
  segments,
  placement,
  site,
  adgroup,
  ad,
  abtestgroups
  ) FROM '/Users/mykras/Downloads/stepico_create_table_data/Users.csv'
DELIMITER ';' CSV HEADER;
