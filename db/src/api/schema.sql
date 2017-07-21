drop schema if exists api cascade;
create schema api;
set search_path = api, public;

-- this role will be used as the owner of the views in the api schema
-- it is used in the definition of the RLS policies for tables accessed
-- by the views
drop role if exists api;
create role api;

-- redifine this type to control the user properties returned by auth endpoints
\ir ../libs/auth/api/user_type.sql
-- include all auth endpoints
\ir ../libs/auth/api/all.sql

-- our endpoints
\ir todos.sql
\ir search_todos.sql
