#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "init file IP: $line"
    ssh exsp@$line 'bash -s' < setup.sh 
done < "$1"
