CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(255),
  password_hash VARCHAR(255),
  created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

CREATE TABLE decks (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER NOT NULL,
  name VARCHAR(255) NOT NULL,
  created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

CREATE TABLE cards (
  id SERIAL PRIMARY KEY NOT NULL,
  deck_id INTEGER NOT NULL,
  content_html TEXT NOT NULL,
  orbit INTEGER,
  notify_at TIMESTAMP WITHOUT TIME ZONE,
  created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL
);