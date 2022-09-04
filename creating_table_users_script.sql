drop table users;
CREATE TABLE users (
  
  devtodevid(uid)
  lasttime(int_ts)
  pushavailable(boolean)
  publisherid int,
  publisher text,
  campaign text,
  placement text,
  ad text,
  appversion(version)
  appversionid int,
  cheater(boolean)
  country text,
  created(int_ts)
  device text,
  deviceid int,
  firstappversion(version)
  firstappversionid int,
  firstpaymentdate(int_ts)
  lastpaymentdate(int_ts)
  level int,
  locale text,
  osversion(version)
  osversionid int,
  paymentcount int,
  paymentsum(float)
  sdkversion(version)
  sdkversionid int,
  segmentvalues(segments)
  tester(boolean)
  mainid text,
  customuid text,
  idfa text,
  idfv text,
  advertisingid text,
  androidid text,
  username text,
  email text,
  phone text,
  photo text,
  age int,
  timezoneoffset int,
  gender int,
  ab text,
  testinggroup text
  );
COPY users(
  candidate_id,
  hire_reported,
  primary_keyword_candidate,
  candidates_city,
  candidates_country,
  experience_years,
  en_level_candidate,
  hire_salary,
  company_type
  ) FROM '/Users/Shared/test_jinni.csv'
DELIMITER ',' CSV HEADER;
