#!/bin/env bash
echo -e "\nRestarting all Containers in Compose"
    echo -e "\nStoping and Deleting all Containers\n"
    sudo docker compose down

echo -e "\nStarting Containers\n"
    sudo docker compose up -d

echo -e "\nFinished Restarting all Containers in Compose\n"

echo -e "\nChecking sudo docker Compose ps Output:"
    sudo docker compose ps -a

echo ""