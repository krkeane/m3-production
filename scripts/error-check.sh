#!/bin/bash

date=$(date +"/opt/pkg/git/minimal-market-maker/%Y%m%d")

toterr=$(grep error ${date}-*.log | wc | awk '{print $1;}')
knownerr=$(grep -e " | 404 | " -e " | 104 | " -e " | 201 | " -e " | 202 | " ${date}-*.log | wc | awk '{print $1;}')
duperr=$(grep -e " | 103 | " ${date}-*.log | wc | awk '{print $1;}')
fillerr=$(grep -e " | 10148 | " ${date}-*.log | wc | awk '{print $1;}')

clear
echo ""
echo `date`
echo ""
echo "  total errors   " ${toterr}
echo ""
echo "  ignored errors " ${knownerr}
echo ""
echo "  bad errors"
echo "    duplicate id " ${duperr}
echo "    filled order " ${fillerr}
echo ""
echo ""
echo ""
echo "Recent errors  ---------------------"
grep error ${date}-*.log | sort -k 2 | tail
echo ""
echo ""
