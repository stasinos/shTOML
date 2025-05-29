#!/bin/bash

TOML2BASH=./toml2bash

declare -A toml
shopt -s lastpipe

if [[ x$1 == x ]]; then
    echo "Parameter missing"
    exit 1
else
    FILE=$1
fi 

cat ${FILE} | ${TOML2BASH} | while read KEY VALUE; do
    toml["$KEY"]=$VALUE
done

# Test
for k in "${!toml[@]}"; do
    echo "$k"
    echo ${toml[$k]}
    echo
done

exit 0
