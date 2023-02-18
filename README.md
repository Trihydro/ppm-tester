# Testing PPM
This project is intended to make testing the PPM easier.

## Objective
The objective here is to verify the following:
- BSMs inside the geofence are retained
- BSMs with a partII section are retained
- BSMs outside the geofence are suppressed
- BSMs above the speed range are suppressed
- BSMs below the speed range are suppressed

## How to test with scripts
### Preparation
1. Make sure that the KAFKA_HOST environment variable is set to the IP address of the kafka container.
1. Spin up PPM using standalone docker-compose script.

        docker-compose -f docker-compose-standalone.yml up --build --remove-orphans

### While Testing
1. Send test BSMs by invoking the test.sh script or the send_bsm.sh script.
1. Observe the result by checking the info.log file in the logs directory in the container or by checking the terminal running the consumer.

## How to test manually
### Preparation
1. Spin up PPM using standalone docker-compose script.

        docker-compose -f docker-compose-standalone.yml up --build --remove-orphans

1. Exec into the container running kafka in two separate terminals.

        docker ps

        docker exec -it (container ID) /bin/bash

1. On one terminal, start reading from the topic.

        kafka-console-consumer --bootstrap-server localhost:9092 --topic (topic name) --from-beginning

1. On the other terminal, start writing to the topic.
        
        kafka-console-producer --broker-list localhost:9092 --topic (topic name)

### While Testing
1. Write test BSMs (located in the [bsms](bsms)) directory to the topic.
1. Verify that the BSMs are written to the topic.
1. Observe the result by checking the info.log file in the logs directory in the container or by checking the terminal running the consumer.

## Link to PPM
https://github.com/usdot-jpo-ode/jpo-cvdp/tree/develop

## Kafka Quickstart
https://kafka.apache.org/quickstart
