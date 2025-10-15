#!/bin/bash 
set -e

while [ $(date +%H:%M) != "15:57" ]; do sleep 1; done
date

# kill `ps | grep java | awk '{print $1}'`

kill `ps auwx | grep asymm | grep java | awk '{print $2}'`

cd /opt/pkg/git/minimal-market-maker
mvn exec:java -Dexec.mainClass="cc.qpm.app.MidPriceCloseAll"
cd /opt/pkg/git/m3-production/scripts
