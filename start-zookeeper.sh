#!/bin/bash

ZOO_LOGS=`pwd`/logs/zookeeper.log
nohup bin/zookeeper-server-start.sh config/zookeeper.properties > $ZOO_LOGS &

