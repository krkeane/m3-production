#!/bin/bash

set -e 


cd /opt/pkg/git

cd atro-daily && echo atro-daily && git status && cd -
cd conversion-screener && echo conversion-screener && git status && cd -
cd conversion-trader && echo conversion-trader && git status && cd -
cd m3-production && echo m3-production && git status && cd -
cd MasterDataParsers && echo MasterDataParsers && git status && cd -
cd matrix && echo matrix && git status && cd -
cd minimal-market-maker && echo minimal-market-maker && git status && cd -
cd mm && echo mm && git status && cd -
# cd tws-api && echo tws-api && git status && cd -
cd tws-data-collector && echo tws-data-collector && git status && cd -
cd twsToJson && echo twsToJson && git status && cd -
cd tws-tools && echo tws-tools && git status && cd -
cd telemetry && echo telemetry && git status && cd -

cd /opt/pkg/git/m3-production/scripts

