echo "create physical spcae for db"
psql postgres
echo "OR"
sudo psql postgres

echo "if postgres user not automatically created during the install "
/usr/local/opt/postgresql/bin/createuser -s postgres

