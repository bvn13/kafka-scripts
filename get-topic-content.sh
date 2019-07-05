#!/bin/bash

KAFKA_IP=`. get-kafka-ip.sh`

if [[ -z "$KAFKA_IP" ]]; then
    echo "Could not detect Kafka IP from config/properties"
    exit
fi

if [[ -z "$1" ]]; then
    echo "No topic is provided";
    exit;
fi

echo "If you see nothing for about 5-10 seconds - the topic content is empty."
echo "Press Ctrl^C to exit"

bin/kafka-console-consumer.sh --bootstrap-server $KAFKA_IP --topic $1 --from-beginning