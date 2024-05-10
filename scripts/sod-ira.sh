#!/bin/bash

set -e

clear
printf "\n\nNot implemented.\n"
printf "\n\thint:\n"
printf "\n\n\tcd /opt/pkg/git/minimal-market-maker\n"
printf "\tgit checkout ira-m3\n"
printf "\tgit clean package install\n"
printf "\tmvn exec:java -Dexec.mainClass=\"cc.qpm.app.App\" -Dexec.args=\"1001 U19492963 NVDA 55 1\" | tee -a nvda.log\n\n"
