#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_GREEN='\e[;32m'

# delete orphaned docker volumes
echo -e $TEXT_YELLOW
echo "Deleting orphaned docker volumes..."
echo -e $TEXT_RESET
docker volume rm $(docker volume ls -qf dangling=true)
docker volume ls -qf dangling=true | xargs -r docker volume rm
echo -e $TEXT_GREEN
echo "Deleting orphaned docker volumes... [DONE]"

# remove dangling docker images
echo -e $TEXT_YELLOW
echo "Removing dangling docker images..."
echo -e $TEXT_RESET
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')
echo -e $TEXT_GREEN
echo "Removing dangling docker images... [DONE]"

# remove unused docker containers
echo -e $TEXT_YELLOW
echo "Removing unused docker containers..."
echo -e $TEXT_RESET
docker rm $(docker ps -qa --no-trunc --filter "status=exited")
echo -e $TEXT_GREEN
echo "Removing unused docker containers... [DONE]"
