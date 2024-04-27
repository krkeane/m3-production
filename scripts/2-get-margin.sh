#!/bin/bash

set -e

export DATA_DIR=${PWD}


cd /opt/pkg/git/mm
mvn exec:java -Dexec.mainClass="cc.qpm.app.MarginUsage" -Dexec.args="${DATA_DIR}/ibkrats.json ${DATA_DIR}/margin.json"

cd ${DATA_DIR}

printf "\nMargin data retrieved from TWS API.\n"

