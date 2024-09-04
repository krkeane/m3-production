#!/bin/bash
set -e
clear

date=$(date +"%Y%m%d")

cd /opt/pkg/git/conversion-trader

printf "\n\n\twaiting for market open + 5 minutes...\n\n"
while [ $(date +%H:%M) != "09:35" ]; do sleep 1; done
date

git pull
git checkout info-query
mvn clean package install
mvn exec:java -Dexec.mainClass=cc.qpm.app.InfoQuery -Dexec.args="3000 json-query/dumpquery.json"

cd /opt/pkg/git/m3-production/scripts
