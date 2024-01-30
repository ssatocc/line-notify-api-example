#!/bin/bash

if [ -f .env ]; then
    . .env
else
    echo ".env file not found"
    exit 1
fi

MSG="Hello, World!"

curl -X POST -H "Authorization: Bearer $ACCESS_TOKEN" \
    -F "message=$MSG" \
    "https://notify-api.line.me/api/notify"
