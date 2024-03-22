#!/bin/bash
# curl to send request to the url
curl -sl "$1" |grep 'content-length'| cut -d " " -f2 
