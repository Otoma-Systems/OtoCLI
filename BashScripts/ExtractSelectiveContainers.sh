#!/bin/env bash
echo -e "\nStarting Extraction of specific Containers"
    bash  BashScripts/BashProcesses/handleFolders.sh
    bash  BashScripts/BashProcesses/unsplitContainersData.sh
    bash  BashScripts/BashProcesses/selectiveExtractContainersData.sh
echo -e "\nFinished Extraction of specific Containers\n"

echo ""