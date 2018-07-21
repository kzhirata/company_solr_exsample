#!/bin/bash

curl http://localhost:8983/solr/coop/update?commit=true --data-binary @h_13_tokyo_all_20180629.csv  -H 'Content-type:text/csv;charset=utf-8'
