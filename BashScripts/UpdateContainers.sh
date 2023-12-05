#!/bin/env bash
echo -e "\nStarting Update of the Containers"
    echo -e "\nStoping and Deleting all Containers and Images\n"
    images=$(sudo docker images -q)
    bash ~/ServerData/StopStack.sh -A
    sudo docker rmi $images

echo -e "\nStarting Containers\n"
    bash ~/ServerData/StartStack.sh -A

echo -e "\nFinished Update of the Containers\n"

echo -e "\nChecking sudo docker ps Output:"
    sudo docker ps -a

echo -e "\nChecking sudo docker images Output:"
    sudo docker images

echo ""