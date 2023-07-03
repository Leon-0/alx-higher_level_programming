#!/bin/bash
# Make a PUT request to 0.0.0.0:5000/catch_me and include a custom header to trigger the desired response
response=$(curl -s -X PUT -H "Referer: 0.0.0.0:5000/catch_me" -w "%{redirect_url}" 0.0.0.0:5000/catch_me)

redirect_url=$(echo "$response" | sed 's/.*href="\([^"]*\)".*/\1/')
curl -s "$redirect_url"
