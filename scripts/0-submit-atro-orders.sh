#!/bin/bash

set -e

export DATA_DIR=${PWD}

cd /opt/pkg/git/atro-daily
mvn exec:java \
	-Dexec.mainClass="cc.qpm.app.SubmitOrders" \
	-Dexec.args=""

cd ${DATA_DIR}
printf "\nATRO LOO and LOC orders submitted.\n"

