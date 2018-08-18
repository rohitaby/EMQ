#!/bin/bash

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "init file IP: $line"
    cat start.sh | ssh exsp@$line
done < "$1"
