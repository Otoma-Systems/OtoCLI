#!/bin/env bash
echo -e "\nStarting Backup the Containers"
    bash ~/OtoCLI/BashScripts/BashProcesses/deleteCompressedFiles.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/handleFolders.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/compressContainersData.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/splitContainersData.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/backupContainersData.sh

echo -e "\nStarting Update of the Containers"
    echo -e "\nStoping and Deleting all Containers and Images\n"
    images=$(sudo docker images -q)
    bash ~/ServerData/StopStack.sh -A
    sudo docker rmi $images

echo -e "\nStarting Containers\n"
    bash ~/ServerData/StartStack.sh -A

echo -e "\nFinished Backup and Update of the Containers\n"

echo -e "\nChecking sudo docker ps Output:"
    sudo docker ps -a

echo -e "\nChecking sudo docker images Output:"
    sudo docker images

echo ""