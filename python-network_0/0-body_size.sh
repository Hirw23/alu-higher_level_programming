#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get URL from the command line argument
url=$1

# Send request to the URL and store the response body in a temporary file
response=$(mktemp)
curl -sS -o "$response" "$url"

# Check if curl command was successful
if [ $? -ne 0 ]; then
    echo "Failed to retrieve data from $url"
    exit 1
fi

# Get the size of the response body in bytes
size=$(stat -c "%s" "$response")

# Display the size of the response body
echo "Size of the response body: $size bytes"

# Clean up temporary file
rm "$response"
