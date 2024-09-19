#!/bin/bash
set -e
clear

date=$(date +"%Y%m%d")

cd /opt/pkg/git/minimal-market-maker

printf "\n\n\twaiting for market open...\n\n"
while [ $(date +%H:%M) != "09:30" ]; do sleep 1; done
date

sleep 5 # be sure market is open
mvn exec:java -Dexec.mainClass="cc.qpm.app.MidPriceHedge" -Dexec.args="9000 U19492963"

printf "\n\n\twaiting for start of day...\n\n"
while [ $(date +%H:%M) != "09:31" ]; do sleep 1; done
date

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1001 U19492963 TSLA 115 100 6" >> ${date}-TSLA.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1002 U19492963 SMCI 100 100 6" >> ${date}-SMCI.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1003 U19492963 NVDA 160 100 6" >> ${date}-NVDA.log &
sleep 1

cd -

printf "\n\nOKAY TO USE\n\tstop-hedge-options.sh\n\tira-eod-shutdown.sh\n\n"
printf "\n\nDO NOT USE\n\tstop-close-positions.sh\n\teod-shutdown.sh\n\nThey go to zero; not to IRA account neutral long.\n\n"

