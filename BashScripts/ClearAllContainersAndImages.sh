#!/bin/env bash
echo -e "\nStarting Clear All container and images"
    echo "Stopping all containers"
        sudo docker stop $(sudo docker ps -q)

    echo "Deleting all containers"
        sudo docker rm $(sudo docker ps -a -q)

    echo "Deleting all Images from Containers"
        sudo docker rmi $(sudo docker images -a -q)
echo -e "\nFinished Clearing All container and images\n"

echo -e "\nChecking sudo docker ps Output:"
    sudo docker ps -a

echo -e "\nChecking sudo docker images Output:"
    sudo docker images

echo ""
