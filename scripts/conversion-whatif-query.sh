#!/bin/bash

set -e

cd /opt/pkg/git/conversion-trader
mvn exec:java -Dexec.mainClass="cc.qpm.app.InfoQuery" -Dexec.args="8000 /home/user/Downloads/query.json"
cd -
