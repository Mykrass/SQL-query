ALTER TABLE payments ALTER COLUMN date TYPE INTEGER USING date::integer;
ALTER TABLE payments ALTER COLUMN date TYPE DATE USING to_timestamp(date);

ALTER TABLE payments ALTER COLUMN created TYPE INTEGER USING created::integer;
ALTER TABLE payments ALTER COLUMN created TYPE TIMESTAMP WITH TIME ZONE USING created::timestamptz;
