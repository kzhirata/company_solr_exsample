#!/bin/bash

SOLR_CORE_NAME="company"

if [ ! ${DATA_DIR} ]; then
  echo 'set your data directory DATA_DIR. ex) DATA_DIR="${HOME}/data"'
  exit 1
fi

for file in `ls  ${DATA_DIR}/[0-9]*.csv`; do
    echo "${file}"
    cat header.csv ${file} > csv.tmp
    curl http://localhost:8983/solr/${SOLR_CORE_NAME}/update?commit=true --data-binary @csv.tmp  -H 'Content-type:text/csv;charset=utf-8'
done

if [ -f csv.tmp]; then
  rm csv.tmp
fi
