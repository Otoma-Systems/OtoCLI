#!/bin/env bash
echo -e "\nStarting Extraction of specific Containers"
    bash  ~/OtoCLI/BashScripts/BashProcesses/handleFolders.sh
    bash  ~/OtoCLI/BashScripts/BashProcesses/unsplitContainersData.sh
    bash  ~/OtoCLI/BashScripts/BashProcesses/selectiveExtractContainersData.sh
echo -e "\nFinished Extraction of specific Containers\n"

echo ""