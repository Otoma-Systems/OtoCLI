#!/bin/env bash
echo -e "\nStarting Update of the Containers"
    sudo docker compose -f ~/OtoCLI/Management/Docker-Compose.yaml -p ManagementStack up -d --pull always
echo -e "\nFinished Update of the Containers\n"

echo -e "\nChecking sudo docker ps Output:"
    sudo docker ps -a

echo -e "\nChecking sudo docker images Output:"
    sudo docker images

echo ""