#!/bin/bash

if [ -f .env ]; then
    . .env
else
    echo ".env file not found"
    exit 1
fi

MSG="Hello, World!"
IMAGE_FILE="./image/sample.png"
ENDPOINT="https://notify-api.line.me/api/notify"

curl -X POST -H "Authorization: Bearer $ACCESS_TOKEN" \
    -F "message=$MSG" \
    -F "imageFile=@$IMAGE_FILE" \
    $ENDPOINT
