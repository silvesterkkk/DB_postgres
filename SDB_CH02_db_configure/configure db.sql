-- start psql command line from terminal window
psql postgres -U %username%

-- Check current user list
postgres=# \du

-- The postgres is default super user—by default, it has no password.  
-- You can set the password as follow. You will be prompted to enter the password and confirm it.
postgres=# \password postgres

-- Create a new role
-- Password must be enclosed with quotes
postgres=# CREATE ROLE %username% WITH LOGIN PASSWORD 'password'; 
postgres=# \du --check user list

-- Alter roles
postgres=# ALTER ROLE %username% CREATEDB;
postgres=# \du --check user list
-- Quit psql terminal to be able to login using the new user.
postgres=# \q

-- Change password
postgres=# ALTER USER user_name WITH PASSWORD 'new_password';


-- Go back to psql terminal, with `newuser` as user
psql postgres -U newuser

-- You’ll notice the prompt is slightly different – the 'postgres=#' has changed to a 'postgres=>'. 
-- This indicates you’re no longer using a Super User account.

-- Create database
postgres=> CREATE DATABASE your_db_name;

-- add at least one user who has permission to access the database (aside from the super users, who can access everything). 
-- To do that, we’re going to learn a new SQL command:
postgres=> GRANT ALL PRIVILEGES ON DATABASE super_awesome_application TO patrick; 
postgres=> \list 
postgres=> \connect super_awesome_application 
postgres=> \dt 
postgres=> \q