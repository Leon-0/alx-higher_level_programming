#!/bin/bash

# Make a POST request to 0.0.0.0:5000/catch_me and include a custom header to trigger the desired response
curl -s -X POST -H "Referer: 0.0.0.0:5000/catch_me" 0.0.0.0:5000/catch_me >/dev/null
