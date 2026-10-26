#!/bin/env bash
echo -e "\nStarting the Deploy of the Containers"
    bash  ~/OtoCLI/BashScripts/BashProcesses/handleFolders.sh
    docker network create --driver bridge --subnet 172.25.0.0/24 --ip-range 172.25.0.64/26 --gateway 172.25.0.1 proxy_network
    docker compose -f ~/OtoCLI/Management/Docker-Compose.yaml -p management-stack up --pull always -d

echo -e "\nFinished Deploy of the Containers\n"

echo -e "\nChecking docker ps Output:"
    docker ps -a

echo -e "\nChecking docker images Output:"
    docker images

echo ""
