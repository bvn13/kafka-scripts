#!/bin/bash

KAFKA_IP=`. get-kafka-ip.sh`

if [[ -z "$KAFKA_IP" ]]; then
    echo "Could not detect Kafka IP from config/properties"
    exit
fi

if [[ -z "$1" ]]; then
    echo "No group is provided"
    exit
fi

bin/kafka-consumer-groups.sh --bootstrap-server $KAFKA_IP --group $1 --describe