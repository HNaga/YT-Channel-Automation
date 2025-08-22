#!/bin/bash

# Stop and remove old ngrok container if it exists
docker rm -f ngrok-tunnel 2>/dev/null

# Run new ngrok container
docker run --net=host -it \
  --name ngrok-tunnel \
  -e NGROK_AUTHTOKEN=2JYaNxBnIfmHC7frwkNhsBgtAsH_681uQLoWpDRhxRCjz3NVM \
  ngrok/ngrok:latest \
  http --domain=careful-humble-roughy.ngrok-free.app 5678
