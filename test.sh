#!/bin/bash
test=$(mysql -s -N -h45.32.124.95 -P3306 -uroot -phyunamae143 opsprime -e "SELECT count(user_server) FROM users WHERE user_server='JP01'")
mysql -h45.32.124.95 -P3306 -uroot -phyunamae143 opsprime -e "UPDATE servers SET server_users='$test' WHERE server_prefix='JP01'"
