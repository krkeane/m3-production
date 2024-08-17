#!/bin/bash

set -e

export DATA_DIR=${PWD}

cd /opt/pkg/git/mm
mvn exec:java -Dexec.mainClass="cc.qpm.app.AccountSummaryPS"
cd ${DATA_DIR}
