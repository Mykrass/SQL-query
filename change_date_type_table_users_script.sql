ALTER TABLE users ALTER COLUMN created TYPE INTEGER USING created::integer;
ALTER TABLE users ALTER COLUMN created TYPE DATE USING to_timestamp(created);
