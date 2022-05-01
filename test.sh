#!/bin/sh

# Author: Daniel McCoy Stephenson

echo "Sending Test BSM: Normal, Inside Geofence - Expected Behavior: Retained"
./send_bsm.sh ./bsms/testbsm_normal_inside_geofence.txt

echo "Sending Test BSM: Normal, Inside Geofence, Outside Speed Range (Above) - Expected Behavior: Supressed"
./send_bsm.sh ./bsms/testbsm_normal_inside_geofence_outside_speed_range_above.txt

echo "Sending Test BSM: Normal, Inside Geofence, Outside Speed Range (Below) - Expected Behavior: Supressed"
./send_bsm.sh ./bsms/testbsm_normal_inside_geofence_outside_speed_range_below.txt

echo "Sending Test BSM: PartII, Inside Geofence - Expected Behavior: Supressed"
./send_bsm.sh ./bsms/testbsm_normal_inside_geofence_outside_speed_range_above.txt