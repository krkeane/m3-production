#!/bin/bash

date=$(date +"%Y%m%d")
DATA_DIR=${PWD}
file="${DATA_DIR}/${date}.cmd"
fmt="mvn exec:java -Dexec.mainClass=\"cc.qpm.app.App\" -Dexec.args=\"" 


printf '#!/bin/bash\nset -e\n\n' > sod-launch.sh
printf 'while [ $(date +%%H:%%M) != \"09:31\" ]; do sleep 1; done\ndate\n\n' >> sod-launch.sh
printf 'cd /opt/pkg/git/minimal-market-maker\n' >> sod-launch.sh
#
# Each input line divided into three fields separated by a space character
# 
while IFS=' ' read -r f1 f2 f3
do
	printf '%s%s U6004887 %-6s %s 100 5%s\nsleep 1\n\n' "$fmt" "$f1" "$f2" "$f3" "\" >> $date-$f2.log &" >> sod-launch.sh
done <"$file"

printf "cd ${DATA_DIR}\\n" >> sod-launch.sh
printf 'sleep 5\n' >> sod-launch.sh
printf 'echo\n' >> sod-launch.sh

chmod 755 sod-launch.sh

clear


head -14 sod-launch.sh
printf "\n  ...\n\n"

printf "\n\nScript \"sod-lauch.sh\" is ready!\n    comment out the while-loop to re-launch processes.\n\n"
