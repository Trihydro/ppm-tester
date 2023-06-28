#!/bin/bash

if [ -z "$KAFKA_BROKER" ]; then
    echo "KAFKA_BROKER environment variable not set"
    exit 1
fi

# get broker from environment variable
broker=$KAFKA_BROKER

# invoke kafkacat
kafkacat -b $broker:9092 -L
