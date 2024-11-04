#!/bin/bash

set -e

export DATA_DIR=${PWD}

cd /opt/pkg/git/twsToJson
mvn exec:java \
	-Dexec.mainClass="cc.qpm.app.App" \
	-Dexec.args="/dev/null ${DATA_DIR}/test.json ${DATA_DIR}/ba-test.json false ${DATA_DIR}/data-ba-test-hist-bars.json"
cd ${DATA_DIR}

printf "\nHistorical TRADE data retrieved from TWS API.\n"

