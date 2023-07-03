#!/bin/bash
# Make a POST request to 0.0.0.0:5000/catch_me and include a custom header to trigger the desired response
#curl -s -X PUT -H "Referer: 0.0.0.0:5000/catch_me" 0.0.0.0:5000/catch_me >/dev/null
curl -sL -X PUT -H "Origin: HolbertonSchool" -d "user_id=98" 0.0.0.0:5000/catch_me 
