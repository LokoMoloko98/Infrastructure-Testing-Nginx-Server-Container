#!/bin/bash

#Insert the machine IP address into the display file
chmod 701 insertip.sh
sh ./insertip.sh

# Run the docker build command
docker build \
--build-arg PERSONAL_ACCESS_TOKEN="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" \
--build-arg GITHUB_USERNAME="LokoMoloko98" \
--build-arg REPOSITORY_NAME="Infrastructure-Testing-Nginx-Server-Container" \
-t ngx_test_container .
