#!/bin/bash

# Check if sufficient arguments were provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <root_password> <genular_password>"
    exit 1
fi

# Assign arguments to variables
ROOT_PWD=$1
GENULAR_PWD=$2

# Create admin user if it does not exist
cat <<EOT > create_root_user.js
use admin

db.createUser({
    user: "root",
    pwd: "$ROOT_PWD",
    roles: [{ role: "root", db: "admin" }]
});
EOT

mongosh < create_root_user.js

# Create 'genular' user if it does not exist
cat <<EOT > create_genular_user.js
use genes

db.createUser({
    user: "genular",
    pwd: "$GENULAR_PWD",
    roles: [
        { role: "dbAdmin", db: "genes" },
        { role: "readWrite", db: "genes" },
        { role: "dbAdmin", db: "genes_helpers" },
        { role: "readWrite", db: "genes_helpers" }
    ]
});
EOT

mongosh --username root --password "$ROOT_PWD" < create_genular_user.js

# Clean up
rm create_root_user.js create_genular_user.js
