#!/bin/bash

# Makes a request to [::-1]/catch_me that causes the server to respond with a message
curl -s -X PUT -L -d "user_id=98" -H "Origin: School" 0.0.0.0:5000/catch_me
