#!/bin/bash

set -e

# specify empty account for script to run properly (no existing positions impacting margin)
export ACCOUNT=U6004887
export DATA_DIR=${PWD}


cd /opt/pkg/git/mm
mvn exec:java -Dexec.mainClass="cc.qpm.app.MarginUsage" -Dexec.args="${ACCOUNT} ${DATA_DIR}/ibkrats.json ${DATA_DIR}/margin.json"

cd ${DATA_DIR}

printf "\nMargin data retrieved from TWS API.\n"

