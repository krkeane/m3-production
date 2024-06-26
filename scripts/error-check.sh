#!/bin/bash

date=$(date +"/opt/pkg/git/minimal-market-maker/%Y%m%d")

toterr=$(grep error ${date}-*.log | wc | awk '{print $1;}')

# 10147 | OrderId xxx that needs to be cancelled is not found (aka zombie order - GUI knows / backoffice doesnt)
knownerr=$(grep -e " | 404 | " -e " | 104 | " -e " | 201 | " -e " | 202 | " -e " | 10147 | " ${date}-*.log | wc | awk '{print $1;}')

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
grep -C 2 error ${date}*.log | grep " | "
echo ""
echo ""
