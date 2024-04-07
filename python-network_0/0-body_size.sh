#!/bin/bash
# curl to send request to the url
curl -sI "$1" | grep -i content-length | cut -d " " -f 2  
