#!/bin/env bash
echo -e "\nStarting Handle Folders Process\n"

if ! [ -d "SplitedFiles" ]; then
        echo -e "Creating SplitedFiles Folder\n"
        mkdir SplitedFiles
fi

if ! [ -d "Containers-data" ]; then
        echo -e "Creating Containers-data Folder\n"
        mkdir Containers-data
fi

if ! [ -d "LargeTgzFiles" ]; then
        echo -e "Creating LargeTgzFiles Folder\n"
        mkdir LargeTgzFiles
fi

folders=$(ls -d Containers-data/*/)
for folder in $folders; do
        folderPath=${folder::-1}
        folderName=${folder:16:-1} 

    if ! [ -d "SplitedFiles/$folderName" ]; then
            echo "Creating $folderName Folder in SplitedFiles"
            mkdir SplitedFiles/$folderName
    fi
    
    if ! [ -d "LargeTgzFiles/$folderName" ]; then
            echo "Creating $folderName Folder in LargeTgzFiles"
            mkdir LargeTgzFiles/$folderName
    fi

done

folders=$(ls -d SplitedFiles/*/)
for folder in $folders; do
    folderPath=${folder::-1}
    folderName=${folder:13:-1} 

    if ! [ -d "Containers-data/$folderName" ]; then
            echo "Creating $folderName Folder in Containers-data"
            mkdir Containers-data/$folderName
    fi
    
    if ! [ -d "LargeTgzFiles/$folderName" ]; then
            echo "Creating $folderName Folder in LargeTgzFiles"
            mkdir LargeTgzFiles/$folderName
    fi

done

echo -e "\nFinished Handle Folders Process\n"