#!/bin/env bash
echo -e "\nStarting Delete Compressed Files Folders Process\n"

if [ -d "SplitedFiles" ]; then
        echo -e "Deleting SplitedFiles Folder\n"
        sudo rm -r -f SplitedFiles
fi

if [ -d "LargeTgzFiles" ]; then
        echo -e "Deleting LargeTgzFiles Folder\n"
        sudo rm -r -f LargeTgzFiles
fi

echo -e "\nFinished Delete Compressed Files Folders Process\n"