ALTER TABLE users ALTER COLUMN created TYPE INTEGER USING created::integer;
ALTER TABLE users ALTER COLUMN created TYPE DATE USING to_timestamp(created);
-- or --
ALTER TABLE users ALTER COLUMN created TYPE TIMESTAMP WITH TIME ZONE USING created::timestamptz;
