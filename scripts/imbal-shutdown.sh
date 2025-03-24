#!/bin/bash 
set -e

clear
printf "waiting for 9:32 to flatten imbalance only trade\n"

while [ $(date +%H:%M) != "09:32" ]; do sleep 1; done
date
# kill `ps | grep java | awk '{print $1}'`

cd /opt/pkg/git/minimal-market-maker
mvn exec:java -Dexec.mainClass="cc.qpm.app.MidPriceCloseAll"
cd /opt/pkg/git/m3-production/scripts
