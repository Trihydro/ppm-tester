# Testing PPM
This project is intended to make testing the PPM easier.

## Objective
The objective here is to verify the following:
- BSMs inside the geofence are retained
- BSMs with a partII section are retained
- BSMs outside the geofence are suppressed
- BSMs above the speed range are suppressed
- BSMs below the speed range are suppressed

## Steps
### Preparation
1. Spin up PPM using standalone docker-compose script.

        docker-compose -f docker-compose-standalone.yml up --build --remove-orphans

1. Exec into the container running the PPM.

        docker ps

        docker exec -it (container ID) /bin/bash

### While Testing
1. Send test BSMs by invoking the test.sh script or the send_bsm.sh script.
1. Observe the result by checking the info.log file in the logs directory in the container.

## Link to PPM
https://github.com/dmccoystephenson/jpo-cvdp
