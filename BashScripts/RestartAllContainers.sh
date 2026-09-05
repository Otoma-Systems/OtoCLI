#!/bin/env bash
echo -e "\nRestarting Management Stack"
    echo -e "\nStoping and Deleting Management Stack\n"
    sudo docker compose -f ~/OtoCLI/Management/Docker-Compose.yaml -p management-stack down

echo -e "\nStarting Management Stack\n"
    sudo docker compose -f ~/OtoCLI/Management/Docker-Compose.yaml -p management-stack up --pull always -d

echo -e "\nFinished Restarting Management Stack\n"

echo -e "\nChecking sudo docker ps Output:"
    sudo docker ps -a

echo ""