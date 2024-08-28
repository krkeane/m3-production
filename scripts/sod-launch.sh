#!/bin/bash
set -e

while [ $(date +%H:%M) != "09:31" ]; do sleep 1; done
date

cd /opt/pkg/git/minimal-market-maker
mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1001 U6004887 SMCI   189 100 5" >> 20240828-SMCI.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1002 U6004887 NVDA   370 100 5" >> 20240828-NVDA.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1003 U6004887 TSLA   293 100 5" >> 20240828-TSLA.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1004 U6004887 META   180 100 5" >> 20240828-META.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1005 U6004887 CAVA   202 100 5" >> 20240828-CAVA.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1006 U6004887 AMD    268 100 5" >> 20240828-AMD.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1007 U6004887 PDD    194 100 5" >> 20240828-PDD.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1008 U6004887 ASTS   324 100 5" >> 20240828-ASTS.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1009 U6004887 AVGO   190 100 5" >> 20240828-AVGO.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1010 U6004887 SNOW   203 100 5" >> 20240828-SNOW.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1011 U6004887 ARM    189 100 5" >> 20240828-ARM.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1012 U6004887 CRWD   173 100 5" >> 20240828-CRWD.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1013 U6004887 AMAT   157 100 5" >> 20240828-AMAT.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1014 U6004887 MU     210 100 5" >> 20240828-MU.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1015 U6004887 GEV    171 100 5" >> 20240828-GEV.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1016 U6004887 TEM    205 100 5" >> 20240828-TEM.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1017 U6004887 WSM    167 100 5" >> 20240828-WSM.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1018 U6004887 ELF    165 100 5" >> 20240828-ELF.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1019 U6004887 TSM    165 100 5" >> 20240828-TSM.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1020 U6004887 DELL   195 100 5" >> 20240828-DELL.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1021 U6004887 ANF    145 100 5" >> 20240828-ANF.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1022 U6004887 UPST   258 100 5" >> 20240828-UPST.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1023 U6004887 ENPH   161 100 5" >> 20240828-ENPH.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1024 U6004887 RDDT   187 100 5" >> 20240828-RDDT.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1025 U6004887 VRT    172 100 5" >> 20240828-VRT.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1026 U6004887 ROKU   208 100 5" >> 20240828-ROKU.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1027 U6004887 ALAB   175 100 5" >> 20240828-ALAB.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1028 U6004887 APP    158 100 5" >> 20240828-APP.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1029 U6004887 VST    164 100 5" >> 20240828-VST.log &
sleep 1

mvn exec:java -Dexec.mainClass="cc.qpm.app.App" -Dexec.args="1030 U6004887 ON     147 100 5" >> 20240828-ON.log &
sleep 1

cd /opt/pkg/git/m3-production/scripts
sleep 5
echo
