#!/bin/bash

date=$(date +"%Y%m%d")
# DATA_DIR=${PWD}
DATA_DIR="/opt/pkg/git/trading/data-collector/src/main/R"
file="${DATA_DIR}/${date}.cmd"
fmt="mvn exec:java -Dexec.mainClass=\"cc.qpm.trading.asymmetric.App\" -Dexec.args=\"" 

printf '#!/bin/bash\nset -e\n\n' > sod-launch.sh
printf 'while [ $(date +%%H:%%M) != \"09:31\" ]; do sleep 1; done\ndate\n\n' >> sod-launch.sh
printf 'cd /opt/pkg/git/trading/asymmetric-mm\n' >> sod-launch.sh
#
# Each input line divided into three fields separated by a space character
# 
while IFS=' ' read -r f1
do
	printf '%s%s%s\nsleep 1\n\n' "$fmt" "$f1" "\" &>> $date-$f1.log &" >> sod-launch.sh
done <"$file"

printf "cd /opt/pkg/git/m3-production/scripts\\n" >> sod-launch.sh
printf 'sleep 5\n' >> sod-launch.sh
printf 'echo\n' >> sod-launch.sh

chmod 755 sod-launch.sh

clear


head -14 sod-launch.sh
printf "\n  ...\n\n"

printf "\n\nScript \"sod-lauch.sh\" is ready!\n    comment out the while-loop to re-launch processes.\n\n"
