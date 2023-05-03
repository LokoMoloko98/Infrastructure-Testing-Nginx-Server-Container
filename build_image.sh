#!/bin/bash

# Run the docker build command
sudo docker build \
--build-arg PERSONAL_ACCESS_TOKEN="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" \
--build-arg GITHUB_USERNAME="LokoMoloko98" \
--build-arg REPOSITORY_NAME="Moloko-s-Nginx-Docker-Container" \
-t ngx_test_container .