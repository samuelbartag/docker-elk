#!/bin/bash

RET=1
while [[ RET -ne 0 ]]; do
  echo "Stallingwqwqwqw for Elasticsearch..."
  echo "http://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/"
  echo $(curl -XGET -k "http://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/")
  curl -XGET -k "http://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/" >/dev/null 2>&1
  RET=$?
  sleep 5
done
sleep 20