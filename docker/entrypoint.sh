#!/usr/bin/sh
/usr/local/bin/sonos-discover --subnets $SC_SUBNETS
/usr/local/bin/sonos-http-api-server -l --macros /macros/macros.txt -p $SC_PORT --subnets $SC_SUBNETS
