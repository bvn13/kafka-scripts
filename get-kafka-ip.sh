#!/bin/bash

cat config/server.properties | grep '^listeners' | sed -e 's/\/\///; s/PLAINTEXT//; s/listeners=//;' | awk -F ":" '{if (NF==3) {print $2":"$3} else {print $1":"$2} }'
