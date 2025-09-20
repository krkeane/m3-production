#!/bin/bash

set -e

date=$(date +"%Y%m%d")
clear

printf "\n\n\tATRO daily order entry\n\n\twaiting for 09:30 ...\n\n"
while [ $(date +%H:%M) != "09:30" ]; do sleep 1; done
date


export DATA_DIR=${PWD}

cd /opt/pkg/git/atro-daily

mvn exec:java \
	-Dexec.mainClass="cc.qpm.app.SubmitNASDAQ" \
	-Dexec.args="${DATA_DIR}/atro.json"

cd ${DATA_DIR}
printf "\nATRO order submitted.\n"

