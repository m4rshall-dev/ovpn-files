#!/bin/bash
test=$(mysql -s -N -hWebsiteIPMo -P3306 -uDBUsername -pDBPassword opsprime -e "SELECT count(user_server) FROM users WHERE user_server='ServerPrefix'")
mysql -hWebsiteIPMo -P3306 -uDBUsername -pDBPassword opsprime -e "UPDATE servers SET server_users='$test' WHERE server_prefix='ServerPrefix'"
