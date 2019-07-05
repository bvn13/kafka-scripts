#!/bin/bash

KAFKA_LOG=`pwd`/logs/kafka.log
echo $KAFKA_LOG
nohup bin/kafka-server-start.sh config/server.properties > $KAFKA_LOG &

