#!/bin/bash
set -e
clear

date=$(date +"%Y%m%d")

cd /opt/pkg/git/minimal-market-maker
git checkout ira-m3
mvn clean package install

printf "\n\n\twaiting for start of day...\n\n"
while [ $(date +%H:%M) != "09:31" ]; do sleep 1; done
date

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1001 U19492963 NVDA 80 1" >> ${date}-NVDA.log &
sleep 5
cd -

printf "\n\nOKAY TO USE\n\tira-stop.sh\n"
printf "\n\nDO NOT USE\n\tstop-close-positions.sh\n\teod-shutdown.sh\n\nThey go to zero; not to IRA account neutral long.\n\n"

