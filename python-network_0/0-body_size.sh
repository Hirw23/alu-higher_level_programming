#!/bin/bash
# curl to send request to the url

if [ -z "$1" ]; then
  echo "Please provide a URL as an argument"
  exit 1
fi
echo "Size of the response body in bytes: $response"
