#!/bin/sh

PROJECT="company"

mkdir ./container/${PROJECT}

docker run --name solr -d -p 8983:8983 -v /Users/kzhirata/tmp/solr/container:/opt/solr/server/solr/${PROJECT} -t solr
