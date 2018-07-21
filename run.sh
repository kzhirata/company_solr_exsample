#!/bin/sh


APP_ROOT=`pwd`
PROJECT="proj"
SOLR_CORE_NAME="company"

rm -rf ./container/${PROJECT}
mkdir ./container/${PROJECT}

docker run --name solr -d -p 8983:8983 -v ${APP_ROOT}/container/${PROJECT}:/opt/solr/server/solr/${PROJECT} -t solr

#docker exec -it solr /bin/bash
docker exec -it solr /bin/bash -c "/opt/solr/bin/solr create -c ${SOLR_CORE_NAME}"
docker exec -it solr /bin/bash -c "/bin/mv /opt/solr/server/solr/${SOLR_CORE_NAME}/* /opt/solr/server/solr/${PROJECT}"
docker restart solr

