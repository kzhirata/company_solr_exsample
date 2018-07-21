#!/bin/bash

for file in `ls [0-9]*.csv`; do
    echo "${file}"
    cat header.csv ${file} > csv.tmp
    curl http://localhost:8983/solr/company/update?commit=true --data-binary @csv.tmp  -H 'Content-type:text/csv;charset=utf-8'
done

