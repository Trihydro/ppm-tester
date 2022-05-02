#!/bin/sh

# Author: Daniel McCoy Stephenson

if [ "$#" -ne 1 ]; then
    echo "Usage: ./sendbsm.sh <filename>"
    exit 1
fi

# define variables
broker=192.168.79.22 # NOTE: this needs to be changed often
topic=topic.OdeBsmJson
filename=$1

# invoke kafkacat
kafkacat -b $broker:9092 -t $topic -P -l $filename
