#!/bin/bash 
set -e

kill `ps | grep java | awk '{print $1}'`

cd /opt/pkg/git/minimal-market-maker
mvn exec:java -Dexec.mainClass="cc.qpm.app.MidPriceHedge" -Dexec.args="9000 U19492963"
cd /opt/pkg/git/m3-production/scripts
