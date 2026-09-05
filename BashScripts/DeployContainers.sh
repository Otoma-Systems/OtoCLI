#!/bin/env bash
echo -e "\nStarting the Deploy of the Containers"
    bash  ~/OtoCLI/BashScripts/BashProcesses/handleFolders.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/getZerotierIP.sh
    docker network create proxy_network
    docker compose -f ~/OtoCLI/Management/Docker-Compose.yaml -p management-stack up --pull always -d

echo -e "\nFinished Deploy of the Containers\n"

echo -e "\nChecking docker ps Output:"
    docker ps -a

echo -e "\nChecking docker images Output:"
    docker images

echo ""