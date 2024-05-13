#!/bin/bash
set -e
clear

cd /opt/pkg/git/minimal-market-maker
git checkout ira-m3
git clean package install

while [ $(date +%H:%M) != "09:31" ]; do sleep 1; done
date

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1001 U19492963 NVDA 55 1" >> 20240513-NVDA.log &
cd -
echo
