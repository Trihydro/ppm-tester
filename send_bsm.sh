#!/bin/sh

# Author: Daniel McCoy Stephenson

if [ "$#" -ne 1 ]; then
    echo "Usage: ./sendbsm.sh <filename>"
    exit 1
fi

# define variables
broker=172.31.232.171
topic=topic.OdeBsmJson
filename=$1

# invoke kafkacat
kafkacat -b $broker:9092 -t $topic -P -l $filename