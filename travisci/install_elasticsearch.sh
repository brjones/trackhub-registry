#!/bin/bash

URL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$ELASTICSEARCH_VERSION.tar.gz

if [! -d "$ES_HOME" ]; then
  wget $URL
  tar xzf elasticsearch-$ELASTICSEARCH_VERSION.tar.gz
  mkdir -p $ES_HOME/data
  mv elasticsearch-$ELASTICSEARCH_VERSION/* $ES_HOME/
fi