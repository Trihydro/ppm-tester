#!/bin/sh

# Author: Daniel McCoy Stephenson

# expected to be retained
echo "Sending Test BSM: Normal, Inside Geofence - Expected Behavior: Retained"
./send_bsm.sh ./bsms/testbsm_normal_inside_geofence.txt

echo "Sending Test BSM: PartII, Inside Geofence - Expected Behavior: Retained"
./send_bsm.sh ./bsms/testbsm_partII_inside_geofence.txt

# expected to be supressed
echo "Sending Test BSM: Normal, Outside Geofence - Expected Behavior: Supressed"
./send_bsm.sh ./bsms/testbsm_normal_outside_geofence.txt

echo "Sending Test BSM: Normal, Inside Geofence, Outside Speed Range (Above) - Expected Behavior: Supressed"
./send_bsm.sh ./bsms/testbsm_normal_inside_geofence_outside_speed_range_above.txt

echo "Sending Test BSM: Normal, Inside Geofence, Outside Speed Range (Below) - Expected Behavior: Supressed"
./send_bsm.sh ./bsms/testbsm_normal_inside_geofence_outside_speed_range_below.txt