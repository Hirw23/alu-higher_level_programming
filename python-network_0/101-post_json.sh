#!/bin/bash
# sends a json post request to a rul passsed as the first argument,a dn displays the body of the response
curl -sL -H "content-type:application/json"  -d @"$2" -X POST "$1"
