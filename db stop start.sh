echo "start Postgres db server"
pg_ctl -D /usr/local/var/postgres start && brew services start postgresql

echo "stop Postgres db server"
pg_ctl -D /usr/local/var/postgres stop
