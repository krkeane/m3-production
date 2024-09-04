#!/bin/bash 
set -e

cd /opt/pkg/git
echo "atro-daily" && cd atro-daily && git pull && cd -
echo "conversion-screener" && cd conversion-screener && git pull && cd -
echo "conversion-trader" && cd conversion-trader && git pull && cd -
echo "m3-production" && cd m3-production && git pull && cd -
echo "MasterDataParsers" && cd MasterDataParsers && git pull && cd -
echo "matrix" && cd matrix && git pull && cd -
echo "minimal-market-maker" && cd minimal-market-maker && git pull && cd -
echo "mm" && cd mm && git pull && cd -

#echo "tws-api\n" && cd tws-api && git pull && cd -

echo "tws-data-collector" && cd tws-data-collector && git pull && cd -
echo "twsToJson" && cd twsToJson && git pull && cd -
echo "tws-tools" && cd tws-tools && git pull && cd -
echo "telemetry" && cd telemetry && git pull && cd -

cd /opt/pkg/git/m3-production/scripts
