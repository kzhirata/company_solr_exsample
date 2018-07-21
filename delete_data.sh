#!/bin/sh

curl http://localhost:8983/solr/coop/update?commit=true -H "Content-Type: text/xml" --data-binary '<delete><query>*:*</query></delete>'
