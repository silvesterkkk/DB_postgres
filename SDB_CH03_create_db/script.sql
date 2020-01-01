-- Database: sil_gis_dev

-- DROP DATABASE sil_gis_dev;

-- use below in pgAdmin
CREATE DATABASE sil_gis_dev
    WITH 
    OWNER = silvesterkim
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- OR use below in psql cmd
postgres=# CREATE DATABASE postgres_DEV;
--CREATE DATABASE
postgres=# CREATE DATABASE postgres_TEST;
--CREATE DATABASE
postgres=# CREATE DATABASE postgres_PROD;
--CREATE DATABASE