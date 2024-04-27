#!/bin/bash

set -e

export DATA_DIR=${PWD}

cd /opt/pkg/git/twsToJson
mvn exec:java \
	-Dexec.mainClass="cc.qpm.app.App" \
	-Dexec.args="/dev/null ${DATA_DIR}/ibkrats.json ${DATA_DIR}/mm-rule-605.json false ${DATA_DIR}/data-rule-605.json"
cd ${DATA_DIR}

printf "\nHistorical TRADE data retrieved from TWS API.\n"

