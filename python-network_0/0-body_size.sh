#!/bin/bash
# curl to send request to the url
curl -sI "$1" | grep 'content-length'| cut -d " " -f2 
