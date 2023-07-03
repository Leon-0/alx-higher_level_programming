#!/bin/bash
# Makes a request to [::-1]/catch_me that causes the server to respond with a message
response=$(curl -s -X PUT -d "user_id=98" -H "Referer: 0.0.0.0:5000/catch_me" -w "%{redirect_url}\n" 0.0.0.0:5000/catch_me)
curl -s "$response"
