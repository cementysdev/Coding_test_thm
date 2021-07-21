BEGIN;

DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE,
  password TEXT,
  first_name TEXT,
  last_name TEXT,
  country TEXT,
  city TEXT,
  phone_number TEXT,
  position TEXT,
  profile_picture bytea,
  profile_picture_content_type TEXT,
  email_alert smallint DEFAULT 1,
  sms_alert smallint DEFAULT 1,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS _index_users_email ON users (email);

COMMIT;

