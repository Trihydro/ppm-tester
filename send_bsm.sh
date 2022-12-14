#!/bin/sh

# Author: Daniel McCoy Stephenson

if [ "$#" -ne 1 ]; then
    echo "Usage: ./sendbsm.sh <filename>"
    exit 1
fi

if [ -z "$KAFKA_BROKER" ]; then
    echo "KAFKA_BROKER environment variable not set"
    exit 1
fi

# define variables

# get broker from environment variable
broker=$KAFKA_BROKER
topic=topic.OdeBsmJson
filename=$1

# invoke kafkacat
kafkacat -b $broker:9092 -t $topic -P -l $filename
