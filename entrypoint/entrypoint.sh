#!/bin/bash
# This script is the entrypoint for the peqdb container
# variables in this script are set when the docker image is built in the
# docker-compose.yml file.

unzip /tmp/peq_beta.zip -d /tmp

if [[ $(mysqladmin ping -u $MYSQL_USER -p$MYSQL_PASSWORD) ]]; then

    # Import the ProjectEQ Database
    echo "Now importing player_tables.sql"
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /tmp/player_tables.sql
    echo "Now importing peqbeta.sql"
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /tmp/peqbeta.sql
    echo "Now importing peq_aa_tables_post_rework.sql"
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /tmp/peq_aa_tables_post_rework.sql

    # Optional ProjectEQ Database Schema for Custom Login Server and Bots
    echo "Now importing load_login.sql"
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /tmp/load_login.sql
    #echo "Now importing load_bots.sql"
    #mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /tmp/load_bots.sql

    # Schema for peqphpeditor
    echo "Now importing schema.sql"
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /tmp/schema.sql
    #echo "Now importing expansion.sql"
    #mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /tmp/expansion.sql
fi
