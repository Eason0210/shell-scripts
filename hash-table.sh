#! /usr/bin/env bash
declare -A hash

while read key value; do
    hash[$key]="$value"
done

for key in "${!hash[@]}"; do
    echo "key $key ==> value ${hash[$key]}"
done
