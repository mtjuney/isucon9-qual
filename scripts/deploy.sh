#!/bin/bash

set -e

dir=`dirname $0`
for snum in {0..2}; do
    ${dir}/deploy-single.sh $snum
done
