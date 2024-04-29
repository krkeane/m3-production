#!/bin/bash

date=$(date +"%Y%m%d")
DATA_DIR=${PWD}
file="${DATA_DIR}/${date}.cmd"
fmt="mvn exec:java -Dexec.mainClass=\"cc.qpm.app.App\" -Dexec.args=\"" 


printf '#!/bin/bash\nset -e\n\n'
printf 'while [ $(date +%%H:%%M) != \"09:31\" ]; do sleep 1; done\ndate\n\n'
printf 'cd /opt/pkg/git/minimal-market-maker\n'
#
# Each input line divided into three fields separated by a space character
# 
while IFS=' ' read -r f1 f2 f3
do
	printf '%s%s %-6s %s%s\nsleep 1\n\n' "$fmt" "$f1" "$f2" "$f3" "\" >> $date-$f2.log &"
done <"$file"

printf "cd ${DATA_DIR}\\n"
printf 'sleep 5\n'
printf 'echo\n'
