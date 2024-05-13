#!/bin/bash 
set -e

kill `ps | grep java | awk '{print $1}'`

printf "\n\nTrading processes stopped.\n"
printf "\tmanually:\n\t\tTWS classic / Trade / Cancel / Cancel all orders\n"
printf "\tmanually:\n\t\tverify neutral long only position\n"
