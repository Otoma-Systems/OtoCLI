#!/bin/env bash
echo -e "\nStarting the Deploy of the Containers"
    bash  ~/OtoCLI/BashScripts/BashProcesses/handleFolders.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/getZerotierIP.sh
    sudo docker network create proxy_network
    sudo docker compose -f ~/OtoCLI/Management/Docker-Compose.yaml -p ManagementStack up --pull always -d

echo -e "\nFinished Deploy of the Containers\n"

echo -e "\nChecking sudo docker ps Output:"
    sudo docker ps -a

echo -e "\nChecking sudo docker images Output:"
    sudo docker images

echo ""