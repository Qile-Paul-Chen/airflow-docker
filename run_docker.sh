#!/bin/bash

echo "killing old docker processes"
docker-compose rm -fs

echo "creating folders"
mkdir -p ./logs ./plugins
echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env

echo "building docker containers"
docker-compose up airflow-init
docker-compose up

