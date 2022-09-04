drop table users;
CREATE TABLE users (
  devtodevid int,
  mainid text,
  created timestamptz,
  paying bool,
  cheater bool,
  tester bool,
  appversion text,
  firstappversion text,
  language text,
  country text,
  devicemanufacturer text,
  devicename text,
  crossplatformuserid int,
  channel text,
  installsource text,
  useragent text,
  screenresolution text,
  osversion text,
  advertising text,
  udid text,
  androidid text,
  adcampaign text,
  timezoneoffset text,
  osversion text,
  segments text,
  placement text,
  site text,
  adgroup text,
  ad text,
  abtestgroups text
  );
  
COPY users(
  devtodevid int,
  mainid text,
  created timestamptz,
  paying bool,
  cheater bool,
  tester bool,
  appversion text,
  firstappversion text,
  language text,
  country text,
  devicemanufacturer text,
  devicename text,
  crossplatformuserid int,
  channel text,
  installsource text,
  useragent text,
  screenresolution text,
  osversion text,
  advertising text,
  udid text,
  androidid text,
  adcampaign text,
  timezoneoffset text,
  osversion text,
  segments text,
  placement text,
  site text,
  adgroup text,
  ad text,
  abtestgroups text
  ) FROM '/Users/mykras/Downloads/raw_data_avgust_04/Users.csv'
DELIMITER ',' CSV HEADER;
