drop table users;
CREATE TABLE users (
  
  devtodevid(uid)
  lasttime(int_ts)
  pushavailable(boolean)
  publisherid INT,
  publisher TEXT,
  campaign TEXT,
  placement TEXT,
  ad TEXT,
  appversion(version)
  appversionid INT,
  cheater(boolean)
  country TEXT,
  created(int_ts)
  device TEXT,
  deviceid INT,
  firstappversion(version)
  firstappversionid INT,
  firstpaymentdate(int_ts)
  lastpaymentdate(int_ts)
  level INT,
  locale TEXT,
  osversion(version)
  osversionid INT,
  paymentcount INT,
  paymentsum(float)
  sdkversion(version)
  sdkversionid INT,
  segmentvalues(segments)
  tester(boolean)
  mainid TEXT,
  customuid TEXT,
  idfa TEXT,
  idfv TEXT,
  advertisingid TEXT,
  androidid TEXT,
  username TEXT,
  email TEXT,
  phone TEXT,
  photo TEXT,
  age INT,
  timezoneoffset INT,
  gender TEXT,
  _A/B test groups TEXT,
  _Testing Group TEXT
  
  candidate_id INT,
  hire_reported TEXT,
  primary_keyword_candidate TEXT,
  candidates_city TEXT,
  candidates_country TEXT,
  experience_years FLOAT,
  en_level_candidate TEXT,
  hire_salary FLOAT,
  company_type TEXT
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
