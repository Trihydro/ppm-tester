# Testing PPM
This project is intended to make testing the PPM easier.

## Steps
### Preparation
1. Spin up PPM using standalone docker-compose script
1. Exec into the container running the PPM

### While Testing
1. Send test BSMs by invoking the test.sh script or the send_bsm.sh script.
1. Observe the result by checking the info.log file in the logs directory in the container