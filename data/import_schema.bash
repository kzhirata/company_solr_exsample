#!/bin/bash

curl -X POST -H 'Content-type: application/json' --data-binary @company_schema.json http://localhost:8983/solr/company/schema
