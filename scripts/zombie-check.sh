#!/bin/bash

date=$(date +"/opt/pkg/git/minimal-market-maker/%Y%m%d")


clear
echo ""
echo `date`
echo ""
printf "Zombies:\n\n"
grep unack ${date}-*.log | sed -n -e 's/:.* - //p'
printf "\n"
