mongoimport mongodb://$MONGO_INITDB_USERNAME:$MONGO_INITDB_PASSWORD@localhost:27017/"$MONGO_INITDB_DATABASE" --file=/usr/share/data/severities.json
mongoimport mongodb://$MONGO_INITDB_USERNAME:$MONGO_INITDB_PASSWORD@localhost:27017/"$MONGO_INITDB_DATABASE" --file=/usr/share/data/reasons.json
mongoimport mongodb://$MONGO_INITDB_USERNAME:$MONGO_INITDB_PASSWORD@localhost:27017/"$MONGO_DB_DEV"?authSource="$MONGO_INITDB_DATABASE" --file=/usr/share/data/severities.json
mongoimport mongodb://$MONGO_INITDB_USERNAME:$MONGO_INITDB_PASSWORD@localhost:27017/"$MONGO_DB_DEV"?authSource="$MONGO_INITDB_DATABASE" --file=/usr/share/data/reasons.json
