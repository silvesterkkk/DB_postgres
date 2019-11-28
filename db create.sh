echo "create physical spcae for db"
initdb /usr/local/var/postgres

echo "create postgres db"
createdb mydatabasename
dropdb mydatabasename

echo "connect postgres db"
psql mydatabasename

echo "create postgres db in psql shell env"
CREATE DATABASE mydatabasename;
DROP DATABASE mydatabasename;