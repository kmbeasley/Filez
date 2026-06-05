-- TODO

DROP TABLE IF EXISTS folders CASCADE;
DROP TABLE IF EXISTS files;
-- CREATE TABLE of folders.
CREATE TABLE folders (
  id serial PRIMARY KEY,
  -- Vaules Cannot be Null. 
  name text UNIQUE NOT NULL
);
create table files (
  id serial PRIMARY KEY,
  name text NOT NULL,
  size integer NOT NULL,
  -- I want to all folders with id when Deleted. 
  folder_id integer NOT NULL REFERENCES folders(id) ON DELETE CASCADE,
  -- Combo of them together is what makes it Unique. Different names 
  UNIQUE (name, folder_id)
);