# Testing PPM
## Steps
1. Spin up PPM using standalone docker-compose script
1. Exec into the container running the PPM
1. Send a test bsm to the kafka cluster using ./send_bsm.sh path/to/file
1. Observe the result by checking the info.log file in the logs directory in the container
