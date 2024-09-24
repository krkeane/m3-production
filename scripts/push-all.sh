#!/bin/bash 
set -e

cd /opt/pkg/git
echo "atro-daily" && cd atro-daily && git push && cd -
echo "conversion-screener" && cd conversion-screener && git push && cd -
echo "conversion-trader" && cd conversion-trader && git push && cd -
echo "m3-production" && cd m3-production && git push && cd -
echo "MasterDataParsers" && cd MasterDataParsers && git push && cd -
echo "matrix" && cd matrix && git push && cd -
echo "minimal-market-maker" && cd minimal-market-maker && git push && cd -
echo "mm" && cd mm && git push && cd -

#echo "tws-api\n" && cd tws-api && git push && cd -

echo "tws-data-collector" && cd tws-data-collector && git push && cd -
echo "twsToJson" && cd twsToJson && git push && cd -
echo "tws-tools" && cd tws-tools && git push && cd -
echo "telemetry" && cd telemetry && git push && cd -
echo "test-tws-202409" && cd test-tws-202409 && git push && cd -


cd /opt/pkg/git/m3-production/scripts
