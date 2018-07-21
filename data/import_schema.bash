#!/bin/bash

SOLR_CORE_NAME="company"

# Add text_ja_romaji to field
curl -X POST -H 'Content-type: application/json' --data-binary @suggest_schema.json http://localhost:8983/solr/${SOLR_CORE_NAME}/schema

# add company's field
curl -X POST -H 'Content-type: application/json' --data-binary @company_schema.json http://localhost:8983/solr/${SOLR_CORE_NAME}/schema
