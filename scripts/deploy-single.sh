#!/bin/bash

set -e

declare -a hosts
hosts=(
    ["0"]="47.74.39.242"
    ["1"]="47.74.4.216"
    ["2"]="47.74.39.245"
)

snum=$1
host=${hosts[$snum]}
dir=`dirname $0`

echo "deploy"
echo "  serv num: $snum"
echo "  host    : $host"

ssh -i ~/.ssh/isucon9.pem "root@$host" < ${dir}/setup-common.sh
# ssh -i ~/.ssh/isucon9.pem "root@$host" < ${dir}/setup-${snum}.sh
ssh -i ~/.ssh/isucon9.pem "root@$host" < ${dir}/restart.sh
