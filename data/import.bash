#!/bin/bash

SOLR_CORE_NAME="company"

for file in `ls [0-9]*.csv`; do
    echo "${file}"
    cat header.csv ${file} > csv.tmp
    curl http://localhost:8983/solr/${SOLR_CORE_NAME}/update?commit=true --data-binary @csv.tmp  -H 'Content-type:text/csv;charset=utf-8'
done

rm csv.tmp 
