#!/bin/env bash
echo -e "\nStarting the Deploy of the Containers"
    bash  ~/OtoCLI/BashScripts/BashProcesses/handleFolders.sh
    bash  ~/OtoCLI/BashScripts/BashProcesses/unsplitContainersData.sh
    bash  ~/OtoCLI/BashScripts/BashProcesses/extractContainersData.sh
    sudo docker compose up -d
echo -e "\nFinished Deploy of the Containers\n"

echo -e "\nChecking sudo docker Compose ps Output:"
    sudo docker compose ps -a

echo -e "\nChecking sudo docker Compose images Output:"
    sudo docker compose images

echo ""