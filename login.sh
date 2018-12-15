#!/bin/bash
##
## ArtificialVPN Server Configuration
## by M4rshall
##
## Copyright (c) ArtificialVPN 2018. All Rights Reserved
##

login=$(wget "http://WebsiteIPMo/api/?user=$username&password=$password&server=ServerPrefix" -q -O -)
[ "$login" != '' ] && [ "$login" = "1" ] &&  echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1
