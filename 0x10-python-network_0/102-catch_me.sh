#!/bin/bash
# Make a PUT request to 0.0.0.0:5000/catch_me and include a custom header to trigger the desired response
curl -s -X PUT -H "Referer: 0.0.0.0:5000/catch_me" 0.0.0.0:5000/catch_me >/dev/null
