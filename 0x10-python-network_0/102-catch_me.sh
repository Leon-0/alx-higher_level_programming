#!/bin/bash
# Make a PUT request to 0.0.0.0:5000/catch_me and include a custom header to trigger the desired response
response=$(curl -s -X PUT -d "user_id=98" -H "Referer: 0.0.0.0:5000/catch_me" -i 0.0.0.0:5000/catch_me)

# Check if the response contains a redirection header
if [[ $response == *"Location: "* ]]; then
  # Extract the redirection URL
  location=$(echo "$response" | grep -i "Location: " | awk '{print $2}' | tr -d '\r\n')
  
  # Make a GET request to the redirection URL
  curl -s "$location"
else
  # Display the response body
  echo "$response" | sed -n '/^\r$/,/^$/p' | sed '1d;$d'
fi
