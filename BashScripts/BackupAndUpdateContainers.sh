#!/bin/env bash
echo -e "\nStarting Backup the Containers"
    bash ~/OtoCLI/BashScripts/BashProcesses/deleteCompressedFiles.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/handleFolders.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/compressContainersData.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/splitContainersData.sh
    bash ~/OtoCLI/BashScripts/BashProcesses/backupContainersData.sh

echo -e "\nStarting Update of the Containers"
    echo -e "\nStoping and Deleting all Containers and Images\n"
    images=$(sudo docker compose images -q)
    sudo docker compose down
    sudo docker rmi $images

echo -e "\nStarting Containers\n"
    sudo docker compose up -d

echo -e "\nFinished Backup and Update of the Containers\n"

echo -e "\nChecking sudo docker Compose ps Output:"
    sudo docker compose ps -a

echo -e "\nChecking sudo docker Compose images Output:"
    sudo docker compose images

echo ""