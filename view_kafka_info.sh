#!/bin/sh

# Author: Daniel McCoy Stephenson

# define broker
broker=192.168.79.22 # NOTE: this needs to be changed often

# invoke kafkacat
kafkacat -b $broker:9092 -L
