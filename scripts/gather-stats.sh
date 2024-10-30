#!/bin/bash

set -e

export DATA_DIR=${PWD}
export UNIVERSE=${DATA_DIR}/test.json # ibkrats.json
export QUERY=${DATA_DIR}/stats-query.json
export OUTPUT=${DATA_DIR}/stats-output.json

cd /opt/pkg/git/twsToJson
mvn exec:java \
	-Dexec.mainClass="cc.qpm.app.App" \
	-Dexec.args="/dev/null ${UNIVERSE} ${QUERY} false ${OUTPUT}"
cd ${DATA_DIR}

printf "\nStats data retrieved from TWS API.\n"

