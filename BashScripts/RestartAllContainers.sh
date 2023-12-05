#!/bin/env bash
echo -e "\nRestarting all Containers in Stacks"
    echo -e "\nStoping and Deleting all Containers\n"
    bash ~/ServerData/StopStack.sh -A

echo -e "\nStarting Containers\n"
    bash ~/ServerData/StartStack.sh -A

echo -e "\nFinished Restarting all Containers in Stacks\n"

echo -e "\nChecking sudo docker ps Output:"
    sudo docker ps -a

echo ""