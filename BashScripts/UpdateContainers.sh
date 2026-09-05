#!/bin/env bash
echo -e "\nStarting Update of the Containers"
    docker compose -f ~/OtoCLI/Management/Docker-Compose.yaml -p management-stack up -d --pull always
echo -e "\nFinished Update of the Containers\n"

echo -e "\nChecking docker ps Output:"
    docker ps -a

echo -e "\nChecking docker images Output:"
    docker images

echo ""