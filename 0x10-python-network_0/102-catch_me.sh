#!/bin/bash
# Makes a request to [::-1]/catch_me that causes the server to respond with a message
curl -s -X POST -d "user_id=98" -H "Referer: 0.0.0.0:5000/catch_me" 0.0.0.0:5000/catch_me
