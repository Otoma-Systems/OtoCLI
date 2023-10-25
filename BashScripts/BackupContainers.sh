#!/bin/env bash
echo -e "\nStarting Backup the Containers"
    bash BashScripts/BashProcesses/deleteCompressedFiles.sh
    bash BashScripts/BashProcesses/handleFolders.sh
    bash BashScripts/BashProcesses/compressContainersData.sh
    bash BashScripts/BashProcesses/splitContainersData.sh
    bash BashScripts/BashProcesses/backupContainersData.sh
echo -e "\nFinished Backup of the Containers\n"

echo -e "\nChecking sudo docker Compose ps Output:"
sudo docker compose ps -a

echo -e "\nChecking sudo docker Compose images Output:"
sudo docker compose images

echo ""