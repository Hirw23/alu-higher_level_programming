#!/bin/bash
# curl to send request to the url

if [ -z "$1" ]; then
  echo "Please provide a URL as an argument."
  exit 1
fi

# Send request to the URL using curl and extract the size of the response body
response=$(curl -sI $1 | grep -i Content-Length | awk '{print $2}')
if [ -z "$response" ]; then
  echo "Cannot get the size of the response body."
  exit 1
fi

echo "Size of the response body in bytes: $response"
