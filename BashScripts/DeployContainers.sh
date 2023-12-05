#!/bin/env bash
echo -e "\nStarting the Deploy of the Containers"
    bash  ~/OtoCLI/BashScripts/BashProcesses/handleFolders.sh
    bash  ~/OtoCLI/BashScripts/BashProcesses/unsplitContainersData.sh
    bash  ~/OtoCLI/BashScripts/BashProcesses/extractContainersData.sh
    bash ~/ServerData/StartStack.sh -A
echo -e "\nFinished Deploy of the Containers\n"

echo -e "\nChecking sudo docker ps Output:"
    sudo docker ps -a

echo -e "\nChecking sudo docker images Output:"
    sudo docker images

echo ""