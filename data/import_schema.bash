#!/bin/bash

SOLR_CORE_NAME="company"

curl -X POST -H 'Content-type: application/json' --data-binary @suggest_schema.json http://localhost:8983/solr/${SOLR_CORE_NAME}/schema

curl -X POST -H 'Content-type: application/json' --data-binary @company_schema.json http://localhost:8983/solr/${SOLR_CORE_NAME}/schema
